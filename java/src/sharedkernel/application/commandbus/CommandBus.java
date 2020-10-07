package sharedkernel.application.commandbus;

import sharedkernel.application.command.Command;
import sharedkernel.application.command.handler.Handler;

public interface CommandBus {
    void registerHandler(Command command, Handler handler);
    void handle(Command command);
}
