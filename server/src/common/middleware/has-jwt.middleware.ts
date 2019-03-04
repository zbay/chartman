import { HttpStatus } from '@nestjs/common';

import * as jwt from 'jsonwebtoken';

import * as dotenv from 'dotenv';
dotenv.config();

import { CustomException } from '@common/exceptions/custom.exception';

export function hasJWT(req, res, next) {
  if (req.headers.authorization
    && req.headers.authorization.split(' ')[0] === 'Bearer') {
    const token = req.headers.authorization.split(' ')[1];
    jwt.verify(token, process.env.JWT_SECRET, (err, payload) => {
      if (!err) {
        req.payload = payload;
      }
      return next();
    });
  } else {
      throw new CustomException({name: `Invalid JWT`
      , message: `Please sign in!`}
    , HttpStatus.UNAUTHORIZED);
  }
}
