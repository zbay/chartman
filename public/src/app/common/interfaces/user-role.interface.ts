import { Role } from '@common/enums/role.enum';

export interface UserRole {
    role: Role;
    expiration: Date;
}
