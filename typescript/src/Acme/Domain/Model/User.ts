export class User {

    private readonly _id: string;
    
    private readonly _email: string;

    private readonly _password: string;

    private readonly _firstName: string;

    private readonly _lastName: string;

    private readonly _createdAt: Date;

    private _updatedAt?: Date;

    constructor(email: string, password: string, firstName: string, lastName: string) {
        this._id = '55af1e37-0734-46d8-b070-a1e42e4fc392';
        this._email = email;
        this._password = password;
        this._firstName = firstName;
        this._lastName = lastName;
        this._createdAt = new Date();
    }

    get id(): string {
        return this._id;
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

    get createdAt(): Date {
        return this._createdAt;
    }

    get updatedAt(): Date | undefined {
        return this._updatedAt;
    }
}