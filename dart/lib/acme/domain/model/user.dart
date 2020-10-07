import 'package:uuid/uuid.dart';

class User {
  final String _id;
  final String _email;
  final String _password;
  final String _firstName;
  final String _lastName;
  final DateTime _createdAt;
  DateTime _updateAt;

  User(this._email, this._password, this._firstName, this._lastName)
      : _id = Uuid().v4(), _createdAt = DateTime.now();

  DateTime get updateAt => _updateAt;

  DateTime get createdAt => _createdAt;

  String get lastName => _lastName;

  String get firstName => _firstName;

  String get password => _password;

  String get email => _email;

  String get id => _id;
}