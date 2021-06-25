-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jun 25, 2021 at 10:15 PM
-- Server version: 5.7.32
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `prestasi`
--

-- --------------------------------------------------------

--
-- Table structure for table `log_sendmail`
--

CREATE TABLE `log_sendmail` (
  `id` int(11) NOT NULL,
  `module` varchar(100) DEFAULT NULL,
  `id_users` int(11) DEFAULT NULL,
  `mailto` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `log_sendmail`
--

INSERT INTO `log_sendmail` (`id`, `module`, `id_users`, `mailto`, `status`, `created_at`, `updated_at`) VALUES
(280, 'warga lapor', 50, 'elsharionnn@gmail.com', 'Failed to authenticate on SMTP server with username \"riskimaulanarahman@gmail.com\" using 3 possible ', '2021-02-21 12:35:17', '2021-02-21 12:35:17'),
(281, 'respon rt', 51, 'elsharionnn@gmail.com', 'Failed to authenticate on SMTP server with username \"riskimaulanarahman@gmail.com\" using 3 possible ', '2021-02-21 12:39:16', '2021-02-21 12:43:09'),
(282, 'warga lapor', 50, 'elsharionnn@gmail.com', 'success', '2021-02-21 12:41:46', '2021-02-21 12:41:46'),
(283, 'respon rt', 51, 'ikistudios.official@gmail.com', 'success', '2021-02-21 12:43:46', '2021-02-21 12:43:46'),
(284, 'respon rt', 51, 'ikistudios.official@gmail.com', 'Connection could not be established with host smtp.gmail.com :stream_socket_client(): unable to conn', '2021-05-10 06:43:41', '2021-05-10 06:43:41'),
(285, 'respon rt', 51, 'ikistudios.official@gmail.com', 'Connection could not be established with host smtp.gmail.com :stream_socket_client(): unable to conn', '2021-05-10 07:03:35', '2021-05-10 07:03:35'),
(286, 'warga lapor', 50, 'elsharionnn@gmail.com', 'Failed to authenticate on SMTP server with username \"riskimaulanarahman@gmail.com\" using 3 possible ', '2021-05-22 03:32:44', '2021-05-22 03:32:44'),
(287, 'respon rt', 51, 'ikistudios.official@gmail.com', 'Failed to authenticate on SMTP server with username \"riskimaulanarahman@gmail.com\" using 3 possible ', '2021-05-22 03:46:03', '2021-05-22 03:46:03'),
(288, 'warga lapor', 50, 'elsharionnn@gmail.com', 'Failed to authenticate on SMTP server with username \"riskimaulanarahman@gmail.com\" using 3 possible ', '2021-05-23 09:57:44', '2021-05-23 09:57:44'),
(289, 'warga lapor', 50, 'elsharionnn@gmail.com', 'Failed to authenticate on SMTP server with username \"riskimaulanarahman@gmail.com\" using 3 possible ', '2021-05-23 10:00:59', '2021-05-23 10:00:59'),
(290, 'warga lapor', 50, 'elsharionnn@gmail.com', 'Failed to authenticate on SMTP server with username \"riskimaulanarahman@gmail.com\" using 3 possible ', '2021-05-23 10:03:00', '2021-05-23 10:03:00'),
(291, 'warga lapor', 50, 'elsharionnn@gmail.com', 'Failed to authenticate on SMTP server with username \"riskimaulanarahman@gmail.com\" using 3 possible ', '2021-05-23 10:05:14', '2021-05-23 10:05:14'),
(292, 'warga lapor', 50, 'elsharionnn@gmail.com', 'Failed to authenticate on SMTP server with username \"riskimaulanarahman@gmail.com\" using 3 possible ', '2021-05-23 10:11:00', '2021-05-23 10:11:00'),
(293, 'warga lapor', 50, 'elsharionnn@gmail.com', 'Failed to authenticate on SMTP server with username \"riskimaulanarahman@gmail.com\" using 3 possible ', '2021-05-23 10:12:27', '2021-05-23 10:12:27'),
(294, 'warga lapor', 50, 'elsharionnn@gmail.com', 'Failed to authenticate on SMTP server with username \"riskimaulanarahman@gmail.com\" using 3 possible ', '2021-05-23 12:33:27', '2021-05-23 12:33:27'),
(295, 'respon rt', 51, 'ikistudios.official@gmail.com', 'Failed to authenticate on SMTP server with username \"riskimaulanarahman@gmail.com\" using 3 possible ', '2021-05-23 13:50:08', '2021-05-23 13:50:08'),
(296, 'respon rt', 51, 'ikistudios.official@gmail.com', 'Failed to authenticate on SMTP server with username \"riskimaulanarahman@gmail.com\" using 3 possible ', '2021-05-23 13:50:23', '2021-05-23 13:50:23'),
(297, 'warga lapor', 50, 'elsharionnn@gmail.com', 'Failed to authenticate on SMTP server with username \"riskimaulanarahman@gmail.com\" using 3 possible ', '2021-05-26 15:47:32', '2021-05-26 15:47:32'),
(298, 'respon rt', 51, 'ikistudios.official@gmail.com', 'Failed to authenticate on SMTP server with username \"riskimaulanarahman@gmail.com\" using 3 possible ', '2021-05-26 16:11:23', '2021-05-26 16:11:23'),
(299, 'warga lapor', 50, 'elsharionnn@gmail.com', 'Failed to authenticate on SMTP server with username \"riskimaulanarahman@gmail.com\" using 3 possible ', '2021-05-26 16:15:59', '2021-05-26 16:15:59'),
(300, 'respon rt', 51, 'ikistudios.official@gmail.com', 'Failed to authenticate on SMTP server with username \"riskimaulanarahman@gmail.com\" using 3 possible ', '2021-05-26 16:16:30', '2021-05-26 16:16:30'),
(301, 'warga lapor', 50, 'elsharionnn@gmail.com', 'Connection could not be established with host smtp.gmail.com :stream_socket_client(): unable to conn', '2021-05-27 08:45:08', '2021-05-27 08:45:08'),
(302, 'warga lapor', 50, 'elsharionnn@gmail.com', 'Connection could not be established with host smtp.gmail.com :stream_socket_client(): unable to conn', '2021-05-27 08:47:28', '2021-05-27 08:47:28'),
(303, 'respon rt', 51, 'ikistudios.official@gmail.com', 'Connection could not be established with host smtp.gmail.com :stream_socket_client(): unable to conn', '2021-05-27 08:52:41', '2021-05-27 08:52:41'),
(304, 'respon rt', 51, 'ikistudios.official@gmail.com', 'Connection could not be established with host smtp.gmail.com :stream_socket_client(): unable to conn', '2021-05-28 07:35:47', '2021-05-28 07:35:47'),
(305, 'warga lapor', 50, 'elsharionnn@gmail.com', 'Connection could not be established with host smtp.gmail.com :stream_socket_client(): unable to conn', '2021-05-28 08:01:23', '2021-05-28 08:01:23'),
(306, 'respon rt', 51, 'ikistudios.official@gmail.com', 'Connection could not be established with host smtp.gmail.com :stream_socket_client(): unable to conn', '2021-05-28 08:02:17', '2021-05-28 08:02:17'),
(307, 'warga tambah prestasi', 50, 'elsharionnn@gmail.com', 'success', '2021-06-13 05:48:31', '2021-06-13 05:48:31'),
(308, 'warga tambah prestasi', 50, 'elsharionnn@gmail.com', 'success', '2021-06-13 05:57:59', '2021-06-13 05:57:59'),
(309, 'warga tambah prestasi', 50, 'elsharionnn@gmail.com', 'success', '2021-06-13 05:58:51', '2021-06-13 05:58:51'),
(310, 'warga tambah prestasi', 50, 'elsharionnn@gmail.com', 'success', '2021-06-13 06:04:44', '2021-06-13 06:04:44'),
(311, 'warga tambah prestasi', 50, 'elsharionnn@gmail.com', 'success', '2021-06-13 06:06:30', '2021-06-13 06:06:30'),
(312, 'warga tambah prestasi', 50, 'elsharionnn@gmail.com', 'success', '2021-06-13 06:18:37', '2021-06-13 06:18:37'),
(313, 'warga tambah prestasi', 50, 'elsharionnn@gmail.com', 'success', '2021-06-16 06:54:26', '2021-06-16 06:54:26'),
(314, 'edit password', 50, 'ikistudios.official@gmail.com', 'success', '2021-06-16 15:17:42', '2021-06-16 15:17:42'),
(315, 'edit password', 51, 'elsharionnn@gmail.com', 'success', '2021-06-16 15:20:44', '2021-06-16 15:20:44'),
(316, 'edit password', 51, 'elsharionnn@gmail.com', 'success', '2021-06-16 15:21:15', '2021-06-16 15:21:15'),
(317, 'edit password', 50, 'ikistudios.official@gmail.com', 'success', '2021-06-16 15:21:55', '2021-06-16 15:21:55'),
(318, 'respon rt', 51, 'ikistudios.official@gmail.com', 'success', '2021-06-16 15:23:34', '2021-06-16 15:23:34'),
(319, 'respon rt', 51, 'ikistudios.official@gmail.com', 'success', '2021-06-19 02:34:51', '2021-06-19 02:34:51'),
(320, 'respon rt', 51, 'ikistudios.official@gmail.com', 'success', '2021-06-19 02:35:15', '2021-06-19 02:35:15'),
(321, 'respon rt', 51, 'ikistudios.official@gmail.com', 'success', '2021-06-19 02:39:17', '2021-06-19 02:39:17'),
(322, 'respon rt', 51, 'ikistudios.official@gmail.com', 'success', '2021-06-19 02:39:25', '2021-06-19 02:39:25'),
(323, 'reset password', 51, 'ikistudios.official@gmail.com', 'success', '2021-06-19 02:40:47', '2021-06-19 02:40:47'),
(324, 'edit password', 50, 'ikistudios.official@gmail.com', 'success', '2021-06-20 05:39:03', '2021-06-20 05:39:03');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`id_kategori`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'Prestasi Belajar', '2021-06-09 15:38:46', '2021-06-09 15:38:46'),
(2, 'Prestasi kerja', '2021-06-09 15:39:22', '2021-06-09 15:39:22'),
(3, 'Prestasi Seni', '2021-06-09 15:39:36', '2021-06-09 15:39:36'),
(4, 'Prestasi Olahraga', '2021-06-09 15:39:51', '2021-06-09 15:39:51'),
(5, 'Prestasi Lingkungan', '2021-06-09 15:39:57', '2021-06-09 15:39:57');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kecamatan`
--

CREATE TABLE `tbl_kecamatan` (
  `id` int(11) NOT NULL,
  `kode_kecamatan` int(11) NOT NULL,
  `nama_kecamatan` varchar(100) CHARACTER SET latin1 NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_kecamatan`
--

INSERT INTO `tbl_kecamatan` (`id`, `kode_kecamatan`, `nama_kecamatan`, `created_at`, `updated_at`) VALUES
(9, 647106, 'Balikpapan Kota', '2021-02-19 09:34:08', '2021-02-20 02:21:52'),
(10, 647104, 'Balikpapan Tengah', '2021-02-19 09:34:28', '2021-02-20 02:21:27'),
(11, 647101, 'Balikpapan Timur', '2021-02-19 09:34:42', '2021-02-20 02:20:36'),
(12, 647102, 'Balikpapan Barat', '2021-02-19 09:34:57', '2021-02-20 02:20:49'),
(13, 647105, 'Balikpapan Selatan', '2021-02-19 09:35:05', '2021-02-20 02:21:43'),
(14, 647103, 'Balikpapan Utara', '2021-02-19 09:36:09', '2021-02-20 02:21:11');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kelurahan`
--

CREATE TABLE `tbl_kelurahan` (
  `id` int(11) NOT NULL,
  `kode_kecamatan` int(11) NOT NULL,
  `kode_kelurahan` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `nama_kelurahan` varchar(150) CHARACTER SET utf8mb4 NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_kelurahan`
--

INSERT INTO `tbl_kelurahan` (`id`, `kode_kecamatan`, `kode_kelurahan`, `nama_kelurahan`, `created_at`, `updated_at`) VALUES
(1, 647104, '6471041006', 'Sumber Rejo', '2021-06-08 14:17:22', '2021-06-08 14:17:22');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_prestasi`
--

CREATE TABLE `tbl_prestasi` (
  `id` int(11) NOT NULL,
  `id_kategori` int(11) DEFAULT NULL,
  `id_users` int(11) DEFAULT NULL,
  `file` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `keterangan` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `status` varchar(50) CHARACTER SET utf8 NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_prestasi`
--

INSERT INTO `tbl_prestasi` (`id`, `id_kategori`, `id_users`, `file`, `keterangan`, `status`, `created_at`, `updated_at`) VALUES
(5, 1, 50, 'warga tambah prestasi_1623564390_loli.jpeg', 'PHP 7', 'diterima', '2021-06-13 06:06:30', '2021-06-19 02:39:25'),
(6, 2, 50, '1623853187_20210615 - Pinday Trader Logo - 1x1 3D - Logo Text Landscape.png', 'laravel 33', 'ditolak', '2021-06-13 06:18:37', '2021-06-19 02:39:17'),
(9, 1, 50, 'rt tambah prestasi_1624067028_test.jpeg', 'jQuery', 'diterima', '2021-06-19 01:43:48', '2021-06-19 01:43:48'),
(10, 2, 50, 'rt tambah prestasi_1624067050_test.jpeg', 'CISCO', 'diterima', '2021-06-19 01:44:10', '2021-06-19 02:04:18');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rt`
--

CREATE TABLE `tbl_rt` (
  `id` int(11) NOT NULL,
  `kode_kelurahan` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `nomor_rt` int(11) NOT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_rt`
--

INSERT INTO `tbl_rt` (`id`, `kode_kelurahan`, `nomor_rt`, `alamat`, `created_at`, `updated_at`) VALUES
(1, '6471041006', 1, NULL, '2021-05-30 16:18:48', '2021-06-08 14:23:27'),
(2, '6471041006', 2, NULL, '2021-05-30 16:18:48', '2021-06-08 14:08:01'),
(3, '6471041006', 3, NULL, '2021-05-30 16:18:48', '2021-06-08 14:08:02'),
(4, '6471041006', 4, NULL, '2021-05-30 16:18:49', '2021-06-08 14:08:03'),
(5, '6471041006', 5, NULL, '2021-05-30 16:18:49', '2021-06-08 14:08:04'),
(6, '6471041006', 6, NULL, '2021-05-30 16:18:50', '2021-06-08 14:08:06'),
(7, '6471041006', 7, NULL, '2021-05-30 16:18:50', '2021-06-08 14:08:08'),
(8, '6471041006', 8, NULL, '2021-05-30 16:18:50', '2021-06-08 14:08:09'),
(9, '6471041006', 9, NULL, '2021-05-30 16:18:51', '2021-06-08 14:08:11'),
(10, '6471041006', 10, NULL, '2021-05-30 16:18:53', '2021-06-08 14:08:12'),
(11, '6471041006', 11, NULL, '2021-05-30 16:18:54', '2021-06-08 14:08:14'),
(12, '6471041006', 12, NULL, '2021-05-30 16:18:54', '2021-06-08 14:08:15'),
(13, '6471041006', 13, NULL, '2021-05-30 16:18:58', '2021-06-08 14:08:17'),
(14, '6471041006', 14, NULL, '2021-05-30 16:18:59', '2021-06-08 14:08:20'),
(15, '6471041006', 15, NULL, '2021-05-30 16:19:01', '2021-06-08 14:08:24'),
(16, '6471041006', 16, NULL, '2021-05-30 16:19:01', '2021-06-08 14:08:26'),
(17, '6471041006', 17, NULL, '2021-05-30 16:19:02', '2021-06-08 14:08:28'),
(18, '6471041006', 18, NULL, '2021-05-30 16:19:05', '2021-06-08 14:08:29'),
(19, '6471041006', 19, NULL, '2021-05-30 16:19:06', '2021-06-08 14:08:30'),
(20, '6471041006', 20, NULL, '2021-05-30 16:19:08', '2021-06-08 14:08:32'),
(21, '6471041006', 21, NULL, '2021-05-30 16:19:09', '2021-06-08 14:08:33'),
(22, '6471041006', 22, NULL, '2021-05-30 16:19:10', '2021-06-08 14:08:34'),
(23, '6471041006', 23, NULL, '2021-05-30 16:19:11', '2021-06-08 14:08:36'),
(24, '6471041006', 24, NULL, '2021-05-30 16:19:12', '2021-06-08 14:08:37'),
(25, '6471041006', 25, NULL, '2021-05-30 16:19:13', '2021-06-08 14:08:41'),
(26, '6471041006', 26, NULL, '2021-05-30 16:19:14', '2021-06-08 14:08:43'),
(27, '6471041006', 27, NULL, '2021-05-30 16:19:16', '2021-06-08 14:08:44'),
(28, '6471041006', 28, NULL, '2021-05-30 16:19:17', '2021-06-08 14:08:45'),
(29, '6471041006', 29, NULL, '2021-05-30 16:19:18', '2021-06-08 14:08:46'),
(30, '6471041006', 30, NULL, '2021-05-30 16:19:19', '2021-06-08 14:08:48'),
(31, '6471041006', 31, NULL, '2021-05-30 16:19:20', '2021-06-08 14:08:49'),
(32, '6471041006', 32, NULL, '2021-05-30 16:19:21', '2021-06-08 14:08:50'),
(33, '6471041006', 33, NULL, '2021-05-30 16:19:22', '2021-06-08 14:08:51'),
(34, '6471041006', 34, NULL, '2021-05-30 16:19:23', '2021-06-08 14:08:52'),
(35, '6471041006', 35, NULL, '2021-05-30 16:19:24', '2021-06-08 14:08:53'),
(36, '6471041006', 36, NULL, '2021-05-30 16:19:25', '2021-06-08 14:08:54'),
(37, '6471041006', 37, NULL, '2021-05-30 16:19:26', '2021-06-08 14:08:56'),
(38, '6471041006', 38, NULL, '2021-05-30 16:19:28', '2021-06-08 14:08:57'),
(39, '6471041006', 39, NULL, '2021-05-30 16:19:29', '2021-06-08 14:08:58'),
(40, '6471041006', 40, NULL, '2021-05-30 16:19:30', '2021-06-08 14:08:59'),
(41, '6471041006', 41, NULL, '2021-05-30 16:19:32', '2021-06-08 14:09:00'),
(42, '6471041006', 42, NULL, '2021-05-30 16:19:33', '2021-06-08 14:09:01'),
(43, '6471041006', 43, NULL, '2021-05-30 16:19:34', '2021-06-08 14:09:03'),
(44, '6471041006', 44, NULL, '2021-05-30 16:19:35', '2021-06-08 14:09:04'),
(45, '6471041006', 45, NULL, '2021-05-30 16:19:35', '2021-06-08 14:09:06'),
(46, '6471041006', 46, NULL, '2021-05-30 16:19:36', '2021-06-08 14:09:05'),
(47, '6471041006', 47, NULL, '2021-05-30 16:19:38', '2021-06-08 14:09:09'),
(48, '6471041006', 48, NULL, '2021-05-30 16:19:39', '2021-06-08 14:09:10'),
(49, '6471041006', 49, NULL, '2021-05-30 16:19:39', '2021-06-08 14:09:11'),
(50, '6471041006', 50, NULL, '2021-05-30 16:19:41', '2021-06-08 14:09:12'),
(51, '6471041006', 51, NULL, '2021-05-30 16:19:42', '2021-06-08 14:09:14'),
(52, '6471041006', 52, NULL, '2021-05-30 16:20:03', '2021-06-08 14:09:15'),
(53, '6471041006', 53, NULL, '2021-05-30 16:20:04', '2021-06-08 14:09:32'),
(54, '6471041006', 54, NULL, '2021-05-30 16:20:05', '2021-06-08 14:09:33'),
(55, '6471041006', 55, NULL, '2021-05-30 16:20:05', '2021-06-08 14:09:33'),
(56, '6471041006', 56, NULL, '2021-05-30 16:20:06', '2021-06-08 14:09:35'),
(57, '6471041006', 57, NULL, '2021-05-30 16:20:07', '2021-06-08 14:09:36'),
(58, '6471041006', 58, NULL, '2021-05-30 16:20:07', '2021-06-08 14:09:37'),
(59, '6471041006', 59, NULL, '2021-05-30 16:20:09', '2021-06-08 14:09:39');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_users` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nik` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nomor_rumah` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notelp` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_kecamatan` int(11) DEFAULT NULL,
  `kode_kelurahan` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nomor_rt` int(11) NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isRT` int(11) DEFAULT '0',
  `pass_txt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isActive` int(11) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_users`, `name`, `nik`, `email`, `alamat`, `nomor_rumah`, `notelp`, `kode_kecamatan`, `kode_kelurahan`, `nomor_rt`, `role`, `isRT`, `pass_txt`, `password`, `image`, `remember_token`, `isActive`, `created_at`, `updated_at`) VALUES
(1, 'admin', '00000', 'admin@gmail.com', NULL, NULL, '', NULL, NULL, 0, 'admin', 0, 'admin123', '$2y$10$S0GdzoB9hPZIE2P0lweZ8epEpiOBzw6ETuqur8Mz1ba.e4w2YXQOm', NULL, 'nYdg6BoW1aUEOCdHNWK7esyTcpzX0WV7iXWVg4g8Utnv2QBhVk1jJ69spMNd', 1, NULL, NULL),
(50, 'wargart1_1', '6471001', 'ikistudios.official@gmail.com', 'jln a', '43', '08123', 647104, '6471041006', 1, 'warga', 0, 'warga', '$2y$10$gWDIk7w6UoHwWAQ1OY5AXOxWDCW95EzYkgV/tLkf9B7DxIz3uX5.C', '1623561753_loli.jpeg', 'C5hDCHc7mBXbpQI01cEh9vFXG7cgZVNmUe7RyoXeugFpmkMsOOq0YmkL9M6s', 1, '2021-02-20 14:26:08', '2021-06-20 05:39:03'),
(51, 'HJ. Ngasmi', '6471000', 'elsharionnn@gmail.com', NULL, NULL, '08123', 647104, '6471041006', 1, 'rt', 1, 'rt', '$2y$10$sOPsDG9os0ANQt6fxPgzJ.9v9IM5hJ.uSjPKjaf5I8gP1Lk3oEaAO', '1624068285_test.jpeg', 'Fwf1u72Fa8dKqj6cfTeNCZFUxv7GWARwf4yuaTtiqmP4RStSvBjVtZX6JsQ6', 1, '2021-02-20 14:45:30', '2021-06-19 02:04:45'),
(52, 'Sumintono', '6472000', 'rishnaskr@gmail.com', NULL, NULL, '08321', 647104, '6471041006', 2, 'rt', 1, 'sumberrejo_rt2', '$2y$10$cEPxp09eDYbbB94j3qgN0uqusWtfjGlM34Ci9DEFN0LOLC8ulUpCC', NULL, '3EPzqFb71SNsOg8beeaTIOPVvieg9uV8hoxvC5kfUK7qNr7m6IdCTzxKZIHU', 1, '2021-02-21 06:40:49', '2021-05-30 16:10:54'),
(53, 'wargart2_1', '6472001', 'elsharionnn.official@gmail.com', NULL, NULL, '084321', 647104, '6471041006', 2, 'warga', 0, 'wargart2_1', '$2y$10$1FtvsYKE7.6puTZINvu4HOB3975vxs6SgZouMNbhQ.6tIMdURh0qm', NULL, 'nYQ8jU7PK0o2RspoOAO2a7t9xJTRXgTBe6MJIrLeGmokBexY9X9Vrr2sVvhW', 1, '2021-02-21 07:18:10', '2021-05-30 16:49:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `log_sendmail`
--
ALTER TABLE `log_sendmail`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`(191)) USING BTREE;

--
-- Indexes for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`id_kategori`) USING BTREE;

--
-- Indexes for table `tbl_kecamatan`
--
ALTER TABLE `tbl_kecamatan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kode_kecamatan` (`kode_kecamatan`);

--
-- Indexes for table `tbl_kelurahan`
--
ALTER TABLE `tbl_kelurahan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_kelkec` (`kode_kecamatan`);

--
-- Indexes for table `tbl_prestasi`
--
ALTER TABLE `tbl_prestasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_rt`
--
ALTER TABLE `tbl_rt`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `kode_kecamatan` (`nomor_rt`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_users`) USING BTREE,
  ADD UNIQUE KEY `email` (`email`) USING BTREE,
  ADD UNIQUE KEY `nik` (`nik`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `log_sendmail`
--
ALTER TABLE `log_sendmail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=325;

--
-- AUTO_INCREMENT for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_kecamatan`
--
ALTER TABLE `tbl_kecamatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_kelurahan`
--
ALTER TABLE `tbl_kelurahan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_prestasi`
--
ALTER TABLE `tbl_prestasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_rt`
--
ALTER TABLE `tbl_rt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_users` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_kelurahan`
--
ALTER TABLE `tbl_kelurahan`
  ADD CONSTRAINT `fk_kelkec` FOREIGN KEY (`kode_kecamatan`) REFERENCES `tbl_kecamatan` (`kode_kecamatan`) ON DELETE CASCADE;
