package acme.application.command.handler;

import acme.application.command.CreateUserCommand;
import acme.domain.Users;
import acme.domain.model.User;
import sharedkernel.application.command.Command;
import sharedkernel.application.command.handler.Handler;

public class CreateUserHandler implements Handler {
    private Users users;

    public CreateUserHandler(Users users) {
        this.users = users;
    }

    @Override
    public void handle(Command command) {
        if (!(command instanceof CreateUserCommand)) {
            throw new RuntimeException("Invalid command type");
        }

        CreateUserCommand createUserCommand = (CreateUserCommand) command;

        if (users.exists(createUserCommand.email())) {
            throw new IllegalArgumentException("Current user exists");
        }

        User user = new User(
                createUserCommand.email(),
                createUserCommand.password(),
                createUserCommand.firstName(),
                createUserCommand.lastName()
        );

        users.add(user);
    }
}
