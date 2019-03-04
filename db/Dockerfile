FROM node:10

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY package.json /usr/src/app/
RUN npm install

COPY . /usr/src/app

EXPOSE 2999
RUN chmod +x ./run_migration.sh
ENTRYPOINT ["./run_migration.sh"]