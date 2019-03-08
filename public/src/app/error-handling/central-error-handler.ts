import { ErrorHandler, Injectable} from '@angular/core';

import { ErrorService } from '@app/services/error/error.service';

@Injectable()
export class CentralErrorHandler implements ErrorHandler {
  constructor(private errorService: ErrorService) { }
  handleError(error: Error) {
     console.log(error);
     this.errorService.sendErrorToDB(error);
     throw error;
  }
}
