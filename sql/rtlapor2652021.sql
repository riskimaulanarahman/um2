/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50732
 Source Host           : localhost:8889
 Source Schema         : rtlapor

 Target Server Type    : MySQL
 Target Server Version : 50732
 File Encoding         : 65001

 Date: 27/05/2021 07:26:39
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for log_sendmail
-- ----------------------------
DROP TABLE IF EXISTS `log_sendmail`;
CREATE TABLE `log_sendmail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module` varchar(100) DEFAULT NULL,
  `id_users` int(11) DEFAULT NULL,
  `mailto` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=301 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of log_sendmail
-- ----------------------------
BEGIN;
INSERT INTO `log_sendmail` VALUES (280, 'warga lapor', 50, 'elsharionnn@gmail.com', 'Failed to authenticate on SMTP server with username \"riskimaulanarahman@gmail.com\" using 3 possible ', '2021-02-21 20:35:17', '2021-02-21 20:35:17');
INSERT INTO `log_sendmail` VALUES (281, 'respon rt', 51, 'elsharionnn@gmail.com', 'Failed to authenticate on SMTP server with username \"riskimaulanarahman@gmail.com\" using 3 possible ', '2021-02-21 20:39:16', '2021-02-21 20:43:09');
INSERT INTO `log_sendmail` VALUES (282, 'warga lapor', 50, 'elsharionnn@gmail.com', 'success', '2021-02-21 20:41:46', '2021-02-21 20:41:46');
INSERT INTO `log_sendmail` VALUES (283, 'respon rt', 51, 'ikistudios.official@gmail.com', 'success', '2021-02-21 20:43:46', '2021-02-21 20:43:46');
INSERT INTO `log_sendmail` VALUES (284, 'respon rt', 51, 'ikistudios.official@gmail.com', 'Connection could not be established with host smtp.gmail.com :stream_socket_client(): unable to conn', '2021-05-10 14:43:41', '2021-05-10 14:43:41');
INSERT INTO `log_sendmail` VALUES (285, 'respon rt', 51, 'ikistudios.official@gmail.com', 'Connection could not be established with host smtp.gmail.com :stream_socket_client(): unable to conn', '2021-05-10 15:03:35', '2021-05-10 15:03:35');
INSERT INTO `log_sendmail` VALUES (286, 'warga lapor', 50, 'elsharionnn@gmail.com', 'Failed to authenticate on SMTP server with username \"riskimaulanarahman@gmail.com\" using 3 possible ', '2021-05-22 11:32:44', '2021-05-22 11:32:44');
INSERT INTO `log_sendmail` VALUES (287, 'respon rt', 51, 'ikistudios.official@gmail.com', 'Failed to authenticate on SMTP server with username \"riskimaulanarahman@gmail.com\" using 3 possible ', '2021-05-22 11:46:03', '2021-05-22 11:46:03');
INSERT INTO `log_sendmail` VALUES (288, 'warga lapor', 50, 'elsharionnn@gmail.com', 'Failed to authenticate on SMTP server with username \"riskimaulanarahman@gmail.com\" using 3 possible ', '2021-05-23 17:57:44', '2021-05-23 17:57:44');
INSERT INTO `log_sendmail` VALUES (289, 'warga lapor', 50, 'elsharionnn@gmail.com', 'Failed to authenticate on SMTP server with username \"riskimaulanarahman@gmail.com\" using 3 possible ', '2021-05-23 18:00:59', '2021-05-23 18:00:59');
INSERT INTO `log_sendmail` VALUES (290, 'warga lapor', 50, 'elsharionnn@gmail.com', 'Failed to authenticate on SMTP server with username \"riskimaulanarahman@gmail.com\" using 3 possible ', '2021-05-23 18:03:00', '2021-05-23 18:03:00');
INSERT INTO `log_sendmail` VALUES (291, 'warga lapor', 50, 'elsharionnn@gmail.com', 'Failed to authenticate on SMTP server with username \"riskimaulanarahman@gmail.com\" using 3 possible ', '2021-05-23 18:05:14', '2021-05-23 18:05:14');
INSERT INTO `log_sendmail` VALUES (292, 'warga lapor', 50, 'elsharionnn@gmail.com', 'Failed to authenticate on SMTP server with username \"riskimaulanarahman@gmail.com\" using 3 possible ', '2021-05-23 18:11:00', '2021-05-23 18:11:00');
INSERT INTO `log_sendmail` VALUES (293, 'warga lapor', 50, 'elsharionnn@gmail.com', 'Failed to authenticate on SMTP server with username \"riskimaulanarahman@gmail.com\" using 3 possible ', '2021-05-23 18:12:27', '2021-05-23 18:12:27');
INSERT INTO `log_sendmail` VALUES (294, 'warga lapor', 50, 'elsharionnn@gmail.com', 'Failed to authenticate on SMTP server with username \"riskimaulanarahman@gmail.com\" using 3 possible ', '2021-05-23 20:33:27', '2021-05-23 20:33:27');
INSERT INTO `log_sendmail` VALUES (295, 'respon rt', 51, 'ikistudios.official@gmail.com', 'Failed to authenticate on SMTP server with username \"riskimaulanarahman@gmail.com\" using 3 possible ', '2021-05-23 21:50:08', '2021-05-23 21:50:08');
INSERT INTO `log_sendmail` VALUES (296, 'respon rt', 51, 'ikistudios.official@gmail.com', 'Failed to authenticate on SMTP server with username \"riskimaulanarahman@gmail.com\" using 3 possible ', '2021-05-23 21:50:23', '2021-05-23 21:50:23');
INSERT INTO `log_sendmail` VALUES (297, 'warga lapor', 50, 'elsharionnn@gmail.com', 'Failed to authenticate on SMTP server with username \"riskimaulanarahman@gmail.com\" using 3 possible ', '2021-05-26 23:47:32', '2021-05-26 23:47:32');
INSERT INTO `log_sendmail` VALUES (298, 'respon rt', 51, 'ikistudios.official@gmail.com', 'Failed to authenticate on SMTP server with username \"riskimaulanarahman@gmail.com\" using 3 possible ', '2021-05-27 00:11:23', '2021-05-27 00:11:23');
INSERT INTO `log_sendmail` VALUES (299, 'warga lapor', 50, 'elsharionnn@gmail.com', 'Failed to authenticate on SMTP server with username \"riskimaulanarahman@gmail.com\" using 3 possible ', '2021-05-27 00:15:59', '2021-05-27 00:15:59');
INSERT INTO `log_sendmail` VALUES (300, 'respon rt', 51, 'ikistudios.official@gmail.com', 'Failed to authenticate on SMTP server with username \"riskimaulanarahman@gmail.com\" using 3 possible ', '2021-05-27 00:16:30', '2021-05-27 00:16:30');
COMMIT;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of migrations
-- ----------------------------
BEGIN;
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
COMMIT;

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`(191)) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of password_resets
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for tbl_kecamatan
-- ----------------------------
DROP TABLE IF EXISTS `tbl_kecamatan`;
CREATE TABLE `tbl_kecamatan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_kecamatan` varchar(50) NOT NULL,
  `nama_kecamatan` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_kecamatan
-- ----------------------------
BEGIN;
INSERT INTO `tbl_kecamatan` VALUES (9, '647106', 'Balikpapan Kota', '2021-02-19 17:34:08', '2021-02-20 10:21:52');
INSERT INTO `tbl_kecamatan` VALUES (10, '647104', 'Balikpapan Tengah', '2021-02-19 17:34:28', '2021-02-20 10:21:27');
INSERT INTO `tbl_kecamatan` VALUES (11, '647101', 'Balikpapan Timur', '2021-02-19 17:34:42', '2021-02-20 10:20:36');
INSERT INTO `tbl_kecamatan` VALUES (12, '647102', 'Balikpapan Barat', '2021-02-19 17:34:57', '2021-02-20 10:20:49');
INSERT INTO `tbl_kecamatan` VALUES (13, '647105', 'Balikpapan Selatan', '2021-02-19 17:35:05', '2021-02-20 10:21:43');
INSERT INTO `tbl_kecamatan` VALUES (14, '647103', 'Balikpapan Utara', '2021-02-19 17:36:09', '2021-02-20 10:21:11');
COMMIT;

-- ----------------------------
-- Table structure for tbl_kelurahan
-- ----------------------------
DROP TABLE IF EXISTS `tbl_kelurahan`;
CREATE TABLE `tbl_kelurahan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_kecamatan` varchar(50) NOT NULL,
  `kode_kelurahan` varchar(50) NOT NULL,
  `nama_kelurahan` varchar(150) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of tbl_kelurahan
-- ----------------------------
BEGIN;
INSERT INTO `tbl_kelurahan` VALUES (1, '647104', '6471041006', 'Sumber Rejo', '2021-02-20 15:41:47', '2021-02-20 15:41:47');
COMMIT;

-- ----------------------------
-- Table structure for tbl_laporan
-- ----------------------------
DROP TABLE IF EXISTS `tbl_laporan`;
CREATE TABLE `tbl_laporan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_users` int(11) NOT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `laporan` varchar(255) NOT NULL,
  `status` varchar(150) NOT NULL,
  `aksi` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of tbl_laporan
-- ----------------------------
BEGIN;
INSERT INTO `tbl_laporan` VALUES (18, 50, 'warga lapor_1621764742_test.png', 'okeoke', 'dibaca', 'proses', '2021-05-23 18:12:22', '2021-05-26 23:24:57');
INSERT INTO `tbl_laporan` VALUES (19, 50, 'warga lapor_1621773201_Screen Shot 2021-05-23 at 19.44.18.png', 'mantap', 'dibaca', 'menunggu', '2021-05-23 20:33:21', '2021-05-25 20:56:12');
INSERT INTO `tbl_laporan` VALUES (20, 50, 'warga lapor_1622044049_Screen Shot 2021-05-24 at 23.06.50.png', 'test', 'dibaca', 'menunggu', '2021-05-27 23:47:29', '2021-05-27 00:11:20');
INSERT INTO `tbl_laporan` VALUES (21, 50, 'warga lapor_1622045756_Screen Shot 2021-05-26 at 13.43.12.png', 'becek', 'dibaca', 'menunggu', '2021-05-27 00:15:56', '2021-05-27 00:16:27');
COMMIT;

-- ----------------------------
-- Table structure for tbl_proses
-- ----------------------------
DROP TABLE IF EXISTS `tbl_proses`;
CREATE TABLE `tbl_proses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_laporan` int(11) NOT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_proses
-- ----------------------------
BEGIN;
INSERT INTO `tbl_proses` VALUES (1, 18, 'tahap 1', '2021-05-25 21:20:58', '2021-05-25 21:20:58');
INSERT INTO `tbl_proses` VALUES (2, 18, 'tahap 2', '2021-05-25 21:21:26', '2021-05-25 21:21:26');
INSERT INTO `tbl_proses` VALUES (3, 18, 'proses 1', '2021-05-26 23:24:57', '2021-05-26 23:24:57');
INSERT INTO `tbl_proses` VALUES (4, 19, 'peninjauan', '2021-05-26 23:25:42', '2021-05-26 23:25:42');
INSERT INTO `tbl_proses` VALUES (5, 19, 'peninjauan 2', '2021-05-26 23:25:54', '2021-05-26 23:25:54');
INSERT INTO `tbl_proses` VALUES (6, 20, 'peninjauan', '2021-05-27 00:16:44', '2021-05-27 00:16:44');
INSERT INTO `tbl_proses` VALUES (7, 21, 'di tinjau', '2021-05-27 00:16:58', '2021-05-27 00:16:58');
COMMIT;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
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
  `isActive` int(11) DEFAULT '1',
  `isRT` int(11) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_users`) USING BTREE,
  UNIQUE KEY `email` (`email`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users` VALUES (1, 'admin', 'admin', 'admin@gmail.com', '', '', '', 0, 'admin', '$2y$10$S0GdzoB9hPZIE2P0lweZ8epEpiOBzw6ETuqur8Mz1ba.e4w2YXQOm', 'Plx85SHLi5YaUodRmlwEb0JkawSFB39cO9HMQmkOkmvuhZESwepLmk3ewviM', 'admin123', 1, 0, NULL, NULL);
INSERT INTO `users` VALUES (50, 'warga2', 'warga2', 'ikistudios.official@gmail.com', '08123', '647104', '6471041006', 1, 'warga', '$2y$10$YNHZDYgJR7sjUR6APXUzqews9qBBzvPCFkewSzBJJ.JIGo7Ud78f2', 'YdA5iVjSYH0oWWeOFXCDQcy5wd24J7yqTwJtSN3c2u8llJuqmpCPxsm3reHQ', 'warga2', 1, 0, '2021-02-20 22:26:08', '2021-02-20 22:26:08');
INSERT INTO `users` VALUES (51, 'sumberrejo_rt1', 'sumberrejo_rt1', 'elsharionnn@gmail.com', '08123', '647104', '6471041006', 1, 'rt', '$2y$10$dXtKlIeUKilCAFJiODSrEOKoM8yrjEvEOEpu9/naHPmlrvwJwkFZm', 'IuMguP9pJqVyFr0qYrpFLbxNiqiAhA47KPFzoS35qyLPTOi4Ioo50ydJQ3d6', 'sumberrejo_rt1', 1, 1, '2021-02-20 22:45:30', '2021-02-21 17:11:46');
INSERT INTO `users` VALUES (52, 'sumberrejo_rt2', 'sumberrejo_rt2', 'rishnaskr@gmail.com', '08321', '647104', '6471041006', 2, 'rt', '$2y$10$cEPxp09eDYbbB94j3qgN0uqusWtfjGlM34Ci9DEFN0LOLC8ulUpCC', '42sOMcpB7KhajncFK2T8mz25gZYMmvXdI5j4V40YmWFS2L0EnJakA89FpGoK', 'sumberrejo_rt2', 1, 1, '2021-02-21 14:40:49', '2021-02-21 14:59:38');
INSERT INTO `users` VALUES (53, 'warga3', 'warga3', 'elsharionnn.official@gmail.com', '084321', '647104', '6471041006', 2, 'warga', '$2y$10$hL0cy/Jaz9Lxc1qeCOR84e/GAKFen6d2mG4oTcJF/tnZKqqz59OAy', 'nYQ8jU7PK0o2RspoOAO2a7t9xJTRXgTBe6MJIrLeGmokBexY9X9Vrr2sVvhW', 'warga3', 1, 0, '2021-02-21 15:18:10', '2021-02-21 15:18:10');
INSERT INTO `users` VALUES (54, 'riski', 'riski', 'riski@gmail.com', '08123', '647104', '6471041006', 3, 'warga', '$2y$10$sO6L2VM9hGUrLHp05eeYpejk7a3fyb4LoRdvG9Wv/oYOOR4s1W3SS', 'h25whhQ4tMq51Ji3fl7zw4SIVf4rpRxAvI240LaFOKv0dHTqJSK0tuz2NuiL', 'riski', 1, 0, '2021-05-10 14:07:18', '2021-05-10 14:07:18');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
