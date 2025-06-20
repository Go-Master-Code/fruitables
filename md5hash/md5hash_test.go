package md5hash

import (
	"fmt"
	"testing"
)

func TestGenerateMD5(t *testing.T) {
	input := "hello"
	expected := "5d41402abc4b2a76b9719d911017c592"

	result := GenerateMD5(input)

	if result != expected {
		t.Errorf("GenerateMD5(%q) = %s; want %s", input, result, expected)
	}

	fmt.Println("Result: " + result)
}
