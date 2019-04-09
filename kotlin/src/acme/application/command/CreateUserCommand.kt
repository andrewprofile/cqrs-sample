package acme.application.command

import sharedkernel.application.command.Command

class CreateUserCommand(
    private val email: String,
    private val password: String,
    private val firstName: String,
    private val lastName: String
) : Command {

    fun email(): String {
        return email
    }

    fun password(): String {
        return password
    }

    fun firstName(): String {
        return firstName
    }

    fun lastName(): String {
        return lastName
    }
}
