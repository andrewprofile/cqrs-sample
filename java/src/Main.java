import acme.application.command.CreateUserCommand;
import acme.application.command.handler.CreateUserHandler;
import acme.infrastructure.inmemory.domain.InMemoryUsers;
import sharedkernel.application.command.Command;
import sharedkernel.application.commandbus.CommandBus;
import sharedkernel.infrastructure.commandbus.SimpleCommandBus;

public class Main {

    public static void main(String[] args) {
        Command command = new CreateUserCommand("john@doe.com", "hello", "John", "Smith");
        CommandBus commandBus = new SimpleCommandBus();
        commandBus.registerHandler(command,  new CreateUserHandler(new InMemoryUsers()));
        commandBus.handle(command);
    }
}
