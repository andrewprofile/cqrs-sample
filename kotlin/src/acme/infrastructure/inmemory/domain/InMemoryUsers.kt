package acme.infrastructure.inmemory.domain

import acme.domain.Users
import acme.domain.model.User

import java.util.HashMap

class InMemoryUsers : Users {
    private val users: MutableMap<String, User>

    init {
        users = HashMap()
    }

    override fun add(user: User) {
        users[user.email()] = user
    }

    override fun exists(email: String): Boolean {
        return users.containsKey(email)
    }

    override fun getByEmail(email: String): User? {
        return users[email]
    }

    override fun remove(email: String) {
        users.remove(email)
    }
}
