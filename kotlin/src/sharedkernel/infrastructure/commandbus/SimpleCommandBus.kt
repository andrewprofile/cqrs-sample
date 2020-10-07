package sharedkernel.infrastructure.commandbus

import sharedkernel.application.command.Command
import sharedkernel.application.command.handler.Handler
import sharedkernel.application.commandbus.CommandBus

import java.util.HashMap

class SimpleCommandBus : CommandBus {
    private val handlers: MutableMap<String, Handler>

    init {
        handlers = HashMap()
    }

    override fun registerHandler(command: Command, handler: Handler) {
        handlers[command.javaClass.simpleName] = handler
    }

    override fun handle(command: Command) {
        handlers[command.javaClass.simpleName]?.handle(command)
    }
}
