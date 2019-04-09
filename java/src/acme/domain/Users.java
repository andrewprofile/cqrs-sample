package acme.domain;

import acme.domain.model.User;

public interface Users {
    void add(User user);
    boolean exists(String email);
    User getByEmail(String email);
    void remove(String email);
}
