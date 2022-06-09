from python.src.sharedkernel.application.command.Command import Command
from python.src.sharedkernel.application.command.handler.Handler import Handler


class CreateUserHandler(Handler):

    def handle(self, command: Command):
        return command.name()