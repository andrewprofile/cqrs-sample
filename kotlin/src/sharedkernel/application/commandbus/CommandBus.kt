package sharedkernel.application.commandbus

import sharedkernel.application.command.Command
import sharedkernel.application.command.handler.Handler

interface CommandBus {
    fun registerHandler(command: Command, handler: Handler)
    fun handle(command: Command)
}
