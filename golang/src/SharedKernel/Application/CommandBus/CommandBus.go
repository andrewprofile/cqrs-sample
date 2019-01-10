package CommandBus

import . "../Command"
import . "../Command/Handler"

type CommandBus interface {
	RegisterHandler(command Command, handler Handler)
	Handle(command Command)
}
