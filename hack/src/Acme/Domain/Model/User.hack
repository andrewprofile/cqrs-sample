namespace Acme\Domain\Model;

use Ramsey\Uuid\Uuid;
use Ramsey\Uuid\UuidInterface;

class User
{

    private UuidInterface $id;

    private string $email;

    private string $password;

    private string $firstName;

    private string $lastName;

    private \DateTimeImmutable $createdAt;

    private \DateTimeImmutable $updatedAt;

    public function __construct(string $email, string $password, string $firstName, string $lastName)
    {
        $this->id        = Uuid::uuid4();
        $this->email     = $email;
        $this->password  = $password;
        $this->firstName = $firstName;
        $this->lastName  = $lastName;
        $this->createdAt = new \DateTimeImmutable();
    }

    public function id(): UuidInterface
    {
        return $this->id;
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

    public function createdAt(): \DateTimeImmutable
    {
        return $this->createdAt;
    }

    public function updatedAt(): \DateTimeImmutable
    {
        return $this->updatedAt;
    }
}
