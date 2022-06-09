namespace Acme\Infrastructure\InMemory\Domain;

use Acme\Domain\Model\User;
use Acme\Domain\Users;

class InMemoryUsers implements Users
{
    private dict<string, User> $users;

    public function add(User $user): void
    {
        $this->users[$user->email()] = $user;
    }

    public function exists(string $email): bool
    {
        return isset($this->users[$email]);
    }

    public function getByEmail(string $email): User
    {
        return $this->users[$email];
    }

    public function remove(string $email): void
    {
        if (!$this->exists($email)) {
            throw new \InvalidArgumentException(sprintf('User with email "%s" does not exists', $email));
        }

        unset($this->users[$email]);
    }
}
