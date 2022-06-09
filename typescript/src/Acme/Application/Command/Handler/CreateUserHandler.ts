import {Handler} from "../../../../SharedKernel/Application/Command/Handler/Handler";
import {Command} from "../../../../SharedKernel/Application/Command/Command";
import {CreateUserCommand} from "../CreateUserCommand";
import {User} from "../../../Domain/Model/User";
import {Users} from "../../../Domain/Users";

export class CreateUserHandler implements Handler {
    private users: Users;

    constructor(users: Users) {
        this.users = users;
    }

    handle(command: Command): void {
        if (!(command instanceof CreateUserCommand)) {
            throw new Error('Invalid command type');
        }

        if (this.users.exists(command.email)) {
            throw new Error('Current user exists');
        }

        const user = new User(command.email, command.password, command.firstName, command.lastName);

        this.users.add(user);
    }

}