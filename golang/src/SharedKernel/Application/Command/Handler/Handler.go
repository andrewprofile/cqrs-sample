package Handler

import ".."

type Handler interface {
	Handle(command Command.Command) error
}


