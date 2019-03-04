import { ChartmanAppConfigs } from '@shared/interfaces/chartman-app-configs';

export const configs: ChartmanAppConfigs = {
    dev: { alphaVantageApiKey: `aaaa`,
        iexApiKey: `aaaa`,
        cryptoCompareApiKey: `aaaa`,
        env: `dev`,
        jwtSecret: `fddasf`,
        postgresConfig: {
          host: `localhost`,
          user: `aaaa`,
          password: `aaaa`,
          port: 1111,
          database: `aaaa`
        },
        host: `http://localhost`,
        port: 3000
    },
    prod: {
        alphaVantageApiKey: `aaaa`,
        iexApiKey: `aaaa`,
        cryptoCompareApiKey: `aaaa`,
        env: `prod`,
        jwtSecret: `fdsaf`,
        postgresConfig: {
          host: `postgres`, // service name, from docker-compose
          user: `aaaa`,
          password: `aaaa`,
          port: 1111,
          database: `aaaa`
        },
        host: `https://chartman.zbay.xyz`,
        port: 3000
    },
    test: {
        alphaVantageApiKey: `aaaa`,
        cryptoCompareApiKey: `aaaa`,
        env: `test`,
        host: `http://localhost`,
        iexApiKey: `aaa`,
        jwtSecret: `dsaf`,
        port: 3000,
        postgresConfig: {
          host: `postgres`, // service name, from docker-compose
          user: `aaaa`,
          password: `aaaa`,
          port: 1111,
          database: `aaaa`
        }
    }
};
