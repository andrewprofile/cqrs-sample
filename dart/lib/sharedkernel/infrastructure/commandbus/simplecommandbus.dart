import 'dart:collection';
import 'package:dart/sharedkernel/application/command/command.dart';
import 'package:dart/sharedkernel/application/command/handler/handler.dart';
import 'package:dart/sharedkernel/application/commandbus/commandbus.dart';

class SimpleCommandBus implements CommandBus {
  final Map<String, Handler> _handlers;

  SimpleCommandBus() : _handlers = HashMap<String, Handler>();

  @override
  void handle(Command command) {
    _handlers[(command).toString()].handle(command);
  }

  @override
  void registerHandler(Command command, Handler handler) {
    _handlers[(command).toString()] = handler;
  }
}