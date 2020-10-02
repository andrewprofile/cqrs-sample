package Domain

import . "../../../Domain/Model"

type InMemoryUsers struct {
	users map[string]*User
}

func NewInMemoryUsers() *InMemoryUsers {
	inMemoryUsers := &InMemoryUsers{}
	inMemoryUsers.users = make(map[string]*User)

	return inMemoryUsers
}

func (class *InMemoryUsers) Add(user *User) {
	class.users[user.Email()] = user
}

func (class *InMemoryUsers) Exists(email string) bool {
	_, exists := class.users[email]

	return exists
}

func (class *InMemoryUsers) GetByEmail(email string) *User {
	return class.users[email]
}

func (class *InMemoryUsers) Remove(email string) {
	delete(class.users, email)
}
