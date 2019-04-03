module acme.application.command.command;

import sharedkernel.application.command.command;

class CreateUserCommand : Command
{
    string email;
    string password;
    string firstName;
    string lastName;

    this(string email, string password, string firstName, string lastName) {
        this.email = email;
        this.password = password;
        this.firstName = firstName;
        this.lastName = lastName;
    }

    ~this() {
    }

    string Email()
    {
        return this.email;
    }

    string Password()
    {
        return this.password;
    }

    string FirstName()
    {
        return this.firstName;
    }

    string LastName()
    {
        return this.lastName;
    }
}
