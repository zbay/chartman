# From node: install Angular CLI and all front-end packages. Build
FROM node:10 as angular-built
WORKDIR /usr/src/app
RUN npm i -g @angular/cli
COPY package.json package.json
RUN npm install
COPY . .
RUN ng build --prod --build-optimizer

# Run Nginx with custom config
FROM nginx:alpine
COPY --from=angular-built /usr/src/app/dist /usr/share/nginx/html
EXPOSE 80 443
CMD [ "nginx", "-g", "daemon off;" ]