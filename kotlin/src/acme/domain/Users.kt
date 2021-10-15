package acme.domain

import acme.domain.model.User

interface Users {
    fun add(user: User)
    fun exists(email: String): Boolean
    fun getByEmail(email: String): User?
    fun remove(email: String)
}
