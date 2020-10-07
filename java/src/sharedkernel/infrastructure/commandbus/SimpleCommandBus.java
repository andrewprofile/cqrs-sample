package sharedkernel.infrastructure.commandbus;

import sharedkernel.application.command.Command;
import sharedkernel.application.command.handler.Handler;
import sharedkernel.application.commandbus.CommandBus;

import java.util.HashMap;
import java.util.Map;

public class SimpleCommandBus implements CommandBus {
    private Map<String, Handler> handlers;

    public SimpleCommandBus() {
        handlers = new HashMap<>();
    }

    @Override
    public void registerHandler(Command command, Handler handler) {
        handlers.put(command.getClass().getSimpleName(), handler);
    }

    @Override
    public void handle(Command command) {
        handlers.get(command.getClass().getSimpleName()).handle(command);
    }
}
