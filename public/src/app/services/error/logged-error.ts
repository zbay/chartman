export interface LoggedError {
    error: Error;
    url: string;
    user_id?: number;
}
