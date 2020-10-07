package acme.domain.model

import java.util.Date
import java.util.UUID

class User(
    private val email: String,
    private val password: String,
    private val firstName: String,
    private val lastName: String
) {
    private val id: UUID
    private val createdAt: Date
    private val updateAt: Date? = null

    init {
        this.id = UUID.randomUUID()
        this.createdAt = Date()
    }

    fun id(): UUID {
        return id
    }

    fun email(): String {
        return email
    }

    fun password(): String {
        return password
    }

    fun firstName(): String {
        return firstName
    }

    fun lastName(): String {
        return lastName
    }

    fun createdAt(): Date {
        return createdAt
    }

    fun updateAt(): Date? {
        return updateAt
    }
}
