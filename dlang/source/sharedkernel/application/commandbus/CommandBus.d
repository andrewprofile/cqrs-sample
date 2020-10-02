module sharedkernel.application.commandbus;

import sharedkernel.application.command.command;
import sharedkernel.application.command.handler;

interface CommandBus
{
    void registerHandler(Command command, Handler handler);
    void handle(Command command);
}