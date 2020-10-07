import 'package:dart/acme/application/command/CreateUserCommand.dart';
import 'package:dart/acme/application/command/handler/CreateUserHandler.dart';
import 'package:dart/acme/infrastructure/inmemory/domain/inmemoryusers.dart';
import 'package:dart/sharedkernel/application/command/command.dart';
import 'package:dart/sharedkernel/application/commandbus/commandbus.dart';
import 'package:dart/sharedkernel/infrastructure/commandbus/simplecommandbus.dart';

void main(List<String> arguments) {
  Command command = CreateUserCommand('john@doe.com', 'hello', 'John', 'Smith');
  CommandBus commandBus = SimpleCommandBus();
  commandBus.registerHandler(command,  CreateUserHandler(InMemoryUsers()));
  commandBus.handle(command);
}
