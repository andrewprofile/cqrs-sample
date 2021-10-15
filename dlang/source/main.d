import acme.application.command.command;
import acme.application.command.handler;
import acme.infrastructure.inmemory.domain.users;
import sharedkernel.application.command.command;
import sharedkernel.application.commandbus;
import sharedkernel.infrastructure.commandbus.commandbus;

void main() {
    Command command = new CreateUserCommand("john@doe.com", "hello", "John", "Smith");
    CommandBus commandBus = new SimpleCommandBus();
    commandBus.registerHandler(command, new CreateUserHandler(new InMemoryUsers()));
    commandBus.handle(command);
}