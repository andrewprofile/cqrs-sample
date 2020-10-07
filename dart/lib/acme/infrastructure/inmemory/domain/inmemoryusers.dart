import 'dart:collection';

import 'package:dart/acme/domain/model/user.dart';
import 'package:dart/acme/domain/users.dart';

class InMemoryUsers implements Users {
  final Map<String, User> _users;

  InMemoryUsers() : _users = HashMap<String, User>();

  @override
  void add(User user) {
    _users[user.email] = user;
  }

  @override
  bool exists(String email) {
    return _users.containsKey(email);
  }

  @override
  User getByEmail(String email) {
    return _users[email];
  }

  @override
  void remove(String email) {
    _users.remove(email);
  }
}