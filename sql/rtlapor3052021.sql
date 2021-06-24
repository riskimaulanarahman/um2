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

 Date: 31/05/2021 07:48:14
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
) ENGINE=InnoDB AUTO_INCREMENT=307 DEFAULT CHARSET=latin1;

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
INSERT INTO `log_sendmail` VALUES (301, 'warga lapor', 50, 'elsharionnn@gmail.com', 'Connection could not be established with host smtp.gmail.com :stream_socket_client(): unable to conn', '2021-05-27 16:45:08', '2021-05-27 16:45:08');
INSERT INTO `log_sendmail` VALUES (302, 'warga lapor', 50, 'elsharionnn@gmail.com', 'Connection could not be established with host smtp.gmail.com :stream_socket_client(): unable to conn', '2021-05-27 16:47:28', '2021-05-27 16:47:28');
INSERT INTO `log_sendmail` VALUES (303, 'respon rt', 51, 'ikistudios.official@gmail.com', 'Connection could not be established with host smtp.gmail.com :stream_socket_client(): unable to conn', '2021-05-27 16:52:41', '2021-05-27 16:52:41');
INSERT INTO `log_sendmail` VALUES (304, 'respon rt', 51, 'ikistudios.official@gmail.com', 'Connection could not be established with host smtp.gmail.com :stream_socket_client(): unable to conn', '2021-05-28 15:35:47', '2021-05-28 15:35:47');
INSERT INTO `log_sendmail` VALUES (305, 'warga lapor', 50, 'elsharionnn@gmail.com', 'Connection could not be established with host smtp.gmail.com :stream_socket_client(): unable to conn', '2021-05-28 16:01:23', '2021-05-28 16:01:23');
INSERT INTO `log_sendmail` VALUES (306, 'respon rt', 51, 'ikistudios.official@gmail.com', 'Connection could not be established with host smtp.gmail.com :stream_socket_client(): unable to conn', '2021-05-28 16:02:17', '2021-05-28 16:02:17');
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
  `kode_kecamatan` int(11) NOT NULL,
  `nama_kecamatan` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `kode_kecamatan` (`kode_kecamatan`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_kecamatan
-- ----------------------------
BEGIN;
INSERT INTO `tbl_kecamatan` VALUES (9, 647106, 'Balikpapan Kota', '2021-02-19 17:34:08', '2021-02-20 10:21:52');
INSERT INTO `tbl_kecamatan` VALUES (10, 647104, 'Balikpapan Tengah', '2021-02-19 17:34:28', '2021-02-20 10:21:27');
INSERT INTO `tbl_kecamatan` VALUES (11, 647101, 'Balikpapan Timur', '2021-02-19 17:34:42', '2021-02-20 10:20:36');
INSERT INTO `tbl_kecamatan` VALUES (12, 647102, 'Balikpapan Barat', '2021-02-19 17:34:57', '2021-02-20 10:20:49');
INSERT INTO `tbl_kecamatan` VALUES (13, 647105, 'Balikpapan Selatan', '2021-02-19 17:35:05', '2021-02-20 10:21:43');
INSERT INTO `tbl_kecamatan` VALUES (14, 647103, 'Balikpapan Utara', '2021-02-19 17:36:09', '2021-02-20 10:21:11');
COMMIT;

-- ----------------------------
-- Table structure for tbl_kelurahan
-- ----------------------------
DROP TABLE IF EXISTS `tbl_kelurahan`;
CREATE TABLE `tbl_kelurahan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_kecamatan` int(11) NOT NULL,
  `kode_kelurahan` varchar(50) NOT NULL,
  `nama_kelurahan` varchar(150) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_kelkec` (`kode_kecamatan`),
  CONSTRAINT `fk_kelkec` FOREIGN KEY (`kode_kecamatan`) REFERENCES `tbl_kecamatan` (`kode_kecamatan`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of tbl_kelurahan
-- ----------------------------
BEGIN;
INSERT INTO `tbl_kelurahan` VALUES (1, 647104, '6471041006', 'Sumber Rejo', '2021-02-20 15:41:47', '2021-02-20 15:41:47');
COMMIT;

-- ----------------------------
-- Table structure for tbl_laporan
-- ----------------------------
DROP TABLE IF EXISTS `tbl_laporan`;
CREATE TABLE `tbl_laporan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_users` int(11) NOT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `judul` varchar(255) NOT NULL,
  `laporan` varchar(255) NOT NULL,
  `status` varchar(150) NOT NULL,
  `aksi` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of tbl_laporan
-- ----------------------------
BEGIN;
INSERT INTO `tbl_laporan` VALUES (22, 50, 'warga lapor_1622105086_5dc982f3e6411.jpg', 'pohon tumbang', 'ada pohon tumbang di dekat gang amin', 'direspon', 'selesai', '2021-05-27 16:44:46', '2021-05-28 16:10:29');
INSERT INTO `tbl_laporan` VALUES (23, 50, 'warga lapor_1622105227_rudi-salah-seorang-warga_20160907_124455.jpg', 'sampah mampet 2', 'tumpukan sampah di depan puskesmas 2', 'direspon', 'proses', '2021-05-27 16:47:07', '2021-05-28 16:03:59');
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
  PRIMARY KEY (`id`),
  KEY `fk_proses_laporan` (`id_laporan`),
  CONSTRAINT `fk_proses_laporan` FOREIGN KEY (`id_laporan`) REFERENCES `tbl_laporan` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_proses
-- ----------------------------
BEGIN;
INSERT INTO `tbl_proses` VALUES (8, 22, 'tahap 1', '2021-05-27 16:56:27', '2021-05-27 16:56:27');
INSERT INTO `tbl_proses` VALUES (9, 22, 'tahap 2', '2021-05-27 16:56:37', '2021-05-27 16:56:37');
INSERT INTO `tbl_proses` VALUES (10, 22, 'tahap 3', '2021-05-27 16:57:36', '2021-05-27 16:57:36');
INSERT INTO `tbl_proses` VALUES (11, 23, 'tahap 1', '2021-05-28 15:49:35', '2021-05-28 15:49:35');
INSERT INTO `tbl_proses` VALUES (12, 23, 'gotong royong', '2021-05-28 16:03:59', '2021-05-28 16:03:59');
INSERT INTO `tbl_proses` VALUES (14, 22, 'pengangkatan puing pohon', '2021-05-28 16:10:29', '2021-05-28 16:10:29');
COMMIT;

-- ----------------------------
-- Table structure for tbl_rt
-- ----------------------------
DROP TABLE IF EXISTS `tbl_rt`;
CREATE TABLE `tbl_rt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nomor_rt` int(11) NOT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `kode_kecamatan` (`nomor_rt`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_rt
-- ----------------------------
BEGIN;
INSERT INTO `tbl_rt` VALUES (1, 1, NULL, '2021-05-31 00:18:48', '2021-05-31 00:18:48');
INSERT INTO `tbl_rt` VALUES (2, 2, NULL, '2021-05-31 00:18:48', '2021-05-31 00:18:48');
INSERT INTO `tbl_rt` VALUES (3, 3, NULL, '2021-05-31 00:18:48', '2021-05-31 00:18:48');
INSERT INTO `tbl_rt` VALUES (4, 4, NULL, '2021-05-31 00:18:49', '2021-05-31 00:18:49');
INSERT INTO `tbl_rt` VALUES (5, 5, NULL, '2021-05-31 00:18:49', '2021-05-31 00:18:49');
INSERT INTO `tbl_rt` VALUES (6, 6, NULL, '2021-05-31 00:18:50', '2021-05-31 00:18:50');
INSERT INTO `tbl_rt` VALUES (7, 7, NULL, '2021-05-31 00:18:50', '2021-05-31 00:18:50');
INSERT INTO `tbl_rt` VALUES (8, 8, NULL, '2021-05-31 00:18:50', '2021-05-31 00:18:50');
INSERT INTO `tbl_rt` VALUES (9, 9, NULL, '2021-05-31 00:18:51', '2021-05-31 00:18:51');
INSERT INTO `tbl_rt` VALUES (10, 10, NULL, '2021-05-31 00:18:53', '2021-05-31 00:18:53');
INSERT INTO `tbl_rt` VALUES (11, 11, NULL, '2021-05-31 00:18:54', '2021-05-31 00:18:54');
INSERT INTO `tbl_rt` VALUES (12, 12, NULL, '2021-05-31 00:18:54', '2021-05-31 00:18:56');
INSERT INTO `tbl_rt` VALUES (13, 13, NULL, '2021-05-31 00:18:58', '2021-05-31 00:18:58');
INSERT INTO `tbl_rt` VALUES (14, 14, NULL, '2021-05-31 00:18:59', '2021-05-31 00:18:59');
INSERT INTO `tbl_rt` VALUES (15, 15, NULL, '2021-05-31 00:19:01', '2021-05-31 00:19:01');
INSERT INTO `tbl_rt` VALUES (16, 16, NULL, '2021-05-31 00:19:01', '2021-05-31 00:19:01');
INSERT INTO `tbl_rt` VALUES (17, 17, NULL, '2021-05-31 00:19:02', '2021-05-31 00:19:04');
INSERT INTO `tbl_rt` VALUES (18, 18, NULL, '2021-05-31 00:19:05', '2021-05-31 00:19:05');
INSERT INTO `tbl_rt` VALUES (19, 19, NULL, '2021-05-31 00:19:06', '2021-05-31 00:19:06');
INSERT INTO `tbl_rt` VALUES (20, 20, NULL, '2021-05-31 00:19:08', '2021-05-31 00:19:08');
INSERT INTO `tbl_rt` VALUES (21, 21, NULL, '2021-05-31 00:19:09', '2021-05-31 00:19:09');
INSERT INTO `tbl_rt` VALUES (22, 22, NULL, '2021-05-31 00:19:10', '2021-05-31 00:19:10');
INSERT INTO `tbl_rt` VALUES (23, 23, NULL, '2021-05-31 00:19:11', '2021-05-31 00:19:11');
INSERT INTO `tbl_rt` VALUES (24, 24, NULL, '2021-05-31 00:19:12', '2021-05-31 00:19:12');
INSERT INTO `tbl_rt` VALUES (25, 25, NULL, '2021-05-31 00:19:13', '2021-05-31 00:19:13');
INSERT INTO `tbl_rt` VALUES (26, 26, NULL, '2021-05-31 00:19:14', '2021-05-31 00:19:14');
INSERT INTO `tbl_rt` VALUES (27, 27, NULL, '2021-05-31 00:19:16', '2021-05-31 00:19:16');
INSERT INTO `tbl_rt` VALUES (28, 28, NULL, '2021-05-31 00:19:17', '2021-05-31 00:19:17');
INSERT INTO `tbl_rt` VALUES (29, 29, NULL, '2021-05-31 00:19:18', '2021-05-31 00:19:18');
INSERT INTO `tbl_rt` VALUES (30, 30, NULL, '2021-05-31 00:19:19', '2021-05-31 00:19:19');
INSERT INTO `tbl_rt` VALUES (31, 31, NULL, '2021-05-31 00:19:20', '2021-05-31 00:19:20');
INSERT INTO `tbl_rt` VALUES (32, 32, NULL, '2021-05-31 00:19:21', '2021-05-31 00:19:21');
INSERT INTO `tbl_rt` VALUES (33, 33, NULL, '2021-05-31 00:19:22', '2021-05-31 00:19:22');
INSERT INTO `tbl_rt` VALUES (34, 34, NULL, '2021-05-31 00:19:23', '2021-05-31 00:19:23');
INSERT INTO `tbl_rt` VALUES (35, 35, NULL, '2021-05-31 00:19:24', '2021-05-31 00:19:24');
INSERT INTO `tbl_rt` VALUES (36, 36, NULL, '2021-05-31 00:19:25', '2021-05-31 00:19:25');
INSERT INTO `tbl_rt` VALUES (37, 37, NULL, '2021-05-31 00:19:26', '2021-05-31 00:19:26');
INSERT INTO `tbl_rt` VALUES (38, 38, NULL, '2021-05-31 00:19:28', '2021-05-31 00:19:28');
INSERT INTO `tbl_rt` VALUES (39, 39, NULL, '2021-05-31 00:19:29', '2021-05-31 00:19:29');
INSERT INTO `tbl_rt` VALUES (40, 40, NULL, '2021-05-31 00:19:30', '2021-05-31 00:19:30');
INSERT INTO `tbl_rt` VALUES (41, 41, NULL, '2021-05-31 00:19:32', '2021-05-31 00:19:32');
INSERT INTO `tbl_rt` VALUES (42, 42, NULL, '2021-05-31 00:19:33', '2021-05-31 00:19:33');
INSERT INTO `tbl_rt` VALUES (43, 43, NULL, '2021-05-31 00:19:34', '2021-05-31 00:19:34');
INSERT INTO `tbl_rt` VALUES (44, 44, NULL, '2021-05-31 00:19:35', '2021-05-31 00:19:35');
INSERT INTO `tbl_rt` VALUES (45, 45, NULL, '2021-05-31 00:19:35', '2021-05-31 00:19:35');
INSERT INTO `tbl_rt` VALUES (46, 46, NULL, '2021-05-31 00:19:36', '2021-05-31 00:19:36');
INSERT INTO `tbl_rt` VALUES (47, 47, NULL, '2021-05-31 00:19:38', '2021-05-31 00:19:38');
INSERT INTO `tbl_rt` VALUES (48, 48, NULL, '2021-05-31 00:19:39', '2021-05-31 00:19:39');
INSERT INTO `tbl_rt` VALUES (49, 49, NULL, '2021-05-31 00:19:39', '2021-05-31 00:19:39');
INSERT INTO `tbl_rt` VALUES (50, 50, NULL, '2021-05-31 00:19:41', '2021-05-31 00:19:41');
INSERT INTO `tbl_rt` VALUES (51, 51, NULL, '2021-05-31 00:19:42', '2021-05-31 00:19:42');
INSERT INTO `tbl_rt` VALUES (52, 52, NULL, '2021-05-31 00:20:03', '2021-05-31 00:20:03');
INSERT INTO `tbl_rt` VALUES (53, 53, NULL, '2021-05-31 00:20:04', '2021-05-31 00:20:04');
INSERT INTO `tbl_rt` VALUES (54, 54, NULL, '2021-05-31 00:20:05', '2021-05-31 00:20:05');
INSERT INTO `tbl_rt` VALUES (55, 55, NULL, '2021-05-31 00:20:05', '2021-05-31 00:20:05');
INSERT INTO `tbl_rt` VALUES (56, 56, NULL, '2021-05-31 00:20:06', '2021-05-31 00:20:06');
INSERT INTO `tbl_rt` VALUES (57, 57, NULL, '2021-05-31 00:20:07', '2021-05-31 00:20:07');
INSERT INTO `tbl_rt` VALUES (58, 58, NULL, '2021-05-31 00:20:07', '2021-05-31 00:20:07');
INSERT INTO `tbl_rt` VALUES (59, 59, NULL, '2021-05-31 00:20:09', '2021-05-31 00:20:09');
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
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nomor_rumah` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notelp` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor_rt` int(11) NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isRT` int(11) DEFAULT '0',
  `pass_txt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isActive` int(11) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_users`) USING BTREE,
  UNIQUE KEY `email` (`email`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users` VALUES (1, 'admin', 'admin', 'admin@gmail.com', NULL, NULL, '', 0, 'admin', 0, 'admin123', '$2y$10$S0GdzoB9hPZIE2P0lweZ8epEpiOBzw6ETuqur8Mz1ba.e4w2YXQOm', 'EDzcsfi78Q8fpcE4sNCME4CAuQpQmV53NXUG20HW5AmQIVmTIvUdwyDrwUAn', 1, NULL, NULL);
INSERT INTO `users` VALUES (50, 'wargart1_1', 'wargart1_1', 'ikistudios.official@gmail.com', 'jln a', '43', '08123', 1, 'warga', 0, 'wargart1_1', '$2y$10$JC.ds.umNFIuDsG4Csqo2umTcG9z8bxCCSJIyMMhmAcDAVhdom36S', '7FM25wK1mk1r97TK1zEH1Ri5X13hUJkrUi06uZ1WhwBIolX9XYHZjMVAHAct', 1, '2021-02-20 22:26:08', '2021-05-31 00:50:05');
INSERT INTO `users` VALUES (51, 'HJ. Ngasmi', 'sumberrejo_rt1', 'elsharionnn@gmail.com', NULL, NULL, '08123', 1, 'rt', 1, 'sumberrejo_rt1', '$2y$10$dXtKlIeUKilCAFJiODSrEOKoM8yrjEvEOEpu9/naHPmlrvwJwkFZm', 'e1UjgvHoTXUFboetSrX41c7fN4F2CTxzWx6U71hTgoqyQljLSKD7kOKO5gJ9', 1, '2021-02-20 22:45:30', '2021-05-31 00:10:38');
INSERT INTO `users` VALUES (52, 'Sumintono', 'sumberrejo_rt2', 'rishnaskr@gmail.com', NULL, NULL, '08321', 2, 'rt', 1, 'sumberrejo_rt2', '$2y$10$cEPxp09eDYbbB94j3qgN0uqusWtfjGlM34Ci9DEFN0LOLC8ulUpCC', '3EPzqFb71SNsOg8beeaTIOPVvieg9uV8hoxvC5kfUK7qNr7m6IdCTzxKZIHU', 1, '2021-02-21 14:40:49', '2021-05-31 00:10:54');
INSERT INTO `users` VALUES (53, 'wargart2_1', 'wargart2_1', 'elsharionnn.official@gmail.com', NULL, NULL, '084321', 2, 'warga', 0, 'wargart2_1', '$2y$10$1FtvsYKE7.6puTZINvu4HOB3975vxs6SgZouMNbhQ.6tIMdURh0qm', 'nYQ8jU7PK0o2RspoOAO2a7t9xJTRXgTBe6MJIrLeGmokBexY9X9Vrr2sVvhW', 1, '2021-02-21 15:18:10', '2021-05-31 00:49:51');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
