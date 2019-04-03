module acme.application.domain.domain;

import acme.application.domain.model;

interface Users
{
    void add(User user);
    bool exist(string email);
    User getByEmail(string email);
    void remove(string email);
}