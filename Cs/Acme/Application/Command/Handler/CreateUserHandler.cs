using Cs.Acme.Domain;
using Cs.Acme.Domain.Model;
using Cs.SharedKernel.Application.Command;
using Cs.SharedKernel.Application.Command.Handler;
using System;

namespace Cs.Acme.Application.Command.Handler
{
    public class CreateUserHandler : IHandler
    {
        private readonly IUsers _users;

        public CreateUserHandler(IUsers users)
        {
            _users = users;
        }

        public void Handle(ICommand command)
        {
            var createUserCommand = (CreateUserCommand) command;
            if (_users.Exists(createUserCommand.Email))
            {
                throw new Exception("Current user exists");
            }
            
            var user = new User(
                createUserCommand.Email,
                createUserCommand.Password,
                createUserCommand.FirstName,
                createUserCommand.LastName
            );

            _users.Add(user);
        }
    }
}