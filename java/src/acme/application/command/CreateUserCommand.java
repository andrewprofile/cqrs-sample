package acme.application.command;

import sharedkernel.application.command.Command;

public class CreateUserCommand implements Command {
    private String email;
    private String password;
    private String firstName;
    private String lastName;

    public CreateUserCommand(String email, String password, String firstName, String lastName) {
        this.email = email;
        this.password = password;
        this.firstName = firstName;
        this.lastName = lastName;
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
}
