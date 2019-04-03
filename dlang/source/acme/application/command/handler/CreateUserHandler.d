module acme.application.command.handler;

import std.stdio;
import acme.application.command.command;
import acme.application.domain.model;
import acme.application.domain.domain;
import sharedkernel.application.command.command;
import sharedkernel.application.command.handler;

class CreateUserHandler : Handler
{
    Users users;

    this(Users users)
    {
        this.users = users;
    }

    void handle(Command command)
    {
        CreateUserCommand createUserCommand = cast(CreateUserCommand) command;
        if (users.exist(createUserCommand.Email()))
        {
            throw new Exception("Current user exists");
        }

        User user = new User(
            createUserCommand.Email(),
            createUserCommand.Password(),
            createUserCommand.FirstName(),
            createUserCommand.LastName()
        );

        this.users.add(user);
    }
}