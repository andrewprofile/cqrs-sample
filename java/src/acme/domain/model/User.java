package acme.domain.model;

import java.util.Date;
import java.util.UUID;

public class User {
    private UUID id;
    private String email;
    private String password;
    private String firstName;
    private String lastName;
    private Date createdAt;
    private Date updateAt;

    public User(String email, String password, String firstName, String lastName) {
        this.id = UUID.randomUUID();
        this.email = email;
        this.password = password;
        this.firstName = firstName;
        this.lastName = lastName;
        this.createdAt = new Date();
    }

    public UUID id() {
        return id;
    }

    public String email() {
        return email;
    }

    public String password() {
        return password;
    }

    public String firstName() {
        return firstName;
    }

    public String lastName() {
        return lastName;
    }

    public Date createdAt() {
        return createdAt;
    }

    public Date updateAt() {
        return updateAt;
    }
}
