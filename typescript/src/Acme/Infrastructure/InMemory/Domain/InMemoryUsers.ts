import {Users} from "../../../Domain/Users";
import {User} from "../../../Domain/Model/User";

export class InMemoryUsers implements Users {
    private users: { [key: string]: User; } = {};

    add(user: User): void {
        this.users[user.email] = user;
    }

    exists(email: string): boolean {
        return (email in this.users);
    }

    getByEmail(email: string): User {
        return this.users[email];
    }

    remove(email: string): void {
        delete this.users[email];
    }
}