namespace SharedKernel\Application\Command\Handler;

use SharedKernel\Application\Command\Command;

interface Handler
{
    public function handle(Command $command): void;
}
