<?php

declare(strict_types=1);

namespace SharedKernel\Application\CommandBus;

use SharedKernel\Application\Command\Command;
use SharedKernel\Application\Command\Handler\Handler;

interface CommandBus
{
    public function registerHandler(Command $command, Handler $handler): void;
    public function handle(Command $command): void;
}
