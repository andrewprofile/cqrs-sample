using Cs.SharedKernel.Application.Command;
using Cs.SharedKernel.Application.Command.Handler;
using Cs.SharedKernel.Application.CommandBus;
using System.Collections.Generic;

namespace Cs.SharedKernel.Infrastructure.CommandBus
{
    public class SimpleCommandBus : ICommandBus
    {
        private readonly Dictionary<string, IHandler> _handlers;

        public SimpleCommandBus()
        {
            _handlers = new Dictionary<string, IHandler>();
        }

        public void RegisterHandler(ICommand command, IHandler handler)
        {
            _handlers[command.GetType().Name] = handler;
        }

        public void Handle(ICommand command)
        {
            _handlers[command.GetType().Name].Handle(command);
        }
    }
}