-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 23, 2021 at 06:14 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_sekolah`
--

-- --------------------------------------------------------

--
-- Table structure for table `alumnis`
--

CREATE TABLE `alumnis` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tahun_lulus` int(11) DEFAULT NULL,
  `nama_perusahaan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `posisi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tahun_kerja` int(11) DEFAULT NULL,
  `penghasilan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `categories_alumnis` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jurusan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `alumnis`
--

INSERT INTO `alumnis` (`id`, `name`, `tahun_lulus`, `nama_perusahaan`, `posisi`, `tahun_kerja`, `penghasilan`, `created_at`, `updated_at`, `categories_alumnis`, `jurusan`, `status`) VALUES
(1, 'Syaifudin Ilham', 2022, 'Cv Propose', 'Managaer', 2023, '200000', '2021-10-01 05:59:57', '2021-10-01 05:59:57', 'Bekerja', 'Multimedia', NULL),
(2, 'DIo Selvinus Silalebit', 2022, 'Universitas Indonesia', 'Teknik Informatika', 2025, '10000000', '2021-10-01 06:27:00', '2021-10-01 06:31:13', 'Kuliah', 'Teknik Komputer Jaringan', NULL),
(3, 'Muhammad Yafik Ramdhan Ilham', 2022, 'Google Corporation', 'Managaer', 2025, '10000000', '2021-10-01 06:34:42', '2021-10-01 06:34:42', 'Bekerja', 'Teknik Komputer Jaringan', NULL),
(4, 'Nur Firdaus', 2022, 'Minuman dan Makanan', NULL, NULL, NULL, '2021-10-01 06:58:31', '2021-10-01 06:58:31', 'Bekerja', NULL, NULL),
(5, 'Nur Firdaus', 2022, 'Minuman dan Makanan', NULL, NULL, '15000000', '2021-10-01 06:59:12', '2021-10-01 06:59:12', 'Wirausaha', 'Teknik Komputer Jaringan', NULL),
(6, 'Muhamman Tarmidzi Bariq', 2022, 'Universitas Gunadarma', 'Management', NULL, NULL, '2021-10-01 07:34:36', '2021-10-01 07:34:36', 'Kuliah', 'Multimedia', NULL),
(7, 'Rafie Aydin Ihsan', 2022, 'Galon Isi Ulang', NULL, NULL, '10000000', '2021-10-01 07:35:46', '2021-10-01 07:35:46', 'Wirausaha', 'Multimedia', NULL),
(8, 'Angkasa Raya', 2022, 'Nasa', 'Managaer', 2025, '10000000', '2021-10-01 07:37:09', '2021-10-01 07:37:09', 'Bekerja', 'Rekayasa Perangkat Lunak', NULL),
(9, 'Muhammad Irsyam Kelana', 2021, 'Universitas Unindra', 'Otomotif', NULL, NULL, '2021-10-01 07:38:47', '2021-10-01 07:38:47', 'Kuliah', 'Rekayasa Perangkat Lunak', NULL),
(10, 'Andhika Riski Hidayat', 2022, 'Milk Shake', NULL, NULL, '5000000', '2021-10-01 07:39:50', '2021-10-01 07:39:50', 'Wirausaha', 'Rekayasa Perangkat Lunak', NULL),
(11, 'Dana Satria', 2022, 'PT Ada kalanya', 'Web Dev', 2025, '15000000', '2021-10-01 07:41:30', '2021-10-01 07:41:30', 'Bekerja', 'Broadcast', NULL),
(12, 'Satrai Dwi Putra', 2022, 'Universitas Gadjah Mada', 'Sistem Informasi', NULL, NULL, '2021-10-01 07:42:37', '2021-10-01 07:42:37', 'Kuliah', 'Broadcast', NULL),
(13, 'Rifki Ahmad Zahidan', 2022, 'Usaha Bidang Kesehatan', NULL, NULL, '12000000', '2021-10-01 07:43:28', '2021-10-01 07:43:28', 'Wirausaha', 'Broadcast', NULL),
(14, 'Muhammad Adil Farizki', 2022, 'PT Jaya Abadi', 'CEO', 2025, '15000000', '2021-10-01 07:44:39', '2021-10-01 07:44:39', 'Bekerja', 'Teknik Elektronik Industri', NULL),
(15, 'Sheva Sinatrya Putra', 2022, 'Institute Pertanian Bogor', 'Pertanian', NULL, NULL, '2021-10-01 07:45:51', '2021-10-01 07:45:51', 'Kuliah', 'Teknik Elektronik Industri', NULL),
(16, 'Kelvyn Nathanael', 2022, 'Coffee', NULL, NULL, '10000000', '2021-10-01 07:47:39', '2021-10-01 07:47:39', 'Wirausaha', 'Teknik Elektronik Industri', NULL),
(17, 'Firdaus Caesar', 2022, 'Universitas Unair', 'Sistem Informasi', NULL, NULL, '2021-10-01 08:36:18', '2021-10-01 08:36:18', 'Kuliah', 'Rekayasa Perangkat Lunak', NULL),
(20, 'ojan', 1945, 'pki', 'nganggur', 1945, '100000', '2021-10-19 08:32:00', '2021-10-19 08:32:27', 'Bekerja', 'Multimedia', 'PUBLISED'),
(21, 'kukuh pradypta', 2004, 'Play Media', 'ww', 4002, '1111111', '2021-10-19 08:37:00', '2021-10-19 08:37:48', 'Bekerja', 'Broadcast', 'PUBLISED');

-- --------------------------------------------------------

--
-- Table structure for table `backgrounds`
--

CREATE TABLE `backgrounds` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `heading` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subheading` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `backgrounds`
--

INSERT INTO `backgrounds` (`id`, `image`, `heading`, `subheading`, `created_at`, `updated_at`) VALUES
(1, 'backgrounds/October2021/wUC9w6DhsONLJNFwIxib.png', 'SMK Pusat Keunggulan', 'Our Quality Ask Be DIfferent', '2021-10-18 07:13:00', '2021-10-18 07:13:00'),
(2, 'backgrounds/October2021/Q8qhZwqARLNYr4m4HtuM.jpg', 'SMK Pusat Keunggulan', 'Our Quality Ask Be DIfferent', '2021-10-18 07:13:00', '2021-10-18 07:13:48'),
(3, 'backgrounds/October2021/BGuTRG5AB0w9TeVtDIee.jpg', 'SMK Pusat Keunggulan', 'Our Quality Ask Be DIfferent', '2021-10-18 07:13:27', '2021-10-18 07:13:27');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(3, NULL, 1, 'Kesiswaan', 'kesiswaan', '2021-09-24 05:20:14', '2021-09-24 18:03:56'),
(4, NULL, 1, 'Hubungan Industri', 'hubungan-industri', '2021-09-24 05:20:36', '2021-09-24 05:20:36'),
(5, NULL, 1, 'Kurikulum', 'kurikulum', '2021-09-24 05:20:53', '2021-09-24 05:20:53'),
(6, NULL, 1, 'Sarana Prasarana', 'sarana-prasarana', '2021-09-24 05:21:06', '2021-09-24 05:21:06'),
(7, NULL, 1, 'Profile', 'profile', '2021-09-25 17:24:45', '2021-09-25 17:24:45'),
(8, NULL, 1, 'Home', 'home', '2021-10-06 07:17:29', '2021-10-06 07:17:29'),
(9, NULL, 1, 'News Home', 'news-home', '2021-10-14 12:53:57', '2021-10-14 12:53:57');

-- --------------------------------------------------------

--
-- Table structure for table `categories_alumnis`
--

CREATE TABLE `categories_alumnis` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contents`
--

CREATE TABLE `contents` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `sub_menu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contents`
--

INSERT INTO `contents` (`id`, `title`, `content`, `created_at`, `updated_at`, `sub_menu`, `slug`) VALUES
(1, 'Struktur Kurikulum SMK Taruna Bhakti', '<div class=\"mt-5\">\r\n<p style=\"text-align: center;\"><span style=\"font-size: 18pt;\">STRUKTUR KURIKULUM</span></p>\r\n<p style=\"text-align: center;\"><span style=\"font-size: 18pt;\">SMK TARUNA BHAKTI </span></p>\r\n<p>&nbsp;</p>\r\n<p>BIDANG KEAHIAN : TEKNOLOGI INFORMASI DAN KOMUNIKASI</p>\r\n<p>PROGRAM KEAHLIAN : TEKNIK KOMPUTER DAN INFORMATIKA</p>\r\n<p>PAKET KEAHLIAN : TEKNIK KOMPUTER DAN JARINGAN</p>\r\n<div class=\"kekanan\">\r\n<table class=\"table table-bordered\" style=\"width: 100%;\" border=\"1\" width=\"100%\"><caption>&nbsp;</caption>\r\n<tbody>\r\n<tr>\r\n<td class=\"text-center\" style=\"width: 397px;\" colspan=\"2\" rowspan=\"3\">MATA PELAJARAN</td>\r\n<td style=\"width: 292px;\" colspan=\"6\">KELAS</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 96px;\" colspan=\"2\">X</td>\r\n<td style=\"width: 96px;\" colspan=\"2\">XI</td>\r\n<td style=\"width: 96px;\" colspan=\"2\">XII</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 47px;\">1</td>\r\n<td style=\"width: 47px;\">2</td>\r\n<td style=\"width: 47px;\">1</td>\r\n<td style=\"width: 47px;\">2</td>\r\n<td style=\"width: 47px;\">1</td>\r\n<td style=\"width: 47px;\">2</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 691px;\" colspan=\"8\"><strong>Kelompok A</strong></td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 47px;\">1</td>\r\n<td style=\"width: 348px;\">Pendidikan Agama dan Budi Pekerti</td>\r\n<td style=\"width: 47px;\">3</td>\r\n<td style=\"width: 47px;\">3</td>\r\n<td style=\"width: 47px;\">3</td>\r\n<td style=\"width: 47px;\">3</td>\r\n<td style=\"width: 47px;\">3</td>\r\n<td style=\"width: 47px;\">3</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 47px;\">2</td>\r\n<td style=\"width: 348px;\">Pendidikan Pancasila dan Kewarganegaraan</td>\r\n<td style=\"width: 47px;\">2</td>\r\n<td style=\"width: 47px;\">2</td>\r\n<td style=\"width: 47px;\">2</td>\r\n<td style=\"width: 47px;\">2</td>\r\n<td style=\"width: 47px;\">2</td>\r\n<td style=\"width: 47px;\">2</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 47px;\">3</td>\r\n<td style=\"width: 348px;\">Bahasa Indonesia</td>\r\n<td style=\"width: 47px;\">3</td>\r\n<td style=\"width: 47px;\">3</td>\r\n<td style=\"width: 47px;\">3</td>\r\n<td style=\"width: 47px;\">3</td>\r\n<td style=\"width: 47px;\">2</td>\r\n<td style=\"width: 47px;\">2</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 47px;\">4</td>\r\n<td style=\"width: 348px;\">Matematika</td>\r\n<td style=\"width: 47px;\">4</td>\r\n<td style=\"width: 47px;\">4</td>\r\n<td style=\"width: 47px;\">4</td>\r\n<td style=\"width: 47px;\">4</td>\r\n<td style=\"width: 47px;\">4</td>\r\n<td style=\"width: 47px;\">4</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 47px;\">5</td>\r\n<td style=\"width: 348px;\">Sejarah Indonesia</td>\r\n<td style=\"width: 47px;\">2</td>\r\n<td style=\"width: 47px;\">2</td>\r\n<td style=\"width: 47px;\">2</td>\r\n<td style=\"width: 47px;\">2</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 47px;\">6</td>\r\n<td style=\"width: 348px;\">Bahasa Inggris</td>\r\n<td style=\"width: 47px;\">3</td>\r\n<td style=\"width: 47px;\">3</td>\r\n<td style=\"width: 47px;\">3</td>\r\n<td style=\"width: 47px;\">3</td>\r\n<td style=\"width: 47px;\">3</td>\r\n<td style=\"width: 47px;\">3</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 691px;\" colspan=\"8\"><strong>Kelompok B</strong></td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 47px;\">7</td>\r\n<td style=\"width: 348px;\">Seni Budaya</td>\r\n<td style=\"width: 47px;\">3</td>\r\n<td style=\"width: 47px;\">3</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 47px;\">8</td>\r\n<td style=\"width: 348px;\">Prakarya dan Kewirausahaan</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">2</td>\r\n<td style=\"width: 47px;\">2</td>\r\n<td style=\"width: 47px;\">2</td>\r\n<td style=\"width: 47px;\">2</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 47px;\">9</td>\r\n<td style=\"width: 348px;\">Pendidikan Jasmani, Olah Raga &amp; Kesehatan</td>\r\n<td style=\"width: 47px;\">2</td>\r\n<td style=\"width: 47px;\">2</td>\r\n<td style=\"width: 47px;\">2</td>\r\n<td style=\"width: 47px;\">2</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 397px;\" colspan=\"2\">Jumlah A Dan B</td>\r\n<td style=\"width: 47px;\">22</td>\r\n<td style=\"width: 47px;\">22</td>\r\n<td style=\"width: 47px;\">21</td>\r\n<td style=\"width: 47px;\">21</td>\r\n<td style=\"width: 47px;\">16</td>\r\n<td style=\"width: 47px;\">16</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 691px;\" colspan=\"8\"><strong>Kelompok C (Peminatan)</strong></td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 691px;\" colspan=\"8\"><strong>C1. Dasar Bidang Keahlian</strong></td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 47px;\">10</td>\r\n<td style=\"width: 348px;\">Simulasi Digital</td>\r\n<td style=\"width: 47px;\">3</td>\r\n<td style=\"width: 47px;\">3</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 47px;\">11</td>\r\n<td style=\"width: 348px;\">Fisika</td>\r\n<td style=\"width: 47px;\">4</td>\r\n<td style=\"width: 47px;\">4</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 47px;\">12</td>\r\n<td style=\"width: 348px;\">Sistem Komputer</td>\r\n<td style=\"width: 47px;\">4</td>\r\n<td style=\"width: 47px;\">4</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 691px;\" colspan=\"8\"><strong>C2. Dasar Program Keahlian</strong></td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 47px;\">13</td>\r\n<td style=\"width: 348px;\">Komputer dan Jaringan Dasar</td>\r\n<td style=\"width: 47px;\">10</td>\r\n<td style=\"width: 47px;\">10</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 47px;\">14</td>\r\n<td style=\"width: 348px;\">Pemrograman Dasar</td>\r\n<td style=\"width: 47px;\">3</td>\r\n<td style=\"width: 47px;\">3</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 47px;\">15</td>\r\n<td style=\"width: 348px;\">Dasar Design Grafis</td>\r\n<td style=\"width: 47px;\">2</td>\r\n<td style=\"width: 47px;\">2</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 691px;\" colspan=\"8\"><strong>C3. Paket Keahlian</strong></td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 47px;\">16</td>\r\n<td style=\"width: 348px;\">Teknologi Infrastruktur Jaringan</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">8</td>\r\n<td style=\"width: 47px;\">8</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 47px;\">17</td>\r\n<td style=\"width: 348px;\">Rancang Bangun Jaringan</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">8</td>\r\n<td style=\"width: 47px;\">8</td>\r\n<td style=\"width: 47px;\">9</td>\r\n<td style=\"width: 47px;\">9</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 47px;\">18</td>\r\n<td style=\"width: 348px;\">Administrasi Server dan Keamanan Jaringan</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">8</td>\r\n<td style=\"width: 47px;\">8</td>\r\n<td style=\"width: 47px;\">10</td>\r\n<td style=\"width: 47px;\">10</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 47px;\">19</td>\r\n<td style=\"width: 348px;\">Teknologi Layanan Jaringan</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">10</td>\r\n<td style=\"width: 47px;\">10</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 47px;\">20</td>\r\n<td style=\"width: 348px;\">Pengembangan Produk Kreatif</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">3</td>\r\n<td style=\"width: 47px;\">3</td>\r\n<td style=\"width: 47px;\">3</td>\r\n<td style=\"width: 47px;\">3</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 397px;\" colspan=\"2\">Jumlah C1, C2 Dan C3</td>\r\n<td style=\"width: 47px;\">26</td>\r\n<td style=\"width: 47px;\">26</td>\r\n<td style=\"width: 47px;\">27</td>\r\n<td style=\"width: 47px;\">27</td>\r\n<td style=\"width: 47px;\">32</td>\r\n<td style=\"width: 47px;\">32</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 397px;\" colspan=\"2\"><strong>TOTAL</strong></td>\r\n<td style=\"width: 47px;\"><strong>48</strong></td>\r\n<td style=\"width: 47px;\"><strong>48</strong></td>\r\n<td style=\"width: 47px;\"><strong>48</strong></td>\r\n<td style=\"width: 47px;\"><strong>48</strong></td>\r\n<td style=\"width: 47px;\"><strong>48</strong></td>\r\n<td style=\"width: 47px;\"><strong>48</strong></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<p>&nbsp;</p>\r\n<p>BIDANG KEAHLIAN : TEKNOLOGI INFORMASI DAN KOMUNIKASI</p>\r\n<p>PROGRAM KEAHLIAN : TEKNIK KOMPUTER DAN INFORMATIKA</p>\r\n<p>PAKET KEAHLIAN : MULTIMEDIA</p>\r\n<div class=\"kekanan\">\r\n<table class=\"table table-bordered\" style=\"width: 100%; height: 1056px;\" border=\"1\" width=\"100%\"><caption>&nbsp;</caption>\r\n<tbody>\r\n<tr style=\"height: 33px;\">\r\n<td class=\"text-center\" style=\"width: 397px; height: 99px;\" colspan=\"2\" rowspan=\"3\">MATA PELAJARAN</td>\r\n<td style=\"width: 292px; height: 33px;\" colspan=\"6\">KELAS</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 96px; height: 33px;\" colspan=\"2\">X</td>\r\n<td style=\"width: 96px; height: 33px;\" colspan=\"2\">XI</td>\r\n<td style=\"width: 96px; height: 33px;\" colspan=\"2\">XII</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 47px; height: 33px;\">1</td>\r\n<td style=\"width: 47px; height: 33px;\">2</td>\r\n<td style=\"width: 47px; height: 33px;\">1</td>\r\n<td style=\"width: 47px; height: 33px;\">2</td>\r\n<td style=\"width: 47px; height: 33px;\">1</td>\r\n<td style=\"width: 47px; height: 33px;\">2</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 691px; height: 33px;\" colspan=\"8\"><strong>Kelompok A</strong></td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 47px; height: 33px;\">1</td>\r\n<td style=\"width: 348px; height: 33px;\">Pendidikan Agama dan Budi Pekerti</td>\r\n<td style=\"width: 47px; height: 33px;\">3</td>\r\n<td style=\"width: 47px; height: 33px;\">3</td>\r\n<td style=\"width: 47px; height: 33px;\">3</td>\r\n<td style=\"width: 47px; height: 33px;\">3</td>\r\n<td style=\"width: 47px; height: 33px;\">3</td>\r\n<td style=\"width: 47px; height: 33px;\">3</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 47px; height: 33px;\">2</td>\r\n<td style=\"width: 348px; height: 33px;\">Pendidikan Pancasila dan Kewarganegaraan</td>\r\n<td style=\"width: 47px; height: 33px;\">2</td>\r\n<td style=\"width: 47px; height: 33px;\">2</td>\r\n<td style=\"width: 47px; height: 33px;\">2</td>\r\n<td style=\"width: 47px; height: 33px;\">2</td>\r\n<td style=\"width: 47px; height: 33px;\">2</td>\r\n<td style=\"width: 47px; height: 33px;\">2</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 47px; height: 33px;\">3</td>\r\n<td style=\"width: 348px; height: 33px;\">Bahasa Indonesia</td>\r\n<td style=\"width: 47px; height: 33px;\">3</td>\r\n<td style=\"width: 47px; height: 33px;\">3</td>\r\n<td style=\"width: 47px; height: 33px;\">3</td>\r\n<td style=\"width: 47px; height: 33px;\">3</td>\r\n<td style=\"width: 47px; height: 33px;\">2</td>\r\n<td style=\"width: 47px; height: 33px;\">2</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 47px; height: 33px;\">4</td>\r\n<td style=\"width: 348px; height: 33px;\">Matematika</td>\r\n<td style=\"width: 47px; height: 33px;\">4</td>\r\n<td style=\"width: 47px; height: 33px;\">4</td>\r\n<td style=\"width: 47px; height: 33px;\">4</td>\r\n<td style=\"width: 47px; height: 33px;\">4</td>\r\n<td style=\"width: 47px; height: 33px;\">4</td>\r\n<td style=\"width: 47px; height: 33px;\">4</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 47px; height: 33px;\">5</td>\r\n<td style=\"width: 348px; height: 33px;\">Sejarah Indonesia</td>\r\n<td style=\"width: 47px; height: 33px;\">2</td>\r\n<td style=\"width: 47px; height: 33px;\">2</td>\r\n<td style=\"width: 47px; height: 33px;\">2</td>\r\n<td style=\"width: 47px; height: 33px;\">2</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 47px; height: 33px;\">6</td>\r\n<td style=\"width: 348px; height: 33px;\">Bahasa Inggris</td>\r\n<td style=\"width: 47px; height: 33px;\">3</td>\r\n<td style=\"width: 47px; height: 33px;\">3</td>\r\n<td style=\"width: 47px; height: 33px;\">3</td>\r\n<td style=\"width: 47px; height: 33px;\">3</td>\r\n<td style=\"width: 47px; height: 33px;\">3</td>\r\n<td style=\"width: 47px; height: 33px;\">3</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 691px; height: 33px;\" colspan=\"8\"><strong>Kelompok B</strong></td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 47px; height: 33px;\">7</td>\r\n<td style=\"width: 348px; height: 33px;\">Seni Budaya</td>\r\n<td style=\"width: 47px; height: 33px;\">3</td>\r\n<td style=\"width: 47px; height: 33px;\">3</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 47px; height: 33px;\">8</td>\r\n<td style=\"width: 348px; height: 33px;\">Prakarya dan Kewirausahaan</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n<td style=\"width: 47px; height: 33px;\">2</td>\r\n<td style=\"width: 47px; height: 33px;\">2</td>\r\n<td style=\"width: 47px; height: 33px;\">2</td>\r\n<td style=\"width: 47px; height: 33px;\">2</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 47px; height: 33px;\">9</td>\r\n<td style=\"width: 348px; height: 33px;\">Pendidikan Jasmani, Olah Raga &amp; Kesehatan</td>\r\n<td style=\"width: 47px; height: 33px;\">2</td>\r\n<td style=\"width: 47px; height: 33px;\">2</td>\r\n<td style=\"width: 47px; height: 33px;\">2</td>\r\n<td style=\"width: 47px; height: 33px;\">2</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 397px; height: 33px;\" colspan=\"2\">Jumlah A Dan B</td>\r\n<td style=\"width: 47px; height: 33px;\">22</td>\r\n<td style=\"width: 47px; height: 33px;\">22</td>\r\n<td style=\"width: 47px; height: 33px;\">21</td>\r\n<td style=\"width: 47px; height: 33px;\">21</td>\r\n<td style=\"width: 47px; height: 33px;\">16</td>\r\n<td style=\"width: 47px; height: 33px;\">16</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 691px; height: 33px;\" colspan=\"8\"><strong>Kelompok C (Peminatan)</strong></td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 691px; height: 33px;\" colspan=\"8\"><strong>C1. Dasar Bidang Keahlian</strong></td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 47px; height: 33px;\">10</td>\r\n<td style=\"width: 348px; height: 33px;\">Simulasi Digital</td>\r\n<td style=\"width: 47px; height: 33px;\">3</td>\r\n<td style=\"width: 47px; height: 33px;\">3</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 47px; height: 33px;\">11</td>\r\n<td style=\"width: 348px; height: 33px;\">Fisika</td>\r\n<td style=\"width: 47px; height: 33px;\">4</td>\r\n<td style=\"width: 47px; height: 33px;\">4</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 47px; height: 33px;\">12</td>\r\n<td style=\"width: 348px; height: 33px;\">Sistem Komputer</td>\r\n<td style=\"width: 47px; height: 33px;\">4</td>\r\n<td style=\"width: 47px; height: 33px;\">4</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 691px; height: 33px;\" colspan=\"8\"><strong>C2. Dasar Program Keahlian</strong></td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 47px; height: 33px;\">13</td>\r\n<td style=\"width: 348px; height: 33px;\">Perakitan Komputer dan Sistem Operasi</td>\r\n<td style=\"width: 47px; height: 33px;\">4</td>\r\n<td style=\"width: 47px; height: 33px;\">4</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 47px; height: 33px;\">14</td>\r\n<td style=\"width: 348px; height: 33px;\">Pemrograman Dasar</td>\r\n<td style=\"width: 47px; height: 33px;\">4</td>\r\n<td style=\"width: 47px; height: 33px;\">4</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 47px; height: 33px;\">15</td>\r\n<td style=\"width: 348px; height: 33px;\">Dasar Desain Grafis</td>\r\n<td style=\"width: 47px; height: 33px;\">7</td>\r\n<td style=\"width: 47px; height: 33px;\">7</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 691px; height: 33px;\" colspan=\"8\"><strong>C3. Paket Keahlian</strong></td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 47px; height: 33px;\">16</td>\r\n<td style=\"width: 348px; height: 33px;\">Pengantar Multimedia</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n<td style=\"width: 47px; height: 33px;\">6</td>\r\n<td style=\"width: 47px; height: 33px;\">6</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 47px; height: 33px;\">17</td>\r\n<td style=\"width: 348px; height: 33px;\">Teknik Pengolahan Audio Video</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n<td style=\"width: 47px; height: 33px;\">6</td>\r\n<td style=\"width: 47px; height: 33px;\">6</td>\r\n<td style=\"width: 47px; height: 33px;\">12</td>\r\n<td style=\"width: 47px; height: 33px;\">12</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 47px; height: 33px;\">18</td>\r\n<td style=\"width: 348px; height: 33px;\">Teknik Animasi 2D &amp; 3D</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n<td style=\"width: 47px; height: 33px;\">6</td>\r\n<td style=\"width: 47px; height: 33px;\">6</td>\r\n<td style=\"width: 47px; height: 33px;\">8</td>\r\n<td style=\"width: 47px; height: 33px;\">8</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 47px; height: 33px;\">19</td>\r\n<td style=\"width: 348px; height: 33px;\">Desain Media Interaktif</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n<td style=\"width: 47px; height: 33px;\">6</td>\r\n<td style=\"width: 47px; height: 33px;\">6</td>\r\n<td style=\"width: 47px; height: 33px;\">9</td>\r\n<td style=\"width: 47px; height: 33px;\">9</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 47px; height: 33px;\">20</td>\r\n<td style=\"width: 348px; height: 33px;\">Pengembangan Produk Kreatif</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n<td style=\"width: 47px; height: 33px;\">3</td>\r\n<td style=\"width: 47px; height: 33px;\">3</td>\r\n<td style=\"width: 47px; height: 33px;\">3</td>\r\n<td style=\"width: 47px; height: 33px;\">3</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 397px; height: 33px;\" colspan=\"2\">Jumlah C1, C2,Dan C3</td>\r\n<td style=\"width: 47px; height: 33px;\">26</td>\r\n<td style=\"width: 47px; height: 33px;\">26</td>\r\n<td style=\"width: 47px; height: 33px;\">27</td>\r\n<td style=\"width: 47px; height: 33px;\">27</td>\r\n<td style=\"width: 47px; height: 33px;\">32</td>\r\n<td style=\"width: 47px; height: 33px;\">32</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 397px; height: 33px;\" colspan=\"2\"><strong>TOTAL</strong></td>\r\n<td style=\"width: 47px; height: 33px;\">48</td>\r\n<td style=\"width: 47px; height: 33px;\">48</td>\r\n<td style=\"width: 47px; height: 33px;\">48</td>\r\n<td style=\"width: 47px; height: 33px;\">48</td>\r\n<td style=\"width: 47px; height: 33px;\">48</td>\r\n<td style=\"width: 47px; height: 33px;\">48</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<p>&nbsp;</p>\r\n<p>BIDANG KEAHIAN : TEKNOLOGI INFORMASI DAN KOMUNIKASI</p>\r\n<p>PROGRAM KEAHLIAN : TEKNIK KOMPUTER DAN INFORMATIKA</p>\r\n<p>PAKET KEAHLIAN : REKAYASA PERANGKAT LUNAK</p>\r\n<div class=\"kekanan\">\r\n<table class=\"table table-bordered\" style=\"height: 1056px; width: 100%;\" border=\"1\" width=\"100%\"><caption>&nbsp;</caption>\r\n<tbody>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 378px; height: 99px;\" colspan=\"2\" rowspan=\"3\">\r\n<p class=\"text-center\" style=\"text-align: center;\">MATA PELAJARAN</p>\r\n</td>\r\n<td style=\"width: 311px; height: 33px;\" colspan=\"6\">\r\n<p style=\"text-align: center;\">KELAS</p>\r\n</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 102px; height: 33px; text-align: center;\" colspan=\"2\">X</td>\r\n<td style=\"width: 102px; height: 33px; text-align: center;\" colspan=\"2\">XI</td>\r\n<td style=\"width: 103px; height: 33px; text-align: center;\" colspan=\"2\">XII</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">1</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">2</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">1</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">2</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">1</td>\r\n<td style=\"width: 51px; height: 33px;\">\r\n<p style=\"text-align: center;\">2</p>\r\n</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 691px; height: 33px;\" colspan=\"8\">\r\n<p style=\"text-align: center;\"><strong>Kelompok A</strong></p>\r\n</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 50px; height: 33px;\">1</td>\r\n<td style=\"width: 326px; height: 33px;\">Pendidikan Agama dan Budi Pekerti</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">3</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">3</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">3</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">3</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">3</td>\r\n<td style=\"width: 51px; height: 33px; text-align: center;\">3</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 50px; height: 33px;\">2</td>\r\n<td style=\"width: 326px; height: 33px;\">Pendidikan Pancasila dan Kewarganegaraan</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">2</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">2</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">2</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">2</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">2</td>\r\n<td style=\"width: 51px; height: 33px; text-align: center;\">2</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 50px; height: 33px;\">3</td>\r\n<td style=\"width: 326px; height: 33px;\">Bahasa Indonesia</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">3</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">3</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">3</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">3</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">2</td>\r\n<td style=\"width: 51px; height: 33px; text-align: center;\">2</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 50px; height: 33px;\">4</td>\r\n<td style=\"width: 326px; height: 33px;\">Matematika</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">4</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">4</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">4</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">4</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">4</td>\r\n<td style=\"width: 51px; height: 33px; text-align: center;\">4</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 50px; height: 33px;\">5</td>\r\n<td style=\"width: 326px; height: 33px;\">Sejarah Indonesia</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">2</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">2</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">2</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">2</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">&ndash;</td>\r\n<td style=\"width: 51px; height: 33px; text-align: center;\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 50px; height: 33px;\">6</td>\r\n<td style=\"width: 326px; height: 33px;\">Bahasa Inggris</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">3</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">3</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">3</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">3</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">3</td>\r\n<td style=\"width: 51px; height: 33px; text-align: center;\">3</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 691px; height: 33px;\" colspan=\"8\"><strong>Kelompok B</strong></td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 50px; height: 33px;\">7</td>\r\n<td style=\"width: 326px; height: 33px;\">Seni Budaya</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">3</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">3</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">&ndash;</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">&ndash;</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">&ndash;</td>\r\n<td style=\"width: 51px; height: 33px; text-align: center;\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 50px; height: 33px;\">8</td>\r\n<td style=\"width: 326px; height: 33px;\">Kewirausahaan</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">&ndash;</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">&ndash;</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">2</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">2</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">2</td>\r\n<td style=\"width: 51px; height: 33px; text-align: center;\">2</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 50px; height: 33px;\">9</td>\r\n<td style=\"width: 326px; height: 33px;\">Pendidikan Jasmani, Olah Raga &amp; Kesehatan</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">2</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">2</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">2</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">2</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">&ndash;</td>\r\n<td style=\"width: 51px; height: 33px; text-align: center;\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 378px; height: 33px;\" colspan=\"2\">Jumlah A Dan B</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">22</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">22</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">21</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">21</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">16</td>\r\n<td style=\"width: 51px; height: 33px; text-align: center;\">16</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 691px; height: 33px;\" colspan=\"8\"><strong>Kelompok C (Peminatan)</strong></td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 691px; height: 33px;\" colspan=\"8\"><strong>C1. Dasar Bidang Keahlian</strong></td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 50px; height: 33px;\">10</td>\r\n<td style=\"width: 326px; height: 33px;\">Simulasi Digital</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">3</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">3</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">&ndash;</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">&ndash;</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">&ndash;</td>\r\n<td style=\"width: 51px; height: 33px; text-align: center;\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 50px; height: 33px;\">11</td>\r\n<td style=\"width: 326px; height: 33px;\">Fisika</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">4</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">4</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">&ndash;</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">&ndash;</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">&ndash;</td>\r\n<td style=\"width: 51px; height: 33px; text-align: center;\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 50px; height: 33px;\">12</td>\r\n<td style=\"width: 326px; height: 33px;\">Sistem Komputer</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">4</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">4</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">&ndash;</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">&ndash;</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">&ndash;</td>\r\n<td style=\"width: 51px; height: 33px; text-align: center;\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 691px; height: 33px;\" colspan=\"8\"><strong>C2. Dasar Program Keahlian</strong></td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 50px; height: 33px;\">13</td>\r\n<td style=\"width: 326px; height: 33px;\">Komputer dan Jaringan Dasar</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">4</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">4</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">&ndash;</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">&ndash;</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">&ndash;</td>\r\n<td style=\"width: 51px; height: 33px; text-align: center;\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 50px; height: 33px;\">14</td>\r\n<td style=\"width: 326px; height: 33px;\">Pemrograman Dasar</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">7</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">7</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">&ndash;</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">&ndash;</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">&ndash;</td>\r\n<td style=\"width: 51px; height: 33px; text-align: center;\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 50px; height: 33px;\">15</td>\r\n<td style=\"width: 326px; height: 33px;\">Dasar Desain Grafis</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">4</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">4</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">&ndash;</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">&ndash;</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">&ndash;</td>\r\n<td style=\"width: 51px; height: 33px; text-align: center;\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 691px; height: 33px;\" colspan=\"8\"><strong>C3. Paket Keahlian</strong></td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 50px; height: 33px;\">16</td>\r\n<td style=\"width: 326px; height: 33px;\">Pemodelan Perangkat Lunak</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">&ndash;</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">&ndash;</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">3</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">3</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">2</td>\r\n<td style=\"width: 51px; height: 33px; text-align: center;\">2</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 50px; height: 33px;\">17</td>\r\n<td style=\"width: 326px; height: 33px;\">Basis Data</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">&ndash;</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">&ndash;</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">6</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">6</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">6</td>\r\n<td style=\"width: 51px; height: 33px; text-align: center;\">6</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 50px; height: 33px;\">18</td>\r\n<td style=\"width: 326px; height: 33px;\">Pemrograman Berorientasi Obyek</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">&ndash;</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">&ndash;</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">6</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">6</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">8</td>\r\n<td style=\"width: 51px; height: 33px; text-align: center;\">8</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 50px; height: 33px;\">19</td>\r\n<td style=\"width: 326px; height: 33px;\">Pemrograman Web dan Mobile</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">&ndash;</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">&ndash;</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">8</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">8</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">8</td>\r\n<td style=\"width: 51px; height: 33px; text-align: center;\">8</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 50px; height: 33px;\">20</td>\r\n<td style=\"width: 326px; height: 33px;\">Pengembangan Produk Kreatif</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">&ndash;</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">&ndash;</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">4</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">4</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">8</td>\r\n<td style=\"width: 51px; height: 33px; text-align: center;\">8</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 378px; height: 33px;\" colspan=\"2\">Jumlah C1, C2 Dan C3</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">26</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">26</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">27</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">27</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">32</td>\r\n<td style=\"width: 51px; height: 33px; text-align: center;\">32</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 378px; height: 33px;\" colspan=\"2\"><strong>TOTAL</strong></td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">48</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">48</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">48</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">48</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">48</td>\r\n<td style=\"width: 51px; height: 33px; text-align: center;\">48</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<p>&nbsp;</p>\r\n<p>BIDANG KEAHLIAN : SENI RUPA</p>\r\n<p>PROGRAM KEAHLIAN : SENI AUDIO VISUAL</p>\r\n<p>PAKET KEAHLIAN : PRODUKSI FILM DAN PROGRAM TELEVISI</p>\r\n<div class=\"kekanan\">\r\n<table class=\"table table-bordered\" style=\"height: 1158px; width: 100%;\" border=\"1\" width=\"100%\"><caption>&nbsp;</caption>\r\n<thead>\r\n<tr style=\"height: 32px;\">\r\n<td class=\"text-center\" style=\"height: 100px;\" colspan=\"2\" rowspan=\"3\" width=\"57%\">MATA PELAJARAN</td>\r\n<td style=\"height: 32px;\" colspan=\"8\" width=\"42%\">KELAS</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" colspan=\"2\" width=\"10%\">X</td>\r\n<td style=\"height: 33px;\" colspan=\"2\" width=\"10%\">XI</td>\r\n<td style=\"height: 33px;\" colspan=\"2\" width=\"10%\">XII</td>\r\n<td style=\"height: 33px;\" colspan=\"2\" width=\"10%\">XIII</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr style=\"height: 35px;\">\r\n<td style=\"height: 35px;\" width=\"5%\">1</td>\r\n<td style=\"height: 35px;\" width=\"5%\">2</td>\r\n<td style=\"height: 35px;\" width=\"5%\">3</td>\r\n<td style=\"height: 35px;\" width=\"5%\">4</td>\r\n<td style=\"height: 35px;\" width=\"5%\">5</td>\r\n<td style=\"height: 35px;\" width=\"5%\">6</td>\r\n<td style=\"height: 35px;\" width=\"5%\">7</td>\r\n<td style=\"height: 35px;\" width=\"5%\">8</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" colspan=\"10\" width=\"100%\"><strong>Kelompok A</strong></td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" width=\"5%\">1</td>\r\n<td style=\"height: 33px;\" width=\"51%\">Pendidikan Agama &amp; Budi pekerti</td>\r\n<td style=\"height: 33px;\" width=\"5%\">3</td>\r\n<td style=\"height: 33px;\" width=\"5%\">3</td>\r\n<td style=\"height: 33px;\" width=\"5%\">3</td>\r\n<td style=\"height: 33px;\" width=\"5%\">3</td>\r\n<td style=\"height: 33px;\" width=\"5%\">3</td>\r\n<td style=\"height: 33px;\" width=\"5%\">3</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 50px;\">\r\n<td style=\"height: 50px;\" width=\"5%\">2</td>\r\n<td style=\"height: 50px;\" width=\"51%\">Pendidikan Pancasila dan Kewarganegaraan</td>\r\n<td style=\"height: 50px;\" width=\"5%\">2</td>\r\n<td style=\"height: 50px;\" width=\"5%\">2</td>\r\n<td style=\"height: 50px;\" width=\"5%\">2</td>\r\n<td style=\"height: 50px;\" width=\"5%\">2</td>\r\n<td style=\"height: 50px;\" width=\"5%\">2</td>\r\n<td style=\"height: 50px;\" width=\"5%\">2</td>\r\n<td style=\"height: 50px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 50px;\" width=\"5%\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" width=\"5%\">3</td>\r\n<td style=\"height: 33px;\" width=\"51%\">Bahasa Indonesia</td>\r\n<td style=\"height: 33px;\" width=\"5%\">3</td>\r\n<td style=\"height: 33px;\" width=\"5%\">3</td>\r\n<td style=\"height: 33px;\" width=\"5%\">3</td>\r\n<td style=\"height: 33px;\" width=\"5%\">3</td>\r\n<td style=\"height: 33px;\" width=\"5%\">2</td>\r\n<td style=\"height: 33px;\" width=\"5%\">2</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" width=\"5%\">4</td>\r\n<td style=\"height: 33px;\" width=\"51%\">Matematika</td>\r\n<td style=\"height: 33px;\" width=\"5%\">4</td>\r\n<td style=\"height: 33px;\" width=\"5%\">4</td>\r\n<td style=\"height: 33px;\" width=\"5%\">4</td>\r\n<td style=\"height: 33px;\" width=\"5%\">4</td>\r\n<td style=\"height: 33px;\" width=\"5%\">4</td>\r\n<td style=\"height: 33px;\" width=\"5%\">4</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" width=\"5%\">5</td>\r\n<td style=\"height: 33px;\" width=\"51%\">Sejarah Indonesia</td>\r\n<td style=\"height: 33px;\" width=\"5%\">2</td>\r\n<td style=\"height: 33px;\" width=\"5%\">2</td>\r\n<td style=\"height: 33px;\" width=\"5%\">2</td>\r\n<td style=\"height: 33px;\" width=\"5%\">2</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" width=\"5%\">6</td>\r\n<td style=\"height: 33px;\" width=\"51%\">Bahasa Inggris</td>\r\n<td style=\"height: 33px;\" width=\"5%\">3</td>\r\n<td style=\"height: 33px;\" width=\"5%\">3</td>\r\n<td style=\"height: 33px;\" width=\"5%\">3</td>\r\n<td style=\"height: 33px;\" width=\"5%\">3</td>\r\n<td style=\"height: 33px;\" width=\"5%\">3</td>\r\n<td style=\"height: 33px;\" width=\"5%\">3</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" colspan=\"10\" width=\"100%\"><strong>Kelompok B</strong></td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" width=\"5%\">7</td>\r\n<td style=\"height: 33px;\" width=\"51%\">Seni Budaya</td>\r\n<td style=\"height: 33px;\" width=\"5%\">3</td>\r\n<td style=\"height: 33px;\" width=\"5%\">3</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" width=\"5%\">8</td>\r\n<td style=\"height: 33px;\" width=\"51%\">Kewirausahaan</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">2</td>\r\n<td style=\"height: 33px;\" width=\"5%\">2</td>\r\n<td style=\"height: 33px;\" width=\"5%\">2</td>\r\n<td style=\"height: 33px;\" width=\"5%\">2</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 50px;\">\r\n<td style=\"height: 50px;\" width=\"5%\">9</td>\r\n<td style=\"height: 50px;\" width=\"51%\">Pendidikan Jasmani, Olah Raga &amp; Kesehatan</td>\r\n<td style=\"height: 50px;\" width=\"5%\">2</td>\r\n<td style=\"height: 50px;\" width=\"5%\">2</td>\r\n<td style=\"height: 50px;\" width=\"5%\">2</td>\r\n<td style=\"height: 50px;\" width=\"5%\">2</td>\r\n<td style=\"height: 50px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 50px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 50px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 50px;\" width=\"5%\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" colspan=\"2\" width=\"57%\">Jumlah A dan B</td>\r\n<td style=\"height: 33px;\" width=\"5%\">22</td>\r\n<td style=\"height: 33px;\" width=\"5%\">22</td>\r\n<td style=\"height: 33px;\" width=\"5%\">21</td>\r\n<td style=\"height: 33px;\" width=\"5%\">21</td>\r\n<td style=\"height: 33px;\" width=\"5%\">16</td>\r\n<td style=\"height: 33px;\" width=\"5%\">16</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" colspan=\"10\" width=\"100%\"><strong>Kelompok C (Peminatan)</strong></td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" colspan=\"10\" width=\"100%\"><strong>C1</strong><strong>. </strong><strong>Dasar Bidang Keahlian</strong></td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" width=\"5%\">10</td>\r\n<td style=\"height: 33px;\" width=\"51%\">Simulasi Digital</td>\r\n<td style=\"height: 33px;\" width=\"5%\">3</td>\r\n<td style=\"height: 33px;\" width=\"5%\">3</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" width=\"5%\">11</td>\r\n<td style=\"height: 33px;\" width=\"51%\">Pengantar Seni</td>\r\n<td style=\"height: 33px;\" width=\"5%\">2</td>\r\n<td style=\"height: 33px;\" width=\"5%\">2</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" width=\"5%\">12</td>\r\n<td style=\"height: 33px;\" width=\"51%\">Dasar-dasar Kreativitas</td>\r\n<td style=\"height: 33px;\" width=\"5%\">2</td>\r\n<td style=\"height: 33px;\" width=\"5%\">2</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" colspan=\"10\" width=\"100%\"><strong>C2</strong><strong>. </strong><strong>Dasar Program Keahlian</strong></td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" width=\"5%\">13</td>\r\n<td style=\"height: 33px;\" width=\"51%\">Komunikasi Massa</td>\r\n<td style=\"height: 33px;\" width=\"5%\">3</td>\r\n<td style=\"height: 33px;\" width=\"5%\">3</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" width=\"5%\">14</td>\r\n<td style=\"height: 33px;\" width=\"51%\">Dasar Seni Audio Visual</td>\r\n<td style=\"height: 33px;\" width=\"5%\">4</td>\r\n<td style=\"height: 33px;\" width=\"5%\">4</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" width=\"5%\">15</td>\r\n<td style=\"height: 33px;\" width=\"51%\">Produksi Audio Visual</td>\r\n<td style=\"height: 33px;\" width=\"5%\">12</td>\r\n<td style=\"height: 33px;\" width=\"5%\">12</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" colspan=\"10\" width=\"100%\"><strong>C3</strong><strong>. </strong><strong>Paket Keahlian</strong></td>\r\n</tr>\r\n<tr style=\"height: 50px;\">\r\n<td style=\"height: 50px;\" width=\"5%\">16</td>\r\n<td style=\"height: 50px;\" width=\"51%\">Penulisan Naskah dan Manajemen Produksi</td>\r\n<td style=\"height: 50px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 50px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 50px;\" width=\"5%\">4</td>\r\n<td style=\"height: 50px;\" width=\"5%\">4</td>\r\n<td style=\"height: 50px;\" width=\"5%\">4</td>\r\n<td style=\"height: 50px;\" width=\"5%\">4</td>\r\n<td style=\"height: 50px;\" width=\"5%\">4</td>\r\n<td style=\"height: 50px;\" width=\"5%\">4</td>\r\n</tr>\r\n<tr style=\"height: 50px;\">\r\n<td style=\"height: 50px;\" width=\"5%\">17</td>\r\n<td style=\"height: 50px;\" width=\"51%\">Tata Kamera, Suara dan Pencahayaan</td>\r\n<td style=\"height: 50px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 50px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 50px;\" width=\"5%\">6</td>\r\n<td style=\"height: 50px;\" width=\"5%\">6</td>\r\n<td style=\"height: 50px;\" width=\"5%\">7</td>\r\n<td style=\"height: 50px;\" width=\"5%\">7</td>\r\n<td style=\"height: 50px;\" width=\"5%\">10</td>\r\n<td style=\"height: 50px;\" width=\"5%\">10</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" width=\"5%\">18</td>\r\n<td style=\"height: 33px;\" width=\"51%\">Tata Artistik</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">4</td>\r\n<td style=\"height: 33px;\" width=\"5%\">4</td>\r\n<td style=\"height: 33px;\" width=\"5%\">4</td>\r\n<td style=\"height: 33px;\" width=\"5%\">4</td>\r\n<td style=\"height: 33px;\" width=\"5%\">4</td>\r\n<td style=\"height: 33px;\" width=\"5%\">4</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" width=\"5%\">19</td>\r\n<td style=\"height: 33px;\" width=\"51%\">Penyutradaraan</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">4</td>\r\n<td style=\"height: 33px;\" width=\"5%\">4</td>\r\n<td style=\"height: 33px;\" width=\"5%\">6</td>\r\n<td style=\"height: 33px;\" width=\"5%\">6</td>\r\n<td style=\"height: 33px;\" width=\"5%\">8</td>\r\n<td style=\"height: 33px;\" width=\"5%\">8</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" width=\"5%\">20</td>\r\n<td style=\"height: 33px;\" width=\"51%\">Editing</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">6</td>\r\n<td style=\"height: 33px;\" width=\"5%\">6</td>\r\n<td style=\"height: 33px;\" width=\"5%\">8</td>\r\n<td style=\"height: 33px;\" width=\"5%\">8</td>\r\n<td style=\"height: 33px;\" width=\"5%\">10</td>\r\n<td style=\"height: 33px;\" width=\"5%\">10</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" width=\"5%\">21</td>\r\n<td style=\"height: 33px;\" width=\"51%\">Pengembangan Produk Kreatif</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">3</td>\r\n<td style=\"height: 33px;\" width=\"5%\">3</td>\r\n<td style=\"height: 33px;\" width=\"5%\">3</td>\r\n<td style=\"height: 33px;\" width=\"5%\">3</td>\r\n<td style=\"height: 33px;\" width=\"5%\">12</td>\r\n<td style=\"height: 33px;\" width=\"5%\">12</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" colspan=\"2\" width=\"57%\">Jumlah C1, C2, C3</td>\r\n<td style=\"height: 33px;\" width=\"5%\">26</td>\r\n<td style=\"height: 33px;\" width=\"5%\">26</td>\r\n<td style=\"height: 33px;\" width=\"5%\">27</td>\r\n<td style=\"height: 33px;\" width=\"5%\">27</td>\r\n<td style=\"height: 33px;\" width=\"5%\">32</td>\r\n<td style=\"height: 33px;\" width=\"5%\">32</td>\r\n<td style=\"height: 33px;\" width=\"5%\">48</td>\r\n<td style=\"height: 33px;\" width=\"5%\">48</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" colspan=\"2\" width=\"57%\"><strong>TOTAL</strong></td>\r\n<td style=\"height: 33px;\" width=\"5%\"><strong>48</strong></td>\r\n<td style=\"height: 33px;\" width=\"5%\"><strong>48</strong></td>\r\n<td style=\"height: 33px;\" width=\"5%\"><strong>48</strong></td>\r\n<td style=\"height: 33px;\" width=\"5%\"><strong>48</strong></td>\r\n<td style=\"height: 33px;\" width=\"5%\"><strong>48</strong></td>\r\n<td style=\"height: 33px;\" width=\"5%\"><strong>48</strong></td>\r\n<td style=\"height: 33px;\" width=\"5%\"><strong>48</strong></td>\r\n<td style=\"height: 33px;\" width=\"5%\"><strong>48</strong></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<p>&nbsp;</p>\r\n<p>BIDANG KEAHLIAN : TEKNOLOGI DAN REKAYASA</p>\r\n<p>PROGRAM KEAHLIAN : TEKNIK ELEKTRONIKA</p>\r\n<p>PAKET KEAHLIAN : TEKNIK ELEKTRONIKA INDUSTRI</p>\r\n<div class=\"kekanan\">\r\n<table class=\"table table-bordered\" style=\"width: 100%; height: 1091px;\" border=\"1\" width=\"100%\"><caption>&nbsp;</caption>\r\n<thead>\r\n<tr style=\"height: 32px;\">\r\n<td class=\"text-center\" style=\"height: 98px;\" colspan=\"2\" rowspan=\"3\" width=\"70%\">MATA PELAJARAN</td>\r\n<td style=\"height: 32px;\" colspan=\"6\" width=\"29%\">KELAS</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" colspan=\"2\" width=\"9%\">X</td>\r\n<td style=\"height: 33px;\" colspan=\"2\" width=\"9%\">XI</td>\r\n<td style=\"height: 33px;\" colspan=\"2\" width=\"9%\">XII</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" width=\"4%\">1</td>\r\n<td style=\"height: 33px;\" width=\"4%\">2</td>\r\n<td style=\"height: 33px;\" width=\"4%\">1</td>\r\n<td style=\"height: 33px;\" width=\"4%\">2</td>\r\n<td style=\"height: 33px;\" width=\"4%\">1</td>\r\n<td style=\"height: 33px;\" width=\"4%\">2</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr style=\"height: 35px;\">\r\n<td style=\"height: 35px;\" colspan=\"8\" width=\"100%\"><strong>Kelompok A</strong></td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" width=\"4%\">1</td>\r\n<td style=\"height: 33px;\" width=\"65%\">Pendidikan Agama dan Budi Pekerti</td>\r\n<td style=\"height: 33px;\" width=\"4%\">3</td>\r\n<td style=\"height: 33px;\" width=\"4%\">3</td>\r\n<td style=\"height: 33px;\" width=\"4%\">3</td>\r\n<td style=\"height: 33px;\" width=\"4%\">3</td>\r\n<td style=\"height: 33px;\" width=\"4%\">3</td>\r\n<td style=\"height: 33px;\" width=\"4%\">3</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" width=\"4%\">2</td>\r\n<td style=\"height: 33px;\" width=\"65%\">Pendidikan Pancasila dan Kewarganegaraan</td>\r\n<td style=\"height: 33px;\" width=\"4%\">2</td>\r\n<td style=\"height: 33px;\" width=\"4%\">2</td>\r\n<td style=\"height: 33px;\" width=\"4%\">2</td>\r\n<td style=\"height: 33px;\" width=\"4%\">2</td>\r\n<td style=\"height: 33px;\" width=\"4%\">2</td>\r\n<td style=\"height: 33px;\" width=\"4%\">2</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" width=\"4%\">3</td>\r\n<td style=\"height: 33px;\" width=\"65%\">Bahasa Indonesia</td>\r\n<td style=\"height: 33px;\" width=\"4%\">3</td>\r\n<td style=\"height: 33px;\" width=\"4%\">3</td>\r\n<td style=\"height: 33px;\" width=\"4%\">3</td>\r\n<td style=\"height: 33px;\" width=\"4%\">3</td>\r\n<td style=\"height: 33px;\" width=\"4%\">2</td>\r\n<td style=\"height: 33px;\" width=\"4%\">2</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" width=\"4%\">4</td>\r\n<td style=\"height: 33px;\" width=\"65%\">Matematika</td>\r\n<td style=\"height: 33px;\" width=\"4%\">4</td>\r\n<td style=\"height: 33px;\" width=\"4%\">4</td>\r\n<td style=\"height: 33px;\" width=\"4%\">4</td>\r\n<td style=\"height: 33px;\" width=\"4%\">4</td>\r\n<td style=\"height: 33px;\" width=\"4%\">4</td>\r\n<td style=\"height: 33px;\" width=\"4%\">4</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" width=\"4%\">5</td>\r\n<td style=\"height: 33px;\" width=\"65%\">Sejarah Indonesia</td>\r\n<td style=\"height: 33px;\" width=\"4%\">2</td>\r\n<td style=\"height: 33px;\" width=\"4%\">2</td>\r\n<td style=\"height: 33px;\" width=\"4%\">2</td>\r\n<td style=\"height: 33px;\" width=\"4%\">2</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" width=\"4%\">6</td>\r\n<td style=\"height: 33px;\" width=\"65%\">Bahasa Inggris</td>\r\n<td style=\"height: 33px;\" width=\"4%\">3</td>\r\n<td style=\"height: 33px;\" width=\"4%\">3</td>\r\n<td style=\"height: 33px;\" width=\"4%\">3</td>\r\n<td style=\"height: 33px;\" width=\"4%\">3</td>\r\n<td style=\"height: 33px;\" width=\"4%\">3</td>\r\n<td style=\"height: 33px;\" width=\"4%\">3</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" colspan=\"8\" width=\"100%\"><strong>Kelompok B </strong></td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" width=\"4%\">7</td>\r\n<td style=\"height: 33px;\" width=\"65%\">Seni Budaya</td>\r\n<td style=\"height: 33px;\" width=\"4%\">3</td>\r\n<td style=\"height: 33px;\" width=\"4%\">3</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" width=\"4%\">8</td>\r\n<td style=\"height: 33px;\" width=\"65%\">Kewirausahaan</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"4%\">2</td>\r\n<td style=\"height: 33px;\" width=\"4%\">2</td>\r\n<td style=\"height: 33px;\" width=\"4%\">2</td>\r\n<td style=\"height: 33px;\" width=\"4%\">2</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" width=\"4%\">9</td>\r\n<td style=\"height: 33px;\" width=\"65%\">Pendidikan Jasmani, Olah Raga dan Kesehatan</td>\r\n<td style=\"height: 33px;\" width=\"4%\">2</td>\r\n<td style=\"height: 33px;\" width=\"4%\">2</td>\r\n<td style=\"height: 33px;\" width=\"4%\">2</td>\r\n<td style=\"height: 33px;\" width=\"4%\">2</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" colspan=\"2\" width=\"70%\">Jumlah A dan B</td>\r\n<td style=\"height: 33px;\" width=\"4%\">22</td>\r\n<td style=\"height: 33px;\" width=\"4%\">22</td>\r\n<td style=\"height: 33px;\" width=\"4%\">21</td>\r\n<td style=\"height: 33px;\" width=\"4%\">21</td>\r\n<td style=\"height: 33px;\" width=\"4%\">16</td>\r\n<td style=\"height: 33px;\" width=\"4%\">16</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" colspan=\"8\" width=\"100%\"><strong>Kelompok C (Peminatan)</strong></td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" colspan=\"8\" width=\"100%\"><strong>C1. Dasar Bidang Keahlian</strong></td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" width=\"4%\">10</td>\r\n<td style=\"height: 33px;\" width=\"65%\">Simulasi Digital</td>\r\n<td style=\"height: 33px;\" width=\"4%\">3</td>\r\n<td style=\"height: 33px;\" width=\"4%\">3</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" width=\"4%\">11</td>\r\n<td style=\"height: 33px;\" width=\"65%\">Fisika</td>\r\n<td style=\"height: 33px;\" width=\"4%\">4</td>\r\n<td style=\"height: 33px;\" width=\"4%\">4</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" width=\"4%\">12</td>\r\n<td style=\"height: 33px;\" width=\"65%\">Kimia</td>\r\n<td style=\"height: 33px;\" width=\"4%\">4</td>\r\n<td style=\"height: 33px;\" width=\"4%\">4</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" colspan=\"8\" width=\"100%\"><strong>C2. Dasar Program Keahlian</strong></td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" width=\"4%\">13</td>\r\n<td style=\"height: 33px;\" width=\"65%\">Kerja Bengkel dan Gambar Teknik</td>\r\n<td style=\"height: 33px;\" width=\"4%\">4</td>\r\n<td style=\"height: 33px;\" width=\"4%\">4</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" width=\"4%\">14</td>\r\n<td style=\"height: 33px;\" width=\"65%\">DasarListrik dan Elektronika</td>\r\n<td style=\"height: 33px;\" width=\"4%\">6</td>\r\n<td style=\"height: 33px;\" width=\"4%\">6</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 50px;\">\r\n<td style=\"height: 50px;\" width=\"4%\">15</td>\r\n<td style=\"height: 50px;\" width=\"65%\">Pemrograman, Mikroprosessor dan Mikrokontroller</td>\r\n<td style=\"height: 50px;\" width=\"4%\">5</td>\r\n<td style=\"height: 50px;\" width=\"4%\">5</td>\r\n<td style=\"height: 50px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 50px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 50px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 50px;\" width=\"4%\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" colspan=\"8\" width=\"100%\"><strong>C3. Paket Keahlian</strong></td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" width=\"4%\">16</td>\r\n<td style=\"height: 33px;\" width=\"65%\">Penerapan Rangkaian Elektronika</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"4%\">10</td>\r\n<td style=\"height: 33px;\" width=\"4%\">10</td>\r\n<td style=\"height: 33px;\" width=\"4%\">6</td>\r\n<td style=\"height: 33px;\" width=\"4%\">6</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" width=\"4%\">17</td>\r\n<td style=\"height: 33px;\" width=\"65%\">Sistem Pengendali Elektronik</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"4%\">10</td>\r\n<td style=\"height: 33px;\" width=\"4%\">10</td>\r\n<td style=\"height: 33px;\" width=\"4%\">14</td>\r\n<td style=\"height: 33px;\" width=\"4%\">14</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" width=\"4%\">18</td>\r\n<td style=\"height: 33px;\" width=\"65%\">Pengendali Sistem Robotik</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"4%\">4</td>\r\n<td style=\"height: 33px;\" width=\"4%\">4</td>\r\n<td style=\"height: 33px;\" width=\"4%\">5</td>\r\n<td style=\"height: 33px;\" width=\"4%\">5</td>\r\n</tr>\r\n<tr style=\"height: 50px;\">\r\n<td style=\"height: 50px;\" width=\"4%\">19</td>\r\n<td style=\"height: 50px;\" width=\"65%\">Pembuatan , Perbaikan dan Pemeliharaan Peralatan Elektronika</td>\r\n<td style=\"height: 50px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 50px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 50px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 50px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 50px;\" width=\"4%\">4</td>\r\n<td style=\"height: 50px;\" width=\"4%\">4</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" width=\"4%\">20</td>\r\n<td style=\"height: 33px;\" width=\"65%\">Pengembangan Produk Kreatif</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"4%\">3</td>\r\n<td style=\"height: 33px;\" width=\"4%\">3</td>\r\n<td style=\"height: 33px;\" width=\"4%\">3</td>\r\n<td style=\"height: 33px;\" width=\"4%\">3</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" colspan=\"2\" width=\"70%\">Jumlah C1,C2 dan C3</td>\r\n<td style=\"height: 33px;\" width=\"4%\">26</td>\r\n<td style=\"height: 33px;\" width=\"4%\">26</td>\r\n<td style=\"height: 33px;\" width=\"4%\">27</td>\r\n<td style=\"height: 33px;\" width=\"4%\">27</td>\r\n<td style=\"height: 33px;\" width=\"4%\">32</td>\r\n<td style=\"height: 33px;\" width=\"4%\">32</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" colspan=\"2\" width=\"70%\"><strong>TOTAL</strong></td>\r\n<td style=\"height: 33px;\" width=\"4%\"><strong>48</strong></td>\r\n<td style=\"height: 33px;\" width=\"4%\"><strong>48</strong></td>\r\n<td style=\"height: 33px;\" width=\"4%\"><strong>48</strong></td>\r\n<td style=\"height: 33px;\" width=\"4%\"><strong>48</strong></td>\r\n<td style=\"height: 33px;\" width=\"4%\"><strong>48</strong></td>\r\n<td style=\"height: 33px;\" width=\"4%\"><strong>48</strong></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</div>', '2021-10-17 14:45:20', '2021-10-17 14:45:20', '32', NULL);
INSERT INTO `contents` (`id`, `title`, `content`, `created_at`, `updated_at`, `sub_menu`, `slug`) VALUES
(2, 'Kegiatan Osis', '<h5 class=\"mt-5\" style=\"box-sizing: border-box; margin-bottom: 0.5rem; font-weight: 500; line-height: 1.2; font-size: 1.25rem; font-family: Raleway, sans-serif; margin-top: 3rem !important;\"><span style=\"box-sizing: border-box; font-weight: bolder;\">Kegiatan Osis</span></h5>\r\n<hr style=\"box-sizing: border-box; margin: 1rem 0px; background-color: currentcolor; border: 0px; opacity: 0.25; height: 1px; font-family: \'Open Sans\', sans-serif; font-size: 16px;\" />\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: \'Open Sans\', sans-serif; font-size: 16px;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: \'Open Sans\', sans-serif; font-size: 16px;\">Musyawarah Siswa merupakan salah satu agenda yang diwajibkan dari setiap organisasi yang ada, hal ini dikarenakan Muyawarah Siswa (MUSIS) akan membahas persoalan pembahasan Laporan pertanggung jawaban kepengurusan sebelumnya, Anggaran Dasar dan Anggaran Rumah Tangga sebuah organisasi tentunya juga akan menentukan pemimpin baru untuk memimpin organisasi tersebut. Oleh karena itu Musis adalah hal yang sakral dari sebua organisasi. Ini merupakan agenda rutin yang dilakukan OSIS SMK Taruna Bhakti setiap tahunnya.</p>', '2021-10-17 14:54:01', '2021-10-17 14:54:01', '41', NULL),
(3, 'Keterangan Jurusan', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Eligendi neque quaerat dolorem? Libero, fuga? Aspernatur voluptate aliquid beatae maiores, doloribus explicabo itaque enim nihil molestias? Eligendi illum culpa officia. Explicabo facilis reiciendis possimus dolore laudantium veniam accusantium esse reprehenderit fuga ea nesciunt accusamus similique consequuntur in magnam harum, doloribus vitae dicta obcaecati exercitationem. Nam inventore, doloribus voluptas aspernatur omnis quae eos dolores sint aut asperiores consectetur velit corporis voluptatem corrupti natus quibusdam vero dignissimos hic pariatur praesentium facere non dolorum optio laudantium! Culpa blanditiis sit perferendis quibusdam maxime inventore! Quibusdam cumque fuga alias iusto magnam! Quibusdam repudiandae doloremque aliquam minus.</p>', '2021-10-21 06:41:54', '2021-10-21 06:45:50', '48', 'keterangan-jurusan'),
(5, 'Foto Guru', NULL, '2021-10-21 06:46:14', '2021-10-21 06:46:14', '48', 'foto-guru'),
(6, 'Rekayasa Perangkat lunak', '<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Unde cum officiis maiores illum non nemo reprehenderit sunt, ex vel modi qui, deserunt eaque nulla recusandae expedita, vitae sit. A, ducimus. Nobis ad temporibus illo nulla earum veniam quisquam molestias praesentium voluptatem sit! Veniam, cupiditate maxime mollitia voluptatum autem dolorum odit quam ad molestiae, alias ratione deserunt consectetur ut quidem voluptates? Dicta neque eaque quae ullam, nisi, earum, saepe quibusdam repudiandae atque rem delectus. Dicta, ad nam. Ex quisquam temporibus animi earum velit voluptatem, libero vero eaque, doloremque dolores quod perferendis? Quidem labore magnam repudiandae saepe distinctio commodi nobis earum sint error, odit numquam dolorem vel tempore ullam quod quia qui ipsam alias deserunt veniam laudantium laboriosam! Reprehenderit nihil esse nobis.</p>', '2021-10-21 08:43:53', '2021-10-21 08:43:53', '50', 'rekayasa-perangkat-lunak');

-- --------------------------------------------------------

--
-- Table structure for table `content_sarpras`
--

CREATE TABLE `content_sarpras` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `content_sarpras`
--

INSERT INTO `content_sarpras` (`id`, `title`, `description`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Ruang Kelas', '<p><span style=\"color: #212529; font-family: \'Open Sans\', sans-serif; font-size: 16px;\">SMK Taruna Bhakti memilki ruang kelas dengan penjelasan sebagai berikut:</span></p>\r\n<ol style=\"box-sizing: border-box; padding-left: 2rem; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: \'Open Sans\', sans-serif; font-size: 16px;\">\r\n<li style=\"box-sizing: border-box;\">Jumlah Ruang Kelas : 32</li>\r\n<li style=\"box-sizing: border-box;\">Rata-rata ukuran kelas : 8 x 8 m = 64 m<span style=\"box-sizing: border-box; position: relative; font-size: 0.75em; line-height: 0; vertical-align: baseline; top: -0.5em;\">2</span></li>\r\n</ol>', '36', '2021-10-06 15:01:00', '2021-10-17 08:42:51'),
(2, 'Laboratorium Bahasa', '<p><span style=\"color: #212529; font-family: \'Open Sans\', sans-serif; font-size: 16px;\">SMK Taruna Bhakti memiliki 2 Laboratorium Bahasa yang berada pada gedung bagian Timur lantai 3. Di dalam Lab. Bahasa masing-masing memiliki seperangkat peralatan audio video untuk kegiatan pembelajaran Bahasa dengan kapasitas 20 siswa dengan masing-masing siswa menempati 1 meja multimedia.</span></p>', '36', '2021-10-06 15:02:00', '2021-10-17 08:42:32'),
(3, 'Perpustakaan', '<p><span style=\"color: #212529; font-family: \'Open Sans\', sans-serif; font-size: 16px;\">SMK Taruna Bhakti Depok memiliki Ruang Perpustakaan dengan luas ruangan : 8 m X 4 m = 32 m2 Letak perpustakaan berada pada lantai 3 gedung bagian Barat yang diapit oleh Laboratorium RPL Medium dan MM Advance. Terdapat 3 lemari besar 1 rak buku terbuat dari besi dan 2 rak kayu besar menjulang tinggi yang berisi ratusan buku dengan berbagai macam judul dan tema.</span></p>', '36', '2021-10-06 15:03:00', '2021-10-17 08:42:09'),
(4, 'Teknik Komputer dan Jaringan', '<p><span style=\"color: #212529; font-family: \'Open Sans\', sans-serif; font-size: 16px;\">Jurusan Teknik Komputer dan jaringan (TKJ) SMK Taruna Bhakti Depok memiliki 3 laboratorium yaitu Laboratorium Network dan Laboratorium Network Advance.</span></p>', '37', '2021-10-06 15:04:00', '2021-10-17 08:41:46'),
(5, 'Multimedia', '<p><span style=\"color: #212529; font-family: \'Open Sans\', sans-serif; font-size: 16px;\">Jurusan Multimedia (MM) SMK Taruna Bhakti Depok memiliki 2 laboratorium yaitu Laboratorium MM Medium dan Laboratorium MM Advance. Kedua laboratorium ini berada pada lantai yang sama tetapi dipisah oleh Laboratorium RPL Advance dan Ruang Perpustakaan. Uniknya di laboratorium ini adalah pada bagian dindingnya, dimana siswa jurusan Multimedia diberikan tantangan untuk mendesain dinding kedua ruangan tersebut dengan desain 3D.</span></p>', '37', '2021-10-06 15:05:00', '2021-10-17 08:41:26'),
(6, 'Rekayasa Perangkat Lunak', '<p><span style=\"color: #212529; font-family: \'Open Sans\', sans-serif; font-size: 16px;\">Jurusan Rekayasa Perangkat Lunak (RPL) SMK Taruna Bhakti Depok memiliki 2 laboratorium yaitu Laboratorium RPL Medium dan Laboratorium RPL Advance. Laboratorium RPL Medium berada pada lantai 4 berdekatan dengan Laboratorium Teknik Elektronika Industri. Sedangkan Laboratorium RPL Advance berapa pada lantai 3 berdekatan dengan Ruang Perpustakaan dan Laboratorium MM Medium.</span></p>', '37', '2021-10-06 15:06:00', '2021-10-17 08:40:19'),
(7, 'Broadcasting', '<p><span style=\"color: #212529; font-family: \'Open Sans\', sans-serif; font-size: 16px;\">Jurusan Broadcasting SMK Taruna Bhakti memiliki satu Laboratorium dan satu Studio Broadcast. Laboratorium Broadcasting berada pada Gedung bagian Barat lantai satu yang bersebelahan dengan Ruang Kelompok Kerja Kurikulum. Sedangkan Studio Broadcast berada pada Gedung Timur lantai 2 yang berdekatan dengan Laboratorium Simdig. Studio Broadcast ini juga dapat digunakan oleh siswa dari jurusan Multimedia.</span></p>', '37', '2021-10-06 15:06:00', '2021-10-17 08:40:58'),
(8, 'Teknik Elektronika Industri', '<p><span style=\"color: #212529; font-family: \'Open Sans\', sans-serif; font-size: 16px;\">Jurusan Teknik Elektronika Industri (TEI) SMK Taruna Bhakti Depok memiliki 1 Laboratorium yang diberi nama sama dengan jurusannya yaitu Laboratorium Teknik Elektronika Industri yang berada pada lantai 4 berdekatan dengan Laboratorium RPL Advance dan Ruang Kelas 18.</span></p>', '37', '2021-10-06 15:07:00', '2021-10-17 08:40:00'),
(9, 'Fasilitas Parkir', '<p><span style=\"font-family: \'Open Sans\', sans-serif; font-size: 16px;\">Fasilitas Parkir Kendaraan Siswa</span></p>', '38', '2021-10-06 15:19:00', '2021-10-17 08:39:40'),
(10, 'Mushola Raudhotul Ilmi', '<p><span style=\"font-family: \'Open Sans\', sans-serif; font-size: 16px;\">Fasilitas pendukung ini difungsikan selain sebagai Ruang belajar mata pelajaran Pendidikan Agama dan Budi Pekerti, difungsikan juga sebagai tempat ibadah (Musholla).Ruangan ini dapat menampung kurang lebih 120 siswa.</span></p>', '39', '2021-10-06 15:20:00', '2021-10-17 08:39:08'),
(11, 'Gedung Sekolah', '<p><span style=\"color: #212529; font-family: \'Open Sans\', sans-serif; font-size: 16px;\">SMK Taruna Bhakti memiliki Gedung milik sendiri dengan luas lantai bangungan sebesar 3.651 m&sup2; terdiri dari empat lantai</span></p>', '40', '2021-10-06 15:21:00', '2021-10-17 08:38:45'),
(12, 'Server SMK Taruna Bhakti', '<p><span style=\"color: #212529; font-family: \'Open Sans\', sans-serif; font-size: 16px;\">SMK Taruna Bhakti memiliki Server yang dipergunakan untuk menyimpan data elektronik berupa Sistem Informasi Manajemen Sekolah. Perangkat server ini terdapat di ruangan yang berada pada lantai 2 diapit oleh Laboratorium Network dan Laboratorium ACP. Luas Ruang Server adalah 96 m&sup2; yang terdiri dari dua ruang yang saling terhubung satu sama lain.</span></p>', '40', '2021-10-06 15:21:00', '2021-10-17 08:38:20'),
(13, 'Taman Sekolah', '<p><span style=\"color: #212529; font-family: \'Open Sans\', sans-serif; font-size: 16px;\">Sekolah berwawasan lingkungan, itulah yang diusung oleh SMK Taruna Bhakti. Sehingga terdapat taman-taman disetiap sudut sekolah.</span></p>', '40', '2021-10-06 15:22:00', '2021-10-17 08:37:47'),
(14, 'Pendopo', '<p><span style=\"color: #212529; font-family: \'Open Sans\', sans-serif; font-size: 16px;\">SMK Taruna Bhakti memiliki ruang penerima tamu yang mengosong konsep Joglo. Konsep terbuka sengaja diusung agar tamu yang datang ke SMK Taruna Bhakti dapat dengan nyaman menikmati taman dan kicauan burung, sehingga membuat perasaan menjadi tenang.</span></p>', '40', '2021-10-06 15:22:00', '2021-10-17 08:36:54'),
(15, 'Sarana dan Prasarana Sekolah', '<p class=\"mt-5\">Laboratorium Komputer dan Ruangan Terdiri dari :</p>\r\n<ol>\r\n<li>Lab Network Advance</li>\r\n<li>Lab Network</li>\r\n<li>Lab Maintenance and Repair</li>\r\n<li>Lab Simulasi Digital</li>\r\n<li>Lab Axioo Class Program</li>\r\n<li>Lab Multimedia Medium</li>\r\n<li>Lab Multimedia Advance</li>\r\n<li>Lab Pemrograman Basic</li>\r\n<li>Lab Pemrograman Advance</li>\r\n<li>Lab Bahasa Inggris</li>\r\n<li>Lab Video dan Audio Editing</li>\r\n<li>Studio Mini Penyiaran TV</li>\r\n<li>Ruang Server dan Fasilitas lainnya</li>\r\n</ol>\r\n<p>Lingkungan sekolah yang asri dan nyaman jauh dari bising, mudah terjangkau oleh siswa/i dari <br />berbagai jurusan dengan kendaraan umum.</p>\r\n<p>Memiliki kantin dengan konsep cafetaria yang bersih, rapi serta nyaman dengan variasi makanan dan <br />minuman yang sehat, agar terjaga kesehatan dari siswa/i.</p>\r\n<p>Seluruh ruangan sekolah terjangkau dari Zona Hotspot yang di support oleh :</p>\r\n<ol>\r\n<li>Wifi id (Telkom) dengan jaringan Fiber Optik 100 Mbps</li>\r\n<li>Biznet dengan jaringan Fiber Optik 20 Mbps Dedicated 1:1</li>\r\n<li>Varnion Techology Jaringan wireless 2 Mbps</li>\r\n</ol>', '35', '2021-10-11 00:37:00', '2021-10-17 08:36:24'),
(16, 'Samsung', NULL, '35', '2021-10-11 00:46:00', '2021-10-17 08:35:47');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{}', 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, '{}', 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, '{}', 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, '{}', 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'voyager::seeders.data_rows.roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, '{}', 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 0, 1, 1, 1, 1, 1, '{}', 9),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(30, 5, 'author_id', 'text', 'Author', 1, 1, 1, 1, 1, 1, '{}', 2),
(31, 5, 'category_id', 'text', 'Category', 0, 0, 1, 1, 1, 0, '{}', 4),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 5),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 0, 1, 1, 1, 1, 1, '{}', 6),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, '{}', 7),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 8),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 9),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 0, 0, 1, 1, 1, 1, '{}', 10),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 0, 0, 1, 1, 1, 1, '{}', 11),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 12),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 13),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 14),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, '{}', 15),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, '{}', 16),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, '{}', 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 3),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 0, 0, 1, 1, 1, 1, '{}', 4),
(48, 6, 'body', 'rich_text_box', 'Body', 0, 0, 1, 1, 1, 1, '{}', 5),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', 0, 0, 1, 1, 1, 1, '{}', 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 0, 0, 1, 1, 1, 1, '{}', 8),
(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 11),
(55, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, '{}', 12),
(56, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(57, 7, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 3),
(58, 7, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 4),
(59, 7, 'password', 'password', 'Password', 0, 0, 1, 1, 1, 1, '{}', 5),
(60, 7, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 6),
(61, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(62, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(64, 8, 'name', 'date', 'Name', 0, 1, 1, 1, 1, 1, '{}', 4),
(66, 8, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 7),
(67, 8, 'password', 'password', 'Password', 0, 0, 1, 1, 1, 1, '{}', 8),
(68, 8, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 9),
(69, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 11),
(70, 9, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(71, 9, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 3),
(72, 9, 'jabatan', 'select_dropdown', 'Jabatan', 0, 1, 1, 1, 1, 1, '{\"default\":\"Kepala Program\",\"options\":{\"Kepala Sekolah\":\"Kepala Sekolah\",\"Kepala Program\":\"Kepala Program\"}}', 4),
(73, 9, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 5),
(74, 9, 'password', 'password', 'Password', 0, 0, 1, 1, 1, 1, '{}', 6),
(75, 9, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 7),
(76, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(78, 10, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(79, 10, 'kelas', 'select_dropdown', 'Kelas', 0, 1, 1, 1, 1, 1, '{\"default\":\"X\",\"options\":{\"X\":\"X\",\"XI\":\"XI\",\"XII\":\"XII\"}}', 2),
(80, 10, 'nama_kelas', 'text', 'Nama Kelas', 0, 1, 1, 1, 1, 1, '{}', 4),
(81, 10, 'tahun_ajaran', 'text', 'Tahun Ajaran', 0, 1, 1, 1, 1, 1, '{}', 5),
(82, 10, 'wali_kelas', 'text', 'Wali Kelas', 0, 1, 1, 1, 1, 1, '{}', 6),
(83, 10, 'status', 'text', 'Status', 0, 1, 1, 1, 1, 1, '{}', 7),
(84, 10, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 8),
(85, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(86, 8, 'siswa_belongsto_kela_relationship', 'relationship', 'kelas', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Kela\",\"table\":\"kelas\",\"type\":\"belongsTo\",\"column\":\"kelas_id\",\"key\":\"id\",\"label\":\"nama_kelas\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 5),
(87, 8, 'kelas_id', 'text', 'Kelas Id', 0, 1, 1, 1, 1, 1, '{}', 6),
(88, 10, 'jurusan', 'select_dropdown', 'Jurusan', 0, 1, 1, 1, 1, 1, '{\"default\":\"RPL\",\"options\":{\"TKJ\":\"TKJ\",\"MM\":\"MM\",\"RPL\":\"RPL\",\"BC\":\"BC\",\"TEI\":\"TEI\"}}', 3),
(91, 8, 'nipd', 'timestamp', 'Nipd', 0, 0, 0, 1, 1, 1, '{\"format\":\"%Y\"}', 3),
(92, 1, 'email_verified_at', 'timestamp', 'Email Verified At', 0, 1, 1, 1, 1, 1, '{}', 6),
(93, 8, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, '{}', 10),
(94, 9, 'nik', 'text', 'Nik', 0, 1, 1, 1, 1, 1, '{}', 2),
(95, 7, 'nik', 'text', 'Nik', 0, 1, 1, 1, 1, 1, '{}', 2),
(96, 7, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, '{}', 8),
(97, 9, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, '{}', 9),
(98, 7, 'jabatan', 'select_dropdown', 'Jabatan', 0, 1, 1, 1, 1, 1, '{\"options\":{\"admin\":\"Admin\",\"litbang\":\"Litbang\",\"tu\":\"TU\",\"bkk\":\"BKK\",\"hubin\":\"Hubin\",\"kurikulum\":\"Kurikulum\",\"kesiswaan\":\"Kesiswaan\",\"sarpras\":\"Sarpras\",\"kejuruan\":\"Kejuruan\",\"pembimbing\":\"Pembimbing\"}}', 9),
(104, 6, 'page_belongsto_category_relationship', 'relationship', 'categories', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Navbar\",\"table\":\"navbars\",\"type\":\"belongsTo\",\"column\":\"category_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 13),
(105, 6, 'category_id', 'text', 'Category Id', 0, 1, 1, 1, 1, 1, '{}', 13),
(106, 16, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(107, 16, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(108, 16, 'tahun_lulus', 'text', 'Tahun Lulus', 0, 1, 1, 1, 1, 1, '{}', 3),
(109, 16, 'nama_perusahaan', 'text', 'Nama Perusahaan', 0, 1, 1, 1, 1, 1, '{}', 4),
(110, 16, 'posisi', 'text', 'Posisi', 0, 1, 1, 1, 1, 1, '{}', 5),
(111, 16, 'tahun_kerja', 'text', 'Tahun Kerja', 0, 1, 1, 1, 1, 1, '{}', 6),
(112, 16, 'penghasilan', 'text', 'Penghasilan', 0, 1, 1, 1, 1, 1, '{}', 7),
(113, 16, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 11),
(114, 16, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 12),
(115, 17, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(118, 17, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(119, 17, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(120, 19, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(121, 19, 'logo_perusahaan', 'image', 'Logo Perusahaan', 0, 1, 1, 1, 1, 1, '{}', 2),
(122, 19, 'nama_perusahaan', 'text', 'Nama Perusahaan', 0, 1, 1, 1, 1, 1, '{}', 3),
(123, 19, 'alamat_perusahaan', 'text_area', 'Alamat Perusahaan', 0, 1, 1, 1, 1, 1, '{}', 4),
(124, 19, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(125, 19, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(126, 17, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(127, 20, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(128, 20, 'jurusan', 'text', 'Jurusan', 0, 1, 1, 1, 1, 1, '{}', 2),
(129, 20, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(130, 20, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(181, 16, 'alumni_belongsto_jurusan_relationship', 'relationship', 'jurusans', 0, 0, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Jurusan\",\"table\":\"jurusans\",\"type\":\"belongsTo\",\"column\":\"jurusan\",\"key\":\"jurusan\",\"label\":\"jurusan\",\"pivot_table\":\"alumnis\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(182, 16, 'categories_alumnis', 'text', 'Categories Alumnis', 0, 1, 1, 1, 1, 1, '{\"options\":{\"Bekerja\":\"Bekerja\",\"Kuliah\":\"Kuliah\",\"Wirausaha\":\"Wirausaha\"}}', 8),
(183, 16, 'jurusan', 'text', 'Jurusan', 0, 1, 1, 1, 1, 1, '{}', 9),
(184, 20, 'singkatan', 'text', 'Singkatan', 0, 1, 1, 1, 1, 1, '{}', 5),
(189, 30, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(190, 30, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(191, 30, 'description', 'rich_text_box', 'Description', 0, 1, 1, 1, 1, 1, '{}', 3),
(192, 30, 'category_id', 'text', 'Category Page Sarpras', 0, 0, 1, 1, 1, 1, '{}', 4),
(193, 30, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(194, 30, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(195, 30, 'content_sarpra_belongsto_category_sarpra_relationship', 'relationship', 'category_sarpras', 0, 1, 1, 1, 1, 1, '{\"title\":\"Sarana Pra Sarana\",\"model\":\"App\\\\Models\\\\Page\",\"table\":\"pages\",\"type\":\"belongsTo\",\"column\":\"category_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"alumnis\",\"pivot\":\"0\",\"taggable\":\"0\"}', 5),
(196, 31, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(197, 31, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 1, 0, 1, '{}', 4),
(198, 31, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(199, 31, 'image', 'file', 'Image', 0, 1, 1, 1, 1, 1, '{}', 2),
(200, 31, 'content_id', 'text', 'Content Id', 0, 1, 1, 1, 1, 1, '{}', 3),
(201, 31, 'gallery_sarpra_belongsto_content_sarpra_relationship', 'relationship', 'content_sarpras', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\ContentSarpra\",\"table\":\"content_sarpras\",\"type\":\"belongsTo\",\"column\":\"content_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"alumnis\",\"pivot\":\"0\",\"taggable\":\"0\"}', 6),
(203, 32, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(204, 32, 'nama_mapel', 'text', 'Nama Mapel', 1, 1, 1, 1, 1, 1, '{}', 2),
(205, 32, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(206, 32, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(207, 1, 'user_belongsto_mapel_relationship', 'relationship', 'mapels', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Mapel\",\"table\":\"mapels\",\"type\":\"belongsTo\",\"column\":\"mapel_id\",\"key\":\"id\",\"label\":\"nama_mapel\",\"pivot_table\":\"alumnis\",\"pivot\":\"0\",\"taggable\":\"0\"}', 13),
(208, 31, 'nama_photo', 'text', 'Nama Photo', 0, 1, 1, 1, 1, 1, '{}', 6),
(209, 19, 'website_perusahaan', 'text', 'Website Perusahaan', 0, 1, 1, 1, 1, 1, '{}', 7),
(210, 16, 'status', 'select_dropdown', 'Status', 0, 1, 1, 1, 1, 1, '{\"default\":\"UNPUBLISHED\",\"options\":{\"PUBLISED\":\"PUBLISHED\",\"UNPUBLISED\":\"UNPUBLISED\"}}', 12),
(211, 34, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(212, 34, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(213, 34, 'slug', 'text', 'Slug', 0, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 3),
(214, 34, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 4),
(215, 34, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(216, 36, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(217, 36, 'photo', 'image', 'Photo', 0, 1, 1, 1, 1, 1, '{}', 2),
(218, 36, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 3),
(219, 36, 'description', 'text', 'Description', 0, 1, 1, 1, 1, 1, '{}', 4),
(220, 36, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 5),
(221, 36, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(222, 37, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(223, 37, 'video', 'file', 'Video', 0, 1, 1, 1, 1, 1, '{}', 2),
(224, 37, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 3),
(225, 37, 'description', 'text', 'Description', 0, 1, 1, 1, 1, 1, '{}', 4),
(226, 37, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(227, 37, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(228, 34, 'status', 'select_dropdown', 'Status', 0, 1, 1, 1, 1, 1, '{\"default\":\"Active\",\"options\":{\"Active\":\"Active\",\"Inactive\":\"Inactive\"}}', 6),
(229, 38, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(230, 38, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(231, 38, 'content', 'rich_text_box', 'Content', 0, 1, 1, 1, 1, 1, '{}', 3),
(232, 38, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 4),
(233, 38, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(234, 38, 'content_belongsto_page_relationship', 'relationship', 'pages', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Page\",\"table\":\"pages\",\"type\":\"belongsTo\",\"column\":\"sub_menu\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"alumnis\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7),
(235, 38, 'sub_menu', 'text', 'Sub Menu', 0, 1, 1, 1, 1, 1, '{}', 6),
(236, 39, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(237, 39, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 2),
(238, 39, 'heading', 'text', 'Heading', 0, 1, 1, 1, 1, 1, '{}', 3),
(239, 39, 'subheading', 'text', 'Subheading', 0, 1, 1, 1, 1, 1, '{}', 4),
(240, 39, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(241, 39, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(242, 38, 'slug', 'text', 'Slug', 0, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"}}', 7),
(243, 42, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(244, 42, 'nama_guru', 'text', 'Nama Guru', 0, 1, 1, 1, 1, 1, '{}', 2),
(245, 42, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 3),
(246, 42, 'jurusan', 'text', 'Jurusan', 0, 1, 1, 1, 1, 1, '{}', 4),
(247, 42, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(248, 42, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(249, 42, 'guru_kejuruan_belongsto_page_relationship', 'relationship', 'pages', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Page\",\"table\":\"pages\",\"type\":\"belongsTo\",\"column\":\"jurusan\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"alumnis\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7),
(250, 44, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(251, 44, 'nama_guru', 'text', 'Nama Guru', 0, 1, 1, 1, 1, 1, '{}', 2),
(252, 44, 'foto', 'image', 'Foto', 0, 1, 1, 1, 1, 1, '{}', 3),
(253, 44, 'kategori_guru', 'text', 'Kategori Guru', 0, 1, 1, 1, 1, 1, '{}', 4),
(254, 44, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(255, 44, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(256, 44, 'deleted_at', 'timestamp', 'Deleted At', 0, 1, 1, 1, 1, 1, '{}', 7),
(257, 44, 'kategori_id', 'text', 'Kategori Id', 0, 1, 1, 1, 1, 1, '{}', 8),
(258, 45, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(259, 45, 'nama_kategori', 'text', 'Nama Kategori', 0, 1, 1, 1, 1, 1, '{}', 2),
(260, 45, 'foto', 'image', 'Foto', 0, 1, 1, 1, 1, 1, '{}', 3),
(261, 45, 'caption', 'rich_text_box', 'Caption', 0, 1, 1, 1, 1, 1, '{}', 4),
(262, 45, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(263, 45, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(264, 45, 'deleted_at', 'timestamp', 'Deleted At', 0, 1, 1, 1, 1, 1, '{}', 7),
(265, 45, 'slug', 'text', 'Slug', 0, 1, 1, 1, 1, 1, '{}', 8),
(266, 44, 'gallery_belongsto_kategori_relationship', 'relationship', 'kategoris', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Kategori\",\"table\":\"kategoris\",\"type\":\"belongsTo\",\"column\":\"kategori_guru\",\"key\":\"id\",\"label\":\"nama_kategori\",\"pivot_table\":\"alumnis\",\"pivot\":\"0\",\"taggable\":\"0\"}', 9),
(267, 1, 'user_belongsto_kela_relationship', 'relationship', 'kelas', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Kela\",\"table\":\"kelas\",\"type\":\"belongsTo\",\"column\":\"kelas_siswa\",\"key\":\"id\",\"label\":\"nama_kelas\",\"pivot_table\":\"alumnis\",\"pivot\":\"0\",\"taggable\":\"0\"}', 14),
(268, 47, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(269, 47, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 2),
(270, 47, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 3),
(271, 47, 'slug', 'text', 'Slug', 0, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 4),
(272, 47, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(273, 47, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(274, 1, 'nomor_induk', 'text', 'Nomor Induk', 0, 1, 1, 1, 1, 1, '{}', 12),
(275, 1, 'jabatan_guru', 'text', 'Jabatan Guru', 0, 1, 1, 1, 1, 1, '{}', 13),
(276, 1, 'kelas_siswa', 'text', 'Kelas Siswa', 0, 1, 1, 1, 1, 1, '{}', 14),
(277, 1, 'spesifc_role', 'text', 'Jabatan Guru', 1, 1, 1, 1, 1, 1, '{}', 15),
(278, 1, 'mapel_id', 'text', 'Mapel Id', 0, 1, 1, 1, 1, 1, '{}', 16),
(279, 48, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(280, 48, 'bio', 'text', 'Bio', 0, 1, 1, 1, 1, 1, '{}', 2),
(281, 48, 'no_telfon', 'text', 'No Telfon', 0, 1, 1, 1, 1, 1, '{}', 3),
(282, 48, 'skill', 'text', 'Skill', 0, 1, 1, 1, 1, 1, '{}', 4),
(283, 48, 'cv', 'text', 'Cv', 0, 1, 1, 1, 1, 1, '{}', 5),
(284, 48, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(285, 48, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(286, 49, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(287, 49, 'nama_skill', 'text', 'Nama Skill', 0, 1, 1, 1, 1, 1, '{}', 2),
(288, 49, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(289, 49, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(290, 1, 'user_belongsto_detail_user_relationship', 'relationship', 'detail_users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\DetailUser\",\"table\":\"detail_users\",\"type\":\"belongsTo\",\"column\":\"detail_user\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"alumnis\",\"pivot\":\"0\",\"taggable\":null}', 17);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2021-09-21 07:32:51', '2021-10-22 06:47:40'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2021-09-21 07:32:51', '2021-09-21 07:32:51'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2021-09-21 07:32:52', '2021-09-21 07:32:52'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2021-09-21 07:33:09', '2021-09-21 07:33:09'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2021-09-21 07:33:11', '2021-10-17 06:25:06'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2021-09-21 07:33:12', '2021-10-17 04:33:32'),
(7, 'gurus', 'gurus', 'Guru', 'Gurus', NULL, 'App\\Models\\Guru', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-09-21 20:11:32', '2021-09-23 21:03:11'),
(8, 'siswas', 'siswas', 'Siswa', 'Siswas', NULL, 'App\\Models\\Siswa', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-09-21 20:12:14', '2021-10-16 12:51:55'),
(9, 'managers', 'managers', 'Manager', 'Managers', NULL, 'App\\Models\\Manager', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-09-21 20:20:00', '2021-09-23 20:59:38'),
(10, 'kelas', 'kelas', 'Kela', 'Kelas', NULL, 'App\\Models\\Kela', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-09-21 20:32:15', '2021-09-22 06:42:10'),
(16, 'alumnis', 'alumnis', 'Alumni', 'Alumnis', NULL, 'App\\Models\\Alumni', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-09-29 21:41:44', '2021-10-14 13:06:02'),
(17, 'categories_alumnis', 'categories-alumnis', 'Categories Alumni', 'Categories Alumnis', NULL, 'App\\Models\\CategoriesAlumni', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-09-29 21:51:04', '2021-09-29 23:51:34'),
(19, 'partners', 'partners', 'Partner', 'Partners', NULL, 'App\\Models\\Partner', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-09-29 21:52:12', '2021-10-13 05:13:25'),
(20, 'jurusans', 'jurusans', 'Jurusan', 'Jurusans', NULL, 'App\\Models\\Jurusan', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-09-29 23:52:50', '2021-10-02 07:37:34'),
(30, 'content_sarpras', 'content-sarpras', 'Content Sarpra', 'Content Sarpras', NULL, 'App\\Models\\ContentSarpra', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-10-06 14:30:52', '2021-10-17 08:34:43'),
(31, 'gallery_sarpras', 'gallery-sarpras', 'Gallery Sarpra', 'Gallery Sarpras', NULL, 'App\\Models\\GallerySarpra', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-10-06 14:35:52', '2021-10-17 02:53:32'),
(32, 'mapels', 'mapels', 'Mapel', 'Mapels', NULL, 'App\\Models\\Mapel', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-10-07 02:56:07', '2021-10-07 02:56:07'),
(34, 'navbars', 'navbars', 'Navbar', 'Navbars', NULL, 'App\\Models\\Navbar', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-10-16 04:24:34', '2021-10-17 06:17:25'),
(36, 'images', 'images', 'Image', 'Images', NULL, 'App\\Models\\Image', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-10-17 03:22:34', '2021-10-17 03:22:34'),
(37, 'videos', 'videos', 'Video', 'Videos', NULL, 'App\\Models\\Video', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-10-17 03:24:19', '2021-10-18 05:43:23'),
(38, 'contents', 'contents', 'Content', 'Contents', NULL, 'App\\Models\\Content', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-10-17 09:10:31', '2021-10-21 06:45:28'),
(39, 'backgrounds', 'backgrounds', 'Background', 'Backgrounds', NULL, 'App\\Models\\Background', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-10-18 07:11:15', '2021-10-18 07:11:15'),
(42, 'guru_kejuruans', 'guru-kejuruans', 'Guru Kejuruan', 'Guru Kejuruans', '&#xe066;', 'App\\Models\\GuruKejuruan', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-10-21 07:08:03', '2021-10-21 07:11:00'),
(44, 'galleries', 'galleries', 'Gallery', 'Galleries', NULL, 'App\\Models\\Gallery', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-10-21 07:12:49', '2021-10-21 07:14:21'),
(45, 'kategoris', 'kategoris', 'Kategori', 'Kategoris', NULL, 'App\\Models\\Kategori', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-10-21 07:13:41', '2021-10-21 07:13:41'),
(47, 'ekskuls', 'ekskuls', 'Ekskul', 'Ekskuls', NULL, 'App\\Models\\Ekskul', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-10-21 08:57:59', '2021-10-21 08:57:59'),
(48, 'detail_users', 'detail-users', 'Detail User', 'Detail Users', NULL, 'App\\Models\\DetailUser', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-10-23 04:09:48', '2021-10-23 04:09:48'),
(49, 'skills', 'skills', 'Skill', 'Skills', NULL, 'App\\Models\\Skill', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-10-23 04:10:19', '2021-10-23 04:10:19');

-- --------------------------------------------------------

--
-- Table structure for table `detail_users`
--

CREATE TABLE `detail_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `bio` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_telfon` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skill` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cv` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ekskuls`
--

CREATE TABLE `ekskuls` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ekskuls`
--

INSERT INTO `ekskuls` (`id`, `image`, `title`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'ekskuls/October2021/fJRvSSE8wBktBSYM6loX.png', 'Volley Ball', 'volley-ball', '2021-10-21 08:59:14', '2021-10-21 08:59:14'),
(2, 'ekskuls/October2021/h5LOMjyTF4QeFpPCmOGt.png', 'Dance', 'dance', '2021-10-21 08:59:53', '2021-10-21 08:59:53'),
(3, 'ekskuls/October2021/1RYFDpTreAFz4AA1qtf4.png', 'Futsal', 'futsal', '2021-10-21 09:00:19', '2021-10-21 09:00:19'),
(4, 'ekskuls/October2021/QtEbQpl4xLxusU4gdUF8.png', 'Pencak silat', 'pencak-silat', '2021-10-21 09:00:48', '2021-10-21 09:00:48'),
(5, 'ekskuls/October2021/GEWdAyJIGuMhDruMncJQ.png', 'Hadroh', 'hadroh', '2021-10-21 09:01:22', '2021-10-21 09:01:22'),
(6, 'ekskuls/October2021/Tqi6ozfRLUXvxdNBYC7h.png', 'Japanese Club', 'japanese-club', '2021-10-21 09:02:20', '2021-10-21 09:02:20'),
(7, 'ekskuls/October2021/wTxxDVcGsrdD7jiYLZrv.png', 'Basket Ball', 'basket-ball', '2021-10-21 09:02:54', '2021-10-21 09:02:54'),
(8, 'ekskuls/October2021/Mi2H3YMXGqnBNq7kxeCA.png', 'PMR', 'pmr', '2021-10-21 09:03:35', '2021-10-21 09:03:35'),
(9, 'ekskuls/October2021/D2qIICbaaoqwAhnz2ctK.png', 'Paskibra', 'paskibra', '2021-10-21 09:03:55', '2021-10-21 09:03:55'),
(10, 'ekskuls/October2021/6LWJE0NJcGDNgS8tAmHu.png', 'Bulu Tangkis', 'bulu-tangkis', '2021-10-21 09:04:28', '2021-10-21 09:04:28');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) NOT NULL,
  `nama_guru` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foto` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kategori_guru` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `kategori_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `nama_guru`, `foto`, `kategori_guru`, `created_at`, `updated_at`, `deleted_at`, `kategori_id`) VALUES
(1, 'Dwi Sustiawan, S,Pd', 'galleries\\October2021\\tRjuTMl5QJClLWHL7LQO.jpg', '5', '2021-10-02 04:41:54', '2021-10-02 06:14:10', NULL, NULL),
(2, 'Edena Dharma Putri, SE', 'galleries\\October2021\\oNWzOLkv1y2xOjhIlDZH.jpg', '2', '2021-10-02 04:51:59', '2021-10-04 06:39:54', NULL, NULL),
(3, 'Abdul Fatah, SE', 'galleries\\October2021\\bLgBkJFlPNwnXdJTGxqQ.jpg', '5', '2021-10-02 04:54:28', '2021-10-04 06:40:17', NULL, NULL),
(4, 'Abdul Hamid', 'galleries\\October2021\\NlsROJQYTnELVuI9NarR.jpg', '4', '2021-10-02 04:55:28', '2021-10-04 05:36:36', NULL, NULL),
(5, 'Agung Setiawan, ST', 'galleries\\October2021\\lrdj4aZyxNccTeDCxSjo.jpg', '1', '2021-10-02 04:56:15', '2021-10-04 05:38:33', NULL, NULL),
(7, 'Agus Diana, S. Kom', 'galleries\\October2021\\obUL7ZeK0rVEbOa6O6js.jpg', '4', '2021-10-02 04:57:12', '2021-10-02 04:57:24', NULL, NULL),
(8, 'Ahmad Fadli', 'galleries\\October2021\\1IuYy97e7soRWl1NUKzH.jpg', NULL, '2021-10-02 04:58:34', '2021-10-02 04:58:34', NULL, NULL),
(9, 'Ahmad Samaun', 'galleries\\October2021\\58PCcMA3UZ15ZhcU2RcI.jpg', NULL, '2021-10-02 04:59:11', '2021-10-02 04:59:11', NULL, NULL),
(10, 'Aji Sulistyo', 'galleries\\October2021\\OdiyiQZWm6jGvjt6hMVX.jpg', '4', '2021-10-02 05:00:30', '2021-10-04 05:37:56', NULL, NULL),
(11, 'Aldien Ramadhian', 'galleries\\October2021\\UnkkqE3CqVEZxlxBdOeA.jpg', '2', '2021-10-02 05:01:09', '2021-10-04 06:45:56', NULL, NULL),
(12, 'Ana Susilowati S. Pd', 'galleries\\October2021\\VLBhTQK6bIOQ4G0GekAn.jpg', '1', '2021-10-02 05:03:26', '2021-10-02 05:03:26', NULL, NULL),
(13, 'Andri', 'galleries\\October2021\\WmOmLNUtFfogg2wdA0p4.jpg', NULL, '2021-10-02 06:26:32', '2021-10-02 06:26:32', NULL, NULL),
(14, 'Aniek Rochmawati S. Pd', 'galleries\\October2021\\SoQrORj4EX1zl3sJeKck.jpg', '5', '2021-10-02 06:27:33', '2021-10-02 06:27:33', NULL, NULL),
(16, 'Anita Triana S, S. Pd', 'galleries\\October2021\\2nC8ZVAQeuzaoruPcuBa.jpg', '4', '2021-10-02 07:02:04', '2021-10-04 06:33:39', NULL, NULL),
(17, 'Annisa Anggi Rahayu, S. Ds', 'galleries\\October2021\\fAx2R0l4SxITZmUpeHd4.jpg', '4', '2021-10-02 07:03:07', '2021-10-04 05:39:37', NULL, NULL),
(19, 'Atik Solihat, S. Pd', 'galleries\\October2021\\7rVoofWGzThhiqNWOaRu.jpg', '1', '2021-10-02 07:05:59', '2021-10-04 06:37:46', NULL, NULL),
(20, 'Ajizah Afriani, A. Md', 'galleries\\October2021\\dWPZoRuGrsAg5ZfSyRWB.jpg', '2', '2021-10-02 07:06:41', '2021-10-04 06:40:45', NULL, NULL),
(21, 'Casdik, ST', 'galleries\\October2021\\aIVebrY7Fy7JXuppvHgb.jpg', '4', '2021-10-02 07:34:16', '2021-10-04 05:39:56', NULL, NULL),
(22, 'Devi Maryani, A. Md', 'galleries\\October2021\\s4EmUGfa44JomIMSU1SG.jpg', '2', '2021-10-02 07:35:04', '2021-10-04 06:37:25', NULL, NULL),
(23, 'Dharma Wahyu Nurhidayati, A. Md', 'galleries\\October2021\\HWeIlJVzH6zkvdVJ9VzM.jpg', '4', '2021-10-02 07:36:18', '2021-10-04 05:40:14', NULL, NULL),
(25, 'Diaz Rika', 'galleries\\October2021\\rHkfd10kGqvo8SE4A0lU.jpg', '1', '2021-10-04 05:16:29', '2021-10-04 05:16:29', NULL, NULL),
(26, 'Drs. Abdul Rosyid', 'galleries\\October2021\\w8J1nGUwfouDZF3S6PZV.jpg', '5', '2021-10-04 05:17:24', '2021-10-04 06:36:47', NULL, NULL),
(27, 'Fariz Ahmad', 'galleries\\October2021\\hVDTt8qG7NNOQ6BAsGgI.jpg', '5', '2021-10-04 05:18:23', '2021-10-04 05:41:27', NULL, NULL),
(28, 'Fatimah Elvi Br. Tarigan, S.Kom', 'galleries\\October2021\\BirWdYVQQrdnnS7mjEo4.jpg', '5', '2021-10-04 05:20:02', '2021-10-04 05:20:02', NULL, NULL),
(29, 'Furida Lusi Siagian, S,Pd. M', 'galleries\\October2021\\o6CdnV42AJJ4paHPgJnS.jpg', '5', '2021-10-04 05:21:06', '2021-10-04 05:21:06', NULL, NULL),
(30, 'Gebbi Abda Mahes Multazam, S.Pdi', 'galleries\\October2021\\2Rhek90XRablYiYiFFd6.jpg', '5', '2021-10-04 05:23:39', '2021-10-04 05:40:41', NULL, NULL),
(32, 'Heni Siswanti, S.Psi', 'galleries\\October2021\\P4C1snsPAJJXFzAb7qN5.jpg', '3', '2021-10-04 05:26:49', '2021-10-04 05:26:49', NULL, NULL),
(33, 'Hesti Herawati, A.Md', 'galleries\\October2021\\a4ZZ7ou5NtdOQeZeEptP.jpg', '4', '2021-10-04 05:28:14', '2021-10-04 05:28:14', NULL, NULL),
(34, 'Ika Rafika, S. Pd', 'galleries\\October2021\\RrMLiuoHdDawKvfLbjEI.jpg', '3', '2021-10-04 05:29:04', '2021-10-04 06:36:01', NULL, NULL),
(35, 'Ilham Wahyudi Siadi', 'galleries\\October2021\\ESskwYamAkuWzxzODLmO.jpg', '4', '2021-10-04 05:30:55', '2021-10-04 06:19:38', NULL, NULL),
(36, 'Ismawardani Retnosari, S.Pd', 'galleries\\October2021\\o4ojAmVQ2WeQmYyF6c9F.jpg', '5', '2021-10-04 05:31:55', '2021-10-04 05:41:06', NULL, NULL),
(37, 'Iwiek Rianawati, SE', 'galleries\\October2021\\FSqmULGsLD5lgsUKL39I.jpg', '2', '2021-10-04 05:34:13', '2021-10-04 06:35:43', NULL, NULL),
(38, 'Jumadi, S. Sosi', 'galleries\\October2021\\RhGr8G0EccAzGP6UxYqr.jpg', '5', '2021-10-04 05:42:37', '2021-10-04 05:42:50', NULL, NULL),
(39, 'Junaedi', 'galleries\\October2021\\lYPUbJldzK0A2XdTnB55.jpg', NULL, '2021-10-04 05:43:42', '2021-10-04 05:43:42', NULL, NULL),
(40, 'Lia Debby Juwita, S. Pd', 'galleries\\October2021\\KfzZaacqYwz9vVrTiA33.jpg', '5', '2021-10-04 05:45:25', '2021-10-04 05:45:25', NULL, NULL),
(41, 'Lidya Rachmawati', 'galleries\\October2021\\yqYZpLPkWWYhDYeEPATh.jpg', '5', '2021-10-04 05:46:07', '2021-10-04 05:46:07', NULL, NULL),
(42, 'M. Yahya', 'galleries\\October2021\\HkgNTPEFjvujNtSJH4nK.jpg', NULL, '2021-10-04 05:46:51', '2021-10-04 05:46:51', NULL, NULL),
(43, 'Maesitoh, S. Pd', 'galleries\\October2021\\bmlZZXaPx3k9C5SfwORw.jpg', '5', '2021-10-04 05:47:57', '2021-10-04 05:47:57', NULL, NULL),
(44, 'Muchlas Edi Kiswanto, S. Pd', 'galleries\\October2021\\KXxzHH7jtrpPoz5VlbUa.jpg', '5', '2021-10-04 05:49:11', '2021-10-04 06:35:13', NULL, NULL),
(45, 'Muhammad Rheza Ramandhito', 'galleries\\October2021\\bHZfDnxlvSfuEoUhgkO9.jpg', '1', '2021-10-04 05:50:17', '2021-10-04 05:50:17', NULL, NULL),
(46, 'Novita Ambarwati. S, Pd', 'galleries\\October2021\\CVsxn4jeQGRxPRNW51RI.jpg', '5', '2021-10-04 05:51:04', '2021-10-04 05:51:04', NULL, NULL),
(47, 'Nursidik, ST', 'galleries\\October2021\\6AO7EAzyeOvt5c6ws4bN.jpg', '5', '2021-10-04 05:51:57', '2021-10-04 06:36:21', NULL, NULL),
(48, 'Prasetyadi Eka Yusnanda, S. Pd', 'galleries\\October2021\\XQAz1x3yiTh6vporyMx5.jpg', '5', '2021-10-04 05:52:50', '2021-10-04 05:52:50', NULL, NULL),
(49, 'Puguh Rismadi Ismail, S. Kom', 'galleries\\October2021\\JcHZteiKEeb3KjEaJSsZ.jpg', '4', '2021-10-04 05:54:28', '2021-10-04 05:54:28', NULL, NULL),
(50, 'Ratna Wati, SE', 'galleries\\October2021\\b7LTJnvwYUPZQB2fJZNY.jpg', '5', '2021-10-04 05:55:04', '2021-10-04 05:55:04', NULL, NULL),
(52, 'Reysa Romadhoni', 'galleries\\October2021\\BZiSBSVHjvB6Zfe9Co8L.jpg', '2', '2021-10-04 05:57:06', '2021-10-04 06:34:42', NULL, NULL),
(53, 'Reza Maulana, M. Kom', 'galleries\\October2021\\gaqqiMZyDaCQy3fFK5Xa.jpg', '4', '2021-10-04 05:57:46', '2021-10-04 05:57:46', NULL, NULL),
(55, 'Rina Wastanti, S. Ikom', 'galleries\\October2021\\UsA3Q1o6UQtwQQMg7wNq.jpg', '4', '2021-10-04 06:00:09', '2021-10-04 06:00:09', NULL, NULL),
(57, 'Sarah Andriani Saputri, S. Pd', 'galleries\\October2021\\k4Xy0jkplfhzt0XjzUhK.jpg', '2', '2021-10-04 06:02:01', '2021-10-04 06:28:34', NULL, NULL),
(58, 'Sheila Riani Putri, S. Psi', 'galleries\\October2021\\yy0OIbfaaf6zzBAsz7m1.jpg', '3', '2021-10-04 06:02:57', '2021-10-04 06:02:57', NULL, NULL),
(59, 'Shinta Dewi, S. Pd', 'galleries\\October2021\\37lpWXvVFxegd8DSidOw.jpg', '4', '2021-10-04 06:03:54', '2021-10-04 06:03:54', NULL, NULL),
(60, 'Shova Al-Marwah, S. Pd', 'galleries\\October2021\\Wj6A6nHBJsropAAwVTYQ.jpg', '5', '2021-10-04 06:05:39', '2021-10-04 06:05:39', NULL, NULL),
(61, 'Sinta Nuralifah, S. Ikom', 'galleries\\October2021\\60aAmjwKSYLMgyYPUIYV.jpg', '4', '2021-10-04 06:06:21', '2021-10-04 06:28:11', NULL, NULL),
(62, 'Siti Sundari, S. Pd', 'galleries\\October2021\\c1cumLr9huC7ga5PpkE3.jpg', '1', '2021-10-04 06:07:20', '2021-10-04 06:07:20', NULL, NULL),
(63, 'Slamet', 'galleries\\October2021\\pTkeSah1DQwrp6cKVzSt.jpg', NULL, '2021-10-04 06:08:00', '2021-10-04 06:08:00', NULL, NULL),
(64, 'Sugeng Santoso, S. Ag', 'galleries\\October2021\\P35zOHqON4WSUfH0EeqG.jpg', '5', '2021-10-04 06:09:29', '2021-10-04 06:09:29', NULL, NULL),
(65, 'Sukamdi', 'galleries\\October2021\\9XQKTHdwP94TLv14tFRv.jpg', NULL, '2021-10-04 06:10:17', '2021-10-04 06:10:17', NULL, NULL),
(66, 'Supriharin, S. Sos', 'galleries\\October2021\\C5spmc5Nj3tSBDDTuhv7.jpg', '5', '2021-10-04 06:11:18', '2021-10-04 06:11:18', NULL, NULL),
(67, 'Syamsul Ma\'arif, S. Kom', 'galleries\\October2021\\dDE3HcARtt0MpZd8EZb5.jpg', '5', '2021-10-04 06:12:09', '2021-10-04 06:12:09', NULL, NULL),
(68, 'Tanzela Azizi', 'galleries\\October2021\\mOJjRMwoIGvXkIqqHNXi.jpg', '1', '2021-10-04 06:12:47', '2021-10-04 06:12:47', NULL, NULL),
(69, 'Tety Suryani', 'galleries\\October2021\\XeshdJVGYSjGRZZ7nuYs.jpg', '5', '2021-10-04 06:13:45', '2021-10-04 06:13:45', NULL, NULL),
(70, 'Tuahta Hasiholan, S.Kom', 'galleries\\October2021\\lpe7XxWPqlwsZy6VpAbL.jpg', '4', '2021-10-04 06:15:21', '2021-10-04 06:15:21', NULL, NULL),
(71, 'Verra Rousmawati, M. Sc', 'galleries\\October2021\\ggXN1Pj2nqCSytJ4v1h1.jpg', '1', '2021-10-04 06:16:41', '2021-10-04 06:17:02', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gallery_sarpras`
--

CREATE TABLE `gallery_sarpras` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gallery_sarpras`
--

INSERT INTO `gallery_sarpras` (`id`, `created_at`, `updated_at`, `image`, `content_id`, `nama_photo`) VALUES
(1, '2021-10-06 22:16:09', '2021-10-06 22:16:09', 'gallery-sarpras\\October2021\\uiXMs0HvpvuKz9MThdBQ.png', '1', NULL),
(5, '2021-10-06 22:18:59', '2021-10-06 22:18:59', 'gallery-sarpras\\October2021\\upe2cS30dg0RGoAHlkXB.png', '3', NULL),
(6, '2021-10-06 22:19:00', '2021-10-06 22:19:27', 'gallery-sarpras\\October2021\\CsOpZi7p1rRDlmAtTxtZ.png', '3', NULL),
(7, '2021-10-06 22:19:47', '2021-10-06 22:19:47', 'gallery-sarpras\\October2021\\Fze8W5KOfatoL10xSiPL.png', '3', NULL),
(8, '2021-10-11 00:59:05', '2021-10-11 00:59:05', 'gallery-sarpras\\October2021\\lypubhSP0AKwLa3Yi9WR.jpg', '15', NULL),
(9, '2021-10-11 01:24:34', '2021-10-11 01:24:34', 'gallery-sarpras\\October2021\\c1lIXWiae7LRvbvDoOf4.jpeg', '16', NULL),
(11, '2021-10-11 04:03:21', '2021-10-11 04:03:21', 'gallery-sarpras\\October2021\\RXQwBst8QGZc2J1563Gn.jpeg', '16', NULL),
(12, '2021-10-11 04:21:28', '2021-10-11 04:21:28', 'gallery-sarpras\\October2021\\PRLABFNwjQdeVrNPAsoG.jpeg', '16', NULL),
(13, '2021-10-11 04:22:00', '2021-10-14 11:24:56', 'gallery-sarpras\\October2021\\kjK8jKuOp41WETjUuOvf.jpeg', '2', NULL),
(14, '2021-10-11 04:22:00', '2021-10-14 11:25:19', 'gallery-sarpras\\October2021\\zXFDXNLR68t8jqm5DfEv.jpeg', '2', NULL),
(15, '2021-10-11 04:23:00', '2021-10-14 11:25:39', 'gallery-sarpras\\October2021\\GJ2BnUj7CYCDUkD4Z1Hd.jpeg', '2', NULL),
(16, '2021-10-13 01:17:59', '2021-10-13 01:17:59', 'gallery-sarpras\\October2021\\pdaNL2iqZhfuogUEd5WP.jpeg', '4', NULL),
(17, '2021-10-13 01:18:26', '2021-10-13 01:18:26', 'gallery-sarpras\\October2021\\j13bXelhWtWLPPbqe7cd.jpeg', '4', NULL),
(18, '2021-10-13 01:19:02', '2021-10-13 01:19:02', 'gallery-sarpras\\October2021\\lxdMkS7GYk3absq97kgb.jpeg', '4', NULL),
(19, '2021-10-13 01:19:28', '2021-10-13 01:19:28', 'gallery-sarpras\\October2021\\zrzRwxgGmad1p2ePA4Ks.jpeg', '4', NULL),
(20, '2021-10-13 01:20:06', '2021-10-13 01:20:06', 'gallery-sarpras\\October2021\\LxWScFksCUxSOT6oY4V8.jpeg', '5', NULL),
(21, '2021-10-13 01:20:29', '2021-10-13 01:20:29', 'gallery-sarpras\\October2021\\gNJOmnjib8Kiec4RTAUT.jpeg', '5', NULL),
(22, '2021-10-13 01:21:02', '2021-10-13 01:21:02', 'gallery-sarpras\\October2021\\gnm5nkynWYLQckoOJ40m.jpeg', '5', NULL),
(23, '2021-10-13 01:21:30', '2021-10-13 01:21:30', 'gallery-sarpras\\October2021\\s2WHYsUwocd5qZU1dWFi.jpeg', '5', NULL),
(24, '2021-10-13 01:22:35', '2021-10-13 01:22:35', 'gallery-sarpras\\October2021\\qucz1Sc1JEk9bqJ87q5a.jpeg', '6', NULL),
(25, '2021-10-13 01:23:20', '2021-10-13 01:23:20', 'gallery-sarpras\\October2021\\iyI40vE4Jjn12pOU9f8p.jpeg', '6', NULL),
(26, '2021-10-13 01:23:45', '2021-10-13 01:23:45', 'gallery-sarpras\\October2021\\Srlz2MiZfG6L4nppQYMq.jpeg', '6', NULL),
(27, '2021-10-13 01:24:29', '2021-10-13 01:24:29', 'gallery-sarpras\\October2021\\BPu0azo5d0Y1Yy81Pq9K.jpeg', '6', NULL),
(28, '2021-10-13 01:25:33', '2021-10-13 01:25:33', 'gallery-sarpras\\October2021\\ViuFmQMFJRNl2TXNBxM4.jpeg', '7', NULL),
(29, '2021-10-13 01:25:58', '2021-10-13 01:25:58', 'gallery-sarpras\\October2021\\srB1vFlxsOL5lB1RniGf.jpeg', '7', NULL),
(30, '2021-10-13 01:26:26', '2021-10-13 01:26:26', 'gallery-sarpras\\October2021\\MVZQgneF6035oJemCUOc.jpeg', '7', NULL),
(31, '2021-10-13 01:26:55', '2021-10-13 01:26:55', 'gallery-sarpras\\October2021\\raTVZ1ZpjRt7zF96malk.jpeg', '7', NULL),
(32, '2021-10-13 01:27:32', '2021-10-13 01:27:32', 'gallery-sarpras\\October2021\\l4XOumxo59FKguHPwpha.jpeg', '8', NULL),
(33, '2021-10-13 01:27:54', '2021-10-13 01:27:54', 'gallery-sarpras\\October2021\\5kNyoHzM8fSZlB4Qplia.jpeg', '8', NULL),
(34, '2021-10-13 01:28:26', '2021-10-13 01:28:26', 'gallery-sarpras\\October2021\\X8L1gJMGoROpcZ826385.jpeg', '8', NULL),
(35, '2021-10-13 01:29:03', '2021-10-13 01:29:03', 'gallery-sarpras\\October2021\\sokvMh9dIDYtbwm15PO9.jpeg', '8', NULL),
(36, '2021-10-13 02:03:02', '2021-10-13 02:03:02', 'gallery-sarpras\\October2021\\G1rAsJlLVEsyastOo52l.jpg', '15', 'Gedung Sekolah'),
(37, '2021-10-13 02:03:40', '2021-10-13 02:03:40', 'gallery-sarpras\\October2021\\h6RXRODeRXMKm8GCfTY0.jpg', '15', 'Ruang Belajar Teori'),
(38, '2021-10-13 02:04:23', '2021-10-13 02:04:23', 'gallery-sarpras\\October2021\\c5kxF2WxYsKQQg0EvGCf.jpg', '14', NULL),
(41, '2021-10-14 02:31:36', '2021-10-14 02:31:36', 'gallery-sarpras\\October2021\\QVEZsWOc9HitXu7sPxkf.png', '10', NULL),
(42, '2021-10-14 02:47:16', '2021-10-14 02:47:16', 'gallery-sarpras\\October2021\\VmsoEOKJeD5stCg4rm2V.jpg', '11', NULL),
(43, '2021-10-14 03:01:00', '2021-10-14 11:24:29', 'gallery-sarpras\\October2021\\ljb9Da9Je1gA0jdm7dgN.jpeg', '2', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gurus`
--

CREATE TABLE `gurus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `nik` int(11) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jabatan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gurus`
--

INSERT INTO `gurus` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`, `nik`, `remember_token`, `jabatan`) VALUES
(2, 'Sheila Riani Putri', 'sheila@gmail.com', '$2y$10$3p.3Ue2lHsgEUKYYSG9Mv.ayPeQFVJ6LmoOm3FoVhAs99bfde848i', '2021-09-24 07:04:23', '2021-09-26 01:30:45', 99202029, NULL, 'kesiswaan'),
(3, 'Ana Susilowati', 'ana@gmail.com', '$2y$10$SM.PR6QOjpWPU27Cmac1TO/ezT5ZMRZ5v4bPFzbh0ZEHIIu1fN13.', '2021-09-24 07:05:00', '2021-09-26 01:30:31', 2012954223, NULL, 'sarpras'),
(4, 'Tanzela Azizi', 'tanzela@gmail.com', '$2y$10$aYytyzZpncfOsTsevCdq6.E.27jMVcURVnMmFUVLAYZjxn1mJ6m5e', '2021-09-24 07:05:47', '2021-09-26 01:30:11', 2012957767, NULL, 'hubin'),
(5, 'Agus Diana', 'agus@gmail.com', '$2y$10$szNhcnuVzdM9LqKX/jOnv.RYrGDRu5TzjKDoLycElODjRbb8O4Tpi', '2021-09-24 07:06:44', '2021-09-26 01:29:55', 99772029, NULL, 'kurikulum');

-- --------------------------------------------------------

--
-- Table structure for table `guru_kejuruans`
--

CREATE TABLE `guru_kejuruans` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_guru` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jurusan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `guru_kejuruans`
--

INSERT INTO `guru_kejuruans` (`id`, `nama_guru`, `image`, `jurusan`, `created_at`, `updated_at`) VALUES
(1, 'Abdul Hamid', 'guru-kejuruans/October2021/rmmrdxWE3y4FTHqg516V.jpg', NULL, '2021-10-21 07:16:32', '2021-10-21 07:16:32'),
(2, 'Agus Diana, S. Kom', 'guru-kejuruans/October2021/BtumvyswMl294bADcw7M.jpg', '50', '2021-10-21 07:17:07', '2021-10-21 07:17:07'),
(3, 'Aji Sulistyo', 'guru-kejuruans/October2021/g6j37BHPxsQAGZpliozq.jpg', '48', '2021-10-21 07:18:08', '2021-10-21 07:18:08'),
(4, 'Casdik, ST', 'guru-kejuruans/October2021/ubHzOT1SkBF6xWoHgmcp.jpg', '52', '2021-10-21 07:18:57', '2021-10-21 07:18:57'),
(5, 'Hesti Herawati, A.Md', 'guru-kejuruans/October2021/QqIcrYkBKvnRU7ezbR79.jpg', '50', '2021-10-21 07:19:36', '2021-10-21 07:19:36'),
(6, 'Ilham Wahyudi Siadi', 'guru-kejuruans/October2021/5MFzvuiHd1OgiXGRWkoy.jpg', '48', '2021-10-21 07:20:02', '2021-10-21 07:20:02'),
(7, 'Puguh Rismadi Ismail, S. Kom', 'guru-kejuruans/October2021/ZwxfxHbZlDTXBiWl1UR0.jpg', '50', '2021-10-21 07:20:23', '2021-10-21 07:20:23'),
(8, 'Tuahta Hasiholan, S.Kom', 'guru-kejuruans/October2021/PLQ58xrHgCBHHlixiMYM.jpg', '53', '2021-10-21 07:21:16', '2021-10-21 07:21:16');

-- --------------------------------------------------------

--
-- Table structure for table `guru_role`
--

CREATE TABLE `guru_role` (
  `guru_id` bigint(20) UNSIGNED NOT NULL,
  `kategori_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `guru_role`
--

INSERT INTO `guru_role` (`guru_id`, `kategori_id`) VALUES
(12, 5),
(15, 1),
(15, 5),
(14, 5),
(23, 3),
(23, 4),
(12, 5),
(15, 1),
(15, 5),
(14, 5),
(25, 5),
(5, 4),
(62, 5),
(68, 4),
(71, 5);

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(10) UNSIGNED NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `photo`, `title`, `description`, `created_at`, `updated_at`) VALUES
(6, 'images/October2021/S9M3QvJAJIVSNfSoZ6DV.JPG', 'Sosialisasi SMK PK', 'Sosialisasi SMK PK', '2021-10-21 04:41:46', '2021-10-21 04:41:46'),
(7, 'images/October2021/phHnsl3iCrdSXwfjJipR.JPG', 'Sosialisasi SMK PK', 'Sosialisasi SMK PK', '2021-10-21 04:42:45', '2021-10-21 04:42:45'),
(8, 'images/October2021/ZpY2MrVXmGotnboTM1SK.JPG', 'Sosialisasi SMK PK', 'Sosialisasi SMK PK', '2021-10-21 04:44:18', '2021-10-21 04:44:18'),
(9, 'images/October2021/iFpqkS387GCf6PQQsZZz.jpg', 'Sosialisasi SMK PK', 'Sosialisasi SMK PK', '2021-10-21 04:45:00', '2021-10-21 04:45:00'),
(10, 'images/October2021/mWFcQyvbJJp8nRKA4duo.JPG', 'Sosialisasi SMK PK', 'Sosialisasi SMK PK', '2021-10-21 04:46:17', '2021-10-21 04:46:17'),
(11, 'images/October2021/8jM8aHTG38wwxR7k1UgY.JPG', 'Sosialisasi SMK PK', 'Sosialisasi SMK PK', '2021-10-21 04:46:59', '2021-10-21 04:46:59'),
(12, 'images/October2021/Mm7tZtDM3vpZw6Z8deZZ.JPG', 'Kegiatan Studi Banding', 'Kegiatan Studi Banding', '2021-10-21 05:38:24', '2021-10-21 05:38:24'),
(13, 'images/October2021/QpJzmPLqoaG8PPmjabFZ.JPG', 'Kegiatan Studi Banding', 'Kegiatan Studi Banding', '2021-10-21 05:38:51', '2021-10-21 05:38:51'),
(15, 'images/October2021/1GBq10gIUEJs7yB5eoJP.JPG', 'Kegiatan Studi Banding', 'Kegiatan Studi Banding', '2021-10-21 05:39:33', '2021-10-21 05:39:33'),
(16, 'images/October2021/Vx7bB9TVbAuG7iXyq89e.JPG', 'Kegiatan Studi Banding', 'Kegiatan Studi Banding', '2021-10-21 05:40:14', '2021-10-21 05:40:14'),
(17, 'images/October2021/b11yHO9WFi1bEGeA65cW.JPG', 'Kegiatan Studi Banding', 'Kegiatan Studi Banding', '2021-10-21 05:40:52', '2021-10-21 05:40:52'),
(18, 'images/October2021/6o576VDX900zehxRXOFd.JPG', 'Kegiatan Studi Banding', 'Kegiatan Studi Banding', '2021-10-21 05:41:37', '2021-10-21 05:41:37'),
(19, 'images/October2021/mwEBEqFzsus28qs1CeSd.JPG', 'Kegiatan Studi Banding', 'Kegiatan Studi Banding', '2021-10-21 05:42:06', '2021-10-21 05:42:06'),
(20, 'images/October2021/lJD5eQP7N6vUicBsVYYk.JPG', 'Sosialisasi SMK PK', 'Sosialisasi SMK PK', '2021-10-21 05:44:08', '2021-10-21 05:44:08'),
(21, 'images/October2021/7l4m7TrZcvIxGHnB8cYE.JPG', 'Sosialisasi SMK PK', 'Sosialisasi SMK PK', '2021-10-21 05:44:53', '2021-10-21 05:44:53'),
(22, 'images/October2021/y16Yecx8IKFbzZUYvnco.JPG', 'Sosialisasi SMK PK', 'Sosialisasi SMK PK', '2021-10-21 05:45:16', '2021-10-21 05:45:16');

-- --------------------------------------------------------

--
-- Table structure for table `jurusans`
--

CREATE TABLE `jurusans` (
  `id` int(10) UNSIGNED NOT NULL,
  `jurusan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `singkatan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jurusans`
--

INSERT INTO `jurusans` (`id`, `jurusan`, `created_at`, `updated_at`, `singkatan`) VALUES
(1, 'Teknik Komputer Jaringan', '2021-09-29 23:55:00', '2021-10-02 04:31:05', 'TKJ'),
(2, 'Multimedia', '2021-09-29 23:55:00', '2021-10-02 04:30:54', 'MM'),
(3, 'Rekayasa Perangkat Lunak', '2021-09-29 23:55:00', '2021-10-02 04:30:41', 'RPL'),
(4, 'Broadcast', '2021-09-29 23:58:00', '2021-10-02 04:30:23', 'BC'),
(5, 'Teknik Elektronik Industri', '2021-09-29 23:58:00', '2021-10-02 04:30:04', 'TEI');

-- --------------------------------------------------------

--
-- Table structure for table `kategoris`
--

CREATE TABLE `kategoris` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_kategori` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foto` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caption` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategoris`
--

INSERT INTO `kategoris` (`id`, `nama_kategori`, `foto`, `caption`, `created_at`, `updated_at`, `deleted_at`, `slug`) VALUES
(1, 'Tim Manajemen Sekolah', 'kategoris\\October2021\\TQhXXJbdmKRyxCbytga5.png', '<p>Tim manajemen sekolah adalah</p>', '2021-10-02 04:31:56', '2021-10-02 08:08:02', NULL, 'tim-manajemen-sekolah'),
(2, 'Staff Tata Usaha', 'kategoris\\October2021\\GZJtgT45P0MEovv3noDd.png', '<p>Staff Tata Usaha mengurus</p>', '2021-10-02 04:44:10', '2021-10-02 08:07:52', NULL, 'staff-tata-usaha'),
(3, 'Guru Bimbingan Konseling', 'kategoris\\October2021\\MLVGDgb7PneVeMF3bbwB.png', '<p>Guru Bimbingan Konseling mengurus</p>', '2021-10-02 04:47:48', '2021-10-02 08:07:43', NULL, 'guru-bimbingan-konseling'),
(4, 'Guru Kejuruan', 'kategoris\\October2021\\MYBFcBepiT8w9NfrZpht.png', '<p>Guru Kejuruan mengurus hal-hal</p>', '2021-10-02 04:49:04', '2021-10-02 08:07:32', NULL, 'guru-kejuruan'),
(5, 'Guru Normatif dan Adaptif', 'kategoris\\October2021\\t11OsRGXs3AtW7Ps8J6a.png', '<p>Guru Normatif dan Adaptif adalah</p>', '2021-10-02 04:49:36', '2021-10-02 08:07:14', NULL, 'guru-normatif-dan-adaptif');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id` int(10) UNSIGNED NOT NULL,
  `kelas` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_kelas` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tahun_ajaran` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wali_kelas` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `jurusan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id`, `kelas`, `nama_kelas`, `tahun_ajaran`, `wali_kelas`, `status`, `created_at`, `updated_at`, `jurusan`) VALUES
(2, 'XII', 'XII RPL 3', '2020/2021', 'Dwi Setiawan', 'Aktif', '2021-09-24 07:08:13', '2021-09-24 07:08:13', 'RPL'),
(3, 'XII', 'XII RPL 2', '2020/2021', 'Furida Lusi', 'Aktif', '2021-09-24 07:08:48', '2021-09-24 07:08:48', 'RPL'),
(4, 'XII', 'XII RPL 1', '2020/2021', 'Fatimah', 'Aktif', '2021-09-24 07:09:21', '2021-09-24 07:09:21', 'RPL'),
(5, 'XII', 'XII TKJ1', '2020/2021', 'Waluyo Latupono', 'Aktif', '2021-10-08 08:32:41', '2021-10-08 08:32:41', 'TKJ'),
(6, 'XII', 'XII TKJ2', '2020/2021', 'Jamal Martaka Sihotang', 'Aktif', '2021-10-08 08:32:41', '2021-10-08 08:32:41', 'TKJ'),
(7, 'XII', 'XII TKJ3', '2020/2021', 'Victoria Zulaikha Mardhiyah', 'Aktif', '2021-10-08 08:32:41', '2021-10-08 08:32:41', 'TKJ'),
(8, 'XII', 'XII MM 1', '2020/2021', 'Nurul Purnawati', 'Aktif', '2021-10-08 08:32:42', '2021-10-08 08:32:42', 'MM'),
(9, 'XII', 'XII MM 2', '2020/2021', 'Darijan Saptono', 'Aktif', '2021-10-08 08:32:42', '2021-10-08 08:32:42', 'MM'),
(10, 'XII', 'XII MM 3', '2020/2021', 'Nurul Endah Kusmawati', 'Aktif', '2021-10-08 08:32:42', '2021-10-08 08:32:42', 'MM'),
(11, 'XII', 'XII BC 1', '2020/2021', 'Indra Abyasa Hutasoit', 'Aktif', '2021-10-08 08:32:42', '2021-10-08 08:32:42', 'BC'),
(12, 'XII', 'XII BC 2', '2020/2021', 'Jagapati Hutasoit', 'Aktif', '2021-10-08 08:32:42', '2021-10-08 08:32:42', 'BC'),
(13, 'XII', 'XII BC 3', '2020/2021', 'Kasiyah Elma Zulaika S.T.', 'Aktif', '2021-10-08 08:32:42', '2021-10-08 08:32:42', 'BC'),
(14, 'XII', 'XII TEI 1', '2020/2021', 'Rini Kayla Mardhiyah', 'Aktif', '2021-10-08 08:32:42', '2021-10-08 08:32:42', 'TEI'),
(15, 'XII', 'XII TEI 2', '2020/2021', 'Daliman Pradana', 'Aktif', '2021-10-08 08:32:42', '2021-10-08 08:32:42', 'TEI'),
(16, 'XII', 'XII TEI 3', '2020/2021', 'Jono Haryanto', 'Aktif', '2021-10-08 08:32:42', '2021-10-08 08:32:42', 'TEI'),
(17, 'XI', 'XI TKJ1', '2020/2021', 'Sabrina Winarsih S.H.', 'Aktif', '2021-10-08 08:32:42', '2021-10-08 08:32:42', 'TKJ'),
(18, 'XI', 'XI TKJ2', '2020/2021', 'Gambira Ramadan', 'Aktif', '2021-10-08 08:32:42', '2021-10-08 08:32:42', 'TKJ'),
(19, 'XI', 'XI TKJ3', '2020/2021', 'Tedi Salahudin', 'Aktif', '2021-10-08 08:32:42', '2021-10-08 08:32:42', 'TKJ'),
(20, 'XI', 'XI MM 1', '2020/2021', 'Cakrabirawa Mulyanto Iswahyudi', 'Aktif', '2021-10-08 08:32:42', '2021-10-08 08:32:42', 'MM'),
(21, 'XI', 'XI MM 2', '2020/2021', 'Raden Rajata', 'Aktif', '2021-10-08 08:32:42', '2021-10-08 08:32:42', 'MM'),
(22, 'XI', 'XI MM 3', '2020/2021', 'Ulva Farida S.Pd', 'Aktif', '2021-10-08 08:32:42', '2021-10-08 08:32:42', 'MM'),
(23, 'XI', 'XI BC 1', '2020/2021', 'Maya Ayu Pratiwi', 'Aktif', '2021-10-08 08:32:42', '2021-10-08 08:32:42', 'BC'),
(24, 'XI', 'XI BC 2', '2020/2021', 'Edward Jarwi Saefullah', 'Aktif', '2021-10-08 08:32:42', '2021-10-08 08:32:42', 'BC'),
(25, 'XI', 'XI BC 3', '2020/2021', 'Jati Dabukke S.E.', 'Aktif', '2021-10-08 08:32:42', '2021-10-08 08:32:42', 'BC'),
(26, 'XI', 'XI TEI 1', '2020/2021', 'Jail Sitorus', 'Aktif', '2021-10-08 08:32:43', '2021-10-08 08:32:43', 'TEI'),
(27, 'XI', 'XI TEI 2', '2020/2021', 'Chandra Kuswoyo', 'Aktif', '2021-10-08 08:32:43', '2021-10-08 08:32:43', 'TEI'),
(28, 'XI', 'XI TEI 3', '2020/2021', 'Budi Heru Permadi', 'Aktif', '2021-10-08 08:32:43', '2021-10-08 08:32:43', 'TEI'),
(29, 'XI', 'XI RPL 1', '2020/2021', 'Kusuma Bahuwirya Situmorang', 'Aktif', '2021-10-08 08:32:43', '2021-10-08 08:32:43', 'RPL'),
(30, 'XI', 'XI RPL 2', '2020/2021', 'Hasna Putri Mulyani', 'Aktif', '2021-10-08 08:32:43', '2021-10-08 08:32:43', 'RPL'),
(31, 'XI', 'XI RPL 3', '2020/2021', 'Ulya Anggraini', 'Aktif', '2021-10-08 08:32:43', '2021-10-08 08:32:43', 'RPL'),
(32, 'X', 'X TKJ1', '2020/2021', 'Maida Rahimah', 'Aktif', '2021-10-08 08:32:43', '2021-10-08 08:32:43', 'TKJ'),
(33, 'X', 'X TKJ2', '2020/2021', 'Uli Winarsih S.Sos', 'Aktif', '2021-10-08 08:32:43', '2021-10-08 08:32:43', 'TKJ'),
(34, 'X', 'X TKJ3', '2020/2021', 'Vinsen Ramadan S.Farm', 'Aktif', '2021-10-08 08:32:43', '2021-10-08 08:32:43', 'TKJ'),
(35, 'X', 'X MM 1', '2020/2021', 'Tania Dian Rahimah', 'Aktif', '2021-10-08 08:32:43', '2021-10-08 08:32:43', 'MM'),
(36, 'X', 'X MM 2', '2020/2021', 'Diana Victoria Mardhiyah', 'Aktif', '2021-10-08 08:32:43', '2021-10-08 08:32:43', 'MM'),
(37, 'X', 'X MM 3', '2020/2021', 'Kartika Suartini S.E.I', 'Aktif', '2021-10-08 08:32:43', '2021-10-08 08:32:43', 'MM'),
(38, 'X', 'X BC 1', '2020/2021', 'Kuncara Sirait', 'Aktif', '2021-10-08 08:32:43', '2021-10-08 08:32:43', 'BC'),
(39, 'X', 'X BC 2', '2020/2021', 'Luhung Thamrin', 'Aktif', '2021-10-08 08:32:43', '2021-10-08 08:32:43', 'BC'),
(40, 'X', 'X BC 3', '2020/2021', 'Ika Purnawati', 'Aktif', '2021-10-08 08:32:43', '2021-10-08 08:32:43', 'BC'),
(41, 'X', 'X TEI 1', '2020/2021', 'Ratna Wulandari S.Pd', 'Aktif', '2021-10-08 08:32:44', '2021-10-08 08:32:44', 'TEI'),
(42, 'X', 'X TEI 2', '2020/2021', 'Ina Fujiati', 'Aktif', '2021-10-08 08:32:44', '2021-10-08 08:32:44', 'TEI'),
(43, 'X', 'X TEI 3', '2020/2021', 'Kalim Habibi', 'Aktif', '2021-10-08 08:32:44', '2021-10-08 08:32:44', 'TEI'),
(44, 'X', 'X RPL 1', '2020/2021', 'Martaka Anom Saefullah', 'Aktif', '2021-10-08 08:32:44', '2021-10-08 08:32:44', 'RPL'),
(45, 'X', 'X RPL 2', '2020/2021', 'Sabrina Kusmawati', 'Aktif', '2021-10-08 08:32:45', '2021-10-08 08:32:45', 'RPL'),
(46, 'X', 'X RPL 3', '2020/2021', 'Dina Permata M.TI.', 'Aktif', '2021-10-08 08:32:45', '2021-10-08 08:32:45', 'RPL');

-- --------------------------------------------------------

--
-- Table structure for table `managers`
--

CREATE TABLE `managers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jabatan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'Kepala Program',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `nik` int(11) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `managers`
--

INSERT INTO `managers` (`id`, `name`, `jabatan`, `email`, `password`, `created_at`, `updated_at`, `nik`, `remember_token`) VALUES
(4, 'Puguh Rismadi Ismail', 'Kepala Program', 'puguh@gmail.com', '$2y$10$GGdHSuyC7NHSYosD47rMVepa7Nl0Js0UPXPIeiuxuMHywvdmEW5iW', '2021-09-24 07:07:30', '2021-09-26 01:28:05', 7585876, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mapels`
--

CREATE TABLE `mapels` (
  `id` int(10) UNSIGNED NOT NULL,
  `mata_pelajaran` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mapels`
--

INSERT INTO `mapels` (`id`, `mata_pelajaran`, `created_at`, `updated_at`) VALUES
(1, 'MTK', '2021-10-08 08:31:01', '2021-10-08 08:31:01'),
(2, 'B. Indonesia', '2021-10-08 08:31:02', '2021-10-08 08:31:02'),
(3, 'B. Inggris', '2021-10-08 08:31:02', '2021-10-08 08:31:02'),
(4, 'Sindo', '2021-10-08 08:31:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `conversions_disk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` bigint(20) UNSIGNED NOT NULL,
  `manipulations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`manipulations`)),
  `custom_properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`custom_properties`)),
  `generated_conversions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`generated_conversions`)),
  `responsive_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`responsive_images`)),
  `order_column` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2021-09-21 07:32:54', '2021-09-21 07:32:54');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2021-09-21 07:32:54', '2021-09-21 07:32:54', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 4, '2021-09-21 07:32:54', '2021-10-17 03:25:27', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2021-09-21 07:32:55', '2021-09-21 07:32:55', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2021-09-21 07:32:55', '2021-09-21 07:32:55', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 22, '2021-09-21 07:32:55', '2021-10-21 07:10:21', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2021-09-21 07:32:55', '2021-10-17 03:25:28', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2021-09-21 07:32:55', '2021-10-17 03:25:28', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2021-09-21 07:32:55', '2021-10-17 03:25:28', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2021-09-21 07:32:55', '2021-10-17 03:25:28', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 23, '2021-09-21 07:32:55', '2021-10-21 07:10:21', 'voyager.settings.index', NULL),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 7, '2021-09-21 07:33:10', '2021-10-17 03:25:28', 'voyager.categories.index', NULL),
(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 5, '2021-09-21 07:33:12', '2021-10-17 03:25:27', 'voyager.posts.index', NULL),
(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 6, '2021-09-21 07:33:13', '2021-10-17 03:25:27', 'voyager.pages.index', NULL),
(14, 1, 'Gurus', '', '_self', 'voyager-people', '#000000', NULL, 8, '2021-09-21 20:11:33', '2021-10-21 06:00:45', 'voyager.gurus.index', 'null'),
(15, 1, 'Siswas', '', '_self', 'voyager-group', '#000000', NULL, 9, '2021-09-21 20:12:15', '2021-10-21 06:00:45', 'voyager.siswas.index', 'null'),
(17, 1, 'Kelas', '', '_self', 'voyager-book', '#000000', NULL, 10, '2021-09-21 20:32:17', '2021-10-21 06:00:45', 'voyager.kelas.index', 'null'),
(19, 1, 'Alumnis', '', '_self', 'voyager-person', '#000000', NULL, 11, '2021-09-29 21:41:45', '2021-10-21 06:00:45', 'voyager.alumnis.index', 'null'),
(21, 1, 'Partners', '', '_self', 'voyager-company', '#000000', NULL, 12, '2021-09-29 21:52:12', '2021-10-21 06:00:45', 'voyager.partners.index', 'null'),
(22, 1, 'Jurusans', '', '_self', 'voyager-tag', '#000000', NULL, 13, '2021-09-29 23:52:51', '2021-10-21 06:00:45', 'voyager.jurusans.index', 'null'),
(30, 1, 'Content Sarpras', '', '_self', 'voyager-news', '#000000', 37, 1, '2021-10-06 14:30:53', '2021-10-21 06:00:37', 'voyager.content-sarpras.index', 'null'),
(31, 1, 'Gallery Sarpras', '', '_self', 'voyager-images', '#000000', 37, 2, '2021-10-06 14:35:53', '2021-10-21 06:00:37', 'voyager.gallery-sarpras.index', 'null'),
(32, 1, 'Mapels', '', '_self', 'voyager-documentation', '#000000', NULL, 14, '2021-10-07 02:56:09', '2021-10-21 06:00:45', 'voyager.mapels.index', 'null'),
(33, 1, 'Navbars', '', '_self', 'voyager-params', '#000000', NULL, 15, '2021-10-16 04:24:35', '2021-10-21 06:00:45', 'voyager.navbars.index', 'null'),
(34, 1, 'Images', '', '_self', 'voyager-camera', '#000000', 36, 2, '2021-10-17 03:22:35', '2021-10-21 04:34:41', 'voyager.images.index', 'null'),
(35, 1, 'Videos', '', '_self', 'voyager-youtube-play', '#000000', 36, 1, '2021-10-17 03:24:20', '2021-10-21 04:29:02', 'voyager.videos.index', 'null'),
(36, 1, 'Gallery', '', '_self', 'voyager-photos', '#000000', NULL, 16, '2021-10-17 03:25:12', '2021-10-21 06:00:46', NULL, ''),
(37, 1, 'Page Sarpras', '', '_self', 'voyager-receipt', '#000000', NULL, 17, '2021-10-17 03:26:59', '2021-10-21 06:00:46', NULL, ''),
(38, 1, 'Contents', '', '_self', 'voyager-news', '#000000', NULL, 18, '2021-10-17 09:10:33', '2021-10-21 06:00:46', 'voyager.contents.index', 'null'),
(40, 1, 'Backgrounds', '', '_self', 'voyager-photo', '#000000', NULL, 20, '2021-10-18 07:11:16', '2021-10-21 06:00:46', 'voyager.backgrounds.index', 'null'),
(41, 1, 'Guru Kejuruans', '', '_self', 'voyager-treasure-open', '#000000', NULL, 21, '2021-10-21 07:08:03', '2021-10-21 07:10:21', 'voyager.guru-kejuruans.index', 'null'),
(42, 1, 'Galleries', '', '_self', NULL, NULL, NULL, 24, '2021-10-21 07:12:49', '2021-10-21 07:12:49', 'voyager.galleries.index', NULL),
(43, 1, 'Kategoris', '', '_self', NULL, NULL, NULL, 25, '2021-10-21 07:13:41', '2021-10-21 07:13:41', 'voyager.kategoris.index', NULL),
(44, 1, 'Ekskuls', '', '_self', NULL, NULL, NULL, 26, '2021-10-21 08:58:00', '2021-10-21 08:58:00', 'voyager.ekskuls.index', NULL),
(45, 1, 'Detail Users', '', '_self', NULL, NULL, NULL, 27, '2021-10-23 04:09:48', '2021-10-23 04:09:48', 'voyager.detail-users.index', NULL),
(46, 1, 'Skills', '', '_self', NULL, NULL, NULL, 28, '2021-10-23 04:10:19', '2021-10-23 04:10:19', 'voyager.skills.index', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(25, '2016_01_01_000000_create_pages_table', 2),
(26, '2016_01_01_000000_create_posts_table', 2),
(27, '2016_02_15_204651_create_categories_table', 2),
(28, '2017_04_11_000000_alter_post_nullable_fields_table', 2),
(29, '2011_10_01_151902_create_media_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `navbars`
--

CREATE TABLE `navbars` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `navbars`
--

INSERT INTO `navbars` (`id`, `name`, `slug`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Kurikulum', 'kurikulum', '2021-10-16 04:46:09', '2021-10-17 06:20:09', 'Active'),
(2, 'Hubungan Industri', 'hubin', '2021-10-16 04:46:50', '2021-10-17 09:54:21', 'Active'),
(3, 'Sarana Pra Sarana', 'sarpras', '2021-10-16 04:47:13', '2021-10-17 09:54:06', 'Active'),
(4, 'Kesiswaan', 'kesiswaan', '2021-10-16 04:47:28', '2021-10-17 06:19:34', 'Active'),
(5, 'BKK', 'bkk', '2021-10-16 04:47:42', '2021-10-17 06:19:22', 'Active'),
(6, 'Program Keahlian', 'program-keahlian', '2021-10-16 04:48:04', '2021-10-17 06:19:11', 'Active'),
(7, 'Profile', 'profile', '2021-10-17 04:38:23', '2021-10-17 06:28:40', 'Inactive'),
(8, 'Home', 'home', '2021-10-17 06:04:16', '2021-10-17 06:29:01', 'Inactive'),
(9, 'News Home', 'news-home', '2021-10-17 06:04:27', '2021-10-17 06:29:14', 'Inactive'),
(10, 'Gallery', 'gallery', '2021-10-17 06:04:40', '2021-10-17 06:29:27', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`, `category_id`) VALUES
(26, 1, 'Why Starbhak?', NULL, '<p><span style=\"font-family: Poppins, sans-serif; font-size: 20px; background-color: #d7efff;\">90% of graduating students already work before graduation, as either self-employed workers or young professionals.</span></p>', 'pages/October2021/12YtmE4i0nLcZnMm1Vuf.jpg', 'why-starbhak', NULL, NULL, 'ACTIVE', '2021-10-17 07:00:50', '2021-10-17 07:00:50', 8),
(27, 1, 'Protokol Kesehatan di Lingkungan Sekolah', NULL, NULL, 'pages/October2021/tny4ByO9Yc1DXyBtAzAs.png', 'protokol-kesehatan-di-lingkungan-sekolah', NULL, NULL, 'ACTIVE', '2021-10-17 07:01:39', '2021-10-17 07:01:39', 9),
(28, 1, 'Sejarah SMK Taruna Bhakti', NULL, '<h3 class=\"mt-5\" style=\"box-sizing: border-box; margin-bottom: 0.5rem; font-weight: 500; line-height: 1.2; font-size: 1.75rem; font-family: Raleway, sans-serif; margin-top: 3rem !important;\"><span style=\"box-sizing: border-box; font-weight: bolder;\">SEJARAH SMK TARUNA BHAKTI</span></h3>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: \'Open Sans\', sans-serif; font-size: 16px;\">&nbsp;</p>\r\n<p class=\"mt-3\" style=\"box-sizing: border-box; margin-bottom: 1rem; font-family: \'Open Sans\', sans-serif; font-size: 16px; margin-top: 1rem !important;\">Untuk memenuhi kebutuhan akan sumber daya manusia yang berkualitas tinggi dalam penguasaan IPTEK yang didasari semangat iman dan taqwa,<span style=\"box-sizing: border-box; font-weight: bolder;\">&nbsp;SMK Taruna Bhakti Depok</span>&nbsp;dirancang untuk membekali siswa agar menguasai ilmu pengetahuan khususnya dalam bidang Teknologi Informasi dan Komunikasi yang berkualitas, serta memiliki kecakapan hidup. Program pembelajaran SMK Taruna Bhakti memberi perhatian khusus (ciri khas) pada penguasaan TIK khususnya bidang Teknik Komputer dan Jaringan (TKJ), Multimedia (MM) serta Rekaya Perangkat Lunak (RPL) dengan menggunakan kurikulum Nasional yang secara inovatif diperkaya oleh SMK Taruna Bhakti berdasarkan VISI, MISI, TUJUAN serta TARGET SMK Taruna Bhakti.<br style=\"box-sizing: border-box;\" /><br style=\"box-sizing: border-box;\" />Selain pembelajaran di kelas (intrakurikuler) dan pengembangan bakat/minat melalui ekstrakurikuler, siswa memperluas wawasan melalui berbagai macam program yang membekali siswa untuk memiliki kecakapan hidup antara lain: Character Building, Science Camp, Mendatangkan Guru Tamu dari Dunai Usaha/Industri yang relevan dll, serta memberi kesempatan luas kepada siswa untuk berkompetisi dalam bidang akademis dan non-akademis baik tingkat Nasional, Regional, dan Internasional. Proses dan efektifitas pembelajaran didukung oleh guru yang kompeten, bimbingan dan konseling, serta sarana pendidikan yang lengkap. Sebagai salah satu sekolah Teknologi Informasi dan Komunikasi bermutu di Depok, prestasi yang telah dicapai oleh SMK Taruna Bhakti Depok ini memang sesuai dengn visi dan misi yang diembannya</p>', NULL, 'sejarah-smk-taruna-bhakti', NULL, NULL, 'ACTIVE', '2021-10-17 07:02:27', '2021-10-17 07:02:27', 7),
(29, 1, 'Visi dan Misi', NULL, '<h3 class=\"mt-5 fw-bold\" style=\"box-sizing: border-box; margin-bottom: 0.5rem; line-height: 1.2; font-size: 1.75rem; font-family: Raleway, sans-serif; margin-top: 3rem !important;\">Visi</h3>\r\n<ol style=\"box-sizing: border-box; padding-left: 2rem; margin-top: 0px; margin-bottom: 1rem; font-family: \'Open Sans\', sans-serif; font-size: 16px;\">\r\n<li style=\"box-sizing: border-box;\">Menghasilkan lulusan yang kompeten dalam IPTEK DAN IMTAQ,</li>\r\n<li style=\"box-sizing: border-box;\">serta mampu bersaing pada tingkat nasional dan global.</li>\r\n</ol>\r\n<h3 class=\"mt-5 fw-bold\" style=\"box-sizing: border-box; margin-bottom: 0.5rem; line-height: 1.2; font-size: 1.75rem; font-family: Raleway, sans-serif; margin-top: 3rem !important;\">Misi</h3>\r\n<ol style=\"box-sizing: border-box; padding-left: 2rem; margin-top: 0px; margin-bottom: 1rem; font-family: \'Open Sans\', sans-serif; font-size: 16px;\">\r\n<li style=\"box-sizing: border-box;\">Menumbuhkan semangat kreatifitas, bersinergi dan kompetitif kepada seluruh warga sekolah</li>\r\n<li style=\"box-sizing: border-box;\">Melaksanakan kurikulum melalui pembelajaran dan penilaian berbasis kompetensi, Berbasis wirausaha, berwawasan lingkungan.dan berlandaskan kejujuran.</li>\r\n<li style=\"box-sizing: border-box;\">Meningkatkan kualitas sumber daya manusia melalui sertifikasi Kompetensi Tingkat Nasional dan Internasional</li>\r\n<li style=\"box-sizing: border-box;\">Mengembangkan potensi peserta didik melalui kegiatan Minat dan Bakat dan pembinaan kedisiplinan.</li>\r\n<li style=\"box-sizing: border-box;\">Menerapkan layanan prima dalam pengelolaan sekolah melalui Sistem Manajeman Mutu</li>\r\n</ol>', NULL, 'visi-dan-misi', NULL, NULL, 'ACTIVE', '2021-10-17 07:03:13', '2021-10-17 07:03:13', 7),
(30, 1, 'Tujuan Sekolah', NULL, '<h3 class=\"mt-5\" style=\"box-sizing: border-box; margin-bottom: 0.5rem; font-weight: 500; line-height: 1.2; font-size: 1.75rem; font-family: Raleway, sans-serif; margin-top: 3rem !important;\"><span style=\"box-sizing: border-box; font-weight: bolder;\">Tujuan Sekolah</span></h3>\r\n<ol style=\"box-sizing: border-box; padding-left: 2rem; margin-top: 0px; margin-bottom: 1rem; font-family: \'Open Sans\', sans-serif; font-size: 16px;\">\r\n<li style=\"box-sizing: border-box;\">Menghasilkan lulusan yang kompeten</li>\r\n<li style=\"box-sizing: border-box;\">Meningkatkan kualitas pembelajaran.</li>\r\n<li style=\"box-sizing: border-box;\">Menyiapkan peserta didik agar mampu mengembangkan sikap profesional, mampu beradaptasi dan berkompetisi</li>\r\n<li style=\"box-sizing: border-box;\">Meningkatkan kepuasan masyarakat untuk memperoleh layanan pendidikan</li>\r\n<li style=\"box-sizing: border-box;\">Konsistensi pelaksanaan aktifitas, kendali mutu dan jaminan mutu sekolah.</li>\r\n<li style=\"box-sizing: border-box;\">Meningkatkan kesejahteraan warga sekolah.</li>\r\n</ol>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: \'Open Sans\', sans-serif; font-size: 16px;\">Dalam segala aktivitas Proses Pendidikan menerapkan budaya mutu sebagai berikut :</p>\r\n<ul style=\"box-sizing: border-box; padding: 0px 0px 0px 2rem; margin: 0px 0px 1rem; list-style: none; font-family: \'Open Sans\', sans-serif; font-size: 16px;\">\r\n<li style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-weight: bolder;\">Perubahan itu masa depan</span></li>\r\n<li style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-weight: bolder;\">Pelayanan Prima</span></li>\r\n<li style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-weight: bolder;\">Learning without practising is nothing</span></li>\r\n<li style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-weight: bolder;\">Service is investment</span></li>\r\n<li style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-weight: bolder;\">Our quality ask be different</span></li>\r\n</ul>', NULL, 'tujuan-sekolah', NULL, NULL, 'ACTIVE', '2021-10-17 07:03:49', '2021-10-17 07:03:49', 7),
(31, 1, 'Guru SMK Taruna Bhakti', NULL, NULL, 'pages/October2021/1PGpfdWDQJ92a0O5lexF.jpg', 'guru-smk-taruna-bhakti', NULL, NULL, 'ACTIVE', '2021-10-17 07:04:39', '2021-10-17 07:04:39', 1),
(32, 1, 'Struktur Kurikulum SMK Taruna Bhakti', NULL, NULL, 'pages/October2021/O3r0wkusYSHeWG1I3AQC.jpg', 'struktur-kurikulum-smk-taruna-bhakti', NULL, NULL, 'ACTIVE', '2021-10-17 07:05:31', '2021-10-17 07:05:31', 1),
(33, 1, 'Evaluasi', NULL, NULL, 'pages/October2021/ilgcJtXv0ZmDCXodd7N5.jpg', 'evaluasi', NULL, NULL, 'ACTIVE', '2021-10-17 07:05:58', '2021-10-17 07:05:58', 1),
(34, 1, 'Data Tamatan SMK Taruna Bhakti', NULL, NULL, 'pages/October2021/cDOEwebCTaJn1PhGOowV.jpg', 'data-tamatan', NULL, NULL, 'ACTIVE', '2021-10-17 07:06:41', '2021-10-17 10:23:01', 2),
(35, 1, 'Sarana dan Prasarana Sekolah', NULL, NULL, 'pages/October2021/eQ019SBsh0uAnMPpp80B.jpg', 'sarana-dan-prasarana-sekolah', NULL, NULL, 'ACTIVE', '2021-10-17 07:07:11', '2021-10-17 07:07:11', 3),
(36, 1, 'Ruang Pembelajaran Umum', NULL, NULL, 'pages/October2021/3sMON3t5jLtDkcYSazBV.jpg', 'ruang-pembelajaran-umum', NULL, NULL, 'ACTIVE', '2021-10-17 07:09:49', '2021-10-17 07:09:49', 3),
(37, 1, 'Ruang Pembelajaran Khusus', NULL, NULL, 'pages/October2021/kgF7fVYUfWsAKsDNrdrG.jpg', 'ruang-pembelajaran-khusus', NULL, NULL, 'ACTIVE', '2021-10-17 07:10:20', '2021-10-17 07:10:20', 3),
(38, 1, 'Fasilitas Parkir Kendaraan Siswa', NULL, NULL, 'pages/October2021/CCB2AEMVRLE0IOmG60PT.jpg', 'fasilitas-parkir-kendaraan-siswa', NULL, NULL, 'ACTIVE', '2021-10-17 07:10:49', '2021-10-17 07:10:49', 3),
(39, 1, 'Mushola Raudhotul Ilmi', NULL, NULL, 'pages/October2021/FxpLN738Cng20v1IHS4F.jpg', 'mushola-raudhotul-ilmi', NULL, NULL, 'ACTIVE', '2021-10-17 07:11:17', '2021-10-17 07:11:17', 3),
(40, 1, 'Fasilitas Pendukung', NULL, NULL, 'pages/October2021/S1FCYUJRV4rbOebXZJFH.jpg', 'fasilitas-pendukung', NULL, NULL, 'ACTIVE', '2021-10-17 07:11:43', '2021-10-17 07:11:43', 3),
(41, 1, 'Kegiatan Osis', NULL, NULL, 'pages/October2021/ixtVINehuSZSi3ZqqFGg.jpg', 'kegiatan-osis', NULL, NULL, 'ACTIVE', '2021-10-17 07:12:18', '2021-10-17 07:12:18', 4),
(42, 1, 'Bimbingan Konseling', NULL, NULL, 'pages/October2021/3wAIRX6Eb22eWcK63Luo.jpg', 'bimbingan-konseling', NULL, NULL, 'ACTIVE', '2021-10-17 07:13:11', '2021-10-17 07:13:33', 4),
(43, 1, 'Ekstrakurikuler', NULL, NULL, 'pages/October2021/Bxf8ULlbOHc5NXM532gt.jpg', 'ekstrakurikuler', NULL, NULL, 'ACTIVE', '2021-10-17 07:14:21', '2021-10-17 07:14:21', 4),
(44, 1, 'Open Recruitment', NULL, NULL, 'pages/October2021/HXlnBNqDnLyIfxskufGZ.jpg', 'open-recruitment', NULL, NULL, 'ACTIVE', '2021-10-17 07:15:13', '2021-10-17 07:15:13', 5),
(45, 1, 'Data Lulusan SMK Taruna Bhakti', NULL, NULL, 'pages/October2021/OHY6s4U7cPMX5OO5gT4o.jpg', 'data-lulusan-smk-taruna-bhakti', NULL, NULL, 'ACTIVE', '2021-10-17 07:15:49', '2021-10-17 07:15:49', 5),
(46, 1, 'Image', NULL, NULL, 'pages/October2021/nvvieG1eXz1wWu70LCgx.jpg', 'image', NULL, NULL, 'ACTIVE', '2021-10-17 07:16:45', '2021-10-17 07:16:45', 10),
(47, 1, 'Video', NULL, NULL, 'pages/October2021/gelmSD1zy7kstltz1FzG.jpg', 'video', NULL, NULL, 'ACTIVE', '2021-10-17 07:17:15', '2021-10-17 07:17:15', 10),
(48, 1, 'Teknik Komputer dan Jaringan', NULL, NULL, 'pages/October2021/c2vxHB7gUPfEN8IdEJpe.png', 'teknik-komputer-dan-jaringan', NULL, NULL, 'ACTIVE', '2021-10-21 06:06:48', '2021-10-21 06:06:48', 6),
(50, 1, 'Rekayasa Perangkat Lunak', NULL, NULL, 'pages/October2021/ramRyetVsrnrvnM0MTS0.png', 'rekayasa-perangkat-lunak', NULL, NULL, 'ACTIVE', '2021-10-21 06:09:35', '2021-10-21 06:09:35', 6),
(51, 1, 'Broadcast', NULL, NULL, 'pages/October2021/luRyTc2UZYw7sBO72sho.png', 'broadcast', NULL, NULL, 'ACTIVE', '2021-10-21 06:10:43', '2021-10-21 06:10:43', 6),
(52, 1, 'Teknik Elektronik Industr', NULL, NULL, 'pages/October2021/2cEAXPtoBd1BtM8WHcCU.png', 'teknik-elektronik-industr', NULL, NULL, 'ACTIVE', '2021-10-21 06:11:45', '2021-10-21 06:11:45', 6),
(53, 1, 'Multimedia', NULL, NULL, 'pages/October2021/GI16J5tsCwaROXY1xJgA.png', 'multimedia', NULL, NULL, 'ACTIVE', '2021-10-21 06:18:45', '2021-10-21 06:21:44', 6);

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` int(10) UNSIGNED NOT NULL,
  `logo_perusahaan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_perusahaan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat_perusahaan` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `website_perusahaan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `logo_perusahaan`, `nama_perusahaan`, `alamat_perusahaan`, `created_at`, `updated_at`, `website_perusahaan`) VALUES
(1, 'partners\\September2021\\X5dVle3n9fghgh63JqPL.png', 'Impunity', 'jl dongkal no 30', '2021-09-30 08:39:59', '2021-09-30 08:39:59', NULL),
(2, 'partners\\September2021\\VfckVh3Uuf1HwQZu2m9F.png', 'Automate', 'jl baru no 30', '2021-09-30 08:41:09', '2021-09-30 08:41:09', NULL),
(9, 'partners\\September2021\\eBChzSeaoGRIUizDLpYM.png', 'Play Media', 'MNC', '2021-09-30 08:50:47', '2021-09-30 08:50:47', NULL),
(10, 'partners\\September2021\\QISLM81GwCEJUpgHywdJ.png', 'Rumah Coding', 'Rumah', '2021-09-30 08:51:02', '2021-09-30 08:51:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2021-09-21 07:32:56', '2021-09-21 07:32:56'),
(2, 'browse_bread', NULL, '2021-09-21 07:32:56', '2021-09-21 07:32:56'),
(3, 'browse_database', NULL, '2021-09-21 07:32:57', '2021-09-21 07:32:57'),
(4, 'browse_media', NULL, '2021-09-21 07:32:57', '2021-09-21 07:32:57'),
(5, 'browse_compass', NULL, '2021-09-21 07:32:57', '2021-09-21 07:32:57'),
(6, 'browse_menus', 'menus', '2021-09-21 07:32:57', '2021-09-21 07:32:57'),
(7, 'read_menus', 'menus', '2021-09-21 07:32:57', '2021-09-21 07:32:57'),
(8, 'edit_menus', 'menus', '2021-09-21 07:32:57', '2021-09-21 07:32:57'),
(9, 'add_menus', 'menus', '2021-09-21 07:32:58', '2021-09-21 07:32:58'),
(10, 'delete_menus', 'menus', '2021-09-21 07:32:58', '2021-09-21 07:32:58'),
(11, 'browse_roles', 'roles', '2021-09-21 07:32:58', '2021-09-21 07:32:58'),
(12, 'read_roles', 'roles', '2021-09-21 07:32:58', '2021-09-21 07:32:58'),
(13, 'edit_roles', 'roles', '2021-09-21 07:32:58', '2021-09-21 07:32:58'),
(14, 'add_roles', 'roles', '2021-09-21 07:32:58', '2021-09-21 07:32:58'),
(15, 'delete_roles', 'roles', '2021-09-21 07:32:58', '2021-09-21 07:32:58'),
(16, 'browse_users', 'users', '2021-09-21 07:32:58', '2021-09-21 07:32:58'),
(17, 'read_users', 'users', '2021-09-21 07:32:58', '2021-09-21 07:32:58'),
(18, 'edit_users', 'users', '2021-09-21 07:32:58', '2021-09-21 07:32:58'),
(19, 'add_users', 'users', '2021-09-21 07:32:58', '2021-09-21 07:32:58'),
(20, 'delete_users', 'users', '2021-09-21 07:32:59', '2021-09-21 07:32:59'),
(21, 'browse_settings', 'settings', '2021-09-21 07:32:59', '2021-09-21 07:32:59'),
(22, 'read_settings', 'settings', '2021-09-21 07:32:59', '2021-09-21 07:32:59'),
(23, 'edit_settings', 'settings', '2021-09-21 07:32:59', '2021-09-21 07:32:59'),
(24, 'add_settings', 'settings', '2021-09-21 07:32:59', '2021-09-21 07:32:59'),
(25, 'delete_settings', 'settings', '2021-09-21 07:32:59', '2021-09-21 07:32:59'),
(26, 'browse_categories', 'categories', '2021-09-21 07:33:10', '2021-09-21 07:33:10'),
(27, 'read_categories', 'categories', '2021-09-21 07:33:10', '2021-09-21 07:33:10'),
(28, 'edit_categories', 'categories', '2021-09-21 07:33:10', '2021-09-21 07:33:10'),
(29, 'add_categories', 'categories', '2021-09-21 07:33:10', '2021-09-21 07:33:10'),
(30, 'delete_categories', 'categories', '2021-09-21 07:33:10', '2021-09-21 07:33:10'),
(31, 'browse_posts', 'posts', '2021-09-21 07:33:12', '2021-09-21 07:33:12'),
(32, 'read_posts', 'posts', '2021-09-21 07:33:12', '2021-09-21 07:33:12'),
(33, 'edit_posts', 'posts', '2021-09-21 07:33:12', '2021-09-21 07:33:12'),
(34, 'add_posts', 'posts', '2021-09-21 07:33:12', '2021-09-21 07:33:12'),
(35, 'delete_posts', 'posts', '2021-09-21 07:33:12', '2021-09-21 07:33:12'),
(36, 'browse_pages', 'pages', '2021-09-21 07:33:13', '2021-09-21 07:33:13'),
(37, 'read_pages', 'pages', '2021-09-21 07:33:13', '2021-09-21 07:33:13'),
(38, 'edit_pages', 'pages', '2021-09-21 07:33:13', '2021-09-21 07:33:13'),
(39, 'add_pages', 'pages', '2021-09-21 07:33:13', '2021-09-21 07:33:13'),
(40, 'delete_pages', 'pages', '2021-09-21 07:33:13', '2021-09-21 07:33:13'),
(41, 'browse_gurus', 'gurus', '2021-09-21 20:11:33', '2021-09-21 20:11:33'),
(42, 'read_gurus', 'gurus', '2021-09-21 20:11:33', '2021-09-21 20:11:33'),
(43, 'edit_gurus', 'gurus', '2021-09-21 20:11:33', '2021-09-21 20:11:33'),
(44, 'add_gurus', 'gurus', '2021-09-21 20:11:33', '2021-09-21 20:11:33'),
(45, 'delete_gurus', 'gurus', '2021-09-21 20:11:33', '2021-09-21 20:11:33'),
(46, 'browse_siswas', 'siswas', '2021-09-21 20:12:15', '2021-09-21 20:12:15'),
(47, 'read_siswas', 'siswas', '2021-09-21 20:12:15', '2021-09-21 20:12:15'),
(48, 'edit_siswas', 'siswas', '2021-09-21 20:12:15', '2021-09-21 20:12:15'),
(49, 'add_siswas', 'siswas', '2021-09-21 20:12:15', '2021-09-21 20:12:15'),
(50, 'delete_siswas', 'siswas', '2021-09-21 20:12:15', '2021-09-21 20:12:15'),
(51, 'browse_managers', 'managers', '2021-09-21 20:20:01', '2021-09-21 20:20:01'),
(52, 'read_managers', 'managers', '2021-09-21 20:20:01', '2021-09-21 20:20:01'),
(53, 'edit_managers', 'managers', '2021-09-21 20:20:01', '2021-09-21 20:20:01'),
(54, 'add_managers', 'managers', '2021-09-21 20:20:01', '2021-09-21 20:20:01'),
(55, 'delete_managers', 'managers', '2021-09-21 20:20:01', '2021-09-21 20:20:01'),
(56, 'browse_kelas', 'kelas', '2021-09-21 20:32:17', '2021-09-21 20:32:17'),
(57, 'read_kelas', 'kelas', '2021-09-21 20:32:17', '2021-09-21 20:32:17'),
(58, 'edit_kelas', 'kelas', '2021-09-21 20:32:17', '2021-09-21 20:32:17'),
(59, 'add_kelas', 'kelas', '2021-09-21 20:32:17', '2021-09-21 20:32:17'),
(60, 'delete_kelas', 'kelas', '2021-09-21 20:32:17', '2021-09-21 20:32:17'),
(66, 'browse_alumnis', 'alumnis', '2021-09-29 21:41:44', '2021-09-29 21:41:44'),
(67, 'read_alumnis', 'alumnis', '2021-09-29 21:41:44', '2021-09-29 21:41:44'),
(68, 'edit_alumnis', 'alumnis', '2021-09-29 21:41:44', '2021-09-29 21:41:44'),
(69, 'add_alumnis', 'alumnis', '2021-09-29 21:41:44', '2021-09-29 21:41:44'),
(70, 'delete_alumnis', 'alumnis', '2021-09-29 21:41:44', '2021-09-29 21:41:44'),
(71, 'browse_categories_alumnis', 'categories_alumnis', '2021-09-29 21:51:04', '2021-09-29 21:51:04'),
(72, 'read_categories_alumnis', 'categories_alumnis', '2021-09-29 21:51:04', '2021-09-29 21:51:04'),
(73, 'edit_categories_alumnis', 'categories_alumnis', '2021-09-29 21:51:04', '2021-09-29 21:51:04'),
(74, 'add_categories_alumnis', 'categories_alumnis', '2021-09-29 21:51:04', '2021-09-29 21:51:04'),
(75, 'delete_categories_alumnis', 'categories_alumnis', '2021-09-29 21:51:04', '2021-09-29 21:51:04'),
(76, 'browse_partners', 'partners', '2021-09-29 21:52:12', '2021-09-29 21:52:12'),
(77, 'read_partners', 'partners', '2021-09-29 21:52:12', '2021-09-29 21:52:12'),
(78, 'edit_partners', 'partners', '2021-09-29 21:52:12', '2021-09-29 21:52:12'),
(79, 'add_partners', 'partners', '2021-09-29 21:52:12', '2021-09-29 21:52:12'),
(80, 'delete_partners', 'partners', '2021-09-29 21:52:12', '2021-09-29 21:52:12'),
(81, 'browse_jurusans', 'jurusans', '2021-09-29 23:52:50', '2021-09-29 23:52:50'),
(82, 'read_jurusans', 'jurusans', '2021-09-29 23:52:50', '2021-09-29 23:52:50'),
(83, 'edit_jurusans', 'jurusans', '2021-09-29 23:52:50', '2021-09-29 23:52:50'),
(84, 'add_jurusans', 'jurusans', '2021-09-29 23:52:50', '2021-09-29 23:52:50'),
(85, 'delete_jurusans', 'jurusans', '2021-09-29 23:52:50', '2021-09-29 23:52:50'),
(121, 'browse_content_sarpras', 'content_sarpras', '2021-10-06 14:30:52', '2021-10-06 14:30:52'),
(122, 'read_content_sarpras', 'content_sarpras', '2021-10-06 14:30:52', '2021-10-06 14:30:52'),
(123, 'edit_content_sarpras', 'content_sarpras', '2021-10-06 14:30:52', '2021-10-06 14:30:52'),
(124, 'add_content_sarpras', 'content_sarpras', '2021-10-06 14:30:52', '2021-10-06 14:30:52'),
(125, 'delete_content_sarpras', 'content_sarpras', '2021-10-06 14:30:52', '2021-10-06 14:30:52'),
(126, 'browse_gallery_sarpras', 'gallery_sarpras', '2021-10-06 14:35:52', '2021-10-06 14:35:52'),
(127, 'read_gallery_sarpras', 'gallery_sarpras', '2021-10-06 14:35:52', '2021-10-06 14:35:52'),
(128, 'edit_gallery_sarpras', 'gallery_sarpras', '2021-10-06 14:35:52', '2021-10-06 14:35:52'),
(129, 'add_gallery_sarpras', 'gallery_sarpras', '2021-10-06 14:35:52', '2021-10-06 14:35:52'),
(130, 'delete_gallery_sarpras', 'gallery_sarpras', '2021-10-06 14:35:52', '2021-10-06 14:35:52'),
(131, 'browse_mapels', 'mapels', '2021-10-07 02:56:08', '2021-10-07 02:56:08'),
(132, 'read_mapels', 'mapels', '2021-10-07 02:56:08', '2021-10-07 02:56:08'),
(133, 'edit_mapels', 'mapels', '2021-10-07 02:56:08', '2021-10-07 02:56:08'),
(134, 'add_mapels', 'mapels', '2021-10-07 02:56:08', '2021-10-07 02:56:08'),
(135, 'delete_mapels', 'mapels', '2021-10-07 02:56:08', '2021-10-07 02:56:08'),
(136, 'browse_navbars', 'navbars', '2021-10-16 04:24:35', '2021-10-16 04:24:35'),
(137, 'read_navbars', 'navbars', '2021-10-16 04:24:35', '2021-10-16 04:24:35'),
(138, 'edit_navbars', 'navbars', '2021-10-16 04:24:35', '2021-10-16 04:24:35'),
(139, 'add_navbars', 'navbars', '2021-10-16 04:24:35', '2021-10-16 04:24:35'),
(140, 'delete_navbars', 'navbars', '2021-10-16 04:24:35', '2021-10-16 04:24:35'),
(141, 'browse_images', 'images', '2021-10-17 03:22:35', '2021-10-17 03:22:35'),
(142, 'read_images', 'images', '2021-10-17 03:22:35', '2021-10-17 03:22:35'),
(143, 'edit_images', 'images', '2021-10-17 03:22:35', '2021-10-17 03:22:35'),
(144, 'add_images', 'images', '2021-10-17 03:22:35', '2021-10-17 03:22:35'),
(145, 'delete_images', 'images', '2021-10-17 03:22:35', '2021-10-17 03:22:35'),
(146, 'browse_videos', 'videos', '2021-10-17 03:24:20', '2021-10-17 03:24:20'),
(147, 'read_videos', 'videos', '2021-10-17 03:24:20', '2021-10-17 03:24:20'),
(148, 'edit_videos', 'videos', '2021-10-17 03:24:20', '2021-10-17 03:24:20'),
(149, 'add_videos', 'videos', '2021-10-17 03:24:20', '2021-10-17 03:24:20'),
(150, 'delete_videos', 'videos', '2021-10-17 03:24:20', '2021-10-17 03:24:20'),
(151, 'browse_contents', 'contents', '2021-10-17 09:10:32', '2021-10-17 09:10:32'),
(152, 'read_contents', 'contents', '2021-10-17 09:10:32', '2021-10-17 09:10:32'),
(153, 'edit_contents', 'contents', '2021-10-17 09:10:32', '2021-10-17 09:10:32'),
(154, 'add_contents', 'contents', '2021-10-17 09:10:32', '2021-10-17 09:10:32'),
(155, 'delete_contents', 'contents', '2021-10-17 09:10:32', '2021-10-17 09:10:32'),
(156, 'browse_backgrounds', 'backgrounds', '2021-10-18 07:11:15', '2021-10-18 07:11:15'),
(157, 'read_backgrounds', 'backgrounds', '2021-10-18 07:11:15', '2021-10-18 07:11:15'),
(158, 'edit_backgrounds', 'backgrounds', '2021-10-18 07:11:15', '2021-10-18 07:11:15'),
(159, 'add_backgrounds', 'backgrounds', '2021-10-18 07:11:15', '2021-10-18 07:11:15'),
(160, 'delete_backgrounds', 'backgrounds', '2021-10-18 07:11:15', '2021-10-18 07:11:15'),
(161, 'browse_guru_kejuruans', 'guru_kejuruans', '2021-10-21 07:08:03', '2021-10-21 07:08:03'),
(162, 'read_guru_kejuruans', 'guru_kejuruans', '2021-10-21 07:08:03', '2021-10-21 07:08:03'),
(163, 'edit_guru_kejuruans', 'guru_kejuruans', '2021-10-21 07:08:03', '2021-10-21 07:08:03'),
(164, 'add_guru_kejuruans', 'guru_kejuruans', '2021-10-21 07:08:03', '2021-10-21 07:08:03'),
(165, 'delete_guru_kejuruans', 'guru_kejuruans', '2021-10-21 07:08:03', '2021-10-21 07:08:03'),
(166, 'browse_galleries', 'galleries', '2021-10-21 07:12:49', '2021-10-21 07:12:49'),
(167, 'read_galleries', 'galleries', '2021-10-21 07:12:49', '2021-10-21 07:12:49'),
(168, 'edit_galleries', 'galleries', '2021-10-21 07:12:49', '2021-10-21 07:12:49'),
(169, 'add_galleries', 'galleries', '2021-10-21 07:12:49', '2021-10-21 07:12:49'),
(170, 'delete_galleries', 'galleries', '2021-10-21 07:12:49', '2021-10-21 07:12:49'),
(171, 'browse_kategoris', 'kategoris', '2021-10-21 07:13:41', '2021-10-21 07:13:41'),
(172, 'read_kategoris', 'kategoris', '2021-10-21 07:13:41', '2021-10-21 07:13:41'),
(173, 'edit_kategoris', 'kategoris', '2021-10-21 07:13:41', '2021-10-21 07:13:41'),
(174, 'add_kategoris', 'kategoris', '2021-10-21 07:13:41', '2021-10-21 07:13:41'),
(175, 'delete_kategoris', 'kategoris', '2021-10-21 07:13:41', '2021-10-21 07:13:41'),
(176, 'browse_ekskuls', 'ekskuls', '2021-10-21 08:58:00', '2021-10-21 08:58:00'),
(177, 'read_ekskuls', 'ekskuls', '2021-10-21 08:58:00', '2021-10-21 08:58:00'),
(178, 'edit_ekskuls', 'ekskuls', '2021-10-21 08:58:00', '2021-10-21 08:58:00'),
(179, 'add_ekskuls', 'ekskuls', '2021-10-21 08:58:00', '2021-10-21 08:58:00'),
(180, 'delete_ekskuls', 'ekskuls', '2021-10-21 08:58:00', '2021-10-21 08:58:00'),
(181, 'browse_detail_users', 'detail_users', '2021-10-23 04:09:48', '2021-10-23 04:09:48'),
(182, 'read_detail_users', 'detail_users', '2021-10-23 04:09:48', '2021-10-23 04:09:48'),
(183, 'edit_detail_users', 'detail_users', '2021-10-23 04:09:48', '2021-10-23 04:09:48'),
(184, 'add_detail_users', 'detail_users', '2021-10-23 04:09:48', '2021-10-23 04:09:48'),
(185, 'delete_detail_users', 'detail_users', '2021-10-23 04:09:48', '2021-10-23 04:09:48'),
(186, 'browse_skills', 'skills', '2021-10-23 04:10:19', '2021-10-23 04:10:19'),
(187, 'read_skills', 'skills', '2021-10-23 04:10:19', '2021-10-23 04:10:19'),
(188, 'edit_skills', 'skills', '2021-10-23 04:10:19', '2021-10-23 04:10:19'),
(189, 'add_skills', 'skills', '2021-10-23 04:10:19', '2021-10-23 04:10:19'),
(190, 'delete_skills', 'skills', '2021-10-23 04:10:19', '2021-10-23 04:10:19');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(121, 1),
(122, 1),
(123, 1),
(124, 1),
(125, 1),
(126, 1),
(127, 1),
(128, 1),
(129, 1),
(130, 1),
(131, 1),
(132, 1),
(133, 1),
(134, 1),
(135, 1),
(136, 1),
(137, 1),
(138, 1),
(139, 1),
(140, 1),
(141, 1),
(142, 1),
(143, 1),
(144, 1),
(145, 1),
(146, 1),
(147, 1),
(148, 1),
(149, 1),
(150, 1),
(151, 1),
(152, 1),
(153, 1),
(154, 1),
(155, 1),
(156, 1),
(157, 1),
(158, 1),
(159, 1),
(160, 1),
(161, 1),
(162, 1),
(163, 1),
(164, 1),
(165, 1),
(166, 1),
(167, 1),
(168, 1),
(169, 1),
(170, 1),
(171, 1),
(172, 1),
(173, 1),
(174, 1),
(175, 1),
(176, 1),
(177, 1),
(178, 1),
(179, 1),
(180, 1),
(181, 1),
(182, 1),
(183, 1),
(184, 1),
(185, 1),
(186, 1),
(187, 1),
(188, 1),
(189, 1),
(190, 1);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(30, 1, 3, 'Peringati 10 Muharram 1443 H, SMK Taruna Bhakti Berikan Santunan Kepada 133 Siswa Yatim, Piatu, dan Yatim Piatu', NULL, 'SMK Taruna Bhakti melalui Pokja Kesiswaan menggalang partisipasi dengan Yayasan Setya Bhakti dengan seluruh guru SMK Taruna Bhakti memberikan santunan kepada 133 siswa yatim dan atau piatu dalam rangka memperingati 10 Muharram 1443 H.', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: Lato, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 15px;\">SMK Taruna Bhakti melalui Pokja Kesiswaan menggalang partisipasi dengan Yayasan Setya Bhakti dengan seluruh guru SMK Taruna Bhakti memberikan santunan kepada 133 siswa yatim dan atau piatu dalam rangka memperingati 10 Muharram 1443 H.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: Lato, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 15px;\">Kegiatan ini dilaksanakan pada Sabtu, 28 Agustus 2021 bertempat di Mushola Roudhoutul &lsquo;Ilmi, sarana ibadah di SMK Taruna Bhakti. Siswa yang menerima santunan berasal dari seluruh kelas tingkat X, XI, dan XII yang saat ini berjumlah 37 rombel. Teknis penyaluran menerapkan protokol kesehatan ketat dengan membagi dua sesi, yakni pagi pukul 10.00 &ndash; 11.30 WIB dan siang pukul 14.30 &ndash; 16.00 WIB.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: Lato, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 15px;\">Tujuan diselenggarakannya kegiatan ini adalah sebagai bentuk aksi sosial, mempererat tali silaturahmi, dan edukasi kepada seluruh warga sekolah sebagai pembelajaran untuk berbagi kepada sesama. Tak hanya itu, diharapkan program ini dapat terlaksana secara berkelanjutan sebagai wujud kepedulian sekolah kepada seluruh peserta didiknya.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: Lato, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 15px;\"><img class=\"aligncenter size-full wp-image-10032\" style=\"box-sizing: border-box; vertical-align: middle; border: 0px none; height: auto; max-width: 100%; clear: both; display: block; margin-left: auto; margin-right: auto;\" src=\"https://smktarunabhakti.net/wp-content/uploads/2021/08/10-muharom-1.jpg\" sizes=\"(max-width: 1280px) 100vw, 1280px\" srcset=\"https://smktarunabhakti.net/wp-content/uploads/2021/08/10-muharom-1.jpg 1280w, https://smktarunabhakti.net/wp-content/uploads/2021/08/10-muharom-1-300x169.jpg 300w, https://smktarunabhakti.net/wp-content/uploads/2021/08/10-muharom-1-1024x576.jpg 1024w, https://smktarunabhakti.net/wp-content/uploads/2021/08/10-muharom-1-768x432.jpg 768w\" alt=\"\" width=\"1280\" height=\"720\" /></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: Lato, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 15px;\"><img class=\"aligncenter size-full wp-image-10033\" style=\"box-sizing: border-box; vertical-align: middle; border: 0px none; height: auto; max-width: 100%; clear: both; display: block; margin-left: auto; margin-right: auto;\" src=\"https://smktarunabhakti.net/wp-content/uploads/2021/08/10-Muharom-2.jpg\" sizes=\"(max-width: 1280px) 100vw, 1280px\" srcset=\"https://smktarunabhakti.net/wp-content/uploads/2021/08/10-Muharom-2.jpg 1280w, https://smktarunabhakti.net/wp-content/uploads/2021/08/10-Muharom-2-300x169.jpg 300w, https://smktarunabhakti.net/wp-content/uploads/2021/08/10-Muharom-2-1024x576.jpg 1024w, https://smktarunabhakti.net/wp-content/uploads/2021/08/10-Muharom-2-768x432.jpg 768w\" alt=\"\" width=\"1280\" height=\"720\" /></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: Lato, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 15px;\"><img class=\"aligncenter size-full wp-image-10034\" style=\"box-sizing: border-box; vertical-align: middle; border: 0px none; height: auto; max-width: 100%; clear: both; display: block; margin-left: auto; margin-right: auto;\" src=\"https://smktarunabhakti.net/wp-content/uploads/2021/08/10-Muharom-3.jpg\" sizes=\"(max-width: 1280px) 100vw, 1280px\" srcset=\"https://smktarunabhakti.net/wp-content/uploads/2021/08/10-Muharom-3.jpg 1280w, https://smktarunabhakti.net/wp-content/uploads/2021/08/10-Muharom-3-300x138.jpg 300w, https://smktarunabhakti.net/wp-content/uploads/2021/08/10-Muharom-3-1024x471.jpg 1024w, https://smktarunabhakti.net/wp-content/uploads/2021/08/10-Muharom-3-768x353.jpg 768w\" alt=\"\" width=\"1280\" height=\"589\" /></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: Lato, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 15px;\"><img class=\"aligncenter size-full wp-image-10035\" style=\"box-sizing: border-box; vertical-align: middle; border: 0px none; height: auto; max-width: 100%; clear: both; display: block; margin-left: auto; margin-right: auto;\" src=\"https://smktarunabhakti.net/wp-content/uploads/2021/08/10-Muharom.jpg\" sizes=\"(max-width: 1280px) 100vw, 1280px\" srcset=\"https://smktarunabhakti.net/wp-content/uploads/2021/08/10-Muharom.jpg 1280w, https://smktarunabhakti.net/wp-content/uploads/2021/08/10-Muharom-300x169.jpg 300w, https://smktarunabhakti.net/wp-content/uploads/2021/08/10-Muharom-1024x576.jpg 1024w, https://smktarunabhakti.net/wp-content/uploads/2021/08/10-Muharom-768x432.jpg 768w\" alt=\"\" width=\"1280\" height=\"720\" /></p>', 'posts\\October2021\\fRyMijdbsP4vOimiapgx.jpg', 'peringati-10-muharram-1443-h-smk-taruna-bhakti-berikan-santunan-kepada-133-siswa-yatim-piatu-dan-yatim-piatu', NULL, NULL, 'PUBLISHED', 1, '2021-10-08 04:13:02', '2021-10-14 12:46:57'),
(31, 1, 3, 'SMK Taruna Bhakti Selenggarakan Gebyar Vaksinasi Pelajar Dosis Ke-1', NULL, 'SMK Taruna Bhakti melalui Pokja Kesiswaan ditunjuk sebagai Pelaksana Kegiatan Gebyar Vaksinasi Pelajar Dosis Ke-1 pada Jumat, 3 September 2021.', '<div class=\"entry-content\" style=\"box-sizing: border-box; margin: 1.5em 0px 0px; color: #212529; font-family: Lato, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 15px;\">\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\">SMK Taruna Bhakti melalui Pokja Kesiswaan ditunjuk sebagai Pelaksana Kegiatan Gebyar Vaksinasi Pelajar Dosis Ke-1 pada Jumat, 3 September 2021. Kegiatan ini merupakan kerjasama Musyawarah Kerja Kepala Sekolah (MKKS) Kota Depok dengan Rumah Sakit Bhayangkara Brimob Depok.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\">Peserta yang mengikuti program vaksinasi ini sebanyak 835 orang dengan rincian peserta dari SMK Taruna Bhakti sebanyak 488 orang, SMP dan SMK lain sebanyak 367 orang, dan warga lingkungan sekitar SMK Taruna Bhakti sebanyak 92 orang.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\">Jenis vaksin yang diberikan adalah Pfizer, salah satu jenis vaksin yang digunakan di Indonesia. Pelaksanaan kegiatan ini menerapkan protokol kesehatan secara ketat yang dijuga dikawal oleh Petugas Kesatuan Brimob Depok. Tujuan diselenggarakan program ini adalah sebagai bakti sekolah kepada negara dalam membantu proses percepatan vaksinasi untuk melawan pandemi Covid-19, khususnya untuk kalangan pelajar sebagai syarat pemberlakuan Pembelajaran Tatap Muka Terbatas (PTMT) SMK Taruna Bhakti Tahun Pelajaran 2021/2022.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><img class=\"aligncenter size-full wp-image-10039\" style=\"box-sizing: border-box; vertical-align: middle; border: 0px none; height: auto; max-width: 100%; clear: both; display: block; margin-left: auto; margin-right: auto;\" src=\"https://smktarunabhakti.net/wp-content/uploads/2021/09/Vaksin-1.jpg\" sizes=\"(max-width: 1280px) 100vw, 1280px\" srcset=\"https://smktarunabhakti.net/wp-content/uploads/2021/09/Vaksin-1.jpg 1280w, https://smktarunabhakti.net/wp-content/uploads/2021/09/Vaksin-1-300x169.jpg 300w, https://smktarunabhakti.net/wp-content/uploads/2021/09/Vaksin-1-1024x576.jpg 1024w, https://smktarunabhakti.net/wp-content/uploads/2021/09/Vaksin-1-768x432.jpg 768w\" alt=\"\" width=\"1280\" height=\"720\" /></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><img class=\"aligncenter size-full wp-image-10040\" style=\"box-sizing: border-box; vertical-align: middle; border: 0px none; height: auto; max-width: 100%; clear: both; display: block; margin-left: auto; margin-right: auto;\" src=\"https://smktarunabhakti.net/wp-content/uploads/2021/09/Vaksin-2.jpg\" sizes=\"(max-width: 1280px) 100vw, 1280px\" srcset=\"https://smktarunabhakti.net/wp-content/uploads/2021/09/Vaksin-2.jpg 1280w, https://smktarunabhakti.net/wp-content/uploads/2021/09/Vaksin-2-300x169.jpg 300w, https://smktarunabhakti.net/wp-content/uploads/2021/09/Vaksin-2-1024x575.jpg 1024w, https://smktarunabhakti.net/wp-content/uploads/2021/09/Vaksin-2-768x431.jpg 768w\" alt=\"\" width=\"1280\" height=\"719\" /></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><img class=\"aligncenter size-full wp-image-10041\" style=\"box-sizing: border-box; vertical-align: middle; border: 0px none; height: auto; max-width: 100%; clear: both; display: block; margin-left: auto; margin-right: auto;\" src=\"https://smktarunabhakti.net/wp-content/uploads/2021/09/Vaksin-3.jpg\" sizes=\"(max-width: 1280px) 100vw, 1280px\" srcset=\"https://smktarunabhakti.net/wp-content/uploads/2021/09/Vaksin-3.jpg 1280w, https://smktarunabhakti.net/wp-content/uploads/2021/09/Vaksin-3-300x169.jpg 300w, https://smktarunabhakti.net/wp-content/uploads/2021/09/Vaksin-3-1024x575.jpg 1024w, https://smktarunabhakti.net/wp-content/uploads/2021/09/Vaksin-3-768x431.jpg 768w\" alt=\"\" width=\"1280\" height=\"719\" /></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><img class=\"aligncenter size-full wp-image-10042\" style=\"box-sizing: border-box; vertical-align: middle; border: 0px none; height: auto; max-width: 100%; clear: both; display: block; margin-left: auto; margin-right: auto;\" src=\"https://smktarunabhakti.net/wp-content/uploads/2021/09/Vaksin-4.jpg\" sizes=\"(max-width: 1280px) 100vw, 1280px\" srcset=\"https://smktarunabhakti.net/wp-content/uploads/2021/09/Vaksin-4.jpg 1280w, https://smktarunabhakti.net/wp-content/uploads/2021/09/Vaksin-4-300x225.jpg 300w, https://smktarunabhakti.net/wp-content/uploads/2021/09/Vaksin-4-1024x768.jpg 1024w, https://smktarunabhakti.net/wp-content/uploads/2021/09/Vaksin-4-768x576.jpg 768w\" alt=\"\" width=\"1280\" height=\"960\" /></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><img class=\"aligncenter size-full wp-image-10043\" style=\"box-sizing: border-box; vertical-align: middle; border: 0px none; height: auto; max-width: 100%; clear: both; display: block; margin-left: auto; margin-right: auto;\" src=\"https://smktarunabhakti.net/wp-content/uploads/2021/09/vaksin-5.jpg\" sizes=\"(max-width: 1280px) 100vw, 1280px\" srcset=\"https://smktarunabhakti.net/wp-content/uploads/2021/09/vaksin-5.jpg 1280w, https://smktarunabhakti.net/wp-content/uploads/2021/09/vaksin-5-300x225.jpg 300w, https://smktarunabhakti.net/wp-content/uploads/2021/09/vaksin-5-1024x768.jpg 1024w, https://smktarunabhakti.net/wp-content/uploads/2021/09/vaksin-5-768x576.jpg 768w\" alt=\"\" width=\"1280\" height=\"960\" /></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><img class=\"aligncenter size-full wp-image-10044\" style=\"box-sizing: border-box; vertical-align: middle; border: 0px none; height: auto; max-width: 100%; clear: both; display: block; margin-left: auto; margin-right: auto;\" src=\"https://smktarunabhakti.net/wp-content/uploads/2021/09/Vaksin-6.jpg\" sizes=\"(max-width: 1280px) 100vw, 1280px\" srcset=\"https://smktarunabhakti.net/wp-content/uploads/2021/09/Vaksin-6.jpg 1280w, https://smktarunabhakti.net/wp-content/uploads/2021/09/Vaksin-6-300x222.jpg 300w, https://smktarunabhakti.net/wp-content/uploads/2021/09/Vaksin-6-1024x759.jpg 1024w, https://smktarunabhakti.net/wp-content/uploads/2021/09/Vaksin-6-768x569.jpg 768w\" alt=\"\" width=\"1280\" height=\"949\" /></p>\r\n<p>&nbsp;</p>\r\n</div>', 'posts\\October2021\\lJhPRF2DGuTCG3fGBhJR.jpg', 'smk-taruna-bhakti-selenggarakan-gebyar-vaksinasi-pelajar-dosis-ke-1', NULL, NULL, 'PUBLISHED', 1, '2021-10-08 04:14:01', '2021-10-14 12:38:35');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2021-09-21 07:32:55', '2021-09-21 07:32:55'),
(2, 'user', 'Normal User', '2021-09-21 07:32:56', '2021-09-21 07:32:56'),
(3, 'siswa', 'Siswa', '2021-09-23 20:57:35', '2021-09-23 20:58:45'),
(4, 'guru', 'Guru', '2021-09-23 20:58:28', '2021-09-23 20:58:28'),
(5, 'manager', 'Manager', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 10, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 11, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings\\October2021\\kPm9a78D1EXFcXIgtmSz.png', '', 'image', 1, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 12, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', 'settings/October2021/mxaxhTGZ741nEZaPuKXA.png', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'SMK Taruna Bhakti', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Page Admin SMK Taruna Bhakti', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', 'settings/October2021/cWCmjpfhKB9xzkabkiFS.png', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin'),
(13, 'site.fitur_home_page', 'Fitur Home Page', 'settings/October2021/DLpESG8ztdttleSD9CQz.png', NULL, 'image', 2, 'Site'),
(15, 'site.virtual-tour', 'Virtual Tour', 'https://kuula.co/share/collection/7YQlT?fs=1&vr=1&sd=1&initload=0&thumbs=1&info=0&logo=1&logosize=40', NULL, 'text', 3, 'Site'),
(16, 'site.heading', 'Heading', '<h1>SMK Pusat</h1>\r\n<h1>Keunggulan</h1>', NULL, 'rich_text_box', 4, 'Site'),
(17, 'site.sub_heading', 'Sub Heading', 'Our Quality Ask Be DIfferent', NULL, 'text_area', 8, 'Site'),
(23, 'site.instagram', 'Link Instagram', 'https://instagram.com/starbhak.official?utm_medium=copy_link', NULL, 'text', 16, 'Site'),
(24, 'site.facebook', 'Link Facebook', 'https://web.facebook.com/smktarunabhaktidepok', NULL, 'text', 17, 'Site');

-- --------------------------------------------------------

--
-- Table structure for table `siswas`
--

CREATE TABLE `siswas` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kelas_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `nipd` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `siswas`
--

INSERT INTO `siswas` (`id`, `name`, `kelas_id`, `email`, `password`, `created_at`, `updated_at`, `nipd`, `remember_token`) VALUES
(3, 'admin@admin.com', '2', 'alifqi171@gmail.com', NULL, '2021-10-16 12:36:08', '2021-10-16 12:36:08', '2021-10-15 17:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_skill` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `nama_skill`, `created_at`, `updated_at`) VALUES
(1, 'Laravel', '2021-10-23 04:11:55', '2021-10-23 04:11:55'),
(2, 'HTML', '2021-10-23 04:12:03', '2021-10-23 04:12:03'),
(3, 'CSS', '2021-10-23 04:12:07', '2021-10-23 04:12:07');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2021-09-21 07:33:14', '2021-09-21 07:33:14'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2021-09-21 07:33:14', '2021-09-21 07:33:14'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2021-09-21 07:33:14', '2021-09-21 07:33:14'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2021-09-21 07:33:14', '2021-09-21 07:33:14'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2021-09-21 07:33:14', '2021-09-21 07:33:14'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2021-09-21 07:33:14', '2021-09-21 07:33:14'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2021-09-21 07:33:14', '2021-09-21 07:33:14'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2021-09-21 07:33:14', '2021-09-21 07:33:14'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2021-09-21 07:33:14', '2021-09-21 07:33:14'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2021-09-21 07:33:15', '2021-09-21 07:33:15'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2021-09-21 07:33:15', '2021-09-21 07:33:15'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2021-09-21 07:33:15', '2021-09-21 07:33:15'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2021-09-21 07:33:15', '2021-09-21 07:33:15'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2021-09-21 07:33:15', '2021-09-21 07:33:15'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2021-09-21 07:33:15', '2021-09-21 07:33:15'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2021-09-21 07:33:15', '2021-09-21 07:33:15'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2021-09-21 07:33:15', '2021-09-21 07:33:15'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2021-09-21 07:33:15', '2021-09-21 07:33:15'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2021-09-21 07:33:15', '2021-09-21 07:33:15'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2021-09-21 07:33:15', '2021-09-21 07:33:15'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2021-09-21 07:33:15', '2021-09-21 07:33:15'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2021-09-21 07:33:15', '2021-09-21 07:33:15'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2021-09-21 07:33:15', '2021-09-21 07:33:15'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2021-09-21 07:33:15', '2021-09-21 07:33:15'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2021-09-21 07:33:15', '2021-09-21 07:33:15'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2021-09-21 07:33:15', '2021-09-21 07:33:15'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2021-09-21 07:33:16', '2021-09-21 07:33:16'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2021-09-21 07:33:16', '2021-09-21 07:33:16'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2021-09-21 07:33:16', '2021-09-21 07:33:16'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2021-09-21 07:33:16', '2021-09-21 07:33:16');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `nomor_induk` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jabatan_guru` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kelas_siswa` int(11) DEFAULT NULL,
  `spesifc_role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mapel_id` int(11) DEFAULT NULL,
  `detail_user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`, `nomor_induk`, `jabatan_guru`, `kelas_siswa`, `spesifc_role`, `mapel_id`, `detail_user`) VALUES
(1, 1, 'Taruna', 'admin@admin.com', 'users/default.png', NULL, '$2y$10$Fo8k1RIU9Ej0B7oa4thUgexNlQk06ytDVR6fcbbS6hVBZlUQ6HIyC', 'goYcHXZbQy5jgDIe99Ob0R0mv902ZPg6MotZp5dQb4QuxfLuZ8yf3OrwFAcr', NULL, '2021-08-19 18:52:57', '2021-08-19 18:52:57', NULL, NULL, NULL, '', NULL, NULL),
(2, 1, 'admin', 'admin@email.com', 'users/default.png', NULL, '$2y$10$R4YUok8EtOVF81IlFaCTZ.8l6i03Hgd6B1YUZaYQK/cVC0k8mUj76', NULL, '{\"locale\":\"id\"}', '2021-10-04 19:09:29', '2021-10-05 00:01:23', '523235235', NULL, NULL, 'kepsek', NULL, NULL),
(3, 3, 'Ari Suhendra Tahyadi', '32232@gmail.com', 'users/default.png', NULL, '$2y$10$qMNo101mY9bBwUaUBHidAuKh1NiuG0b4ATbUF.mhBYouy87Pv0UHC', NULL, '{\"locale\":\"id\"}', '2021-10-04 19:21:41', '2021-10-05 00:03:18', '42342342342', NULL, 3, 'siswa', NULL, NULL),
(4, 4, 'Joko', 'joko@gmail.com', 'users/default.png', NULL, '$2y$10$IPvgfaSlLOMZpSKQCrKcHel1pMIArKFcvNGg0m7VftDcgCtMqjWtC', NULL, '{\"locale\":\"id\"}', '2021-10-04 19:25:37', '2021-10-22 07:13:28', '12910100259', NULL, NULL, 'litbang', NULL, NULL),
(5, 1, 'admin', 'admin@test.com', 'users/default.png', NULL, '$2y$10$INKBBk0I6VUlMaIN2ALde.BIxc4q0PAaeiRx5i68s0Rf41.qaddqm', NULL, NULL, '2021-10-04 23:28:44', '2021-10-05 00:01:03', '4324234234', NULL, NULL, 'admin', NULL, NULL),
(6, 5, 'THEBBB', 'Yuhnpa@gmail.com', 'users\\October2021\\E8czVAHwOuRA1hZJKfyk.jpg', NULL, '$2y$10$BNaBhza.bvWGNQyZknvOQuMztrlh1JXW1Q3q3izJoeM69Ne13j7Ky', NULL, NULL, '2021-10-04 23:43:46', '2021-10-05 02:19:25', '3423242342342', 'Kepala Program', NULL, 'kaprog', NULL, NULL),
(8, 3, 'siswa0', 'siswa0@gmail.com', 'users/default.png', NULL, '$2y$10$cgIafsOLGIJ5m.tI1sTAe.FzknGSfOUCyANsaGopSNjKeNIs2sMXK', '', '[]', '2021-10-08 08:31:02', '2021-10-08 08:31:02', '9591', '', 7, 'siswa', 3, NULL),
(9, 3, 'siswa1', 'siswa1@gmail.com', 'users/default.png', NULL, '$2y$10$8Fs6ZBjA60UToL.97tNZteZFYsBtWcCDmaxr9hI2GnyMV.xPiygGe', '', '[]', '2021-10-08 08:31:02', '2021-10-08 08:31:02', '17928', '', 25, 'siswa', 2, NULL),
(10, 3, 'siswa2', 'siswa2@gmail.com', 'users/default.png', NULL, '$2y$10$VofvpZ/HUW822zlcCMD4pO/s.tVER/cwH8/IGIvVapMxG1k0fVpea', '', '[]', '2021-10-08 08:31:02', '2021-10-08 08:31:02', '75', '', 18, 'siswa', 4, NULL),
(11, 3, 'siswa3', 'siswa3@gmail.com', 'users/default.png', NULL, '$2y$10$POfDubHx9YI2IH0hq76mbecNe8nIA59p2mxuR/7HUlHK0dFbAkjLe', '', '[]', '2021-10-08 08:31:02', '2021-10-08 08:31:02', '17', '', 9, 'siswa', 3, NULL),
(12, 3, 'siswa4', 'siswa4@gmail.com', 'users/default.png', NULL, '$2y$10$YS77dRFaTSki2c6CT2/Hmuh0w07uTh0Uqt/6cAV2N8BgmR09JG1jy', '', '[]', '2021-10-08 08:31:02', '2021-10-08 08:31:02', '940', '', 14, 'siswa', 1, NULL),
(13, 3, 'siswa5', 'siswa5@gmail.com', 'users/default.png', NULL, '$2y$10$BIBI5OpGkrWn0Z3yddon4..fLLdgDtaOlrm7XBvVNvz9dKIxiBpDC', '', '[]', '2021-10-08 08:31:02', '2021-10-08 08:31:02', '14680027', '', 42, 'siswa', 1, NULL),
(14, 3, 'siswa6', 'siswa6@gmail.com', 'users/default.png', NULL, '$2y$10$KohcIhvv.sYcrbkGD6ohhOJ1Hq.A5JcdgnFXk7FWTfnSBeOvUyv8G', '', '[]', '2021-10-08 08:31:03', '2021-10-08 08:31:03', '24', '', 12, 'siswa', 2, NULL),
(15, 3, 'siswa7', 'siswa7@gmail.com', 'users/default.png', NULL, '$2y$10$2n0lBfCD263OYcN.HYtuyeHiQ5QPbR/aQrbE0oqYsJa.3cD9c7iLu', '', '[]', '2021-10-08 08:31:03', '2021-10-08 08:31:03', '95139656', '', 9, 'siswa', 4, NULL),
(16, 3, 'siswa8', 'siswa8@gmail.com', 'users/default.png', NULL, '$2y$10$I07cNq8a0YJSo0fUQDrmk.kr21XEWBAHACFTzbPIeoTde7UfJPES.', '', '[]', '2021-10-08 08:31:03', '2021-10-08 08:31:03', '9597461', '', 16, 'siswa', 1, NULL),
(17, 3, 'siswa9', 'siswa9@gmail.com', 'users/default.png', NULL, '$2y$10$GjISADlK5lgI1evXWFfNDey4c/6J5Ut5SjOCvmsxZ.iBVAM5RIamy', '', '[]', '2021-10-08 08:31:03', '2021-10-08 08:31:03', '3', '', 12, 'siswa', 1, NULL),
(18, 3, 'siswa10', 'siswa10@gmail.com', 'users/default.png', NULL, '$2y$10$1jqTE2COWcTODgecHyVwdOvX.dyGn.llDFlmRh0e0xVu9ZAwCRGy.', '', '[]', '2021-10-08 08:31:03', '2021-10-08 08:31:03', '32516947', '', 24, 'siswa', 2, NULL),
(19, 3, 'siswa11', 'siswa11@gmail.com', 'users/default.png', NULL, '$2y$10$oZoCGWZCHD1hJ/Lujq00d.EVRT8ylHQhhm10w/csW0aTEBxMVsBh.', '', '[]', '2021-10-08 08:31:03', '2021-10-08 08:31:03', '75892', '', 34, 'siswa', 1, NULL),
(20, 3, 'siswa12', 'siswa12@gmail.com', 'users/default.png', NULL, '$2y$10$Gm7HyzM.x0p3QwjuAzKLVeVIgeaPaUPk1FUptDEo0LJmPtOq46yMC', '', '[]', '2021-10-08 08:31:04', '2021-10-08 08:31:04', '7', '', 8, 'siswa', 4, NULL),
(21, 3, 'siswa13', 'siswa13@gmail.com', 'users/default.png', NULL, '$2y$10$ZLCZ/KknhezSuw6IaCkMbuY6VXFIevz5MvHd63xbEHoItHxM/FSrC', '', '[]', '2021-10-08 08:31:04', '2021-10-08 08:31:04', '5', '', 19, 'siswa', 1, NULL),
(22, 3, 'siswa14', 'siswa14@gmail.com', 'users/default.png', NULL, '$2y$10$K6IEAJygL03xxdO806LLU./Poz3wGGMegEJEXdxHI6CsLD300yv9e', '', '[]', '2021-10-08 08:31:04', '2021-10-08 08:31:04', '689', '', 38, 'siswa', 3, NULL),
(23, 3, 'siswa15', 'siswa15@gmail.com', 'users/default.png', NULL, '$2y$10$Y95iDzFU3rNFsxpRFQfcD.1oTfJH8M0UmH9NWPNrhdylzvJS8rLqO', '', '[]', '2021-10-08 08:31:04', '2021-10-08 08:31:04', '0', '', 10, 'siswa', 3, NULL),
(24, 3, 'siswa16', 'siswa16@gmail.com', 'users/default.png', NULL, '$2y$10$.iLEiGwjv5cVfs95F/3BbuNM1Vj7b/v3gHHejIyQ26PKaH8R58gUi', '', '[]', '2021-10-08 08:31:04', '2021-10-08 08:31:04', '138', '', 14, 'siswa', 3, NULL),
(25, 3, 'siswa17', 'siswa17@gmail.com', 'users/default.png', NULL, '$2y$10$coMhBmHs0y/N/pV/wPP47Oi7fClCp5fj9LSbRSh/Gl6h02/gW1Gj.', '', '[]', '2021-10-08 08:31:04', '2021-10-08 08:31:04', '386895', '', 21, 'siswa', 4, NULL),
(26, 3, 'siswa18', 'siswa18@gmail.com', 'users/default.png', NULL, '$2y$10$gwvCQiyCEL1rmOH1sAMGEOJXJJ39HdPQV4igmRlu4QPjsfGurWyDS', '', '[]', '2021-10-08 08:31:04', '2021-10-08 08:31:04', '3344', '', 11, 'siswa', 4, NULL),
(27, 3, 'siswa19', 'siswa19@gmail.com', 'users/default.png', NULL, '$2y$10$h9.q77mIWbCJB64iM0lhFuK7LIhqaKchUDb6.80LIhOFnREhmT6uy', '', '[]', '2021-10-08 08:31:04', '2021-10-08 08:31:04', '6395956', '', 45, 'siswa', 1, NULL),
(28, 3, 'siswa20', 'siswa20@gmail.com', 'users/default.png', NULL, '$2y$10$3S2j7V9qlBHBZVqxS/rPrelQzSAzChfjuVHF6eY1WJv1gSsIXk97a', '', '[]', '2021-10-08 08:31:04', '2021-10-08 08:31:04', '6', '', 17, 'siswa', 2, NULL),
(29, 3, 'siswa21', 'siswa21@gmail.com', 'users/default.png', NULL, '$2y$10$grV6WkHrjumDGgWpw8GLf.ELaWstBWCog/I5xCrsbNpHeirNpPQue', '', '[]', '2021-10-08 08:31:05', '2021-10-08 08:31:05', '7652', '', 45, 'siswa', 3, NULL),
(30, 3, 'siswa22', 'siswa22@gmail.com', 'users/default.png', NULL, '$2y$10$aA4WoVXZiUuJmJw1tosv2uEWKr0X.e8quV0Xn3gwK1lqMqdPHw6wS', '', '[]', '2021-10-08 08:31:05', '2021-10-08 08:31:05', '5982', '', 42, 'siswa', 2, NULL),
(31, 3, 'siswa23', 'siswa23@gmail.com', 'users/default.png', NULL, '$2y$10$rzyElIGjNcJE56JsuwUkBuNA6yh7K6LlMRc0TSrbzbNP7LNNRCl0q', '', '[]', '2021-10-08 08:31:05', '2021-10-08 08:31:05', '9', '', 35, 'siswa', 3, NULL),
(32, 3, 'siswa24', 'siswa24@gmail.com', 'users/default.png', NULL, '$2y$10$57/FLe4uHpM2qN3.XZ68PeVtDTglONRhYxhFakVlEBlxnbTGmG4Y.', '', '[]', '2021-10-08 08:31:05', '2021-10-08 08:31:05', '9321364', '', 32, 'siswa', 4, NULL),
(33, 3, 'siswa25', 'siswa25@gmail.com', 'users/default.png', NULL, '$2y$10$2KNVxsAUTaavRjcqUvKW3ePM.5t3uNybMl.bhGYUUZHbKtulc1I5y', '', '[]', '2021-10-08 08:31:05', '2021-10-08 08:31:05', '115719', '', 40, 'siswa', 3, NULL),
(34, 3, 'siswa26', 'siswa26@gmail.com', 'users/default.png', NULL, '$2y$10$l.cMwuHNSQY79z/3.uygy.GcuOW4.pOztDw56d1YvyBamBRe4PAjm', '', '[]', '2021-10-08 08:31:05', '2021-10-08 08:31:05', '5341', '', 7, 'siswa', 3, NULL),
(35, 3, 'siswa27', 'siswa27@gmail.com', 'users/default.png', NULL, '$2y$10$rbSM1hVmW5jzLSpFSl6qXO9TM/YyqKCwKR9pyRpdccDfyupwLLILy', '', '[]', '2021-10-08 08:31:05', '2021-10-08 08:31:05', '943625', '', 3, 'siswa', 1, NULL),
(36, 3, 'siswa28', 'siswa28@gmail.com', 'users/default.png', NULL, '$2y$10$q9BulNHHiTZRh6imIBy2COU3Hi/i/1.ojPtEtvgaQxEn9RUktt51G', '', '[]', '2021-10-08 08:31:06', '2021-10-08 08:31:06', '145', '', 34, 'siswa', 4, NULL),
(37, 3, 'siswa29', 'siswa29@gmail.com', 'users/default.png', NULL, '$2y$10$w3/8XrKvPxkLrjoVKJo39ep0cqo32uR.j7ZLU3khPLG2cG1dH/s..', '', '[]', '2021-10-08 08:31:06', '2021-10-08 08:31:06', '74810367', '', 7, 'siswa', 1, NULL),
(38, 3, 'siswa30', 'siswa30@gmail.com', 'users/default.png', NULL, '$2y$10$pX.jTiQdOPpaNmm.kw0Ho.wJ4T4jKFRPgUHxdh61cIrqIuZJPsmYC', '', '[]', '2021-10-08 08:31:06', '2021-10-08 08:31:06', '521108910', '', 4, 'siswa', 3, NULL),
(39, 3, 'siswa31', 'siswa31@gmail.com', 'users/default.png', NULL, '$2y$10$q4BCgUpcxobEqkuTNlBfz.l9bSuYPJ9y94cNkxE9UaaNamtKQdpgy', '', '[]', '2021-10-08 08:31:06', '2021-10-08 08:31:06', '4852916', '', 44, 'siswa', 2, NULL),
(40, 3, 'siswa32', 'siswa32@gmail.com', 'users/default.png', NULL, '$2y$10$GQXyFMie8QRGWd99DWvi8OgXQoV6vv1En8tC4nvyYbaZ1JxMDqVFm', '', '[]', '2021-10-08 08:31:06', '2021-10-08 08:31:06', '2846209', '', 37, 'siswa', 2, NULL),
(41, 3, 'siswa33', 'siswa33@gmail.com', 'users/default.png', NULL, '$2y$10$I5uxqfmlEOLTMAY0QJ0G6Okh0o58ujToOq9TD5vTtc6ycX0tEdIGK', '', '[]', '2021-10-08 08:31:06', '2021-10-08 08:31:06', '88135469', '', 21, 'siswa', 3, NULL),
(42, 3, 'siswa34', 'siswa34@gmail.com', 'users/default.png', NULL, '$2y$10$wb6BPMxB/doBLS5jYfgxxu.Ayx5B0eCtvuxtbZQeDlLA.KlkMHyTO', '', '[]', '2021-10-08 08:31:06', '2021-10-08 08:31:06', '8', '', 42, 'siswa', 4, NULL),
(43, 3, 'siswa35', 'siswa35@gmail.com', 'users/default.png', NULL, '$2y$10$dtWGQky6di/nUtIRhzAnAO8ZNnbyrSIQ7ON9VpmTaw/QhAryRaiAe', '', '[]', '2021-10-08 08:31:06', '2021-10-08 08:31:06', '4471', '', 46, 'siswa', 3, NULL),
(44, 3, 'siswa36', 'siswa36@gmail.com', 'users/default.png', NULL, '$2y$10$bYLcz6URnp2rFw1YnZ3VcOsOMo.0olghHqsefOcyooJrPAXU.Y6Ou', '', '[]', '2021-10-08 08:31:06', '2021-10-08 08:31:06', '7924', '', 46, 'siswa', 4, NULL),
(45, 3, 'siswa37', 'siswa37@gmail.com', 'users/default.png', NULL, '$2y$10$ctueDWAPNpTPxvxIBtAFzeI8j6F3EsIVrOK6gkiTdHXh.Sm71rSDG', '', '[]', '2021-10-08 08:31:07', '2021-10-08 08:31:07', '30383', '', 43, 'siswa', 4, NULL),
(46, 3, 'siswa38', 'siswa38@gmail.com', 'users/default.png', NULL, '$2y$10$nA3uYSzxg5NwBIcei3ZbhO9HbEXBzfAid8HotCkpR2S0mFi6o834y', '', '[]', '2021-10-08 08:31:07', '2021-10-08 08:31:07', '292', '', 31, 'siswa', 4, NULL),
(47, 3, 'siswa39', 'siswa39@gmail.com', 'users/default.png', NULL, '$2y$10$XPmDWzAUNG1UaKm.tAIgWOqobUNCJcwINjozdUvKq5K1MyuHzsan2', '', '[]', '2021-10-08 08:31:07', '2021-10-08 08:31:07', '6098838', '', 44, 'siswa', 1, NULL),
(48, 3, 'siswa40', 'siswa40@gmail.com', 'users/default.png', NULL, '$2y$10$nnmonSPejnECkvNNnNMOu.QFkd61eWgTzbjQByyPaL//q5HgTQyGC', '', '[]', '2021-10-08 08:31:07', '2021-10-08 08:31:07', '16591418', '', 32, 'siswa', 1, NULL),
(49, 3, 'siswa41', 'siswa41@gmail.com', 'users/default.png', NULL, '$2y$10$A7Px0yES20A6m.JECq2vQunxWmA.kMa.UlnstM.uMbkvUn2ilPFga', '', '[]', '2021-10-08 08:31:07', '2021-10-08 08:31:07', '80873816', '', 15, 'siswa', 3, NULL),
(50, 3, 'siswa42', 'siswa42@gmail.com', 'users/default.png', NULL, '$2y$10$Sni9tq3Q8fBfNAUt2g6fV.VFVtpX7pIkEl3SAYmcTuOJLltSSDsGe', '', '[]', '2021-10-08 08:31:07', '2021-10-08 08:31:07', '52940593', '', 43, 'siswa', 3, NULL),
(51, 3, 'siswa43', 'siswa43@gmail.com', 'users/default.png', NULL, '$2y$10$MlvDyE0M4iGDeWtNCeShuOkAB9OW9R7RFKWvLvsiltG.53Z4MiepC', '', '[]', '2021-10-08 08:31:07', '2021-10-08 08:31:07', '23515379', '', 9, 'siswa', 2, NULL),
(52, 3, 'siswa44', 'siswa44@gmail.com', 'users/default.png', NULL, '$2y$10$hn4Q.hgexBRMbelZO3tt8e4LltEOHGUyHUJrXBqRr72jkid2DNMBO', '', '[]', '2021-10-08 08:31:07', '2021-10-08 08:31:07', '261637', '', 19, 'siswa', 3, NULL),
(53, 3, 'siswa45', 'siswa45@gmail.com', 'users/default.png', NULL, '$2y$10$c942nyzmrqgpLvrHGB4vWODu1.SIBM39cvbIw6IQtj/pTclFkYYW2', '', '[]', '2021-10-08 08:31:07', '2021-10-08 08:31:07', '831', '', 20, 'siswa', 3, NULL),
(54, 3, 'siswa46', 'siswa46@gmail.com', 'users/default.png', NULL, '$2y$10$KDN.n9HwXrYZZmRjEMSxq.Yb/wHxBrEFCTK2leHDQJ8dh9dB7QcKq', '', '[]', '2021-10-08 08:31:07', '2021-10-08 08:31:07', '772', '', 11, 'siswa', 1, NULL),
(55, 3, 'siswa47', 'siswa47@gmail.com', 'users/default.png', NULL, '$2y$10$frMbOeryGu1YucD8g3UNo.vG1qCqij0z0r.EGi/jp0oNErADYpUw6', '', '[]', '2021-10-08 08:31:08', '2021-10-08 08:31:08', '194898', '', 12, 'siswa', 4, NULL),
(56, 3, 'siswa48', 'siswa48@gmail.com', 'users/default.png', NULL, '$2y$10$MP1gRIt0Sjgg0dxxSslQV.kQnK2tj5w3LnPc1aO/eKl1w7A7PRHtK', '', '[]', '2021-10-08 08:31:08', '2021-10-08 08:31:08', '8', '', 45, 'siswa', 1, NULL),
(57, 3, 'siswa49', 'siswa49@gmail.com', 'users/default.png', NULL, '$2y$10$jKQ1h7SZX.FaLb0gNVE8ZuLTe.4FB1Runjg6LxuI5RQfrAYmyI0yq', '', '[]', '2021-10-08 08:31:08', '2021-10-08 08:31:08', '689449', '', 2, 'siswa', 4, NULL),
(59, 4, '312314', 'email', 'users/default.png', NULL, '$2y$10$0MiO/AXNP90GfABmowu.kOj.4.g8eVqhAHDXzNjCoy4QIDRrWbhA.', NULL, NULL, '2021-10-18 07:54:06', '2021-10-18 07:54:06', '1230913', NULL, NULL, 'guru', NULL, NULL),
(60, 4, 'ui', 'ui@gmail.com', 'users/default.png', NULL, '$2y$10$m.hyKdxNKMt9kwOni.qTnu7BU9XzlzjMflR60sh4DRxn7fNdMXrJK', NULL, '{\"locale\":\"id\"}', '2021-10-22 07:15:04', '2021-10-22 07:15:04', '097709809809', NULL, NULL, 'tu', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` int(10) UNSIGNED NOT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `video`, `title`, `description`, `created_at`, `updated_at`) VALUES
(2, 'videos/October2021/DF4hrxELH5xrWEpBwsvL.mp4', 'Video 1', 'Video 1 adalah', '2021-10-17 03:54:00', '2021-10-18 06:08:40'),
(3, 'videos/October2021/a4WKmqVlTuYTjwJHBK5A.mp4', 'Video 2', 'Video 2 adalah', '2021-10-18 05:44:00', '2021-10-18 06:08:28'),
(4, 'videos/October2021/oRKErsTkxGeZibFP6PSx.mp4', 'Bandicam', 'Bandicam adalah', '2021-10-18 06:05:38', '2021-10-18 06:05:38'),
(5, 'videos/October2021/hrbSDr5uB3fC0QOJ69nU.mp4', 'Video 4', 'Video 4 adalah', '2021-10-18 06:09:40', '2021-10-18 06:09:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alumnis`
--
ALTER TABLE `alumnis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `backgrounds`
--
ALTER TABLE `backgrounds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `contents`
--
ALTER TABLE `contents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `content_sarpras`
--
ALTER TABLE `content_sarpras`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `detail_users`
--
ALTER TABLE `detail_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ekskuls`
--
ALTER TABLE `ekskuls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery_sarpras`
--
ALTER TABLE `gallery_sarpras`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gurus`
--
ALTER TABLE `gurus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guru_kejuruans`
--
ALTER TABLE `guru_kejuruans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guru_role`
--
ALTER TABLE `guru_role`
  ADD KEY `guru_role_guru_id_index` (`guru_id`),
  ADD KEY `guru_role_kategori_id_index` (`kategori_id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jurusans`
--
ALTER TABLE `jurusans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategoris`
--
ALTER TABLE `kategoris`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kategoris_slug_unique` (`slug`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `managers`
--
ALTER TABLE `managers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mapels`
--
ALTER TABLE `mapels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `media_uuid_unique` (`uuid`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `navbars`
--
ALTER TABLE `navbars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `siswas`
--
ALTER TABLE `siswas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `role_id` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alumnis`
--
ALTER TABLE `alumnis`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `backgrounds`
--
ALTER TABLE `backgrounds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `contents`
--
ALTER TABLE `contents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `content_sarpras`
--
ALTER TABLE `content_sarpras`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=291;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `detail_users`
--
ALTER TABLE `detail_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ekskuls`
--
ALTER TABLE `ekskuls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `gallery_sarpras`
--
ALTER TABLE `gallery_sarpras`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `gurus`
--
ALTER TABLE `gurus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `guru_kejuruans`
--
ALTER TABLE `guru_kejuruans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `jurusans`
--
ALTER TABLE `jurusans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `kategoris`
--
ALTER TABLE `kategoris`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `managers`
--
ALTER TABLE `managers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=191;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
