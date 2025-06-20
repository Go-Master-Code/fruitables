package bcrypt

import (
	"fmt"
	"testing"
)

func TestBcrypt(t *testing.T) {
	password := "ahmed123"
	Hash(password)
}

func TestCompareHash(t *testing.T) {
	hashed := "$2a$10$CF4qYBTev0DAmGfV.Mbs8.sv0/FPRlt1jG8ISk.7e5ru4VmKFdHDW"
	pass := "andrew123"
	hasil := CompareHash(hashed, pass)

	fmt.Println(hasil)
}
