export interface UserForAdmin {
    id: number;
    email: string;
    name: string;
    roles: string[];
    last_login: Date;
    strikes?: number;
}
