-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.44-log - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             12.10.0.7000
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping data for table ecommerce.barang: ~6 rows (approximately)
INSERT INTO `barang` (`id`, `nama_barang`, `harga`, `stok`, `id_kategori`, `deskripsi`, `image_path`, `icon_path`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 'Grapes', 3.2, 7, 1, 'Red Globe from USA', 'static/product_image/Grapes.jpg', 'static/product_icon/GrapesIcon.jpg', '2025-06-04 09:41:05.000', '2025-06-16 02:02:43.565', NULL),
	(2, 'Raspberries', 4.1, 42, 1, 'Raspberries from Rusia', 'static/product_image/Raspberries.jpg', 'static/product_icon/RaspberriesIcon.jpg', '2025-06-04 09:41:50.000', '2025-06-12 05:16:29.026', NULL),
	(3, 'Apricots', 3.18, 5, 1, 'Apricots from Italia', 'static/product_image/Apricots.jpg', 'static/product_icon/ApricotsIcon.jpg', '2025-06-04 09:42:06.000', '2025-06-13 06:31:30.281', NULL),
	(4, 'Oranges', 2.35, 8, 1, 'Oranges from Australia', 'static/product_image/Oranges.jpg', 'static/product_icon/OrangesIcon.jpg', '2025-06-04 09:43:52.000', '2025-06-16 01:38:32.853', NULL),
	(5, 'Apple', 1.95, 12, 1, 'Apple from China', 'static/product_image/Apple.jpg', 'static/product_icon/AppleIcon.jpg', '2025-06-04 09:43:53.000', '2025-06-16 02:02:43.611', NULL),
	(6, 'Banana', 2.2, 21, 2, 'Banana from Phipines', 'static/product_image/Banana.jpg', 'static/product_icon/BananaIcon.jpg', '2025-06-04 09:44:43.000', '2025-06-13 02:21:33.001', NULL);

-- Dumping data for table ecommerce.cart: ~9 rows (approximately)
INSERT INTO `cart` (`id_cart`, `user_id`, `created_at`, `updated_at`) VALUES
	(1, 'budi', '2025-06-05 11:52:18', '2025-06-05 18:52:18'),
	(2, 'rini', '2025-06-08 02:27:30', '2025-06-08 09:27:31'),
	(6, 'hendra', '2025-06-13 06:18:07', '2025-06-13 13:18:07'),
	(7, 'yadi', '2025-06-13 06:25:12', '2025-06-13 13:25:12'),
	(8, 'ahmed', '2025-06-13 06:29:30', '2025-06-13 13:29:30'),
	(9, 'kevin', '2025-06-16 01:53:42', '2025-06-16 08:53:42'),
	(10, 'nina', '2025-06-16 01:58:06', '2025-06-16 08:58:06'),
	(11, 'vp', '2025-06-20 00:24:56', '2025-06-20 07:24:56'),
	(12, 'andrew', '2025-06-20 00:46:09', '2025-06-20 07:46:09');

-- Dumping data for table ecommerce.cart_items: ~6 rows (approximately)
INSERT INTO `cart_items` (`id_cart`, `id_barang`, `jumlah`) VALUES
	(1, 1, 1),
	(1, 2, 1),
	(1, 3, 1),
	(2, 1, 1),
	(2, 4, 1),
	(2, 5, 2);

-- Dumping data for table ecommerce.kategori_barang: ~2 rows (approximately)
INSERT INTO `kategori_barang` (`id`, `nama_kategori`) VALUES
	(1, 'Fruits'),
	(2, 'Vegetables');

-- Dumping data for table ecommerce.order: ~3 rows (approximately)
INSERT INTO `order` (`id_order`, `user_id`, `created_at`, `payment`, `status`, `notes`) VALUES
	(32, 'ahmed', '2025-06-13 06:31:30', 'COD', 'Pending', 'Sdlkfjs;ldkjflks;djlf;skdj;lfsdf'),
	(33, 'ahmed', '2025-06-16 01:38:33', 'COD', 'Pending', ''),
	(34, 'nina', '2025-06-16 02:02:43', 'transfer', 'Pending', '');

-- Dumping data for table ecommerce.order_items: ~7 rows (approximately)
INSERT INTO `order_items` (`id_order`, `id_barang`, `jumlah`, `harga_jual`) VALUES
	(32, 1, 2, 3.2),
	(32, 3, 3, 3.18),
	(32, 5, 1, 1.95),
	(33, 1, 2, 3.2),
	(33, 4, 3, 2.35),
	(34, 1, 4, 3.2),
	(34, 5, 2, 1.95);

-- Dumping data for table ecommerce.user: ~9 rows (approximately)
INSERT INTO `user` (`id`, `email`, `password`, `first_name`, `last_name`, `telepon`, `negara`, `alamat`, `kota`, `kode_pos`) VALUES
	('ahmed', 'ahmed@gmail.com', '$2a$10$NcL6uYne8Lh3ESRjbpE/5ub1/13sUDhQO1S/zua/ysPLNqDng8wQ2', 'ahmed', 'deedat', '+08 7363712', 'Israel', 'Tel Aviv North Portland 12', 'Tel Aviv', '41928'),
	('andrew', 'kevinkristansa@gmail.com', '$2a$10$CF4qYBTev0DAmGfV.Mbs8.sv0/FPRlt1jG8ISk.7e5ru4VmKFdHDW', 'Andrew', 'Johnson', '+34 18293', 'USA', 'Hacking Street 123', 'New York', '38192'),
	('budi', 'budi@example.com', '$2a$10$rHRsedhznCIxOqVduauye.sIVth3XU9eJ2X./7kfcku.tTodTBfk6', 'budi', 'baso', '087728376521', 'Indonesia', 'Jl. Ujung Berung 122', 'Bandung', '18282'),
	('hendra', 'hendrahh@gmail.com', '$2a$10$frwzVxVBN2UNAEJmnqUaxeN91Iss8Irg834r4MS8rl5MZIYFvN6sG', 'Hendra', 'Hermawan', '081328173839', 'Indonesia', 'Jl. Kemang No. 12', 'Jakarta', '40221'),
	('kevin', 'kevinkristansa@gmail.com', '$2a$10$YBBYqhKQt7BXxy0v7p7iPOUlFM2tlXN79QA9SLxX2r2gzQNfc/Usu', 'Kevin', 'Kristansa', '087361728373', 'Indonesia', 'Jl. Kebon Jukut 145', 'Batam', '40226'),
	('nina', 'kevinkristansa@gmail.com', '$2a$10$8ju4zPkSWaii/jufGKTbHel7vj2KaaznpTfkxleCPiim1QCShDeVK', 'Nina', 'Bobo', '081128371888', 'Indonesia', 'Jl. Maluku no. 11', 'Jatibarang', '40291'),
	('rini', 'riniastuti@example.com', '$2a$10$FIiJUiE.s/RoizT0F7wT8ea60m6KwNCmF6vFxBN8i3WcBkzJE0pw2', 'Rini', 'Astuti', '081100009999', 'Indonesia', 'Jl. Ir. H. Juanda 145', 'Bandung', '40226'),
	('vp', 'kevinkristansa@gmail.com', '$2a$10$JM1OUy5nRujjAtu9Jc2QiuyfcQZhauaLAeg.FGnJV19XZzo60pB9u', 'Vladimir', 'Palacios', '+12 73849', 'Russia', 'Astomat Kalasnikov Street 62', 'Moskow', '38192'),
	('yadi', 'yadi@gmail.com', '$2a$10$phD0rg8BAmTki/KpmWg46u7e8aimjt/Tlj2hTRyn4R3DswoXAAhAK', 'Yadi', 'Untung', '089982738393', 'Indonesia', 'Jl. Ambon No.28', 'Jepara', '41928');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
