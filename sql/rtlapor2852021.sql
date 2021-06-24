-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.3.16-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table rtlapor.log_sendmail
CREATE TABLE IF NOT EXISTS `log_sendmail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module` varchar(100) DEFAULT NULL,
  `id_users` int(11) DEFAULT NULL,
  `mailto` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=307 DEFAULT CHARSET=latin1;

-- Dumping data for table rtlapor.log_sendmail: ~27 rows (approximately)
/*!40000 ALTER TABLE `log_sendmail` DISABLE KEYS */;
INSERT INTO `log_sendmail` (`id`, `module`, `id_users`, `mailto`, `status`, `created_at`, `updated_at`) VALUES
	(280, 'warga lapor', 50, 'elsharionnn@gmail.com', 'Failed to authenticate on SMTP server with username "riskimaulanarahman@gmail.com" using 3 possible ', '2021-02-21 20:35:17', '2021-02-21 20:35:17'),
	(281, 'respon rt', 51, 'elsharionnn@gmail.com', 'Failed to authenticate on SMTP server with username "riskimaulanarahman@gmail.com" using 3 possible ', '2021-02-21 20:39:16', '2021-02-21 20:43:09'),
	(282, 'warga lapor', 50, 'elsharionnn@gmail.com', 'success', '2021-02-21 20:41:46', '2021-02-21 20:41:46'),
	(283, 'respon rt', 51, 'ikistudios.official@gmail.com', 'success', '2021-02-21 20:43:46', '2021-02-21 20:43:46'),
	(284, 'respon rt', 51, 'ikistudios.official@gmail.com', 'Connection could not be established with host smtp.gmail.com :stream_socket_client(): unable to conn', '2021-05-10 14:43:41', '2021-05-10 14:43:41'),
	(285, 'respon rt', 51, 'ikistudios.official@gmail.com', 'Connection could not be established with host smtp.gmail.com :stream_socket_client(): unable to conn', '2021-05-10 15:03:35', '2021-05-10 15:03:35'),
	(286, 'warga lapor', 50, 'elsharionnn@gmail.com', 'Failed to authenticate on SMTP server with username "riskimaulanarahman@gmail.com" using 3 possible ', '2021-05-22 11:32:44', '2021-05-22 11:32:44'),
	(287, 'respon rt', 51, 'ikistudios.official@gmail.com', 'Failed to authenticate on SMTP server with username "riskimaulanarahman@gmail.com" using 3 possible ', '2021-05-22 11:46:03', '2021-05-22 11:46:03'),
	(288, 'warga lapor', 50, 'elsharionnn@gmail.com', 'Failed to authenticate on SMTP server with username "riskimaulanarahman@gmail.com" using 3 possible ', '2021-05-23 17:57:44', '2021-05-23 17:57:44'),
	(289, 'warga lapor', 50, 'elsharionnn@gmail.com', 'Failed to authenticate on SMTP server with username "riskimaulanarahman@gmail.com" using 3 possible ', '2021-05-23 18:00:59', '2021-05-23 18:00:59'),
	(290, 'warga lapor', 50, 'elsharionnn@gmail.com', 'Failed to authenticate on SMTP server with username "riskimaulanarahman@gmail.com" using 3 possible ', '2021-05-23 18:03:00', '2021-05-23 18:03:00'),
	(291, 'warga lapor', 50, 'elsharionnn@gmail.com', 'Failed to authenticate on SMTP server with username "riskimaulanarahman@gmail.com" using 3 possible ', '2021-05-23 18:05:14', '2021-05-23 18:05:14'),
	(292, 'warga lapor', 50, 'elsharionnn@gmail.com', 'Failed to authenticate on SMTP server with username "riskimaulanarahman@gmail.com" using 3 possible ', '2021-05-23 18:11:00', '2021-05-23 18:11:00'),
	(293, 'warga lapor', 50, 'elsharionnn@gmail.com', 'Failed to authenticate on SMTP server with username "riskimaulanarahman@gmail.com" using 3 possible ', '2021-05-23 18:12:27', '2021-05-23 18:12:27'),
	(294, 'warga lapor', 50, 'elsharionnn@gmail.com', 'Failed to authenticate on SMTP server with username "riskimaulanarahman@gmail.com" using 3 possible ', '2021-05-23 20:33:27', '2021-05-23 20:33:27'),
	(295, 'respon rt', 51, 'ikistudios.official@gmail.com', 'Failed to authenticate on SMTP server with username "riskimaulanarahman@gmail.com" using 3 possible ', '2021-05-23 21:50:08', '2021-05-23 21:50:08'),
	(296, 'respon rt', 51, 'ikistudios.official@gmail.com', 'Failed to authenticate on SMTP server with username "riskimaulanarahman@gmail.com" using 3 possible ', '2021-05-23 21:50:23', '2021-05-23 21:50:23'),
	(297, 'warga lapor', 50, 'elsharionnn@gmail.com', 'Failed to authenticate on SMTP server with username "riskimaulanarahman@gmail.com" using 3 possible ', '2021-05-26 23:47:32', '2021-05-26 23:47:32'),
	(298, 'respon rt', 51, 'ikistudios.official@gmail.com', 'Failed to authenticate on SMTP server with username "riskimaulanarahman@gmail.com" using 3 possible ', '2021-05-27 00:11:23', '2021-05-27 00:11:23'),
	(299, 'warga lapor', 50, 'elsharionnn@gmail.com', 'Failed to authenticate on SMTP server with username "riskimaulanarahman@gmail.com" using 3 possible ', '2021-05-27 00:15:59', '2021-05-27 00:15:59'),
	(300, 'respon rt', 51, 'ikistudios.official@gmail.com', 'Failed to authenticate on SMTP server with username "riskimaulanarahman@gmail.com" using 3 possible ', '2021-05-27 00:16:30', '2021-05-27 00:16:30'),
	(301, 'warga lapor', 50, 'elsharionnn@gmail.com', 'Connection could not be established with host smtp.gmail.com :stream_socket_client(): unable to conn', '2021-05-27 16:45:08', '2021-05-27 16:45:08'),
	(302, 'warga lapor', 50, 'elsharionnn@gmail.com', 'Connection could not be established with host smtp.gmail.com :stream_socket_client(): unable to conn', '2021-05-27 16:47:28', '2021-05-27 16:47:28'),
	(303, 'respon rt', 51, 'ikistudios.official@gmail.com', 'Connection could not be established with host smtp.gmail.com :stream_socket_client(): unable to conn', '2021-05-27 16:52:41', '2021-05-27 16:52:41'),
	(304, 'respon rt', 51, 'ikistudios.official@gmail.com', 'Connection could not be established with host smtp.gmail.com :stream_socket_client(): unable to conn', '2021-05-28 15:35:47', '2021-05-28 15:35:47'),
	(305, 'warga lapor', 50, 'elsharionnn@gmail.com', 'Connection could not be established with host smtp.gmail.com :stream_socket_client(): unable to conn', '2021-05-28 16:01:23', '2021-05-28 16:01:23'),
	(306, 'respon rt', 51, 'ikistudios.official@gmail.com', 'Connection could not be established with host smtp.gmail.com :stream_socket_client(): unable to conn', '2021-05-28 16:02:17', '2021-05-28 16:02:17');
/*!40000 ALTER TABLE `log_sendmail` ENABLE KEYS */;


-- Dumping structure for table rtlapor.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table rtlapor.migrations: ~2 rows (approximately)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;


-- Dumping structure for table rtlapor.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`(191)) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table rtlapor.password_resets: ~0 rows (approximately)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;


-- Dumping structure for table rtlapor.tbl_kecamatan
CREATE TABLE IF NOT EXISTS `tbl_kecamatan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_kecamatan` varchar(50) NOT NULL,
  `nama_kecamatan` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- Dumping data for table rtlapor.tbl_kecamatan: ~6 rows (approximately)
/*!40000 ALTER TABLE `tbl_kecamatan` DISABLE KEYS */;
INSERT INTO `tbl_kecamatan` (`id`, `kode_kecamatan`, `nama_kecamatan`, `created_at`, `updated_at`) VALUES
	(9, '647106', 'Balikpapan Kota', '2021-02-19 17:34:08', '2021-02-20 10:21:52'),
	(10, '647104', 'Balikpapan Tengah', '2021-02-19 17:34:28', '2021-02-20 10:21:27'),
	(11, '647101', 'Balikpapan Timur', '2021-02-19 17:34:42', '2021-02-20 10:20:36'),
	(12, '647102', 'Balikpapan Barat', '2021-02-19 17:34:57', '2021-02-20 10:20:49'),
	(13, '647105', 'Balikpapan Selatan', '2021-02-19 17:35:05', '2021-02-20 10:21:43'),
	(14, '647103', 'Balikpapan Utara', '2021-02-19 17:36:09', '2021-02-20 10:21:11');
/*!40000 ALTER TABLE `tbl_kecamatan` ENABLE KEYS */;


-- Dumping structure for table rtlapor.tbl_kelurahan
CREATE TABLE IF NOT EXISTS `tbl_kelurahan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_kecamatan` varchar(50) NOT NULL,
  `kode_kelurahan` varchar(50) NOT NULL,
  `nama_kelurahan` varchar(150) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table rtlapor.tbl_kelurahan: ~1 rows (approximately)
/*!40000 ALTER TABLE `tbl_kelurahan` DISABLE KEYS */;
INSERT INTO `tbl_kelurahan` (`id`, `kode_kecamatan`, `kode_kelurahan`, `nama_kelurahan`, `created_at`, `updated_at`) VALUES
	(1, '647104', '6471041006', 'Sumber Rejo', '2021-02-20 15:41:47', '2021-02-20 15:41:47');
/*!40000 ALTER TABLE `tbl_kelurahan` ENABLE KEYS */;


-- Dumping structure for table rtlapor.tbl_laporan
CREATE TABLE IF NOT EXISTS `tbl_laporan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_users` int(11) NOT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `judul` varchar(255) NOT NULL,
  `laporan` varchar(255) NOT NULL,
  `status` varchar(150) NOT NULL,
  `aksi` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table rtlapor.tbl_laporan: ~7 rows (approximately)
/*!40000 ALTER TABLE `tbl_laporan` DISABLE KEYS */;
INSERT INTO `tbl_laporan` (`id`, `id_users`, `gambar`, `judul`, `laporan`, `status`, `aksi`, `created_at`, `updated_at`) VALUES
	(18, 50, 'warga lapor_1621764742_test.png', 'lapor 1', 'okeoke', 'direspon', 'proses', '2021-05-23 18:12:22', '2021-05-28 15:44:14'),
	(19, 50, 'warga lapor_1621773201_Screen Shot 2021-05-23 at 19.44.18.png', 'lapor 2', 'mantap', 'direspon', 'menunggu', '2021-05-23 20:33:21', '2021-05-28 15:58:32'),
	(20, 50, 'warga lapor_1622044049_Screen Shot 2021-05-24 at 23.06.50.png', 'lapor 3', 'test', 'direspon', 'menunggu', '2021-05-26 23:47:29', '2021-05-28 15:58:33'),
	(21, 50, 'warga lapor_1622045756_Screen Shot 2021-05-26 at 13.43.12.png', 'lapor 4', 'becek', 'direspon', 'menunggu', '2021-05-27 00:15:56', '2021-05-28 15:58:34'),
	(22, 50, 'warga lapor_1622105086_5dc982f3e6411.jpg', 'pohon tumbang', 'ada pohon tumbang di dekat gang amin', 'direspon', 'selesai', '2021-05-27 16:44:46', '2021-05-28 16:10:29'),
	(23, 50, 'warga lapor_1622105227_rudi-salah-seorang-warga_20160907_124455.jpg', 'sampah mampet 2', 'tumpukan sampah di depan puskesmas 2', 'direspon', 'proses', '2021-05-27 16:47:07', '2021-05-28 16:03:59'),
	(24, 50, 'warga lapor_1622188862_6085812c5730a.jpg', 'test 5', 'test 5', 'direspon', 'menunggu', '2021-05-28 16:01:02', '2021-05-28 16:09:55');
/*!40000 ALTER TABLE `tbl_laporan` ENABLE KEYS */;


-- Dumping structure for table rtlapor.tbl_proses
CREATE TABLE IF NOT EXISTS `tbl_proses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_laporan` int(11) NOT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- Dumping data for table rtlapor.tbl_proses: ~14 rows (approximately)
/*!40000 ALTER TABLE `tbl_proses` DISABLE KEYS */;
INSERT INTO `tbl_proses` (`id`, `id_laporan`, `keterangan`, `created_at`, `updated_at`) VALUES
	(1, 18, 'tahap 1', '2021-05-25 21:20:58', '2021-05-25 21:20:58'),
	(2, 18, 'tahap 2', '2021-05-25 21:21:26', '2021-05-25 21:21:26'),
	(3, 18, 'proses 1', '2021-05-26 23:24:57', '2021-05-26 23:24:57'),
	(4, 19, 'peninjauan', '2021-05-26 23:25:42', '2021-05-26 23:25:42'),
	(5, 19, 'peninjauan 2', '2021-05-26 23:25:54', '2021-05-26 23:25:54'),
	(6, 20, 'peninjauan', '2021-05-27 00:16:44', '2021-05-27 00:16:44'),
	(7, 21, 'di tinjau', '2021-05-27 00:16:58', '2021-05-27 00:16:58'),
	(8, 22, 'tahap 1', '2021-05-27 16:56:27', '2021-05-27 16:56:27'),
	(9, 22, 'tahap 2', '2021-05-27 16:56:37', '2021-05-27 16:56:37'),
	(10, 22, 'tahap 3', '2021-05-27 16:57:36', '2021-05-27 16:57:36'),
	(11, 23, 'tahap 1', '2021-05-28 15:49:35', '2021-05-28 15:49:35'),
	(12, 23, 'gotong royong', '2021-05-28 16:03:59', '2021-05-28 16:03:59'),
	(13, 24, 'ditinjau', '2021-05-28 16:09:55', '2021-05-28 16:09:55'),
	(14, 22, 'pengangkatan puing pohon', '2021-05-28 16:10:29', '2021-05-28 16:10:29');
/*!40000 ALTER TABLE `tbl_proses` ENABLE KEYS */;


-- Dumping structure for table rtlapor.users
CREATE TABLE IF NOT EXISTS `users` (
  `id_users` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notelp` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_kecamatan` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_kelurahan` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor_rt` int(11) NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pass_txt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isActive` int(11) DEFAULT 1,
  `isRT` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_users`) USING BTREE,
  UNIQUE KEY `email` (`email`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table rtlapor.users: ~6 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id_users`, `name`, `username`, `email`, `notelp`, `kode_kecamatan`, `kode_kelurahan`, `nomor_rt`, `role`, `password`, `remember_token`, `pass_txt`, `isActive`, `isRT`, `created_at`, `updated_at`) VALUES
	(1, 'admin', 'admin', 'admin@gmail.com', '', '', '', 0, 'admin', '$2y$10$S0GdzoB9hPZIE2P0lweZ8epEpiOBzw6ETuqur8Mz1ba.e4w2YXQOm', 'LuzbV1gaBeZsnOexFKolWtdhA69cOV3RPcTkGAo4ArUncYuR6jInHjUDCe5N', 'admin123', 1, 0, NULL, NULL),
	(50, 'warga2', 'warga2', 'ikistudios.official@gmail.com', '08123', '647104', '6471041006', 1, 'warga', '$2y$10$YNHZDYgJR7sjUR6APXUzqews9qBBzvPCFkewSzBJJ.JIGo7Ud78f2', 'IT1iUDUj4up3tu8uCzkDqmVTcZv7cpTGsItYejrtPNE5Xope1lOi9WClDW8T', 'warga2', 1, 0, '2021-02-20 22:26:08', '2021-02-20 22:26:08'),
	(51, 'sumberrejo_rt1', 'sumberrejo_rt1', 'elsharionnn@gmail.com', '08123', '647104', '6471041006', 1, 'rt', '$2y$10$dXtKlIeUKilCAFJiODSrEOKoM8yrjEvEOEpu9/naHPmlrvwJwkFZm', 'kQRFqbBkOVbhUwnmjpFFZ2v2Feua4atc2LJhmmMt6laLYPVAbSwBtdognbkB', 'sumberrejo_rt1', 1, 1, '2021-02-20 22:45:30', '2021-02-21 17:11:46'),
	(52, 'sumberrejo_rt2', 'sumberrejo_rt2', 'rishnaskr@gmail.com', '08321', '647104', '6471041006', 2, 'rt', '$2y$10$cEPxp09eDYbbB94j3qgN0uqusWtfjGlM34Ci9DEFN0LOLC8ulUpCC', '42sOMcpB7KhajncFK2T8mz25gZYMmvXdI5j4V40YmWFS2L0EnJakA89FpGoK', 'sumberrejo_rt2', 1, 1, '2021-02-21 14:40:49', '2021-02-21 14:59:38'),
	(53, 'warga3', 'warga3', 'elsharionnn.official@gmail.com', '084321', '647104', '6471041006', 2, 'warga', '$2y$10$hL0cy/Jaz9Lxc1qeCOR84e/GAKFen6d2mG4oTcJF/tnZKqqz59OAy', 'nYQ8jU7PK0o2RspoOAO2a7t9xJTRXgTBe6MJIrLeGmokBexY9X9Vrr2sVvhW', 'warga3', 1, 0, '2021-02-21 15:18:10', '2021-02-21 15:18:10'),
	(54, 'riski', 'riski', 'riski@gmail.com', '08123', '647104', '6471041006', 3, 'warga', '$2y$10$sO6L2VM9hGUrLHp05eeYpejk7a3fyb4LoRdvG9Wv/oYOOR4s1W3SS', 'h25whhQ4tMq51Ji3fl7zw4SIVf4rpRxAvI240LaFOKv0dHTqJSK0tuz2NuiL', 'riski', 1, 0, '2021-05-10 14:07:18', '2021-05-10 14:07:18');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
