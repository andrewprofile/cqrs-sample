<?php

declare(strict_types=1);

namespace Acme\Application\Command\Handler;

use Acme\Application\Command\CreateUserCommand;
use Acme\Domain\Model\User;
use Acme\Domain\Users;
use SharedKernel\Application\Command\Command;
use SharedKernel\Application\Command\Handler\Handler;

class CreateUserHandler implements Handler
{
    /**
     * @var Users
     */
    private $users;

    public function __construct(Users $users)
    {
        $this->users = $users;
    }

    /**
     * @throws \Exception
     */
    public function handle(Command $command): void
    {
        if (!($command instanceof CreateUserCommand)) {
            throw new \RuntimeException('Invalid command type');
        }

        if ($this->users->exists($command->email())) {
            throw new \InvalidArgumentException('Current user exists');
        }

        $user = new User($command->email(), $command->password(), $command->firstName(), $command->lastName());

        $this->users->add($user);
    }
}
