from python.src.sharedkernel.application.command.Command import Command
from python.src.sharedkernel.application.command.handler.Handler import Handler
from python.src.sharedkernel.application.commandbus.CommandBus import CommandBus


class SimpleCommandBus(CommandBus):

    def __init__(self):
        self.__handlers = {}

    def register_handler(self, command: Command, handler: Handler):
        self.__handlers[command.name()] = handler

    def handle(self, command: Command):
        self.__handlers[command.name()].handle(command)
