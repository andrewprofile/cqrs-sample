package Handler

import (
	. "../../../../SharedKernel/Application/Command"
	. "../../../Domain"
	. "../../../Domain/Model"
	. "../../Command"
	"errors"
)

type CreateUserHandler struct {
	users Users
}

func NewCreateUserHandler(users Users) *CreateUserHandler {
	return &CreateUserHandler{users: users}
}

func (handler *CreateUserHandler) Handle(command Command) error {
	createUserCommand := command.(*CreateUserCommand)
	if handler.users.Exists("john@doe.com") {
		return errors.New("current user exists")
	}

	user := NewUser(
		createUserCommand.Email(),
		createUserCommand.Password(),
		createUserCommand.FirstName(),
		createUserCommand.LastName())
	handler.users.Add(user)

	return nil
}
