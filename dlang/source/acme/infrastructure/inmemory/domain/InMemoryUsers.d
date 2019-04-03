module acme.infrastructure.inmemory.domain.users;

import acme.application.domain.model;
import acme.application.domain.domain;

class InMemoryUsers : Users
{
    User[string] users;

    void add(User user)
    {
        this.users[user.Email()] = user;
    }

    bool exist(string email)
    {
        if (email in this.users)
        {
            return true;
        }

        return false;
    }

    User getByEmail(string email)
    {
        return this.users[email];
    }

    void remove(string email)
    {
        this.users.remove(email);
    }
}