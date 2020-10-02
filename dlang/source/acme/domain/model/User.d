module acme.application.domain.model;

import std.uuid;
import std.datetime.systime : SysTime, Clock;

class User
{
    UUID id;
    string email;
    string password;
    string firstName;
    string lastName;
    SysTime createdAt;
    SysTime updatedAt;

    this(string email, string password, string firstName, string lastName) {
        this.id = randomUUID();
        this.email = email;
        this.password = password;
        this.firstName = firstName;
        this.lastName = lastName;
        this.createdAt = Clock.currTime();
    }

    UUID Id()
    {
        return this.id;
    }

    string Email()
    {
        return this.email;
    }

    string Password()
    {
        return this.password;
    }

    string FirstName()
    {
        return this.firstName;
    }

    string LastName()
    {
        return this.lastName;
    }

    SysTime CreatedAt()
    {
        return this.createdAt;
    }

    SysTime UpdatedAt()
    {
        return this.updatedAt;
    }
}