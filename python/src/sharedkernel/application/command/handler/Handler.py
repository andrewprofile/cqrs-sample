from abc import ABC, abstractmethod
from python.src.sharedkernel.application.command.Command import Command


class Handler(ABC):

    @abstractmethod
    def handle(self, command: Command):
        pass
