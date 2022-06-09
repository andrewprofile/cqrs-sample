from python.src.acme.application.command.CreateUserCommand import CreateUserCommand
from python.src.acme.application.command.handler.CreateUserHandler import CreateUserHandler
from python.src.sharedkernel.infrastructure.commandbus.SimpleCommandBus import SimpleCommandBus

if __name__ == '__main__':
    command = CreateUserCommand('john@doe.com', 'hello', 'John', 'Smith')
    commandBus = SimpleCommandBus()
    commandBus.register_handler(command, CreateUserHandler())
    commandBus.handle(command)
