import 'package:dart/sharedkernel/application/command/command.dart';

abstract class Handler {
  void handle(Command command);
}