<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

use Acme\Application\Command\CreateUserCommand;
use Acme\Application\Command\Handler\CreateUserHandler;
use Acme\Infrastructure\InMemory\Domain\InMemoryUsers;
use SharedKernel\Infrastructure\CommandBus\SimpleCommandBus;

require __DIR__.'/vendor/autoload.php';

function main()
{
    $command = new CreateUserCommand('john@doe.com', 'hello', 'John', 'Smith');
    $commandBus = new SimpleCommandBus();
    $commandBus->registerHandler($command, new CreateUserHandler(new InMemoryUsers()));
    $commandBus->handle($command);
}

main();