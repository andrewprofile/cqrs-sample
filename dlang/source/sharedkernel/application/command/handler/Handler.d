module sharedkernel.application.command.handler;

import sharedkernel.application.command.command;

interface Handler
{
    void handle(Command command);
}
