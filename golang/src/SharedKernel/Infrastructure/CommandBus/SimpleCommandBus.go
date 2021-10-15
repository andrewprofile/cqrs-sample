package CommandBus

import (
	. "../../Application/Command"
	. "../../Application/Command/Handler"
	"reflect"
)

type SimpleCommandBus struct {
	handlers map[string]Handler
}

func (commandBus *SimpleCommandBus) RegisterHandler(command Command, handler Handler) {
	commandBus.handlers = make(map[string]Handler)
	commandBus.handlers[reflect.TypeOf(command).String()] = handler
}

func (commandBus *SimpleCommandBus) Handle(command Command) error {
	return commandBus.handlers[reflect.TypeOf(command).String()].Handle(command)
}
