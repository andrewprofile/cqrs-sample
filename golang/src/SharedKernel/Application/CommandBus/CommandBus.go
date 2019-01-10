package CommandBus

import (
	. "../Command"
	. "../Command/Handler"
)

type CommandBus interface {
	RegisterHandler(command Command, handler Handler)
	Handle(command Command) error
}
