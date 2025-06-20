package bcrypt

import (
	"fmt"
	"log"

	"golang.org/x/crypto/bcrypt"
)

func Hash(pwd string) string {
	//password := "mySecret123"

	hashedPassword, err := bcrypt.GenerateFromPassword([]byte(pwd), bcrypt.DefaultCost)
	if err != nil {
		log.Fatal(err)
	}
	fmt.Println("Hashed password: " + string(hashedPassword))

	return string(hashedPassword)

	/*
		err = bcrypt.CompareHashAndPassword(hashedPassword, []byte(pwd))
		if err != nil {
			fmt.Println("Password salah!")
		} else {
			fmt.Println("Password ccocok ✅")
			pk := len(hashedPassword)
			fmt.Println("Panjang karakter hashed password: ", pk)
		}
	*/
}

func CompareHash(hashedPassword string, input string) bool {
	err := bcrypt.CompareHashAndPassword([]byte(hashedPassword), []byte(input))

	if err != nil {
		fmt.Println("Password salah!")
		return false
	} else {
		fmt.Println("Password ccocok ✅")
		pk := len(hashedPassword)
		fmt.Println("Panjang karakter hashed password: ", pk)
		return true
	}
}
