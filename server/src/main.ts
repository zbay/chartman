import 'reflect-metadata';

import { DocumentBuilder, SwaggerModule } from '@nestjs/swagger';
import { HttpStatus, ValidationPipe } from '@nestjs/common';
import { NestFactory } from '@nestjs/core';

import { join, resolve } from 'path';
import * as rateLimit from 'express-rate-limit';

import { AppModule } from './app.module';

async function bootstrap() {
  const app = await NestFactory.create(AppModule);

  const ENV = AppModule.env;
  const hostDomain = `${AppModule.host}:${AppModule.port}`;
  app.enableCors({
      origin: ENV === `dev` ? `*` : `${AppModule.host}`,
      preflightContinue: false
  });
  const hostname = hostDomain.split(`//`)[1];

  const morgan = require(`morgan`);
  app.use(morgan(`combined`));

  if (ENV !== `dev`) {
    app.use(rateLimit({
      windowMs: 60 * 1000, // > 30 requests per minute per IP address is prohibited
      max: 30
    }));
  }

  app.setGlobalPrefix('api');
  app.useGlobalPipes(new ValidationPipe());
  app.useStaticAssets(join(__dirname, '../../', 'public/dist'));

  const swaggerOptions = new DocumentBuilder()
    .setTitle(`Chartman`)
    .setDescription(`API Documentation`)
    .setVersion(`0.0.0`)
    .setHost(hostname)
    .setSchemes(AppModule.env === `dev` ? `http` : `https`)
    .setBasePath(`/api`)
    .addBearerAuth(`Authorization`, `header`)
    .build();

  const swaggerDoc = SwaggerModule.createDocument(app, swaggerOptions);

  SwaggerModule.setup(`/swagger/docs`, app, swaggerDoc, {
    swaggerUrl: `${hostname}/swagger/docs/swagger.json`,
    explorer: true,
    swaggerOptions: {
      docExpansion: `list`,
      filter: true,
      showRequestDuration: true,
      version: `3.0.0`
    }
  });

  app.use(`/swagger/docs/swagger.json`, (req, res) => {
    return res.send(swaggerDoc);
  });

  // Frontend gets served, in dev, if the request doesn't have API or Swagger prefix
  const FRONTEND_REGEX = /\/((?!(api|swagger)\/)[^}]+)/;

  app.use(FRONTEND_REGEX, (req, res) => {
    if (ENV === `dev`) {
      return res.sendFile(resolve(`../public/dist/index.html`));
    } else {
      return res.status(HttpStatus.NOT_FOUND);
    }
  });

  await app.listen(AppModule.port);
}
bootstrap();
