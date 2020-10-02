using System;

namespace Cs.Acme.Domain.Model
{
    public class User
    {
        public User(string email, string password, string firstName, string lastName)
        {
            Id = Guid.NewGuid();
            Email = email;
            Password = password;
            FirstName = firstName;
            LastName = lastName;
            CreatedAt = DateTime.Now;
        }

        public Guid Id { get; }
        public string Email { get; }
        public string Password { get; }
        public string FirstName { get; }
        public string LastName { get; }
        public DateTime CreatedAt { get; }
        public DateTime UpdatedAt { get; }
    }
}