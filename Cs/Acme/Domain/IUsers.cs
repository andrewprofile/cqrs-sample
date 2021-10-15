using Cs.Acme.Domain.Model;

namespace Cs.Acme.Domain
{
    public interface IUsers
    {
        void Add(User user);
        bool Exists(string email);
        User GetByEmail(string email);
        void Remove(string email);
    }
}