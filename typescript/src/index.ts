import {CreateUserCommand} from "./Acme/Application/Command/CreateUserCommand";
import {SimpleCommandBus} from "./SharedKernel/Infrastructure/CommandBus/SimpleCommandBus";
import {CreateUserHandler} from "./Acme/Application/Command/Handler/CreateUserHandler";
import {InMemoryUsers} from "./Acme/Infrastructure/InMemory/Domain/InMemoryUsers";

export function main() {
    const command = new CreateUserCommand('john@doe.com', 'hello', 'John', 'Smith');
    const commandBus = new SimpleCommandBus();
    commandBus.registerHandler(command, new CreateUserHandler(new InMemoryUsers()));
    commandBus.handle(command);
}

main();
