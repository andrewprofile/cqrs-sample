import 'package:dart/sharedkernel/application/command/command.dart';
import 'package:dart/sharedkernel/application/command/handler/handler.dart';

abstract class CommandBus {
  void registerHandler(Command command, Handler handler);
  void handle(Command command);
}