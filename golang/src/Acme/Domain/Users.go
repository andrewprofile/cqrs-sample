package Domain

import . "./Model"

type Users interface {
	Add(user *User)
	Exists(email string) bool
	GetByEmail(email string) *User
	Remove(email string)
}
