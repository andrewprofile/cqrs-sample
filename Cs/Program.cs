using Cs.Acme.Application.Command;
using Cs.Acme.Application.Command.Handler;
using Cs.Acme.Infrastructure.InMemory.Domain;
using Cs.SharedKernel.Infrastructure.CommandBus;
using Cs.SharedKernel.Application.Command;
using Cs.SharedKernel.Application.CommandBus;

namespace Cs
{
    internal static class Program
    {
        private static void Main()
        {
            ICommand command = new CreateUserCommand("john@doe.com", "hello", "John", "Smith");
            ICommandBus commandBus = new SimpleCommandBus();
            commandBus.RegisterHandler(command, new CreateUserHandler(new InMemoryUsers()));
            commandBus.Handle(command);
        }
    }
}