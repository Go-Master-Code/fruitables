# 🛒 Simple E-Commerce Website Fruitables

Sebuah website e-commerce sederhana yang memungkinkan pengguna untuk melihat produk, menambahkannya ke keranjang, mengedit quantiti di keranjang, menghapus barang dari keranjang, dan melakukan checkout.

## 🚀 Fitur

- Login menggunakan username dan password
- Halaman shop berisi daftar produk beserta deskripsi singkat
- Sistem keranjang belanja (cart)
- Form checkout
- Logout
- Responsif untuk perangkat mobile

## 🛠️ Teknologi yang Digunakan

- Frontend: HTML, CSS, JavaScript
- Backend: Golang, Gorilla Sessions, gorm
- Database: MySQL
- Lainnya: Bootstrap

## 📁 Struktur Proyek
ecommerce
│
├── assets/ # File statis (CSS, JS, gambar)
├── bcrypt/ # demo dan test bcrypt untuk hash dan compare password user
├── config/ # File config koneksi database
├── db/ # Berisi script sql untuk MySQL
├── handler/ # Berisi handler
├── middleware/ # Untuk menonaktifkan cache pada browser pengguna
├── models/ # Berisi file-file model yang merepresentasikan struktur data pada tabel dan operasi database
├── views/ # Berisi file-file html yang berfungsi sebagai tampilan frontend web
├── go.mod # Go module
├── go.sum
├── main.go
