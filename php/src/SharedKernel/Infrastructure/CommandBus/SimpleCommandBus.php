<?php

declare(strict_types=1);

namespace SharedKernel\Infrastructure\CommandBus;

use SharedKernel\Application\Command\Command;
use SharedKernel\Application\Command\Handler\Handler;
use SharedKernel\Application\CommandBus\CommandBus;

class SimpleCommandBus implements CommandBus
{
    /**
     * @var Handler[]
     */
    private array $handlers;

    public function registerHandler(Command $command, Handler $handler): void
    {
        $this->handlers[$command::class] = $handler;
    }

    public function handle(Command $command): void
    {
        $this->handlers[$command::class]->handle($command);
    }
}
