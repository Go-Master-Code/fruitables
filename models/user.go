package models

import (
	"log"

	"github.com/Go-Master-Code/fruitables/bcrypt"

	"gorm.io/gorm"
)

type User struct {
	ID       string `gorm:"primary_key;column:id;autoIncrement"`
	Password string `gorm:"column:password"`
	//IdCart    int    `gorm:"column:id_cart"`
	Email     string `gorm:"column:email"`
	FirstName string `gorm:"column:first_name"`
	LastName  string `gorm:"column:last_name"`
	Telepon   string `gorm:"column:telepon"`
	Negara    string `gorm:"column:negara"`
	Alamat    string `gorm:"column:alamat"`
	Kota      string `gorm:"column:kota"`
	KodePos   string `gorm:"column:kode_pos"`
}

func (u *User) TableName() string {
	return "user" //nama table pada db nya adalah user_logs
}

func TampilkanUser(db *gorm.DB, idUser string) []User { //return value slice [] of Barang
	var user []User

	err := db.Model(&User{}).Where("id=?", idUser).Find(&user).Error
	if err != nil {
		panic(err)
	}

	return user
}

func GetPassword(db *gorm.DB, idUser string) string {
	var user []User
	err := db.Model(&User{}).Where("id = ?", idUser).Find(&user).Error
	if err != nil {
		panic(err)
	}

	if len(user) > 0 {
		pwd := user[0].Password
		return pwd
	} else {
		return ""
	}
}

func ValidasiUser(db *gorm.DB, idUser string, password string) (string, string) { //returnkan username dan password berdasarkan login
	var user []User

	err := db.Model(&User{}).Where("id = ? and password =?", idUser, password).Find(&user).Error
	if err != nil {
		panic(err)
	}

	if len(user) > 0 {
		//jika data user ketemu
		idUser := user[0].ID
		pwd := user[0].Password

		return idUser, pwd
	} else {
		//jika data user tidak ketemu
		return "", ""
	}
}

func UpdateUser(db *gorm.DB, idUser string, e string, firstName string, lastName string, telepon string, alamat string, negara string, kota string, kodePos string) {
	user := User{}
	_ = db.First(&user, "id = ?", idUser) //ambil 1 row dengan ID pada parameter

	user.ID = idUser
	user.Email = e
	user.FirstName = firstName
	user.LastName = lastName
	user.Telepon = telepon
	user.Alamat = alamat
	user.Negara = negara
	user.Kota = kota
	user.KodePos = kodePos

	err := db.Save(&user).Error
	if err != nil {
		panic(err)
	}
	log.Println("Data user: " + idUser + " berhasil diupdate!")
}

func RegisterUser(db *gorm.DB, idUser string, e string, password string, firstName string, lastName string, telepon string, alamat string, negara string, kota string, kodePos string) {
	//hash password dengan bcrypt
	hashed := bcrypt.Hash(password)

	user := User{ //masukkan data (single) pada struct
		//ID:         id, auto_increment
		ID:        idUser,
		Email:     e,
		Password:  hashed,
		FirstName: firstName,
		LastName:  lastName,
		Telepon:   telepon,
		Alamat:    alamat,
		Negara:    negara,
		Kota:      kota,
		KodePos:   kodePos,
	}
	//db.Last()
	err := db.Create(&user).Error //create data user

	if err != nil {
		panic(err)
	}
}
