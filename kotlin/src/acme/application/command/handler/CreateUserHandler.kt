package acme.application.command.handler

import acme.application.command.CreateUserCommand
import acme.domain.Users
import acme.domain.model.User
import sharedkernel.application.command.Command
import sharedkernel.application.command.handler.Handler

class CreateUserHandler(private val users: Users) : Handler {

    override fun handle(command: Command) {
        if (command !is CreateUserCommand) {
            throw RuntimeException("Invalid command type")
        }

        if (users.exists(command.email())) {
            throw IllegalArgumentException("Current user exists")
        }

        val user = User(
            command.email(),
            command.password(),
            command.firstName(),
            command.lastName()
        )

        users.add(user)
    }
}
