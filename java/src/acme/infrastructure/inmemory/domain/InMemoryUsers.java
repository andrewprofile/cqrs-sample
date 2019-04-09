package acme.infrastructure.inmemory.domain;

import acme.domain.Users;
import acme.domain.model.User;

import java.util.HashMap;
import java.util.Map;

public class InMemoryUsers implements Users {
    private Map<String, User> users;

    public InMemoryUsers() {
        users = new HashMap<>();
    }

    @Override
    public void add(User user) {
        users.put(user.email(), user);
    }

    @Override
    public boolean exists(String email) {
        return users.containsKey(email);
    }

    @Override
    public User getByEmail(String email) {
        return users.get(email);
    }

    @Override
    public void remove(String email) {
        users.remove(email);
    }
}
