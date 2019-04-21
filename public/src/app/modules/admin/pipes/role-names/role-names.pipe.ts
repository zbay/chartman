import { Pipe, PipeTransform } from '@angular/core';
import { UserRole } from '@app/common/interfaces/user-role.interface';

@Pipe({
  name: 'roleNames'
})
export class RoleNamesPipe implements PipeTransform {

  transform(roles: UserRole[]): any {
    return roles.map((role) => role.role).join(`, `);
  }

}
