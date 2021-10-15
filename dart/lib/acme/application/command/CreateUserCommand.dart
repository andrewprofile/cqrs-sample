import 'package:dart/sharedkernel/application/command/command.dart';

class CreateUserCommand implements Command {
  final String _email;
  final String _password;
  final String _firstName;
  final String _lastName;

  CreateUserCommand(
      this._email, this._password, this._firstName, this._lastName);

  String get lastName => _lastName;

  String get firstName => _firstName;

  String get password => _password;

  String get email => _email;
}