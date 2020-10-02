<?php

declare(strict_types=1);

namespace Acme\Domain;

use Acme\Domain\Model\User;

interface Users
{
    public function add(User $user): void;
    public function exists(string $email): bool;
    public function getByEmail(string $email): User;
    public function remove(string $email): void;
}
