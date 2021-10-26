namespace Acme\Application\Command;

use SharedKernel\Application\Command\Command;

class CreateUserCommand implements Command
{
    private string $email;

    private string $password;

    private string $firstName;

    private string $lastName;

    public function __construct(string $email, string $password, string $firstName, string $lastName)
    {
        $this->email     = $email;
        $this->password  = $password;
        $this->firstName = $firstName;
        $this->lastName  = $lastName;
    }

    public function email(): string
    {
        return $this->email;
    }

    public function password(): string
    {
        return $this->password;
    }

    public function firstName(): string
    {
        return $this->firstName;
    }

    public function lastName(): string
    {
        return $this->lastName;
    }
}
