const env = process.env.NODE_ENV || `dev`;
require('custom-env').env(env);

const postgresConfig = {
    database: `postgres`,
    host: ((env === 'prod') || (env === 'test')) ? `postgres` : `localhost`,
    port: process.env.POSTGRES_PORT,
    user: process.env.POSTGRES_USER,
    password: process.env.POSTGRES_PASSWORD
};
const { Pool } = require(`pg`);
const fs = require(`fs`);
const pathPrefix =  env === `dev` ? `./` : `/usr/src/app/`;

const paths = {
    migrations: `${pathPrefix}migrations`,
    tables: `${pathPrefix}sql/tables`,
    functions: `${pathPrefix}sql/functions`,
    views: `${pathPrefix}sql/views`,
    extensions: `${pathPrefix}sql/extensions`
};
const oppositeOperations = {
    build: `teardown`,
    teardown: `build`,
    populate: `depopulate`,
    depopulate: `populate`
};

let pool = new Pool(postgresConfig);
let errorWasThrown = false;
if (process.argv[2] && process.argv[2] === `reverse`) {
    reverseMigration(`${process.argv[3].padStart(5, '0')}.js`);
} else {
    migrate();
}

function reverseMigration (filename) {
    postgresConfig.database = `chartman`;
    pool = new Pool(postgresConfig);
    const migration = require(`${paths.migrations}/${filename}`);
    migration.operations.reverse();
    runMigration(migration, filename, true);
}

async function runMigration (migration, filename, isReversal) {
    const reversals = [];
    for (let i = 0; i < migration.operations.length; i++) {
        const op = migration.operations[i];

        // allow for the 'replace' shorthand, that tears down the previous version before building the specified one
        if (op.op === `replace`) {
            op.op = `build`;
            migration.operations.splice(isReversal ? i+ 1 : i - 1, 0, {
                op: `teardown`,
                type: op.type,
                name: op.name,
                v: op.v - 1
            });
            i += 1;
        }
    }

    for (let op of migration.operations) {
        try {
            if (!op.v || op.v < 0) {
                op.v = 1;
            }
            if (op.op === `populate`) {
                op.type = `table`;
            }
            if (isReversal) {
                op.op = oppositeOperations[op.op];
            }

            const doPath = `${paths[op.type + 's']}/${op.name}/v${op.v}/${op.op}.sql`; 
            const undoPath = `${paths[op.type + 's']}/${op.name}/v${op.v}/${oppositeOperations[op.op]}.sql`

            if (!errorWasThrown) {
                console.log(`Running: ${doPath}`);
                await pool.query(fs.readFileSync(doPath).toString());
                reversals.unshift(undoPath);
            }


        } catch (e) {
            console.log(`ERROR! Undoing changes`);
            console.log(e);
            errorWasThrown = true;
            for (let revertScript of reversals) {
                console.log(`Running: ${revertScript}`);
                try {
                    await pool.query(fs.readFileSync(revertScript).toString());
                } catch (e) {
                    console.error(`Failed to revert!`);
                    process.exit(1);
                }
            }
        }

    }

    // mark migration as completed
    if (!errorWasThrown) {
        console.log(`Migration${isReversal ? ' reversal of:' : ''} ${filename} was successful!`);
        try {
            if (isReversal) {
                const migrationDelete = await pool.query(`DELETE FROM public.migrations
                WHERE filename = $1`, [filename]);                      
            } else {
                const migrationInsert = await pool.query(`INSERT INTO public.migrations (filename)
                VALUES ($1)`, [filename]);
            }
        } catch (e) {
            console.log(`Failed to save migration change! Exiting.`);
            process.exit(1);
        }
    }
}

async function migrate () {
    try {
        // this will fail and do nothing, if Chartman db exists
        await pool.query(`CREATE DATABASE chartman;`);
        pool.end();
        postgresConfig.database = `chartman`;
        pool = new Pool(postgresConfig);
    }
    catch (err) { }
    finally {
        pool.end();
        postgresConfig.database = `chartman`;
        pool = new Pool(postgresConfig);
 
        const migrationsTableExistsResult = await pool.query(
            `SELECT EXISTS (
                SELECT 1
                FROM   information_schema.tables 
                WHERE  table_schema = 'public'
                AND    table_name = 'migrations'
            ) AS migrations_table_exists;`);
        const migrationsTableExists = migrationsTableExistsResult.rows[0][`migrations_table_exists`];
        if (!migrationsTableExists) {
            try {
                await pool.query(
                    fs.readFileSync(`${paths.tables}/migrations/v1/build.sql`)
                        .toString()
                );
                console.log(`Built migration-related tables`);
                processMigrations();
            }
            catch (e) {
                console.log(`Database already exists! No starter migration necessary`);
            }
        } else {
            processMigrations();
        }

        async function processMigrations() {
            fs.readdir(paths.migrations, async (err, files) => {
                // console.log(files);
                if (!files || files.length === 0) {
                    console.log(`No migrations to make.`);
                    return;
                }
                // step 1: sort files alphabetically
                files.sort((file1, file2) => {
                    if(file1 < file2) { return -1; }
                    if(file1 > file2) { return 1; }
                    return 0;
                });
    
                //step 2, retrieve latest migration and curtail array to only include the ones after
                let latestMigrationResult;
                try {
                    latestMigrationResult =
                        await pool.query(`select filename, last_migration from (
                            select filename, MAX(ran) as last_migration
                            from public.migrations 
                            group by filename, ran
                            order by filename desc
                            limit 1
                        ) q;`
                    ); 
                } catch (e) {
                    console.error(`Failed to get last migration. Exiting.`);
                    process.exit(1);
                }
                console.log(latestMigrationResult);
                if (latestMigrationResult.rows 
                        && latestMigrationResult.rows[0]
                        && latestMigrationResult.rows[0].filename) {
                    const latestMigration = latestMigrationResult.rows[0].filename;
                    if (latestMigration) {
                        files = files.slice((files.indexOf(latestMigration) || 0) + 1);
                    }
                }

                if (files.length === 0) {
                    console.log(`No new migrations to make! Exiting.`);
                    process.exit(0);
                }

                // Step 3: process each relevant migration file
                for (let file of files) {
                    if (!errorWasThrown) {
                        const migration = require(`${paths.migrations}/${file}`);
                        runMigration(migration, file, false);
                }
            }
        });
    }
}
}
