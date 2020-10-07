package sharedkernel.application.command.handler;

import sharedkernel.application.command.Command;

public interface Handler {
    void handle(Command command);
}
