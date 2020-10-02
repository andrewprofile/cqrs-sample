using Cs.SharedKernel.Application.Command;

namespace Cs.Acme.Application.Command
{
    public class CreateUserCommand : ICommand
    {
        public CreateUserCommand(string email, string password, string firstName, string lastName)
        {
            Email = email;
            Password = password;
            FirstName = firstName;
            LastName = lastName;
        }

        public string Email { get; }
        public string Password { get; }
        public string FirstName { get; }
        public string LastName { get; }
    }
}