import { HttpStatus, HttpException } from '@nestjs/common';

import * as jwt from 'jsonwebtoken';

import * as customEnv from 'custom-env';
customEnv.env(process.env.NODE_ENV);

import { Permission } from '@common/enums/permission.enum';

export function hasJWT(role: string = Permission.FREE) { return (req, res, next) => {
  if (req.headers.authorization
    && req.headers.authorization.split(' ')[0] === 'Bearer') {
    const token = req.headers.authorization.split(' ')[1];
    jwt.verify(token, process.env.JWT_SECRET, (err, payload) => {
      if (!err &&
          payload.scope.some((val: Permission) => {
              return (val === Permission.ADMIN) || (val === role);
            })) { // check that at least one role is the one asked for
        req.payload = payload;
        return next();
      } else {
        throw new HttpException({name: `Invalid JWT`
        , message:  `You lack the permissions to perform this operation!`}
      , HttpStatus.UNAUTHORIZED);
      }
    });
  } else {
      throw new HttpException({name: `Invalid JWT`
      , message:  `Please log in!`}
    , HttpStatus.UNAUTHORIZED);
  }
};
}
