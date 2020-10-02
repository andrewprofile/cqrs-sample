using Cs.SharedKernel.Application.Command;
using Cs.SharedKernel.Application.Command.Handler;

namespace Cs.SharedKernel.Application.CommandBus
{
    public interface ICommandBus
    {
        void RegisterHandler(ICommand command, IHandler handler);
        void Handle(ICommand command);
    }
}