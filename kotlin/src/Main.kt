import acme.application.command.CreateUserCommand
import acme.application.command.handler.CreateUserHandler
import acme.infrastructure.inmemory.domain.InMemoryUsers
import sharedkernel.application.command.Command
import sharedkernel.application.commandbus.CommandBus
import sharedkernel.infrastructure.commandbus.SimpleCommandBus

object Main {

    @JvmStatic
    fun main(args: Array<String>) {
        val command = CreateUserCommand("john@doe.com", "hello", "John", "Smith")
        val commandBus = SimpleCommandBus()
        commandBus.registerHandler(command, CreateUserHandler(InMemoryUsers()))
        commandBus.handle(command)
    }
}
