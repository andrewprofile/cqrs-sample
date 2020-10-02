module acme.application.domain.domain;

import acme.application.domain.model;

interface Users
{
    void add(User user);
    bool exists(string email);
    User getByEmail(string email);
    void remove(string email);
}