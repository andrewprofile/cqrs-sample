import {Command} from "../Command/Command";
import {Handler} from "../Command/Handler/Handler";

export interface CommandBus {
    registerHandler(command: Command, handler: Handler): void;
    handle(command: Command): void;
}