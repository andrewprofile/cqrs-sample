import {Command} from "../../../SharedKernel/Application/Command/Command";

export class CreateUserCommand implements Command {

    private readonly _email: string;
    
    private readonly _password: string;
    
    private readonly _firstName: string;

    private readonly _lastName: string;

    constructor(email: string, password: string, firstName: string, lastName: string) {
        this._email     = email;
        this._password  = password;
        this._firstName = firstName;
        this._lastName  = lastName;
    }

    get email(): string {
        return this._email;
    }

    get password(): string {
        return this._password;
    }

    get firstName(): string {
        return this._firstName;
    }

    get lastName(): string {
        return this._lastName;
    }
}