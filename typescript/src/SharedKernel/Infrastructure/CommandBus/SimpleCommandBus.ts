import {Handler} from "../../Application/Command/Handler/Handler";
import {Command} from "../../Application/Command/Command";
import {CommandBus} from "../../Application/CommandBus/CommandBus";

export class SimpleCommandBus implements CommandBus {
    private handlers: { [key: string]: Handler; } = {};

    registerHandler(command: Command, handler: Handler): void {
        this.handlers[command.constructor.toString()] = handler;
    }

    handle(command: Command): void {
        this.handlers[command.constructor.toString()].handle(command);
    }
}