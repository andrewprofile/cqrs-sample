namespace Cs.SharedKernel.Application.Command.Handler
{
    public interface IHandler
    {
        void Handle(ICommand command);
    }
}