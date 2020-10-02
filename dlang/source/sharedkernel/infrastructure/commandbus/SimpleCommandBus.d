module sharedkernel.infrastructure.commandbus.commandbus;

import sharedkernel.application.command.command;
import sharedkernel.application.command.handler;
import sharedkernel.application.commandbus;

class SimpleCommandBus : CommandBus
{
    Handler[string] handlers;

    this() {
    }

    ~this() {
    }

    void registerHandler(Command command, Handler handler)
    {
        this.handlers[command.stringof] = handler;
    }

    void handle(Command command)
    {
        this.handlers[command.stringof].handle(command);
    }
}