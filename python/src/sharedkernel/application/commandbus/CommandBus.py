from abc import ABC, abstractmethod

from python.src.sharedkernel.application.command.Command import Command
from python.src.sharedkernel.application.command.handler.Handler import Handler


class CommandBus(ABC):

    @abstractmethod
    def register_handler(self, command: Command, handler: Handler):
        pass

    @abstractmethod
    def handle(self, command: Command):
        pass
