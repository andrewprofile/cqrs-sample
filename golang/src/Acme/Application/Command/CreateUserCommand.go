package Command

type CreateUserCommand struct {
	email string
	password string
	firstName string
	lastName  string
}

func NewCreateUserCommand(email string, password string, firstName string, lastName string) *CreateUserCommand {
	return &CreateUserCommand{email: email, password: password, firstName: firstName, lastName: lastName}
}

func (command CreateUserCommand) Email() string {
	return command.email
}

func (command CreateUserCommand) Password() string {
	return command.password
}

func (command CreateUserCommand) FirstName() string {
	return command.firstName
}

func (command CreateUserCommand) LastName() string {
	return command.lastName
}
