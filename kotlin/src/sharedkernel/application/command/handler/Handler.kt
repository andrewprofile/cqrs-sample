package sharedkernel.application.command.handler

import sharedkernel.application.command.Command

interface Handler {
    fun handle(command: Command)
}
