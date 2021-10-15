package Model

import (
	"github.com/google/uuid"
	"time"
)

type User struct {
	id uuid.UUID
	email string
	password string
	firstName string
	lastName  string
	createdAt time.Time
	updatedAt time.Time
}

func NewUser(email string, password string, firstName string, lastName string) *User {
	return &User{id: uuid.New(), email: email, password: password, firstName: firstName, lastName: lastName, createdAt:time.Now()}
}

func (user User) Id() uuid.UUID {
	return user.id
}

func (user User) Email() string {
	return user.email
}

func (user User) Password() string {
	return user.password
}

func (user User) FirstName() string {
	return user.firstName
}

func (user User) LastName() string {
	return user.lastName
}

func (user User) CreatedAt() time.Time {
	return user.createdAt
}

func (user User) UpdatedAt() time.Time {
	return user.updatedAt
}
