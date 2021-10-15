import 'package:dart/acme/domain/model/user.dart';

abstract class Users {
  void add(User user);
  bool exists(String email);
  User getByEmail(String email);
  void remove(String email);
}