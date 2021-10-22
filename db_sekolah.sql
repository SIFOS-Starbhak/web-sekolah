-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Okt 2021 pada 09.32
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web_sekolah_db`
--

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
(4, 4, 'Joko', 'joko@gmail.com', 'users/default.png', NULL, '$2y$10$IPvgfaSlLOMZpSKQCrKcHel1pMIArKFcvNGg0m7VftDcgCtMqjWtC', NULL, '{\"locale\":\"id\"}', '2021-10-04 19:25:37', '2021-10-22 07:13:28', '12910100259', NULL, NULL, 'litbang', NULL),
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
(57, 3, 'siswa49', 'siswa49@gmail.com', 'users/default.png', NULL, '$2y$10$jKQ1h7SZX.FaLb0gNVE8ZuLTe.4FB1Runjg6LxuI5RQfrAYmyI0yq', '', '[]', '2021-10-08 08:31:08', '2021-10-08 08:31:08', '689449', '', 2, 'siswa', 4),
(59, 4, '312314', 'email', 'users/default.png', NULL, '$2y$10$0MiO/AXNP90GfABmowu.kOj.4.g8eVqhAHDXzNjCoy4QIDRrWbhA.', NULL, NULL, '2021-10-18 07:54:06', '2021-10-18 07:54:06', '1230913', NULL, NULL, 'guru', NULL),
(60, 4, 'ui', 'ui@gmail.com', 'users/default.png', NULL, '$2y$10$m.hyKdxNKMt9kwOni.qTnu7BU9XzlzjMflR60sh4DRxn7fNdMXrJK', NULL, '{\"locale\":\"id\"}', '2021-10-22 07:15:04', '2021-10-22 07:15:04', '097709809809', NULL, NULL, 'tu', NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `role_id` (`role_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
