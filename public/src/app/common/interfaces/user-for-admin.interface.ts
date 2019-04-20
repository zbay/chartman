export interface UserForAdmin {
    id: number;
    email: string;
    first_name: string;
    last_name: string;
    name: string;
    roles: string[];
    strikes: number;
    last_login?: Date;
}
