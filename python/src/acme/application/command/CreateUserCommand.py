import string
from python.src.sharedkernel.application.command.Command import Command


class CreateUserCommand(Command):

    def __init__(self, email: string, password: string, first_name: string, last_name: string):
        self.__last_name = last_name
        self.__first_name = first_name
        self.__password = password
        self.__email = email

    @staticmethod
    def name():
        return "CreateUserCommand"

    def email(self):
        return self.__email

    def password(self):
        return self.__password

    def first_name(self):
        return self.__first_name

    def last_name(self):
        return self.__last_name
    