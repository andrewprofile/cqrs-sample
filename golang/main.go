package main

import (
	. "./src/Acme/Application/Command"
	. "./src/Acme/Application/Command/Handler"
	. "./src/Acme/Infrastructure/InMemory/Domain"
	. "./src/SharedKernel/Application/Command"
	. "./src/SharedKernel/Application/CommandBus"
	. "./src/SharedKernel/Infrastructure/CommandBus"
)

func main() {
	var command Command = NewCreateUserCommand(
		"john@doe.com",
		"hello",
		"John",
		"Smith")
	var simpleCommandBus CommandBus = &SimpleCommandBus{}
	simpleCommandBus.RegisterHandler(command, NewCreateUserHandler(NewInMemoryUsers()))
	simpleCommandBus.Handle(command)
}
