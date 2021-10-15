import {User} from "./Model/User";

export interface Users
{
    add(user: User): void;
    exists(email: string): boolean;
    getByEmail(email: string): User;
    remove(email: string): void;
}