import { HttpStatus, HttpException } from '@nestjs/common';

export class CustomException extends HttpException {
    constructor(nodeError: Error, httpStatus: HttpStatus) {
        super(nodeError, httpStatus);
    }
  }
