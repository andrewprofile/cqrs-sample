using Cs.Acme.Domain;
using Cs.Acme.Domain.Model;
using System.Collections.Generic;

namespace Cs.Acme.Infrastructure.InMemory.Domain
{
    public class InMemoryUsers : IUsers
    {
        private readonly Dictionary<string, User> _users;

        public InMemoryUsers()
        {
            _users = new Dictionary<string, User>();
        }

        public void Add(User user)
        {
            _users[user.Email] = user;
        }

        public bool Exists(string email)
        {
            return _users.ContainsKey(email);
        }

        public User GetByEmail(string email)
        {
            return _users[email];
        }

        public void Remove(string email)
        {
            _users.Remove(email);
        }
    }
}