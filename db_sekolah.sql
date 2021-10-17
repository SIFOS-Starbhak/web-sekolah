-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Okt 2021 pada 06.03
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 8.0.11

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
-- Struktur dari tabel `alumnis`
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
-- Dumping data untuk tabel `alumnis`
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
(17, 'Firdaus Caesar', 2022, 'Universitas Unair', 'Sistem Informasi', NULL, NULL, '2021-10-01 08:36:18', '2021-10-01 08:36:18', 'Kuliah', 'Rekayasa Perangkat Lunak', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
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
-- Dumping data untuk tabel `categories`
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
-- Struktur dari tabel `categories_alumnis`
--

CREATE TABLE `categories_alumnis` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `category_news`
--

CREATE TABLE `category_news` (
  `id` int(10) UNSIGNED NOT NULL,
  `tahun` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `category_news`
--

INSERT INTO `category_news` (`id`, `tahun`, `created_at`, `updated_at`, `image`, `slug`) VALUES
(1, '2017', '2021-10-16 11:52:26', '2021-10-16 12:06:04', 'category-news\\October2021\\NvsI85gbnVyj91YhQRbj.jpg', 'tahun-2017'),
(2, '2018', '2021-10-16 11:53:03', '2021-10-16 12:05:49', 'category-news\\October2021\\MOJPGHhzfVCEi0piddzW.jpg', 'tahun-2018'),
(3, '2019', '2021-10-16 11:53:11', '2021-10-16 12:05:32', 'category-news\\October2021\\R3wKXNN5Ihz07A7YJItu.jpg', 'tahun-2019'),
(4, '2020', '2021-10-16 11:53:18', '2021-10-16 12:05:14', 'category-news\\October2021\\Gig4vBnwjAUWZFxqXWrQ.jpg', 'tahun-2020'),
(5, '2021', '2021-10-16 11:53:29', '2021-10-16 12:04:52', 'category-news\\October2021\\fo3IiotWKA8ngF3ugrLx.jpg', 'tahun-2021');

-- --------------------------------------------------------

--
-- Struktur dari tabel `category_sarpras`
--

CREATE TABLE `category_sarpras` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `category_sarpras`
--

INSERT INTO `category_sarpras` (`id`, `name`, `created_at`, `updated_at`, `slug`) VALUES
(1, 'Sarana dan Prasarana Sekolah', '2021-10-06 14:43:46', '2021-10-06 14:43:46', 'sarana-dan-prasarana-sekolah'),
(2, 'Ruang Pembelajaran Umum', '2021-10-06 14:44:00', '2021-10-06 14:44:00', 'ruang-pembelajaran-umum'),
(3, 'Ruang Pembelajaran Khusus', '2021-10-06 14:44:12', '2021-10-06 14:44:12', 'ruang-pembelajaran-khusus'),
(4, 'Fasilitas Parkir Kendaraan Siswa', '2021-10-06 14:44:27', '2021-10-06 14:44:27', 'fasilitas-parkir-kendaraan-siswa'),
(5, 'Mushola Raudhotul Ilmi', '2021-10-06 14:44:41', '2021-10-06 14:44:41', 'mushola-raudhotul-ilmi'),
(6, 'Fasilitas Pendukung', '2021-10-06 14:44:52', '2021-10-06 14:44:52', 'fasilitas-pendukung');

-- --------------------------------------------------------

--
-- Struktur dari tabel `content_sarpras`
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
-- Dumping data untuk tabel `content_sarpras`
--

INSERT INTO `content_sarpras` (`id`, `title`, `description`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Ruang Kelas', '<p><span style=\"color: #212529; font-family: \'Open Sans\', sans-serif; font-size: 16px;\">SMK Taruna Bhakti memilki ruang kelas dengan penjelasan sebagai berikut:</span></p>\r\n<ol style=\"box-sizing: border-box; padding-left: 2rem; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: \'Open Sans\', sans-serif; font-size: 16px;\">\r\n<li style=\"box-sizing: border-box;\">Jumlah Ruang Kelas : 32</li>\r\n<li style=\"box-sizing: border-box;\">Rata-rata ukuran kelas : 8 x 8 m = 64 m<span style=\"box-sizing: border-box; position: relative; font-size: 0.75em; line-height: 0; vertical-align: baseline; top: -0.5em;\">2</span></li>\r\n</ol>', '2', '2021-10-06 15:01:00', '2021-10-06 15:10:57'),
(2, 'Laboratorium Bahasa', '<p><span style=\"color: #212529; font-family: \'Open Sans\', sans-serif; font-size: 16px;\">SMK Taruna Bhakti memiliki 2 Laboratorium Bahasa yang berada pada gedung bagian Timur lantai 3. Di dalam Lab. Bahasa masing-masing memiliki seperangkat peralatan audio video untuk kegiatan pembelajaran Bahasa dengan kapasitas 20 siswa dengan masing-masing siswa menempati 1 meja multimedia.</span></p>', '2', '2021-10-06 15:02:00', '2021-10-06 15:10:44'),
(3, 'Perpustakaan', '<p><span style=\"color: #212529; font-family: \'Open Sans\', sans-serif; font-size: 16px;\">SMK Taruna Bhakti Depok memiliki Ruang Perpustakaan dengan luas ruangan : 8 m X 4 m = 32 m2 Letak perpustakaan berada pada lantai 3 gedung bagian Barat yang diapit oleh Laboratorium RPL Medium dan MM Advance. Terdapat 3 lemari besar 1 rak buku terbuat dari besi dan 2 rak kayu besar menjulang tinggi yang berisi ratusan buku dengan berbagai macam judul dan tema.</span></p>', '2', '2021-10-06 15:03:00', '2021-10-11 05:20:33'),
(4, 'Teknik Komputer dan Jaringan', '<p><span style=\"color: #212529; font-family: \'Open Sans\', sans-serif; font-size: 16px;\">Jurusan Teknik Komputer dan jaringan (TKJ) SMK Taruna Bhakti Depok memiliki 3 laboratorium yaitu Laboratorium Network dan Laboratorium Network Advance.</span></p>', '3', '2021-10-06 15:04:00', '2021-10-06 15:14:53'),
(5, 'Multimedia', '<p><span style=\"color: #212529; font-family: \'Open Sans\', sans-serif; font-size: 16px;\">Jurusan Multimedia (MM) SMK Taruna Bhakti Depok memiliki 2 laboratorium yaitu Laboratorium MM Medium dan Laboratorium MM Advance. Kedua laboratorium ini berada pada lantai yang sama tetapi dipisah oleh Laboratorium RPL Advance dan Ruang Perpustakaan. Uniknya di laboratorium ini adalah pada bagian dindingnya, dimana siswa jurusan Multimedia diberikan tantangan untuk mendesain dinding kedua ruangan tersebut dengan desain 3D.</span></p>', '3', '2021-10-06 15:05:00', '2021-10-06 15:16:19'),
(6, 'Rekayasa Perangkat Lunak', '<p><span style=\"color: #212529; font-family: \'Open Sans\', sans-serif; font-size: 16px;\">Jurusan Rekayasa Perangkat Lunak (RPL) SMK Taruna Bhakti Depok memiliki 2 laboratorium yaitu Laboratorium RPL Medium dan Laboratorium RPL Advance. Laboratorium RPL Medium berada pada lantai 4 berdekatan dengan Laboratorium Teknik Elektronika Industri. Sedangkan Laboratorium RPL Advance berapa pada lantai 3 berdekatan dengan Ruang Perpustakaan dan Laboratorium MM Medium.</span></p>', '3', '2021-10-06 15:06:00', '2021-10-06 15:16:35'),
(7, 'Broadcasting', '<p><span style=\"color: #212529; font-family: \'Open Sans\', sans-serif; font-size: 16px;\">Jurusan Broadcasting SMK Taruna Bhakti memiliki satu Laboratorium dan satu Studio Broadcast. Laboratorium Broadcasting berada pada Gedung bagian Barat lantai satu yang bersebelahan dengan Ruang Kelompok Kerja Kurikulum. Sedangkan Studio Broadcast berada pada Gedung Timur lantai 2 yang berdekatan dengan Laboratorium Simdig. Studio Broadcast ini juga dapat digunakan oleh siswa dari jurusan Multimedia.</span></p>', '3', '2021-10-06 15:06:00', '2021-10-06 15:17:34'),
(8, 'Teknik Elektronika Industri', '<p><span style=\"color: #212529; font-family: \'Open Sans\', sans-serif; font-size: 16px;\">Jurusan Teknik Elektronika Industri (TEI) SMK Taruna Bhakti Depok memiliki 1 Laboratorium yang diberi nama sama dengan jurusannya yaitu Laboratorium Teknik Elektronika Industri yang berada pada lantai 4 berdekatan dengan Laboratorium RPL Advance dan Ruang Kelas 18.</span></p>', '3', '2021-10-06 15:07:00', '2021-10-06 15:17:48'),
(9, 'Fasilitas Parkir', '<p><span style=\"font-family: \'Open Sans\', sans-serif; font-size: 16px;\">Fasilitas Parkir Kendaraan Siswa</span></p>', '4', '2021-10-06 15:19:37', '2021-10-06 15:19:37'),
(10, 'Mushola Raudhotul Ilmi', '<p><span style=\"font-family: \'Open Sans\', sans-serif; font-size: 16px;\">Fasilitas pendukung ini difungsikan selain sebagai Ruang belajar mata pelajaran Pendidikan Agama dan Budi Pekerti, difungsikan juga sebagai tempat ibadah (Musholla).Ruangan ini dapat menampung kurang lebih 120 siswa.</span></p>', '5', '2021-10-06 15:20:04', '2021-10-06 15:20:04'),
(11, 'Gedung Sekolah', '<p><span style=\"color: #212529; font-family: \'Open Sans\', sans-serif; font-size: 16px;\">SMK Taruna Bhakti memiliki Gedung milik sendiri dengan luas lantai bangungan sebesar 3.651 m&sup2; terdiri dari empat lantai</span></p>', '6', '2021-10-06 15:21:26', '2021-10-06 15:21:26'),
(12, 'Server SMK Taruna Bhakti', '<p><span style=\"color: #212529; font-family: \'Open Sans\', sans-serif; font-size: 16px;\">SMK Taruna Bhakti memiliki Server yang dipergunakan untuk menyimpan data elektronik berupa Sistem Informasi Manajemen Sekolah. Perangkat server ini terdapat di ruangan yang berada pada lantai 2 diapit oleh Laboratorium Network dan Laboratorium ACP. Luas Ruang Server adalah 96 m&sup2; yang terdiri dari dua ruang yang saling terhubung satu sama lain.</span></p>', '6', '2021-10-06 15:21:54', '2021-10-06 15:21:54'),
(13, 'Taman Sekolah', '<p><span style=\"color: #212529; font-family: \'Open Sans\', sans-serif; font-size: 16px;\">Sekolah berwawasan lingkungan, itulah yang diusung oleh SMK Taruna Bhakti. Sehingga terdapat taman-taman disetiap sudut sekolah.</span></p>', '6', '2021-10-06 15:22:19', '2021-10-06 15:22:19'),
(14, 'Pendopo', '<p><span style=\"color: #212529; font-family: \'Open Sans\', sans-serif; font-size: 16px;\">SMK Taruna Bhakti memiliki ruang penerima tamu yang mengosong konsep Joglo. Konsep terbuka sengaja diusung agar tamu yang datang ke SMK Taruna Bhakti dapat dengan nyaman menikmati taman dan kicauan burung, sehingga membuat perasaan menjadi tenang.</span></p>', '6', '2021-10-06 15:22:41', '2021-10-06 15:22:41'),
(15, 'Sarana dan Prasarana Sekolah', '<p class=\"mt-5\">Laboratorium Komputer dan Ruangan Terdiri dari :</p>\r\n<ol>\r\n<li>Lab Network Advance</li>\r\n<li>Lab Network</li>\r\n<li>Lab Maintenance and Repair</li>\r\n<li>Lab Simulasi Digital</li>\r\n<li>Lab Axioo Class Program</li>\r\n<li>Lab Multimedia Medium</li>\r\n<li>Lab Multimedia Advance</li>\r\n<li>Lab Pemrograman Basic</li>\r\n<li>Lab Pemrograman Advance</li>\r\n<li>Lab Bahasa Inggris</li>\r\n<li>Lab Video dan Audio Editing</li>\r\n<li>Studio Mini Penyiaran TV</li>\r\n<li>Ruang Server dan Fasilitas lainnya</li>\r\n</ol>\r\n<p>Lingkungan sekolah yang asri dan nyaman jauh dari bising, mudah terjangkau oleh siswa/i dari <br />berbagai jurusan dengan kendaraan umum.</p>\r\n<p>Memiliki kantin dengan konsep cafetaria yang bersih, rapi serta nyaman dengan variasi makanan dan <br />minuman yang sehat, agar terjaga kesehatan dari siswa/i.</p>\r\n<p>Seluruh ruangan sekolah terjangkau dari Zona Hotspot yang di support oleh :</p>\r\n<ol>\r\n<li>Wifi id (Telkom) dengan jaringan Fiber Optik 100 Mbps</li>\r\n<li>Biznet dengan jaringan Fiber Optik 20 Mbps Dedicated 1:1</li>\r\n<li>Varnion Techology Jaringan wireless 2 Mbps</li>\r\n</ol>', '1', '2021-10-11 00:37:07', '2021-10-11 00:37:07'),
(16, 'Samsung', NULL, '1', '2021-10-11 00:46:54', '2021-10-11 00:46:54');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_rows`
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
-- Dumping data untuk tabel `data_rows`
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
(43, 5, 'featured', 'checkbox', 'News Slide', 1, 1, 1, 1, 1, 1, '{\"on\":\"Active\",\"off\":\"Inactive\"}', 16),
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
(64, 8, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 4),
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
(91, 8, 'nipd', 'text', 'Nipd', 0, 1, 1, 1, 1, 1, '{}', 3),
(92, 1, 'email_verified_at', 'timestamp', 'Email Verified At', 0, 1, 1, 1, 1, 1, '{}', 6),
(93, 8, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, '{}', 10),
(94, 9, 'nik', 'text', 'Nik', 0, 1, 1, 1, 1, 1, '{}', 2),
(95, 7, 'nik', 'text', 'Nik', 0, 1, 1, 1, 1, 1, '{}', 2),
(96, 7, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, '{}', 8),
(97, 9, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, '{}', 9),
(98, 7, 'jabatan', 'select_dropdown', 'Jabatan', 0, 1, 1, 1, 1, 1, '{\"options\":{\"admin\":\"Admin\",\"litbang\":\"Litbang\",\"tu\":\"TU\",\"bkk\":\"BKK\",\"hubin\":\"Hubin\",\"kurikulum\":\"Kurikulum\",\"kesiswaan\":\"Kesiswaan\",\"sarpras\":\"Sarpras\",\"kejuruan\":\"Kejuruan\",\"pembimbing\":\"Pembimbing\"}}', 9),
(104, 6, 'page_belongsto_category_relationship', 'relationship', 'categories', 0, 1, 1, 1, 1, 1, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Category\",\"table\":\"categories\",\"type\":\"belongsTo\",\"column\":\"category_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 13),
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
(185, 28, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(186, 28, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(187, 28, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(188, 28, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(189, 30, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(190, 30, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(191, 30, 'description', 'rich_text_box', 'Description', 0, 1, 1, 1, 1, 1, '{}', 3),
(192, 30, 'category_id', 'text', 'Category Page Sarpras', 0, 0, 1, 1, 1, 1, '{}', 4),
(193, 30, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(194, 30, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(195, 30, 'content_sarpra_belongsto_category_sarpra_relationship', 'relationship', 'category_sarpras', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\CategorySarpra\",\"table\":\"category_sarpras\",\"type\":\"belongsTo\",\"column\":\"category_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"alumnis\",\"pivot\":\"0\",\"taggable\":\"0\"}', 5),
(196, 31, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(197, 31, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 1, 0, 1, '{}', 4),
(198, 31, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(199, 31, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 2),
(200, 31, 'content_id', 'text', 'Content Id', 0, 1, 1, 1, 1, 1, '{}', 3),
(201, 31, 'gallery_sarpra_belongsto_content_sarpra_relationship', 'relationship', 'content_sarpras', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\ContentSarpra\",\"table\":\"content_sarpras\",\"type\":\"belongsTo\",\"column\":\"content_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"alumnis\",\"pivot\":\"0\",\"taggable\":\"0\"}', 6),
(202, 28, 'slug', 'text', 'Slug', 0, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:category_sarpras,slug\"}}', 3),
(203, 32, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(204, 32, 'nama_mapel', 'text', 'Nama Mapel', 1, 1, 1, 1, 1, 1, '{}', 2),
(205, 32, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(206, 32, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(207, 1, 'user_belongsto_mapel_relationship', 'relationship', 'mapels', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Mapel\",\"table\":\"mapels\",\"type\":\"belongsTo\",\"column\":\"mapel_id\",\"key\":\"id\",\"label\":\"nama_mapel\",\"pivot_table\":\"alumnis\",\"pivot\":\"0\",\"taggable\":null}', 13),
(208, 31, 'nama_photo', 'text', 'Nama Photo', 0, 1, 1, 1, 1, 1, '{}', 6),
(209, 19, 'website_perusahaan', 'text', 'Website Perusahaan', 0, 1, 1, 1, 1, 1, '{}', 7),
(210, 16, 'status', 'select_dropdown', 'Status', 0, 1, 1, 1, 1, 1, '{\"default\":\"UNPUBLISHED\",\"options\":{\"PUBLISED\":\"PUBLISHED\",\"UNPUBLISED\":\"UNPUBLISED\"}}', 12),
(211, 34, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(212, 34, 'nama_guru', 'text', 'Nama Guru', 0, 1, 1, 1, 1, 1, '{}', 2),
(213, 34, 'foto', 'text', 'Foto', 0, 1, 1, 1, 1, 1, '{}', 3),
(214, 34, 'kategori_guru', 'text', 'Kategori Guru', 0, 1, 1, 1, 1, 1, '{}', 4),
(215, 34, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(216, 34, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(217, 34, 'deleted_at', 'timestamp', 'Deleted At', 0, 1, 1, 1, 1, 1, '{}', 7),
(218, 34, 'kategori_id', 'text', 'Kategori Id', 0, 1, 1, 1, 1, 1, '{}', 8),
(219, 35, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(220, 35, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(221, 35, 'content', 'rich_text_box', 'Content', 0, 1, 1, 1, 1, 1, '{}', 3),
(222, 35, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 4),
(224, 35, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{\"format\":\"%Y\"}', 6),
(225, 35, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(226, 36, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(227, 36, 'tahun', 'number', 'Tahun', 0, 1, 1, 1, 1, 1, '{}', 3),
(228, 36, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 4),
(229, 36, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(231, 36, 'slug', 'text', 'Slug', 0, 1, 1, 1, 1, 1, '{}', 6),
(232, 36, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 5),
(233, 35, 'gallery_news_belongsto_category_news_relationship', 'relationship', 'category_news', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\CategoryNews\",\"table\":\"category_news\",\"type\":\"belongsTo\",\"column\":\"category\",\"key\":\"id\",\"label\":\"tahun\",\"pivot_table\":\"alumnis\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(234, 35, 'category', 'text', 'Category', 0, 1, 1, 1, 1, 1, '{}', 7),
(235, 35, 'date', 'date', 'Date', 0, 1, 1, 1, 1, 1, '{}', 8);

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_types`
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
-- Dumping data untuk tabel `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2021-09-21 07:32:51', '2021-09-22 06:10:53'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2021-09-21 07:32:51', '2021-09-21 07:32:51'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2021-09-21 07:32:52', '2021-09-21 07:32:52'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2021-09-21 07:33:09', '2021-09-21 07:33:09'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2021-09-21 07:33:11', '2021-10-08 07:24:07'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2021-09-21 07:33:12', '2021-09-25 17:38:17'),
(7, 'gurus', 'gurus', 'Guru', 'Gurus', NULL, 'App\\Models\\Guru', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-09-21 20:11:32', '2021-09-23 21:03:11'),
(8, 'siswas', 'siswas', 'Siswa', 'Siswas', NULL, 'App\\Models\\Siswa', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-09-21 20:12:14', '2021-09-22 06:08:24'),
(9, 'managers', 'managers', 'Manager', 'Managers', NULL, 'App\\Models\\Manager', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-09-21 20:20:00', '2021-09-23 20:59:38'),
(10, 'kelas', 'kelas', 'Kela', 'Kelas', NULL, 'App\\Models\\Kela', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-09-21 20:32:15', '2021-09-22 06:42:10'),
(16, 'alumnis', 'alumnis', 'Alumni', 'Alumnis', NULL, 'App\\Models\\Alumni', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-09-29 21:41:44', '2021-10-14 13:06:02'),
(17, 'categories_alumnis', 'categories-alumnis', 'Categories Alumni', 'Categories Alumnis', NULL, 'App\\Models\\CategoriesAlumni', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-09-29 21:51:04', '2021-09-29 23:51:34'),
(19, 'partners', 'partners', 'Partner', 'Partners', NULL, 'App\\Models\\Partner', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-09-29 21:52:12', '2021-10-13 05:13:25'),
(20, 'jurusans', 'jurusans', 'Jurusan', 'Jurusans', NULL, 'App\\Models\\Jurusan', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-09-29 23:52:50', '2021-10-02 07:37:34'),
(28, 'category_sarpras', 'category-sarpras', 'Category Sarpra', 'Category Sarpras', NULL, 'App\\Models\\CategorySarpra', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-10-06 08:21:52', '2021-10-06 14:43:23'),
(30, 'content_sarpras', 'content-sarpras', 'Content Sarpra', 'Content Sarpras', NULL, 'App\\Models\\ContentSarpra', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-10-06 14:30:52', '2021-10-06 15:10:01'),
(31, 'gallery_sarpras', 'gallery-sarpras', 'Gallery Sarpra', 'Gallery Sarpras', NULL, 'App\\Models\\GallerySarpra', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-10-06 14:35:52', '2021-10-13 05:18:27'),
(32, 'mapels', 'mapels', 'Mapel', 'Mapels', NULL, 'App\\Models\\Mapel', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-10-07 02:56:07', '2021-10-07 02:56:07'),
(34, 'galleries', 'galleries', 'Gallery', 'Galleries', NULL, 'App\\Models\\Gallery', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-10-16 07:49:59', '2021-10-16 07:49:59'),
(35, 'gallery_news', 'gallery', 'Gallery', 'Gallery', NULL, 'App\\Models\\GalleryNews', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-10-16 08:00:57', '2021-10-16 12:38:16'),
(36, 'category_news', 'category-news', 'Category News', 'Category News', NULL, 'App\\Models\\CategoryNews', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-10-16 11:49:23', '2021-10-16 12:02:46');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `galleries`
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
-- Dumping data untuk tabel `galleries`
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
-- Struktur dari tabel `gallery_news`
--

CREATE TABLE `gallery_news` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `gallery_news`
--

INSERT INTO `gallery_news` (`id`, `title`, `content`, `image`, `created_at`, `updated_at`, `category`, `date`) VALUES
(5, 'Kegiatan Vaksinasi SMK Taruna Bhakti', NULL, 'gallery\\October2021\\JRcDZUrZ9j5LRMojyXJH.jpg', '2021-10-17 02:59:59', '2021-10-17 02:59:59', '5', '2021-10-17'),
(6, 'Seminar Gamer Indonesia', NULL, 'gallery\\October2021\\pSccjjop0Uf6yNScT0zj.jpg', '2021-10-17 03:05:45', '2021-10-17 03:05:45', '5', '2021-10-17'),
(7, 'Ekskul 2020', NULL, 'gallery\\October2021\\CM9EsMCg3oAzJjZAKhxr.jpeg', '2021-10-17 03:46:08', '2021-10-17 03:46:08', '4', '2021-10-17'),
(8, 'lapangan TB', NULL, 'gallery\\October2021\\nHds49FOyJQYFv1P3Eot.jpg', '2021-10-17 03:49:43', '2021-10-17 03:49:43', '4', '2021-10-17'),
(9, '2019', NULL, 'gallery\\October2021\\Rx03hppq6rrXF9vJK1q7.jpg', '2021-10-17 03:59:25', '2021-10-17 03:59:25', '3', '2021-10-17'),
(10, 'ortus', NULL, 'gallery\\October2021\\RMDmTMx49mcDAIqloi7d.jpg', '2021-10-17 04:00:01', '2021-10-17 04:00:01', '2', '2000-11-30'),
(11, '2017', NULL, 'gallery\\October2021\\XJNSbaYeqyN5WgpTzOl4.jpg', '2021-10-17 04:00:40', '2021-10-17 04:00:40', '1', '2009-02-20');

-- --------------------------------------------------------

--
-- Struktur dari tabel `gallery_sarpras`
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
-- Dumping data untuk tabel `gallery_sarpras`
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
-- Struktur dari tabel `gurus`
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
-- Dumping data untuk tabel `gurus`
--

INSERT INTO `gurus` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`, `nik`, `remember_token`, `jabatan`) VALUES
(2, 'Sheila Riani Putri', 'sheila@gmail.com', '$2y$10$3p.3Ue2lHsgEUKYYSG9Mv.ayPeQFVJ6LmoOm3FoVhAs99bfde848i', '2021-09-24 07:04:23', '2021-09-26 01:30:45', 99202029, NULL, 'kesiswaan'),
(3, 'Ana Susilowati', 'ana@gmail.com', '$2y$10$SM.PR6QOjpWPU27Cmac1TO/ezT5ZMRZ5v4bPFzbh0ZEHIIu1fN13.', '2021-09-24 07:05:00', '2021-09-26 01:30:31', 2012954223, NULL, 'sarpras'),
(4, 'Tanzela Azizi', 'tanzela@gmail.com', '$2y$10$aYytyzZpncfOsTsevCdq6.E.27jMVcURVnMmFUVLAYZjxn1mJ6m5e', '2021-09-24 07:05:47', '2021-09-26 01:30:11', 2012957767, NULL, 'hubin'),
(5, 'Agus Diana', 'agus@gmail.com', '$2y$10$szNhcnuVzdM9LqKX/jOnv.RYrGDRu5TzjKDoLycElODjRbb8O4Tpi', '2021-09-24 07:06:44', '2021-09-26 01:29:55', 99772029, NULL, 'kurikulum');

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru_role`
--

CREATE TABLE `guru_role` (
  `guru_id` bigint(20) UNSIGNED NOT NULL,
  `kategori_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `guru_role`
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
-- Struktur dari tabel `jurusans`
--

CREATE TABLE `jurusans` (
  `id` int(10) UNSIGNED NOT NULL,
  `jurusan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `singkatan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `jurusans`
--

INSERT INTO `jurusans` (`id`, `jurusan`, `created_at`, `updated_at`, `singkatan`) VALUES
(1, 'Teknik Komputer Jaringan', '2021-09-29 23:55:00', '2021-10-02 04:31:05', 'TKJ'),
(2, 'Multimedia', '2021-09-29 23:55:00', '2021-10-02 04:30:54', 'MM'),
(3, 'Rekayasa Perangkat Lunak', '2021-09-29 23:55:00', '2021-10-02 04:30:41', 'RPL'),
(4, 'Broadcast', '2021-09-29 23:58:00', '2021-10-02 04:30:23', 'BC'),
(5, 'Teknik Elektronik Industri', '2021-09-29 23:58:00', '2021-10-02 04:30:04', 'TEI');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategoris`
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
-- Dumping data untuk tabel `kategoris`
--

INSERT INTO `kategoris` (`id`, `nama_kategori`, `foto`, `caption`, `created_at`, `updated_at`, `deleted_at`, `slug`) VALUES
(1, 'Tim Manajemen Sekolah', 'kategoris\\October2021\\TQhXXJbdmKRyxCbytga5.png', '<p>Tim manajemen sekolah adalah</p>', '2021-10-02 04:31:56', '2021-10-02 08:08:02', NULL, 'tim-manajemen-sekolah'),
(2, 'Staff Tata Usaha', 'kategoris\\October2021\\GZJtgT45P0MEovv3noDd.png', '<p>Staff Tata Usaha mengurus</p>', '2021-10-02 04:44:10', '2021-10-02 08:07:52', NULL, 'staff-tata-usaha'),
(3, 'Guru Bimbingan Konseling', 'kategoris\\October2021\\MLVGDgb7PneVeMF3bbwB.png', '<p>Guru Bimbingan Konseling mengurus</p>', '2021-10-02 04:47:48', '2021-10-02 08:07:43', NULL, 'guru-bimbingan-konseling'),
(4, 'Guru Kejuruan', 'kategoris\\October2021\\MYBFcBepiT8w9NfrZpht.png', '<p>Guru Kejuruan mengurus hal-hal</p>', '2021-10-02 04:49:04', '2021-10-02 08:07:32', NULL, 'guru-kejuruan'),
(5, 'Guru Normatif dan Adaptif', 'kategoris\\October2021\\t11OsRGXs3AtW7Ps8J6a.png', '<p>Guru Normatif dan Adaptif adalah</p>', '2021-10-02 04:49:36', '2021-10-02 08:07:14', NULL, 'guru-normatif-dan-adaptif');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
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
-- Dumping data untuk tabel `kelas`
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
-- Struktur dari tabel `managers`
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
-- Dumping data untuk tabel `managers`
--

INSERT INTO `managers` (`id`, `name`, `jabatan`, `email`, `password`, `created_at`, `updated_at`, `nik`, `remember_token`) VALUES
(4, 'Puguh Rismadi Ismail', 'Kepala Program', 'puguh@gmail.com', '$2y$10$GGdHSuyC7NHSYosD47rMVepa7Nl0Js0UPXPIeiuxuMHywvdmEW5iW', '2021-09-24 07:07:30', '2021-09-26 01:28:05', 7585876, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mapels`
--

CREATE TABLE `mapels` (
  `id` int(10) UNSIGNED NOT NULL,
  `mata_pelajaran` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `mapels`
--

INSERT INTO `mapels` (`id`, `mata_pelajaran`, `created_at`, `updated_at`) VALUES
(1, 'MTK', '2021-10-08 08:31:01', '2021-10-08 08:31:01'),
(2, 'B. Indonesia', '2021-10-08 08:31:02', '2021-10-08 08:31:02'),
(3, 'B. Inggris', '2021-10-08 08:31:02', '2021-10-08 08:31:02'),
(4, 'Sindo', '2021-10-08 08:31:02', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `media`
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
-- Struktur dari tabel `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2021-09-21 07:32:54', '2021-09-21 07:32:54');

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu_items`
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
-- Dumping data untuk tabel `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2021-09-21 07:32:54', '2021-09-21 07:32:54', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2021-09-21 07:32:54', '2021-09-21 07:32:54', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2021-09-21 07:32:55', '2021-09-21 07:32:55', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2021-09-21 07:32:55', '2021-09-21 07:32:55', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2021-09-21 07:32:55', '2021-09-21 07:32:55', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 10, '2021-09-21 07:32:55', '2021-09-21 07:32:55', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 11, '2021-09-21 07:32:55', '2021-09-21 07:32:55', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 12, '2021-09-21 07:32:55', '2021-09-21 07:32:55', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 13, '2021-09-21 07:32:55', '2021-09-21 07:32:55', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 14, '2021-09-21 07:32:55', '2021-09-21 07:32:55', 'voyager.settings.index', NULL),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 8, '2021-09-21 07:33:10', '2021-09-21 07:33:10', 'voyager.categories.index', NULL),
(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 6, '2021-09-21 07:33:12', '2021-09-21 07:33:12', 'voyager.posts.index', NULL),
(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 7, '2021-09-21 07:33:13', '2021-09-21 07:33:13', 'voyager.pages.index', NULL),
(14, 1, 'Gurus', '', '_self', NULL, NULL, NULL, 15, '2021-09-21 20:11:33', '2021-09-21 20:11:33', 'voyager.gurus.index', NULL),
(15, 1, 'Siswas', '', '_self', NULL, NULL, NULL, 16, '2021-09-21 20:12:15', '2021-09-21 20:12:15', 'voyager.siswas.index', NULL),
(16, 1, 'Managers', '', '_self', NULL, NULL, NULL, 17, '2021-09-21 20:20:01', '2021-09-21 20:20:01', 'voyager.managers.index', NULL),
(17, 1, 'Kelas', '', '_self', NULL, NULL, NULL, 18, '2021-09-21 20:32:17', '2021-09-21 20:32:17', 'voyager.kelas.index', NULL),
(19, 1, 'Alumnis', '', '_self', NULL, NULL, NULL, 20, '2021-09-29 21:41:45', '2021-09-29 21:41:45', 'voyager.alumnis.index', NULL),
(20, 1, 'Categories Alumnis', '', '_self', NULL, NULL, NULL, 21, '2021-09-29 21:51:04', '2021-09-29 21:51:04', 'voyager.categories-alumnis.index', NULL),
(21, 1, 'Partners', '', '_self', NULL, NULL, NULL, 22, '2021-09-29 21:52:12', '2021-09-29 21:52:12', 'voyager.partners.index', NULL),
(22, 1, 'Jurusans', '', '_self', NULL, NULL, NULL, 23, '2021-09-29 23:52:51', '2021-09-29 23:52:51', 'voyager.jurusans.index', NULL),
(29, 1, 'Category Sarpras', '', '_self', NULL, NULL, NULL, 28, '2021-10-06 08:21:54', '2021-10-06 08:21:54', 'voyager.category-sarpras.index', NULL),
(30, 1, 'Content Sarpras', '', '_self', NULL, NULL, NULL, 29, '2021-10-06 14:30:53', '2021-10-06 14:30:53', 'voyager.content-sarpras.index', NULL),
(31, 1, 'Gallery Sarpras', '', '_self', NULL, NULL, NULL, 30, '2021-10-06 14:35:53', '2021-10-06 14:35:53', 'voyager.gallery-sarpras.index', NULL),
(32, 1, 'Mapels', '', '_self', NULL, NULL, NULL, 31, '2021-10-07 02:56:09', '2021-10-07 02:56:09', 'voyager.mapels.index', NULL),
(33, 1, 'Galleries', '', '_self', NULL, NULL, NULL, 32, '2021-10-16 07:50:02', '2021-10-16 07:50:02', 'voyager.galleries.index', NULL),
(34, 1, 'Gallery', '', '_self', NULL, NULL, NULL, 33, '2021-10-16 08:00:58', '2021-10-16 08:00:58', 'voyager.gallery.index', NULL),
(35, 1, 'Category News', '', '_self', NULL, NULL, NULL, 34, '2021-10-16 11:49:24', '2021-10-16 11:49:24', 'voyager.category-news.index', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
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
-- Struktur dari tabel `pages`
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
-- Dumping data untuk tabel `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`, `category_id`) VALUES
(2, 1, 'Sejarah SMK Taruna Bhakti', 'Pada tanggal 16 Juni 2004 didirikan SMK Taruna Bhakti Depok yang berada di Jalan Pekapuran Kelurahan Curug Kecamatan Cimanggis Depok. Dengan Bidang Studi Keahlian “ Teknologi informasi dan komunikasi” serta kompetensi keahlian “Teknik computer dan jaringan”.', '<h3 class=\"mt-5\" style=\"box-sizing: border-box; margin-bottom: 0.5rem; font-weight: 500; line-height: 1.2; font-size: 1.75rem; font-family: Raleway, sans-serif; margin-top: 3rem !important;\"><span style=\"box-sizing: border-box; font-weight: bolder;\">SEJARAH SMK TARUNA BHAKTI</span></h3>\r\n<p>&nbsp;</p>\r\n<p class=\"mt-3\" style=\"box-sizing: border-box; margin-bottom: 1rem; font-family: \'Open Sans\', sans-serif; font-size: 16px; margin-top: 1rem !important;\">Untuk memenuhi kebutuhan akan sumber daya manusia yang berkualitas tinggi dalam penguasaan IPTEK yang didasari semangat iman dan taqwa,<span style=\"box-sizing: border-box; font-weight: bolder;\">&nbsp;SMK Taruna Bhakti Depok</span>&nbsp;dirancang untuk membekali siswa agar menguasai ilmu pengetahuan khususnya dalam bidang Teknologi Informasi dan Komunikasi yang berkualitas, serta memiliki kecakapan hidup. Program pembelajaran SMK Taruna Bhakti memberi perhatian khusus (ciri khas) pada penguasaan TIK khususnya bidang Teknik Komputer dan Jaringan (TKJ), Multimedia (MM) serta Rekaya Perangkat Lunak (RPL) dengan menggunakan kurikulum Nasional yang secara inovatif diperkaya oleh SMK Taruna Bhakti berdasarkan VISI, MISI, TUJUAN serta TARGET SMK Taruna Bhakti.<br style=\"box-sizing: border-box;\" /><br style=\"box-sizing: border-box;\" />Selain pembelajaran di kelas (intrakurikuler) dan pengembangan bakat/minat melalui ekstrakurikuler, siswa memperluas wawasan melalui berbagai macam program yang membekali siswa untuk memiliki kecakapan hidup antara lain: Character Building, Science Camp, Mendatangkan Guru Tamu dari Dunai Usaha/Industri yang relevan dll, serta memberi kesempatan luas kepada siswa untuk berkompetisi dalam bidang akademis dan non-akademis baik tingkat Nasional, Regional, dan Internasional. Proses dan efektifitas pembelajaran didukung oleh guru yang kompeten, bimbingan dan konseling, serta sarana pendidikan yang lengkap. Sebagai salah satu sekolah Teknologi Informasi dan Komunikasi bermutu di Depok, prestasi yang telah dicapai oleh SMK Taruna Bhakti Depok ini memang sesuai dengn visi dan misi yang diembannya</p>', NULL, 'sejarah-smk-taruna-bhakti', 'Sejarah SMK Taruna Bhakti', 'Sejarah', 'ACTIVE', '2021-09-24 18:35:29', '2021-10-01 09:46:07', 7),
(3, 1, 'Identitas Sekolah', 'Identitas Sekolah SMK Taruna Bhakti', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1.5em; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 12px; text-align: center;\"><span style=\"box-sizing: border-box; font-weight: bolder;\">IDENTITAS SEKOLAH</span></p>\r\n<table style=\"border-collapse: collapse; border-spacing: 0px; margin: 0px 0px 1.5em; width: 719px; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 12px; height: 146px;\">\r\n<tbody style=\"box-sizing: border-box;\">\r\n<tr style=\"box-sizing: border-box; height: 29px;\">\r\n<td style=\"box-sizing: border-box; padding: 0px; width: 238px; height: 29px;\">1. Nama Sekolah</td>\r\n<td style=\"box-sizing: border-box; padding: 0px; width: 462px; height: 29px;\"><span style=\"box-sizing: border-box; font-weight: bolder;\">SMK TARUNA BHAKTI</span></td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box; height: 29.25px;\">\r\n<td style=\"box-sizing: border-box; padding: 0px; width: 238px; height: 29.25px;\">2. Status Akreditasi</td>\r\n<td style=\"box-sizing: border-box; padding: 0px; width: 462px; height: 29.25px;\">A / Nomor : 02.00/350/BAP-SM/XII/2013</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box; height: 29px;\">\r\n<td style=\"box-sizing: border-box; padding: 0px; width: 238px; height: 29px;\">3. Alamat Sekolah</td>\r\n<td style=\"box-sizing: border-box; padding: 0px; width: 462px; height: 29px;\">Jalan Raya pekapuran RT 02 RW 07</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box; height: 29px;\">\r\n<td style=\"box-sizing: border-box; padding: 0px; width: 238px; height: 29px;\">&nbsp;&nbsp;&nbsp; Kelurahan/Desa</td>\r\n<td style=\"box-sizing: border-box; padding: 0px; width: 462px; height: 29px;\">Curug</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box; height: 29px;\">\r\n<td style=\"box-sizing: border-box; padding: 0px; width: 238px; height: 29px;\">&nbsp;&nbsp;&nbsp; Kecamatan</td>\r\n<td style=\"box-sizing: border-box; padding: 0px; width: 462px; height: 29px;\">Cimanggis</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box; height: 29px;\">\r\n<td style=\"box-sizing: border-box; padding: 0px; width: 238px; height: 29px;\">&nbsp;&nbsp;&nbsp; Kabupaten/Kota</td>\r\n<td style=\"box-sizing: border-box; padding: 0px; width: 462px; height: 29px;\">Depok</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box; height: 29px;\">\r\n<td style=\"box-sizing: border-box; padding: 0px; width: 238px; height: 29px;\">&nbsp;&nbsp;&nbsp; Provinsi</td>\r\n<td style=\"box-sizing: border-box; padding: 0px; width: 462px; height: 29px;\">Jawa Barat</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box; height: 29px;\">\r\n<td style=\"box-sizing: border-box; padding: 0px; width: 238px; height: 29px;\">&nbsp;&nbsp;&nbsp; Telephone</td>\r\n<td style=\"box-sizing: border-box; padding: 0px; width: 462px; height: 29px;\">(021) 8744810</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box; height: 29px;\">\r\n<td style=\"box-sizing: border-box; padding: 0px; width: 238px; height: 29px;\">&nbsp;&nbsp;&nbsp; Faximile</td>\r\n<td style=\"box-sizing: border-box; padding: 0px; width: 462px; height: 29px;\">(021) 87743374</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box; height: 29px;\">\r\n<td style=\"box-sizing: border-box; padding: 0px; width: 238px; height: 29px;\">&nbsp;&nbsp;&nbsp; Kode Pos</td>\r\n<td style=\"box-sizing: border-box; padding: 0px; width: 462px; height: 29px;\">16953</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box; height: 29px;\">\r\n<td style=\"box-sizing: border-box; padding: 0px; width: 238px; height: 29px;\">&nbsp;&nbsp;&nbsp; website</td>\r\n<td style=\"box-sizing: border-box; padding: 0px; width: 462px; height: 29px;\">www.smktarunabhakti.net</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box; height: 29px;\">\r\n<td style=\"box-sizing: border-box; padding: 0px; width: 238px; height: 29px;\">&nbsp;&nbsp;&nbsp; e-mail</td>\r\n<td style=\"box-sizing: border-box; padding: 0px; width: 462px; height: 29px;\">taruna@smktarunabhakti.net</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box; height: 29px;\">\r\n<td style=\"box-sizing: border-box; padding: 0px; width: 238px; height: 29px;\">4. Nomor Pokok Sekolah Nasional</td>\r\n<td style=\"box-sizing: border-box; padding: 0px; width: 462px; height: 29px;\">20229232</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box; height: 29px;\">\r\n<td style=\"box-sizing: border-box; padding: 0px; width: 238px; height: 29px;\">5. Nomor Induk Sekolah</td>\r\n<td style=\"box-sizing: border-box; padding: 0px; width: 462px; height: 29px;\">400580</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box; height: 29px;\">\r\n<td style=\"box-sizing: border-box; padding: 0px; width: 238px; height: 29px;\">6. Nomor Statistik Sekolah</td>\r\n<td style=\"box-sizing: border-box; padding: 0px; width: 462px; height: 29px;\">422026601001</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box; height: 29px;\">\r\n<td style=\"box-sizing: border-box; padding: 0px; width: 238px; height: 29px;\">7. Tahun Berdiri</td>\r\n<td style=\"box-sizing: border-box; padding: 0px; width: 462px; height: 29px;\">2004</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box; height: 29px;\">\r\n<td style=\"box-sizing: border-box; padding: 0px; width: 238px; height: 29px;\">&nbsp;</td>\r\n<td style=\"box-sizing: border-box; padding: 0px; width: 462px; height: 29px;\">&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1.5em; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 12px;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1.5em; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 12px; text-align: center;\"><span style=\"box-sizing: border-box; font-weight: bolder;\">VISI</span></p>\r\n<table style=\"border-collapse: collapse; border-spacing: 0px; margin: 0px 0px 1.5em; width: 730px; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 12px;\" width=\"100%\">\r\n<tbody style=\"box-sizing: border-box;\">\r\n<tr style=\"box-sizing: border-box;\">\r\n<td style=\"box-sizing: border-box; padding: 0px;\">Menghasilkan Lulusan Yang Kompeten Dalam Ilmu Pengetahuan dan Teknologi (IPTEK) dan Iman Taqwa (IMTAQ) Serta Mampu Bersaing Pada Tingkat Nasional dan Global</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1.5em; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 12px; text-align: center;\"><span style=\"box-sizing: border-box; font-weight: bolder;\">MISI</span></p>\r\n<table style=\"border-collapse: collapse; border-spacing: 0px; margin: 0px 0px 1.5em; width: 730px; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 12px;\" width=\"100%\">\r\n<tbody style=\"box-sizing: border-box;\">\r\n<tr style=\"box-sizing: border-box;\">\r\n<td style=\"box-sizing: border-box; padding: 0px;\">\r\n<ol style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\">\r\n<li style=\"box-sizing: border-box;\">Menumbuhkan Semangat Kreatifitas, Bersinergi Dan Kompetitif Kepada Seluruh Warga Sekolah.</li>\r\n<li style=\"box-sizing: border-box;\">Melaksanakan Kurikulum Melalui Pembelajaran Dan Penilaian Berbasis Kompetensi, Berbasis Wirausaha Berwawasan Lingkungan.</li>\r\n<li style=\"box-sizing: border-box;\">Meningkatkan kualitas sumber daya manusia melalui sertifikasi Kompetensi Tingkat Nasional dan Internasional</li>\r\n<li style=\"box-sizing: border-box;\">Mengembangkan Potensi Peserta Didik Melalui Kegiatan Minat Dan Bakat Dan Pembinaan Kedisiplinan.</li>\r\n<li style=\"box-sizing: border-box;\">Menerapkan Layanan Prima Dalam Pengelolaan Sekolah Melalui Sistem Manajemen Mutu</li>\r\n</ol>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"border-collapse: collapse; border-spacing: 0px; margin: 0px 0px 1.5em; width: 730px; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 12px; height: 263px;\" width=\"839\">\r\n<tbody style=\"box-sizing: border-box;\">\r\n<tr style=\"box-sizing: border-box; height: 24px;\">\r\n<td style=\"box-sizing: border-box; padding: 0px; width: 411.5px; height: 24px;\">&nbsp;</td>\r\n<td style=\"box-sizing: border-box; padding: 0px; width: 411.5px; height: 24px;\">&nbsp;</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box; height: 24px;\">\r\n<td style=\"box-sizing: border-box; padding: 0px; width: 411.5px; height: 24px;\">Nama Kepala Sekolah</td>\r\n<td style=\"box-sizing: border-box; padding: 0px; width: 411.5px; height: 24px;\">Ramadin Tarigan, ST</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box; height: 24px;\">\r\n<td style=\"box-sizing: border-box; padding: 0px; width: 411.5px; height: 24px;\">Jumlah Rombongan Belajar</td>\r\n<td style=\"box-sizing: border-box; padding: 0px; width: 411.5px; height: 24px;\">40&nbsp;Rombongan Belajar</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box; height: 24px;\">\r\n<td style=\"box-sizing: border-box; padding: 0px; width: 411.5px; height: 24px;\">Jumlah Ruang Kelas</td>\r\n<td style=\"box-sizing: border-box; padding: 0px; width: 411.5px; height: 24px;\">16 Ruang Kelas</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box; height: 24px;\">\r\n<td style=\"box-sizing: border-box; padding: 0px; width: 411.5px; height: 24px;\">Jumlah Laboratorium</td>\r\n<td style=\"box-sizing: border-box; padding: 0px; width: 411.5px; height: 24px;\">12 Laboratorium Komputer + 2 Lab Bahasa</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box; height: 24px;\">\r\n<td style=\"box-sizing: border-box; padding: 0px; width: 411.5px; height: 24px;\">Penerapan MBS</td>\r\n<td style=\"box-sizing: border-box; padding: 0px; width: 411.5px; height: 24px;\">Pagi</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box; height: 24px;\">\r\n<td style=\"box-sizing: border-box; padding: 0px; width: 411.5px; height: 24px;\">Jumlah Tenaga Pendidik/Guru</td>\r\n<td style=\"box-sizing: border-box; padding: 0px; width: 411.5px; height: 24px;\">67&nbsp;Orang</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box; height: 24px;\">\r\n<td style=\"box-sizing: border-box; padding: 0px; width: 411.5px; height: 24px;\">Jumlah Siswa</td>\r\n<td style=\"box-sizing: border-box; padding: 0px; width: 411.5px; height: 24px;\">1536&nbsp;Siswa</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box; height: 24px;\">\r\n<td style=\"box-sizing: border-box; padding: 0px; width: 411.5px; height: 24px;\">Jumlah Staf Tata Usaha</td>\r\n<td style=\"box-sizing: border-box; padding: 0px; width: 411.5px; height: 24px;\">7 Orang</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box; height: 24px;\">\r\n<td style=\"box-sizing: border-box; padding: 0px; width: 411.5px; height: 24px;\">Jumlah Operator SIM Sekolah</td>\r\n<td style=\"box-sizing: border-box; padding: 0px; width: 411.5px; height: 24px;\">2 Orang</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box; height: 24.5px;\">\r\n<td style=\"box-sizing: border-box; padding: 0px; width: 411.5px; height: 24.5px;\">Jumlah Laboran</td>\r\n<td style=\"box-sizing: border-box; padding: 0px; width: 411.5px; height: 24.5px;\">2 Orang</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box; height: 24px;\">\r\n<td style=\"box-sizing: border-box; padding: 0px; width: 411.5px; height: 24px;\">Jumlah Pustakawan</td>\r\n<td style=\"box-sizing: border-box; padding: 0px; width: 411.5px; height: 24px;\">2 Orang</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box; height: 24px;\">\r\n<td style=\"box-sizing: border-box; padding: 0px; width: 411.5px; height: 24px;\">Jumlah Penjaga Sekolah</td>\r\n<td style=\"box-sizing: border-box; padding: 0px; width: 411.5px; height: 24px;\">1 Orang</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box; height: 24px;\">\r\n<td style=\"box-sizing: border-box; padding: 0px; width: 411.5px; height: 24px;\">Jumlah Satpam</td>\r\n<td style=\"box-sizing: border-box; padding: 0px; width: 411.5px; height: 24px;\">1 Orang</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box; height: 24px;\">\r\n<td style=\"box-sizing: border-box; padding: 0px; width: 411.5px; height: 24px;\">Jumlah Tukang Kebersihan</td>\r\n<td style=\"box-sizing: border-box; padding: 0px; width: 411.5px; height: 24px;\">3 Orang</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box; height: 24px;\">\r\n<td style=\"box-sizing: border-box; padding: 0px; width: 411.5px; height: 24px;\">Jumlah Pengemudi/Supir</td>\r\n<td style=\"box-sizing: border-box; padding: 0px; width: 411.5px; height: 24px;\">1 Orang</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box; height: 24px;\">\r\n<td style=\"box-sizing: border-box; padding: 0px; width: 411.5px; height: 24px;\">Bidang Studi Keahlian</td>\r\n<td style=\"box-sizing: border-box; padding: 0px; width: 411.5px; height: 24px;\">Teknologi Informasi dan Komunikasi</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box; height: 24px;\">\r\n<td style=\"box-sizing: border-box; padding: 0px; width: 411.5px; height: 24px;\">Program Studi Keahlian</td>\r\n<td style=\"box-sizing: border-box; padding: 0px; width: 411.5px; height: 24px;\">Teknik Komputer dan Informatika</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box; height: 24px;\">\r\n<td style=\"box-sizing: border-box; padding: 0px; width: 411.5px; height: 24px;\">&nbsp;</td>\r\n<td style=\"box-sizing: border-box; padding: 0px; width: 411.5px; height: 24px;\">&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1.5em; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 12px;\">Kompetensi Keahlian&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</p>\r\n<ol style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 12px;\">\r\n<li style=\"box-sizing: border-box;\">Teknik Komputer dan Jaringan (TKJ)</li>\r\n<li style=\"box-sizing: border-box;\">Multimedia (MM)</li>\r\n<li style=\"box-sizing: border-box;\">Rekayasa Perangkat Lunak (RPL)</li>\r\n<li style=\"box-sizing: border-box;\">Broadcasting (BRC)</li>\r\n<li style=\"box-sizing: border-box;\">Teknik Elektronika Industri (TEI)</li>\r\n<li style=\"box-sizing: border-box;\">Axioo Class Program (ACP)</li>\r\n</ol>', NULL, 'identitas-sekolah', 'Identitas Sekolah', 'Identitas Sekolah', 'INACTIVE', '2021-09-24 18:37:01', '2021-09-24 18:37:01', NULL),
(4, 1, 'Visi dan Misi', 'Visi dan Misi SMK Taruna Bhakti', '<h3 class=\"mt-5 fw-bold\" style=\"box-sizing: border-box; margin-bottom: 0.5rem; line-height: 1.2; font-size: 1.75rem; font-family: Raleway, sans-serif; margin-top: 3rem !important;\">Visi</h3>\r\n<ol style=\"box-sizing: border-box; padding-left: 2rem; margin-top: 0px; margin-bottom: 1rem; font-family: \'Open Sans\', sans-serif; font-size: 16px;\">\r\n<li style=\"box-sizing: border-box;\">Menghasilkan lulusan yang kompeten dalam IPTEK DAN IMTAQ,</li>\r\n<li style=\"box-sizing: border-box;\">serta mampu bersaing pada tingkat nasional dan global.</li>\r\n</ol>\r\n<h3 class=\"mt-5 fw-bold\" style=\"box-sizing: border-box; margin-bottom: 0.5rem; line-height: 1.2; font-size: 1.75rem; font-family: Raleway, sans-serif; margin-top: 3rem !important;\">Misi</h3>\r\n<ol style=\"box-sizing: border-box; padding-left: 2rem; margin-top: 0px; margin-bottom: 1rem; font-family: \'Open Sans\', sans-serif; font-size: 16px;\">\r\n<li style=\"box-sizing: border-box;\">Menumbuhkan semangat kreatifitas, bersinergi dan kompetitif kepada seluruh warga sekolah</li>\r\n<li style=\"box-sizing: border-box;\">Melaksanakan kurikulum melalui pembelajaran dan penilaian berbasis kompetensi, Berbasis wirausaha, berwawasan lingkungan.dan berlandaskan kejujuran.</li>\r\n<li style=\"box-sizing: border-box;\">Meningkatkan kualitas sumber daya manusia melalui sertifikasi Kompetensi Tingkat Nasional dan Internasional</li>\r\n<li style=\"box-sizing: border-box;\">Mengembangkan potensi peserta didik melalui kegiatan Minat dan Bakat dan pembinaan kedisiplinan.</li>\r\n<li style=\"box-sizing: border-box;\">Menerapkan layanan prima dalam pengelolaan sekolah melalui Sistem Manajeman Mutu</li>\r\n</ol>', NULL, 'visi-dan-misi', 'Visi dan Misi', 'VIsi dan Misi', 'ACTIVE', '2021-09-24 18:38:35', '2021-10-01 09:47:40', 7),
(5, 1, 'Tujuan', 'Tujuan SMK Taruna Bhakti', '<h3 class=\"mt-5\" style=\"box-sizing: border-box; margin-bottom: 0.5rem; font-weight: 500; line-height: 1.2; font-size: 1.75rem; font-family: Raleway, sans-serif; margin-top: 3rem !important;\"><span style=\"box-sizing: border-box; font-weight: bolder;\">Tujuan Sekolah</span></h3>\r\n<ol style=\"box-sizing: border-box; padding-left: 2rem; margin-top: 0px; margin-bottom: 1rem; color: #444444; font-family: \'Open Sans\', sans-serif; font-weight: 400;\">\r\n<li style=\"box-sizing: border-box;\">Menghasilkan lulusan yang kompeten</li>\r\n<li style=\"box-sizing: border-box;\">Meningkatkan kualitas pembelajaran.</li>\r\n<li style=\"box-sizing: border-box;\">Menyiapkan peserta didik agar mampu mengembangkan sikap profesional, mampu beradaptasi dan berkompetisi</li>\r\n<li style=\"box-sizing: border-box;\">Meningkatkan kepuasan masyarakat untuk memperoleh layanan pendidikan</li>\r\n<li style=\"box-sizing: border-box;\">Konsistensi pelaksanaan aktifitas, kendali mutu dan jaminan mutu sekolah.</li>\r\n<li style=\"box-sizing: border-box;\">Meningkatkan kesejahteraan warga sekolah.</li>\r\n</ol>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #444444; font-family: \'Open Sans\', sans-serif; font-weight: 400;\">Dalam segala aktivitas Proses Pendidikan menerapkan budaya mutu sebagai berikut :</p>\r\n<ul style=\"box-sizing: border-box; padding-left: 2rem; margin-top: 0px; margin-bottom: 1rem; color: #444444; font-family: \'Open Sans\', sans-serif; font-weight: 400;\">\r\n<li style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-weight: bolder;\">Perubahan itu masa depan</span></li>\r\n<li style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-weight: bolder;\">Pelayanan Prima</span></li>\r\n<li style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-weight: bolder;\">Learning without practising is nothing</span></li>\r\n<li style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-weight: bolder;\">Service is investment</span></li>\r\n<li style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-weight: bolder;\">Our quality ask be different</span></li>\r\n</ul>', NULL, 'tujuan', 'Tujuan SMK Taruna Bhakti', 'Tujuan', 'ACTIVE', '2021-09-24 18:39:26', '2021-10-01 09:17:59', 7),
(6, 1, 'Kebijakan Mutu SMK Taruna Bhakti', 'SMK Taruna Bhakti bertekad menerapkan Sistem Manajenen Mutu agar menjadi lembaga Pendidikan dan Pelatihan yang dapat memuaskan stacholder, dengan kebijakan:', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1.5em; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 12px;\">SMK Taruna Bhakti&nbsp;<em style=\"box-sizing: border-box;\">bertekad menerapkan Sistem Manajenen Mutu&nbsp;</em>agar menjadi lembaga Pendidikan dan Pelatihan yang dapat memuaskan stacholder, dengan kebijakan:</p>\r\n<ol style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 12px;\">\r\n<li style=\"box-sizing: border-box;\">Berorientasi mutu pada setiap kegiatannya</li>\r\n<li style=\"box-sizing: border-box;\">Mengedepankan kepuasan pelanggan, serta selalu meningkatkan kinerja pelayanan</li>\r\n<li style=\"box-sizing: border-box;\">Mutu menjadi semangat dan budaya kerja kami dalam mencapai kepuasan pelanggan</li>\r\n<li style=\"box-sizing: border-box;\">Sumber daya manusia&nbsp;<span style=\"box-sizing: border-box; font-weight: bolder;\"><em style=\"box-sizing: border-box;\">harus</em></span>&nbsp;bertanggungjawab dan melaksanakan serta melakukan penyempurnaan dan berperan&nbsp;<span style=\"box-sizing: border-box; font-weight: bolder;\"><em style=\"box-sizing: border-box;\">aktif untuk meninjau dan,&nbsp;<span style=\"box-sizing: border-box; font-weight: bolder;\"><em style=\"box-sizing: border-box;\">memperbaiki Sistem Manajemen Mutu secara berkelanjutan&nbsp; di unit kerja&nbsp; masing-masing</em></span></em></span></li>\r\n<li style=\"box-sizing: border-box;\"><em style=\"box-sizing: border-box;\">Pengembangan kesadaran lingkungan hidup menjadi perhatian kami dalam melaksanakan proses belajar mengajar</em></li>\r\n<li style=\"box-sizing: border-box;\"><em style=\"box-sizing: border-box;\">Menumbuhkan penghayatan terhadap ajaran agama sebagai sumber kearifan dalam bertindak</em></li>\r\n<li style=\"box-sizing: border-box;\">Dalam segala aktivitasnya&nbsp; menerapkan budaya mutu sebagai berikut :</li>\r\n</ol>\r\n<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 12px;\">\r\n<li style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-weight: bolder;\"><em style=\"box-sizing: border-box;\">Perubahan itu masa depan</em></span></li>\r\n<li style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-weight: bolder;\"><em style=\"box-sizing: border-box;\">Pelayanan Prima</em></span></li>\r\n<li style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-weight: bolder;\"><em style=\"box-sizing: border-box;\">Learning without practising is nothing</em></span></li>\r\n<li style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-weight: bolder;\"><em style=\"box-sizing: border-box;\">Service is investment</em></span></li>\r\n<li style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-weight: bolder;\"><em style=\"box-sizing: border-box;\">Our quality ask be different</em></span></li>\r\n</ul>', NULL, 'kebijakan-mutu-smk-taruna-bhakti', 'Kebijakan Mutu SMK Taruna Bhakti', 'Kebijakan Mutu', 'INACTIVE', '2021-09-24 18:40:28', '2021-09-24 18:40:28', NULL),
(7, 1, 'Analisis Jabatan Tenaga Pendidik (Guru)', 'Tenaga Pendidik (Guru) diangkat berdasarkan Surat Keputusan (SK) Kepala SMK Taruna Bhakti Depok.', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1.5em; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 12px; text-align: center;\"><span style=\"box-sizing: border-box; font-size: 14pt;\"><span style=\"box-sizing: border-box; font-weight: bolder;\">ANALISIS JABATAN</span></span></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1.5em; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 12px; text-align: center;\"><span style=\"box-sizing: border-box; font-size: 14pt;\"><span style=\"box-sizing: border-box; font-weight: bolder;\">TENAGA PENDIDIK ( GURU )</span></span></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1.5em; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 12px;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1.5em; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 12px;\">Tenaga Pendidik (Guru) diangkat berdasarkan Surat Keputusan (SK) Kepala SMK Taruna Bhakti Depok.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1.5em; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 12px;\">Bertanggung Jawab Kepada :</p>\r\n<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 12px;\">\r\n<li style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-weight: bolder;\">Kepala Sekolah</span></li>\r\n<li style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-weight: bolder;\">Kepala Program Keahlian</span></li>\r\n</ul>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1.5em; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 12px;\">Berhubungan dengan :</p>\r\n<ol style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 12px;\">\r\n<li style=\"box-sizing: border-box;\">Seluruh posisi Wakasek dan UMM</li>\r\n<li style=\"box-sizing: border-box;\">Ketua Program Studi Keahlian</li>\r\n<li style=\"box-sizing: border-box;\">Seluruh Tenaga Pendidik</li>\r\n<li style=\"box-sizing: border-box;\">Bimbingan Konseling</li>\r\n<li style=\"box-sizing: border-box;\">Tata Usaha</li>\r\n<li style=\"box-sizing: border-box;\">Pelanggan (Siswa, Orangtua Siswa, DU/DI)</li>\r\n</ol>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1.5em; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 12px;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1.5em; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 12px;\"><span style=\"box-sizing: border-box; font-weight: bolder;\">Prasyarat :</span></p>\r\n<ol style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 12px;\">\r\n<li style=\"box-sizing: border-box;\">Pendidikan minimal S1 (Berakta IV) atau memiliki sertifikat yang sesuai.</li>\r\n<li style=\"box-sizing: border-box;\">Usia minimal 20 tahun.</li>\r\n<li style=\"box-sizing: border-box;\">Memiliki latar belakang pendidikan atau pelatihan dan atau pengalaman yang sesuai dengan mata pelajaran/kompetensi yang diajarkannya.</li>\r\n<li style=\"box-sizing: border-box;\">Mampu merencanakan, melaksanakan dan mengevaluasi PBM.</li>\r\n<li style=\"box-sizing: border-box;\">Memahami berbagai kebijakan terkini yang mendukung pelaksanaan program.</li>\r\n<li style=\"box-sizing: border-box;\">Berkepribadian baik dan santun dalam membentuk kepribadian siswa yang berlandaskan pada IMTAQ.</li>\r\n</ol>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1.5em; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 12px;\"><span style=\"box-sizing: border-box; font-weight: bolder;\">&nbsp;</span></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1.5em; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 12px;\"><span style=\"box-sizing: border-box; font-weight: bolder;\">Tugas :</span></p>\r\n<ol style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 12px;\">\r\n<li style=\"box-sizing: border-box;\">Membantu Kepala Program Keahlian dan Waka. Bid. Kurikulum untuk menyusun kurikulum implementatif.</li>\r\n<li style=\"box-sizing: border-box;\">Menyusun Program Tahunan dan Semester.</li>\r\n<li style=\"box-sizing: border-box;\">Menyusun perangkat pembelajaran (silabus, RPP, modul, alat peraga).</li>\r\n<li style=\"box-sizing: border-box;\">Menganalisis kebutuhan bahan ajar (buku sumber, alat, bahan).</li>\r\n<li style=\"box-sizing: border-box;\">Melaksanakan penyelenggaraan diklat.</li>\r\n<li style=\"box-sizing: border-box;\">Menyusun perangkat evaluasi (kisi-kisi, soal, analisis soal, program remedial).</li>\r\n<li style=\"box-sizing: border-box;\">Melakukan persiapan dan pelaksanaan evaluasi PBM.</li>\r\n<li style=\"box-sizing: border-box;\">Mengikuti Rapat Dinas.</li>\r\n<li style=\"box-sizing: border-box;\">Melaksanakan tindak lanjut hasil Rapat Dinas.</li>\r\n<li style=\"box-sizing: border-box;\">Melaporkan tugas pokok dan fungsinya (daftar hadir siswa, nilai, dan laporan kasus) kepada Ketua Program K</li>\r\n<li style=\"box-sizing: border-box;\">Menganalisis ketercapaian kompetensi siswa.</li>\r\n<li style=\"box-sizing: border-box;\">Membimbing siswa yang mengalami kesulitan belajar.</li>\r\n<li style=\"box-sizing: border-box;\">Memberi teguran kepada siswa yang melanggar tata tertib sekolah.</li>\r\n</ol>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1.5em; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 12px;\"><span style=\"box-sizing: border-box; font-weight: bolder;\">&nbsp;</span></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1.5em; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 12px;\"><span style=\"box-sizing: border-box; font-weight: bolder;\">Wewenang :</span></p>\r\n<ol style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 12px;\">\r\n<li style=\"box-sizing: border-box;\">Menentukan nilai ketuntasan belajar (KB) sesuai mata pelajaran yang diampu.</li>\r\n<li style=\"box-sizing: border-box;\">Berperan serta dalam menyeleksi siswa untuk kegiatan LKS.</li>\r\n<li style=\"box-sizing: border-box;\">Berperan serta menentukan kenaikan tingkat dan kelulusan siswa (mata pelajaran/kompetensi) dalam rapat kenaikan dan kelulusan dewan guru.</li>\r\n<li style=\"box-sizing: border-box;\">Menganalisis kebutuhan pelanggan dan mendeskripsikannya dalam program kerja.</li>\r\n</ol>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1.5em; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 12px;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1.5em; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 12px;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1.5em; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 12px;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1.5em; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 12px; text-align: right;\">Depok, 18 Juli 2018</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1.5em; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 12px; text-align: right;\">Kepala SMK Taruna Bhakti</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1.5em; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 12px;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1.5em; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 12px;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1.5em; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 12px; text-align: right;\"><span style=\"box-sizing: border-box; font-weight: bolder;\"><u style=\"box-sizing: border-box;\">Ramadin Tarigan, ST</u></span></p>', NULL, 'analisis-jabatan-tenaga-pendidik-guru', 'Analisis Jabatan Tenaga Pendidik', 'Analisis Jabatan Tenaga Pendidik', 'INACTIVE', '2021-09-24 18:42:37', '2021-09-24 18:42:37', NULL),
(8, 1, 'Analisis Jabatan Wakil Kepala Sekolah Bidang Hubungan Industri', 'Wakil Kepala Sekolah Bidang Hubungan Industri diangkat berdasarkan Surat Keputusan (SK) Kepala SMK Taruna Bhakti Depok.', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1.5em; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 12px; text-align: center;\"><span style=\"box-sizing: border-box; font-weight: bolder;\">ANALISIS JABATAN</span></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1.5em; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 12px; text-align: center;\"><span style=\"box-sizing: border-box; font-weight: bolder;\">WAKIL KEPALA SEKOLAH BIDANG HUBUNGAN INDUSTRI</span></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1.5em; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 12px;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1.5em; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 12px;\">Wakil Kepala Sekolah Bidang Hubungan Industri diangkat berdasarkan Surat Keputusan (SK) Kepala SMK Taruna Bhakti Depok.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1.5em; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 12px;\">Bertanggung jawab kepada :</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1.5em; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 12px;\"><span style=\"box-sizing: border-box; font-weight: bolder;\">Kepala Sekolah</span></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1.5em; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 12px;\">Berhubungan dengan :</p>\r\n<ol style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 12px;\">\r\n<li style=\"box-sizing: border-box;\">Seluruh posisi Waka dan UMM</li>\r\n<li style=\"box-sizing: border-box;\">Ketua Program Keahlian</li>\r\n<li style=\"box-sizing: border-box;\">Seluruh Tenaga Pendidik</li>\r\n<li style=\"box-sizing: border-box;\">Tata Usaha</li>\r\n<li style=\"box-sizing: border-box;\">Pelanggan (Siswa, Orangtua Siswa, DU/DI)</li>\r\n</ol>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1.5em; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 12px;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1.5em; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 12px;\"><span style=\"box-sizing: border-box; font-weight: bolder;\">Prasyarat :</span></p>\r\n<ol style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 12px;\">\r\n<li style=\"box-sizing: border-box;\">Pendidikan minimal S1.</li>\r\n<li style=\"box-sizing: border-box;\">Usia setinggi-tingginya 50 tahun.</li>\r\n<li style=\"box-sizing: border-box;\">Pengalaman mengajar sekurang-kurangnya 5 tahun.</li>\r\n<li style=\"box-sizing: border-box;\">Memahami filosofi, konsep dasar, program, dan strategi pelaksanaan pendidikan menengah kejuruan dalam pembangunan nasional.</li>\r\n<li style=\"box-sizing: border-box;\">Memahami Sistem Manajemen Mutu ISO 9001 : 2000.</li>\r\n<li style=\"box-sizing: border-box;\">Memahami Anggaran dan Pendapatan Belanja Sekolah (APBS).</li>\r\n</ol>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1.5em; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 12px;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1.5em; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 12px;\"><span style=\"box-sizing: border-box; font-weight: bolder;\">Tugas :</span></p>\r\n<ol style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 12px;\">\r\n<li style=\"box-sizing: border-box;\">Menyusun Program Kerja sesuai Kebijakan Mutu dan Sasaran Mutu.</li>\r\n<li style=\"box-sizing: border-box;\">Mengikuti Rapat Tinjauan Manajemen.</li>\r\n<li style=\"box-sizing: border-box;\">Melaksanakan tindak lanjut hasil Rapat Tinjauan Manajemen.</li>\r\n<li style=\"box-sizing: border-box;\">Melaksanakan Program Kerja.</li>\r\n<li style=\"box-sizing: border-box;\">Memonitor dan Mengevaluasi Pelaksanaan Hubungan Kerjasama Industri (Prakerin, Penelusuran dan Pemasaran Tamatan).</li>\r\n<li style=\"box-sizing: border-box;\">Menindaklanjuti Hasil Monitoring dan Evaluasi Pelaksanaan Hubungan Kerjasama Industri (Prakerin, Penelusuran dan Pemasaran Tamatan).</li>\r\n<li style=\"box-sizing: border-box;\">Mengkordinir pelaksanaan uji kompetensi.</li>\r\n<li style=\"box-sizing: border-box;\">Melaporkan dan mengkoordinasikan hasil Pelaksanaan Hubungan Kerjasama Industri dalam Rapat Dinas Tim Manajemen.</li>\r\n<li style=\"box-sizing: border-box;\">Mewakili dan atau melaksanakan tugas Kepala Sekolah sesuai bidang Hubungan Kerjasama Industri.</li>\r\n<li style=\"box-sizing: border-box;\">Mengkoordinir penelusuran tamatan.</li>\r\n<li style=\"box-sizing: border-box;\">Mengkoordinir persiapan dan pelaksanaan Praktek Kerja Industri (Prakerin).</li>\r\n<li style=\"box-sizing: border-box;\">Menyusun dan mengatur kegiatan yang bersifat kehumasan.</li>\r\n</ol>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1.5em; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 12px;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1.5em; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 12px;\"><span style=\"box-sizing: border-box; font-weight: bolder;\">Wewenang :</span></p>\r\n<ol style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 12px;\">\r\n<li style=\"box-sizing: border-box;\">Mewajibkan setiap ketua program keahlian untuk memiliki dokumen kerja sesuai tugas pokok dan fungsinya.</li>\r\n<li style=\"box-sizing: border-box;\">Mengkoordinir proses analisis kebutuhan pelanggan dan mendeskripsikannya dalam program kerja yang harus dilaksanakan oleh tim kerja/dan atau Program Studi Keahlian terkait.</li>\r\n<li style=\"box-sizing: border-box;\">Membuat Dokumen Kebijakan Mutu dan Sasaran Mutu Hubungan Kerjasama Industri bersama-sama dengan Waka dan Ketua Program Keahlian.</li>\r\n<li style=\"box-sizing: border-box;\">Menyusun uraian tugas dan wewenang tim Hubungan Kerjasama Industri agar mampu melaksanakan tugas sebaik-baiknya.</li>\r\n<li style=\"box-sizing: border-box;\">Memanfaatkan berbagai sumberdaya, jaringan lintas sektoral untuk memenuhi kebutuhan fasilitas dalam pengembangan kerjasama industri.</li>\r\n<li style=\"box-sizing: border-box;\">Penyelenggaraan penelusuran dan pemasaran tamatan sesuai dengan tuntutan pasar kerja, standar kerja dan standar kompetensi.</li>\r\n<li style=\"box-sizing: border-box;\">Meningkatkan potensi tamatan sesuai dengan Sekolah Bertaraf Internasional.</li>\r\n<li style=\"box-sizing: border-box;\">Merekomendasikan DU/DI yang akan dipilih sebagai institusi pasangan.</li>\r\n</ol>', NULL, 'analisis-jabatan-wakil-kepala-sekolah-bidang-hubungan-industri', 'Analisis Jabatan Wakil Kepala Sekolah Bidang Hubungan Industri', 'Analisis Jabatan Wakil Kepala Sekolah Bidang Hubungan Industri', 'INACTIVE', '2021-09-24 18:43:37', '2021-09-24 18:43:37', NULL);
INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`, `category_id`) VALUES
(9, 1, 'Analisis Jabatan Wakil Kepala Sekolah Bidang Kurikulum', 'Koordinator Pokja Kurikulum diangkat berdasarkan Surat Keputusan (SK) Kepala SMK Taruna Bhakti Depok.', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1.5em; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 12px; text-align: center;\"><span style=\"box-sizing: border-box; font-size: 14pt;\"><span style=\"box-sizing: border-box; font-weight: bolder;\">ANALISIS JABATAN</span></span></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1.5em; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 12px; text-align: center;\"><span style=\"box-sizing: border-box; font-size: 14pt;\"><span style=\"box-sizing: border-box; font-weight: bolder;\">KOORDINATOR POKJA KURIKULUM</span></span></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1.5em; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 12px;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1.5em; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 12px;\">Koordinator Pokja Kurikulum diangkat berdasarkan Surat Keputusan (SK) Kepala SMK Taruna Bhakti Depok.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1.5em; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 12px;\">Bertanggung Jawab Kepada :</p>\r\n<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 12px;\">\r\n<li style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-weight: bolder;\">Kepala Sekolah</span></li>\r\n</ul>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1.5em; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 12px;\">Berhubungan dengan :</p>\r\n<ol style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 12px;\">\r\n<li style=\"box-sizing: border-box;\">Seluruh posisi Wakasek dan UMM</li>\r\n<li style=\"box-sizing: border-box;\">Ketua Program Studi Keahlian</li>\r\n<li style=\"box-sizing: border-box;\">Seluruh Tenaga Pendidik</li>\r\n<li style=\"box-sizing: border-box;\">Bimbingan Konseling</li>\r\n<li style=\"box-sizing: border-box;\">Tata Usaha</li>\r\n<li style=\"box-sizing: border-box;\">Pelanggan (Siswa, Orangtua Siswa, DU/DI)</li>\r\n</ol>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1.5em; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 12px;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1.5em; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 12px;\"><span style=\"box-sizing: border-box; font-weight: bolder;\">Prasyarat :</span></p>\r\n<ol style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 12px;\">\r\n<li style=\"box-sizing: border-box;\">Pendidikan minimal S1.</li>\r\n<li style=\"box-sizing: border-box;\">Usia setinggi-tingginya 50 tahun.</li>\r\n<li style=\"box-sizing: border-box;\">Pengalaman mengajar sekurang-kurangnya 5 tahun.</li>\r\n<li style=\"box-sizing: border-box;\">Memahami filosofi, konsep dasar, program, dan strategi pelaksanaan pendidikan menengah kejuruan dalam pembangunan nasional.</li>\r\n<li style=\"box-sizing: border-box;\">Memahami Sistem Manajemen Mutu ISO 9001 : 2000.</li>\r\n<li style=\"box-sizing: border-box;\">Memahami Anggaran dan Pendapatan Belanja Sekolah (APBS).</li>\r\n</ol>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1.5em; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 12px;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1.5em; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 12px;\"><span style=\"box-sizing: border-box; font-weight: bolder;\">Tugas :</span></p>\r\n<ol style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 12px;\">\r\n<li style=\"box-sizing: border-box;\">Menyusun Program Kerja sesuai Kebijakan Mutu dan Sasaran Mutu.</li>\r\n<li style=\"box-sizing: border-box;\">Mengikuti Rapat Tinjauan Manajemen.</li>\r\n<li style=\"box-sizing: border-box;\">Melaksanakan tindak lanjut hasil Rapat Tinjauan Manajemen.</li>\r\n<li style=\"box-sizing: border-box;\">Melaksanakan Program Kerja.</li>\r\n<li style=\"box-sizing: border-box;\">Merencanakan, Memonitor dan Mengevaluasi Pelaksanaan pembelajaran.</li>\r\n<li style=\"box-sizing: border-box;\">Menindaklanjuti Hasil Monitoring dan Evaluasi.</li>\r\n<li style=\"box-sizing: border-box;\">Mewakili dan atau melaksanakan tugas Kepala Sekolah sesuai bidang kurikulum.</li>\r\n<li style=\"box-sizing: border-box;\">Menganalisis kebutuhan tenaga pendidik.</li>\r\n<li style=\"box-sizing: border-box;\">Mengkoordinir persiapan dan pelaksanaan evaluasi PBM.</li>\r\n<li style=\"box-sizing: border-box;\">Membimbing penyusunan perangkat pembelajaran (Silabus, RPP, Bahan Ajar).</li>\r\n</ol>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1.5em; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 12px;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1.5em; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 12px;\"><span style=\"box-sizing: border-box; font-weight: bolder;\">Wewenang :</span></p>\r\n<ol style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 12px;\">\r\n<li style=\"box-sizing: border-box;\">Mewajibkan setiap kepala program keahlian untuk memiliki dokumen kerja sesuai tugas pokok dan fungsinya.</li>\r\n<li style=\"box-sizing: border-box;\">Mengkoordinir proses analisis kebutuhan pelanggan dan mendeskripsikannya dalam program kerja yang harus dilaksanakan oleh tim kerja/dan atau Program Studi Keahlian terkait.</li>\r\n<li style=\"box-sizing: border-box;\">Membuat Dokumen Kebijakan Mutu dan Sasaran Mutu Pendidikan dan Pelatihan, bersama-sama dengan Waka lainnya.</li>\r\n<li style=\"box-sizing: border-box;\">Menyusun uraian tugas dan wewenang para tenaga pendidik, agar mampu melaksanakan penyelenggaraan pendidikan dan pelatihan.</li>\r\n<li style=\"box-sizing: border-box;\">Memanfaatkan berbagai sumberdaya, jaringan lintas sektoral untuk memenuhi kebutuhan fasilitas dalam pengelolaan dan penyelenggaran diklat.</li>\r\n<li style=\"box-sizing: border-box;\">Penyelenggaraan Diklat sesuai tuntutan pasar kerja, standar kerja dan standar kompetensi</li>\r\n<li style=\"box-sizing: border-box;\">Meningkatkan potensi nilai akademik.</li>\r\n</ol>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1.5em; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 12px;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1.5em; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 12px;\"><span style=\"box-sizing: border-box; font-weight: bolder;\">Catatan :</span></p>\r\n<ol style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 12px;\">\r\n<li style=\"box-sizing: border-box;\">Point Kinerja pokja harus Mencapai Target Minimal 250 Point, apabila tidak memenuhi target maka konpensasi bulanan akan disesuai dengan presentasi pencapaian program dari program bidang Kurikulum.</li>\r\n</ol>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1.5em; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 12px;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1.5em; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 12px; text-align: right;\">Depok, 17 Juli 2018</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1.5em; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 12px; text-align: right;\">Kepala SMK Taruna Bhakti</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1.5em; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 12px; text-align: right;\"><span style=\"box-sizing: border-box; font-weight: bolder;\"><u style=\"box-sizing: border-box;\">Ramadin Tarigan, ST</u></span></p>', NULL, 'analisis-jabatan-wakil-kepala-sekolah-bidang-kurikulum', 'Analisis Jabatan Wakil Kepala Sekolah Bidang Kurikulum', 'Analisis Jabatan Wakil Kepala Sekolah Bidang Kurikulum', 'INACTIVE', '2021-09-24 18:44:25', '2021-09-24 18:44:25', NULL),
(10, 1, 'Analisis Jabatan Wali Kelas', 'Wali Kelas diangkat berdasarkan Surat Keputusan (SK) Kepala SMK Taruna Bhakti Depok.', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1.5em; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 12px; text-align: center;\"><span style=\"box-sizing: border-box; font-size: 14pt;\"><span style=\"box-sizing: border-box; font-weight: bolder;\">ANALISIS JABATAN</span></span></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1.5em; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 12px; text-align: center;\"><span style=\"box-sizing: border-box; font-size: 14pt;\"><span style=\"box-sizing: border-box; font-weight: bolder;\">WALI KELAS</span></span></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1.5em; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 12px;\">Wali Kelas diangkat berdasarkan Surat Keputusan (SK) Kepala SMK Taruna Bhakti Depok.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1.5em; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 12px;\">Bertanggung Jawab Kepada :</p>\r\n<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 12px;\">\r\n<li style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-weight: bolder;\">Kepala Sekolah</span></li>\r\n<li style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-weight: bolder;\">Kepala Program Keahlian</span></li>\r\n</ul>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1.5em; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 12px;\">Berhubungan dengan :</p>\r\n<ol style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 12px;\">\r\n<li style=\"box-sizing: border-box;\">Seluruh posisi Wakasek dan UMM</li>\r\n<li style=\"box-sizing: border-box;\">Ketua Program Studi Keahlian</li>\r\n<li style=\"box-sizing: border-box;\">Seluruh Tenaga Pendidik</li>\r\n<li style=\"box-sizing: border-box;\">Bimbingan Konseling</li>\r\n<li style=\"box-sizing: border-box;\">Tata Usaha</li>\r\n<li style=\"box-sizing: border-box;\">Pelanggan (Siswa, Orangtua Siswa, DU/DI)</li>\r\n</ol>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1.5em; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 12px;\"><span style=\"box-sizing: border-box; font-weight: bolder;\">Prasyarat :</span></p>\r\n<ol style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 12px;\">\r\n<li style=\"box-sizing: border-box;\">Memiliki kemampuan untuk membentuk kepribadian siswa yang berlandaskan pada IMTAQ.</li>\r\n<li style=\"box-sizing: border-box;\">Pendidikan minimal D3 atau memiliki sertifikat yang sesuai.</li>\r\n<li style=\"box-sizing: border-box;\">Usia minimal 20 tahun.</li>\r\n<li style=\"box-sizing: border-box;\">Mampu merencanakan, melaksanakan dan mengevaluasi PBM.</li>\r\n<li style=\"box-sizing: border-box;\">Memahami berbagai kebijakan terkini yang mendukung pelaksanaan program.</li>\r\n</ol>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1.5em; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 12px;\"><span style=\"box-sizing: border-box; font-weight: bolder;\">Tugas&nbsp; :&nbsp;</span></p>\r\n<ol style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 12px;\">\r\n<li style=\"box-sizing: border-box;\">Menyusun program kerja wali kelas.</li>\r\n<li style=\"box-sizing: border-box;\">Memonitor kehadiran siswa setiap hari, yang dibantu oleh Sekertaris kelas</li>\r\n<li style=\"box-sizing: border-box;\">Mengatur tempat duduk siswa di kelas dan membuat lay out kelas.</li>\r\n<li style=\"box-sizing: border-box;\">Membentuk pengurus kelas dan pembagian tugas piket kelas.</li>\r\n<li style=\"box-sizing: border-box;\">Menjalin hubungan dengan orang tua siswa.</li>\r\n<li style=\"box-sizing: border-box;\">Menghubungi orang tua/wali siswa apabila perlu.</li>\r\n<li style=\"box-sizing: border-box;\">Membantu bendahara sekolah dalam pengumpulan pembayaran SPP dan sumbangan lainnya.</li>\r\n<li style=\"box-sizing: border-box;\">Memahami karakter siswa yang meliputi : jumlah, nama dan latar belakang siswa dari kelas yang diasuhnya.</li>\r\n<li style=\"box-sizing: border-box;\">Membina suasana kekeluargaan diantara peserta didik</li>\r\n<li style=\"box-sizing: border-box;\">Menerima nilai dari penanggung jawab nilai danolah nilai (Pokja Kurikulum) untuk diolah menjadi nilai akhir dalam raport.</li>\r\n<li style=\"box-sizing: border-box;\">Mengisi dan membagikan buku laporan pendidkan (raport).</li>\r\n<li style=\"box-sizing: border-box;\">Menangani segala permasalahan yang dihadapi oleh siswa.</li>\r\n<li style=\"box-sizing: border-box;\">Berkoordinasi dengan guru BP/BK dalam menangani siswa yang menghadapi masalah.</li>\r\n<li style=\"box-sizing: border-box;\">Membina budi pekerti siswa.</li>\r\n<li style=\"box-sizing: border-box;\">Membantu siswa dalam memecahkan masalahnya.</li>\r\n<li style=\"box-sizing: border-box;\">Memotivasi siswa dalam pelaksanaan 5K &ndash; 7K.</li>\r\n<li style=\"box-sizing: border-box;\">Mengadministrasikan berkas/catatan pembinaan siswa pada kelas yang diasuhnya.</li>\r\n<li style=\"box-sizing: border-box;\">Membuat peta kerawanan kelas.</li>\r\n<li style=\"box-sizing: border-box;\">Membuat laporan berkala dan insidentil.</li>\r\n<li style=\"box-sizing: border-box;\">Menjadwalkan pertemuan mingguan dengan siswa perwalian.</li>\r\n<li style=\"box-sizing: border-box;\">Menjadwalkan pertemuan bulanan dengan orang tua siswa perwalian setelah tanggal 10 setiap bulannya.</li>\r\n<li style=\"box-sizing: border-box;\">Memonitor terlaksananya program sekolah dalam rangka hidup hemat (Menabung RP.2000 /hari).</li>\r\n<li style=\"box-sizing: border-box;\">Memonitor pengumpulan dan penggunaan uang KAS kelas.</li>\r\n<li style=\"box-sizing: border-box;\">Membuat laporan kerja wali kelas setiap akhir semester tahun pelajaran.</li>\r\n<li style=\"box-sizing: border-box;\">Melaksanakan proses himbauan dan penagihan Program menabung Rp. 2000,-per hari mencapai minimal 70% setiap bulan dari total siswa perwalian.</li>\r\n</ol>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1.5em; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 12px;\"><span style=\"box-sizing: border-box; font-weight: bolder;\">Wewenang :</span></p>\r\n<ol style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 12px;\">\r\n<li style=\"box-sizing: border-box;\">Membina kelas yang diasuhnya.</li>\r\n<li style=\"box-sizing: border-box;\">Mengisi daftar kumpulan nilai.</li>\r\n<li style=\"box-sizing: border-box;\">Mengisi dan menanda tangani raport.</li>\r\n<li style=\"box-sizing: border-box;\">Mengatasi siswa yang bermasalah bekerja sama guru BP/BK.</li>\r\n<li style=\"box-sizing: border-box;\">Mengadakan pembinaan dan bimbingan terhadap siswa yang diasuhnya.</li>\r\n<li style=\"box-sizing: border-box;\">Menilai budi pekerti siswa yang diasuhnya.</li>\r\n<li style=\"box-sizing: border-box;\">Mengadakan kunjungan atau memanggil orang tua siswa/wali dari siswa yang bermasalah.</li>\r\n<li style=\"box-sizing: border-box;\">Membantu siswa yang mempunyai masalah dalam pelajaran tertentu.</li>\r\n</ol>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1.5em; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 12px;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1.5em; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 12px; text-align: right;\">Depok, 17 Juli 2018</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1.5em; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 12px; text-align: right;\">Kepala SMK Taruna Bhakti</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1.5em; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 12px; text-align: right;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1.5em; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 12px; text-align: right;\"><span style=\"box-sizing: border-box; font-weight: bolder;\"><u style=\"box-sizing: border-box;\">Ramadin Tarigan, ST</u></span></p>', NULL, 'analisis-jabatan-wali-kelas', 'Analisis Jabatan Wali Kelas', 'Analisis Jabatan Wali Kelas', 'INACTIVE', '2021-09-24 18:45:09', '2021-09-24 18:45:09', NULL),
(16, 1, 'Kompetensi Keahlian', 'Kompetensi Keahlian', '<h3 class=\"mt-5\" style=\"box-sizing: border-box; margin-bottom: 0.5rem; font-weight: 500; line-height: 1.2; font-size: 1.75rem; font-family: Raleway, sans-serif; margin-top: 3rem !important;\"><span style=\"box-sizing: border-box; font-weight: bolder;\">Kompetensi Keahlian</span></h3>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1.5em; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 12px;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: \'Open Sans\', sans-serif; font-size: 16px;\"><span style=\"box-sizing: border-box; font-weight: bolder;\">Pembelajaran di smk menggabungan antara teori dan praktek dengan orientasi pada kesiapan kerja lulusannya.&nbsp;</span>Kurikulum dalam pendidikan smk terkonsentrasi pada sistem pembelajaran keahlian pada kejuruan-kejuruan khusus. karena itu dalam persaingan global saat ini lulusan smk dipersiapkan menjadi tenaga yang siap terjun ke dunia usaha dan industri</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1.5em; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 12px;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: \'Open Sans\', sans-serif; font-size: 16px;\">SMK Taruna Bhakti Memiliki 5 Kompetensi keahlian yang Terdiri dari :</p>\r\n<ol style=\"box-sizing: border-box; padding-left: 2rem; margin-top: 0px; margin-bottom: 1rem; font-family: \'Open Sans\', sans-serif; font-size: 16px;\">\r\n<li style=\"box-sizing: border-box;\">Teknik Komputer Dan Jaringan</li>\r\n<li style=\"box-sizing: border-box;\">Multimedia</li>\r\n<li style=\"box-sizing: border-box;\">Rekayasa Perangkat Lunak</li>\r\n<li style=\"box-sizing: border-box;\">Teknik Elektronika Industri</li>\r\n<li style=\"box-sizing: border-box;\">Broadcasting</li>\r\n</ol>', NULL, 'kompetensi-keahlian', 'Kompetensi Keahlian', 'Kompetensi Keahlian', 'ACTIVE', '2021-10-01 07:29:30', '2021-10-01 09:50:01', 5);
INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`, `category_id`) VALUES
(17, 1, 'Struktur Kurikulum SMK Taruna Bhakti', 'Struktur Kurikulum SMK Taruna Bhakti', '<div class=\"mt-5\">\r\n<p style=\"text-align: center;\"><span style=\"font-size: 18pt;\">STRUKTUR KURIKULUM</span></p>\r\n<p style=\"text-align: center;\"><span style=\"font-size: 18pt;\">SMK TARUNA BHAKTI </span></p>\r\n<p>&nbsp;</p>\r\n<p>BIDANG KEAHIAN : TEKNOLOGI INFORMASI DAN KOMUNIKASI</p>\r\n<p>PROGRAM KEAHLIAN : TEKNIK KOMPUTER DAN INFORMATIKA</p>\r\n<p>PAKET KEAHLIAN : TEKNIK KOMPUTER DAN JARINGAN</p>\r\n<div class=\"kekanan\">\r\n<table class=\"table table-bordered\" style=\"width: 100%;\" border=\"1\" width=\"100%\"><caption>&nbsp;</caption>\r\n<tbody>\r\n<tr>\r\n<td class=\"text-center\" style=\"width: 397px;\" colspan=\"2\" rowspan=\"3\">MATA PELAJARAN</td>\r\n<td style=\"width: 292px;\" colspan=\"6\">KELAS</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 96px;\" colspan=\"2\">X</td>\r\n<td style=\"width: 96px;\" colspan=\"2\">XI</td>\r\n<td style=\"width: 96px;\" colspan=\"2\">XII</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 47px;\">1</td>\r\n<td style=\"width: 47px;\">2</td>\r\n<td style=\"width: 47px;\">1</td>\r\n<td style=\"width: 47px;\">2</td>\r\n<td style=\"width: 47px;\">1</td>\r\n<td style=\"width: 47px;\">2</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 691px;\" colspan=\"8\"><strong>Kelompok A</strong></td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 47px;\">1</td>\r\n<td style=\"width: 348px;\">Pendidikan Agama dan Budi Pekerti</td>\r\n<td style=\"width: 47px;\">3</td>\r\n<td style=\"width: 47px;\">3</td>\r\n<td style=\"width: 47px;\">3</td>\r\n<td style=\"width: 47px;\">3</td>\r\n<td style=\"width: 47px;\">3</td>\r\n<td style=\"width: 47px;\">3</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 47px;\">2</td>\r\n<td style=\"width: 348px;\">Pendidikan Pancasila dan Kewarganegaraan</td>\r\n<td style=\"width: 47px;\">2</td>\r\n<td style=\"width: 47px;\">2</td>\r\n<td style=\"width: 47px;\">2</td>\r\n<td style=\"width: 47px;\">2</td>\r\n<td style=\"width: 47px;\">2</td>\r\n<td style=\"width: 47px;\">2</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 47px;\">3</td>\r\n<td style=\"width: 348px;\">Bahasa Indonesia</td>\r\n<td style=\"width: 47px;\">3</td>\r\n<td style=\"width: 47px;\">3</td>\r\n<td style=\"width: 47px;\">3</td>\r\n<td style=\"width: 47px;\">3</td>\r\n<td style=\"width: 47px;\">2</td>\r\n<td style=\"width: 47px;\">2</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 47px;\">4</td>\r\n<td style=\"width: 348px;\">Matematika</td>\r\n<td style=\"width: 47px;\">4</td>\r\n<td style=\"width: 47px;\">4</td>\r\n<td style=\"width: 47px;\">4</td>\r\n<td style=\"width: 47px;\">4</td>\r\n<td style=\"width: 47px;\">4</td>\r\n<td style=\"width: 47px;\">4</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 47px;\">5</td>\r\n<td style=\"width: 348px;\">Sejarah Indonesia</td>\r\n<td style=\"width: 47px;\">2</td>\r\n<td style=\"width: 47px;\">2</td>\r\n<td style=\"width: 47px;\">2</td>\r\n<td style=\"width: 47px;\">2</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 47px;\">6</td>\r\n<td style=\"width: 348px;\">Bahasa Inggris</td>\r\n<td style=\"width: 47px;\">3</td>\r\n<td style=\"width: 47px;\">3</td>\r\n<td style=\"width: 47px;\">3</td>\r\n<td style=\"width: 47px;\">3</td>\r\n<td style=\"width: 47px;\">3</td>\r\n<td style=\"width: 47px;\">3</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 691px;\" colspan=\"8\"><strong>Kelompok B</strong></td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 47px;\">7</td>\r\n<td style=\"width: 348px;\">Seni Budaya</td>\r\n<td style=\"width: 47px;\">3</td>\r\n<td style=\"width: 47px;\">3</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 47px;\">8</td>\r\n<td style=\"width: 348px;\">Prakarya dan Kewirausahaan</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">2</td>\r\n<td style=\"width: 47px;\">2</td>\r\n<td style=\"width: 47px;\">2</td>\r\n<td style=\"width: 47px;\">2</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 47px;\">9</td>\r\n<td style=\"width: 348px;\">Pendidikan Jasmani, Olah Raga &amp; Kesehatan</td>\r\n<td style=\"width: 47px;\">2</td>\r\n<td style=\"width: 47px;\">2</td>\r\n<td style=\"width: 47px;\">2</td>\r\n<td style=\"width: 47px;\">2</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 397px;\" colspan=\"2\">Jumlah A Dan B</td>\r\n<td style=\"width: 47px;\">22</td>\r\n<td style=\"width: 47px;\">22</td>\r\n<td style=\"width: 47px;\">21</td>\r\n<td style=\"width: 47px;\">21</td>\r\n<td style=\"width: 47px;\">16</td>\r\n<td style=\"width: 47px;\">16</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 691px;\" colspan=\"8\"><strong>Kelompok C (Peminatan)</strong></td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 691px;\" colspan=\"8\"><strong>C1. Dasar Bidang Keahlian</strong></td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 47px;\">10</td>\r\n<td style=\"width: 348px;\">Simulasi Digital</td>\r\n<td style=\"width: 47px;\">3</td>\r\n<td style=\"width: 47px;\">3</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 47px;\">11</td>\r\n<td style=\"width: 348px;\">Fisika</td>\r\n<td style=\"width: 47px;\">4</td>\r\n<td style=\"width: 47px;\">4</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 47px;\">12</td>\r\n<td style=\"width: 348px;\">Sistem Komputer</td>\r\n<td style=\"width: 47px;\">4</td>\r\n<td style=\"width: 47px;\">4</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 691px;\" colspan=\"8\"><strong>C2. Dasar Program Keahlian</strong></td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 47px;\">13</td>\r\n<td style=\"width: 348px;\">Komputer dan Jaringan Dasar</td>\r\n<td style=\"width: 47px;\">10</td>\r\n<td style=\"width: 47px;\">10</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 47px;\">14</td>\r\n<td style=\"width: 348px;\">Pemrograman Dasar</td>\r\n<td style=\"width: 47px;\">3</td>\r\n<td style=\"width: 47px;\">3</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 47px;\">15</td>\r\n<td style=\"width: 348px;\">Dasar Design Grafis</td>\r\n<td style=\"width: 47px;\">2</td>\r\n<td style=\"width: 47px;\">2</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 691px;\" colspan=\"8\"><strong>C3. Paket Keahlian</strong></td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 47px;\">16</td>\r\n<td style=\"width: 348px;\">Teknologi Infrastruktur Jaringan</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">8</td>\r\n<td style=\"width: 47px;\">8</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 47px;\">17</td>\r\n<td style=\"width: 348px;\">Rancang Bangun Jaringan</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">8</td>\r\n<td style=\"width: 47px;\">8</td>\r\n<td style=\"width: 47px;\">9</td>\r\n<td style=\"width: 47px;\">9</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 47px;\">18</td>\r\n<td style=\"width: 348px;\">Administrasi Server dan Keamanan Jaringan</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">8</td>\r\n<td style=\"width: 47px;\">8</td>\r\n<td style=\"width: 47px;\">10</td>\r\n<td style=\"width: 47px;\">10</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 47px;\">19</td>\r\n<td style=\"width: 348px;\">Teknologi Layanan Jaringan</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">10</td>\r\n<td style=\"width: 47px;\">10</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 47px;\">20</td>\r\n<td style=\"width: 348px;\">Pengembangan Produk Kreatif</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">3</td>\r\n<td style=\"width: 47px;\">3</td>\r\n<td style=\"width: 47px;\">3</td>\r\n<td style=\"width: 47px;\">3</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 397px;\" colspan=\"2\">Jumlah C1, C2 Dan C3</td>\r\n<td style=\"width: 47px;\">26</td>\r\n<td style=\"width: 47px;\">26</td>\r\n<td style=\"width: 47px;\">27</td>\r\n<td style=\"width: 47px;\">27</td>\r\n<td style=\"width: 47px;\">32</td>\r\n<td style=\"width: 47px;\">32</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 397px;\" colspan=\"2\"><strong>TOTAL</strong></td>\r\n<td style=\"width: 47px;\"><strong>48</strong></td>\r\n<td style=\"width: 47px;\"><strong>48</strong></td>\r\n<td style=\"width: 47px;\"><strong>48</strong></td>\r\n<td style=\"width: 47px;\"><strong>48</strong></td>\r\n<td style=\"width: 47px;\"><strong>48</strong></td>\r\n<td style=\"width: 47px;\"><strong>48</strong></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<p>&nbsp;</p>\r\n<p>BIDANG KEAHLIAN : TEKNOLOGI INFORMASI DAN KOMUNIKASI</p>\r\n<p>PROGRAM KEAHLIAN : TEKNIK KOMPUTER DAN INFORMATIKA</p>\r\n<p>PAKET KEAHLIAN : MULTIMEDIA</p>\r\n<div class=\"kekanan\">\r\n<table class=\"table table-bordered\" style=\"width: 100%; height: 1056px;\" border=\"1\" width=\"100%\"><caption>&nbsp;</caption>\r\n<tbody>\r\n<tr style=\"height: 33px;\">\r\n<td class=\"text-center\" style=\"width: 397px; height: 99px;\" colspan=\"2\" rowspan=\"3\">MATA PELAJARAN</td>\r\n<td style=\"width: 292px; height: 33px;\" colspan=\"6\">KELAS</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 96px; height: 33px;\" colspan=\"2\">X</td>\r\n<td style=\"width: 96px; height: 33px;\" colspan=\"2\">XI</td>\r\n<td style=\"width: 96px; height: 33px;\" colspan=\"2\">XII</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 47px; height: 33px;\">1</td>\r\n<td style=\"width: 47px; height: 33px;\">2</td>\r\n<td style=\"width: 47px; height: 33px;\">1</td>\r\n<td style=\"width: 47px; height: 33px;\">2</td>\r\n<td style=\"width: 47px; height: 33px;\">1</td>\r\n<td style=\"width: 47px; height: 33px;\">2</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 691px; height: 33px;\" colspan=\"8\"><strong>Kelompok A</strong></td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 47px; height: 33px;\">1</td>\r\n<td style=\"width: 348px; height: 33px;\">Pendidikan Agama dan Budi Pekerti</td>\r\n<td style=\"width: 47px; height: 33px;\">3</td>\r\n<td style=\"width: 47px; height: 33px;\">3</td>\r\n<td style=\"width: 47px; height: 33px;\">3</td>\r\n<td style=\"width: 47px; height: 33px;\">3</td>\r\n<td style=\"width: 47px; height: 33px;\">3</td>\r\n<td style=\"width: 47px; height: 33px;\">3</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 47px; height: 33px;\">2</td>\r\n<td style=\"width: 348px; height: 33px;\">Pendidikan Pancasila dan Kewarganegaraan</td>\r\n<td style=\"width: 47px; height: 33px;\">2</td>\r\n<td style=\"width: 47px; height: 33px;\">2</td>\r\n<td style=\"width: 47px; height: 33px;\">2</td>\r\n<td style=\"width: 47px; height: 33px;\">2</td>\r\n<td style=\"width: 47px; height: 33px;\">2</td>\r\n<td style=\"width: 47px; height: 33px;\">2</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 47px; height: 33px;\">3</td>\r\n<td style=\"width: 348px; height: 33px;\">Bahasa Indonesia</td>\r\n<td style=\"width: 47px; height: 33px;\">3</td>\r\n<td style=\"width: 47px; height: 33px;\">3</td>\r\n<td style=\"width: 47px; height: 33px;\">3</td>\r\n<td style=\"width: 47px; height: 33px;\">3</td>\r\n<td style=\"width: 47px; height: 33px;\">2</td>\r\n<td style=\"width: 47px; height: 33px;\">2</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 47px; height: 33px;\">4</td>\r\n<td style=\"width: 348px; height: 33px;\">Matematika</td>\r\n<td style=\"width: 47px; height: 33px;\">4</td>\r\n<td style=\"width: 47px; height: 33px;\">4</td>\r\n<td style=\"width: 47px; height: 33px;\">4</td>\r\n<td style=\"width: 47px; height: 33px;\">4</td>\r\n<td style=\"width: 47px; height: 33px;\">4</td>\r\n<td style=\"width: 47px; height: 33px;\">4</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 47px; height: 33px;\">5</td>\r\n<td style=\"width: 348px; height: 33px;\">Sejarah Indonesia</td>\r\n<td style=\"width: 47px; height: 33px;\">2</td>\r\n<td style=\"width: 47px; height: 33px;\">2</td>\r\n<td style=\"width: 47px; height: 33px;\">2</td>\r\n<td style=\"width: 47px; height: 33px;\">2</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 47px; height: 33px;\">6</td>\r\n<td style=\"width: 348px; height: 33px;\">Bahasa Inggris</td>\r\n<td style=\"width: 47px; height: 33px;\">3</td>\r\n<td style=\"width: 47px; height: 33px;\">3</td>\r\n<td style=\"width: 47px; height: 33px;\">3</td>\r\n<td style=\"width: 47px; height: 33px;\">3</td>\r\n<td style=\"width: 47px; height: 33px;\">3</td>\r\n<td style=\"width: 47px; height: 33px;\">3</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 691px; height: 33px;\" colspan=\"8\"><strong>Kelompok B</strong></td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 47px; height: 33px;\">7</td>\r\n<td style=\"width: 348px; height: 33px;\">Seni Budaya</td>\r\n<td style=\"width: 47px; height: 33px;\">3</td>\r\n<td style=\"width: 47px; height: 33px;\">3</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 47px; height: 33px;\">8</td>\r\n<td style=\"width: 348px; height: 33px;\">Prakarya dan Kewirausahaan</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n<td style=\"width: 47px; height: 33px;\">2</td>\r\n<td style=\"width: 47px; height: 33px;\">2</td>\r\n<td style=\"width: 47px; height: 33px;\">2</td>\r\n<td style=\"width: 47px; height: 33px;\">2</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 47px; height: 33px;\">9</td>\r\n<td style=\"width: 348px; height: 33px;\">Pendidikan Jasmani, Olah Raga &amp; Kesehatan</td>\r\n<td style=\"width: 47px; height: 33px;\">2</td>\r\n<td style=\"width: 47px; height: 33px;\">2</td>\r\n<td style=\"width: 47px; height: 33px;\">2</td>\r\n<td style=\"width: 47px; height: 33px;\">2</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 397px; height: 33px;\" colspan=\"2\">Jumlah A Dan B</td>\r\n<td style=\"width: 47px; height: 33px;\">22</td>\r\n<td style=\"width: 47px; height: 33px;\">22</td>\r\n<td style=\"width: 47px; height: 33px;\">21</td>\r\n<td style=\"width: 47px; height: 33px;\">21</td>\r\n<td style=\"width: 47px; height: 33px;\">16</td>\r\n<td style=\"width: 47px; height: 33px;\">16</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 691px; height: 33px;\" colspan=\"8\"><strong>Kelompok C (Peminatan)</strong></td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 691px; height: 33px;\" colspan=\"8\"><strong>C1. Dasar Bidang Keahlian</strong></td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 47px; height: 33px;\">10</td>\r\n<td style=\"width: 348px; height: 33px;\">Simulasi Digital</td>\r\n<td style=\"width: 47px; height: 33px;\">3</td>\r\n<td style=\"width: 47px; height: 33px;\">3</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 47px; height: 33px;\">11</td>\r\n<td style=\"width: 348px; height: 33px;\">Fisika</td>\r\n<td style=\"width: 47px; height: 33px;\">4</td>\r\n<td style=\"width: 47px; height: 33px;\">4</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 47px; height: 33px;\">12</td>\r\n<td style=\"width: 348px; height: 33px;\">Sistem Komputer</td>\r\n<td style=\"width: 47px; height: 33px;\">4</td>\r\n<td style=\"width: 47px; height: 33px;\">4</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 691px; height: 33px;\" colspan=\"8\"><strong>C2. Dasar Program Keahlian</strong></td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 47px; height: 33px;\">13</td>\r\n<td style=\"width: 348px; height: 33px;\">Perakitan Komputer dan Sistem Operasi</td>\r\n<td style=\"width: 47px; height: 33px;\">4</td>\r\n<td style=\"width: 47px; height: 33px;\">4</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 47px; height: 33px;\">14</td>\r\n<td style=\"width: 348px; height: 33px;\">Pemrograman Dasar</td>\r\n<td style=\"width: 47px; height: 33px;\">4</td>\r\n<td style=\"width: 47px; height: 33px;\">4</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 47px; height: 33px;\">15</td>\r\n<td style=\"width: 348px; height: 33px;\">Dasar Desain Grafis</td>\r\n<td style=\"width: 47px; height: 33px;\">7</td>\r\n<td style=\"width: 47px; height: 33px;\">7</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 691px; height: 33px;\" colspan=\"8\"><strong>C3. Paket Keahlian</strong></td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 47px; height: 33px;\">16</td>\r\n<td style=\"width: 348px; height: 33px;\">Pengantar Multimedia</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n<td style=\"width: 47px; height: 33px;\">6</td>\r\n<td style=\"width: 47px; height: 33px;\">6</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 47px; height: 33px;\">17</td>\r\n<td style=\"width: 348px; height: 33px;\">Teknik Pengolahan Audio Video</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n<td style=\"width: 47px; height: 33px;\">6</td>\r\n<td style=\"width: 47px; height: 33px;\">6</td>\r\n<td style=\"width: 47px; height: 33px;\">12</td>\r\n<td style=\"width: 47px; height: 33px;\">12</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 47px; height: 33px;\">18</td>\r\n<td style=\"width: 348px; height: 33px;\">Teknik Animasi 2D &amp; 3D</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n<td style=\"width: 47px; height: 33px;\">6</td>\r\n<td style=\"width: 47px; height: 33px;\">6</td>\r\n<td style=\"width: 47px; height: 33px;\">8</td>\r\n<td style=\"width: 47px; height: 33px;\">8</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 47px; height: 33px;\">19</td>\r\n<td style=\"width: 348px; height: 33px;\">Desain Media Interaktif</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n<td style=\"width: 47px; height: 33px;\">6</td>\r\n<td style=\"width: 47px; height: 33px;\">6</td>\r\n<td style=\"width: 47px; height: 33px;\">9</td>\r\n<td style=\"width: 47px; height: 33px;\">9</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 47px; height: 33px;\">20</td>\r\n<td style=\"width: 348px; height: 33px;\">Pengembangan Produk Kreatif</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n<td style=\"width: 47px; height: 33px;\">3</td>\r\n<td style=\"width: 47px; height: 33px;\">3</td>\r\n<td style=\"width: 47px; height: 33px;\">3</td>\r\n<td style=\"width: 47px; height: 33px;\">3</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 397px; height: 33px;\" colspan=\"2\">Jumlah C1, C2,Dan C3</td>\r\n<td style=\"width: 47px; height: 33px;\">26</td>\r\n<td style=\"width: 47px; height: 33px;\">26</td>\r\n<td style=\"width: 47px; height: 33px;\">27</td>\r\n<td style=\"width: 47px; height: 33px;\">27</td>\r\n<td style=\"width: 47px; height: 33px;\">32</td>\r\n<td style=\"width: 47px; height: 33px;\">32</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 397px; height: 33px;\" colspan=\"2\"><strong>TOTAL</strong></td>\r\n<td style=\"width: 47px; height: 33px;\">48</td>\r\n<td style=\"width: 47px; height: 33px;\">48</td>\r\n<td style=\"width: 47px; height: 33px;\">48</td>\r\n<td style=\"width: 47px; height: 33px;\">48</td>\r\n<td style=\"width: 47px; height: 33px;\">48</td>\r\n<td style=\"width: 47px; height: 33px;\">48</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<p>&nbsp;</p>\r\n<p>BIDANG KEAHIAN : TEKNOLOGI INFORMASI DAN KOMUNIKASI</p>\r\n<p>PROGRAM KEAHLIAN : TEKNIK KOMPUTER DAN INFORMATIKA</p>\r\n<p>PAKET KEAHLIAN : REKAYASA PERANGKAT LUNAK</p>\r\n<div class=\"kekanan\">\r\n<table class=\"table table-bordered\" style=\"height: 1056px; width: 100%;\" border=\"1\" width=\"100%\"><caption>&nbsp;</caption>\r\n<tbody>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 378px; height: 99px;\" colspan=\"2\" rowspan=\"3\">\r\n<p class=\"text-center\" style=\"text-align: center;\">MATA PELAJARAN</p>\r\n</td>\r\n<td style=\"width: 311px; height: 33px;\" colspan=\"6\">\r\n<p style=\"text-align: center;\">KELAS</p>\r\n</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 102px; height: 33px; text-align: center;\" colspan=\"2\">X</td>\r\n<td style=\"width: 102px; height: 33px; text-align: center;\" colspan=\"2\">XI</td>\r\n<td style=\"width: 103px; height: 33px; text-align: center;\" colspan=\"2\">XII</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">1</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">2</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">1</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">2</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">1</td>\r\n<td style=\"width: 51px; height: 33px;\">\r\n<p style=\"text-align: center;\">2</p>\r\n</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 691px; height: 33px;\" colspan=\"8\">\r\n<p style=\"text-align: center;\"><strong>Kelompok A</strong></p>\r\n</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 50px; height: 33px;\">1</td>\r\n<td style=\"width: 326px; height: 33px;\">Pendidikan Agama dan Budi Pekerti</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">3</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">3</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">3</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">3</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">3</td>\r\n<td style=\"width: 51px; height: 33px; text-align: center;\">3</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 50px; height: 33px;\">2</td>\r\n<td style=\"width: 326px; height: 33px;\">Pendidikan Pancasila dan Kewarganegaraan</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">2</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">2</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">2</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">2</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">2</td>\r\n<td style=\"width: 51px; height: 33px; text-align: center;\">2</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 50px; height: 33px;\">3</td>\r\n<td style=\"width: 326px; height: 33px;\">Bahasa Indonesia</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">3</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">3</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">3</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">3</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">2</td>\r\n<td style=\"width: 51px; height: 33px; text-align: center;\">2</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 50px; height: 33px;\">4</td>\r\n<td style=\"width: 326px; height: 33px;\">Matematika</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">4</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">4</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">4</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">4</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">4</td>\r\n<td style=\"width: 51px; height: 33px; text-align: center;\">4</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 50px; height: 33px;\">5</td>\r\n<td style=\"width: 326px; height: 33px;\">Sejarah Indonesia</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">2</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">2</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">2</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">2</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">&ndash;</td>\r\n<td style=\"width: 51px; height: 33px; text-align: center;\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 50px; height: 33px;\">6</td>\r\n<td style=\"width: 326px; height: 33px;\">Bahasa Inggris</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">3</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">3</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">3</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">3</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">3</td>\r\n<td style=\"width: 51px; height: 33px; text-align: center;\">3</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 691px; height: 33px;\" colspan=\"8\"><strong>Kelompok B</strong></td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 50px; height: 33px;\">7</td>\r\n<td style=\"width: 326px; height: 33px;\">Seni Budaya</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">3</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">3</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">&ndash;</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">&ndash;</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">&ndash;</td>\r\n<td style=\"width: 51px; height: 33px; text-align: center;\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 50px; height: 33px;\">8</td>\r\n<td style=\"width: 326px; height: 33px;\">Kewirausahaan</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">&ndash;</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">&ndash;</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">2</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">2</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">2</td>\r\n<td style=\"width: 51px; height: 33px; text-align: center;\">2</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 50px; height: 33px;\">9</td>\r\n<td style=\"width: 326px; height: 33px;\">Pendidikan Jasmani, Olah Raga &amp; Kesehatan</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">2</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">2</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">2</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">2</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">&ndash;</td>\r\n<td style=\"width: 51px; height: 33px; text-align: center;\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 378px; height: 33px;\" colspan=\"2\">Jumlah A Dan B</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">22</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">22</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">21</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">21</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">16</td>\r\n<td style=\"width: 51px; height: 33px; text-align: center;\">16</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 691px; height: 33px;\" colspan=\"8\"><strong>Kelompok C (Peminatan)</strong></td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 691px; height: 33px;\" colspan=\"8\"><strong>C1. Dasar Bidang Keahlian</strong></td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 50px; height: 33px;\">10</td>\r\n<td style=\"width: 326px; height: 33px;\">Simulasi Digital</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">3</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">3</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">&ndash;</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">&ndash;</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">&ndash;</td>\r\n<td style=\"width: 51px; height: 33px; text-align: center;\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 50px; height: 33px;\">11</td>\r\n<td style=\"width: 326px; height: 33px;\">Fisika</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">4</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">4</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">&ndash;</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">&ndash;</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">&ndash;</td>\r\n<td style=\"width: 51px; height: 33px; text-align: center;\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 50px; height: 33px;\">12</td>\r\n<td style=\"width: 326px; height: 33px;\">Sistem Komputer</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">4</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">4</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">&ndash;</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">&ndash;</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">&ndash;</td>\r\n<td style=\"width: 51px; height: 33px; text-align: center;\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 691px; height: 33px;\" colspan=\"8\"><strong>C2. Dasar Program Keahlian</strong></td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 50px; height: 33px;\">13</td>\r\n<td style=\"width: 326px; height: 33px;\">Komputer dan Jaringan Dasar</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">4</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">4</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">&ndash;</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">&ndash;</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">&ndash;</td>\r\n<td style=\"width: 51px; height: 33px; text-align: center;\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 50px; height: 33px;\">14</td>\r\n<td style=\"width: 326px; height: 33px;\">Pemrograman Dasar</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">7</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">7</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">&ndash;</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">&ndash;</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">&ndash;</td>\r\n<td style=\"width: 51px; height: 33px; text-align: center;\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 50px; height: 33px;\">15</td>\r\n<td style=\"width: 326px; height: 33px;\">Dasar Desain Grafis</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">4</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">4</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">&ndash;</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">&ndash;</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">&ndash;</td>\r\n<td style=\"width: 51px; height: 33px; text-align: center;\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 691px; height: 33px;\" colspan=\"8\"><strong>C3. Paket Keahlian</strong></td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 50px; height: 33px;\">16</td>\r\n<td style=\"width: 326px; height: 33px;\">Pemodelan Perangkat Lunak</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">&ndash;</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">&ndash;</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">3</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">3</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">2</td>\r\n<td style=\"width: 51px; height: 33px; text-align: center;\">2</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 50px; height: 33px;\">17</td>\r\n<td style=\"width: 326px; height: 33px;\">Basis Data</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">&ndash;</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">&ndash;</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">6</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">6</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">6</td>\r\n<td style=\"width: 51px; height: 33px; text-align: center;\">6</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 50px; height: 33px;\">18</td>\r\n<td style=\"width: 326px; height: 33px;\">Pemrograman Berorientasi Obyek</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">&ndash;</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">&ndash;</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">6</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">6</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">8</td>\r\n<td style=\"width: 51px; height: 33px; text-align: center;\">8</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 50px; height: 33px;\">19</td>\r\n<td style=\"width: 326px; height: 33px;\">Pemrograman Web dan Mobile</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">&ndash;</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">&ndash;</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">8</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">8</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">8</td>\r\n<td style=\"width: 51px; height: 33px; text-align: center;\">8</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 50px; height: 33px;\">20</td>\r\n<td style=\"width: 326px; height: 33px;\">Pengembangan Produk Kreatif</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">&ndash;</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">&ndash;</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">4</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">4</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">8</td>\r\n<td style=\"width: 51px; height: 33px; text-align: center;\">8</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 378px; height: 33px;\" colspan=\"2\">Jumlah C1, C2 Dan C3</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">26</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">26</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">27</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">27</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">32</td>\r\n<td style=\"width: 51px; height: 33px; text-align: center;\">32</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 378px; height: 33px;\" colspan=\"2\"><strong>TOTAL</strong></td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">48</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">48</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">48</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">48</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">48</td>\r\n<td style=\"width: 51px; height: 33px; text-align: center;\">48</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<p>&nbsp;</p>\r\n<p>BIDANG KEAHLIAN : SENI RUPA</p>\r\n<p>PROGRAM KEAHLIAN : SENI AUDIO VISUAL</p>\r\n<p>PAKET KEAHLIAN : PRODUKSI FILM DAN PROGRAM TELEVISI</p>\r\n<div class=\"kekanan\">\r\n<table class=\"table table-bordered\" style=\"height: 1158px; width: 100%;\" border=\"1\" width=\"100%\"><caption>&nbsp;</caption>\r\n<thead>\r\n<tr style=\"height: 32px;\">\r\n<td class=\"text-center\" style=\"height: 100px;\" colspan=\"2\" rowspan=\"3\" width=\"57%\">MATA PELAJARAN</td>\r\n<td style=\"height: 32px;\" colspan=\"8\" width=\"42%\">KELAS</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" colspan=\"2\" width=\"10%\">X</td>\r\n<td style=\"height: 33px;\" colspan=\"2\" width=\"10%\">XI</td>\r\n<td style=\"height: 33px;\" colspan=\"2\" width=\"10%\">XII</td>\r\n<td style=\"height: 33px;\" colspan=\"2\" width=\"10%\">XIII</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr style=\"height: 35px;\">\r\n<td style=\"height: 35px;\" width=\"5%\">1</td>\r\n<td style=\"height: 35px;\" width=\"5%\">2</td>\r\n<td style=\"height: 35px;\" width=\"5%\">3</td>\r\n<td style=\"height: 35px;\" width=\"5%\">4</td>\r\n<td style=\"height: 35px;\" width=\"5%\">5</td>\r\n<td style=\"height: 35px;\" width=\"5%\">6</td>\r\n<td style=\"height: 35px;\" width=\"5%\">7</td>\r\n<td style=\"height: 35px;\" width=\"5%\">8</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" colspan=\"10\" width=\"100%\"><strong>Kelompok A</strong></td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" width=\"5%\">1</td>\r\n<td style=\"height: 33px;\" width=\"51%\">Pendidikan Agama &amp; Budi pekerti</td>\r\n<td style=\"height: 33px;\" width=\"5%\">3</td>\r\n<td style=\"height: 33px;\" width=\"5%\">3</td>\r\n<td style=\"height: 33px;\" width=\"5%\">3</td>\r\n<td style=\"height: 33px;\" width=\"5%\">3</td>\r\n<td style=\"height: 33px;\" width=\"5%\">3</td>\r\n<td style=\"height: 33px;\" width=\"5%\">3</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 50px;\">\r\n<td style=\"height: 50px;\" width=\"5%\">2</td>\r\n<td style=\"height: 50px;\" width=\"51%\">Pendidikan Pancasila dan Kewarganegaraan</td>\r\n<td style=\"height: 50px;\" width=\"5%\">2</td>\r\n<td style=\"height: 50px;\" width=\"5%\">2</td>\r\n<td style=\"height: 50px;\" width=\"5%\">2</td>\r\n<td style=\"height: 50px;\" width=\"5%\">2</td>\r\n<td style=\"height: 50px;\" width=\"5%\">2</td>\r\n<td style=\"height: 50px;\" width=\"5%\">2</td>\r\n<td style=\"height: 50px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 50px;\" width=\"5%\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" width=\"5%\">3</td>\r\n<td style=\"height: 33px;\" width=\"51%\">Bahasa Indonesia</td>\r\n<td style=\"height: 33px;\" width=\"5%\">3</td>\r\n<td style=\"height: 33px;\" width=\"5%\">3</td>\r\n<td style=\"height: 33px;\" width=\"5%\">3</td>\r\n<td style=\"height: 33px;\" width=\"5%\">3</td>\r\n<td style=\"height: 33px;\" width=\"5%\">2</td>\r\n<td style=\"height: 33px;\" width=\"5%\">2</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" width=\"5%\">4</td>\r\n<td style=\"height: 33px;\" width=\"51%\">Matematika</td>\r\n<td style=\"height: 33px;\" width=\"5%\">4</td>\r\n<td style=\"height: 33px;\" width=\"5%\">4</td>\r\n<td style=\"height: 33px;\" width=\"5%\">4</td>\r\n<td style=\"height: 33px;\" width=\"5%\">4</td>\r\n<td style=\"height: 33px;\" width=\"5%\">4</td>\r\n<td style=\"height: 33px;\" width=\"5%\">4</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" width=\"5%\">5</td>\r\n<td style=\"height: 33px;\" width=\"51%\">Sejarah Indonesia</td>\r\n<td style=\"height: 33px;\" width=\"5%\">2</td>\r\n<td style=\"height: 33px;\" width=\"5%\">2</td>\r\n<td style=\"height: 33px;\" width=\"5%\">2</td>\r\n<td style=\"height: 33px;\" width=\"5%\">2</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" width=\"5%\">6</td>\r\n<td style=\"height: 33px;\" width=\"51%\">Bahasa Inggris</td>\r\n<td style=\"height: 33px;\" width=\"5%\">3</td>\r\n<td style=\"height: 33px;\" width=\"5%\">3</td>\r\n<td style=\"height: 33px;\" width=\"5%\">3</td>\r\n<td style=\"height: 33px;\" width=\"5%\">3</td>\r\n<td style=\"height: 33px;\" width=\"5%\">3</td>\r\n<td style=\"height: 33px;\" width=\"5%\">3</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" colspan=\"10\" width=\"100%\"><strong>Kelompok B</strong></td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" width=\"5%\">7</td>\r\n<td style=\"height: 33px;\" width=\"51%\">Seni Budaya</td>\r\n<td style=\"height: 33px;\" width=\"5%\">3</td>\r\n<td style=\"height: 33px;\" width=\"5%\">3</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" width=\"5%\">8</td>\r\n<td style=\"height: 33px;\" width=\"51%\">Kewirausahaan</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">2</td>\r\n<td style=\"height: 33px;\" width=\"5%\">2</td>\r\n<td style=\"height: 33px;\" width=\"5%\">2</td>\r\n<td style=\"height: 33px;\" width=\"5%\">2</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 50px;\">\r\n<td style=\"height: 50px;\" width=\"5%\">9</td>\r\n<td style=\"height: 50px;\" width=\"51%\">Pendidikan Jasmani, Olah Raga &amp; Kesehatan</td>\r\n<td style=\"height: 50px;\" width=\"5%\">2</td>\r\n<td style=\"height: 50px;\" width=\"5%\">2</td>\r\n<td style=\"height: 50px;\" width=\"5%\">2</td>\r\n<td style=\"height: 50px;\" width=\"5%\">2</td>\r\n<td style=\"height: 50px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 50px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 50px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 50px;\" width=\"5%\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" colspan=\"2\" width=\"57%\">Jumlah A dan B</td>\r\n<td style=\"height: 33px;\" width=\"5%\">22</td>\r\n<td style=\"height: 33px;\" width=\"5%\">22</td>\r\n<td style=\"height: 33px;\" width=\"5%\">21</td>\r\n<td style=\"height: 33px;\" width=\"5%\">21</td>\r\n<td style=\"height: 33px;\" width=\"5%\">16</td>\r\n<td style=\"height: 33px;\" width=\"5%\">16</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" colspan=\"10\" width=\"100%\"><strong>Kelompok C (Peminatan)</strong></td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" colspan=\"10\" width=\"100%\"><strong>C1</strong><strong>. </strong><strong>Dasar Bidang Keahlian</strong></td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" width=\"5%\">10</td>\r\n<td style=\"height: 33px;\" width=\"51%\">Simulasi Digital</td>\r\n<td style=\"height: 33px;\" width=\"5%\">3</td>\r\n<td style=\"height: 33px;\" width=\"5%\">3</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" width=\"5%\">11</td>\r\n<td style=\"height: 33px;\" width=\"51%\">Pengantar Seni</td>\r\n<td style=\"height: 33px;\" width=\"5%\">2</td>\r\n<td style=\"height: 33px;\" width=\"5%\">2</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" width=\"5%\">12</td>\r\n<td style=\"height: 33px;\" width=\"51%\">Dasar-dasar Kreativitas</td>\r\n<td style=\"height: 33px;\" width=\"5%\">2</td>\r\n<td style=\"height: 33px;\" width=\"5%\">2</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" colspan=\"10\" width=\"100%\"><strong>C2</strong><strong>. </strong><strong>Dasar Program Keahlian</strong></td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" width=\"5%\">13</td>\r\n<td style=\"height: 33px;\" width=\"51%\">Komunikasi Massa</td>\r\n<td style=\"height: 33px;\" width=\"5%\">3</td>\r\n<td style=\"height: 33px;\" width=\"5%\">3</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" width=\"5%\">14</td>\r\n<td style=\"height: 33px;\" width=\"51%\">Dasar Seni Audio Visual</td>\r\n<td style=\"height: 33px;\" width=\"5%\">4</td>\r\n<td style=\"height: 33px;\" width=\"5%\">4</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" width=\"5%\">15</td>\r\n<td style=\"height: 33px;\" width=\"51%\">Produksi Audio Visual</td>\r\n<td style=\"height: 33px;\" width=\"5%\">12</td>\r\n<td style=\"height: 33px;\" width=\"5%\">12</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" colspan=\"10\" width=\"100%\"><strong>C3</strong><strong>. </strong><strong>Paket Keahlian</strong></td>\r\n</tr>\r\n<tr style=\"height: 50px;\">\r\n<td style=\"height: 50px;\" width=\"5%\">16</td>\r\n<td style=\"height: 50px;\" width=\"51%\">Penulisan Naskah dan Manajemen Produksi</td>\r\n<td style=\"height: 50px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 50px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 50px;\" width=\"5%\">4</td>\r\n<td style=\"height: 50px;\" width=\"5%\">4</td>\r\n<td style=\"height: 50px;\" width=\"5%\">4</td>\r\n<td style=\"height: 50px;\" width=\"5%\">4</td>\r\n<td style=\"height: 50px;\" width=\"5%\">4</td>\r\n<td style=\"height: 50px;\" width=\"5%\">4</td>\r\n</tr>\r\n<tr style=\"height: 50px;\">\r\n<td style=\"height: 50px;\" width=\"5%\">17</td>\r\n<td style=\"height: 50px;\" width=\"51%\">Tata Kamera, Suara dan Pencahayaan</td>\r\n<td style=\"height: 50px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 50px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 50px;\" width=\"5%\">6</td>\r\n<td style=\"height: 50px;\" width=\"5%\">6</td>\r\n<td style=\"height: 50px;\" width=\"5%\">7</td>\r\n<td style=\"height: 50px;\" width=\"5%\">7</td>\r\n<td style=\"height: 50px;\" width=\"5%\">10</td>\r\n<td style=\"height: 50px;\" width=\"5%\">10</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" width=\"5%\">18</td>\r\n<td style=\"height: 33px;\" width=\"51%\">Tata Artistik</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">4</td>\r\n<td style=\"height: 33px;\" width=\"5%\">4</td>\r\n<td style=\"height: 33px;\" width=\"5%\">4</td>\r\n<td style=\"height: 33px;\" width=\"5%\">4</td>\r\n<td style=\"height: 33px;\" width=\"5%\">4</td>\r\n<td style=\"height: 33px;\" width=\"5%\">4</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" width=\"5%\">19</td>\r\n<td style=\"height: 33px;\" width=\"51%\">Penyutradaraan</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">4</td>\r\n<td style=\"height: 33px;\" width=\"5%\">4</td>\r\n<td style=\"height: 33px;\" width=\"5%\">6</td>\r\n<td style=\"height: 33px;\" width=\"5%\">6</td>\r\n<td style=\"height: 33px;\" width=\"5%\">8</td>\r\n<td style=\"height: 33px;\" width=\"5%\">8</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" width=\"5%\">20</td>\r\n<td style=\"height: 33px;\" width=\"51%\">Editing</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">6</td>\r\n<td style=\"height: 33px;\" width=\"5%\">6</td>\r\n<td style=\"height: 33px;\" width=\"5%\">8</td>\r\n<td style=\"height: 33px;\" width=\"5%\">8</td>\r\n<td style=\"height: 33px;\" width=\"5%\">10</td>\r\n<td style=\"height: 33px;\" width=\"5%\">10</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" width=\"5%\">21</td>\r\n<td style=\"height: 33px;\" width=\"51%\">Pengembangan Produk Kreatif</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">3</td>\r\n<td style=\"height: 33px;\" width=\"5%\">3</td>\r\n<td style=\"height: 33px;\" width=\"5%\">3</td>\r\n<td style=\"height: 33px;\" width=\"5%\">3</td>\r\n<td style=\"height: 33px;\" width=\"5%\">12</td>\r\n<td style=\"height: 33px;\" width=\"5%\">12</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" colspan=\"2\" width=\"57%\">Jumlah C1, C2, C3</td>\r\n<td style=\"height: 33px;\" width=\"5%\">26</td>\r\n<td style=\"height: 33px;\" width=\"5%\">26</td>\r\n<td style=\"height: 33px;\" width=\"5%\">27</td>\r\n<td style=\"height: 33px;\" width=\"5%\">27</td>\r\n<td style=\"height: 33px;\" width=\"5%\">32</td>\r\n<td style=\"height: 33px;\" width=\"5%\">32</td>\r\n<td style=\"height: 33px;\" width=\"5%\">48</td>\r\n<td style=\"height: 33px;\" width=\"5%\">48</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" colspan=\"2\" width=\"57%\"><strong>TOTAL</strong></td>\r\n<td style=\"height: 33px;\" width=\"5%\"><strong>48</strong></td>\r\n<td style=\"height: 33px;\" width=\"5%\"><strong>48</strong></td>\r\n<td style=\"height: 33px;\" width=\"5%\"><strong>48</strong></td>\r\n<td style=\"height: 33px;\" width=\"5%\"><strong>48</strong></td>\r\n<td style=\"height: 33px;\" width=\"5%\"><strong>48</strong></td>\r\n<td style=\"height: 33px;\" width=\"5%\"><strong>48</strong></td>\r\n<td style=\"height: 33px;\" width=\"5%\"><strong>48</strong></td>\r\n<td style=\"height: 33px;\" width=\"5%\"><strong>48</strong></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<p>&nbsp;</p>\r\n<p>BIDANG KEAHLIAN : TEKNOLOGI DAN REKAYASA</p>\r\n<p>PROGRAM KEAHLIAN : TEKNIK ELEKTRONIKA</p>\r\n<p>PAKET KEAHLIAN : TEKNIK ELEKTRONIKA INDUSTRI</p>\r\n<div class=\"kekanan\">\r\n<table class=\"table table-bordered\" style=\"width: 100%; height: 1091px;\" border=\"1\" width=\"100%\"><caption>&nbsp;</caption>\r\n<thead>\r\n<tr style=\"height: 32px;\">\r\n<td class=\"text-center\" style=\"height: 98px;\" colspan=\"2\" rowspan=\"3\" width=\"70%\">MATA PELAJARAN</td>\r\n<td style=\"height: 32px;\" colspan=\"6\" width=\"29%\">KELAS</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" colspan=\"2\" width=\"9%\">X</td>\r\n<td style=\"height: 33px;\" colspan=\"2\" width=\"9%\">XI</td>\r\n<td style=\"height: 33px;\" colspan=\"2\" width=\"9%\">XII</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" width=\"4%\">1</td>\r\n<td style=\"height: 33px;\" width=\"4%\">2</td>\r\n<td style=\"height: 33px;\" width=\"4%\">1</td>\r\n<td style=\"height: 33px;\" width=\"4%\">2</td>\r\n<td style=\"height: 33px;\" width=\"4%\">1</td>\r\n<td style=\"height: 33px;\" width=\"4%\">2</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr style=\"height: 35px;\">\r\n<td style=\"height: 35px;\" colspan=\"8\" width=\"100%\"><strong>Kelompok A</strong></td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" width=\"4%\">1</td>\r\n<td style=\"height: 33px;\" width=\"65%\">Pendidikan Agama dan Budi Pekerti</td>\r\n<td style=\"height: 33px;\" width=\"4%\">3</td>\r\n<td style=\"height: 33px;\" width=\"4%\">3</td>\r\n<td style=\"height: 33px;\" width=\"4%\">3</td>\r\n<td style=\"height: 33px;\" width=\"4%\">3</td>\r\n<td style=\"height: 33px;\" width=\"4%\">3</td>\r\n<td style=\"height: 33px;\" width=\"4%\">3</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" width=\"4%\">2</td>\r\n<td style=\"height: 33px;\" width=\"65%\">Pendidikan Pancasila dan Kewarganegaraan</td>\r\n<td style=\"height: 33px;\" width=\"4%\">2</td>\r\n<td style=\"height: 33px;\" width=\"4%\">2</td>\r\n<td style=\"height: 33px;\" width=\"4%\">2</td>\r\n<td style=\"height: 33px;\" width=\"4%\">2</td>\r\n<td style=\"height: 33px;\" width=\"4%\">2</td>\r\n<td style=\"height: 33px;\" width=\"4%\">2</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" width=\"4%\">3</td>\r\n<td style=\"height: 33px;\" width=\"65%\">Bahasa Indonesia</td>\r\n<td style=\"height: 33px;\" width=\"4%\">3</td>\r\n<td style=\"height: 33px;\" width=\"4%\">3</td>\r\n<td style=\"height: 33px;\" width=\"4%\">3</td>\r\n<td style=\"height: 33px;\" width=\"4%\">3</td>\r\n<td style=\"height: 33px;\" width=\"4%\">2</td>\r\n<td style=\"height: 33px;\" width=\"4%\">2</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" width=\"4%\">4</td>\r\n<td style=\"height: 33px;\" width=\"65%\">Matematika</td>\r\n<td style=\"height: 33px;\" width=\"4%\">4</td>\r\n<td style=\"height: 33px;\" width=\"4%\">4</td>\r\n<td style=\"height: 33px;\" width=\"4%\">4</td>\r\n<td style=\"height: 33px;\" width=\"4%\">4</td>\r\n<td style=\"height: 33px;\" width=\"4%\">4</td>\r\n<td style=\"height: 33px;\" width=\"4%\">4</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" width=\"4%\">5</td>\r\n<td style=\"height: 33px;\" width=\"65%\">Sejarah Indonesia</td>\r\n<td style=\"height: 33px;\" width=\"4%\">2</td>\r\n<td style=\"height: 33px;\" width=\"4%\">2</td>\r\n<td style=\"height: 33px;\" width=\"4%\">2</td>\r\n<td style=\"height: 33px;\" width=\"4%\">2</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" width=\"4%\">6</td>\r\n<td style=\"height: 33px;\" width=\"65%\">Bahasa Inggris</td>\r\n<td style=\"height: 33px;\" width=\"4%\">3</td>\r\n<td style=\"height: 33px;\" width=\"4%\">3</td>\r\n<td style=\"height: 33px;\" width=\"4%\">3</td>\r\n<td style=\"height: 33px;\" width=\"4%\">3</td>\r\n<td style=\"height: 33px;\" width=\"4%\">3</td>\r\n<td style=\"height: 33px;\" width=\"4%\">3</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" colspan=\"8\" width=\"100%\"><strong>Kelompok B </strong></td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" width=\"4%\">7</td>\r\n<td style=\"height: 33px;\" width=\"65%\">Seni Budaya</td>\r\n<td style=\"height: 33px;\" width=\"4%\">3</td>\r\n<td style=\"height: 33px;\" width=\"4%\">3</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" width=\"4%\">8</td>\r\n<td style=\"height: 33px;\" width=\"65%\">Kewirausahaan</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"4%\">2</td>\r\n<td style=\"height: 33px;\" width=\"4%\">2</td>\r\n<td style=\"height: 33px;\" width=\"4%\">2</td>\r\n<td style=\"height: 33px;\" width=\"4%\">2</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" width=\"4%\">9</td>\r\n<td style=\"height: 33px;\" width=\"65%\">Pendidikan Jasmani, Olah Raga dan Kesehatan</td>\r\n<td style=\"height: 33px;\" width=\"4%\">2</td>\r\n<td style=\"height: 33px;\" width=\"4%\">2</td>\r\n<td style=\"height: 33px;\" width=\"4%\">2</td>\r\n<td style=\"height: 33px;\" width=\"4%\">2</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" colspan=\"2\" width=\"70%\">Jumlah A dan B</td>\r\n<td style=\"height: 33px;\" width=\"4%\">22</td>\r\n<td style=\"height: 33px;\" width=\"4%\">22</td>\r\n<td style=\"height: 33px;\" width=\"4%\">21</td>\r\n<td style=\"height: 33px;\" width=\"4%\">21</td>\r\n<td style=\"height: 33px;\" width=\"4%\">16</td>\r\n<td style=\"height: 33px;\" width=\"4%\">16</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" colspan=\"8\" width=\"100%\"><strong>Kelompok C (Peminatan)</strong></td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" colspan=\"8\" width=\"100%\"><strong>C1. Dasar Bidang Keahlian</strong></td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" width=\"4%\">10</td>\r\n<td style=\"height: 33px;\" width=\"65%\">Simulasi Digital</td>\r\n<td style=\"height: 33px;\" width=\"4%\">3</td>\r\n<td style=\"height: 33px;\" width=\"4%\">3</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" width=\"4%\">11</td>\r\n<td style=\"height: 33px;\" width=\"65%\">Fisika</td>\r\n<td style=\"height: 33px;\" width=\"4%\">4</td>\r\n<td style=\"height: 33px;\" width=\"4%\">4</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" width=\"4%\">12</td>\r\n<td style=\"height: 33px;\" width=\"65%\">Kimia</td>\r\n<td style=\"height: 33px;\" width=\"4%\">4</td>\r\n<td style=\"height: 33px;\" width=\"4%\">4</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" colspan=\"8\" width=\"100%\"><strong>C2. Dasar Program Keahlian</strong></td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" width=\"4%\">13</td>\r\n<td style=\"height: 33px;\" width=\"65%\">Kerja Bengkel dan Gambar Teknik</td>\r\n<td style=\"height: 33px;\" width=\"4%\">4</td>\r\n<td style=\"height: 33px;\" width=\"4%\">4</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" width=\"4%\">14</td>\r\n<td style=\"height: 33px;\" width=\"65%\">DasarListrik dan Elektronika</td>\r\n<td style=\"height: 33px;\" width=\"4%\">6</td>\r\n<td style=\"height: 33px;\" width=\"4%\">6</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 50px;\">\r\n<td style=\"height: 50px;\" width=\"4%\">15</td>\r\n<td style=\"height: 50px;\" width=\"65%\">Pemrograman, Mikroprosessor dan Mikrokontroller</td>\r\n<td style=\"height: 50px;\" width=\"4%\">5</td>\r\n<td style=\"height: 50px;\" width=\"4%\">5</td>\r\n<td style=\"height: 50px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 50px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 50px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 50px;\" width=\"4%\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" colspan=\"8\" width=\"100%\"><strong>C3. Paket Keahlian</strong></td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" width=\"4%\">16</td>\r\n<td style=\"height: 33px;\" width=\"65%\">Penerapan Rangkaian Elektronika</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"4%\">10</td>\r\n<td style=\"height: 33px;\" width=\"4%\">10</td>\r\n<td style=\"height: 33px;\" width=\"4%\">6</td>\r\n<td style=\"height: 33px;\" width=\"4%\">6</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" width=\"4%\">17</td>\r\n<td style=\"height: 33px;\" width=\"65%\">Sistem Pengendali Elektronik</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"4%\">10</td>\r\n<td style=\"height: 33px;\" width=\"4%\">10</td>\r\n<td style=\"height: 33px;\" width=\"4%\">14</td>\r\n<td style=\"height: 33px;\" width=\"4%\">14</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" width=\"4%\">18</td>\r\n<td style=\"height: 33px;\" width=\"65%\">Pengendali Sistem Robotik</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"4%\">4</td>\r\n<td style=\"height: 33px;\" width=\"4%\">4</td>\r\n<td style=\"height: 33px;\" width=\"4%\">5</td>\r\n<td style=\"height: 33px;\" width=\"4%\">5</td>\r\n</tr>\r\n<tr style=\"height: 50px;\">\r\n<td style=\"height: 50px;\" width=\"4%\">19</td>\r\n<td style=\"height: 50px;\" width=\"65%\">Pembuatan , Perbaikan dan Pemeliharaan Peralatan Elektronika</td>\r\n<td style=\"height: 50px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 50px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 50px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 50px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 50px;\" width=\"4%\">4</td>\r\n<td style=\"height: 50px;\" width=\"4%\">4</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" width=\"4%\">20</td>\r\n<td style=\"height: 33px;\" width=\"65%\">Pengembangan Produk Kreatif</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"4%\">3</td>\r\n<td style=\"height: 33px;\" width=\"4%\">3</td>\r\n<td style=\"height: 33px;\" width=\"4%\">3</td>\r\n<td style=\"height: 33px;\" width=\"4%\">3</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" colspan=\"2\" width=\"70%\">Jumlah C1,C2 dan C3</td>\r\n<td style=\"height: 33px;\" width=\"4%\">26</td>\r\n<td style=\"height: 33px;\" width=\"4%\">26</td>\r\n<td style=\"height: 33px;\" width=\"4%\">27</td>\r\n<td style=\"height: 33px;\" width=\"4%\">27</td>\r\n<td style=\"height: 33px;\" width=\"4%\">32</td>\r\n<td style=\"height: 33px;\" width=\"4%\">32</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" colspan=\"2\" width=\"70%\"><strong>TOTAL</strong></td>\r\n<td style=\"height: 33px;\" width=\"4%\"><strong>48</strong></td>\r\n<td style=\"height: 33px;\" width=\"4%\"><strong>48</strong></td>\r\n<td style=\"height: 33px;\" width=\"4%\"><strong>48</strong></td>\r\n<td style=\"height: 33px;\" width=\"4%\"><strong>48</strong></td>\r\n<td style=\"height: 33px;\" width=\"4%\"><strong>48</strong></td>\r\n<td style=\"height: 33px;\" width=\"4%\"><strong>48</strong></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</div>', NULL, 'struktur-kurikulum-smk-taruna-bhakti', 'Struktur Kurikulum SMK Taruna Bhakti', 'Struktur Kurikulum SMK Taruna Bhakti', 'ACTIVE', '2021-10-01 07:30:58', '2021-10-01 10:03:12', 5);
INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`, `category_id`) VALUES
(18, 1, 'Kegiatan Osis', 'Kegiatan Osis', '<h5 class=\"mt-5\" style=\"box-sizing: border-box; margin-bottom: 0.5rem; font-weight: 500; line-height: 1.2; font-size: 1.25rem; font-family: Raleway, sans-serif; margin-top: 3rem !important;\"><span style=\"box-sizing: border-box; font-weight: bolder;\">Kegiatan Osis</span></h5>\r\n<hr style=\"box-sizing: border-box; margin: 1rem 0px; background-color: currentcolor; border: 0px; opacity: 0.25; height: 1px; font-family: \'Open Sans\', sans-serif; font-size: 16px;\" />\r\n<p>&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: \'Open Sans\', sans-serif; font-size: 16px;\">Musyawarah Siswa merupakan salah satu agenda yang diwajibkan dari setiap organisasi yang ada, hal ini dikarenakan Muyawarah Siswa (MUSIS) akan membahas persoalan pembahasan Laporan pertanggung jawaban kepengurusan sebelumnya, Anggaran Dasar dan Anggaran Rumah Tangga sebuah organisasi tentunya juga akan menentukan pemimpin baru untuk memimpin organisasi tersebut. Oleh karena itu Musis adalah hal yang sakral dari sebua organisasi. Ini merupakan agenda rutin yang dilakukan OSIS SMK Taruna Bhakti setiap tahunnya.</p>', NULL, 'kegiatan-osis', NULL, NULL, 'ACTIVE', '2021-10-01 07:35:18', '2021-10-04 03:17:08', 3),
(19, 1, 'Sarana dan Prasarana Sekolah', 'Gedung Sekolah Milik sendiri dengan design bangunan berbentuk permanen yang di sesuaikan dengan kebutuhan pendidikan dan berlantai 4.', '<h3 style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-weight: 500; line-height: 1.2; font-size: 1.75rem; font-family: Raleway, sans-serif;\"><span style=\"box-sizing: border-box; font-weight: bolder;\">Sarana dan Prasarana Sekolah</span></h3>\r\n<hr style=\"box-sizing: border-box; margin: 1rem 0px; background-color: currentcolor; border: 0px; opacity: 0.25; height: 1px; font-family: \'Open Sans\', sans-serif; font-size: 16px;\" />\r\n<h3 style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-weight: 500; line-height: 1.2; font-size: 1.75rem; font-family: Raleway, sans-serif;\">&nbsp;</h3>\r\n<p class=\"mt-3\" style=\"box-sizing: border-box; margin-bottom: 1rem; font-family: \'Open Sans\', sans-serif; font-size: 16px; margin-top: 1rem !important;\">Gedung Sekolah Milik sendiri dengan design bangunan berbentuk permanen yang di sesuaikan dengan kebutuhan pendidikan dan berlantai 4.</p>\r\n<div class=\" text-center\" style=\"box-sizing: border-box; font-family: \'Open Sans\', sans-serif; font-size: 16px; text-align: center !important;\"><img class=\"mt-3\" style=\"box-sizing: border-box; vertical-align: middle; margin-top: 1rem !important;\" src=\"http://localhost:8000/photos/gedung_tb.jpg\" alt=\"Foto 1\" width=\"70%\" height=\"49%\" /><br style=\"box-sizing: border-box;\" /><img class=\"mt-3 mb-5\" style=\"box-sizing: border-box; vertical-align: middle; margin-top: 1rem !important; margin-bottom: 3rem !important;\" src=\"http://localhost:8000/photos\" alt=\"Foto 2\" width=\"70%\" height=\"49%\" />\r\n<p class=\"mt-5 fw-bold\" style=\"box-sizing: border-box; margin-top: 3rem !important; margin-bottom: 1rem; font-weight: 700 !important;\">Tempat Parkir Siswa</p>\r\n<img class=\"mt-3 mb-5\" style=\"box-sizing: border-box; vertical-align: middle; margin-top: 1rem !important; margin-bottom: 3rem !important;\" src=\"http://localhost:8000/photos\" alt=\"Tempat Parkir\" width=\"70%\" height=\"49%\" />\r\n<p class=\"mt-5 fw-bold\" style=\"box-sizing: border-box; margin-top: 3rem !important; margin-bottom: 1rem; font-weight: 700 !important;\">Lapangan Olahraga</p>\r\n<img class=\"mt-3 mb-5\" style=\"box-sizing: border-box; vertical-align: middle; margin-top: 1rem !important; margin-bottom: 3rem !important;\" src=\"http://localhost:8000/photos\" alt=\"Lapangan Olahraga\" width=\"70%\" height=\"49%\" />\r\n<p class=\"mt-5 fw-bold\" style=\"box-sizing: border-box; margin-top: 3rem !important; margin-bottom: 1rem; font-weight: 700 !important;\">Ruang Belajar Teori</p>\r\n<img class=\"mt-3 mb-5\" style=\"box-sizing: border-box; vertical-align: middle; margin-top: 1rem !important; margin-bottom: 3rem !important;\" src=\"http://localhost:8000/photos/rb_teori.jpg\" alt=\"Ruang Belajar Teori\" width=\"70%\" height=\"49%\" /></div>\r\n<p class=\"mt-5\" style=\"box-sizing: border-box; margin-bottom: 1rem; font-family: \'Open Sans\', sans-serif; font-size: 16px; margin-top: 3rem !important;\">Laboratorium Komputer dan Ruangan Terdiri dari :</p>\r\n<ol style=\"box-sizing: border-box; padding-left: 2rem; margin-top: 0px; margin-bottom: 1rem; font-family: \'Open Sans\', sans-serif; font-size: 16px;\">\r\n<li style=\"box-sizing: border-box;\">Lab Network Advance</li>\r\n<li style=\"box-sizing: border-box;\">Lab Network</li>\r\n<li style=\"box-sizing: border-box;\">Lab Maintenance and Repair</li>\r\n<li style=\"box-sizing: border-box;\">Lab Simulasi Digital</li>\r\n<li style=\"box-sizing: border-box;\">Lab Axioo Class Program</li>\r\n<li style=\"box-sizing: border-box;\">Lab Multimedia Medium</li>\r\n<li style=\"box-sizing: border-box;\">Lab Multimedia Advance</li>\r\n<li style=\"box-sizing: border-box;\">Lab Pemrograman Basic</li>\r\n<li style=\"box-sizing: border-box;\">Lab Pemrograman Advance</li>\r\n<li style=\"box-sizing: border-box;\">Lab Bahasa Inggris</li>\r\n<li style=\"box-sizing: border-box;\">Lab Video dan Audio Editing</li>\r\n<li style=\"box-sizing: border-box;\">Studio Mini Penyiaran TV</li>\r\n<li style=\"box-sizing: border-box;\">Ruang Server dan Fasilitas lainnya</li>\r\n</ol>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: \'Open Sans\', sans-serif; font-size: 16px;\">Lingkungan sekolah yang asri dan nyaman jauh dari bising, mudah terjangkau oleh siswa/i dari<br style=\"box-sizing: border-box;\" />berbagai jurusan dengan kendaraan umum.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: \'Open Sans\', sans-serif; font-size: 16px;\">Memiliki kantin dengan konsep cafetaria yang bersih, rapi serta nyaman dengan variasi makanan dan<br style=\"box-sizing: border-box;\" />minuman yang sehat, agar terjaga kesehatan dari siswa/i.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: \'Open Sans\', sans-serif; font-size: 16px;\">Seluruh ruangan sekolah terjangkau dari Zona Hotspot yang di support oleh :</p>\r\n<ol style=\"box-sizing: border-box; padding-left: 2rem; margin-top: 0px; margin-bottom: 1rem; font-family: \'Open Sans\', sans-serif; font-size: 16px;\">\r\n<li style=\"box-sizing: border-box;\">Wifi id (Telkom) dengan jaringan Fiber Optik 100 Mbps</li>\r\n<li style=\"box-sizing: border-box;\">Biznet dengan jaringan Fiber Optik 20 Mbps Dedicated 1:1</li>\r\n<li style=\"box-sizing: border-box;\">Varnion Techology Jaringan wireless 2 Mbps</li>\r\n</ol>\r\n<p class=\"fw-bold\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: \'Open Sans\', sans-serif; font-size: 16px; font-weight: 700 !important;\">Galery Foto Sarana Lab Komputer SMK Taruna Bhakti</p>\r\n<h3 style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-weight: 500; line-height: 1.2; font-size: 1.75rem; font-family: Raleway, sans-serif;\">&nbsp;</h3>\r\n<p class=\"fw-bold\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: \'Open Sans\', sans-serif; font-size: 16px; font-weight: 700 !important;\">SAMSUNG</p>\r\n<div class=\"row\" style=\"box-sizing: border-box; --bs-gutter-x: 1.5rem; --bs-gutter-y: 0; display: flex; flex-wrap: wrap; margin-top: calc(var(--bs-gutter-y) * -1); margin-right: calc(var(--bs-gutter-x) * -0.5); margin-left: calc(var(--bs-gutter-x) * -0.5); font-family: \'Open Sans\', sans-serif; font-size: 16px;\">\r\n<div class=\"col-4\" style=\"box-sizing: border-box; flex: 0 0 auto; width: 380px; max-width: 100%; padding-right: calc(var(--bs-gutter-x) * 0.5); padding-left: calc(var(--bs-gutter-x) * 0.5); margin-top: var(--bs-gutter-y);\"><img style=\"box-sizing: border-box; vertical-align: middle;\" src=\"http://localhost:8000/photos/samsung1.jpeg\" alt=\"\" width=\"99%\" /></div>\r\n<div class=\"col-4\" style=\"box-sizing: border-box; flex: 0 0 auto; width: 380px; max-width: 100%; padding-right: calc(var(--bs-gutter-x) * 0.5); padding-left: calc(var(--bs-gutter-x) * 0.5); margin-top: var(--bs-gutter-y);\"><img style=\"box-sizing: border-box; vertical-align: middle;\" src=\"http://localhost:8000/photos/samsung2.jpeg\" alt=\"\" width=\"99%\" /></div>\r\n<div class=\"col-4\" style=\"box-sizing: border-box; flex: 0 0 auto; width: 380px; max-width: 100%; padding-right: calc(var(--bs-gutter-x) * 0.5); padding-left: calc(var(--bs-gutter-x) * 0.5); margin-top: var(--bs-gutter-y);\"><img style=\"box-sizing: border-box; vertical-align: middle;\" src=\"http://localhost:8000/photos/samsung3.jpeg\" alt=\"\" width=\"99%\" /></div>\r\n</div>\r\n<h3 style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-weight: 500; line-height: 1.2; font-size: 1.75rem; font-family: Raleway, sans-serif;\"><img class=\"mt-4 mb-5\" style=\"box-sizing: border-box; vertical-align: middle; font-family: \'Open Sans\', sans-serif; font-size: 16px; margin-top: 1.5rem !important; margin-bottom: 3rem !important;\" src=\"http://localhost:8000/photos/samsung1.jpeg\" alt=\"\" width=\"99.5%\" /></h3>\r\n<p class=\"fw-bold\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: \'Open Sans\', sans-serif; font-size: 16px; font-weight: 700 !important;\">LAB BAHASA</p>\r\n<div class=\"row\" style=\"box-sizing: border-box; --bs-gutter-x: 1.5rem; --bs-gutter-y: 0; display: flex; flex-wrap: wrap; margin-top: calc(var(--bs-gutter-y) * -1); margin-right: calc(var(--bs-gutter-x) * -0.5); margin-left: calc(var(--bs-gutter-x) * -0.5); font-family: \'Open Sans\', sans-serif; font-size: 16px;\">\r\n<div class=\"col-4\" style=\"box-sizing: border-box; flex: 0 0 auto; width: 380px; max-width: 100%; padding-right: calc(var(--bs-gutter-x) * 0.5); padding-left: calc(var(--bs-gutter-x) * 0.5); margin-top: var(--bs-gutter-y);\"><img style=\"box-sizing: border-box; vertical-align: middle;\" src=\"http://localhost:8000/photos/lbhs1.jpeg\" alt=\"\" width=\"99%\" /></div>\r\n<div class=\"col-4\" style=\"box-sizing: border-box; flex: 0 0 auto; width: 380px; max-width: 100%; padding-right: calc(var(--bs-gutter-x) * 0.5); padding-left: calc(var(--bs-gutter-x) * 0.5); margin-top: var(--bs-gutter-y);\"><img style=\"box-sizing: border-box; vertical-align: middle;\" src=\"http://localhost:8000/photos/lbhs2.jpeg\" alt=\"\" width=\"99%\" /></div>\r\n<div class=\"col-4\" style=\"box-sizing: border-box; flex: 0 0 auto; width: 380px; max-width: 100%; padding-right: calc(var(--bs-gutter-x) * 0.5); padding-left: calc(var(--bs-gutter-x) * 0.5); margin-top: var(--bs-gutter-y);\"><img style=\"box-sizing: border-box; vertical-align: middle;\" src=\"http://localhost:8000/photos/lbhs3.jpeg\" alt=\"\" width=\"99%\" /></div>\r\n</div>\r\n<h3 style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-weight: 500; line-height: 1.2; font-size: 1.75rem; font-family: Raleway, sans-serif;\"><img class=\"mt-4 mb-5\" style=\"box-sizing: border-box; vertical-align: middle; font-family: \'Open Sans\', sans-serif; font-size: 16px; margin-top: 1.5rem !important; margin-bottom: 3rem !important;\" src=\"http://localhost:8000/photos/lbhs1.jpeg\" alt=\"\" width=\"99.5%\" /></h3>', NULL, 'sarana-dan-prasarana-sekolah', 'sarana dan prasarana sekolah', 'sarana dan prasarana sekolah', 'ACTIVE', '2021-10-02 05:04:52', '2021-10-02 05:04:52', 6),
(20, 1, 'Protokol Kesehatan di Lingkungan Sekolah', 'Protokol Kesehatan', NULL, 'pages\\October2021\\YEpdvnAHwI82TSYLASe1.png', 'protokol-kesehatan-di-lingkungan-sekolah', 'Prokres', 'Prokres', 'ACTIVE', '2021-10-06 07:19:34', '2021-10-14 12:54:30', 9),
(21, 1, 'Why Starbhak?', NULL, '<p style=\"font-size: 20px;\">90% of graduating students already work before graduation, as either self-employed workers or young professionals.</p>', 'pages\\October2021\\DOR6wm4KG89mGlPVChTc.jpg', 'why-starbhak', NULL, NULL, 'ACTIVE', '2021-10-14 11:59:20', '2021-10-14 11:59:20', 8);

-- --------------------------------------------------------

--
-- Struktur dari tabel `partners`
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
-- Dumping data untuk tabel `partners`
--

INSERT INTO `partners` (`id`, `logo_perusahaan`, `nama_perusahaan`, `alamat_perusahaan`, `created_at`, `updated_at`, `website_perusahaan`) VALUES
(1, 'partners\\September2021\\X5dVle3n9fghgh63JqPL.png', 'Impunity', 'jl dongkal no 30', '2021-09-30 08:39:59', '2021-09-30 08:39:59', NULL),
(2, 'partners\\September2021\\VfckVh3Uuf1HwQZu2m9F.png', 'Automate', 'jl baru no 30', '2021-09-30 08:41:09', '2021-09-30 08:41:09', NULL),
(9, 'partners\\September2021\\eBChzSeaoGRIUizDLpYM.png', 'Play Media', 'MNC', '2021-09-30 08:50:47', '2021-09-30 08:50:47', NULL),
(10, 'partners\\September2021\\QISLM81GwCEJUpgHywdJ.png', 'Rumah Coding', 'Rumah', '2021-09-30 08:51:02', '2021-09-30 08:51:02', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `permissions`
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
(116, 'browse_category_sarpras', 'category_sarpras', '2021-10-06 08:21:52', '2021-10-06 08:21:52'),
(117, 'read_category_sarpras', 'category_sarpras', '2021-10-06 08:21:52', '2021-10-06 08:21:52'),
(118, 'edit_category_sarpras', 'category_sarpras', '2021-10-06 08:21:52', '2021-10-06 08:21:52'),
(119, 'add_category_sarpras', 'category_sarpras', '2021-10-06 08:21:52', '2021-10-06 08:21:52'),
(120, 'delete_category_sarpras', 'category_sarpras', '2021-10-06 08:21:52', '2021-10-06 08:21:52'),
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
(136, 'browse_galleries', 'galleries', '2021-10-16 07:50:01', '2021-10-16 07:50:01'),
(137, 'read_galleries', 'galleries', '2021-10-16 07:50:01', '2021-10-16 07:50:01'),
(138, 'edit_galleries', 'galleries', '2021-10-16 07:50:01', '2021-10-16 07:50:01'),
(139, 'add_galleries', 'galleries', '2021-10-16 07:50:01', '2021-10-16 07:50:01'),
(140, 'delete_galleries', 'galleries', '2021-10-16 07:50:01', '2021-10-16 07:50:01'),
(141, 'browse_gallery_news', 'gallery_news', '2021-10-16 08:00:58', '2021-10-16 08:00:58'),
(142, 'read_gallery_news', 'gallery_news', '2021-10-16 08:00:58', '2021-10-16 08:00:58'),
(143, 'edit_gallery_news', 'gallery_news', '2021-10-16 08:00:58', '2021-10-16 08:00:58'),
(144, 'add_gallery_news', 'gallery_news', '2021-10-16 08:00:58', '2021-10-16 08:00:58'),
(145, 'delete_gallery_news', 'gallery_news', '2021-10-16 08:00:58', '2021-10-16 08:00:58'),
(146, 'browse_category_news', 'category_news', '2021-10-16 11:49:24', '2021-10-16 11:49:24'),
(147, 'read_category_news', 'category_news', '2021-10-16 11:49:24', '2021-10-16 11:49:24'),
(148, 'edit_category_news', 'category_news', '2021-10-16 11:49:24', '2021-10-16 11:49:24'),
(149, 'add_category_news', 'category_news', '2021-10-16 11:49:24', '2021-10-16 11:49:24'),
(150, 'delete_category_news', 'category_news', '2021-10-16 11:49:24', '2021-10-16 11:49:24');

-- --------------------------------------------------------

--
-- Struktur dari tabel `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `permission_role`
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
(116, 1),
(117, 1),
(118, 1),
(119, 1),
(120, 1),
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
(150, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
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
-- Struktur dari tabel `posts`
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
-- Dumping data untuk tabel `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(30, 1, 3, 'Peringati 10 Muharram 1443 H, SMK Taruna Bhakti Berikan Santunan Kepada 133 Siswa Yatim, Piatu, dan Yatim Piatu', NULL, 'SMK Taruna Bhakti melalui Pokja Kesiswaan menggalang partisipasi dengan Yayasan Setya Bhakti dengan seluruh guru SMK Taruna Bhakti memberikan santunan kepada 133 siswa yatim dan atau piatu dalam rangka memperingati 10 Muharram 1443 H.', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: Lato, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 15px;\">SMK Taruna Bhakti melalui Pokja Kesiswaan menggalang partisipasi dengan Yayasan Setya Bhakti dengan seluruh guru SMK Taruna Bhakti memberikan santunan kepada 133 siswa yatim dan atau piatu dalam rangka memperingati 10 Muharram 1443 H.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: Lato, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 15px;\">Kegiatan ini dilaksanakan pada Sabtu, 28 Agustus 2021 bertempat di Mushola Roudhoutul &lsquo;Ilmi, sarana ibadah di SMK Taruna Bhakti. Siswa yang menerima santunan berasal dari seluruh kelas tingkat X, XI, dan XII yang saat ini berjumlah 37 rombel. Teknis penyaluran menerapkan protokol kesehatan ketat dengan membagi dua sesi, yakni pagi pukul 10.00 &ndash; 11.30 WIB dan siang pukul 14.30 &ndash; 16.00 WIB.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: Lato, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 15px;\">Tujuan diselenggarakannya kegiatan ini adalah sebagai bentuk aksi sosial, mempererat tali silaturahmi, dan edukasi kepada seluruh warga sekolah sebagai pembelajaran untuk berbagi kepada sesama. Tak hanya itu, diharapkan program ini dapat terlaksana secara berkelanjutan sebagai wujud kepedulian sekolah kepada seluruh peserta didiknya.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: Lato, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 15px;\"><img class=\"aligncenter size-full wp-image-10032\" style=\"box-sizing: border-box; vertical-align: middle; border: 0px none; height: auto; max-width: 100%; clear: both; display: block; margin-left: auto; margin-right: auto;\" src=\"https://smktarunabhakti.net/wp-content/uploads/2021/08/10-muharom-1.jpg\" sizes=\"(max-width: 1280px) 100vw, 1280px\" srcset=\"https://smktarunabhakti.net/wp-content/uploads/2021/08/10-muharom-1.jpg 1280w, https://smktarunabhakti.net/wp-content/uploads/2021/08/10-muharom-1-300x169.jpg 300w, https://smktarunabhakti.net/wp-content/uploads/2021/08/10-muharom-1-1024x576.jpg 1024w, https://smktarunabhakti.net/wp-content/uploads/2021/08/10-muharom-1-768x432.jpg 768w\" alt=\"\" width=\"1280\" height=\"720\" /></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: Lato, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 15px;\"><img class=\"aligncenter size-full wp-image-10033\" style=\"box-sizing: border-box; vertical-align: middle; border: 0px none; height: auto; max-width: 100%; clear: both; display: block; margin-left: auto; margin-right: auto;\" src=\"https://smktarunabhakti.net/wp-content/uploads/2021/08/10-Muharom-2.jpg\" sizes=\"(max-width: 1280px) 100vw, 1280px\" srcset=\"https://smktarunabhakti.net/wp-content/uploads/2021/08/10-Muharom-2.jpg 1280w, https://smktarunabhakti.net/wp-content/uploads/2021/08/10-Muharom-2-300x169.jpg 300w, https://smktarunabhakti.net/wp-content/uploads/2021/08/10-Muharom-2-1024x576.jpg 1024w, https://smktarunabhakti.net/wp-content/uploads/2021/08/10-Muharom-2-768x432.jpg 768w\" alt=\"\" width=\"1280\" height=\"720\" /></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: Lato, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 15px;\"><img class=\"aligncenter size-full wp-image-10034\" style=\"box-sizing: border-box; vertical-align: middle; border: 0px none; height: auto; max-width: 100%; clear: both; display: block; margin-left: auto; margin-right: auto;\" src=\"https://smktarunabhakti.net/wp-content/uploads/2021/08/10-Muharom-3.jpg\" sizes=\"(max-width: 1280px) 100vw, 1280px\" srcset=\"https://smktarunabhakti.net/wp-content/uploads/2021/08/10-Muharom-3.jpg 1280w, https://smktarunabhakti.net/wp-content/uploads/2021/08/10-Muharom-3-300x138.jpg 300w, https://smktarunabhakti.net/wp-content/uploads/2021/08/10-Muharom-3-1024x471.jpg 1024w, https://smktarunabhakti.net/wp-content/uploads/2021/08/10-Muharom-3-768x353.jpg 768w\" alt=\"\" width=\"1280\" height=\"589\" /></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: Lato, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 15px;\"><img class=\"aligncenter size-full wp-image-10035\" style=\"box-sizing: border-box; vertical-align: middle; border: 0px none; height: auto; max-width: 100%; clear: both; display: block; margin-left: auto; margin-right: auto;\" src=\"https://smktarunabhakti.net/wp-content/uploads/2021/08/10-Muharom.jpg\" sizes=\"(max-width: 1280px) 100vw, 1280px\" srcset=\"https://smktarunabhakti.net/wp-content/uploads/2021/08/10-Muharom.jpg 1280w, https://smktarunabhakti.net/wp-content/uploads/2021/08/10-Muharom-300x169.jpg 300w, https://smktarunabhakti.net/wp-content/uploads/2021/08/10-Muharom-1024x576.jpg 1024w, https://smktarunabhakti.net/wp-content/uploads/2021/08/10-Muharom-768x432.jpg 768w\" alt=\"\" width=\"1280\" height=\"720\" /></p>', 'posts\\October2021\\fRyMijdbsP4vOimiapgx.jpg', 'peringati-10-muharram-1443-h-smk-taruna-bhakti-berikan-santunan-kepada-133-siswa-yatim-piatu-dan-yatim-piatu', NULL, NULL, 'PUBLISHED', 1, '2021-10-08 04:13:02', '2021-10-14 12:46:57'),
(31, 1, 3, 'SMK Taruna Bhakti Selenggarakan Gebyar Vaksinasi Pelajar Dosis Ke-1', NULL, 'SMK Taruna Bhakti melalui Pokja Kesiswaan ditunjuk sebagai Pelaksana Kegiatan Gebyar Vaksinasi Pelajar Dosis Ke-1 pada Jumat, 3 September 2021.', '<div class=\"entry-content\" style=\"box-sizing: border-box; margin: 1.5em 0px 0px; color: #212529; font-family: Lato, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 15px;\">\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\">SMK Taruna Bhakti melalui Pokja Kesiswaan ditunjuk sebagai Pelaksana Kegiatan Gebyar Vaksinasi Pelajar Dosis Ke-1 pada Jumat, 3 September 2021. Kegiatan ini merupakan kerjasama Musyawarah Kerja Kepala Sekolah (MKKS) Kota Depok dengan Rumah Sakit Bhayangkara Brimob Depok.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\">Peserta yang mengikuti program vaksinasi ini sebanyak 835 orang dengan rincian peserta dari SMK Taruna Bhakti sebanyak 488 orang, SMP dan SMK lain sebanyak 367 orang, dan warga lingkungan sekitar SMK Taruna Bhakti sebanyak 92 orang.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\">Jenis vaksin yang diberikan adalah Pfizer, salah satu jenis vaksin yang digunakan di Indonesia. Pelaksanaan kegiatan ini menerapkan protokol kesehatan secara ketat yang dijuga dikawal oleh Petugas Kesatuan Brimob Depok. Tujuan diselenggarakan program ini adalah sebagai bakti sekolah kepada negara dalam membantu proses percepatan vaksinasi untuk melawan pandemi Covid-19, khususnya untuk kalangan pelajar sebagai syarat pemberlakuan Pembelajaran Tatap Muka Terbatas (PTMT) SMK Taruna Bhakti Tahun Pelajaran 2021/2022.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><img class=\"aligncenter size-full wp-image-10039\" style=\"box-sizing: border-box; vertical-align: middle; border: 0px none; height: auto; max-width: 100%; clear: both; display: block; margin-left: auto; margin-right: auto;\" src=\"https://smktarunabhakti.net/wp-content/uploads/2021/09/Vaksin-1.jpg\" sizes=\"(max-width: 1280px) 100vw, 1280px\" srcset=\"https://smktarunabhakti.net/wp-content/uploads/2021/09/Vaksin-1.jpg 1280w, https://smktarunabhakti.net/wp-content/uploads/2021/09/Vaksin-1-300x169.jpg 300w, https://smktarunabhakti.net/wp-content/uploads/2021/09/Vaksin-1-1024x576.jpg 1024w, https://smktarunabhakti.net/wp-content/uploads/2021/09/Vaksin-1-768x432.jpg 768w\" alt=\"\" width=\"1280\" height=\"720\" /></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><img class=\"aligncenter size-full wp-image-10040\" style=\"box-sizing: border-box; vertical-align: middle; border: 0px none; height: auto; max-width: 100%; clear: both; display: block; margin-left: auto; margin-right: auto;\" src=\"https://smktarunabhakti.net/wp-content/uploads/2021/09/Vaksin-2.jpg\" sizes=\"(max-width: 1280px) 100vw, 1280px\" srcset=\"https://smktarunabhakti.net/wp-content/uploads/2021/09/Vaksin-2.jpg 1280w, https://smktarunabhakti.net/wp-content/uploads/2021/09/Vaksin-2-300x169.jpg 300w, https://smktarunabhakti.net/wp-content/uploads/2021/09/Vaksin-2-1024x575.jpg 1024w, https://smktarunabhakti.net/wp-content/uploads/2021/09/Vaksin-2-768x431.jpg 768w\" alt=\"\" width=\"1280\" height=\"719\" /></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><img class=\"aligncenter size-full wp-image-10041\" style=\"box-sizing: border-box; vertical-align: middle; border: 0px none; height: auto; max-width: 100%; clear: both; display: block; margin-left: auto; margin-right: auto;\" src=\"https://smktarunabhakti.net/wp-content/uploads/2021/09/Vaksin-3.jpg\" sizes=\"(max-width: 1280px) 100vw, 1280px\" srcset=\"https://smktarunabhakti.net/wp-content/uploads/2021/09/Vaksin-3.jpg 1280w, https://smktarunabhakti.net/wp-content/uploads/2021/09/Vaksin-3-300x169.jpg 300w, https://smktarunabhakti.net/wp-content/uploads/2021/09/Vaksin-3-1024x575.jpg 1024w, https://smktarunabhakti.net/wp-content/uploads/2021/09/Vaksin-3-768x431.jpg 768w\" alt=\"\" width=\"1280\" height=\"719\" /></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><img class=\"aligncenter size-full wp-image-10042\" style=\"box-sizing: border-box; vertical-align: middle; border: 0px none; height: auto; max-width: 100%; clear: both; display: block; margin-left: auto; margin-right: auto;\" src=\"https://smktarunabhakti.net/wp-content/uploads/2021/09/Vaksin-4.jpg\" sizes=\"(max-width: 1280px) 100vw, 1280px\" srcset=\"https://smktarunabhakti.net/wp-content/uploads/2021/09/Vaksin-4.jpg 1280w, https://smktarunabhakti.net/wp-content/uploads/2021/09/Vaksin-4-300x225.jpg 300w, https://smktarunabhakti.net/wp-content/uploads/2021/09/Vaksin-4-1024x768.jpg 1024w, https://smktarunabhakti.net/wp-content/uploads/2021/09/Vaksin-4-768x576.jpg 768w\" alt=\"\" width=\"1280\" height=\"960\" /></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><img class=\"aligncenter size-full wp-image-10043\" style=\"box-sizing: border-box; vertical-align: middle; border: 0px none; height: auto; max-width: 100%; clear: both; display: block; margin-left: auto; margin-right: auto;\" src=\"https://smktarunabhakti.net/wp-content/uploads/2021/09/vaksin-5.jpg\" sizes=\"(max-width: 1280px) 100vw, 1280px\" srcset=\"https://smktarunabhakti.net/wp-content/uploads/2021/09/vaksin-5.jpg 1280w, https://smktarunabhakti.net/wp-content/uploads/2021/09/vaksin-5-300x225.jpg 300w, https://smktarunabhakti.net/wp-content/uploads/2021/09/vaksin-5-1024x768.jpg 1024w, https://smktarunabhakti.net/wp-content/uploads/2021/09/vaksin-5-768x576.jpg 768w\" alt=\"\" width=\"1280\" height=\"960\" /></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><img class=\"aligncenter size-full wp-image-10044\" style=\"box-sizing: border-box; vertical-align: middle; border: 0px none; height: auto; max-width: 100%; clear: both; display: block; margin-left: auto; margin-right: auto;\" src=\"https://smktarunabhakti.net/wp-content/uploads/2021/09/Vaksin-6.jpg\" sizes=\"(max-width: 1280px) 100vw, 1280px\" srcset=\"https://smktarunabhakti.net/wp-content/uploads/2021/09/Vaksin-6.jpg 1280w, https://smktarunabhakti.net/wp-content/uploads/2021/09/Vaksin-6-300x222.jpg 300w, https://smktarunabhakti.net/wp-content/uploads/2021/09/Vaksin-6-1024x759.jpg 1024w, https://smktarunabhakti.net/wp-content/uploads/2021/09/Vaksin-6-768x569.jpg 768w\" alt=\"\" width=\"1280\" height=\"949\" /></p>\r\n<p>&nbsp;</p>\r\n</div>', 'posts\\October2021\\lJhPRF2DGuTCG3fGBhJR.jpg', 'smk-taruna-bhakti-selenggarakan-gebyar-vaksinasi-pelajar-dosis-ke-1', NULL, NULL, 'PUBLISHED', 1, '2021-10-08 04:14:01', '2021-10-14 12:38:35');

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2021-09-21 07:32:55', '2021-09-21 07:32:55'),
(2, 'user', 'Normal User', '2021-09-21 07:32:56', '2021-09-21 07:32:56'),
(3, 'siswa', 'Siswa', '2021-09-23 20:57:35', '2021-09-23 20:58:45'),
(4, 'guru', 'Guru', '2021-09-23 20:58:28', '2021-09-23 20:58:28'),
(5, 'manager', 'Manager', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `settings`
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
-- Dumping data untuk tabel `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 10, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 11, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings\\October2021\\kPm9a78D1EXFcXIgtmSz.png', '', 'image', 1, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 12, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin'),
(13, 'site.fitur_home_page', 'Fitur Home Page', 'settings/October2021/DLpESG8ztdttleSD9CQz.png', NULL, 'image', 2, 'Site'),
(15, 'site.virtual-tour', 'Virtual Tour', 'https://kuula.co/share/collection/7YQlT?fs=1&vr=1&sd=1&initload=0&thumbs=1&info=0&logo=1&logosize=40', NULL, 'text', 3, 'Site'),
(16, 'site.heading', 'Heading', '<p>&nbsp;</p>\r\n<h1 style=\"box-sizing: border-box; margin: 0px; line-height: 56px; font-size: 48px; font-family: Poppins, sans-serif; color: #ffffff;\"><span style=\"color: #ffffff;\">Learning Today, </span></h1>\r\n<h1 style=\"box-sizing: border-box; margin: 0px; line-height: 56px; font-size: 48px; font-family: Poppins, sans-serif; color: #ffffff;\"><span style=\"color: #ffffff;\">Leading Tomorrow</span></h1>', NULL, 'rich_text_box', 4, 'Site'),
(17, 'site.sub_heading', 'Sub Heading', 'We are team of talented designers making websites with Bootstrap', NULL, 'text_area', 8, 'Site'),
(22, 'site.image_content', 'Image Content', 'settings\\October2021\\VDQRjzZhc2nhxMn2QkV3.jpg', NULL, 'image', 15, 'Site'),
(23, 'site.instagram', 'Link Instagram', 'https://instagram.com/starbhak.official?utm_medium=copy_link', NULL, 'text', 16, 'Site'),
(24, 'site.facebook', 'Link Facebook', 'https://web.facebook.com/smktarunabhaktidepok', NULL, 'text', 17, 'Site');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswas`
--

CREATE TABLE `siswas` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kelas_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `nipd` int(11) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `siswas`
--

INSERT INTO `siswas` (`id`, `name`, `kelas_id`, `email`, `password`, `created_at`, `updated_at`, `nipd`, `remember_token`) VALUES
(1, 'Kukuh Pradypta', '2', 'kukuh@gmail.com', '$2y$10$EJg3EZjiyke6MA26ywAoLe.cwYI8zc6417Ow1gUT448SDQJmLDpRG', '2021-09-22 06:43:59', '2021-09-22 06:43:59', 1920100325, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `translations`
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
-- Dumping data untuk tabel `translations`
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
-- Struktur dari tabel `users`
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
  `mapel_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`, `nomor_induk`, `jabatan_guru`, `kelas_siswa`, `spesifc_role`, `mapel_id`) VALUES
(1, 1, 'Taruna', 'admin@admin.com', 'users/default.png', NULL, '$2y$10$Fo8k1RIU9Ej0B7oa4thUgexNlQk06ytDVR6fcbbS6hVBZlUQ6HIyC', 'H1YZICLRP6aSTpwgDGSOG0O1Qcnxaw3WTe2vwztQQaCsrvijQuAICyvY0bZv', NULL, '2021-08-19 18:52:57', '2021-08-19 18:52:57', NULL, NULL, NULL, '', NULL),
(2, 1, 'admin', 'admin@email.com', 'users/default.png', NULL, '$2y$10$R4YUok8EtOVF81IlFaCTZ.8l6i03Hgd6B1YUZaYQK/cVC0k8mUj76', NULL, '{\"locale\":\"id\"}', '2021-10-04 19:09:29', '2021-10-05 00:01:23', '523235235', NULL, NULL, 'kepsek', NULL),
(3, 3, 'Ari Suhendra Tahyadi', '32232@gmail.com', 'users/default.png', NULL, '$2y$10$qMNo101mY9bBwUaUBHidAuKh1NiuG0b4ATbUF.mhBYouy87Pv0UHC', NULL, '{\"locale\":\"id\"}', '2021-10-04 19:21:41', '2021-10-05 00:03:18', '42342342342', NULL, 3, 'siswa', NULL),
(4, 4, 'Joko', 'joko@gmail.com', 'users/default.png', NULL, '$2y$10$IPvgfaSlLOMZpSKQCrKcHel1pMIArKFcvNGg0m7VftDcgCtMqjWtC', NULL, '{\"locale\":\"id\"}', '2021-10-04 19:25:37', '2021-10-05 00:02:49', '12910100259', 'Guru', NULL, 'Kurikulum', 2),
(5, 1, 'admin', 'admin@test.com', 'users/default.png', NULL, '$2y$10$INKBBk0I6VUlMaIN2ALde.BIxc4q0PAaeiRx5i68s0Rf41.qaddqm', NULL, NULL, '2021-10-04 23:28:44', '2021-10-05 00:01:03', '4324234234', NULL, NULL, 'admin', NULL),
(6, 5, 'THEBBB', 'Yuhnpa@gmail.com', 'users\\October2021\\E8czVAHwOuRA1hZJKfyk.jpg', NULL, '$2y$10$BNaBhza.bvWGNQyZknvOQuMztrlh1JXW1Q3q3izJoeM69Ne13j7Ky', NULL, NULL, '2021-10-04 23:43:46', '2021-10-05 02:19:25', '3423242342342', 'Kepala Program', NULL, 'kaprog', NULL),
(8, 3, 'siswa0', 'siswa0@gmail.com', 'users/default.png', NULL, '$2y$10$cgIafsOLGIJ5m.tI1sTAe.FzknGSfOUCyANsaGopSNjKeNIs2sMXK', '', '[]', '2021-10-08 08:31:02', '2021-10-08 08:31:02', '9591', '', 7, 'siswa', 3),
(9, 3, 'siswa1', 'siswa1@gmail.com', 'users/default.png', NULL, '$2y$10$8Fs6ZBjA60UToL.97tNZteZFYsBtWcCDmaxr9hI2GnyMV.xPiygGe', '', '[]', '2021-10-08 08:31:02', '2021-10-08 08:31:02', '17928', '', 25, 'siswa', 2),
(10, 3, 'siswa2', 'siswa2@gmail.com', 'users/default.png', NULL, '$2y$10$VofvpZ/HUW822zlcCMD4pO/s.tVER/cwH8/IGIvVapMxG1k0fVpea', '', '[]', '2021-10-08 08:31:02', '2021-10-08 08:31:02', '75', '', 18, 'siswa', 4),
(11, 3, 'siswa3', 'siswa3@gmail.com', 'users/default.png', NULL, '$2y$10$POfDubHx9YI2IH0hq76mbecNe8nIA59p2mxuR/7HUlHK0dFbAkjLe', '', '[]', '2021-10-08 08:31:02', '2021-10-08 08:31:02', '17', '', 9, 'siswa', 3),
(12, 3, 'siswa4', 'siswa4@gmail.com', 'users/default.png', NULL, '$2y$10$YS77dRFaTSki2c6CT2/Hmuh0w07uTh0Uqt/6cAV2N8BgmR09JG1jy', '', '[]', '2021-10-08 08:31:02', '2021-10-08 08:31:02', '940', '', 14, 'siswa', 1),
(13, 3, 'siswa5', 'siswa5@gmail.com', 'users/default.png', NULL, '$2y$10$BIBI5OpGkrWn0Z3yddon4..fLLdgDtaOlrm7XBvVNvz9dKIxiBpDC', '', '[]', '2021-10-08 08:31:02', '2021-10-08 08:31:02', '14680027', '', 42, 'siswa', 1),
(14, 3, 'siswa6', 'siswa6@gmail.com', 'users/default.png', NULL, '$2y$10$KohcIhvv.sYcrbkGD6ohhOJ1Hq.A5JcdgnFXk7FWTfnSBeOvUyv8G', '', '[]', '2021-10-08 08:31:03', '2021-10-08 08:31:03', '24', '', 12, 'siswa', 2),
(15, 3, 'siswa7', 'siswa7@gmail.com', 'users/default.png', NULL, '$2y$10$2n0lBfCD263OYcN.HYtuyeHiQ5QPbR/aQrbE0oqYsJa.3cD9c7iLu', '', '[]', '2021-10-08 08:31:03', '2021-10-08 08:31:03', '95139656', '', 9, 'siswa', 4),
(16, 3, 'siswa8', 'siswa8@gmail.com', 'users/default.png', NULL, '$2y$10$I07cNq8a0YJSo0fUQDrmk.kr21XEWBAHACFTzbPIeoTde7UfJPES.', '', '[]', '2021-10-08 08:31:03', '2021-10-08 08:31:03', '9597461', '', 16, 'siswa', 1),
(17, 3, 'siswa9', 'siswa9@gmail.com', 'users/default.png', NULL, '$2y$10$GjISADlK5lgI1evXWFfNDey4c/6J5Ut5SjOCvmsxZ.iBVAM5RIamy', '', '[]', '2021-10-08 08:31:03', '2021-10-08 08:31:03', '3', '', 12, 'siswa', 1),
(18, 3, 'siswa10', 'siswa10@gmail.com', 'users/default.png', NULL, '$2y$10$1jqTE2COWcTODgecHyVwdOvX.dyGn.llDFlmRh0e0xVu9ZAwCRGy.', '', '[]', '2021-10-08 08:31:03', '2021-10-08 08:31:03', '32516947', '', 24, 'siswa', 2),
(19, 3, 'siswa11', 'siswa11@gmail.com', 'users/default.png', NULL, '$2y$10$oZoCGWZCHD1hJ/Lujq00d.EVRT8ylHQhhm10w/csW0aTEBxMVsBh.', '', '[]', '2021-10-08 08:31:03', '2021-10-08 08:31:03', '75892', '', 34, 'siswa', 1),
(20, 3, 'siswa12', 'siswa12@gmail.com', 'users/default.png', NULL, '$2y$10$Gm7HyzM.x0p3QwjuAzKLVeVIgeaPaUPk1FUptDEo0LJmPtOq46yMC', '', '[]', '2021-10-08 08:31:04', '2021-10-08 08:31:04', '7', '', 8, 'siswa', 4),
(21, 3, 'siswa13', 'siswa13@gmail.com', 'users/default.png', NULL, '$2y$10$ZLCZ/KknhezSuw6IaCkMbuY6VXFIevz5MvHd63xbEHoItHxM/FSrC', '', '[]', '2021-10-08 08:31:04', '2021-10-08 08:31:04', '5', '', 19, 'siswa', 1),
(22, 3, 'siswa14', 'siswa14@gmail.com', 'users/default.png', NULL, '$2y$10$K6IEAJygL03xxdO806LLU./Poz3wGGMegEJEXdxHI6CsLD300yv9e', '', '[]', '2021-10-08 08:31:04', '2021-10-08 08:31:04', '689', '', 38, 'siswa', 3),
(23, 3, 'siswa15', 'siswa15@gmail.com', 'users/default.png', NULL, '$2y$10$Y95iDzFU3rNFsxpRFQfcD.1oTfJH8M0UmH9NWPNrhdylzvJS8rLqO', '', '[]', '2021-10-08 08:31:04', '2021-10-08 08:31:04', '0', '', 10, 'siswa', 3),
(24, 3, 'siswa16', 'siswa16@gmail.com', 'users/default.png', NULL, '$2y$10$.iLEiGwjv5cVfs95F/3BbuNM1Vj7b/v3gHHejIyQ26PKaH8R58gUi', '', '[]', '2021-10-08 08:31:04', '2021-10-08 08:31:04', '138', '', 14, 'siswa', 3),
(25, 3, 'siswa17', 'siswa17@gmail.com', 'users/default.png', NULL, '$2y$10$coMhBmHs0y/N/pV/wPP47Oi7fClCp5fj9LSbRSh/Gl6h02/gW1Gj.', '', '[]', '2021-10-08 08:31:04', '2021-10-08 08:31:04', '386895', '', 21, 'siswa', 4),
(26, 3, 'siswa18', 'siswa18@gmail.com', 'users/default.png', NULL, '$2y$10$gwvCQiyCEL1rmOH1sAMGEOJXJJ39HdPQV4igmRlu4QPjsfGurWyDS', '', '[]', '2021-10-08 08:31:04', '2021-10-08 08:31:04', '3344', '', 11, 'siswa', 4),
(27, 3, 'siswa19', 'siswa19@gmail.com', 'users/default.png', NULL, '$2y$10$h9.q77mIWbCJB64iM0lhFuK7LIhqaKchUDb6.80LIhOFnREhmT6uy', '', '[]', '2021-10-08 08:31:04', '2021-10-08 08:31:04', '6395956', '', 45, 'siswa', 1),
(28, 3, 'siswa20', 'siswa20@gmail.com', 'users/default.png', NULL, '$2y$10$3S2j7V9qlBHBZVqxS/rPrelQzSAzChfjuVHF6eY1WJv1gSsIXk97a', '', '[]', '2021-10-08 08:31:04', '2021-10-08 08:31:04', '6', '', 17, 'siswa', 2),
(29, 3, 'siswa21', 'siswa21@gmail.com', 'users/default.png', NULL, '$2y$10$grV6WkHrjumDGgWpw8GLf.ELaWstBWCog/I5xCrsbNpHeirNpPQue', '', '[]', '2021-10-08 08:31:05', '2021-10-08 08:31:05', '7652', '', 45, 'siswa', 3),
(30, 3, 'siswa22', 'siswa22@gmail.com', 'users/default.png', NULL, '$2y$10$aA4WoVXZiUuJmJw1tosv2uEWKr0X.e8quV0Xn3gwK1lqMqdPHw6wS', '', '[]', '2021-10-08 08:31:05', '2021-10-08 08:31:05', '5982', '', 42, 'siswa', 2),
(31, 3, 'siswa23', 'siswa23@gmail.com', 'users/default.png', NULL, '$2y$10$rzyElIGjNcJE56JsuwUkBuNA6yh7K6LlMRc0TSrbzbNP7LNNRCl0q', '', '[]', '2021-10-08 08:31:05', '2021-10-08 08:31:05', '9', '', 35, 'siswa', 3),
(32, 3, 'siswa24', 'siswa24@gmail.com', 'users/default.png', NULL, '$2y$10$57/FLe4uHpM2qN3.XZ68PeVtDTglONRhYxhFakVlEBlxnbTGmG4Y.', '', '[]', '2021-10-08 08:31:05', '2021-10-08 08:31:05', '9321364', '', 32, 'siswa', 4),
(33, 3, 'siswa25', 'siswa25@gmail.com', 'users/default.png', NULL, '$2y$10$2KNVxsAUTaavRjcqUvKW3ePM.5t3uNybMl.bhGYUUZHbKtulc1I5y', '', '[]', '2021-10-08 08:31:05', '2021-10-08 08:31:05', '115719', '', 40, 'siswa', 3),
(34, 3, 'siswa26', 'siswa26@gmail.com', 'users/default.png', NULL, '$2y$10$l.cMwuHNSQY79z/3.uygy.GcuOW4.pOztDw56d1YvyBamBRe4PAjm', '', '[]', '2021-10-08 08:31:05', '2021-10-08 08:31:05', '5341', '', 7, 'siswa', 3),
(35, 3, 'siswa27', 'siswa27@gmail.com', 'users/default.png', NULL, '$2y$10$rbSM1hVmW5jzLSpFSl6qXO9TM/YyqKCwKR9pyRpdccDfyupwLLILy', '', '[]', '2021-10-08 08:31:05', '2021-10-08 08:31:05', '943625', '', 3, 'siswa', 1),
(36, 3, 'siswa28', 'siswa28@gmail.com', 'users/default.png', NULL, '$2y$10$q9BulNHHiTZRh6imIBy2COU3Hi/i/1.ojPtEtvgaQxEn9RUktt51G', '', '[]', '2021-10-08 08:31:06', '2021-10-08 08:31:06', '145', '', 34, 'siswa', 4),
(37, 3, 'siswa29', 'siswa29@gmail.com', 'users/default.png', NULL, '$2y$10$w3/8XrKvPxkLrjoVKJo39ep0cqo32uR.j7ZLU3khPLG2cG1dH/s..', '', '[]', '2021-10-08 08:31:06', '2021-10-08 08:31:06', '74810367', '', 7, 'siswa', 1),
(38, 3, 'siswa30', 'siswa30@gmail.com', 'users/default.png', NULL, '$2y$10$pX.jTiQdOPpaNmm.kw0Ho.wJ4T4jKFRPgUHxdh61cIrqIuZJPsmYC', '', '[]', '2021-10-08 08:31:06', '2021-10-08 08:31:06', '521108910', '', 4, 'siswa', 3),
(39, 3, 'siswa31', 'siswa31@gmail.com', 'users/default.png', NULL, '$2y$10$q4BCgUpcxobEqkuTNlBfz.l9bSuYPJ9y94cNkxE9UaaNamtKQdpgy', '', '[]', '2021-10-08 08:31:06', '2021-10-08 08:31:06', '4852916', '', 44, 'siswa', 2),
(40, 3, 'siswa32', 'siswa32@gmail.com', 'users/default.png', NULL, '$2y$10$GQXyFMie8QRGWd99DWvi8OgXQoV6vv1En8tC4nvyYbaZ1JxMDqVFm', '', '[]', '2021-10-08 08:31:06', '2021-10-08 08:31:06', '2846209', '', 37, 'siswa', 2),
(41, 3, 'siswa33', 'siswa33@gmail.com', 'users/default.png', NULL, '$2y$10$I5uxqfmlEOLTMAY0QJ0G6Okh0o58ujToOq9TD5vTtc6ycX0tEdIGK', '', '[]', '2021-10-08 08:31:06', '2021-10-08 08:31:06', '88135469', '', 21, 'siswa', 3),
(42, 3, 'siswa34', 'siswa34@gmail.com', 'users/default.png', NULL, '$2y$10$wb6BPMxB/doBLS5jYfgxxu.Ayx5B0eCtvuxtbZQeDlLA.KlkMHyTO', '', '[]', '2021-10-08 08:31:06', '2021-10-08 08:31:06', '8', '', 42, 'siswa', 4),
(43, 3, 'siswa35', 'siswa35@gmail.com', 'users/default.png', NULL, '$2y$10$dtWGQky6di/nUtIRhzAnAO8ZNnbyrSIQ7ON9VpmTaw/QhAryRaiAe', '', '[]', '2021-10-08 08:31:06', '2021-10-08 08:31:06', '4471', '', 46, 'siswa', 3),
(44, 3, 'siswa36', 'siswa36@gmail.com', 'users/default.png', NULL, '$2y$10$bYLcz6URnp2rFw1YnZ3VcOsOMo.0olghHqsefOcyooJrPAXU.Y6Ou', '', '[]', '2021-10-08 08:31:06', '2021-10-08 08:31:06', '7924', '', 46, 'siswa', 4),
(45, 3, 'siswa37', 'siswa37@gmail.com', 'users/default.png', NULL, '$2y$10$ctueDWAPNpTPxvxIBtAFzeI8j6F3EsIVrOK6gkiTdHXh.Sm71rSDG', '', '[]', '2021-10-08 08:31:07', '2021-10-08 08:31:07', '30383', '', 43, 'siswa', 4),
(46, 3, 'siswa38', 'siswa38@gmail.com', 'users/default.png', NULL, '$2y$10$nA3uYSzxg5NwBIcei3ZbhO9HbEXBzfAid8HotCkpR2S0mFi6o834y', '', '[]', '2021-10-08 08:31:07', '2021-10-08 08:31:07', '292', '', 31, 'siswa', 4),
(47, 3, 'siswa39', 'siswa39@gmail.com', 'users/default.png', NULL, '$2y$10$XPmDWzAUNG1UaKm.tAIgWOqobUNCJcwINjozdUvKq5K1MyuHzsan2', '', '[]', '2021-10-08 08:31:07', '2021-10-08 08:31:07', '6098838', '', 44, 'siswa', 1),
(48, 3, 'siswa40', 'siswa40@gmail.com', 'users/default.png', NULL, '$2y$10$nnmonSPejnECkvNNnNMOu.QFkd61eWgTzbjQByyPaL//q5HgTQyGC', '', '[]', '2021-10-08 08:31:07', '2021-10-08 08:31:07', '16591418', '', 32, 'siswa', 1),
(49, 3, 'siswa41', 'siswa41@gmail.com', 'users/default.png', NULL, '$2y$10$A7Px0yES20A6m.JECq2vQunxWmA.kMa.UlnstM.uMbkvUn2ilPFga', '', '[]', '2021-10-08 08:31:07', '2021-10-08 08:31:07', '80873816', '', 15, 'siswa', 3),
(50, 3, 'siswa42', 'siswa42@gmail.com', 'users/default.png', NULL, '$2y$10$Sni9tq3Q8fBfNAUt2g6fV.VFVtpX7pIkEl3SAYmcTuOJLltSSDsGe', '', '[]', '2021-10-08 08:31:07', '2021-10-08 08:31:07', '52940593', '', 43, 'siswa', 3),
(51, 3, 'siswa43', 'siswa43@gmail.com', 'users/default.png', NULL, '$2y$10$MlvDyE0M4iGDeWtNCeShuOkAB9OW9R7RFKWvLvsiltG.53Z4MiepC', '', '[]', '2021-10-08 08:31:07', '2021-10-08 08:31:07', '23515379', '', 9, 'siswa', 2),
(52, 3, 'siswa44', 'siswa44@gmail.com', 'users/default.png', NULL, '$2y$10$hn4Q.hgexBRMbelZO3tt8e4LltEOHGUyHUJrXBqRr72jkid2DNMBO', '', '[]', '2021-10-08 08:31:07', '2021-10-08 08:31:07', '261637', '', 19, 'siswa', 3),
(53, 3, 'siswa45', 'siswa45@gmail.com', 'users/default.png', NULL, '$2y$10$c942nyzmrqgpLvrHGB4vWODu1.SIBM39cvbIw6IQtj/pTclFkYYW2', '', '[]', '2021-10-08 08:31:07', '2021-10-08 08:31:07', '831', '', 20, 'siswa', 3),
(54, 3, 'siswa46', 'siswa46@gmail.com', 'users/default.png', NULL, '$2y$10$KDN.n9HwXrYZZmRjEMSxq.Yb/wHxBrEFCTK2leHDQJ8dh9dB7QcKq', '', '[]', '2021-10-08 08:31:07', '2021-10-08 08:31:07', '772', '', 11, 'siswa', 1),
(55, 3, 'siswa47', 'siswa47@gmail.com', 'users/default.png', NULL, '$2y$10$frMbOeryGu1YucD8g3UNo.vG1qCqij0z0r.EGi/jp0oNErADYpUw6', '', '[]', '2021-10-08 08:31:08', '2021-10-08 08:31:08', '194898', '', 12, 'siswa', 4),
(56, 3, 'siswa48', 'siswa48@gmail.com', 'users/default.png', NULL, '$2y$10$MP1gRIt0Sjgg0dxxSslQV.kQnK2tj5w3LnPc1aO/eKl1w7A7PRHtK', '', '[]', '2021-10-08 08:31:08', '2021-10-08 08:31:08', '8', '', 45, 'siswa', 1),
(57, 3, 'siswa49', 'siswa49@gmail.com', 'users/default.png', NULL, '$2y$10$jKQ1h7SZX.FaLb0gNVE8ZuLTe.4FB1Runjg6LxuI5RQfrAYmyI0yq', '', '[]', '2021-10-08 08:31:08', '2021-10-08 08:31:08', '689449', '', 2, 'siswa', 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `alumnis`
--
ALTER TABLE `alumnis`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indeks untuk tabel `category_news`
--
ALTER TABLE `category_news`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `category_sarpras`
--
ALTER TABLE `category_sarpras`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_sarpras_slug_unique` (`slug`);

--
-- Indeks untuk tabel `content_sarpras`
--
ALTER TABLE `content_sarpras`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indeks untuk tabel `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `gallery_news`
--
ALTER TABLE `gallery_news`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `gallery_sarpras`
--
ALTER TABLE `gallery_sarpras`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `gurus`
--
ALTER TABLE `gurus`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `guru_role`
--
ALTER TABLE `guru_role`
  ADD KEY `guru_role_guru_id_index` (`guru_id`),
  ADD KEY `guru_role_kategori_id_index` (`kategori_id`);

--
-- Indeks untuk tabel `jurusans`
--
ALTER TABLE `jurusans`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kategoris`
--
ALTER TABLE `kategoris`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kategoris_slug_unique` (`slug`);

--
-- Indeks untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `managers`
--
ALTER TABLE `managers`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `mapels`
--
ALTER TABLE `mapels`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `media_uuid_unique` (`uuid`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`);

--
-- Indeks untuk tabel `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indeks untuk tabel `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indeks untuk tabel `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indeks untuk tabel `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indeks untuk tabel `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indeks untuk tabel `siswas`
--
ALTER TABLE `siswas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `role_id` (`role_id`);

--
-- Indeks untuk tabel `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `alumnis`
--
ALTER TABLE `alumnis`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `category_news`
--
ALTER TABLE `category_news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `category_sarpras`
--
ALTER TABLE `category_sarpras`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `content_sarpras`
--
ALTER TABLE `content_sarpras`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=236;

--
-- AUTO_INCREMENT untuk tabel `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT untuk tabel `gallery_news`
--
ALTER TABLE `gallery_news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `gallery_sarpras`
--
ALTER TABLE `gallery_sarpras`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT untuk tabel `gurus`
--
ALTER TABLE `gurus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `jurusans`
--
ALTER TABLE `jurusans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `kategoris`
--
ALTER TABLE `kategoris`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT untuk tabel `managers`
--
ALTER TABLE `managers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `mapels`
--
ALTER TABLE `mapels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT untuk tabel `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `partners`
--
ALTER TABLE `partners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `siswas`
--
ALTER TABLE `siswas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `role_id` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
