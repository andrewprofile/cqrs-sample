use Acme\Application\Command\CreateUserCommand;
use Acme\Application\Command\Handler\CreateUserHandler;
use Acme\Infrastructure\InMemory\Domain\InMemoryUsers;
use SharedKernel\Infrastructure\CommandBus\SimpleCommandBus;

<<__EntryPoint>>
  async function main(): Awaitable<void> {
    require_once(__DIR__.'/../vendor/autoload.hack');
    \Facebook\AutoloadMap\initialize();

    $command = new CreateUserCommand('john@doe.com', 'hello', 'John', 'Smith');
    $commandBus = new SimpleCommandBus();
    $commandBus->registerHandler($command, new CreateUserHandler(new InMemoryUsers()));
    $commandBus->handle($command);
}