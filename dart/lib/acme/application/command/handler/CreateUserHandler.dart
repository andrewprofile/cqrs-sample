import 'package:dart/acme/application/command/CreateUserCommand.dart';
import 'package:dart/acme/domain/model/user.dart';
import 'package:dart/acme/domain/users.dart';
import 'package:dart/sharedkernel/application/command/command.dart';
import 'package:dart/sharedkernel/application/command/handler/handler.dart';

class CreateUserHandler implements Handler {
  final Users _users;

  CreateUserHandler(this._users);

  @override
  void handle(Command command) {
    if (!(command is CreateUserCommand)) {
      throw Exception('Invalid command type');
    }

    var createUserCommand = (command as CreateUserCommand);

    if (_users.exists(createUserCommand.email)) {
      throw Exception('Current user exists');
    }

    var user = User(
        createUserCommand.email,
        createUserCommand.password,
        createUserCommand.firstName,
        createUserCommand.lastName
    );

    _users.add(user);
  }
}