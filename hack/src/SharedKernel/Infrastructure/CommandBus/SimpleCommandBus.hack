namespace SharedKernel\Infrastructure\CommandBus;

use SharedKernel\Application\Command\Command;
use SharedKernel\Application\Command\Handler\Handler;
use SharedKernel\Application\CommandBus\CommandBus;

class SimpleCommandBus implements CommandBus
{
    private dict<string, Handler> $handlers;

    public function registerHandler(Command $command, Handler $handler): void
    {
        $this->handlers[HH\class_get_class_name($command)] = $handler;
    }

    public function handle(Command $command): void
    {
        $this->handlers[HH\class_get_class_name($command)]->handle($command);
    }
}
