-- MySQL dump 10.13  Distrib 8.0.28, for Linux (x86_64)
--
-- Host: localhost    Database: jwt_auth
-- ------------------------------------------------------
-- Server version	8.0.28-0ubuntu0.20.04.3

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `alumnis`
--

DROP TABLE IF EXISTS `alumnis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alumnis` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tahun_lulus` int DEFAULT NULL,
  `nama_perusahaan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `posisi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tahun_kerja` int DEFAULT NULL,
  `penghasilan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `categories_alumnis` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jurusan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumnis`
--

LOCK TABLES `alumnis` WRITE;
/*!40000 ALTER TABLE `alumnis` DISABLE KEYS */;
INSERT INTO `alumnis` VALUES (1,'Syaifudin Ilham',2022,'Cv Propose','Managaer',2023,'200000','2021-10-01 05:59:57','2021-10-01 05:59:57','Bekerja','Multimedia',NULL),(2,'DIo Selvinus Silalebit',2022,'Universitas Indonesia','Teknik Informatika',2025,'10000000','2021-10-01 06:27:00','2021-10-01 06:31:13','Kuliah','Teknik Komputer Jaringan',NULL),(3,'Muhammad Yafik Ramdhan Ilham',2022,'Google Corporation','Managaer',2025,'10000000','2021-10-01 06:34:42','2021-10-01 06:34:42','Bekerja','Teknik Komputer Jaringan',NULL),(4,'Nur Firdaus',2022,'Minuman dan Makanan',NULL,NULL,NULL,'2021-10-01 06:58:31','2021-10-01 06:58:31','Bekerja',NULL,NULL),(5,'Nur Firdaus',2022,'Minuman dan Makanan',NULL,NULL,'15000000','2021-10-01 06:59:12','2021-10-01 06:59:12','Wirausaha','Teknik Komputer Jaringan',NULL),(6,'Muhamman Tarmidzi Bariq',2022,'Universitas Gunadarma','Management',NULL,NULL,'2021-10-01 07:34:36','2021-10-01 07:34:36','Kuliah','Multimedia',NULL),(7,'Rafie Aydin Ihsan',2022,'Galon Isi Ulang',NULL,NULL,'10000000','2021-10-01 07:35:46','2021-10-01 07:35:46','Wirausaha','Multimedia',NULL),(8,'Angkasa Raya',2022,'Nasa','Managaer',2025,'10000000','2021-10-01 07:37:09','2021-10-01 07:37:09','Bekerja','Rekayasa Perangkat Lunak',NULL),(9,'Muhammad Irsyam Kelana',2021,'Universitas Unindra','Otomotif',NULL,NULL,'2021-10-01 07:38:47','2021-10-01 07:38:47','Kuliah','Rekayasa Perangkat Lunak',NULL),(10,'Andhika Riski Hidayat',2022,'Milk Shake',NULL,NULL,'5000000','2021-10-01 07:39:50','2021-10-01 07:39:50','Wirausaha','Rekayasa Perangkat Lunak',NULL),(11,'Dana Satria',2022,'PT Ada kalanya','Web Dev',2025,'15000000','2021-10-01 07:41:30','2021-10-01 07:41:30','Bekerja','Broadcast',NULL),(12,'Satrai Dwi Putra',2022,'Universitas Gadjah Mada','Sistem Informasi',NULL,NULL,'2021-10-01 07:42:37','2021-10-01 07:42:37','Kuliah','Broadcast',NULL),(13,'Rifki Ahmad Zahidan',2022,'Usaha Bidang Kesehatan',NULL,NULL,'12000000','2021-10-01 07:43:28','2021-10-01 07:43:28','Wirausaha','Broadcast',NULL),(14,'Muhammad Adil Farizki',2022,'PT Jaya Abadi','CEO',2025,'15000000','2021-10-01 07:44:39','2021-10-01 07:44:39','Bekerja','Teknik Elektronik Industri',NULL),(15,'Sheva Sinatrya Putra',2022,'Institute Pertanian Bogor','Pertanian',NULL,NULL,'2021-10-01 07:45:51','2021-10-01 07:45:51','Kuliah','Teknik Elektronik Industri',NULL),(16,'Kelvyn Nathanael',2022,'Coffee',NULL,NULL,'10000000','2021-10-01 07:47:39','2021-10-01 07:47:39','Wirausaha','Teknik Elektronik Industri',NULL),(17,'Firdaus Caesar',2022,'Universitas Unair','Sistem Informasi',NULL,NULL,'2021-10-01 08:36:18','2021-10-01 08:36:18','Kuliah','Rekayasa Perangkat Lunak',NULL),(20,'ojan',1945,'pki','nganggur',1945,'100000','2021-10-19 08:32:00','2021-10-19 08:32:27','Bekerja','Multimedia','PUBLISED'),(21,'kukuh pradypta',2004,'Play Media','ww',4002,'1111111','2021-10-19 08:37:00','2021-10-19 08:37:48','Bekerja','Broadcast','PUBLISED'),(22,'Nur',1990,'pkl','dEVOPS',20000,'50000000','2022-01-09 02:01:00','2022-01-09 02:02:05','Bekerja','Rekayasa Perangkat Lunak','PUBLISED');
/*!40000 ALTER TABLE `alumnis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asal_sekolahs`
--

DROP TABLE IF EXISTS `asal_sekolahs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asal_sekolahs` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `npsn_sekolah` int DEFAULT NULL,
  `nama_sekolah` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat_sekolah` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `asal_sekolahs_npsn_sekolah_unique` (`npsn_sekolah`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asal_sekolahs`
--

LOCK TABLES `asal_sekolahs` WRITE;
/*!40000 ALTER TABLE `asal_sekolahs` DISABLE KEYS */;
INSERT INTO `asal_sekolahs` VALUES (2,20210836,'SMP Y 17 CIBALONG','Jl.Raya Karangnunggal no. 205','2021-11-13 14:42:08','2021-11-13 14:42:08'),(3,20210828,'SMA Yeoil','YOungdengpou','2021-11-14 02:34:11','2021-11-14 02:34:11'),(4,20253545,'SMP Taruna Bhakti','JL.Pekapuran Gas alam','2021-11-14 02:34:36','2021-11-14 02:34:36');
/*!40000 ALTER TABLE `asal_sekolahs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `backgrounds`
--

DROP TABLE IF EXISTS `backgrounds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `backgrounds` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `heading` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subheading` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backgrounds`
--

LOCK TABLES `backgrounds` WRITE;
/*!40000 ALTER TABLE `backgrounds` DISABLE KEYS */;
INSERT INTO `backgrounds` VALUES (1,'backgrounds/October2021/4R8xylilxvH8nslg6Fv7.jpg','SMK Pusat Keunggulan','Our Quality Ask Be DIfferent','2021-10-18 07:13:00','2022-01-07 10:23:56'),(2,'backgrounds/October2021/Q8qhZwqARLNYr4m4HtuM.jpg','SMK Pusat Keunggulan','Our Quality Ask Be DIfferent','2021-10-18 07:13:00','2021-10-18 07:13:48'),(3,'backgrounds/October2021/BGuTRG5AB0w9TeVtDIee.jpg','SMK Pusat Keunggulan','Our Quality Ask Be DIfferent','2021-10-18 07:13:27','2021-10-18 07:13:27');
/*!40000 ALTER TABLE `backgrounds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calon_siswa`
--

DROP TABLE IF EXISTS `calon_siswa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `calon_siswa` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `no_daftar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jurusan_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jurusan_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jurusan_3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `nik` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nisn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_telpon_rumah` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gugus_id` int DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_lengkap` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_kartu_keluarga` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_reg_akta_kelahiran` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tempat_lahir` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `rt` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rw` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_pos` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dusun` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desa_kelurahan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kecamatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kabupaten` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tempat_tinggal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transportasi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `punya_kip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_kip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_kip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_telpon` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail_privasi_casis_id` int NOT NULL,
  `asal_sekolah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_peserta_un` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_seri_ijazah` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_seri_skhun` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orangtua_wali_casis_id` int DEFAULT NULL,
  `prestasi_casis_id` int DEFAULT NULL,
  `referal_code_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `calon_siswa_detail_privasi_casis_id_unique` (`detail_privasi_casis_id`),
  UNIQUE KEY `calon_siswa_nisn_unique` (`nisn`),
  UNIQUE KEY `calon_siswa_orangtua_wali_casis_id_unique` (`orangtua_wali_casis_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calon_siswa`
--

LOCK TABLES `calon_siswa` WRITE;
/*!40000 ALTER TABLE `calon_siswa` DISABLE KEYS */;
INSERT INTO `calon_siswa` VALUES (1,NULL,'53','53','53',NULL,'9999999999','9999999999','Islam','awdwad','02123423',NULL,'Terdaftar','sVit Mineral','Laki-laki','9999999999','9999999999','gunung kiduls','2021-11-23','06','07','16453','dusun','curug','cimanggis','depok','Bersama Orang Tua','Jalan Kaki',NULL,NULL,NULL,'08121311226','vit.500000@gmail.com',15,'SMP Y 17 CIBALONG','82','8323232','823823',15,15,1,'2022-01-06 18:10:18','2022-01-06 18:13:00'),(3,NULL,'53','54','55',NULL,'87878788878','87878788878','Kristen Protestan','alamat jakarta 2',NULL,NULL,'Terdaftar','tribes','Laki-laki','87878788878','87878788878','jakarta','2021-11-25','09','08','16453','dusun','curug','cimanggis','depok','Kost','Angkutan Umum',NULL,NULL,NULL,NULL,'tribes@gmail.com',29,'SMP Darusalam','9292','9292','9292',29,26,NULL,'2022-01-06 18:10:18','2022-01-06 18:13:00'),(5,NULL,'53','54','56',NULL,'876876876','876876876','Islam','kp baru','02123423',2,'Terdaftar','andro','Laki-laki','872398129','872398129','jakarta','2021-12-10','08','08','16453','dusun','curug','cimanggis','depok','Bersama Orang Tua','Jalan Kaki',NULL,NULL,NULL,'08 121-311-226','teh@gmail.com',31,'SMP Darusalam',NULL,NULL,NULL,31,28,1,'2022-01-06 18:10:18','2022-01-06 18:13:00'),(6,NULL,'53','53','53',NULL,'321321321','321321321','Islam','depok',NULL,NULL,'Terdaftar','loke','Laki-laki','321321321','321321321','jakarta','2022-01-11','06','07','16453','dusun','curug','cimanggis','depok','Bersama Orang Tua','Sepeda Motor',NULL,NULL,NULL,NULL,'loke@gmail.com',34,'SMP Taruna Bhakti','82','8323232','823823',34,31,NULL,'2022-01-06 18:10:18','2022-01-06 18:13:00'),(8,NULL,'53','53','55',NULL,'81818181','81818181','Islam','jakarta',NULL,2,'Terdaftar','adit','Laki-laki','81818181','81818181','jakarta selatan','2021-12-03','09','01','16452','dusun','curug','cimanggis','depok','Bersama Orang Tua','Angkutan Umum',NULL,NULL,NULL,NULL,'adit@gmail.com',33,'SMP wadw',NULL,NULL,NULL,33,30,NULL,'2022-01-06 18:10:18','2022-01-06 18:13:00'),(10,NULL,'53','54','57',NULL,'987987987','987987987','Katolik','awd',NULL,NULL,'Terdaftar','android','Laki-laki','987987987','987987987','dkowkd','2022-01-27','09','09','0812','awdaw','awda','awda','adwada','Bersama Orang Tua','Angkutan Umum',NULL,NULL,NULL,NULL,'android@gmail.com',36,'SMP Darusalam','82','8323232','823823',36,33,NULL,'2022-01-06 18:46:13','2022-01-06 18:46:13'),(11,NULL,'53','54','54',NULL,'23423423423','23423423423','Islam','asdawdaw','911',NULL,'Terdaftar','Pantura Raya','Laki-laki','23423423423','23423423423','saawd','2022-01-21','06','07','16452','dusun','adawd','awd','awd','Bersama Orang Tua','Mobil Pribadi','Ya','9284938','Pantura Raya','08121311226','pantura@gmail.com',39,'SMP Darusalam','82','8323232','823823',38,34,NULL,'2022-01-06 18:50:45','2022-02-17 15:05:31'),(12,NULL,'55','53','54',NULL,'712318929','712318929','Katolik','jl gang nangka',NULL,NULL,'Terdaftar','Alex','Laki-laki','712318929','712318929','bumi','2022-02-24','06','08','16333','dusun','curug','mekarsari','depok','Bersama Wali','Sepeda Motor',NULL,NULL,NULL,NULL,'alex@gmail.com',40,'Pekanbaru',NULL,NULL,NULL,39,35,NULL,'2022-02-26 01:35:27','2022-02-26 01:35:27'),(13,NULL,'55','54','53',NULL,'232288238823','232288238823','Hindu','jl gang nangka',NULL,NULL,'Terdaftar','Cozy','Laki-laki','232288238823','232288238823','Bojong gede','2022-02-26','07','07','16323','dusun','curug','mekarsari','depok','Bersama Orang Tua','Sepeda Motor',NULL,NULL,NULL,NULL,'cozy@gmail.com',41,'SMP Yapem',NULL,NULL,NULL,40,36,NULL,'2022-02-26 01:50:35','2022-02-26 01:50:35'),(14,NULL,'54','54','57',NULL,'242123','242123','Buddha','awdawd',NULL,NULL,'Terdaftar','Eko','Laki-laki','242123','242123','wda','2022-02-26','06','07','16452','dusun','curug','mekarsari','depok','Bersama Wali','Ojek',NULL,NULL,NULL,NULL,'eko@gmail.com',42,'SMP Darusalams',NULL,NULL,NULL,41,37,NULL,'2022-02-26 01:57:00','2022-02-26 01:57:00'),(15,NULL,'54','55','57',NULL,'112112121','112112121','Kristen Protestan','jln gangnangka',NULL,NULL,'Terdaftar','sasuke','Laki-laki','112112121','112112121','jakarta','2022-02-03','09','08','16453','dusun','curug','cimanggis','wdwd','Bersama Orang Tua','Sepeda Motor',NULL,NULL,NULL,NULL,'sasuke@gmail.com',44,'SMP TUgu ibu 2',NULL,NULL,NULL,43,39,NULL,'2022-02-26 02:01:36','2022-02-26 02:01:36'),(16,NULL,'53','54','55',NULL,'23422300004','23422300004','Katolik','jln brigif',NULL,NULL,'Terdaftar','Messi','Laki-laki','23422300004','23422300004','Bandung','2022-02-26','06','04','16222','dusun','curug','mekarsari','depok','Bersama Wali','Angkutan Umum',NULL,NULL,NULL,NULL,'messi@gmail.com',45,'SMP Taruna Bhakti',NULL,NULL,NULL,44,40,7,'2022-02-26 02:08:34','2022-02-26 02:08:34'),(17,NULL,'53','54','56',NULL,'22262373137','22262373137','Katolik','jl gas alam kp baru',NULL,1,'Terdaftar','Naruto Uzumaki','Laki-laki','22262373137','22262373137','gunung Broo','2022-02-26','06','04','15222','dusun','muarai','mekarsari','Bandung','Bersama Wali','Sepeda Motor',NULL,NULL,NULL,NULL,'naruto@gmail.com',46,'SMP chunin',NULL,NULL,NULL,45,41,8,'2022-02-26 02:19:21','2022-02-26 02:29:03');
/*!40000 ALTER TABLE `calon_siswa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int unsigned DEFAULT NULL,
  `order` int NOT NULL DEFAULT '1',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_slug_unique` (`slug`),
  KEY `categories_parent_id_foreign` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (3,NULL,1,'Kesiswaan','kesiswaan','2021-09-24 05:20:14','2021-09-24 18:03:56'),(4,NULL,1,'Hubungan Industri','hubungan-industri','2021-09-24 05:20:36','2021-09-24 05:20:36'),(5,NULL,1,'Kurikulum','kurikulum','2021-09-24 05:20:53','2021-09-24 05:20:53'),(6,NULL,1,'Sarana Prasarana','sarana-prasarana','2021-09-24 05:21:06','2021-09-24 05:21:06'),(7,NULL,1,'Profile','profile','2021-09-25 17:24:45','2021-09-25 17:24:45'),(8,NULL,1,'Home','home','2021-10-06 07:17:29','2021-10-06 07:17:29'),(9,NULL,1,'News Home','news-home','2021-10-14 12:53:57','2021-10-14 12:53:57');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_alumnis`
--

DROP TABLE IF EXISTS `categories_alumnis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories_alumnis` (
  `id` int unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_alumnis`
--

LOCK TABLES `categories_alumnis` WRITE;
/*!40000 ALTER TABLE `categories_alumnis` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories_alumnis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `content_ekskuls`
--

DROP TABLE IF EXISTS `content_ekskuls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `content_ekskuls` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci,
  `eskul` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `content_ekskuls`
--

LOCK TABLES `content_ekskuls` WRITE;
/*!40000 ALTER TABLE `content_ekskuls` DISABLE KEYS */;
INSERT INTO `content_ekskuls` VALUES (3,'1','ini VOlley','1','2022-01-09 09:10:00','2022-01-09 09:15:34');
/*!40000 ALTER TABLE `content_ekskuls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `content_jurusans`
--

DROP TABLE IF EXISTS `content_jurusans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `content_jurusans` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `jurusan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `content_jurusans`
--

LOCK TABLES `content_jurusans` WRITE;
/*!40000 ALTER TABLE `content_jurusans` DISABLE KEYS */;
INSERT INTO `content_jurusans` VALUES (3,'1','TKJ','2022-01-09 09:02:00','2022-01-09 09:04:50','1'),(4,'2','TKJ2','2022-01-09 09:04:35','2022-01-09 09:04:35','1');
/*!40000 ALTER TABLE `content_jurusans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `content_sarpras`
--

DROP TABLE IF EXISTS `content_sarpras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `content_sarpras` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `category_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `content_sarpras`
--

LOCK TABLES `content_sarpras` WRITE;
/*!40000 ALTER TABLE `content_sarpras` DISABLE KEYS */;
INSERT INTO `content_sarpras` VALUES (1,'Ruang Kelas','<p><span style=\"color: #212529; font-family: \'Open Sans\', sans-serif; font-size: 16px;\">SMK Taruna Bhakti memilki ruang kelas dengan penjelasan sebagai berikut:</span></p>\r\n<ol style=\"box-sizing: border-box; padding-left: 2rem; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: \'Open Sans\', sans-serif; font-size: 16px;\">\r\n<li style=\"box-sizing: border-box;\">Jumlah Ruang Kelas : 32</li>\r\n<li style=\"box-sizing: border-box;\">Rata-rata ukuran kelas : 8 x 8 m = 64 m<span style=\"box-sizing: border-box; position: relative; font-size: 0.75em; line-height: 0; vertical-align: baseline; top: -0.5em;\">2</span></li>\r\n</ol>','36','2021-10-06 15:01:00','2021-10-17 08:42:51'),(2,'Laboratorium Bahasa','<p><span style=\"color: #212529; font-family: \'Open Sans\', sans-serif; font-size: 16px;\">SMK Taruna Bhakti memiliki 2 Laboratorium Bahasa yang berada pada gedung bagian Timur lantai 3. Di dalam Lab. Bahasa masing-masing memiliki seperangkat peralatan audio video untuk kegiatan pembelajaran Bahasa dengan kapasitas 20 siswa dengan masing-masing siswa menempati 1 meja multimedia.</span></p>','36','2021-10-06 15:02:00','2021-10-17 08:42:32'),(3,'Perpustakaan','<p><span style=\"color: #212529; font-family: \'Open Sans\', sans-serif; font-size: 16px;\">SMK Taruna Bhakti Depok memiliki Ruang Perpustakaan dengan luas ruangan : 8 m X 4 m = 32 m2 Letak perpustakaan berada pada lantai 3 gedung bagian Barat yang diapit oleh Laboratorium RPL Medium dan MM Advance. Terdapat 3 lemari besar 1 rak buku terbuat dari besi dan 2 rak kayu besar menjulang tinggi yang berisi ratusan buku dengan berbagai macam judul dan tema.</span></p>','36','2021-10-06 15:03:00','2021-10-17 08:42:09'),(4,'Teknik Komputer dan Jaringan','<p><span style=\"color: #212529; font-family: \'Open Sans\', sans-serif; font-size: 16px;\">Jurusan Teknik Komputer dan jaringan (TKJ) SMK Taruna Bhakti Depok memiliki 3 laboratorium yaitu Laboratorium Network dan Laboratorium Network Advance.</span></p>','37','2021-10-06 15:04:00','2021-10-17 08:41:46'),(5,'Multimedia','<p><span style=\"color: #212529; font-family: \'Open Sans\', sans-serif; font-size: 16px;\">Jurusan Multimedia (MM) SMK Taruna Bhakti Depok memiliki 2 laboratorium yaitu Laboratorium MM Medium dan Laboratorium MM Advance. Kedua laboratorium ini berada pada lantai yang sama tetapi dipisah oleh Laboratorium RPL Advance dan Ruang Perpustakaan. Uniknya di laboratorium ini adalah pada bagian dindingnya, dimana siswa jurusan Multimedia diberikan tantangan untuk mendesain dinding kedua ruangan tersebut dengan desain 3D.</span></p>','37','2021-10-06 15:05:00','2021-10-17 08:41:26'),(6,'Rekayasa Perangkat Lunak','<p><span style=\"color: #212529; font-family: \'Open Sans\', sans-serif; font-size: 16px;\">Jurusan Rekayasa Perangkat Lunak (RPL) SMK Taruna Bhakti Depok memiliki 2 laboratorium yaitu Laboratorium RPL Medium dan Laboratorium RPL Advance. Laboratorium RPL Medium berada pada lantai 4 berdekatan dengan Laboratorium Teknik Elektronika Industri. Sedangkan Laboratorium RPL Advance berapa pada lantai 3 berdekatan dengan Ruang Perpustakaan dan Laboratorium MM Medium.</span></p>','37','2021-10-06 15:06:00','2021-10-17 08:40:19'),(7,'Broadcasting','<p><span style=\"color: #212529; font-family: \'Open Sans\', sans-serif; font-size: 16px;\">Jurusan Broadcasting SMK Taruna Bhakti memiliki satu Laboratorium dan satu Studio Broadcast. Laboratorium Broadcasting berada pada Gedung bagian Barat lantai satu yang bersebelahan dengan Ruang Kelompok Kerja Kurikulum. Sedangkan Studio Broadcast berada pada Gedung Timur lantai 2 yang berdekatan dengan Laboratorium Simdig. Studio Broadcast ini juga dapat digunakan oleh siswa dari jurusan Multimedia.</span></p>','37','2021-10-06 15:06:00','2021-10-17 08:40:58'),(8,'Teknik Elektronika Industri','<p><span style=\"color: #212529; font-family: \'Open Sans\', sans-serif; font-size: 16px;\">Jurusan Teknik Elektronika Industri (TEI) SMK Taruna Bhakti Depok memiliki 1 Laboratorium yang diberi nama sama dengan jurusannya yaitu Laboratorium Teknik Elektronika Industri yang berada pada lantai 4 berdekatan dengan Laboratorium RPL Advance dan Ruang Kelas 18.</span></p>','37','2021-10-06 15:07:00','2021-10-17 08:40:00'),(9,'Fasilitas Parkir','<p><span style=\"font-family: \'Open Sans\', sans-serif; font-size: 16px;\">Fasilitas Parkir Kendaraan Siswa</span></p>','38','2021-10-06 15:19:00','2021-10-17 08:39:40'),(10,'Mushola Raudhotul Ilmi','<p><span style=\"font-family: \'Open Sans\', sans-serif; font-size: 16px;\">Fasilitas pendukung ini difungsikan selain sebagai Ruang belajar mata pelajaran Pendidikan Agama dan Budi Pekerti, difungsikan juga sebagai tempat ibadah (Musholla).Ruangan ini dapat menampung kurang lebih 120 siswa.</span></p>','39','2021-10-06 15:20:00','2021-10-17 08:39:08'),(11,'Gedung Sekolah','<p><span style=\"color: #212529; font-family: \'Open Sans\', sans-serif; font-size: 16px;\">SMK Taruna Bhakti memiliki Gedung milik sendiri dengan luas lantai bangungan sebesar 3.651 m&sup2; terdiri dari empat lantai</span></p>','40','2021-10-06 15:21:00','2021-10-17 08:38:45'),(12,'Server SMK Taruna Bhakti','<p><span style=\"color: #212529; font-family: \'Open Sans\', sans-serif; font-size: 16px;\">SMK Taruna Bhakti memiliki Server yang dipergunakan untuk menyimpan data elektronik berupa Sistem Informasi Manajemen Sekolah. Perangkat server ini terdapat di ruangan yang berada pada lantai 2 diapit oleh Laboratorium Network dan Laboratorium ACP. Luas Ruang Server adalah 96 m&sup2; yang terdiri dari dua ruang yang saling terhubung satu sama lain.</span></p>','40','2021-10-06 15:21:00','2021-10-17 08:38:20'),(13,'Taman Sekolah','<p><span style=\"color: #212529; font-family: \'Open Sans\', sans-serif; font-size: 16px;\">Sekolah berwawasan lingkungan, itulah yang diusung oleh SMK Taruna Bhakti. Sehingga terdapat taman-taman disetiap sudut sekolah.</span></p>','40','2021-10-06 15:22:00','2021-10-17 08:37:47'),(14,'Pendopo','<p><span style=\"color: #212529; font-family: \'Open Sans\', sans-serif; font-size: 16px;\">SMK Taruna Bhakti memiliki ruang penerima tamu yang mengosong konsep Joglo. Konsep terbuka sengaja diusung agar tamu yang datang ke SMK Taruna Bhakti dapat dengan nyaman menikmati taman dan kicauan burung, sehingga membuat perasaan menjadi tenang.</span></p>','40','2021-10-06 15:22:00','2021-10-17 08:36:54'),(15,'Sarana dan Prasarana Sekolah','<p class=\"mt-5\">Laboratorium Komputer dan Ruangan Terdiri dari :</p>\r\n<ol>\r\n<li>Lab Network Advance</li>\r\n<li>Lab Network</li>\r\n<li>Lab Maintenance and Repair</li>\r\n<li>Lab Simulasi Digital</li>\r\n<li>Lab Axioo Class Program</li>\r\n<li>Lab Multimedia Medium</li>\r\n<li>Lab Multimedia Advance</li>\r\n<li>Lab Pemrograman Basic</li>\r\n<li>Lab Pemrograman Advance</li>\r\n<li>Lab Bahasa Inggris</li>\r\n<li>Lab Video dan Audio Editing</li>\r\n<li>Studio Mini Penyiaran TV</li>\r\n<li>Ruang Server dan Fasilitas lainnya</li>\r\n</ol>\r\n<p>Lingkungan sekolah yang asri dan nyaman jauh dari bising, mudah terjangkau oleh siswa/i dari <br />berbagai jurusan dengan kendaraan umum.</p>\r\n<p>Memiliki kantin dengan konsep cafetaria yang bersih, rapi serta nyaman dengan variasi makanan dan <br />minuman yang sehat, agar terjaga kesehatan dari siswa/i.</p>\r\n<p>Seluruh ruangan sekolah terjangkau dari Zona Hotspot yang di support oleh :</p>\r\n<ol>\r\n<li>Wifi id (Telkom) dengan jaringan Fiber Optik 100 Mbps</li>\r\n<li>Biznet dengan jaringan Fiber Optik 20 Mbps Dedicated 1:1</li>\r\n<li>Varnion Techology Jaringan wireless 2 Mbps</li>\r\n</ol>','35','2021-10-11 00:37:00','2021-10-17 08:36:24'),(16,'Samsung',NULL,'35','2021-10-11 00:46:00','2021-10-17 08:35:47');
/*!40000 ALTER TABLE `content_sarpras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contents`
--

DROP TABLE IF EXISTS `contents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contents` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `sub_menu` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contents`
--

LOCK TABLES `contents` WRITE;
/*!40000 ALTER TABLE `contents` DISABLE KEYS */;
INSERT INTO `contents` VALUES (1,'Struktur Kurikulum SMK Taruna Bhakti','<div class=\"mt-5\">\r\n<p style=\"text-align: center;\"><span style=\"font-size: 18pt;\">STRUKTUR KURIKULUM</span></p>\r\n<p style=\"text-align: center;\"><span style=\"font-size: 18pt;\">SMK TARUNA BHAKTI </span></p>\r\n<p>&nbsp;</p>\r\n<p>BIDANG KEAHIAN : TEKNOLOGI INFORMASI DAN KOMUNIKASI</p>\r\n<p>PROGRAM KEAHLIAN : TEKNIK KOMPUTER DAN INFORMATIKA</p>\r\n<p>PAKET KEAHLIAN : TEKNIK KOMPUTER DAN JARINGAN</p>\r\n<div class=\"kekanan\">\r\n<table class=\"table table-bordered\" style=\"width: 100%;\" border=\"1\" width=\"100%\"><caption>&nbsp;</caption>\r\n<tbody>\r\n<tr>\r\n<td class=\"text-center\" style=\"width: 397px;\" colspan=\"2\" rowspan=\"3\">MATA PELAJARAN</td>\r\n<td style=\"width: 292px;\" colspan=\"6\">KELAS</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 96px;\" colspan=\"2\">X</td>\r\n<td style=\"width: 96px;\" colspan=\"2\">XI</td>\r\n<td style=\"width: 96px;\" colspan=\"2\">XII</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 47px;\">1</td>\r\n<td style=\"width: 47px;\">2</td>\r\n<td style=\"width: 47px;\">1</td>\r\n<td style=\"width: 47px;\">2</td>\r\n<td style=\"width: 47px;\">1</td>\r\n<td style=\"width: 47px;\">2</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 691px;\" colspan=\"8\"><strong>Kelompok A</strong></td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 47px;\">1</td>\r\n<td style=\"width: 348px;\">Pendidikan Agama dan Budi Pekerti</td>\r\n<td style=\"width: 47px;\">3</td>\r\n<td style=\"width: 47px;\">3</td>\r\n<td style=\"width: 47px;\">3</td>\r\n<td style=\"width: 47px;\">3</td>\r\n<td style=\"width: 47px;\">3</td>\r\n<td style=\"width: 47px;\">3</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 47px;\">2</td>\r\n<td style=\"width: 348px;\">Pendidikan Pancasila dan Kewarganegaraan</td>\r\n<td style=\"width: 47px;\">2</td>\r\n<td style=\"width: 47px;\">2</td>\r\n<td style=\"width: 47px;\">2</td>\r\n<td style=\"width: 47px;\">2</td>\r\n<td style=\"width: 47px;\">2</td>\r\n<td style=\"width: 47px;\">2</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 47px;\">3</td>\r\n<td style=\"width: 348px;\">Bahasa Indonesia</td>\r\n<td style=\"width: 47px;\">3</td>\r\n<td style=\"width: 47px;\">3</td>\r\n<td style=\"width: 47px;\">3</td>\r\n<td style=\"width: 47px;\">3</td>\r\n<td style=\"width: 47px;\">2</td>\r\n<td style=\"width: 47px;\">2</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 47px;\">4</td>\r\n<td style=\"width: 348px;\">Matematika</td>\r\n<td style=\"width: 47px;\">4</td>\r\n<td style=\"width: 47px;\">4</td>\r\n<td style=\"width: 47px;\">4</td>\r\n<td style=\"width: 47px;\">4</td>\r\n<td style=\"width: 47px;\">4</td>\r\n<td style=\"width: 47px;\">4</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 47px;\">5</td>\r\n<td style=\"width: 348px;\">Sejarah Indonesia</td>\r\n<td style=\"width: 47px;\">2</td>\r\n<td style=\"width: 47px;\">2</td>\r\n<td style=\"width: 47px;\">2</td>\r\n<td style=\"width: 47px;\">2</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 47px;\">6</td>\r\n<td style=\"width: 348px;\">Bahasa Inggris</td>\r\n<td style=\"width: 47px;\">3</td>\r\n<td style=\"width: 47px;\">3</td>\r\n<td style=\"width: 47px;\">3</td>\r\n<td style=\"width: 47px;\">3</td>\r\n<td style=\"width: 47px;\">3</td>\r\n<td style=\"width: 47px;\">3</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 691px;\" colspan=\"8\"><strong>Kelompok B</strong></td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 47px;\">7</td>\r\n<td style=\"width: 348px;\">Seni Budaya</td>\r\n<td style=\"width: 47px;\">3</td>\r\n<td style=\"width: 47px;\">3</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 47px;\">8</td>\r\n<td style=\"width: 348px;\">Prakarya dan Kewirausahaan</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">2</td>\r\n<td style=\"width: 47px;\">2</td>\r\n<td style=\"width: 47px;\">2</td>\r\n<td style=\"width: 47px;\">2</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 47px;\">9</td>\r\n<td style=\"width: 348px;\">Pendidikan Jasmani, Olah Raga &amp; Kesehatan</td>\r\n<td style=\"width: 47px;\">2</td>\r\n<td style=\"width: 47px;\">2</td>\r\n<td style=\"width: 47px;\">2</td>\r\n<td style=\"width: 47px;\">2</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 397px;\" colspan=\"2\">Jumlah A Dan B</td>\r\n<td style=\"width: 47px;\">22</td>\r\n<td style=\"width: 47px;\">22</td>\r\n<td style=\"width: 47px;\">21</td>\r\n<td style=\"width: 47px;\">21</td>\r\n<td style=\"width: 47px;\">16</td>\r\n<td style=\"width: 47px;\">16</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 691px;\" colspan=\"8\"><strong>Kelompok C (Peminatan)</strong></td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 691px;\" colspan=\"8\"><strong>C1. Dasar Bidang Keahlian</strong></td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 47px;\">10</td>\r\n<td style=\"width: 348px;\">Simulasi Digital</td>\r\n<td style=\"width: 47px;\">3</td>\r\n<td style=\"width: 47px;\">3</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 47px;\">11</td>\r\n<td style=\"width: 348px;\">Fisika</td>\r\n<td style=\"width: 47px;\">4</td>\r\n<td style=\"width: 47px;\">4</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 47px;\">12</td>\r\n<td style=\"width: 348px;\">Sistem Komputer</td>\r\n<td style=\"width: 47px;\">4</td>\r\n<td style=\"width: 47px;\">4</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 691px;\" colspan=\"8\"><strong>C2. Dasar Program Keahlian</strong></td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 47px;\">13</td>\r\n<td style=\"width: 348px;\">Komputer dan Jaringan Dasar</td>\r\n<td style=\"width: 47px;\">10</td>\r\n<td style=\"width: 47px;\">10</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 47px;\">14</td>\r\n<td style=\"width: 348px;\">Pemrograman Dasar</td>\r\n<td style=\"width: 47px;\">3</td>\r\n<td style=\"width: 47px;\">3</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 47px;\">15</td>\r\n<td style=\"width: 348px;\">Dasar Design Grafis</td>\r\n<td style=\"width: 47px;\">2</td>\r\n<td style=\"width: 47px;\">2</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 691px;\" colspan=\"8\"><strong>C3. Paket Keahlian</strong></td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 47px;\">16</td>\r\n<td style=\"width: 348px;\">Teknologi Infrastruktur Jaringan</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">8</td>\r\n<td style=\"width: 47px;\">8</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 47px;\">17</td>\r\n<td style=\"width: 348px;\">Rancang Bangun Jaringan</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">8</td>\r\n<td style=\"width: 47px;\">8</td>\r\n<td style=\"width: 47px;\">9</td>\r\n<td style=\"width: 47px;\">9</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 47px;\">18</td>\r\n<td style=\"width: 348px;\">Administrasi Server dan Keamanan Jaringan</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">8</td>\r\n<td style=\"width: 47px;\">8</td>\r\n<td style=\"width: 47px;\">10</td>\r\n<td style=\"width: 47px;\">10</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 47px;\">19</td>\r\n<td style=\"width: 348px;\">Teknologi Layanan Jaringan</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">10</td>\r\n<td style=\"width: 47px;\">10</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 47px;\">20</td>\r\n<td style=\"width: 348px;\">Pengembangan Produk Kreatif</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">&ndash;</td>\r\n<td style=\"width: 47px;\">3</td>\r\n<td style=\"width: 47px;\">3</td>\r\n<td style=\"width: 47px;\">3</td>\r\n<td style=\"width: 47px;\">3</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 397px;\" colspan=\"2\">Jumlah C1, C2 Dan C3</td>\r\n<td style=\"width: 47px;\">26</td>\r\n<td style=\"width: 47px;\">26</td>\r\n<td style=\"width: 47px;\">27</td>\r\n<td style=\"width: 47px;\">27</td>\r\n<td style=\"width: 47px;\">32</td>\r\n<td style=\"width: 47px;\">32</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 397px;\" colspan=\"2\"><strong>TOTAL</strong></td>\r\n<td style=\"width: 47px;\"><strong>48</strong></td>\r\n<td style=\"width: 47px;\"><strong>48</strong></td>\r\n<td style=\"width: 47px;\"><strong>48</strong></td>\r\n<td style=\"width: 47px;\"><strong>48</strong></td>\r\n<td style=\"width: 47px;\"><strong>48</strong></td>\r\n<td style=\"width: 47px;\"><strong>48</strong></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<p>&nbsp;</p>\r\n<p>BIDANG KEAHLIAN : TEKNOLOGI INFORMASI DAN KOMUNIKASI</p>\r\n<p>PROGRAM KEAHLIAN : TEKNIK KOMPUTER DAN INFORMATIKA</p>\r\n<p>PAKET KEAHLIAN : MULTIMEDIA</p>\r\n<div class=\"kekanan\">\r\n<table class=\"table table-bordered\" style=\"width: 100%; height: 1056px;\" border=\"1\" width=\"100%\"><caption>&nbsp;</caption>\r\n<tbody>\r\n<tr style=\"height: 33px;\">\r\n<td class=\"text-center\" style=\"width: 397px; height: 99px;\" colspan=\"2\" rowspan=\"3\">MATA PELAJARAN</td>\r\n<td style=\"width: 292px; height: 33px;\" colspan=\"6\">KELAS</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 96px; height: 33px;\" colspan=\"2\">X</td>\r\n<td style=\"width: 96px; height: 33px;\" colspan=\"2\">XI</td>\r\n<td style=\"width: 96px; height: 33px;\" colspan=\"2\">XII</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 47px; height: 33px;\">1</td>\r\n<td style=\"width: 47px; height: 33px;\">2</td>\r\n<td style=\"width: 47px; height: 33px;\">1</td>\r\n<td style=\"width: 47px; height: 33px;\">2</td>\r\n<td style=\"width: 47px; height: 33px;\">1</td>\r\n<td style=\"width: 47px; height: 33px;\">2</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 691px; height: 33px;\" colspan=\"8\"><strong>Kelompok A</strong></td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 47px; height: 33px;\">1</td>\r\n<td style=\"width: 348px; height: 33px;\">Pendidikan Agama dan Budi Pekerti</td>\r\n<td style=\"width: 47px; height: 33px;\">3</td>\r\n<td style=\"width: 47px; height: 33px;\">3</td>\r\n<td style=\"width: 47px; height: 33px;\">3</td>\r\n<td style=\"width: 47px; height: 33px;\">3</td>\r\n<td style=\"width: 47px; height: 33px;\">3</td>\r\n<td style=\"width: 47px; height: 33px;\">3</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 47px; height: 33px;\">2</td>\r\n<td style=\"width: 348px; height: 33px;\">Pendidikan Pancasila dan Kewarganegaraan</td>\r\n<td style=\"width: 47px; height: 33px;\">2</td>\r\n<td style=\"width: 47px; height: 33px;\">2</td>\r\n<td style=\"width: 47px; height: 33px;\">2</td>\r\n<td style=\"width: 47px; height: 33px;\">2</td>\r\n<td style=\"width: 47px; height: 33px;\">2</td>\r\n<td style=\"width: 47px; height: 33px;\">2</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 47px; height: 33px;\">3</td>\r\n<td style=\"width: 348px; height: 33px;\">Bahasa Indonesia</td>\r\n<td style=\"width: 47px; height: 33px;\">3</td>\r\n<td style=\"width: 47px; height: 33px;\">3</td>\r\n<td style=\"width: 47px; height: 33px;\">3</td>\r\n<td style=\"width: 47px; height: 33px;\">3</td>\r\n<td style=\"width: 47px; height: 33px;\">2</td>\r\n<td style=\"width: 47px; height: 33px;\">2</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 47px; height: 33px;\">4</td>\r\n<td style=\"width: 348px; height: 33px;\">Matematika</td>\r\n<td style=\"width: 47px; height: 33px;\">4</td>\r\n<td style=\"width: 47px; height: 33px;\">4</td>\r\n<td style=\"width: 47px; height: 33px;\">4</td>\r\n<td style=\"width: 47px; height: 33px;\">4</td>\r\n<td style=\"width: 47px; height: 33px;\">4</td>\r\n<td style=\"width: 47px; height: 33px;\">4</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 47px; height: 33px;\">5</td>\r\n<td style=\"width: 348px; height: 33px;\">Sejarah Indonesia</td>\r\n<td style=\"width: 47px; height: 33px;\">2</td>\r\n<td style=\"width: 47px; height: 33px;\">2</td>\r\n<td style=\"width: 47px; height: 33px;\">2</td>\r\n<td style=\"width: 47px; height: 33px;\">2</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 47px; height: 33px;\">6</td>\r\n<td style=\"width: 348px; height: 33px;\">Bahasa Inggris</td>\r\n<td style=\"width: 47px; height: 33px;\">3</td>\r\n<td style=\"width: 47px; height: 33px;\">3</td>\r\n<td style=\"width: 47px; height: 33px;\">3</td>\r\n<td style=\"width: 47px; height: 33px;\">3</td>\r\n<td style=\"width: 47px; height: 33px;\">3</td>\r\n<td style=\"width: 47px; height: 33px;\">3</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 691px; height: 33px;\" colspan=\"8\"><strong>Kelompok B</strong></td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 47px; height: 33px;\">7</td>\r\n<td style=\"width: 348px; height: 33px;\">Seni Budaya</td>\r\n<td style=\"width: 47px; height: 33px;\">3</td>\r\n<td style=\"width: 47px; height: 33px;\">3</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 47px; height: 33px;\">8</td>\r\n<td style=\"width: 348px; height: 33px;\">Prakarya dan Kewirausahaan</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n<td style=\"width: 47px; height: 33px;\">2</td>\r\n<td style=\"width: 47px; height: 33px;\">2</td>\r\n<td style=\"width: 47px; height: 33px;\">2</td>\r\n<td style=\"width: 47px; height: 33px;\">2</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 47px; height: 33px;\">9</td>\r\n<td style=\"width: 348px; height: 33px;\">Pendidikan Jasmani, Olah Raga &amp; Kesehatan</td>\r\n<td style=\"width: 47px; height: 33px;\">2</td>\r\n<td style=\"width: 47px; height: 33px;\">2</td>\r\n<td style=\"width: 47px; height: 33px;\">2</td>\r\n<td style=\"width: 47px; height: 33px;\">2</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 397px; height: 33px;\" colspan=\"2\">Jumlah A Dan B</td>\r\n<td style=\"width: 47px; height: 33px;\">22</td>\r\n<td style=\"width: 47px; height: 33px;\">22</td>\r\n<td style=\"width: 47px; height: 33px;\">21</td>\r\n<td style=\"width: 47px; height: 33px;\">21</td>\r\n<td style=\"width: 47px; height: 33px;\">16</td>\r\n<td style=\"width: 47px; height: 33px;\">16</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 691px; height: 33px;\" colspan=\"8\"><strong>Kelompok C (Peminatan)</strong></td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 691px; height: 33px;\" colspan=\"8\"><strong>C1. Dasar Bidang Keahlian</strong></td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 47px; height: 33px;\">10</td>\r\n<td style=\"width: 348px; height: 33px;\">Simulasi Digital</td>\r\n<td style=\"width: 47px; height: 33px;\">3</td>\r\n<td style=\"width: 47px; height: 33px;\">3</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 47px; height: 33px;\">11</td>\r\n<td style=\"width: 348px; height: 33px;\">Fisika</td>\r\n<td style=\"width: 47px; height: 33px;\">4</td>\r\n<td style=\"width: 47px; height: 33px;\">4</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 47px; height: 33px;\">12</td>\r\n<td style=\"width: 348px; height: 33px;\">Sistem Komputer</td>\r\n<td style=\"width: 47px; height: 33px;\">4</td>\r\n<td style=\"width: 47px; height: 33px;\">4</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 691px; height: 33px;\" colspan=\"8\"><strong>C2. Dasar Program Keahlian</strong></td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 47px; height: 33px;\">13</td>\r\n<td style=\"width: 348px; height: 33px;\">Perakitan Komputer dan Sistem Operasi</td>\r\n<td style=\"width: 47px; height: 33px;\">4</td>\r\n<td style=\"width: 47px; height: 33px;\">4</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 47px; height: 33px;\">14</td>\r\n<td style=\"width: 348px; height: 33px;\">Pemrograman Dasar</td>\r\n<td style=\"width: 47px; height: 33px;\">4</td>\r\n<td style=\"width: 47px; height: 33px;\">4</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 47px; height: 33px;\">15</td>\r\n<td style=\"width: 348px; height: 33px;\">Dasar Desain Grafis</td>\r\n<td style=\"width: 47px; height: 33px;\">7</td>\r\n<td style=\"width: 47px; height: 33px;\">7</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 691px; height: 33px;\" colspan=\"8\"><strong>C3. Paket Keahlian</strong></td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 47px; height: 33px;\">16</td>\r\n<td style=\"width: 348px; height: 33px;\">Pengantar Multimedia</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n<td style=\"width: 47px; height: 33px;\">6</td>\r\n<td style=\"width: 47px; height: 33px;\">6</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 47px; height: 33px;\">17</td>\r\n<td style=\"width: 348px; height: 33px;\">Teknik Pengolahan Audio Video</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n<td style=\"width: 47px; height: 33px;\">6</td>\r\n<td style=\"width: 47px; height: 33px;\">6</td>\r\n<td style=\"width: 47px; height: 33px;\">12</td>\r\n<td style=\"width: 47px; height: 33px;\">12</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 47px; height: 33px;\">18</td>\r\n<td style=\"width: 348px; height: 33px;\">Teknik Animasi 2D &amp; 3D</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n<td style=\"width: 47px; height: 33px;\">6</td>\r\n<td style=\"width: 47px; height: 33px;\">6</td>\r\n<td style=\"width: 47px; height: 33px;\">8</td>\r\n<td style=\"width: 47px; height: 33px;\">8</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 47px; height: 33px;\">19</td>\r\n<td style=\"width: 348px; height: 33px;\">Desain Media Interaktif</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n<td style=\"width: 47px; height: 33px;\">6</td>\r\n<td style=\"width: 47px; height: 33px;\">6</td>\r\n<td style=\"width: 47px; height: 33px;\">9</td>\r\n<td style=\"width: 47px; height: 33px;\">9</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 47px; height: 33px;\">20</td>\r\n<td style=\"width: 348px; height: 33px;\">Pengembangan Produk Kreatif</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n<td style=\"width: 47px; height: 33px;\">&ndash;</td>\r\n<td style=\"width: 47px; height: 33px;\">3</td>\r\n<td style=\"width: 47px; height: 33px;\">3</td>\r\n<td style=\"width: 47px; height: 33px;\">3</td>\r\n<td style=\"width: 47px; height: 33px;\">3</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 397px; height: 33px;\" colspan=\"2\">Jumlah C1, C2,Dan C3</td>\r\n<td style=\"width: 47px; height: 33px;\">26</td>\r\n<td style=\"width: 47px; height: 33px;\">26</td>\r\n<td style=\"width: 47px; height: 33px;\">27</td>\r\n<td style=\"width: 47px; height: 33px;\">27</td>\r\n<td style=\"width: 47px; height: 33px;\">32</td>\r\n<td style=\"width: 47px; height: 33px;\">32</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 397px; height: 33px;\" colspan=\"2\"><strong>TOTAL</strong></td>\r\n<td style=\"width: 47px; height: 33px;\">48</td>\r\n<td style=\"width: 47px; height: 33px;\">48</td>\r\n<td style=\"width: 47px; height: 33px;\">48</td>\r\n<td style=\"width: 47px; height: 33px;\">48</td>\r\n<td style=\"width: 47px; height: 33px;\">48</td>\r\n<td style=\"width: 47px; height: 33px;\">48</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<p>&nbsp;</p>\r\n<p>BIDANG KEAHIAN : TEKNOLOGI INFORMASI DAN KOMUNIKASI</p>\r\n<p>PROGRAM KEAHLIAN : TEKNIK KOMPUTER DAN INFORMATIKA</p>\r\n<p>PAKET KEAHLIAN : REKAYASA PERANGKAT LUNAK</p>\r\n<div class=\"kekanan\">\r\n<table class=\"table table-bordered\" style=\"height: 1056px; width: 100%;\" border=\"1\" width=\"100%\"><caption>&nbsp;</caption>\r\n<tbody>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 378px; height: 99px;\" colspan=\"2\" rowspan=\"3\">\r\n<p class=\"text-center\" style=\"text-align: center;\">MATA PELAJARAN</p>\r\n</td>\r\n<td style=\"width: 311px; height: 33px;\" colspan=\"6\">\r\n<p style=\"text-align: center;\">KELAS</p>\r\n</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 102px; height: 33px; text-align: center;\" colspan=\"2\">X</td>\r\n<td style=\"width: 102px; height: 33px; text-align: center;\" colspan=\"2\">XI</td>\r\n<td style=\"width: 103px; height: 33px; text-align: center;\" colspan=\"2\">XII</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">1</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">2</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">1</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">2</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">1</td>\r\n<td style=\"width: 51px; height: 33px;\">\r\n<p style=\"text-align: center;\">2</p>\r\n</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 691px; height: 33px;\" colspan=\"8\">\r\n<p style=\"text-align: center;\"><strong>Kelompok A</strong></p>\r\n</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 50px; height: 33px;\">1</td>\r\n<td style=\"width: 326px; height: 33px;\">Pendidikan Agama dan Budi Pekerti</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">3</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">3</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">3</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">3</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">3</td>\r\n<td style=\"width: 51px; height: 33px; text-align: center;\">3</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 50px; height: 33px;\">2</td>\r\n<td style=\"width: 326px; height: 33px;\">Pendidikan Pancasila dan Kewarganegaraan</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">2</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">2</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">2</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">2</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">2</td>\r\n<td style=\"width: 51px; height: 33px; text-align: center;\">2</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 50px; height: 33px;\">3</td>\r\n<td style=\"width: 326px; height: 33px;\">Bahasa Indonesia</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">3</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">3</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">3</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">3</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">2</td>\r\n<td style=\"width: 51px; height: 33px; text-align: center;\">2</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 50px; height: 33px;\">4</td>\r\n<td style=\"width: 326px; height: 33px;\">Matematika</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">4</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">4</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">4</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">4</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">4</td>\r\n<td style=\"width: 51px; height: 33px; text-align: center;\">4</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 50px; height: 33px;\">5</td>\r\n<td style=\"width: 326px; height: 33px;\">Sejarah Indonesia</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">2</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">2</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">2</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">2</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">&ndash;</td>\r\n<td style=\"width: 51px; height: 33px; text-align: center;\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 50px; height: 33px;\">6</td>\r\n<td style=\"width: 326px; height: 33px;\">Bahasa Inggris</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">3</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">3</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">3</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">3</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">3</td>\r\n<td style=\"width: 51px; height: 33px; text-align: center;\">3</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 691px; height: 33px;\" colspan=\"8\"><strong>Kelompok B</strong></td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 50px; height: 33px;\">7</td>\r\n<td style=\"width: 326px; height: 33px;\">Seni Budaya</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">3</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">3</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">&ndash;</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">&ndash;</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">&ndash;</td>\r\n<td style=\"width: 51px; height: 33px; text-align: center;\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 50px; height: 33px;\">8</td>\r\n<td style=\"width: 326px; height: 33px;\">Kewirausahaan</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">&ndash;</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">&ndash;</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">2</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">2</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">2</td>\r\n<td style=\"width: 51px; height: 33px; text-align: center;\">2</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 50px; height: 33px;\">9</td>\r\n<td style=\"width: 326px; height: 33px;\">Pendidikan Jasmani, Olah Raga &amp; Kesehatan</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">2</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">2</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">2</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">2</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">&ndash;</td>\r\n<td style=\"width: 51px; height: 33px; text-align: center;\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 378px; height: 33px;\" colspan=\"2\">Jumlah A Dan B</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">22</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">22</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">21</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">21</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">16</td>\r\n<td style=\"width: 51px; height: 33px; text-align: center;\">16</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 691px; height: 33px;\" colspan=\"8\"><strong>Kelompok C (Peminatan)</strong></td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 691px; height: 33px;\" colspan=\"8\"><strong>C1. Dasar Bidang Keahlian</strong></td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 50px; height: 33px;\">10</td>\r\n<td style=\"width: 326px; height: 33px;\">Simulasi Digital</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">3</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">3</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">&ndash;</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">&ndash;</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">&ndash;</td>\r\n<td style=\"width: 51px; height: 33px; text-align: center;\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 50px; height: 33px;\">11</td>\r\n<td style=\"width: 326px; height: 33px;\">Fisika</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">4</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">4</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">&ndash;</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">&ndash;</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">&ndash;</td>\r\n<td style=\"width: 51px; height: 33px; text-align: center;\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 50px; height: 33px;\">12</td>\r\n<td style=\"width: 326px; height: 33px;\">Sistem Komputer</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">4</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">4</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">&ndash;</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">&ndash;</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">&ndash;</td>\r\n<td style=\"width: 51px; height: 33px; text-align: center;\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 691px; height: 33px;\" colspan=\"8\"><strong>C2. Dasar Program Keahlian</strong></td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 50px; height: 33px;\">13</td>\r\n<td style=\"width: 326px; height: 33px;\">Komputer dan Jaringan Dasar</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">4</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">4</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">&ndash;</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">&ndash;</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">&ndash;</td>\r\n<td style=\"width: 51px; height: 33px; text-align: center;\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 50px; height: 33px;\">14</td>\r\n<td style=\"width: 326px; height: 33px;\">Pemrograman Dasar</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">7</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">7</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">&ndash;</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">&ndash;</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">&ndash;</td>\r\n<td style=\"width: 51px; height: 33px; text-align: center;\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 50px; height: 33px;\">15</td>\r\n<td style=\"width: 326px; height: 33px;\">Dasar Desain Grafis</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">4</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">4</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">&ndash;</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">&ndash;</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">&ndash;</td>\r\n<td style=\"width: 51px; height: 33px; text-align: center;\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 691px; height: 33px;\" colspan=\"8\"><strong>C3. Paket Keahlian</strong></td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 50px; height: 33px;\">16</td>\r\n<td style=\"width: 326px; height: 33px;\">Pemodelan Perangkat Lunak</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">&ndash;</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">&ndash;</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">3</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">3</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">2</td>\r\n<td style=\"width: 51px; height: 33px; text-align: center;\">2</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 50px; height: 33px;\">17</td>\r\n<td style=\"width: 326px; height: 33px;\">Basis Data</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">&ndash;</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">&ndash;</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">6</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">6</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">6</td>\r\n<td style=\"width: 51px; height: 33px; text-align: center;\">6</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 50px; height: 33px;\">18</td>\r\n<td style=\"width: 326px; height: 33px;\">Pemrograman Berorientasi Obyek</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">&ndash;</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">&ndash;</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">6</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">6</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">8</td>\r\n<td style=\"width: 51px; height: 33px; text-align: center;\">8</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 50px; height: 33px;\">19</td>\r\n<td style=\"width: 326px; height: 33px;\">Pemrograman Web dan Mobile</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">&ndash;</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">&ndash;</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">8</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">8</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">8</td>\r\n<td style=\"width: 51px; height: 33px; text-align: center;\">8</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 50px; height: 33px;\">20</td>\r\n<td style=\"width: 326px; height: 33px;\">Pengembangan Produk Kreatif</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">&ndash;</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">&ndash;</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">4</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">4</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">8</td>\r\n<td style=\"width: 51px; height: 33px; text-align: center;\">8</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 378px; height: 33px;\" colspan=\"2\">Jumlah C1, C2 Dan C3</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">26</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">26</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">27</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">27</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">32</td>\r\n<td style=\"width: 51px; height: 33px; text-align: center;\">32</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"width: 378px; height: 33px;\" colspan=\"2\"><strong>TOTAL</strong></td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">48</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">48</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">48</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">48</td>\r\n<td style=\"width: 50px; height: 33px; text-align: center;\">48</td>\r\n<td style=\"width: 51px; height: 33px; text-align: center;\">48</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<p>&nbsp;</p>\r\n<p>BIDANG KEAHLIAN : SENI RUPA</p>\r\n<p>PROGRAM KEAHLIAN : SENI AUDIO VISUAL</p>\r\n<p>PAKET KEAHLIAN : PRODUKSI FILM DAN PROGRAM TELEVISI</p>\r\n<div class=\"kekanan\">\r\n<table class=\"table table-bordered\" style=\"height: 1158px; width: 100%;\" border=\"1\" width=\"100%\"><caption>&nbsp;</caption>\r\n<thead>\r\n<tr style=\"height: 32px;\">\r\n<td class=\"text-center\" style=\"height: 100px;\" colspan=\"2\" rowspan=\"3\" width=\"57%\">MATA PELAJARAN</td>\r\n<td style=\"height: 32px;\" colspan=\"8\" width=\"42%\">KELAS</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" colspan=\"2\" width=\"10%\">X</td>\r\n<td style=\"height: 33px;\" colspan=\"2\" width=\"10%\">XI</td>\r\n<td style=\"height: 33px;\" colspan=\"2\" width=\"10%\">XII</td>\r\n<td style=\"height: 33px;\" colspan=\"2\" width=\"10%\">XIII</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr style=\"height: 35px;\">\r\n<td style=\"height: 35px;\" width=\"5%\">1</td>\r\n<td style=\"height: 35px;\" width=\"5%\">2</td>\r\n<td style=\"height: 35px;\" width=\"5%\">3</td>\r\n<td style=\"height: 35px;\" width=\"5%\">4</td>\r\n<td style=\"height: 35px;\" width=\"5%\">5</td>\r\n<td style=\"height: 35px;\" width=\"5%\">6</td>\r\n<td style=\"height: 35px;\" width=\"5%\">7</td>\r\n<td style=\"height: 35px;\" width=\"5%\">8</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" colspan=\"10\" width=\"100%\"><strong>Kelompok A</strong></td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" width=\"5%\">1</td>\r\n<td style=\"height: 33px;\" width=\"51%\">Pendidikan Agama &amp; Budi pekerti</td>\r\n<td style=\"height: 33px;\" width=\"5%\">3</td>\r\n<td style=\"height: 33px;\" width=\"5%\">3</td>\r\n<td style=\"height: 33px;\" width=\"5%\">3</td>\r\n<td style=\"height: 33px;\" width=\"5%\">3</td>\r\n<td style=\"height: 33px;\" width=\"5%\">3</td>\r\n<td style=\"height: 33px;\" width=\"5%\">3</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 50px;\">\r\n<td style=\"height: 50px;\" width=\"5%\">2</td>\r\n<td style=\"height: 50px;\" width=\"51%\">Pendidikan Pancasila dan Kewarganegaraan</td>\r\n<td style=\"height: 50px;\" width=\"5%\">2</td>\r\n<td style=\"height: 50px;\" width=\"5%\">2</td>\r\n<td style=\"height: 50px;\" width=\"5%\">2</td>\r\n<td style=\"height: 50px;\" width=\"5%\">2</td>\r\n<td style=\"height: 50px;\" width=\"5%\">2</td>\r\n<td style=\"height: 50px;\" width=\"5%\">2</td>\r\n<td style=\"height: 50px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 50px;\" width=\"5%\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" width=\"5%\">3</td>\r\n<td style=\"height: 33px;\" width=\"51%\">Bahasa Indonesia</td>\r\n<td style=\"height: 33px;\" width=\"5%\">3</td>\r\n<td style=\"height: 33px;\" width=\"5%\">3</td>\r\n<td style=\"height: 33px;\" width=\"5%\">3</td>\r\n<td style=\"height: 33px;\" width=\"5%\">3</td>\r\n<td style=\"height: 33px;\" width=\"5%\">2</td>\r\n<td style=\"height: 33px;\" width=\"5%\">2</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" width=\"5%\">4</td>\r\n<td style=\"height: 33px;\" width=\"51%\">Matematika</td>\r\n<td style=\"height: 33px;\" width=\"5%\">4</td>\r\n<td style=\"height: 33px;\" width=\"5%\">4</td>\r\n<td style=\"height: 33px;\" width=\"5%\">4</td>\r\n<td style=\"height: 33px;\" width=\"5%\">4</td>\r\n<td style=\"height: 33px;\" width=\"5%\">4</td>\r\n<td style=\"height: 33px;\" width=\"5%\">4</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" width=\"5%\">5</td>\r\n<td style=\"height: 33px;\" width=\"51%\">Sejarah Indonesia</td>\r\n<td style=\"height: 33px;\" width=\"5%\">2</td>\r\n<td style=\"height: 33px;\" width=\"5%\">2</td>\r\n<td style=\"height: 33px;\" width=\"5%\">2</td>\r\n<td style=\"height: 33px;\" width=\"5%\">2</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" width=\"5%\">6</td>\r\n<td style=\"height: 33px;\" width=\"51%\">Bahasa Inggris</td>\r\n<td style=\"height: 33px;\" width=\"5%\">3</td>\r\n<td style=\"height: 33px;\" width=\"5%\">3</td>\r\n<td style=\"height: 33px;\" width=\"5%\">3</td>\r\n<td style=\"height: 33px;\" width=\"5%\">3</td>\r\n<td style=\"height: 33px;\" width=\"5%\">3</td>\r\n<td style=\"height: 33px;\" width=\"5%\">3</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" colspan=\"10\" width=\"100%\"><strong>Kelompok B</strong></td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" width=\"5%\">7</td>\r\n<td style=\"height: 33px;\" width=\"51%\">Seni Budaya</td>\r\n<td style=\"height: 33px;\" width=\"5%\">3</td>\r\n<td style=\"height: 33px;\" width=\"5%\">3</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" width=\"5%\">8</td>\r\n<td style=\"height: 33px;\" width=\"51%\">Kewirausahaan</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">2</td>\r\n<td style=\"height: 33px;\" width=\"5%\">2</td>\r\n<td style=\"height: 33px;\" width=\"5%\">2</td>\r\n<td style=\"height: 33px;\" width=\"5%\">2</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 50px;\">\r\n<td style=\"height: 50px;\" width=\"5%\">9</td>\r\n<td style=\"height: 50px;\" width=\"51%\">Pendidikan Jasmani, Olah Raga &amp; Kesehatan</td>\r\n<td style=\"height: 50px;\" width=\"5%\">2</td>\r\n<td style=\"height: 50px;\" width=\"5%\">2</td>\r\n<td style=\"height: 50px;\" width=\"5%\">2</td>\r\n<td style=\"height: 50px;\" width=\"5%\">2</td>\r\n<td style=\"height: 50px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 50px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 50px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 50px;\" width=\"5%\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" colspan=\"2\" width=\"57%\">Jumlah A dan B</td>\r\n<td style=\"height: 33px;\" width=\"5%\">22</td>\r\n<td style=\"height: 33px;\" width=\"5%\">22</td>\r\n<td style=\"height: 33px;\" width=\"5%\">21</td>\r\n<td style=\"height: 33px;\" width=\"5%\">21</td>\r\n<td style=\"height: 33px;\" width=\"5%\">16</td>\r\n<td style=\"height: 33px;\" width=\"5%\">16</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" colspan=\"10\" width=\"100%\"><strong>Kelompok C (Peminatan)</strong></td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" colspan=\"10\" width=\"100%\"><strong>C1</strong><strong>. </strong><strong>Dasar Bidang Keahlian</strong></td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" width=\"5%\">10</td>\r\n<td style=\"height: 33px;\" width=\"51%\">Simulasi Digital</td>\r\n<td style=\"height: 33px;\" width=\"5%\">3</td>\r\n<td style=\"height: 33px;\" width=\"5%\">3</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" width=\"5%\">11</td>\r\n<td style=\"height: 33px;\" width=\"51%\">Pengantar Seni</td>\r\n<td style=\"height: 33px;\" width=\"5%\">2</td>\r\n<td style=\"height: 33px;\" width=\"5%\">2</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" width=\"5%\">12</td>\r\n<td style=\"height: 33px;\" width=\"51%\">Dasar-dasar Kreativitas</td>\r\n<td style=\"height: 33px;\" width=\"5%\">2</td>\r\n<td style=\"height: 33px;\" width=\"5%\">2</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" colspan=\"10\" width=\"100%\"><strong>C2</strong><strong>. </strong><strong>Dasar Program Keahlian</strong></td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" width=\"5%\">13</td>\r\n<td style=\"height: 33px;\" width=\"51%\">Komunikasi Massa</td>\r\n<td style=\"height: 33px;\" width=\"5%\">3</td>\r\n<td style=\"height: 33px;\" width=\"5%\">3</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" width=\"5%\">14</td>\r\n<td style=\"height: 33px;\" width=\"51%\">Dasar Seni Audio Visual</td>\r\n<td style=\"height: 33px;\" width=\"5%\">4</td>\r\n<td style=\"height: 33px;\" width=\"5%\">4</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" width=\"5%\">15</td>\r\n<td style=\"height: 33px;\" width=\"51%\">Produksi Audio Visual</td>\r\n<td style=\"height: 33px;\" width=\"5%\">12</td>\r\n<td style=\"height: 33px;\" width=\"5%\">12</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" colspan=\"10\" width=\"100%\"><strong>C3</strong><strong>. </strong><strong>Paket Keahlian</strong></td>\r\n</tr>\r\n<tr style=\"height: 50px;\">\r\n<td style=\"height: 50px;\" width=\"5%\">16</td>\r\n<td style=\"height: 50px;\" width=\"51%\">Penulisan Naskah dan Manajemen Produksi</td>\r\n<td style=\"height: 50px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 50px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 50px;\" width=\"5%\">4</td>\r\n<td style=\"height: 50px;\" width=\"5%\">4</td>\r\n<td style=\"height: 50px;\" width=\"5%\">4</td>\r\n<td style=\"height: 50px;\" width=\"5%\">4</td>\r\n<td style=\"height: 50px;\" width=\"5%\">4</td>\r\n<td style=\"height: 50px;\" width=\"5%\">4</td>\r\n</tr>\r\n<tr style=\"height: 50px;\">\r\n<td style=\"height: 50px;\" width=\"5%\">17</td>\r\n<td style=\"height: 50px;\" width=\"51%\">Tata Kamera, Suara dan Pencahayaan</td>\r\n<td style=\"height: 50px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 50px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 50px;\" width=\"5%\">6</td>\r\n<td style=\"height: 50px;\" width=\"5%\">6</td>\r\n<td style=\"height: 50px;\" width=\"5%\">7</td>\r\n<td style=\"height: 50px;\" width=\"5%\">7</td>\r\n<td style=\"height: 50px;\" width=\"5%\">10</td>\r\n<td style=\"height: 50px;\" width=\"5%\">10</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" width=\"5%\">18</td>\r\n<td style=\"height: 33px;\" width=\"51%\">Tata Artistik</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">4</td>\r\n<td style=\"height: 33px;\" width=\"5%\">4</td>\r\n<td style=\"height: 33px;\" width=\"5%\">4</td>\r\n<td style=\"height: 33px;\" width=\"5%\">4</td>\r\n<td style=\"height: 33px;\" width=\"5%\">4</td>\r\n<td style=\"height: 33px;\" width=\"5%\">4</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" width=\"5%\">19</td>\r\n<td style=\"height: 33px;\" width=\"51%\">Penyutradaraan</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">4</td>\r\n<td style=\"height: 33px;\" width=\"5%\">4</td>\r\n<td style=\"height: 33px;\" width=\"5%\">6</td>\r\n<td style=\"height: 33px;\" width=\"5%\">6</td>\r\n<td style=\"height: 33px;\" width=\"5%\">8</td>\r\n<td style=\"height: 33px;\" width=\"5%\">8</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" width=\"5%\">20</td>\r\n<td style=\"height: 33px;\" width=\"51%\">Editing</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">6</td>\r\n<td style=\"height: 33px;\" width=\"5%\">6</td>\r\n<td style=\"height: 33px;\" width=\"5%\">8</td>\r\n<td style=\"height: 33px;\" width=\"5%\">8</td>\r\n<td style=\"height: 33px;\" width=\"5%\">10</td>\r\n<td style=\"height: 33px;\" width=\"5%\">10</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" width=\"5%\">21</td>\r\n<td style=\"height: 33px;\" width=\"51%\">Pengembangan Produk Kreatif</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"5%\">3</td>\r\n<td style=\"height: 33px;\" width=\"5%\">3</td>\r\n<td style=\"height: 33px;\" width=\"5%\">3</td>\r\n<td style=\"height: 33px;\" width=\"5%\">3</td>\r\n<td style=\"height: 33px;\" width=\"5%\">12</td>\r\n<td style=\"height: 33px;\" width=\"5%\">12</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" colspan=\"2\" width=\"57%\">Jumlah C1, C2, C3</td>\r\n<td style=\"height: 33px;\" width=\"5%\">26</td>\r\n<td style=\"height: 33px;\" width=\"5%\">26</td>\r\n<td style=\"height: 33px;\" width=\"5%\">27</td>\r\n<td style=\"height: 33px;\" width=\"5%\">27</td>\r\n<td style=\"height: 33px;\" width=\"5%\">32</td>\r\n<td style=\"height: 33px;\" width=\"5%\">32</td>\r\n<td style=\"height: 33px;\" width=\"5%\">48</td>\r\n<td style=\"height: 33px;\" width=\"5%\">48</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" colspan=\"2\" width=\"57%\"><strong>TOTAL</strong></td>\r\n<td style=\"height: 33px;\" width=\"5%\"><strong>48</strong></td>\r\n<td style=\"height: 33px;\" width=\"5%\"><strong>48</strong></td>\r\n<td style=\"height: 33px;\" width=\"5%\"><strong>48</strong></td>\r\n<td style=\"height: 33px;\" width=\"5%\"><strong>48</strong></td>\r\n<td style=\"height: 33px;\" width=\"5%\"><strong>48</strong></td>\r\n<td style=\"height: 33px;\" width=\"5%\"><strong>48</strong></td>\r\n<td style=\"height: 33px;\" width=\"5%\"><strong>48</strong></td>\r\n<td style=\"height: 33px;\" width=\"5%\"><strong>48</strong></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<p>&nbsp;</p>\r\n<p>BIDANG KEAHLIAN : TEKNOLOGI DAN REKAYASA</p>\r\n<p>PROGRAM KEAHLIAN : TEKNIK ELEKTRONIKA</p>\r\n<p>PAKET KEAHLIAN : TEKNIK ELEKTRONIKA INDUSTRI</p>\r\n<div class=\"kekanan\">\r\n<table class=\"table table-bordered\" style=\"width: 100%; height: 1091px;\" border=\"1\" width=\"100%\"><caption>&nbsp;</caption>\r\n<thead>\r\n<tr style=\"height: 32px;\">\r\n<td class=\"text-center\" style=\"height: 98px;\" colspan=\"2\" rowspan=\"3\" width=\"70%\">MATA PELAJARAN</td>\r\n<td style=\"height: 32px;\" colspan=\"6\" width=\"29%\">KELAS</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" colspan=\"2\" width=\"9%\">X</td>\r\n<td style=\"height: 33px;\" colspan=\"2\" width=\"9%\">XI</td>\r\n<td style=\"height: 33px;\" colspan=\"2\" width=\"9%\">XII</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" width=\"4%\">1</td>\r\n<td style=\"height: 33px;\" width=\"4%\">2</td>\r\n<td style=\"height: 33px;\" width=\"4%\">1</td>\r\n<td style=\"height: 33px;\" width=\"4%\">2</td>\r\n<td style=\"height: 33px;\" width=\"4%\">1</td>\r\n<td style=\"height: 33px;\" width=\"4%\">2</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr style=\"height: 35px;\">\r\n<td style=\"height: 35px;\" colspan=\"8\" width=\"100%\"><strong>Kelompok A</strong></td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" width=\"4%\">1</td>\r\n<td style=\"height: 33px;\" width=\"65%\">Pendidikan Agama dan Budi Pekerti</td>\r\n<td style=\"height: 33px;\" width=\"4%\">3</td>\r\n<td style=\"height: 33px;\" width=\"4%\">3</td>\r\n<td style=\"height: 33px;\" width=\"4%\">3</td>\r\n<td style=\"height: 33px;\" width=\"4%\">3</td>\r\n<td style=\"height: 33px;\" width=\"4%\">3</td>\r\n<td style=\"height: 33px;\" width=\"4%\">3</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" width=\"4%\">2</td>\r\n<td style=\"height: 33px;\" width=\"65%\">Pendidikan Pancasila dan Kewarganegaraan</td>\r\n<td style=\"height: 33px;\" width=\"4%\">2</td>\r\n<td style=\"height: 33px;\" width=\"4%\">2</td>\r\n<td style=\"height: 33px;\" width=\"4%\">2</td>\r\n<td style=\"height: 33px;\" width=\"4%\">2</td>\r\n<td style=\"height: 33px;\" width=\"4%\">2</td>\r\n<td style=\"height: 33px;\" width=\"4%\">2</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" width=\"4%\">3</td>\r\n<td style=\"height: 33px;\" width=\"65%\">Bahasa Indonesia</td>\r\n<td style=\"height: 33px;\" width=\"4%\">3</td>\r\n<td style=\"height: 33px;\" width=\"4%\">3</td>\r\n<td style=\"height: 33px;\" width=\"4%\">3</td>\r\n<td style=\"height: 33px;\" width=\"4%\">3</td>\r\n<td style=\"height: 33px;\" width=\"4%\">2</td>\r\n<td style=\"height: 33px;\" width=\"4%\">2</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" width=\"4%\">4</td>\r\n<td style=\"height: 33px;\" width=\"65%\">Matematika</td>\r\n<td style=\"height: 33px;\" width=\"4%\">4</td>\r\n<td style=\"height: 33px;\" width=\"4%\">4</td>\r\n<td style=\"height: 33px;\" width=\"4%\">4</td>\r\n<td style=\"height: 33px;\" width=\"4%\">4</td>\r\n<td style=\"height: 33px;\" width=\"4%\">4</td>\r\n<td style=\"height: 33px;\" width=\"4%\">4</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" width=\"4%\">5</td>\r\n<td style=\"height: 33px;\" width=\"65%\">Sejarah Indonesia</td>\r\n<td style=\"height: 33px;\" width=\"4%\">2</td>\r\n<td style=\"height: 33px;\" width=\"4%\">2</td>\r\n<td style=\"height: 33px;\" width=\"4%\">2</td>\r\n<td style=\"height: 33px;\" width=\"4%\">2</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" width=\"4%\">6</td>\r\n<td style=\"height: 33px;\" width=\"65%\">Bahasa Inggris</td>\r\n<td style=\"height: 33px;\" width=\"4%\">3</td>\r\n<td style=\"height: 33px;\" width=\"4%\">3</td>\r\n<td style=\"height: 33px;\" width=\"4%\">3</td>\r\n<td style=\"height: 33px;\" width=\"4%\">3</td>\r\n<td style=\"height: 33px;\" width=\"4%\">3</td>\r\n<td style=\"height: 33px;\" width=\"4%\">3</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" colspan=\"8\" width=\"100%\"><strong>Kelompok B </strong></td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" width=\"4%\">7</td>\r\n<td style=\"height: 33px;\" width=\"65%\">Seni Budaya</td>\r\n<td style=\"height: 33px;\" width=\"4%\">3</td>\r\n<td style=\"height: 33px;\" width=\"4%\">3</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" width=\"4%\">8</td>\r\n<td style=\"height: 33px;\" width=\"65%\">Kewirausahaan</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"4%\">2</td>\r\n<td style=\"height: 33px;\" width=\"4%\">2</td>\r\n<td style=\"height: 33px;\" width=\"4%\">2</td>\r\n<td style=\"height: 33px;\" width=\"4%\">2</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" width=\"4%\">9</td>\r\n<td style=\"height: 33px;\" width=\"65%\">Pendidikan Jasmani, Olah Raga dan Kesehatan</td>\r\n<td style=\"height: 33px;\" width=\"4%\">2</td>\r\n<td style=\"height: 33px;\" width=\"4%\">2</td>\r\n<td style=\"height: 33px;\" width=\"4%\">2</td>\r\n<td style=\"height: 33px;\" width=\"4%\">2</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" colspan=\"2\" width=\"70%\">Jumlah A dan B</td>\r\n<td style=\"height: 33px;\" width=\"4%\">22</td>\r\n<td style=\"height: 33px;\" width=\"4%\">22</td>\r\n<td style=\"height: 33px;\" width=\"4%\">21</td>\r\n<td style=\"height: 33px;\" width=\"4%\">21</td>\r\n<td style=\"height: 33px;\" width=\"4%\">16</td>\r\n<td style=\"height: 33px;\" width=\"4%\">16</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" colspan=\"8\" width=\"100%\"><strong>Kelompok C (Peminatan)</strong></td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" colspan=\"8\" width=\"100%\"><strong>C1. Dasar Bidang Keahlian</strong></td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" width=\"4%\">10</td>\r\n<td style=\"height: 33px;\" width=\"65%\">Simulasi Digital</td>\r\n<td style=\"height: 33px;\" width=\"4%\">3</td>\r\n<td style=\"height: 33px;\" width=\"4%\">3</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" width=\"4%\">11</td>\r\n<td style=\"height: 33px;\" width=\"65%\">Fisika</td>\r\n<td style=\"height: 33px;\" width=\"4%\">4</td>\r\n<td style=\"height: 33px;\" width=\"4%\">4</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" width=\"4%\">12</td>\r\n<td style=\"height: 33px;\" width=\"65%\">Kimia</td>\r\n<td style=\"height: 33px;\" width=\"4%\">4</td>\r\n<td style=\"height: 33px;\" width=\"4%\">4</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" colspan=\"8\" width=\"100%\"><strong>C2. Dasar Program Keahlian</strong></td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" width=\"4%\">13</td>\r\n<td style=\"height: 33px;\" width=\"65%\">Kerja Bengkel dan Gambar Teknik</td>\r\n<td style=\"height: 33px;\" width=\"4%\">4</td>\r\n<td style=\"height: 33px;\" width=\"4%\">4</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" width=\"4%\">14</td>\r\n<td style=\"height: 33px;\" width=\"65%\">DasarListrik dan Elektronika</td>\r\n<td style=\"height: 33px;\" width=\"4%\">6</td>\r\n<td style=\"height: 33px;\" width=\"4%\">6</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 50px;\">\r\n<td style=\"height: 50px;\" width=\"4%\">15</td>\r\n<td style=\"height: 50px;\" width=\"65%\">Pemrograman, Mikroprosessor dan Mikrokontroller</td>\r\n<td style=\"height: 50px;\" width=\"4%\">5</td>\r\n<td style=\"height: 50px;\" width=\"4%\">5</td>\r\n<td style=\"height: 50px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 50px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 50px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 50px;\" width=\"4%\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" colspan=\"8\" width=\"100%\"><strong>C3. Paket Keahlian</strong></td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" width=\"4%\">16</td>\r\n<td style=\"height: 33px;\" width=\"65%\">Penerapan Rangkaian Elektronika</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"4%\">10</td>\r\n<td style=\"height: 33px;\" width=\"4%\">10</td>\r\n<td style=\"height: 33px;\" width=\"4%\">6</td>\r\n<td style=\"height: 33px;\" width=\"4%\">6</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" width=\"4%\">17</td>\r\n<td style=\"height: 33px;\" width=\"65%\">Sistem Pengendali Elektronik</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"4%\">10</td>\r\n<td style=\"height: 33px;\" width=\"4%\">10</td>\r\n<td style=\"height: 33px;\" width=\"4%\">14</td>\r\n<td style=\"height: 33px;\" width=\"4%\">14</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" width=\"4%\">18</td>\r\n<td style=\"height: 33px;\" width=\"65%\">Pengendali Sistem Robotik</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"4%\">4</td>\r\n<td style=\"height: 33px;\" width=\"4%\">4</td>\r\n<td style=\"height: 33px;\" width=\"4%\">5</td>\r\n<td style=\"height: 33px;\" width=\"4%\">5</td>\r\n</tr>\r\n<tr style=\"height: 50px;\">\r\n<td style=\"height: 50px;\" width=\"4%\">19</td>\r\n<td style=\"height: 50px;\" width=\"65%\">Pembuatan , Perbaikan dan Pemeliharaan Peralatan Elektronika</td>\r\n<td style=\"height: 50px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 50px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 50px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 50px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 50px;\" width=\"4%\">4</td>\r\n<td style=\"height: 50px;\" width=\"4%\">4</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" width=\"4%\">20</td>\r\n<td style=\"height: 33px;\" width=\"65%\">Pengembangan Produk Kreatif</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"4%\">&ndash;</td>\r\n<td style=\"height: 33px;\" width=\"4%\">3</td>\r\n<td style=\"height: 33px;\" width=\"4%\">3</td>\r\n<td style=\"height: 33px;\" width=\"4%\">3</td>\r\n<td style=\"height: 33px;\" width=\"4%\">3</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" colspan=\"2\" width=\"70%\">Jumlah C1,C2 dan C3</td>\r\n<td style=\"height: 33px;\" width=\"4%\">26</td>\r\n<td style=\"height: 33px;\" width=\"4%\">26</td>\r\n<td style=\"height: 33px;\" width=\"4%\">27</td>\r\n<td style=\"height: 33px;\" width=\"4%\">27</td>\r\n<td style=\"height: 33px;\" width=\"4%\">32</td>\r\n<td style=\"height: 33px;\" width=\"4%\">32</td>\r\n</tr>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"height: 33px;\" colspan=\"2\" width=\"70%\"><strong>TOTAL</strong></td>\r\n<td style=\"height: 33px;\" width=\"4%\"><strong>48</strong></td>\r\n<td style=\"height: 33px;\" width=\"4%\"><strong>48</strong></td>\r\n<td style=\"height: 33px;\" width=\"4%\"><strong>48</strong></td>\r\n<td style=\"height: 33px;\" width=\"4%\"><strong>48</strong></td>\r\n<td style=\"height: 33px;\" width=\"4%\"><strong>48</strong></td>\r\n<td style=\"height: 33px;\" width=\"4%\"><strong>48</strong></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</div>','2021-10-17 14:45:20','2021-10-17 14:45:20','32',NULL),(2,'Kegiatan Osis','<h5 class=\"mt-5\" style=\"box-sizing: border-box; margin-bottom: 0.5rem; font-weight: 500; line-height: 1.2; font-size: 1.25rem; font-family: Raleway, sans-serif; margin-top: 3rem !important;\"><span style=\"box-sizing: border-box; font-weight: bolder;\">Kegiatan Osis</span></h5>\r\n<hr style=\"box-sizing: border-box; margin: 1rem 0px; background-color: currentcolor; border: 0px; opacity: 0.25; height: 1px; font-family: \'Open Sans\', sans-serif; font-size: 16px;\" />\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: \'Open Sans\', sans-serif; font-size: 16px;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: \'Open Sans\', sans-serif; font-size: 16px;\">Musyawarah Siswa merupakan salah satu agenda yang diwajibkan dari setiap organisasi yang ada, hal ini dikarenakan Muyawarah Siswa (MUSIS) akan membahas persoalan pembahasan Laporan pertanggung jawaban kepengurusan sebelumnya, Anggaran Dasar dan Anggaran Rumah Tangga sebuah organisasi tentunya juga akan menentukan pemimpin baru untuk memimpin organisasi tersebut. Oleh karena itu Musis adalah hal yang sakral dari sebua organisasi. Ini merupakan agenda rutin yang dilakukan OSIS SMK Taruna Bhakti setiap tahunnya.</p>','2021-10-17 14:54:01','2021-10-17 14:54:01','41',NULL),(3,'Keterangan Jurusan','<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Eligendi neque quaerat dolorem? Libero, fuga? Aspernatur voluptate aliquid beatae maiores, doloribus explicabo itaque enim nihil molestias? Eligendi illum culpa officia. Explicabo facilis reiciendis possimus dolore laudantium veniam accusantium esse reprehenderit fuga ea nesciunt accusamus similique consequuntur in magnam harum, doloribus vitae dicta obcaecati exercitationem. Nam inventore, doloribus voluptas aspernatur omnis quae eos dolores sint aut asperiores consectetur velit corporis voluptatem corrupti natus quibusdam vero dignissimos hic pariatur praesentium facere non dolorum optio laudantium! Culpa blanditiis sit perferendis quibusdam maxime inventore! Quibusdam cumque fuga alias iusto magnam! Quibusdam repudiandae doloremque aliquam minus.</p>','2021-10-21 06:41:54','2021-10-21 06:45:50','48','keterangan-jurusan'),(5,'Foto Guru',NULL,'2021-10-21 06:46:14','2021-10-21 06:46:14','48','foto-guru'),(6,'Rekayasa Perangkat lunak','<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Unde cum officiis maiores illum non nemo reprehenderit sunt, ex vel modi qui, deserunt eaque nulla recusandae expedita, vitae sit. A, ducimus. Nobis ad temporibus illo nulla earum veniam quisquam molestias praesentium voluptatem sit! Veniam, cupiditate maxime mollitia voluptatum autem dolorum odit quam ad molestiae, alias ratione deserunt consectetur ut quidem voluptates? Dicta neque eaque quae ullam, nisi, earum, saepe quibusdam repudiandae atque rem delectus. Dicta, ad nam. Ex quisquam temporibus animi earum velit voluptatem, libero vero eaque, doloremque dolores quod perferendis? Quidem labore magnam repudiandae saepe distinctio commodi nobis earum sint error, odit numquam dolorem vel tempore ullam quod quia qui ipsam alias deserunt veniam laudantium laboriosam! Reprehenderit nihil esse nobis.</p>','2021-10-21 08:43:53','2021-10-21 08:43:53','50','rekayasa-perangkat-lunak'),(7,'INi Evaluasi','<p>Evaluasi adalah evaluasi</p>','2022-01-09 01:42:53','2022-01-09 01:42:53','33','ini-evaluasi');
/*!40000 ALTER TABLE `contents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_rows`
--

DROP TABLE IF EXISTS `data_rows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `data_rows` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `data_type_id` int unsigned NOT NULL,
  `field` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `order` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `data_rows_data_type_id_foreign` (`data_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=404 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_rows`
--

LOCK TABLES `data_rows` WRITE;
/*!40000 ALTER TABLE `data_rows` DISABLE KEYS */;
INSERT INTO `data_rows` VALUES (1,1,'id','number','ID',1,0,0,0,0,0,'{}',1),(2,1,'name','text','Name',0,1,1,1,1,1,'{}',2),(3,1,'email','text','Email',0,1,1,1,1,1,'{}',3),(4,1,'password','password','Password',1,0,0,1,1,0,'{}',4),(5,1,'remember_token','text','Remember Token',0,0,0,0,0,0,'{}',5),(6,1,'created_at','timestamp','Created At',0,1,1,0,0,0,'{}',6),(7,1,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',8),(8,1,'avatar','image','Avatar',0,1,1,1,1,1,'{}',9),(9,1,'user_belongsto_role_relationship','relationship','Role',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\",\"taggable\":\"0\"}',11),(10,1,'user_belongstomany_role_relationship','relationship','voyager::seeders.data_rows.roles',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}',12),(11,1,'settings','hidden','Settings',0,0,0,0,0,0,'{}',14),(12,2,'id','number','ID',1,0,0,0,0,0,NULL,1),(13,2,'name','text','Name',1,1,1,1,1,1,NULL,2),(14,2,'created_at','timestamp','Created At',0,0,0,0,0,0,NULL,3),(15,2,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,4),(16,3,'id','number','ID',1,0,0,0,0,0,NULL,1),(17,3,'name','text','Name',1,1,1,1,1,1,NULL,2),(18,3,'created_at','timestamp','Created At',0,0,0,0,0,0,NULL,3),(19,3,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,4),(20,3,'display_name','text','Display Name',1,1,1,1,1,1,NULL,5),(21,1,'role_id','text','Role',0,1,1,1,1,1,'{}',10),(22,4,'id','number','ID',1,0,0,0,0,0,NULL,1),(23,4,'parent_id','select_dropdown','Parent',0,0,1,1,1,1,'{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}',2),(24,4,'order','text','Order',1,1,1,1,1,1,'{\"default\":1}',3),(25,4,'name','text','Name',1,1,1,1,1,1,NULL,4),(26,4,'slug','text','Slug',1,1,1,1,1,1,'{\"slugify\":{\"origin\":\"name\"}}',5),(27,4,'created_at','timestamp','Created At',0,0,1,0,0,0,NULL,6),(28,4,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,7),(29,5,'id','number','ID',1,0,0,0,0,0,'{}',1),(30,5,'author_id','text','Author',1,1,1,1,1,1,'{}',2),(31,5,'category_id','text','Category',0,0,1,1,1,0,'{}',4),(32,5,'title','text','Title',1,1,1,1,1,1,'{}',5),(33,5,'excerpt','text_area','Excerpt',0,1,1,1,1,1,'{}',6),(34,5,'body','rich_text_box','Body',1,0,1,1,1,1,'{}',7),(35,5,'image','image','Post Image',0,1,1,1,1,1,'{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}',8),(36,5,'slug','text','Slug',1,0,1,1,1,1,'{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}',9),(37,5,'meta_description','text_area','Meta Description',0,0,1,1,1,1,'{}',10),(38,5,'meta_keywords','text_area','Meta Keywords',0,0,1,1,1,1,'{}',11),(39,5,'status','select_dropdown','Status',1,1,1,1,1,1,'{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}',12),(40,5,'created_at','timestamp','Created At',0,1,1,0,0,0,'{}',13),(41,5,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',14),(42,5,'seo_title','text','SEO Title',0,1,1,1,1,1,'{}',15),(43,5,'featured','checkbox','Featured',1,1,1,1,1,1,'{}',16),(44,6,'id','number','ID',1,0,0,0,0,0,'{}',1),(45,6,'author_id','text','Author',1,0,0,0,0,0,'{}',2),(46,6,'title','text','Title',1,1,1,1,1,1,'{}',3),(47,6,'excerpt','text_area','Excerpt',0,0,1,1,1,1,'{}',4),(48,6,'body','rich_text_box','Body',0,0,1,1,1,1,'{}',5),(49,6,'slug','text','Slug',1,0,1,1,1,1,'{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}',6),(50,6,'meta_description','text','Meta Description',0,0,1,1,1,1,'{}',7),(51,6,'meta_keywords','text','Meta Keywords',0,0,1,1,1,1,'{}',8),(52,6,'status','select_dropdown','Status',1,1,1,1,1,1,'{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}',9),(53,6,'created_at','timestamp','Created At',0,1,1,0,0,0,'{}',10),(54,6,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',11),(55,6,'image','image','Page Image',0,1,1,1,1,1,'{}',12),(56,7,'id','text','Id',1,0,0,0,0,0,'{}',1),(57,7,'name','coordinates','Name',0,1,1,1,1,1,'{}',3),(58,7,'email','text','Email',0,1,1,1,1,1,'{}',4),(59,7,'password','password','Password',0,0,1,1,1,1,'{}',5),(60,7,'created_at','timestamp','Created At',0,0,0,0,0,0,'{}',6),(61,7,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',7),(62,8,'id','text','Id',1,0,0,0,0,0,'{}',1),(64,8,'name','date','Name',0,1,1,1,1,1,'{}',4),(66,8,'email','text','Email',0,1,1,1,1,1,'{}',7),(67,8,'password','password','Password',0,0,1,1,1,1,'{}',8),(68,8,'created_at','timestamp','Created At',0,0,0,0,0,0,'{}',9),(69,8,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',11),(70,9,'id','text','Id',1,0,0,0,0,0,'{}',1),(71,9,'name','text','Name',0,1,1,1,1,1,'{}',3),(72,9,'jabatan','select_dropdown','Jabatan',0,1,1,1,1,1,'{\"default\":\"Kepala Program\",\"options\":{\"Kepala Sekolah\":\"Kepala Sekolah\",\"Kepala Program\":\"Kepala Program\"}}',4),(73,9,'email','text','Email',0,1,1,1,1,1,'{}',5),(74,9,'password','password','Password',0,0,1,1,1,1,'{}',6),(75,9,'created_at','timestamp','Created At',0,0,0,0,0,0,'{}',7),(76,9,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',8),(78,10,'id','text','Id',1,0,0,0,0,0,'{}',1),(79,10,'kelas','select_dropdown','Kelas',0,1,1,1,1,1,'{\"default\":\"X\",\"options\":{\"X\":\"X\",\"XI\":\"XI\",\"XII\":\"XII\"}}',2),(80,10,'nama_kelas','text','Nama Kelas',0,1,1,1,1,1,'{}',4),(81,10,'tahun_ajaran','text','Tahun Ajaran',0,1,1,1,1,1,'{}',5),(82,10,'wali_kelas','text','Wali Kelas',0,1,1,1,1,1,'{}',6),(83,10,'status','text','Status',0,1,1,1,1,1,'{}',7),(84,10,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',8),(85,10,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',9),(86,8,'siswa_belongsto_kela_relationship','relationship','kelas',0,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\Kela\",\"table\":\"kelas\",\"type\":\"belongsTo\",\"column\":\"kelas_id\",\"key\":\"id\",\"label\":\"nama_kelas\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}',5),(87,8,'kelas_id','text','Kelas Id',0,1,1,1,1,1,'{}',6),(88,10,'jurusan','select_dropdown','Jurusan',0,1,1,1,1,1,'{\"default\":\"RPL\",\"options\":{\"TKJ\":\"TKJ\",\"MM\":\"MM\",\"RPL\":\"RPL\",\"BC\":\"BC\",\"TEI\":\"TEI\",\"PPLG\":\"Pengembang Perangkat Lunak dan Game\",\"ANIMASI\":\"Animasi\",\"TJKT\":\"Teknik Jaringan Komputer & Telekomunikasi\",\"BCF\":\"Broadcasting dan Perfileman\",\"TE\":\"Teknik Elektro\"}}',3),(91,8,'nipd','timestamp','Nipd',0,0,0,1,1,1,'{\"format\":\"%Y\"}',3),(92,1,'email_verified_at','timestamp','Email Verified At',0,1,1,1,1,1,'{}',7),(93,8,'remember_token','text','Remember Token',0,0,0,0,0,0,'{}',10),(94,9,'nik','text','Nik',0,1,1,1,1,1,'{}',2),(95,7,'nik','text','Nik',0,1,1,1,1,1,'{}',2),(96,7,'remember_token','text','Remember Token',0,0,0,0,0,0,'{}',8),(97,9,'remember_token','text','Remember Token',0,0,0,0,0,0,'{}',9),(98,7,'jabatan','select_dropdown','Jabatan',0,1,1,1,1,1,'{\"options\":{\"admin\":\"Admin\",\"litbang\":\"Litbang\",\"tu\":\"TU\",\"bkk\":\"BKK\",\"hubin\":\"Hubin\",\"kurikulum\":\"Kurikulum\",\"kesiswaan\":\"Kesiswaan\",\"sarpras\":\"Sarpras\",\"kejuruan\":\"Kejuruan\",\"pembimbing\":\"Pembimbing\"}}',9),(104,6,'page_belongsto_category_relationship','relationship','categories',0,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\Navbar\",\"table\":\"navbars\",\"type\":\"belongsTo\",\"column\":\"category_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}',13),(105,6,'category_id','text','Category Id',0,1,1,1,1,1,'{}',13),(106,16,'id','text','Id',1,0,0,0,0,0,'{}',1),(107,16,'name','text','Name',0,1,1,1,1,1,'{}',2),(108,16,'tahun_lulus','text','Tahun Lulus',0,1,1,1,1,1,'{}',3),(109,16,'nama_perusahaan','text','Nama Perusahaan',0,1,1,1,1,1,'{}',4),(110,16,'posisi','text','Posisi',0,1,1,1,1,1,'{}',5),(111,16,'tahun_kerja','text','Tahun Kerja',0,1,1,1,1,1,'{}',6),(112,16,'penghasilan','text','Penghasilan',0,1,1,1,1,1,'{}',7),(113,16,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',11),(114,16,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',12),(115,17,'id','text','Id',1,0,0,0,0,0,'{}',1),(118,17,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',4),(119,17,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',5),(120,19,'id','text','Id',1,0,0,0,0,0,'{}',1),(121,19,'logo_perusahaan','image','Logo Perusahaan',0,1,1,1,1,1,'{}',2),(122,19,'nama_perusahaan','text','Nama Perusahaan',0,1,1,1,1,1,'{}',3),(123,19,'alamat_perusahaan','text_area','Alamat Perusahaan',0,1,1,1,1,1,'{}',4),(124,19,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',5),(125,19,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',6),(126,17,'name','text','Name',0,1,1,1,1,1,'{}',2),(127,20,'id','text','Id',1,0,0,0,0,0,'{}',1),(128,20,'jurusan','text','Jurusan',0,1,1,1,1,1,'{}',2),(129,20,'created_at','timestamp','Created At',0,0,0,0,0,0,'{}',3),(130,20,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',4),(181,16,'alumni_belongsto_jurusan_relationship','relationship','jurusans',0,0,1,1,1,1,'{\"model\":\"App\\\\Models\\\\Jurusan\",\"table\":\"jurusans\",\"type\":\"belongsTo\",\"column\":\"jurusan\",\"key\":\"jurusan\",\"label\":\"jurusan\",\"pivot_table\":\"alumnis\",\"pivot\":\"0\",\"taggable\":\"0\"}',10),(182,16,'categories_alumnis','text','Categories Alumnis',0,1,1,1,1,1,'{\"options\":{\"Bekerja\":\"Bekerja\",\"Kuliah\":\"Kuliah\",\"Wirausaha\":\"Wirausaha\"}}',8),(183,16,'jurusan','text','Jurusan',0,1,1,1,1,1,'{}',9),(184,20,'singkatan','text','Singkatan',0,1,1,1,1,1,'{}',5),(189,30,'id','text','Id',1,0,0,0,0,0,'{}',1),(190,30,'title','text','Title',0,1,1,1,1,1,'{}',2),(191,30,'description','rich_text_box','Description',0,1,1,1,1,1,'{}',3),(192,30,'category_id','text','Category Page Sarpras',0,0,1,1,1,1,'{}',4),(193,30,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',6),(194,30,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',7),(195,30,'content_sarpra_belongsto_category_sarpra_relationship','relationship','category_sarpras',0,1,1,1,1,1,'{\"title\":\"Sarana Pra Sarana\",\"model\":\"App\\\\Models\\\\Page\",\"table\":\"pages\",\"type\":\"belongsTo\",\"column\":\"category_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"alumnis\",\"pivot\":\"0\",\"taggable\":\"0\"}',5),(196,31,'id','text','Id',1,0,0,0,0,0,'{}',1),(197,31,'created_at','timestamp','Created At',0,0,1,1,0,1,'{}',4),(198,31,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',5),(199,31,'image','file','Image',0,1,1,1,1,1,'{}',2),(200,31,'content_id','text','Content Id',0,1,1,1,1,1,'{}',3),(201,31,'gallery_sarpra_belongsto_content_sarpra_relationship','relationship','content_sarpras',0,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\ContentSarpra\",\"table\":\"content_sarpras\",\"type\":\"belongsTo\",\"column\":\"content_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"alumnis\",\"pivot\":\"0\",\"taggable\":\"0\"}',6),(203,32,'id','text','Id',1,0,0,0,0,0,'{}',1),(205,32,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',3),(206,32,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',4),(207,1,'user_belongsto_mapel_relationship','relationship','mapels',0,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\Mapel\",\"table\":\"mapels\",\"type\":\"belongsTo\",\"column\":\"mapel_id\",\"key\":\"id\",\"label\":\"mata_pelajaran\",\"pivot_table\":\"alumnis\",\"pivot\":\"0\",\"taggable\":\"0\"}',19),(208,31,'nama_photo','text','Nama Photo',0,1,1,1,1,1,'{}',6),(209,19,'website_perusahaan','text','Website Perusahaan',0,1,1,1,1,1,'{}',7),(210,16,'status','select_dropdown','Status',0,1,1,1,1,1,'{\"default\":\"PUBLISHED\",\"options\":{\"PUBLISED\":\"PUBLISHED\",\"UNPUBLISED\":\"UNPUBLISED\"}}',12),(211,34,'id','text','Id',1,0,0,0,0,0,'{}',1),(212,34,'name','text','Name',0,1,1,1,1,1,'{}',2),(213,34,'slug','text','Slug',0,1,1,1,1,1,'{\"slugify\":{\"origin\":\"name\"}}',3),(214,34,'created_at','timestamp','Created At',0,0,0,0,0,0,'{}',4),(215,34,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',5),(216,36,'id','text','Id',1,0,0,0,0,0,'{}',1),(217,36,'photo','image','Photo',0,1,1,1,1,1,'{}',2),(218,36,'title','text','Title',0,1,1,1,1,1,'{}',3),(219,36,'description','text','Description',0,1,1,1,1,1,'{}',4),(220,36,'created_at','timestamp','Created At',0,0,0,0,0,0,'{}',5),(221,36,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',6),(222,37,'id','text','Id',1,0,0,0,0,0,'{}',1),(223,37,'video','file','Video',0,1,1,1,1,1,'{}',2),(224,37,'title','text','Title',0,1,1,1,1,1,'{}',3),(225,37,'description','text','Description',0,1,1,1,1,1,'{}',4),(226,37,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',5),(227,37,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',6),(228,34,'status','select_dropdown','Status',0,1,1,1,1,1,'{\"default\":\"Active\",\"options\":{\"Active\":\"Active\",\"Inactive\":\"Inactive\"}}',6),(229,38,'id','text','Id',1,0,0,0,0,0,'{}',1),(230,38,'title','text','Title',0,1,1,1,1,1,'{}',2),(231,38,'content','rich_text_box','Content',0,1,1,1,1,1,'{}',3),(232,38,'created_at','timestamp','Created At',0,0,0,0,0,0,'{}',4),(233,38,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',5),(234,38,'content_belongsto_page_relationship','relationship','pages',0,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\Page\",\"table\":\"pages\",\"type\":\"belongsTo\",\"column\":\"sub_menu\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"alumnis\",\"pivot\":\"0\",\"taggable\":\"0\"}',7),(235,38,'sub_menu','text','Sub Menu',0,1,1,1,1,1,'{}',6),(236,39,'id','text','Id',1,0,0,0,0,0,'{}',1),(237,39,'image','image','Image',0,1,1,1,1,1,'{}',2),(238,39,'heading','text','Heading',0,1,1,1,1,1,'{}',3),(239,39,'subheading','text','Subheading',0,1,1,1,1,1,'{}',4),(240,39,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',5),(241,39,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',6),(242,38,'slug','text','Slug',0,1,1,1,1,1,'{\"slugify\":{\"origin\":\"title\"}}',7),(243,42,'id','text','Id',1,0,0,0,0,0,'{}',1),(244,42,'nama_guru','text','Nama Guru',0,1,1,1,1,1,'{}',2),(245,42,'image','image','Image',0,1,1,1,1,1,'{}',3),(246,42,'jurusan','text','Jurusan',0,1,1,1,1,1,'{}',4),(247,42,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',5),(248,42,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',6),(249,42,'guru_kejuruan_belongsto_page_relationship','relationship','pages',0,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\Page\",\"table\":\"pages\",\"type\":\"belongsTo\",\"column\":\"jurusan\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"alumnis\",\"pivot\":\"0\",\"taggable\":\"0\"}',7),(250,44,'id','text','Id',1,0,0,0,0,0,'{}',1),(251,44,'nama_guru','text','Nama Guru',0,1,1,1,1,1,'{}',2),(252,44,'foto','image','Foto',0,1,1,1,1,1,'{}',3),(253,44,'kategori_guru','text','Kategori Guru',0,1,1,1,1,1,'{}',4),(254,44,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',5),(255,44,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',6),(256,44,'deleted_at','timestamp','Deleted At',0,1,1,1,1,1,'{}',7),(257,44,'kategori_id','text','Kategori Id',0,1,1,1,1,1,'{}',8),(258,45,'id','text','Id',1,0,0,0,0,0,'{}',1),(259,45,'nama_kategori','text','Nama Kategori',0,1,1,1,1,1,'{}',2),(260,45,'foto','image','Foto',0,1,1,1,1,1,'{}',3),(261,45,'caption','rich_text_box','Caption',0,1,1,1,1,1,'{}',4),(262,45,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',5),(263,45,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',6),(264,45,'deleted_at','timestamp','Deleted At',0,1,1,1,1,1,'{}',7),(265,45,'slug','text','Slug',0,1,1,1,1,1,'{}',8),(266,44,'gallery_belongsto_kategori_relationship','relationship','kategoris',0,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\Kategori\",\"table\":\"kategoris\",\"type\":\"belongsTo\",\"column\":\"kategori_guru\",\"key\":\"id\",\"label\":\"nama_kategori\",\"pivot_table\":\"alumnis\",\"pivot\":\"0\",\"taggable\":\"0\"}',9),(267,1,'user_belongsto_kela_relationship','relationship','kelas',0,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\Kela\",\"table\":\"kelas\",\"type\":\"belongsTo\",\"column\":\"kelas_siswa\",\"key\":\"id\",\"label\":\"nama_kelas\",\"pivot_table\":\"alumnis\",\"pivot\":\"0\",\"taggable\":\"0\"}',16),(268,47,'id','text','Id',1,0,0,0,0,0,'{}',1),(269,47,'image','image','Image',0,1,1,1,1,1,'{}',2),(270,47,'title','text','Title',0,1,1,1,1,1,'{}',3),(271,47,'slug','text','Slug',0,1,1,1,1,1,'{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}',4),(272,47,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',5),(273,47,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',6),(274,1,'nomor_induk','text','Nomor Induk',0,1,1,1,1,1,'{}',13),(275,1,'jabatan_guru','text','Jabatan Guru',0,1,1,1,1,1,'{}',15),(276,1,'kelas_siswa','text','Kelas Siswa',0,1,1,1,1,1,'{}',17),(277,1,'spesifc_role','text','Jabatan Guru',1,1,1,1,1,1,'{}',18),(278,1,'mapel_id','text','Mapel Id',0,1,1,1,1,1,'{}',20),(279,48,'id','hidden','Id',1,0,0,0,0,0,'{}',1),(280,48,'bio','text','Bio',0,1,1,1,1,1,'{}',2),(281,48,'no_telpon','text','No Telpon',0,1,1,1,1,1,'{}',3),(282,48,'skill','text','Skill',0,1,1,1,1,1,'{}',4),(283,48,'cv','text','Cv',0,1,1,1,1,1,'{}',5),(284,48,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',6),(285,48,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',7),(286,49,'id','hidden','Id',1,0,0,0,0,0,'{}',1),(287,49,'nama_skill','text','Nama Skill',0,1,1,1,1,1,'{}',2),(288,49,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',3),(289,49,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',4),(290,1,'user_belongsto_detail_user_relationship','relationship','detail_users',0,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\DetailUser\",\"table\":\"detail_users\",\"type\":\"belongsTo\",\"column\":\"detail_user\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"alumnis\",\"pivot\":\"0\",\"taggable\":\"0\"}',21),(291,1,'detail_user','text','Detail User',0,1,1,1,1,1,'{}',22),(292,55,'id','text','Id',1,0,0,0,0,0,'{}',1),(293,55,'calon_siswa_id','text','Calon Siswa Id',0,1,1,1,1,1,'{}',2),(294,55,'nominal','text','Nominal',0,1,1,1,1,1,'{}',3),(295,55,'metode_bayar','text','Metode Bayar',0,1,1,1,1,1,'{}',4),(296,55,'bukti_bayar','text','Bukti Bayar',0,1,1,1,1,1,'{}',5),(297,55,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',6),(298,55,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',7),(299,56,'id','text','Id',1,0,0,0,0,0,'{}',1),(300,56,'calon_siswa_id','text','Calon Siswa Id',0,1,1,1,1,1,'{}',2),(301,56,'nominal','text','Nominal',0,1,1,1,1,1,'{}',3),(302,56,'metode_bayar','text','Metode Bayar',0,1,1,1,1,1,'{}',4),(303,56,'bukti_bayar','text','Bukti Bayar',0,1,1,1,1,1,'{}',5),(304,56,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',6),(305,56,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',7),(306,51,'id','text','Id',1,0,0,0,0,0,'{}',1),(307,51,'nama_gugus','text','Nama Gugus',0,1,1,1,1,1,'{}',2),(308,51,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',3),(309,51,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',4),(310,1,'user_hasone_calon_siswa_relationship','relationship','calon_siswa',0,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\CalonSiswa\",\"table\":\"calon_siswa\",\"type\":\"hasOne\",\"column\":\"id\",\"key\":\"id\",\"label\":\"nama_lengkap\",\"pivot_table\":\"alumnis\",\"pivot\":\"0\",\"taggable\":\"0\"}',23),(311,51,'gugu_hasone_calon_siswa_relationship','relationship','calon_siswa',0,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\CalonSiswa\",\"table\":\"calon_siswa\",\"type\":\"hasOne\",\"column\":\"id\",\"key\":\"id\",\"label\":\"nama_lengkap\",\"pivot_table\":\"alumnis\",\"pivot\":\"0\",\"taggable\":null}',5),(312,50,'id','text','Id',1,0,0,0,0,0,'{}',1),(313,50,'nama_lengkap','text','Nama Lengkap',0,1,1,1,1,1,'{}',2),(314,50,'tempat_lahir','text','Tempat Lahir',0,1,1,1,1,1,'{}',3),(315,50,'tanggal_lahir','text','Tanggal Lahir',0,1,1,1,1,1,'{}',4),(316,50,'status','text','Status',0,1,1,1,1,1,'{}',5),(317,50,'jurusan','text','Jurusan',0,1,1,1,1,1,'{}',6),(318,50,'note','text','Note',0,1,1,1,1,1,'{}',7),(319,50,'nik','text','Nik',0,1,1,1,1,1,'{}',8),(320,50,'nisn','text','Nisn',0,1,1,1,1,1,'{}',9),(321,50,'agama','text','Agama',0,1,1,1,1,1,'{}',10),(322,50,'alamat','text','Alamat',0,1,1,1,1,1,'{}',11),(323,50,'no_telpon_rumah','text','No Telpon Rumah',0,1,1,1,1,1,'{}',12),(324,50,'no_telpon_hp','text','No Telpon Hp',0,1,1,1,1,1,'{}',13),(325,50,'jenis_kelamin','text','Jenis Kelamin',0,1,1,1,1,1,'{}',14),(326,50,'gugus_id','hidden','Gugus Id',0,1,1,1,1,1,'{}',15),(327,57,'id','text','Id',1,0,0,0,0,0,'{}',1),(328,57,'npsn_sekolah','text','Npsn Sekolah',0,1,1,1,1,1,'{}',2),(329,57,'nama_sekolah','text','Nama Sekolah',0,1,1,1,1,1,'{}',3),(330,57,'alamat_sekolah','text','Alamat Sekolah',0,1,1,1,1,1,'{}',4),(331,57,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',5),(332,57,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',6),(333,59,'id','text','Id',1,0,0,0,0,0,'{}',1),(334,59,'nama_pembayaran','text','Nama Pembayaran',0,1,1,1,1,1,'{}',2),(335,59,'nominal_pembayaran','text','Nominal Pembayaran',0,1,1,1,1,1,'{}',3),(336,59,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',4),(337,59,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',5),(338,60,'id','text','Id',1,0,0,0,0,0,'{}',1),(339,60,'nama_pembayaran','text','Nama Pembayaran',0,1,1,1,1,1,'{}',2),(340,60,'nominal_pembayaran','text','Nominal Pembayaran',0,1,1,1,1,1,'{}',3),(341,60,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',4),(342,60,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',5),(343,64,'id','text','Id',1,0,0,0,0,0,'{}',1),(344,64,'calonsiswa_id','text','Calonsiswa Id',0,1,1,1,1,1,'{}',2),(345,64,'tipecicilan_id','text','Tipecicilan Id',0,1,1,1,1,1,'{}',3),(346,64,'nominal','text','Nominal',0,1,1,1,1,1,'{}',4),(347,64,'metode_bayar','text','Metode Bayar',0,1,1,1,1,1,'{}',5),(348,64,'bukti_bayar','text','Bukti Bayar',0,1,1,1,1,1,'{}',6),(349,64,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',7),(350,64,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',8),(351,64,'status','text','Status',0,1,1,1,1,1,'{}',9),(352,20,'image','image','Image',0,1,1,1,1,1,'{\"resize\":{\"width\":\"1000\",\"height\":null},\"quality\":\"70%\",\"upsize\":true}',6),(353,20,'slug','text','Slug',0,1,1,1,1,1,'{\"slugify\":{\"origin\":\"jurusan\"},\"validation\":{\"rule\":\"unique:jurusans,slug\"}}',7),(354,65,'id','text','Id',1,0,0,0,0,0,'{}',1),(355,65,'title','text','Title',0,1,1,1,1,1,'{}',2),(356,65,'body','text','Body',0,1,1,1,1,1,'{}',4),(357,65,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',5),(358,65,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',6),(359,65,'jurusan','text','Jurusan',0,1,1,1,1,1,'{}',7),(360,65,'content_jurusan_belongsto_tab_jurusan_relationship','relationship','Title',0,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\TabJurusan\",\"table\":\"tab_jurusans\",\"type\":\"belongsTo\",\"column\":\"title\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"alumnis\",\"pivot\":\"0\",\"taggable\":\"0\"}',3),(361,65,'content_jurusan_belongsto_jurusan_relationship','relationship','Jurusan',0,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\Jurusan\",\"table\":\"jurusans\",\"type\":\"belongsTo\",\"column\":\"jurusan\",\"key\":\"id\",\"label\":\"jurusan\",\"pivot_table\":\"alumnis\",\"pivot\":\"0\",\"taggable\":\"0\"}',8),(362,66,'id','text','Id',1,0,0,0,0,0,'{}',1),(363,66,'image','text','Image',0,1,1,1,1,1,'{}',2),(364,66,'jurusan','text','Jurusan',0,1,1,1,1,1,'{}',3),(365,66,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',5),(366,66,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',6),(367,66,'gallery_jurusan_belongsto_jurusan_relationship','relationship','Jurusan',0,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\Jurusan\",\"table\":\"jurusans\",\"type\":\"belongsTo\",\"column\":\"jurusan\",\"key\":\"id\",\"label\":\"jurusan\",\"pivot_table\":\"alumnis\",\"pivot\":\"0\",\"taggable\":\"0\"}',4),(368,68,'id','text','Id',1,0,0,0,0,0,'{}',1),(369,68,'title','text','Title',0,1,1,1,1,1,'{}',2),(370,68,'body','text','Body',0,1,1,1,1,1,'{}',4),(371,68,'eskul','text','Eskul',0,1,1,1,1,1,'{}',5),(372,68,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',7),(373,68,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',8),(374,68,'content_ekskul_belongsto_tab_ekskul_relationship','relationship','Title',0,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\TabEkskul\",\"table\":\"tab_ekskuls\",\"type\":\"belongsTo\",\"column\":\"title\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"alumnis\",\"pivot\":\"0\",\"taggable\":\"0\"}',3),(375,68,'content_ekskul_belongsto_ekskul_relationship','relationship','Eskul',0,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\Ekskul\",\"table\":\"ekskuls\",\"type\":\"belongsTo\",\"column\":\"eskul\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"alumnis\",\"pivot\":\"0\",\"taggable\":\"0\"}',6),(376,69,'id','text','Id',1,0,0,0,0,0,'{}',1),(377,69,'image','image','Image',0,1,1,1,1,1,'{}',2),(378,69,'eskul','text','Eskul',0,1,1,1,1,1,'{}',3),(379,69,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',5),(380,69,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',6),(381,69,'gallery_ekskul_belongstomany_ekskul_relationship','relationship','Eskul',0,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\Ekskul\",\"table\":\"ekskuls\",\"type\":\"belongsTo\",\"column\":\"id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"ekskuls\",\"pivot\":\"0\",\"taggable\":\"0\"}',4),(382,70,'id','text','Id',1,0,0,0,0,0,'{}',1),(383,70,'image','text','Image',0,1,1,1,1,1,'{}',2),(384,70,'jurusan','text','Jurusan',0,1,1,1,1,1,'{}',3),(385,70,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',5),(386,70,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',6),(387,70,'gallery_jurusan_belongsto_jurusan_relationship_1','relationship','Jurusan',0,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\Jurusan\",\"table\":\"jurusans\",\"type\":\"belongsTo\",\"column\":\"jurusan\",\"key\":\"id\",\"label\":\"jurusan\",\"pivot_table\":\"alumnis\",\"pivot\":\"0\",\"taggable\":\"0\"}',4),(388,71,'id','text','Id',1,0,0,0,0,0,'{}',1),(389,71,'name','text','Name',0,1,1,1,1,1,'{}',2),(390,71,'slug','text','Slug',0,1,1,1,1,1,'{}',3),(391,71,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',4),(392,71,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',5),(393,72,'id','text','Id',1,0,0,0,0,0,'{}',1),(394,72,'name','text','Name',0,1,1,1,1,1,'{}',2),(395,72,'slug','text','Slug',0,1,1,1,1,1,'{}',3),(396,72,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',4),(397,72,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',5),(398,71,'tab_jurusan_belongsto_jurusan_relationship','relationship','Jurusan',0,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\Jurusan\",\"table\":\"jurusans\",\"type\":\"belongsTo\",\"column\":\"jurusan\",\"key\":\"id\",\"label\":\"jurusan\",\"pivot_table\":\"alumnis\",\"pivot\":\"0\",\"taggable\":\"0\"}',6),(399,71,'jurusan','text','Jurusan',0,1,1,1,1,1,'{}',6),(400,72,'tab_ekskul_belongsto_ekskul_relationship','relationship','eskul',0,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\Ekskul\",\"table\":\"ekskuls\",\"type\":\"belongsTo\",\"column\":\"eskul\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"alumnis\",\"pivot\":\"0\",\"taggable\":\"0\"}',6),(401,72,'eskul','text','Eskul',0,1,1,1,1,1,'{}',6),(402,32,'mata_pelajaran','text','Mata Pelajaran',1,1,1,1,1,1,'{}',2),(403,1,'calon_siswa_id','text','Calon Siswa Id',0,1,1,1,1,1,'{}',24);
/*!40000 ALTER TABLE `data_rows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_types`
--

DROP TABLE IF EXISTS `data_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `data_types` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint NOT NULL DEFAULT '0',
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_types_name_unique` (`name`),
  UNIQUE KEY `data_types_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_types`
--

LOCK TABLES `data_types` WRITE;
/*!40000 ALTER TABLE `data_types` DISABLE KEYS */;
INSERT INTO `data_types` VALUES (1,'users','users','User','Users','voyager-person','TCG\\Voyager\\Models\\User','TCG\\Voyager\\Policies\\UserPolicy','TCG\\Voyager\\Http\\Controllers\\VoyagerUserController',NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}','2021-09-21 07:32:51','2022-01-27 05:25:22'),(2,'menus','menus','Menu','Menus','voyager-list','TCG\\Voyager\\Models\\Menu',NULL,'','',1,0,NULL,'2021-09-21 07:32:51','2021-09-21 07:32:51'),(3,'roles','roles','Role','Roles','voyager-lock','TCG\\Voyager\\Models\\Role',NULL,'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController','',1,0,NULL,'2021-09-21 07:32:52','2021-09-21 07:32:52'),(4,'categories','categories','Category','Categories','voyager-categories','TCG\\Voyager\\Models\\Category',NULL,'','',1,0,NULL,'2021-09-21 07:33:09','2021-09-21 07:33:09'),(5,'posts','posts','Post','Posts','voyager-news','TCG\\Voyager\\Models\\Post','TCG\\Voyager\\Policies\\PostPolicy',NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}','2021-09-21 07:33:11','2021-10-17 06:25:06'),(6,'pages','pages','Page','Pages','voyager-file-text','TCG\\Voyager\\Models\\Page',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}','2021-09-21 07:33:12','2021-10-17 04:33:32'),(7,'gurus','gurus','Guru','Gurus',NULL,'App\\Models\\Guru',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-09-21 20:11:32','2022-02-23 07:11:47'),(8,'siswas','siswas','Siswa','Siswas',NULL,'App\\Models\\Siswa',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-09-21 20:12:14','2021-10-16 12:51:55'),(9,'managers','managers','Manager','Managers',NULL,'App\\Models\\Manager',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-09-21 20:20:00','2021-09-23 20:59:38'),(10,'kelas','kelas','Kela','Kelas',NULL,'App\\Models\\Kela',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-09-21 20:32:15','2021-11-24 01:41:14'),(16,'alumnis','alumnis','Alumni','Alumnis',NULL,'App\\Models\\Alumni',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-09-29 21:41:44','2022-01-09 02:02:46'),(17,'categories_alumnis','categories-alumnis','Categories Alumni','Categories Alumnis',NULL,'App\\Models\\CategoriesAlumni',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-09-29 21:51:04','2021-09-29 23:51:34'),(19,'partners','partners','Partner','Partners',NULL,'App\\Models\\Partner',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-09-29 21:52:12','2021-10-13 05:13:25'),(20,'jurusans','jurusans','Jurusan','Jurusans',NULL,'App\\Models\\Jurusan',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-09-29 23:52:50','2022-01-07 17:54:15'),(30,'content_sarpras','content-sarpras','Content Sarpra','Content Sarpras',NULL,'App\\Models\\ContentSarpra',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-10-06 14:30:52','2021-10-17 08:34:43'),(31,'gallery_sarpras','gallery-sarpras','Gallery Sarpra','Gallery Sarpras',NULL,'App\\Models\\GallerySarpra',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-10-06 14:35:52','2021-10-17 02:53:32'),(32,'mapels','mapels','Mapel','Mapels',NULL,'App\\Models\\Mapel',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-10-07 02:56:07','2022-01-27 05:12:30'),(34,'navbars','navbars','Navbar','Navbars',NULL,'App\\Models\\Navbar',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-10-16 04:24:34','2021-10-17 06:17:25'),(36,'images','images','Image','Images',NULL,'App\\Models\\Image',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}','2021-10-17 03:22:34','2021-10-17 03:22:34'),(37,'videos','videos','Video','Videos',NULL,'App\\Models\\Video',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-10-17 03:24:19','2021-10-18 05:43:23'),(38,'contents','contents','Content','Contents',NULL,'App\\Models\\Content',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-10-17 09:10:31','2021-10-21 06:45:28'),(39,'backgrounds','backgrounds','Background','Backgrounds',NULL,'App\\Models\\Background',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}','2021-10-18 07:11:15','2021-10-18 07:11:15'),(42,'guru_kejuruans','guru-kejuruans','Guru Kejuruan','Guru Kejuruans','&#xe066;','App\\Models\\GuruKejuruan',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-10-21 07:08:03','2021-10-21 07:11:00'),(44,'galleries','galleries','Gallery','Galleries',NULL,'App\\Models\\Gallery',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-10-21 07:12:49','2021-10-21 07:14:21'),(45,'kategoris','kategoris','Kategori','Kategoris',NULL,'App\\Models\\Kategori',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}','2021-10-21 07:13:41','2021-10-21 07:13:41'),(47,'ekskuls','ekskuls','Ekskul','Ekskuls',NULL,'App\\Models\\Ekskul',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}','2021-10-21 08:57:59','2021-10-21 08:57:59'),(48,'detail_users','detail-users','Detail User','Detail Users',NULL,'App\\Models\\DetailUser',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}','2021-10-23 04:09:48','2021-10-23 04:09:48'),(49,'skills','skills','Skill','Skills',NULL,'App\\Models\\Skill',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}','2021-10-23 04:10:19','2021-10-23 04:10:19'),(50,'calon_siswa','calon-siswa','Calon Siswa','Calon Siswas',NULL,'App\\Models\\CalonSiswa',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-11-07 10:54:00','2021-11-12 23:09:24'),(51,'gugus','gugus','Gugu','Gugus',NULL,'App\\Models\\Gugus',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-11-07 21:26:32','2021-11-09 09:28:54'),(52,'pembayaran_CalonSiswas','pembayaran-calonsiswas','Pembayaran Calonsiswa','Pembayaran Calonsiswas',NULL,'App\\Models\\PembayaranCalonSiswa',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}','2021-11-08 02:52:33','2021-11-08 02:52:33'),(53,'pembayaran','pembayaran','Pembayaran','Pembayarans',NULL,'App\\Models\\Pembayaran',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}','2021-11-08 02:53:16','2021-11-08 02:53:16'),(57,'asal_sekolahs','asal-sekolahs','Asal Sekolah','Asal Sekolahs',NULL,'App\\Models\\AsalSekolah',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-11-13 14:40:28','2021-11-13 14:41:39'),(60,'pembayarans','pembayarans','Pembayaran','Pembayarans',NULL,'App\\Models\\Pembayaran',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-11-25 00:57:07','2021-11-25 04:11:40'),(64,'pembayaran_calonsiswass','pembayaran-calonsiswass','Pembayaran Calonsiswass','Pembayaran Calonsiswasses',NULL,'App\\Models\\PembayaranCalonSiswa',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}','2021-11-25 07:06:15','2021-11-25 07:06:15'),(65,'content_jurusans','content-jurusans','Content Jurusan','Content Jurusans',NULL,'App\\Models\\ContentJurusan',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2022-01-07 18:11:11','2022-01-07 18:22:53'),(68,'content_ekskuls','content-ekskuls','Content Ekskul','Content Ekskuls',NULL,'App\\Models\\ContentEkskul',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2022-01-07 20:36:19','2022-01-09 09:14:37'),(69,'gallery_ekskuls','gallery-ekskuls','Gallery Ekskul','Gallery Ekskuls',NULL,'App\\Models\\GalleryEkskul',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2022-01-07 20:42:05','2022-01-09 03:10:21'),(70,'gallery_jurusans','gallery-jurusans','Gallery Jurusan','Gallery Jurusans',NULL,'App\\Models\\GalleryJurusan',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2022-01-09 03:06:35','2022-01-09 03:08:02'),(71,'tab_jurusans','tab-jurusans','Tab Jurusan','Tab Jurusans',NULL,'App\\Models\\TabJurusan',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2022-01-09 07:19:14','2022-01-10 04:44:57'),(72,'tab_ekskuls','tab-ekskuls','Tab Ekskul','Tab Ekskuls',NULL,'App\\Models\\TabEkskul',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2022-01-09 09:09:48','2022-01-11 03:25:47'),(73,'user_reference','user-reference','User Reference','User References',NULL,'App\\Models\\UserReference',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}','2022-01-26 05:41:33','2022-01-26 05:41:33');
/*!40000 ALTER TABLE `data_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detail_privasi_casis`
--

DROP TABLE IF EXISTS `detail_privasi_casis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detail_privasi_casis` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `tinggi_badan` decimal(10,0) NOT NULL,
  `berat_badan` decimal(10,0) NOT NULL,
  `lingkar_kepala` decimal(10,0) DEFAULT NULL,
  `lingkar_pinggang` decimal(10,0) DEFAULT NULL,
  `jarak_rumah_ke_sekolah` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `waktu_tempuh` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `anak_ke` int DEFAULT NULL,
  `jumlah_saudara_kandung` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detail_privasi_casis`
--

LOCK TABLES `detail_privasi_casis` WRITE;
/*!40000 ALTER TABLE `detail_privasi_casis` DISABLE KEYS */;
INSERT INTO `detail_privasi_casis` VALUES (15,190,70,NULL,NULL,NULL,NULL,NULL,NULL,'2021-11-22 21:59:02','2021-11-26 02:58:33'),(29,170,45,NULL,NULL,NULL,NULL,NULL,NULL,'2021-11-25 16:34:32','2021-11-25 16:34:32'),(31,165,49,NULL,NULL,NULL,NULL,NULL,NULL,'2021-12-06 02:44:34','2021-12-06 02:44:34'),(32,165,49,NULL,NULL,NULL,NULL,NULL,NULL,'2021-12-06 02:45:39','2021-12-06 02:45:39'),(33,170,50,NULL,NULL,NULL,NULL,NULL,NULL,'2021-12-06 02:54:52','2021-12-06 02:54:52'),(34,170,61,NULL,NULL,NULL,NULL,NULL,NULL,'2022-01-06 18:10:18','2022-01-06 18:13:00'),(36,180,65,NULL,NULL,NULL,NULL,NULL,NULL,'2022-01-06 18:46:13','2022-01-06 18:46:13'),(37,170,50,NULL,NULL,NULL,NULL,NULL,NULL,'2022-01-06 18:48:52','2022-01-06 18:48:52'),(38,170,50,NULL,NULL,NULL,NULL,NULL,NULL,'2022-01-06 18:49:17','2022-01-06 18:49:17'),(39,170,50,20,50,'2km','4 menit',3,3,'2022-01-06 18:50:45','2022-02-17 15:05:31'),(40,170,57,NULL,NULL,NULL,NULL,NULL,NULL,'2022-02-26 01:35:27','2022-02-26 01:35:27'),(41,170,55,NULL,NULL,NULL,NULL,NULL,NULL,'2022-02-26 01:50:35','2022-02-26 01:50:35'),(42,120,12,NULL,NULL,NULL,NULL,NULL,NULL,'2022-02-26 01:57:00','2022-02-26 01:57:00'),(44,170,50,NULL,NULL,NULL,NULL,NULL,NULL,'2022-02-26 02:01:36','2022-02-26 02:01:36'),(45,170,70,NULL,NULL,NULL,NULL,NULL,NULL,'2022-02-26 02:08:34','2022-02-26 02:08:34'),(46,176,60,NULL,NULL,NULL,NULL,NULL,NULL,'2022-02-26 02:19:21','2022-02-26 02:19:21');
/*!40000 ALTER TABLE `detail_privasi_casis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detail_users`
--

DROP TABLE IF EXISTS `detail_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detail_users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `bio` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_telpon` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skill` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cv` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detail_users`
--

LOCK TABLES `detail_users` WRITE;
/*!40000 ALTER TABLE `detail_users` DISABLE KEYS */;
INSERT INTO `detail_users` VALUES (1,'Hanya seorang pelajar yang gemar memperdalam ilmu IT','23','1,2','user-cv/1641790497 Cerita sejarah Danau TOBA (1).pdf','2021-10-23 09:49:48','2022-01-10 04:54:57'),(2,'perusaahaan ini bergerak di bidang pertambangan','0023912',NULL,NULL,'2021-10-24 04:59:28','2021-10-24 04:59:47'),(3,NULL,'23',NULL,'user-cv/1635064836 CV -  Nur Firdaus Ramandani.pdf','2021-10-24 08:40:36','2021-10-24 08:40:36'),(4,NULL,'08121311226',NULL,NULL,'2021-10-24 10:52:13','2021-10-24 10:52:13'),(5,NULL,NULL,NULL,NULL,'2021-10-29 08:34:17','2021-10-29 08:36:22'),(6,NULL,NULL,NULL,NULL,'2021-11-26 00:48:55','2021-11-26 00:49:47'),(7,NULL,NULL,NULL,NULL,'2022-01-11 03:36:31','2022-01-28 03:51:39'),(8,NULL,'0817273','1',NULL,'2022-01-27 05:05:49','2022-01-27 05:07:11');
/*!40000 ALTER TABLE `detail_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ekskuls`
--

DROP TABLE IF EXISTS `ekskuls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ekskuls` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `slug` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ekskuls`
--

LOCK TABLES `ekskuls` WRITE;
/*!40000 ALTER TABLE `ekskuls` DISABLE KEYS */;
INSERT INTO `ekskuls` VALUES (1,'ekskuls/October2021/fJRvSSE8wBktBSYM6loX.png','Volley Ball','volley-ball','2021-10-21 08:59:14','2021-10-21 08:59:14'),(2,'ekskuls/October2021/h5LOMjyTF4QeFpPCmOGt.png','Dance','dance','2021-10-21 08:59:53','2021-10-21 08:59:53'),(3,'ekskuls/October2021/1RYFDpTreAFz4AA1qtf4.png','Futsal','futsal','2021-10-21 09:00:19','2021-10-21 09:00:19'),(4,'ekskuls/October2021/QtEbQpl4xLxusU4gdUF8.png','Pencak silat','pencak-silat','2021-10-21 09:00:48','2021-10-21 09:00:48'),(5,'ekskuls/October2021/GEWdAyJIGuMhDruMncJQ.png','Hadroh','hadroh','2021-10-21 09:01:22','2021-10-21 09:01:22'),(6,'ekskuls/October2021/Tqi6ozfRLUXvxdNBYC7h.png','Japanese Club','japanese-club','2021-10-21 09:02:20','2021-10-21 09:02:20'),(7,'ekskuls/October2021/wTxxDVcGsrdD7jiYLZrv.png','Basket Ball','basket-ball','2021-10-21 09:02:54','2021-10-21 09:02:54'),(8,'ekskuls/October2021/Mi2H3YMXGqnBNq7kxeCA.png','PMR','pmr','2021-10-21 09:03:35','2021-10-21 09:03:35'),(9,'ekskuls/October2021/D2qIICbaaoqwAhnz2ctK.png','Paskibra','paskibra','2021-10-21 09:03:55','2021-10-21 09:03:55'),(10,'ekskuls/October2021/6LWJE0NJcGDNgS8tAmHu.png','Bulu Tangkis','bulu-tangkis','2021-10-21 09:04:28','2021-10-21 09:04:28');
/*!40000 ALTER TABLE `ekskuls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galleries`
--

DROP TABLE IF EXISTS `galleries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `galleries` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nama_guru` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foto` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `kategori_guru` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `kategori_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries`
--

LOCK TABLES `galleries` WRITE;
/*!40000 ALTER TABLE `galleries` DISABLE KEYS */;
INSERT INTO `galleries` VALUES (1,'Dwi Sustiawan, S,Pd','galleries\\October2021\\tRjuTMl5QJClLWHL7LQO.jpg','5','2021-10-02 04:41:54','2021-10-02 06:14:10',NULL,NULL),(2,'Edena Dharma Putri, SE','galleries\\October2021\\oNWzOLkv1y2xOjhIlDZH.jpg','2','2021-10-02 04:51:59','2021-10-04 06:39:54',NULL,NULL),(3,'Abdul Fatah, SE','galleries\\October2021\\bLgBkJFlPNwnXdJTGxqQ.jpg','5','2021-10-02 04:54:28','2021-10-04 06:40:17',NULL,NULL),(4,'Abdul Hamid','galleries\\October2021\\NlsROJQYTnELVuI9NarR.jpg','4','2021-10-02 04:55:28','2021-10-04 05:36:36',NULL,NULL),(5,'Agung Setiawan, ST','galleries\\October2021\\lrdj4aZyxNccTeDCxSjo.jpg','1','2021-10-02 04:56:15','2021-10-04 05:38:33',NULL,NULL),(7,'Agus Diana, S. Kom','galleries\\October2021\\obUL7ZeK0rVEbOa6O6js.jpg','4','2021-10-02 04:57:12','2021-10-02 04:57:24',NULL,NULL),(8,'Ahmad Fadli','galleries\\October2021\\1IuYy97e7soRWl1NUKzH.jpg',NULL,'2021-10-02 04:58:34','2021-10-02 04:58:34',NULL,NULL),(9,'Ahmad Samaun','galleries\\October2021\\58PCcMA3UZ15ZhcU2RcI.jpg',NULL,'2021-10-02 04:59:11','2021-10-02 04:59:11',NULL,NULL),(10,'Aji Sulistyo','galleries\\October2021\\OdiyiQZWm6jGvjt6hMVX.jpg','4','2021-10-02 05:00:30','2021-10-04 05:37:56',NULL,NULL),(11,'Aldien Ramadhian','galleries\\October2021\\UnkkqE3CqVEZxlxBdOeA.jpg','2','2021-10-02 05:01:09','2021-10-04 06:45:56',NULL,NULL),(12,'Ana Susilowati S. Pd','galleries\\October2021\\VLBhTQK6bIOQ4G0GekAn.jpg','1','2021-10-02 05:03:26','2021-10-02 05:03:26',NULL,NULL),(13,'Andri','galleries\\October2021\\WmOmLNUtFfogg2wdA0p4.jpg',NULL,'2021-10-02 06:26:32','2021-10-02 06:26:32',NULL,NULL),(14,'Aniek Rochmawati S. Pd','galleries\\October2021\\SoQrORj4EX1zl3sJeKck.jpg','5','2021-10-02 06:27:33','2021-10-02 06:27:33',NULL,NULL),(16,'Anita Triana S, S. Pd','galleries\\October2021\\2nC8ZVAQeuzaoruPcuBa.jpg','4','2021-10-02 07:02:04','2021-10-04 06:33:39',NULL,NULL),(17,'Annisa Anggi Rahayu, S. Ds','galleries\\October2021\\fAx2R0l4SxITZmUpeHd4.jpg','4','2021-10-02 07:03:07','2021-10-04 05:39:37',NULL,NULL),(19,'Atik Solihat, S. Pd','galleries\\October2021\\7rVoofWGzThhiqNWOaRu.jpg','1','2021-10-02 07:05:59','2021-10-04 06:37:46',NULL,NULL),(20,'Ajizah Afriani, A. Md','galleries\\October2021\\dWPZoRuGrsAg5ZfSyRWB.jpg','2','2021-10-02 07:06:41','2021-10-04 06:40:45',NULL,NULL),(21,'Casdik, ST','galleries\\October2021\\aIVebrY7Fy7JXuppvHgb.jpg','4','2021-10-02 07:34:16','2021-10-04 05:39:56',NULL,NULL),(22,'Devi Maryani, A. Md','galleries\\October2021\\s4EmUGfa44JomIMSU1SG.jpg','2','2021-10-02 07:35:04','2021-10-04 06:37:25',NULL,NULL),(23,'Dharma Wahyu Nurhidayati, A. Md','galleries\\October2021\\HWeIlJVzH6zkvdVJ9VzM.jpg','4','2021-10-02 07:36:18','2021-10-04 05:40:14',NULL,NULL),(25,'Diaz Rika','galleries\\October2021\\rHkfd10kGqvo8SE4A0lU.jpg','1','2021-10-04 05:16:29','2021-10-04 05:16:29',NULL,NULL),(26,'Drs. Abdul Rosyid','galleries\\October2021\\w8J1nGUwfouDZF3S6PZV.jpg','5','2021-10-04 05:17:24','2021-10-04 06:36:47',NULL,NULL),(27,'Fariz Ahmad','galleries\\October2021\\hVDTt8qG7NNOQ6BAsGgI.jpg','5','2021-10-04 05:18:23','2021-10-04 05:41:27',NULL,NULL),(28,'Fatimah Elvi Br. Tarigan, S.Kom','galleries\\October2021\\BirWdYVQQrdnnS7mjEo4.jpg','5','2021-10-04 05:20:02','2021-10-04 05:20:02',NULL,NULL),(29,'Furida Lusi Siagian, S,Pd. M','galleries\\October2021\\o6CdnV42AJJ4paHPgJnS.jpg','5','2021-10-04 05:21:06','2021-10-04 05:21:06',NULL,NULL),(30,'Gebbi Abda Mahes Multazam, S.Pdi','galleries\\October2021\\2Rhek90XRablYiYiFFd6.jpg','5','2021-10-04 05:23:39','2021-10-04 05:40:41',NULL,NULL),(32,'Heni Siswanti, S.Psi','galleries\\October2021\\P4C1snsPAJJXFzAb7qN5.jpg','3','2021-10-04 05:26:49','2021-10-04 05:26:49',NULL,NULL),(33,'Hesti Herawati, A.Md','galleries\\October2021\\a4ZZ7ou5NtdOQeZeEptP.jpg','4','2021-10-04 05:28:14','2021-10-04 05:28:14',NULL,NULL),(34,'Ika Rafika, S. Pd','galleries\\October2021\\RrMLiuoHdDawKvfLbjEI.jpg','3','2021-10-04 05:29:04','2021-10-04 06:36:01',NULL,NULL),(35,'Ilham Wahyudi Siadi','galleries\\October2021\\ESskwYamAkuWzxzODLmO.jpg','4','2021-10-04 05:30:55','2021-10-04 06:19:38',NULL,NULL),(36,'Ismawardani Retnosari, S.Pd','galleries\\October2021\\o4ojAmVQ2WeQmYyF6c9F.jpg','5','2021-10-04 05:31:55','2021-10-04 05:41:06',NULL,NULL),(37,'Iwiek Rianawati, SE','galleries\\October2021\\FSqmULGsLD5lgsUKL39I.jpg','2','2021-10-04 05:34:13','2021-10-04 06:35:43',NULL,NULL),(38,'Jumadi, S. Sosi','galleries\\October2021\\RhGr8G0EccAzGP6UxYqr.jpg','5','2021-10-04 05:42:37','2021-10-04 05:42:50',NULL,NULL),(39,'Junaedi','galleries\\October2021\\lYPUbJldzK0A2XdTnB55.jpg',NULL,'2021-10-04 05:43:42','2021-10-04 05:43:42',NULL,NULL),(40,'Lia Debby Juwita, S. Pd','galleries\\October2021\\KfzZaacqYwz9vVrTiA33.jpg','5','2021-10-04 05:45:25','2021-10-04 05:45:25',NULL,NULL),(41,'Lidya Rachmawati','galleries\\October2021\\yqYZpLPkWWYhDYeEPATh.jpg','5','2021-10-04 05:46:07','2021-10-04 05:46:07',NULL,NULL),(42,'M. Yahya','galleries\\October2021\\HkgNTPEFjvujNtSJH4nK.jpg',NULL,'2021-10-04 05:46:51','2021-10-04 05:46:51',NULL,NULL),(43,'Maesitoh, S. Pd','galleries\\October2021\\bmlZZXaPx3k9C5SfwORw.jpg','5','2021-10-04 05:47:57','2021-10-04 05:47:57',NULL,NULL),(44,'Muchlas Edi Kiswanto, S. Pd','galleries\\October2021\\KXxzHH7jtrpPoz5VlbUa.jpg','5','2021-10-04 05:49:11','2021-10-04 06:35:13',NULL,NULL),(45,'Muhammad Rheza Ramandhito','galleries\\October2021\\bHZfDnxlvSfuEoUhgkO9.jpg','1','2021-10-04 05:50:17','2021-10-04 05:50:17',NULL,NULL),(46,'Novita Ambarwati. S, Pd','galleries\\October2021\\CVsxn4jeQGRxPRNW51RI.jpg','5','2021-10-04 05:51:04','2021-10-04 05:51:04',NULL,NULL),(47,'Nursidik, ST','galleries\\October2021\\6AO7EAzyeOvt5c6ws4bN.jpg','5','2021-10-04 05:51:57','2021-10-04 06:36:21',NULL,NULL),(48,'Prasetyadi Eka Yusnanda, S. Pd','galleries\\October2021\\XQAz1x3yiTh6vporyMx5.jpg','5','2021-10-04 05:52:50','2021-10-04 05:52:50',NULL,NULL),(49,'Puguh Rismadi Ismail, S. Kom','galleries\\October2021\\JcHZteiKEeb3KjEaJSsZ.jpg','4','2021-10-04 05:54:28','2021-10-04 05:54:28',NULL,NULL),(50,'Ratna Wati, SE','galleries\\October2021\\b7LTJnvwYUPZQB2fJZNY.jpg','5','2021-10-04 05:55:04','2021-10-04 05:55:04',NULL,NULL),(52,'Reysa Romadhoni','galleries\\October2021\\BZiSBSVHjvB6Zfe9Co8L.jpg','2','2021-10-04 05:57:06','2021-10-04 06:34:42',NULL,NULL),(53,'Reza Maulana, M. Kom','galleries\\October2021\\gaqqiMZyDaCQy3fFK5Xa.jpg','4','2021-10-04 05:57:46','2021-10-04 05:57:46',NULL,NULL),(55,'Rina Wastanti, S. Ikom','galleries\\October2021\\UsA3Q1o6UQtwQQMg7wNq.jpg','4','2021-10-04 06:00:09','2021-10-04 06:00:09',NULL,NULL),(57,'Sarah Andriani Saputri, S. Pd','galleries\\October2021\\k4Xy0jkplfhzt0XjzUhK.jpg','2','2021-10-04 06:02:01','2021-10-04 06:28:34',NULL,NULL),(58,'Sheila Riani Putri, S. Psi','galleries\\October2021\\yy0OIbfaaf6zzBAsz7m1.jpg','3','2021-10-04 06:02:57','2021-10-04 06:02:57',NULL,NULL),(59,'Shinta Dewi, S. Pd','galleries\\October2021\\37lpWXvVFxegd8DSidOw.jpg','4','2021-10-04 06:03:54','2021-10-04 06:03:54',NULL,NULL),(60,'Shova Al-Marwah, S. Pd','galleries\\October2021\\Wj6A6nHBJsropAAwVTYQ.jpg','5','2021-10-04 06:05:39','2021-10-04 06:05:39',NULL,NULL),(61,'Sinta Nuralifah, S. Ikom','galleries\\October2021\\60aAmjwKSYLMgyYPUIYV.jpg','4','2021-10-04 06:06:21','2021-10-04 06:28:11',NULL,NULL),(62,'Siti Sundari, S. Pd','galleries\\October2021\\c1cumLr9huC7ga5PpkE3.jpg','1','2021-10-04 06:07:20','2021-10-04 06:07:20',NULL,NULL),(63,'Slamet','galleries\\October2021\\pTkeSah1DQwrp6cKVzSt.jpg',NULL,'2021-10-04 06:08:00','2021-10-04 06:08:00',NULL,NULL),(64,'Sugeng Santoso, S. Ag','galleries\\October2021\\P35zOHqON4WSUfH0EeqG.jpg','5','2021-10-04 06:09:29','2021-10-04 06:09:29',NULL,NULL),(65,'Sukamdi','galleries\\October2021\\9XQKTHdwP94TLv14tFRv.jpg',NULL,'2021-10-04 06:10:17','2021-10-04 06:10:17',NULL,NULL),(66,'Supriharin, S. Sos','galleries\\October2021\\C5spmc5Nj3tSBDDTuhv7.jpg','5','2021-10-04 06:11:18','2021-10-04 06:11:18',NULL,NULL),(67,'Syamsul Ma\'arif, S. Kom','galleries\\October2021\\dDE3HcARtt0MpZd8EZb5.jpg','5','2021-10-04 06:12:09','2021-10-04 06:12:09',NULL,NULL),(68,'Tanzela Azizi','galleries\\October2021\\mOJjRMwoIGvXkIqqHNXi.jpg','1','2021-10-04 06:12:47','2021-10-04 06:12:47',NULL,NULL),(69,'Tety Suryani','galleries\\October2021\\XeshdJVGYSjGRZZ7nuYs.jpg','5','2021-10-04 06:13:45','2021-10-04 06:13:45',NULL,NULL),(70,'Tuahta Hasiholan, S.Kom','galleries\\October2021\\lpe7XxWPqlwsZy6VpAbL.jpg','4','2021-10-04 06:15:21','2021-10-04 06:15:21',NULL,NULL),(71,'Verra Rousmawati, M. Sc','galleries\\October2021\\ggXN1Pj2nqCSytJ4v1h1.jpg','1','2021-10-04 06:16:41','2021-10-04 06:17:02',NULL,NULL);
/*!40000 ALTER TABLE `galleries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gallery_ekskuls`
--

DROP TABLE IF EXISTS `gallery_ekskuls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gallery_ekskuls` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `eskul` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery_ekskuls`
--

LOCK TABLES `gallery_ekskuls` WRITE;
/*!40000 ALTER TABLE `gallery_ekskuls` DISABLE KEYS */;
INSERT INTO `gallery_ekskuls` VALUES (1,'gallery-ekskuls/January2022/EGm5JDPcElVFL9jgFTx6.jpg','ESKULSS','2022-01-07 20:45:51','2022-01-07 20:45:51'),(2,'gallery-ekskuls/January2022/sHk93QhA6pPcyMiKrSoN.jpg',NULL,'2022-01-07 20:46:12','2022-01-07 20:46:12');
/*!40000 ALTER TABLE `gallery_ekskuls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gallery_jurusans`
--

DROP TABLE IF EXISTS `gallery_jurusans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gallery_jurusans` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jurusan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery_jurusans`
--

LOCK TABLES `gallery_jurusans` WRITE;
/*!40000 ALTER TABLE `gallery_jurusans` DISABLE KEYS */;
/*!40000 ALTER TABLE `gallery_jurusans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gallery_sarpras`
--

DROP TABLE IF EXISTS `gallery_sarpras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gallery_sarpras` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery_sarpras`
--

LOCK TABLES `gallery_sarpras` WRITE;
/*!40000 ALTER TABLE `gallery_sarpras` DISABLE KEYS */;
INSERT INTO `gallery_sarpras` VALUES (1,'2021-10-06 22:16:09','2021-10-06 22:16:09','gallery-sarpras\\October2021\\uiXMs0HvpvuKz9MThdBQ.png','1',NULL),(5,'2021-10-06 22:18:59','2021-10-06 22:18:59','gallery-sarpras\\October2021\\upe2cS30dg0RGoAHlkXB.png','3',NULL),(6,'2021-10-06 22:19:00','2021-10-06 22:19:27','gallery-sarpras\\October2021\\CsOpZi7p1rRDlmAtTxtZ.png','3',NULL),(7,'2021-10-06 22:19:47','2021-10-06 22:19:47','gallery-sarpras\\October2021\\Fze8W5KOfatoL10xSiPL.png','3',NULL),(8,'2021-10-11 00:59:05','2021-10-11 00:59:05','gallery-sarpras\\October2021\\lypubhSP0AKwLa3Yi9WR.jpg','15',NULL),(9,'2021-10-11 01:24:34','2021-10-11 01:24:34','gallery-sarpras\\October2021\\c1lIXWiae7LRvbvDoOf4.jpeg','16',NULL),(11,'2021-10-11 04:03:21','2021-10-11 04:03:21','gallery-sarpras\\October2021\\RXQwBst8QGZc2J1563Gn.jpeg','16',NULL),(12,'2021-10-11 04:21:28','2021-10-11 04:21:28','gallery-sarpras\\October2021\\PRLABFNwjQdeVrNPAsoG.jpeg','16',NULL),(13,'2021-10-11 04:22:00','2021-10-14 11:24:56','gallery-sarpras\\October2021\\kjK8jKuOp41WETjUuOvf.jpeg','2',NULL),(14,'2021-10-11 04:22:00','2021-10-14 11:25:19','gallery-sarpras\\October2021\\zXFDXNLR68t8jqm5DfEv.jpeg','2',NULL),(15,'2021-10-11 04:23:00','2021-10-14 11:25:39','gallery-sarpras\\October2021\\GJ2BnUj7CYCDUkD4Z1Hd.jpeg','2',NULL),(16,'2021-10-13 01:17:59','2021-10-13 01:17:59','gallery-sarpras\\October2021\\pdaNL2iqZhfuogUEd5WP.jpeg','4',NULL),(17,'2021-10-13 01:18:26','2021-10-13 01:18:26','gallery-sarpras\\October2021\\j13bXelhWtWLPPbqe7cd.jpeg','4',NULL),(18,'2021-10-13 01:19:02','2021-10-13 01:19:02','gallery-sarpras\\October2021\\lxdMkS7GYk3absq97kgb.jpeg','4',NULL),(19,'2021-10-13 01:19:28','2021-10-13 01:19:28','gallery-sarpras\\October2021\\zrzRwxgGmad1p2ePA4Ks.jpeg','4',NULL),(20,'2021-10-13 01:20:06','2021-10-13 01:20:06','gallery-sarpras\\October2021\\LxWScFksCUxSOT6oY4V8.jpeg','5',NULL),(21,'2021-10-13 01:20:29','2021-10-13 01:20:29','gallery-sarpras\\October2021\\gNJOmnjib8Kiec4RTAUT.jpeg','5',NULL),(22,'2021-10-13 01:21:02','2021-10-13 01:21:02','gallery-sarpras\\October2021\\gnm5nkynWYLQckoOJ40m.jpeg','5',NULL),(23,'2021-10-13 01:21:30','2021-10-13 01:21:30','gallery-sarpras\\October2021\\s2WHYsUwocd5qZU1dWFi.jpeg','5',NULL),(24,'2021-10-13 01:22:35','2021-10-13 01:22:35','gallery-sarpras\\October2021\\qucz1Sc1JEk9bqJ87q5a.jpeg','6',NULL),(25,'2021-10-13 01:23:20','2021-10-13 01:23:20','gallery-sarpras\\October2021\\iyI40vE4Jjn12pOU9f8p.jpeg','6',NULL),(26,'2021-10-13 01:23:45','2021-10-13 01:23:45','gallery-sarpras\\October2021\\Srlz2MiZfG6L4nppQYMq.jpeg','6',NULL),(27,'2021-10-13 01:24:29','2021-10-13 01:24:29','gallery-sarpras\\October2021\\BPu0azo5d0Y1Yy81Pq9K.jpeg','6',NULL),(28,'2021-10-13 01:25:33','2021-10-13 01:25:33','gallery-sarpras\\October2021\\ViuFmQMFJRNl2TXNBxM4.jpeg','7',NULL),(29,'2021-10-13 01:25:58','2021-10-13 01:25:58','gallery-sarpras\\October2021\\srB1vFlxsOL5lB1RniGf.jpeg','7',NULL),(30,'2021-10-13 01:26:26','2021-10-13 01:26:26','gallery-sarpras\\October2021\\MVZQgneF6035oJemCUOc.jpeg','7',NULL),(31,'2021-10-13 01:26:55','2021-10-13 01:26:55','gallery-sarpras\\October2021\\raTVZ1ZpjRt7zF96malk.jpeg','7',NULL),(32,'2021-10-13 01:27:32','2021-10-13 01:27:32','gallery-sarpras\\October2021\\l4XOumxo59FKguHPwpha.jpeg','8',NULL),(33,'2021-10-13 01:27:54','2021-10-13 01:27:54','gallery-sarpras\\October2021\\5kNyoHzM8fSZlB4Qplia.jpeg','8',NULL),(34,'2021-10-13 01:28:26','2021-10-13 01:28:26','gallery-sarpras\\October2021\\X8L1gJMGoROpcZ826385.jpeg','8',NULL),(35,'2021-10-13 01:29:03','2021-10-13 01:29:03','gallery-sarpras\\October2021\\sokvMh9dIDYtbwm15PO9.jpeg','8',NULL),(36,'2021-10-13 02:03:02','2021-10-13 02:03:02','gallery-sarpras\\October2021\\G1rAsJlLVEsyastOo52l.jpg','15','Gedung Sekolah'),(37,'2021-10-13 02:03:40','2021-10-13 02:03:40','gallery-sarpras\\October2021\\h6RXRODeRXMKm8GCfTY0.jpg','15','Ruang Belajar Teori'),(38,'2021-10-13 02:04:23','2021-10-13 02:04:23','gallery-sarpras\\October2021\\c5kxF2WxYsKQQg0EvGCf.jpg','14',NULL),(41,'2021-10-14 02:31:36','2021-10-14 02:31:36','gallery-sarpras\\October2021\\QVEZsWOc9HitXu7sPxkf.png','10',NULL),(42,'2021-10-14 02:47:16','2021-10-14 02:47:16','gallery-sarpras\\October2021\\VmsoEOKJeD5stCg4rm2V.jpg','11',NULL),(43,'2021-10-14 03:01:00','2021-10-14 11:24:29','gallery-sarpras\\October2021\\ljb9Da9Je1gA0jdm7dgN.jpeg','2',NULL);
/*!40000 ALTER TABLE `gallery_sarpras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gugus`
--

DROP TABLE IF EXISTS `gugus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gugus` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `nama_gugus` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gugus`
--

LOCK TABLES `gugus` WRITE;
/*!40000 ALTER TABLE `gugus` DISABLE KEYS */;
INSERT INTO `gugus` VALUES (1,'GUGUS Ubuntu','2021-11-09 09:29:45','2021-11-09 09:29:45'),(2,'GUGUS Debian','2021-11-09 09:29:54','2021-11-09 09:29:54'),(3,'Gugus Kali linux','2021-11-09 09:30:20','2021-11-09 09:30:20');
/*!40000 ALTER TABLE `gugus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guru_kejuruans`
--

DROP TABLE IF EXISTS `guru_kejuruans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guru_kejuruans` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `nama_guru` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jurusan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guru_kejuruans`
--

LOCK TABLES `guru_kejuruans` WRITE;
/*!40000 ALTER TABLE `guru_kejuruans` DISABLE KEYS */;
INSERT INTO `guru_kejuruans` VALUES (1,'Abdul Hamid','guru-kejuruans/October2021/rmmrdxWE3y4FTHqg516V.jpg',NULL,'2021-10-21 07:16:32','2021-10-21 07:16:32'),(2,'Agus Diana, S. Kom','guru-kejuruans/October2021/BtumvyswMl294bADcw7M.jpg','50','2021-10-21 07:17:07','2021-10-21 07:17:07'),(3,'Aji Sulistyo','guru-kejuruans/October2021/g6j37BHPxsQAGZpliozq.jpg','48','2021-10-21 07:18:08','2021-10-21 07:18:08'),(4,'Casdik, ST','guru-kejuruans/October2021/ubHzOT1SkBF6xWoHgmcp.jpg','52','2021-10-21 07:18:57','2021-10-21 07:18:57'),(5,'Hesti Herawati, A.Md','guru-kejuruans/October2021/QqIcrYkBKvnRU7ezbR79.jpg','50','2021-10-21 07:19:36','2021-10-21 07:19:36'),(6,'Ilham Wahyudi Siadi','guru-kejuruans/October2021/5MFzvuiHd1OgiXGRWkoy.jpg','48','2021-10-21 07:20:02','2021-10-21 07:20:02'),(7,'Puguh Rismadi Ismail, S. Kom','guru-kejuruans/October2021/ZwxfxHbZlDTXBiWl1UR0.jpg','50','2021-10-21 07:20:23','2021-10-21 07:20:23'),(8,'Tuahta Hasiholan, S.Kom','guru-kejuruans/October2021/PLQ58xrHgCBHHlixiMYM.jpg','53','2021-10-21 07:21:16','2021-10-21 07:21:16');
/*!40000 ALTER TABLE `guru_kejuruans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guru_role`
--

DROP TABLE IF EXISTS `guru_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guru_role` (
  `guru_id` bigint unsigned NOT NULL,
  `kategori_id` bigint unsigned NOT NULL,
  KEY `guru_role_guru_id_index` (`guru_id`),
  KEY `guru_role_kategori_id_index` (`kategori_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guru_role`
--

LOCK TABLES `guru_role` WRITE;
/*!40000 ALTER TABLE `guru_role` DISABLE KEYS */;
INSERT INTO `guru_role` VALUES (12,5),(15,1),(15,5),(14,5),(23,3),(23,4),(12,5),(15,1),(15,5),(14,5),(25,5),(5,4),(62,5),(68,4),(71,5);
/*!40000 ALTER TABLE `guru_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gurus`
--

DROP TABLE IF EXISTS `gurus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gurus` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` geometry DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `nik` int DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jabatan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gurus`
--

LOCK TABLES `gurus` WRITE;
/*!40000 ALTER TABLE `gurus` DISABLE KEYS */;
/*!40000 ALTER TABLE `gurus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `images` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` VALUES (6,'images/October2021/S9M3QvJAJIVSNfSoZ6DV.JPG','Sosialisasi SMK PK','Sosialisasi SMK PK','2021-10-21 04:41:46','2021-10-21 04:41:46'),(7,'images/October2021/phHnsl3iCrdSXwfjJipR.JPG','Sosialisasi SMK PK','Sosialisasi SMK PK','2021-10-21 04:42:45','2021-10-21 04:42:45'),(8,'images/October2021/ZpY2MrVXmGotnboTM1SK.JPG','Sosialisasi SMK PK','Sosialisasi SMK PK','2021-10-21 04:44:18','2021-10-21 04:44:18'),(9,'images/October2021/iFpqkS387GCf6PQQsZZz.jpg','Sosialisasi SMK PK','Sosialisasi SMK PK','2021-10-21 04:45:00','2021-10-21 04:45:00'),(10,'images/October2021/mWFcQyvbJJp8nRKA4duo.JPG','Sosialisasi SMK PK','Sosialisasi SMK PK','2021-10-21 04:46:17','2021-10-21 04:46:17'),(11,'images/October2021/8jM8aHTG38wwxR7k1UgY.JPG','Sosialisasi SMK PK','Sosialisasi SMK PK','2021-10-21 04:46:59','2021-10-21 04:46:59'),(12,'images/October2021/Mm7tZtDM3vpZw6Z8deZZ.JPG','Kegiatan Studi Banding','Kegiatan Studi Banding','2021-10-21 05:38:24','2021-10-21 05:38:24'),(13,'images/October2021/QpJzmPLqoaG8PPmjabFZ.JPG','Kegiatan Studi Banding','Kegiatan Studi Banding','2021-10-21 05:38:51','2021-10-21 05:38:51'),(15,'images/October2021/1GBq10gIUEJs7yB5eoJP.JPG','Kegiatan Studi Banding','Kegiatan Studi Banding','2021-10-21 05:39:33','2021-10-21 05:39:33'),(16,'images/October2021/Vx7bB9TVbAuG7iXyq89e.JPG','Kegiatan Studi Banding','Kegiatan Studi Banding','2021-10-21 05:40:14','2021-10-21 05:40:14'),(17,'images/October2021/b11yHO9WFi1bEGeA65cW.JPG','Kegiatan Studi Banding','Kegiatan Studi Banding','2021-10-21 05:40:52','2021-10-21 05:40:52'),(18,'images/October2021/6o576VDX900zehxRXOFd.JPG','Kegiatan Studi Banding','Kegiatan Studi Banding','2021-10-21 05:41:37','2021-10-21 05:41:37'),(19,'images/October2021/mwEBEqFzsus28qs1CeSd.JPG','Kegiatan Studi Banding','Kegiatan Studi Banding','2021-10-21 05:42:06','2021-10-21 05:42:06'),(20,'images/October2021/lJD5eQP7N6vUicBsVYYk.JPG','Sosialisasi SMK PK','Sosialisasi SMK PK','2021-10-21 05:44:08','2021-10-21 05:44:08'),(21,'images/October2021/7l4m7TrZcvIxGHnB8cYE.JPG','Sosialisasi SMK PK','Sosialisasi SMK PK','2021-10-21 05:44:53','2021-10-21 05:44:53'),(22,'images/October2021/y16Yecx8IKFbzZUYvnco.JPG','Sosialisasi SMK PK','Sosialisasi SMK PK','2021-10-21 05:45:16','2021-10-21 05:45:16');
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jurusans`
--

DROP TABLE IF EXISTS `jurusans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jurusans` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `jurusan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `singkatan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jurusans`
--

LOCK TABLES `jurusans` WRITE;
/*!40000 ALTER TABLE `jurusans` DISABLE KEYS */;
INSERT INTO `jurusans` VALUES (1,'Teknik Komputer Jaringan','2021-09-29 23:55:00','2022-01-07 17:56:42','TKJ','jurusans/January2022/vhfnkniJUIhGYBAsDsnz.png','teknik-komputer-jaringan'),(2,'Multimedia','2021-09-29 23:55:00','2022-01-07 17:57:00','MM','jurusans/January2022/HRtQMYZpTgMtgZg9dZ0z.png','multimedia'),(3,'Rekayasa Perangkat Lunak','2021-09-29 23:55:00','2022-01-07 17:57:19','RPL','jurusans/January2022/lN8qpjPJIcwWFcsGp2iA.png','rekayasa-perangkat-lunak'),(4,'Broadcast','2021-09-29 23:58:00','2022-01-07 17:55:20','BC','jurusans/January2022/Gyme40vblfo0oGzaiV22.png','broadcast'),(5,'Teknik Elektronik Industri','2021-09-29 23:58:00','2022-01-07 17:56:13','TEI','jurusans/January2022/RMsTTCD5dG2sG0zW3Jhu.png','teknik-elektronik-industri');
/*!40000 ALTER TABLE `jurusans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kategoris`
--

DROP TABLE IF EXISTS `kategoris`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kategoris` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foto` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `caption` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `kategoris_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kategoris`
--

LOCK TABLES `kategoris` WRITE;
/*!40000 ALTER TABLE `kategoris` DISABLE KEYS */;
INSERT INTO `kategoris` VALUES (1,'Tim Manajemen Sekolah','kategoris\\October2021\\TQhXXJbdmKRyxCbytga5.png','<p>Tim manajemen sekolah adalah</p>','2021-10-02 04:31:56','2021-10-02 08:08:02',NULL,'tim-manajemen-sekolah'),(2,'Staff Tata Usaha','kategoris\\October2021\\GZJtgT45P0MEovv3noDd.png','<p>Staff Tata Usaha mengurus</p>','2021-10-02 04:44:10','2021-10-02 08:07:52',NULL,'staff-tata-usaha'),(3,'Guru Bimbingan Konseling','kategoris\\October2021\\MLVGDgb7PneVeMF3bbwB.png','<p>Guru Bimbingan Konseling mengurus</p>','2021-10-02 04:47:48','2021-10-02 08:07:43',NULL,'guru-bimbingan-konseling'),(4,'Guru Kejuruan','kategoris\\October2021\\MYBFcBepiT8w9NfrZpht.png','<p>Guru Kejuruan mengurus hal-hal</p>','2021-10-02 04:49:04','2021-10-02 08:07:32',NULL,'guru-kejuruan'),(5,'Guru Normatif dan Adaptif','kategoris\\October2021\\t11OsRGXs3AtW7Ps8J6a.png','<p>Guru Normatif dan Adaptif adalah</p>','2021-10-02 04:49:36','2021-10-02 08:07:14',NULL,'guru-normatif-dan-adaptif');
/*!40000 ALTER TABLE `kategoris` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kelas`
--

DROP TABLE IF EXISTS `kelas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kelas` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `kelas` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_kelas` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tahun_ajaran` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wali_kelas` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `jurusan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=210 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kelas`
--

LOCK TABLES `kelas` WRITE;
/*!40000 ALTER TABLE `kelas` DISABLE KEYS */;
INSERT INTO `kelas` VALUES (2,'XII','XII RPL 3','2020/2021','Dwi Setiawan','Aktif','2021-09-24 07:08:13','2021-09-24 07:08:13','RPL'),(3,'XII','XII RPL 2','2020/2021','Furida Lusi','Aktif','2021-09-24 07:08:48','2021-09-24 07:08:48','RPL'),(4,'XII','XII RPL 1','2020/2021','Fatimah','Aktif','2021-09-24 07:09:21','2021-09-24 07:09:21','RPL'),(5,'XII','XII TKJ1','2020/2021','Waluyo Latupono','Aktif','2021-10-08 08:32:41','2021-10-08 08:32:41','TKJ'),(6,'XII','XII TKJ2','2020/2021','Jamal Martaka Sihotang','Aktif','2021-10-08 08:32:41','2021-10-08 08:32:41','TKJ'),(7,'XII','XII TKJ3','2020/2021','Victoria Zulaikha Mardhiyah','Aktif','2021-10-08 08:32:41','2021-10-08 08:32:41','TKJ'),(8,'XII','XII MM 1','2020/2021','Nurul Purnawati','Aktif','2021-10-08 08:32:42','2021-10-08 08:32:42','MM'),(9,'XII','XII MM 2','2020/2021','Darijan Saptono','Aktif','2021-10-08 08:32:42','2021-10-08 08:32:42','MM'),(10,'XII','XII MM 3','2020/2021','Nurul Endah Kusmawati','Aktif','2021-10-08 08:32:42','2021-10-08 08:32:42','MM'),(11,'XII','XII BC 1','2020/2021','Indra Abyasa Hutasoit','Aktif','2021-10-08 08:32:42','2021-10-08 08:32:42','BC'),(12,'XII','XII BC 2','2020/2021','Jagapati Hutasoit','Aktif','2021-10-08 08:32:42','2021-10-08 08:32:42','BC'),(13,'XII','XII BC 3','2020/2021','Kasiyah Elma Zulaika S.T.','Aktif','2021-10-08 08:32:42','2021-10-08 08:32:42','BC'),(14,'XII','XII TEI 1','2020/2021','Rini Kayla Mardhiyah','Aktif','2021-10-08 08:32:42','2021-10-08 08:32:42','TEI'),(15,'XII','XII TEI 2','2020/2021','Daliman Pradana','Aktif','2021-10-08 08:32:42','2021-10-08 08:32:42','TEI'),(16,'XII','XII TEI 3','2020/2021','Jono Haryanto','Aktif','2021-10-08 08:32:42','2021-10-08 08:32:42','TEI'),(17,'XI','XI TKJ1','2020/2021','Sabrina Winarsih S.H.','Aktif','2021-10-08 08:32:42','2021-10-08 08:32:42','TKJ'),(18,'XI','XI TKJ2','2020/2021','Gambira Ramadan','Aktif','2021-10-08 08:32:42','2021-10-08 08:32:42','TKJ'),(19,'XI','XI TKJ3','2020/2021','Tedi Salahudin','Aktif','2021-10-08 08:32:42','2021-10-08 08:32:42','TKJ'),(20,'XI','XI MM 1','2020/2021','Cakrabirawa Mulyanto Iswahyudi','Aktif','2021-10-08 08:32:42','2021-10-08 08:32:42','MM'),(21,'XI','XI MM 2','2020/2021','Raden Rajata','Aktif','2021-10-08 08:32:42','2021-10-08 08:32:42','MM'),(22,'XI','XI MM 3','2020/2021','Ulva Farida S.Pd','Aktif','2021-10-08 08:32:42','2021-10-08 08:32:42','MM'),(23,'XI','XI BC 1','2020/2021','Maya Ayu Pratiwi','Aktif','2021-10-08 08:32:42','2021-10-08 08:32:42','BC'),(24,'XI','XI BC 2','2020/2021','Edward Jarwi Saefullah','Aktif','2021-10-08 08:32:42','2021-10-08 08:32:42','BC'),(25,'XI','XI BC 3','2020/2021','Jati Dabukke S.E.','Aktif','2021-10-08 08:32:42','2021-10-08 08:32:42','BC'),(26,'XI','XI TEI 1','2020/2021','Jail Sitorus','Aktif','2021-10-08 08:32:43','2021-10-08 08:32:43','TEI'),(27,'XI','XI TEI 2','2020/2021','Chandra Kuswoyo','Aktif','2021-10-08 08:32:43','2021-10-08 08:32:43','TEI'),(28,'XI','XI TEI 3','2020/2021','Budi Heru Permadi','Aktif','2021-10-08 08:32:43','2021-10-08 08:32:43','TEI'),(29,'XI','XI RPL 1','2020/2021','Kusuma Bahuwirya Situmorang','Aktif','2021-10-08 08:32:43','2021-10-08 08:32:43','RPL'),(30,'XI','XI RPL 2','2020/2021','Hasna Putri Mulyani','Aktif','2021-10-08 08:32:43','2021-10-08 08:32:43','RPL'),(31,'XI','XI RPL 3','2020/2021','Ulya Anggraini','Aktif','2021-10-08 08:32:43','2021-10-08 08:32:43','RPL'),(32,'X','X TKJ1','2020/2021','Maida Rahimah','Aktif','2021-10-08 08:32:43','2021-10-08 08:32:43','TKJ'),(33,'X','X TKJ2','2020/2021','Uli Winarsih S.Sos','Aktif','2021-10-08 08:32:43','2021-10-08 08:32:43','TKJ'),(34,'X','X TKJ3','2020/2021','Vinsen Ramadan S.Farm','Aktif','2021-10-08 08:32:43','2021-10-08 08:32:43','TKJ'),(35,'X','X MM 1','2020/2021','Tania Dian Rahimah','Aktif','2021-10-08 08:32:43','2021-10-08 08:32:43','MM'),(36,'X','X MM 2','2020/2021','Diana Victoria Mardhiyah','Aktif','2021-10-08 08:32:43','2021-10-08 08:32:43','MM'),(37,'X','X MM 3','2020/2021','Kartika Suartini S.E.I','Aktif','2021-10-08 08:32:43','2021-10-08 08:32:43','MM'),(38,'X','X BC 1','2020/2021','Kuncara Sirait','Aktif','2021-10-08 08:32:43','2021-10-08 08:32:43','BC'),(39,'X','X BC 2','2020/2021','Luhung Thamrin','Aktif','2021-10-08 08:32:43','2021-10-08 08:32:43','BC'),(40,'X','X BC 3','2020/2021','Ika Purnawati','Aktif','2021-10-08 08:32:43','2021-10-08 08:32:43','BC'),(41,'X','X TEI 1','2020/2021','Ratna Wulandari S.Pd','Aktif','2021-10-08 08:32:44','2021-10-08 08:32:44','TEI'),(42,'X','X TEI 2','2020/2021','Ina Fujiati','Aktif','2021-10-08 08:32:44','2021-10-08 08:32:44','TEI'),(43,'X','X TEI 3','2020/2021','Kalim Habibi','Aktif','2021-10-08 08:32:44','2021-10-08 08:32:44','TEI'),(44,'X','X RPL 1','2020/2021','Martaka Anom Saefullah','Aktif','2021-10-08 08:32:44','2021-10-08 08:32:44','RPL'),(45,'X','X RPL 2','2020/2021','Sabrina Kusmawati','Aktif','2021-10-08 08:32:45','2021-10-08 08:32:45','RPL'),(46,'X','X RPL 3','2020/2021','Dina Permata M.TI.','Aktif','2021-10-08 08:32:45','2021-10-08 08:32:45','RPL'),(47,'X','X TE','2021/2022',NULL,'Aktif','2021-11-03 10:14:56','2021-11-03 10:14:56',NULL),(48,'lastname','lastname','2021/2022',NULL,'Aktif','2021-11-03 10:14:57','2021-11-03 10:14:57',NULL),(49,'X','X TE','2021/2022',NULL,'Aktif','2021-11-03 10:18:11','2021-11-03 10:18:11',NULL),(50,'lastname','lastname','2021/2022',NULL,'Aktif','2021-11-03 10:18:11','2021-11-03 10:18:11',NULL),(51,'X','X TE','2021/2022',NULL,'Aktif','2021-11-03 10:18:51','2021-11-03 10:18:51',NULL),(52,'lastname','lastname','2021/2022',NULL,'Aktif','2021-11-03 10:18:51','2021-11-03 10:18:51',NULL),(53,'X','X PPLG 1','2021/2022','Guru1','Aktif','2021-11-24 01:23:43','2021-11-24 01:23:43','PPLG'),(54,'X','X animasi 1','2021/2022','Guru2','Aktif','2021-11-24 01:41:31','2021-11-24 01:41:31','ANIMASI'),(55,'X','X TJKT 1','2021/2022','Guru3','Aktif','2021-11-24 01:42:11','2021-11-24 01:42:11','TJKT'),(56,'X','X BC 1','2021/2022','Guru4','Aktif','2021-11-24 01:42:35','2021-11-24 01:42:35','BCF'),(57,'X','X TE 1','2021/2022','Guru5','Aktif','2021-11-24 01:42:57','2021-11-24 01:42:57','TE'),(58,'lastname','lastname','2022/2023',NULL,'Aktif','2022-01-09 04:25:53','2022-01-09 04:25:53',NULL),(59,'lastname','lastname','2022/2023',NULL,'Aktif','2022-01-09 04:29:32','2022-01-09 04:29:32',NULL),(60,'lastname','lastname','2022/2023',NULL,'Aktif','2022-01-09 04:35:46','2022-01-09 04:35:46',NULL),(61,'XI','XI TKJ2','2022/2023',NULL,'Aktif','2022-01-09 04:44:54','2022-01-09 04:44:54',NULL),(62,'lastname','lastname','2022/2023',NULL,'Aktif','2022-01-09 04:44:54','2022-01-09 04:44:54',NULL),(63,'XII','XII RPL 3','2022/2023',NULL,'Aktif','2022-01-09 04:44:54','2022-01-09 04:44:54',NULL),(64,'lastname','lastname','2022/2023',NULL,'Aktif','2022-01-09 04:44:54','2022-01-09 04:44:54',NULL),(65,'XII','XII MM 2','2022/2023',NULL,'Aktif','2022-01-09 04:44:55','2022-01-09 04:44:55',NULL),(66,'XII','XII RPL 3','2022/2023',NULL,'Aktif','2022-01-09 04:44:55','2022-01-09 04:44:55',NULL),(67,'lastname','lastname','2022/2023',NULL,'Aktif','2022-01-09 04:44:55','2022-01-09 04:44:55',NULL),(68,'XII','XII RPL 3','2022/2023',NULL,'Aktif','2022-01-09 04:44:55','2022-01-09 04:44:55',NULL),(69,'XI','XI TKJ2','2022/2023',NULL,'Aktif','2022-01-09 04:44:56','2022-01-09 04:44:56',NULL),(70,'lastname','lastname','2022/2023',NULL,'Aktif','2022-01-09 04:44:56','2022-01-09 04:44:56',NULL),(71,'XII','XII RPL 3','2022/2023',NULL,'Aktif','2022-01-09 04:44:56','2022-01-09 04:44:56',NULL),(72,'lastname','lastname','2022/2023',NULL,'Aktif','2022-01-09 04:44:56','2022-01-09 04:44:56',NULL),(73,'XII','XII MM 2','2022/2023',NULL,'Aktif','2022-01-09 04:44:56','2022-01-09 04:44:56',NULL),(74,'XII','XII RPL 3','2022/2023',NULL,'Aktif','2022-01-09 04:44:57','2022-01-09 04:44:57',NULL),(75,'lastname','lastname','2022/2023',NULL,'Aktif','2022-01-09 04:44:57','2022-01-09 04:44:57',NULL),(76,'XII','XII RPL 3','2022/2023',NULL,'Aktif','2022-01-09 04:44:57','2022-01-09 04:44:57',NULL),(77,'X','X PPLG 1','2022/2023',NULL,'Aktif','2022-01-09 04:45:01','2022-01-09 04:45:01',NULL),(78,'X','X PPLG 1','2022/2023',NULL,'Aktif','2022-01-09 04:45:01','2022-01-09 04:45:01',NULL),(79,'X','X PPLG 1','2022/2023',NULL,'Aktif','2022-01-09 04:45:01','2022-01-09 04:45:01',NULL),(80,'X','X PPLG 1','2022/2023',NULL,'Aktif','2022-01-09 04:45:01','2022-01-09 04:45:01',NULL),(81,'X','X PPLG 1','2022/2023',NULL,'Aktif','2022-01-09 04:45:01','2022-01-09 04:45:01',NULL),(82,'X','X PPLG 1','2022/2023',NULL,'Aktif','2022-01-09 04:45:01','2022-01-09 04:45:01',NULL),(83,'X','X PPLG 1','2022/2023',NULL,'Aktif','2022-01-09 04:45:01','2022-01-09 04:45:01',NULL),(84,'X','X PPLG 1','2022/2023',NULL,'Aktif','2022-01-09 04:45:02','2022-01-09 04:45:02',NULL),(85,'X','X PPLG 1','2022/2023',NULL,'Aktif','2022-01-09 04:45:02','2022-01-09 04:45:02',NULL),(86,'X','X PPLG 1','2022/2023',NULL,'Aktif','2022-01-09 04:45:02','2022-01-09 04:45:02',NULL),(87,'X','X PPLG 1','2022/2023',NULL,'Aktif','2022-01-09 04:45:02','2022-01-09 04:45:02',NULL),(88,'X','X PPLG 1','2022/2023',NULL,'Aktif','2022-01-09 04:45:02','2022-01-09 04:45:02',NULL),(89,'X','X PPLG 1','2022/2023',NULL,'Aktif','2022-01-09 04:45:02','2022-01-09 04:45:02',NULL),(90,'X','X PPLG 1','2022/2023',NULL,'Aktif','2022-01-09 04:45:02','2022-01-09 04:45:02',NULL),(91,'X','X PPLG 1','2022/2023',NULL,'Aktif','2022-01-09 04:45:02','2022-01-09 04:45:02',NULL),(92,'X','X PPLG 1','2022/2023',NULL,'Aktif','2022-01-09 04:45:03','2022-01-09 04:45:03',NULL),(93,'X','X PPLG 1','2022/2023',NULL,'Aktif','2022-01-09 04:45:03','2022-01-09 04:45:03',NULL),(94,'X','X PPLG 1','2022/2023',NULL,'Aktif','2022-01-09 04:45:03','2022-01-09 04:45:03',NULL),(95,'X','X PPLG 1','2022/2023',NULL,'Aktif','2022-01-09 04:45:03','2022-01-09 04:45:03',NULL),(96,'X','X PPLG 1','2022/2023',NULL,'Aktif','2022-01-09 04:45:03','2022-01-09 04:45:03',NULL),(97,'X','X PPLG 1','2022/2023',NULL,'Aktif','2022-01-09 04:45:03','2022-01-09 04:45:03',NULL),(98,'X','X PPLG 1','2022/2023',NULL,'Aktif','2022-01-09 04:45:03','2022-01-09 04:45:03',NULL),(99,'X','X PPLG 1','2022/2023',NULL,'Aktif','2022-01-09 04:45:03','2022-01-09 04:45:03',NULL),(100,'X','X PPLG 1','2022/2023',NULL,'Aktif','2022-01-09 04:45:04','2022-01-09 04:45:04',NULL),(101,'X','X PPLG 1','2022/2023',NULL,'Aktif','2022-01-09 04:45:04','2022-01-09 04:45:04',NULL),(102,'X','X PPLG 1','2022/2023',NULL,'Aktif','2022-01-09 04:45:04','2022-01-09 04:45:04',NULL),(103,'X','X PPLG 1','2022/2023',NULL,'Aktif','2022-01-09 04:45:04','2022-01-09 04:45:04',NULL),(104,'X','X PPLG 1','2022/2023',NULL,'Aktif','2022-01-09 04:45:04','2022-01-09 04:45:04',NULL),(105,'X','X PPLG 1','2022/2023',NULL,'Aktif','2022-01-09 04:45:04','2022-01-09 04:45:04',NULL),(106,'X','X PPLG 1','2022/2023',NULL,'Aktif','2022-01-09 04:45:04','2022-01-09 04:45:04',NULL),(107,'X','X PPLG 1','2022/2023',NULL,'Aktif','2022-01-09 04:45:04','2022-01-09 04:45:04',NULL),(108,'X','X PPLG 1','2022/2023',NULL,'Aktif','2022-01-09 04:45:05','2022-01-09 04:45:05',NULL),(109,'X','X PPLG 1','2022/2023',NULL,'Aktif','2022-01-09 04:45:05','2022-01-09 04:45:05',NULL),(110,'X','X PPLG 1','2022/2023',NULL,'Aktif','2022-01-09 04:45:05','2022-01-09 04:45:05',NULL),(111,'X','X PPLG 1','2022/2023',NULL,'Aktif','2022-01-09 04:45:05','2022-01-09 04:45:05',NULL),(112,'X','X PPLG 1','2022/2023',NULL,'Aktif','2022-01-09 04:45:05','2022-01-09 04:45:05',NULL),(113,'X','X PPLG 1','2022/2023',NULL,'Aktif','2022-01-09 04:45:05','2022-01-09 04:45:05',NULL),(114,'X','X PPLG 1','2022/2023',NULL,'Aktif','2022-01-09 04:45:05','2022-01-09 04:45:05',NULL),(115,'X','X PPLG 1','2022/2023',NULL,'Aktif','2022-01-09 04:45:05','2022-01-09 04:45:05',NULL),(116,'X','X PPLG 1','2022/2023',NULL,'Aktif','2022-01-09 04:45:05','2022-01-09 04:45:05',NULL),(117,'X','X TJKT 1','2022/2023',NULL,'Aktif','2022-01-09 04:45:11','2022-01-09 04:45:11',NULL),(118,'X','X TJKT 1','2022/2023',NULL,'Aktif','2022-01-09 04:45:11','2022-01-09 04:45:11',NULL),(119,'X','X TJKT 1','2022/2023',NULL,'Aktif','2022-01-09 04:45:11','2022-01-09 04:45:11',NULL),(120,'X','X TJKT 1','2022/2023',NULL,'Aktif','2022-01-09 04:45:11','2022-01-09 04:45:11',NULL),(121,'X','X TJKT 1','2022/2023',NULL,'Aktif','2022-01-09 04:45:11','2022-01-09 04:45:11',NULL),(122,'X','X TJKT 1','2022/2023',NULL,'Aktif','2022-01-09 04:45:11','2022-01-09 04:45:11',NULL),(123,'X','X TJKT 1','2022/2023',NULL,'Aktif','2022-01-09 04:45:11','2022-01-09 04:45:11',NULL),(124,'X','X TJKT 1','2022/2023',NULL,'Aktif','2022-01-09 04:45:12','2022-01-09 04:45:12',NULL),(125,'X','X TJKT 1','2022/2023',NULL,'Aktif','2022-01-09 04:45:12','2022-01-09 04:45:12',NULL),(126,'X','X TJKT 1','2022/2023',NULL,'Aktif','2022-01-09 04:45:12','2022-01-09 04:45:12',NULL),(127,'X','X TJKT 1','2022/2023',NULL,'Aktif','2022-01-09 04:45:12','2022-01-09 04:45:12',NULL),(128,'X','X TJKT 1','2022/2023',NULL,'Aktif','2022-01-09 04:45:12','2022-01-09 04:45:12',NULL),(129,'X','X TJKT 1','2022/2023',NULL,'Aktif','2022-01-09 04:45:12','2022-01-09 04:45:12',NULL),(130,'X','X TJKT 1','2022/2023',NULL,'Aktif','2022-01-09 04:45:13','2022-01-09 04:45:13',NULL),(131,'X','X TJKT 1','2022/2023',NULL,'Aktif','2022-01-09 04:45:13','2022-01-09 04:45:13',NULL),(132,'X','X TJKT 1','2022/2023',NULL,'Aktif','2022-01-09 04:45:13','2022-01-09 04:45:13',NULL),(133,'X','X TJKT 1','2022/2023',NULL,'Aktif','2022-01-09 04:45:13','2022-01-09 04:45:13',NULL),(134,'X','X TJKT 1','2022/2023',NULL,'Aktif','2022-01-09 04:45:13','2022-01-09 04:45:13',NULL),(135,'X','X TJKT 1','2022/2023',NULL,'Aktif','2022-01-09 04:45:13','2022-01-09 04:45:13',NULL),(136,'X','X TJKT 1','2022/2023',NULL,'Aktif','2022-01-09 04:45:13','2022-01-09 04:45:13',NULL),(137,'X','X TJKT 1','2022/2023',NULL,'Aktif','2022-01-09 04:45:13','2022-01-09 04:45:13',NULL),(138,'X','X TJKT 1','2022/2023',NULL,'Aktif','2022-01-09 04:45:14','2022-01-09 04:45:14',NULL),(139,'X','X TJKT 1','2022/2023',NULL,'Aktif','2022-01-09 04:45:14','2022-01-09 04:45:14',NULL),(140,'X','X TJKT 1','2022/2023',NULL,'Aktif','2022-01-09 04:45:14','2022-01-09 04:45:14',NULL),(141,'X','X TJKT 1','2022/2023',NULL,'Aktif','2022-01-09 04:45:14','2022-01-09 04:45:14',NULL),(142,'X','X TJKT 1','2022/2023',NULL,'Aktif','2022-01-09 04:45:14','2022-01-09 04:45:14',NULL),(143,'X','X TJKT 1','2022/2023',NULL,'Aktif','2022-01-09 04:45:14','2022-01-09 04:45:14',NULL),(144,'X','X TJKT 1','2022/2023',NULL,'Aktif','2022-01-09 04:45:14','2022-01-09 04:45:14',NULL),(145,'X','X TJKT 1','2022/2023',NULL,'Aktif','2022-01-09 04:45:14','2022-01-09 04:45:14',NULL),(146,'X','X TJKT 1','2022/2023',NULL,'Aktif','2022-01-09 04:45:15','2022-01-09 04:45:15',NULL),(147,'X','X TJKT 1','2022/2023',NULL,'Aktif','2022-01-09 04:45:15','2022-01-09 04:45:15',NULL),(148,'X','X TJKT 1','2022/2023',NULL,'Aktif','2022-01-09 04:45:15','2022-01-09 04:45:15',NULL),(149,'X','X TJKT 1','2022/2023',NULL,'Aktif','2022-01-09 04:45:15','2022-01-09 04:45:15',NULL),(150,'X','X TJKT 1','2022/2023',NULL,'Aktif','2022-01-09 04:45:15','2022-01-09 04:45:15',NULL),(151,'X','X TJKT 1','2022/2023',NULL,'Aktif','2022-01-09 04:45:15','2022-01-09 04:45:15',NULL),(152,'X','X TJKT 1','2022/2023',NULL,'Aktif','2022-01-09 04:45:15','2022-01-09 04:45:15',NULL),(153,'X','X ANIMASI 1','2022/2023',NULL,'Aktif','2022-01-09 04:45:20','2022-01-09 04:45:20',NULL),(154,'X','X ANIMASI 1','2022/2023',NULL,'Aktif','2022-01-09 04:45:20','2022-01-09 04:45:20',NULL),(155,'X','X ANIMASI 1','2022/2023',NULL,'Aktif','2022-01-09 04:45:20','2022-01-09 04:45:20',NULL),(156,'X','X ANIMASI 1','2022/2023',NULL,'Aktif','2022-01-09 04:45:20','2022-01-09 04:45:20',NULL),(157,'X','X ANIMASI 1','2022/2023',NULL,'Aktif','2022-01-09 04:45:20','2022-01-09 04:45:20',NULL),(158,'X','X ANIMASI 1','2022/2023',NULL,'Aktif','2022-01-09 04:45:21','2022-01-09 04:45:21',NULL),(159,'X','X ANIMASI 1','2022/2023',NULL,'Aktif','2022-01-09 04:45:21','2022-01-09 04:45:21',NULL),(160,'X','X ANIMASI 1','2022/2023',NULL,'Aktif','2022-01-09 04:45:21','2022-01-09 04:45:21',NULL),(161,'X','X ANIMASI 1','2022/2023',NULL,'Aktif','2022-01-09 04:45:21','2022-01-09 04:45:21',NULL),(162,'X','X ANIMASI 1','2022/2023',NULL,'Aktif','2022-01-09 04:45:21','2022-01-09 04:45:21',NULL),(163,'X','X ANIMASI 1','2022/2023',NULL,'Aktif','2022-01-09 04:45:21','2022-01-09 04:45:21',NULL),(164,'X','X ANIMASI 1','2022/2023',NULL,'Aktif','2022-01-09 04:45:21','2022-01-09 04:45:21',NULL),(165,'X','X ANIMASI 1','2022/2023',NULL,'Aktif','2022-01-09 04:45:22','2022-01-09 04:45:22',NULL),(166,'X','X ANIMASI 1','2022/2023',NULL,'Aktif','2022-01-09 04:45:22','2022-01-09 04:45:22',NULL),(167,'X','X ANIMASI 1','2022/2023',NULL,'Aktif','2022-01-09 04:45:22','2022-01-09 04:45:22',NULL),(168,'X','X ANIMASI 1','2022/2023',NULL,'Aktif','2022-01-09 04:45:22','2022-01-09 04:45:22',NULL),(169,'X','X ANIMASI 1','2022/2023',NULL,'Aktif','2022-01-09 04:45:22','2022-01-09 04:45:22',NULL),(170,'X','X ANIMASI 1','2022/2023',NULL,'Aktif','2022-01-09 04:45:22','2022-01-09 04:45:22',NULL),(171,'X','X ANIMASI 1','2022/2023',NULL,'Aktif','2022-01-09 04:45:22','2022-01-09 04:45:22',NULL),(172,'X','X ANIMASI 1','2022/2023',NULL,'Aktif','2022-01-09 04:45:22','2022-01-09 04:45:22',NULL),(173,'X','X ANIMASI 1','2022/2023',NULL,'Aktif','2022-01-09 04:45:22','2022-01-09 04:45:22',NULL),(174,'X','X ANIMASI 1','2022/2023',NULL,'Aktif','2022-01-09 04:45:23','2022-01-09 04:45:23',NULL),(175,'X','X ANIMASI 1','2022/2023',NULL,'Aktif','2022-01-09 04:45:23','2022-01-09 04:45:23',NULL),(176,'X','X ANIMASI 1','2022/2023',NULL,'Aktif','2022-01-09 04:45:23','2022-01-09 04:45:23',NULL),(177,'X','X ANIMASI 1','2022/2023',NULL,'Aktif','2022-01-09 04:45:23','2022-01-09 04:45:23',NULL),(178,'X','X ANIMASI 1','2022/2023',NULL,'Aktif','2022-01-09 04:45:23','2022-01-09 04:45:23',NULL),(179,'X','X ANIMASI 1','2022/2023',NULL,'Aktif','2022-01-09 04:45:23','2022-01-09 04:45:23',NULL),(180,'X','X ANIMASI 1','2022/2023',NULL,'Aktif','2022-01-09 04:45:23','2022-01-09 04:45:23',NULL),(181,'X','X ANIMASI 1','2022/2023',NULL,'Aktif','2022-01-09 04:45:23','2022-01-09 04:45:23',NULL),(182,'X','X ANIMASI 1','2022/2023',NULL,'Aktif','2022-01-09 04:45:23','2022-01-09 04:45:23',NULL),(183,'X','X ANIMASI 1','2022/2023',NULL,'Aktif','2022-01-09 04:45:24','2022-01-09 04:45:24',NULL),(184,'X','X ANIMASI 1','2022/2023',NULL,'Aktif','2022-01-09 04:45:24','2022-01-09 04:45:24',NULL),(185,'X','X TE','2022/2023',NULL,'Aktif','2022-01-09 04:45:37','2022-01-09 04:45:37',NULL),(186,'X','X TE','2022/2023',NULL,'Aktif','2022-01-09 04:45:38','2022-01-09 04:45:38',NULL),(187,'X','X TE','2022/2023',NULL,'Aktif','2022-01-09 04:45:38','2022-01-09 04:45:38',NULL),(188,'X','X TE','2022/2023',NULL,'Aktif','2022-01-09 04:45:38','2022-01-09 04:45:38',NULL),(189,'X','X TE','2022/2023',NULL,'Aktif','2022-01-09 04:45:38','2022-01-09 04:45:38',NULL),(190,'X','X TE','2022/2023',NULL,'Aktif','2022-01-09 04:45:38','2022-01-09 04:45:38',NULL),(191,'X','X TE','2022/2023',NULL,'Aktif','2022-01-09 04:45:38','2022-01-09 04:45:38',NULL),(192,'X','X TE','2022/2023',NULL,'Aktif','2022-01-09 04:45:38','2022-01-09 04:45:38',NULL),(193,'X','X TE','2022/2023',NULL,'Aktif','2022-01-09 04:45:38','2022-01-09 04:45:38',NULL),(194,'X','X TE','2022/2023',NULL,'Aktif','2022-01-09 04:45:39','2022-01-09 04:45:39',NULL),(195,'X','X TE','2022/2023',NULL,'Aktif','2022-01-09 04:45:39','2022-01-09 04:45:39',NULL),(196,'X','X TE','2022/2023',NULL,'Aktif','2022-01-09 04:45:39','2022-01-09 04:45:39',NULL),(197,'X','X TE','2022/2023',NULL,'Aktif','2022-01-09 04:45:39','2022-01-09 04:45:39',NULL),(198,'X','X TE','2022/2023',NULL,'Aktif','2022-01-09 04:45:39','2022-01-09 04:45:39',NULL),(199,'X','X TE','2022/2023',NULL,'Aktif','2022-01-09 04:45:39','2022-01-09 04:45:39',NULL),(200,'X','X TE','2022/2023',NULL,'Aktif','2022-01-09 04:45:40','2022-01-09 04:45:40',NULL),(201,'X','X TE','2022/2023',NULL,'Aktif','2022-01-09 04:45:40','2022-01-09 04:45:40',NULL),(202,'X','X TE','2022/2023',NULL,'Aktif','2022-01-09 04:45:40','2022-01-09 04:45:40',NULL),(203,'X','X TE','2022/2023',NULL,'Aktif','2022-01-09 04:45:40','2022-01-09 04:45:40',NULL),(204,'X','X TE','2022/2023',NULL,'Aktif','2022-01-09 04:45:40','2022-01-09 04:45:40',NULL),(205,'X','X TE','2022/2023',NULL,'Aktif','2022-01-09 04:45:40','2022-01-09 04:45:40',NULL),(206,'X','X TE','2022/2023',NULL,'Aktif','2022-01-09 04:45:40','2022-01-09 04:45:40',NULL),(207,'X','X TE','2022/2023',NULL,'Aktif','2022-01-09 04:45:41','2022-01-09 04:45:41',NULL),(208,'X','X TE','2022/2023',NULL,'Aktif','2022-01-09 04:45:41','2022-01-09 04:45:41',NULL),(209,'lastname','lastname','2022/2023',NULL,'Aktif','2022-01-09 04:45:41','2022-01-09 04:45:41',NULL);
/*!40000 ALTER TABLE `kelas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `managers`
--

DROP TABLE IF EXISTS `managers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `managers` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jabatan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Kepala Program',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `nik` int DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `managers`
--

LOCK TABLES `managers` WRITE;
/*!40000 ALTER TABLE `managers` DISABLE KEYS */;
INSERT INTO `managers` VALUES (4,'Puguh Rismadi Ismail','Kepala Program','puguh@gmail.com','$2y$10$GGdHSuyC7NHSYosD47rMVepa7Nl0Js0UPXPIeiuxuMHywvdmEW5iW','2021-09-24 07:07:30','2021-09-26 01:28:05',7585876,NULL);
/*!40000 ALTER TABLE `managers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mapels`
--

DROP TABLE IF EXISTS `mapels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mapels` (
  `id` int unsigned NOT NULL,
  `mata_pelajaran` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mapels`
--

LOCK TABLES `mapels` WRITE;
/*!40000 ALTER TABLE `mapels` DISABLE KEYS */;
INSERT INTO `mapels` VALUES (1,'MTK','2021-10-08 08:31:01','2021-10-08 08:31:01'),(2,'B. Indonesia','2021-10-08 08:31:02','2021-10-08 08:31:02'),(3,'B. Inggris','2021-10-08 08:31:02','2021-10-08 08:31:02'),(4,'Sindo','2021-10-08 08:31:02',NULL);
/*!40000 ALTER TABLE `mapels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media` (
  `id` bigint unsigned NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `conversions_disk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` bigint unsigned NOT NULL,
  `manipulations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `custom_properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `generated_conversions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `responsive_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `order_column` int unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `media_uuid_unique` (`uuid`),
  KEY `media_model_type_model_id_index` (`model_type`,`model_id`),
  CONSTRAINT `media_chk_1` CHECK (json_valid(`manipulations`)),
  CONSTRAINT `media_chk_2` CHECK (json_valid(`custom_properties`)),
  CONSTRAINT `media_chk_3` CHECK (json_valid(`generated_conversions`)),
  CONSTRAINT `media_chk_4` CHECK (json_valid(`responsive_images`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
/*!40000 ALTER TABLE `media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_items`
--

DROP TABLE IF EXISTS `menu_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_items` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int unsigned DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `order` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_items`
--

LOCK TABLES `menu_items` WRITE;
/*!40000 ALTER TABLE `menu_items` DISABLE KEYS */;
INSERT INTO `menu_items` VALUES (1,1,'Dashboard','','_self','voyager-boat',NULL,NULL,1,'2021-09-21 07:32:54','2021-09-21 07:32:54','voyager.dashboard',NULL),(2,1,'Media','','_self','voyager-images',NULL,NULL,4,'2021-09-21 07:32:54','2021-10-17 03:25:27','voyager.media.index',NULL),(3,1,'Users','','_self','voyager-person',NULL,NULL,3,'2021-09-21 07:32:55','2021-09-21 07:32:55','voyager.users.index',NULL),(4,1,'Roles','','_self','voyager-lock',NULL,NULL,2,'2021-09-21 07:32:55','2021-09-21 07:32:55','voyager.roles.index',NULL),(5,1,'Tools','','_self','voyager-tools',NULL,NULL,22,'2021-09-21 07:32:55','2021-10-21 07:10:21',NULL,NULL),(6,1,'Menu Builder','','_self','voyager-list',NULL,5,1,'2021-09-21 07:32:55','2021-10-17 03:25:28','voyager.menus.index',NULL),(7,1,'Database','','_self','voyager-data',NULL,5,2,'2021-09-21 07:32:55','2021-10-17 03:25:28','voyager.database.index',NULL),(8,1,'Compass','','_self','voyager-compass',NULL,5,3,'2021-09-21 07:32:55','2021-10-17 03:25:28','voyager.compass.index',NULL),(9,1,'BREAD','','_self','voyager-bread',NULL,5,4,'2021-09-21 07:32:55','2021-10-17 03:25:28','voyager.bread.index',NULL),(10,1,'Settings','','_self','voyager-settings',NULL,NULL,23,'2021-09-21 07:32:55','2021-10-21 07:10:21','voyager.settings.index',NULL),(11,1,'Categories','','_self','voyager-categories',NULL,NULL,7,'2021-09-21 07:33:10','2021-10-17 03:25:28','voyager.categories.index',NULL),(12,1,'Posts','','_self','voyager-news',NULL,NULL,5,'2021-09-21 07:33:12','2021-10-17 03:25:27','voyager.posts.index',NULL),(13,1,'Pages','','_self','voyager-file-text',NULL,NULL,6,'2021-09-21 07:33:13','2021-10-17 03:25:27','voyager.pages.index',NULL),(14,1,'Gurus','','_self','voyager-people','#000000',NULL,8,'2021-09-21 20:11:33','2021-10-21 06:00:45','voyager.gurus.index','null'),(15,1,'Siswas','','_self','voyager-group','#000000',NULL,9,'2021-09-21 20:12:15','2021-10-21 06:00:45','voyager.siswas.index','null'),(17,1,'Kelas','','_self','voyager-book','#000000',NULL,10,'2021-09-21 20:32:17','2021-10-21 06:00:45','voyager.kelas.index','null'),(19,1,'Alumnis','','_self','voyager-person','#000000',NULL,11,'2021-09-29 21:41:45','2021-10-21 06:00:45','voyager.alumnis.index','null'),(21,1,'Partners','','_self','voyager-company','#000000',NULL,12,'2021-09-29 21:52:12','2021-10-21 06:00:45','voyager.partners.index','null'),(22,1,'Jurusans','','_self','voyager-tag','#000000',NULL,13,'2021-09-29 23:52:51','2021-10-21 06:00:45','voyager.jurusans.index','null'),(30,1,'Content Sarpras','','_self','voyager-news','#000000',37,1,'2021-10-06 14:30:53','2021-10-21 06:00:37','voyager.content-sarpras.index','null'),(31,1,'Gallery Sarpras','','_self','voyager-images','#000000',37,2,'2021-10-06 14:35:53','2021-10-21 06:00:37','voyager.gallery-sarpras.index','null'),(32,1,'Mapels','','_self','voyager-documentation','#000000',NULL,14,'2021-10-07 02:56:09','2021-10-21 06:00:45','voyager.mapels.index','null'),(33,1,'Navbars','','_self','voyager-params','#000000',NULL,15,'2021-10-16 04:24:35','2021-10-21 06:00:45','voyager.navbars.index','null'),(34,1,'Images','','_self','voyager-camera','#000000',36,2,'2021-10-17 03:22:35','2021-10-21 04:34:41','voyager.images.index','null'),(35,1,'Videos','','_self','voyager-youtube-play','#000000',36,1,'2021-10-17 03:24:20','2021-10-21 04:29:02','voyager.videos.index','null'),(36,1,'Gallery','','_self','voyager-photos','#000000',NULL,16,'2021-10-17 03:25:12','2021-10-21 06:00:46',NULL,''),(37,1,'Page Sarpras','','_self','voyager-receipt','#000000',NULL,17,'2021-10-17 03:26:59','2021-10-21 06:00:46',NULL,''),(38,1,'Contents','','_self','voyager-news','#000000',NULL,18,'2021-10-17 09:10:33','2021-10-21 06:00:46','voyager.contents.index','null'),(40,1,'Backgrounds','','_self','voyager-photo','#000000',NULL,20,'2021-10-18 07:11:16','2021-10-21 06:00:46','voyager.backgrounds.index','null'),(41,1,'Guru Kejuruans','','_self','voyager-treasure-open','#000000',NULL,21,'2021-10-21 07:08:03','2021-10-21 07:10:21','voyager.guru-kejuruans.index','null'),(42,1,'Galleries','','_self',NULL,NULL,NULL,24,'2021-10-21 07:12:49','2021-10-21 07:12:49','voyager.galleries.index',NULL),(43,1,'Kategoris','','_self',NULL,NULL,NULL,25,'2021-10-21 07:13:41','2021-10-21 07:13:41','voyager.kategoris.index',NULL),(44,1,'Ekskuls','','_self',NULL,NULL,NULL,26,'2021-10-21 08:58:00','2021-10-21 08:58:00','voyager.ekskuls.index',NULL),(45,1,'Detail Users','','_self',NULL,NULL,NULL,27,'2021-10-23 04:09:48','2021-10-23 04:09:48','voyager.detail-users.index',NULL),(46,1,'Skills','','_self',NULL,NULL,NULL,28,'2021-10-23 04:10:19','2021-10-23 04:10:19','voyager.skills.index',NULL),(47,1,'Calon Siswas','','_self',NULL,NULL,NULL,29,'2021-11-07 10:54:00','2021-11-07 10:54:00','voyager.calon-siswa.index',NULL),(48,1,'Gugus','','_self',NULL,NULL,NULL,30,'2021-11-07 21:26:32','2021-11-07 21:26:32','voyager.gugus.index',NULL),(49,1,'Pembayaran Calonsiswas','','_self',NULL,NULL,NULL,31,'2021-11-08 02:52:33','2021-11-08 02:52:33','voyager.pembayaran-calonsiswas.index',NULL),(50,1,'Pembayarans','','_self',NULL,NULL,NULL,32,'2021-11-08 02:53:16','2021-11-08 02:53:16','voyager.pembayaran.index',NULL),(53,1,'Asal Sekolahs','','_self',NULL,NULL,NULL,34,'2021-11-13 14:40:28','2021-11-13 14:40:28','voyager.asal-sekolahs.index',NULL),(55,1,'Pembayarans','','_self',NULL,NULL,NULL,35,'2021-11-25 00:57:07','2021-11-25 00:57:07','voyager.pembayarans.index',NULL),(56,1,'Pembayaran Calonsiswasses','','_self',NULL,NULL,NULL,36,'2021-11-25 07:06:15','2021-11-25 07:06:15','voyager.pembayaran-calonsiswass.index',NULL),(57,1,'Content Jurusans','','_self',NULL,NULL,NULL,37,'2022-01-07 18:11:11','2022-01-07 18:11:11','voyager.content-jurusans.index',NULL),(59,1,'Content Ekskuls','','_self',NULL,NULL,NULL,39,'2022-01-07 20:36:19','2022-01-07 20:36:19','voyager.content-ekskuls.index',NULL),(60,1,'Gallery Ekskuls','','_self',NULL,NULL,NULL,40,'2022-01-07 20:42:05','2022-01-07 20:42:05','voyager.gallery-ekskuls.index',NULL),(61,1,'Gallery Jurusans','','_self',NULL,NULL,NULL,41,'2022-01-09 03:06:35','2022-01-09 03:06:35','voyager.gallery-jurusans.index',NULL),(62,1,'Tab Jurusans','','_self',NULL,NULL,NULL,42,'2022-01-09 07:19:14','2022-01-09 07:19:14','voyager.tab-jurusans.index',NULL),(63,1,'Tab Ekskuls','','_self',NULL,NULL,NULL,43,'2022-01-09 09:09:48','2022-01-09 09:09:48','voyager.tab-ekskuls.index',NULL),(64,1,'User References','','_self',NULL,NULL,NULL,44,'2022-01-26 05:41:33','2022-01-26 05:41:33','voyager.user-reference.index',NULL);
/*!40000 ALTER TABLE `menu_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'admin','2021-09-21 07:32:54','2021-09-21 07:32:54');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2016_01_01_000000_add_voyager_user_fields',1),(4,'2016_01_01_000000_create_data_types_table',1),(5,'2016_05_19_173453_create_menu_table',1),(6,'2016_10_21_190000_create_roles_table',1),(7,'2016_10_21_190000_create_settings_table',1),(8,'2016_11_30_135954_create_permission_table',1),(9,'2016_11_30_141208_create_permission_role_table',1),(10,'2016_12_26_201236_data_types__add__server_side',1),(11,'2017_01_13_000000_add_route_to_menu_items_table',1),(12,'2017_01_14_005015_create_translations_table',1),(13,'2017_01_15_000000_make_table_name_nullable_in_permissions_table',1),(14,'2017_03_06_000000_add_controller_to_data_types_table',1),(15,'2017_04_21_000000_add_order_to_data_rows_table',1),(16,'2017_07_05_210000_add_policyname_to_data_types_table',1),(17,'2017_08_05_000000_add_group_to_settings_table',1),(18,'2017_11_26_013050_add_user_role_relationship',1),(19,'2017_11_26_015000_create_user_roles_table',1),(20,'2018_03_11_000000_add_user_settings',1),(21,'2018_03_14_000000_add_details_to_data_types_table',1),(22,'2018_03_16_000000_make_settings_value_nullable',1),(23,'2019_08_19_000000_create_failed_jobs_table',1),(24,'2019_12_14_000001_create_personal_access_tokens_table',1),(25,'2016_01_01_000000_create_pages_table',2),(26,'2016_01_01_000000_create_posts_table',2),(27,'2016_02_15_204651_create_categories_table',2),(28,'2017_04_11_000000_alter_post_nullable_fields_table',2),(29,'2011_10_01_151902_create_media_table',3);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `navbars`
--

DROP TABLE IF EXISTS `navbars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `navbars` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `navbars`
--

LOCK TABLES `navbars` WRITE;
/*!40000 ALTER TABLE `navbars` DISABLE KEYS */;
INSERT INTO `navbars` VALUES (1,'Kurikulum','kurikulum','2021-10-16 04:46:09','2021-10-17 06:20:09','Active'),(2,'Hubungan Industri','hubin','2021-10-16 04:46:50','2021-10-17 09:54:21','Active'),(3,'Sarana Pra Sarana','sarpras','2021-10-16 04:47:13','2021-10-17 09:54:06','Active'),(4,'Kesiswaan','kesiswaan','2021-10-16 04:47:28','2021-10-17 06:19:34','Active'),(5,'BKK','bkk','2021-10-16 04:47:42','2021-10-17 06:19:22','Active'),(6,'Program Keahlian','program-keahlian','2021-10-16 04:48:04','2021-10-17 06:19:11','Active'),(7,'Profile','profile','2021-10-17 04:38:23','2021-10-17 06:28:40','Inactive'),(8,'Home','home','2021-10-17 06:04:16','2021-10-17 06:29:01','Inactive'),(9,'News Home','news-home','2021-10-17 06:04:27','2021-10-17 06:29:14','Inactive'),(10,'Gallery','gallery','2021-10-17 06:04:40','2021-10-17 06:29:27','Active');
/*!40000 ALTER TABLE `navbars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orangtua_wali_casis`
--

DROP TABLE IF EXISTS `orangtua_wali_casis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orangtua_wali_casis` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `nama_ayah_kandung` text COLLATE utf8mb4_unicode_ci,
  `nik_ayah` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tahun_lahir_ayah` date DEFAULT NULL,
  `pendidikan_ayah` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pekerjaan_ayah` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `penghasilan_ayah` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_ibu_kandung` text COLLATE utf8mb4_unicode_ci,
  `nik_ibu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tahun_lahir_ibu` date DEFAULT NULL,
  `pendidikan_ibu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pekerjaan_ibu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `penghasilan_ibu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_wali` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nik_wali` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tahun_lahir_wali` date DEFAULT NULL,
  `pendidikan_wali` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pekerjaan_wali` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `penghasilan_wali` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orangtua_wali_casis`
--

LOCK TABLES `orangtua_wali_casis` WRITE;
/*!40000 ALTER TABLE `orangtua_wali_casis` DISABLE KEYS */;
INSERT INTO `orangtua_wali_casis` VALUES (15,'JOhn',NULL,NULL,NULL,NULL,NULL,'mary',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-11-22 21:59:02','2021-11-26 02:58:33'),(29,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-11-25 16:34:32','2021-11-25 16:34:32'),(31,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-12-06 02:44:34','2021-12-06 02:44:34'),(32,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-12-06 02:45:39','2021-12-06 02:45:39'),(33,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-12-06 02:54:52','2021-12-06 02:54:52'),(34,'lak',NULL,NULL,NULL,NULL,NULL,'lek',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-01-06 18:10:18','2022-01-06 18:13:00'),(36,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-01-06 18:46:13','2022-01-06 18:46:13'),(37,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-01-06 18:49:17','2022-01-06 18:49:17'),(38,'maloch','9999999','1999-02-22','SMA/MA','Wirausaha','Rp.2.000.000 - 4.999.999','veera','88888','2022-02-24','S2','TKI','Rp.2.000.000 - 4.999.999','Walinya','77777','2022-02-25','S3','Wirausaha','Rp.2.000.000 - 4.999.999','2022-01-06 18:50:45','2022-02-17 15:05:31'),(39,'ayah alex',NULL,NULL,NULL,NULL,NULL,'ibu alex',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-02-26 01:35:27','2022-02-26 01:35:27'),(40,'ayah cozy',NULL,NULL,NULL,NULL,NULL,'ibu cozy',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-02-26 01:50:35','2022-02-26 01:50:35'),(41,'bapak eko',NULL,NULL,NULL,NULL,NULL,'ibu eko',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-02-26 01:57:00','2022-02-26 01:57:00'),(43,'ayah sasuke',NULL,NULL,NULL,NULL,NULL,'ibu sasuke',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-02-26 02:01:36','2022-02-26 02:01:36'),(44,'ayah messi',NULL,NULL,NULL,NULL,NULL,'ibu messi',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-02-26 02:08:34','2022-02-26 02:08:34'),(45,'minato',NULL,NULL,NULL,NULL,NULL,'kushina',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-02-26 02:19:21','2022-02-26 02:19:21');
/*!40000 ALTER TABLE `orangtua_wali_casis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `body` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pages_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (26,1,'Why Starbhak?',NULL,'<p><span style=\"font-family: Poppins, sans-serif; font-size: 20px; background-color: #d7efff;\">90% of graduating students already work before graduation, as either self-employed workers or young professionals.</span></p>','pages/October2021/12YtmE4i0nLcZnMm1Vuf.jpg','why-starbhak',NULL,NULL,'ACTIVE','2021-10-17 07:00:50','2021-10-17 07:00:50',8),(27,1,'Protokol Kesehatan di Lingkungan Sekolah',NULL,NULL,'pages/October2021/tny4ByO9Yc1DXyBtAzAs.png','protokol-kesehatan-di-lingkungan-sekolah',NULL,NULL,'ACTIVE','2021-10-17 07:01:39','2021-10-17 07:01:39',9),(28,1,'Sejarah SMK Taruna Bhakti',NULL,'<h3 class=\"mt-5\" style=\"box-sizing: border-box; margin-bottom: 0.5rem; font-weight: 500; line-height: 1.2; font-size: 1.75rem; font-family: Raleway, sans-serif; margin-top: 3rem !important;\"><span style=\"box-sizing: border-box; font-weight: bolder;\">SEJARAH SMK TARUNA BHAKTI</span></h3>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: \'Open Sans\', sans-serif; font-size: 16px;\">&nbsp;</p>\r\n<p class=\"mt-3\" style=\"box-sizing: border-box; margin-bottom: 1rem; font-family: \'Open Sans\', sans-serif; font-size: 16px; margin-top: 1rem !important;\">Untuk memenuhi kebutuhan akan sumber daya manusia yang berkualitas tinggi dalam penguasaan IPTEK yang didasari semangat iman dan taqwa,<span style=\"box-sizing: border-box; font-weight: bolder;\">&nbsp;SMK Taruna Bhakti Depok</span>&nbsp;dirancang untuk membekali siswa agar menguasai ilmu pengetahuan khususnya dalam bidang Teknologi Informasi dan Komunikasi yang berkualitas, serta memiliki kecakapan hidup. Program pembelajaran SMK Taruna Bhakti memberi perhatian khusus (ciri khas) pada penguasaan TIK khususnya bidang Teknik Komputer dan Jaringan (TKJ), Multimedia (MM) serta Rekaya Perangkat Lunak (RPL) dengan menggunakan kurikulum Nasional yang secara inovatif diperkaya oleh SMK Taruna Bhakti berdasarkan VISI, MISI, TUJUAN serta TARGET SMK Taruna Bhakti.<br style=\"box-sizing: border-box;\" /><br style=\"box-sizing: border-box;\" />Selain pembelajaran di kelas (intrakurikuler) dan pengembangan bakat/minat melalui ekstrakurikuler, siswa memperluas wawasan melalui berbagai macam program yang membekali siswa untuk memiliki kecakapan hidup antara lain: Character Building, Science Camp, Mendatangkan Guru Tamu dari Dunai Usaha/Industri yang relevan dll, serta memberi kesempatan luas kepada siswa untuk berkompetisi dalam bidang akademis dan non-akademis baik tingkat Nasional, Regional, dan Internasional. Proses dan efektifitas pembelajaran didukung oleh guru yang kompeten, bimbingan dan konseling, serta sarana pendidikan yang lengkap. Sebagai salah satu sekolah Teknologi Informasi dan Komunikasi bermutu di Depok, prestasi yang telah dicapai oleh SMK Taruna Bhakti Depok ini memang sesuai dengn visi dan misi yang diembannya</p>',NULL,'sejarah-smk-taruna-bhakti',NULL,NULL,'ACTIVE','2021-10-17 07:02:27','2021-10-17 07:02:27',7),(29,1,'Visi dan Misi',NULL,'<h3 class=\"mt-5 fw-bold\" style=\"box-sizing: border-box; margin-bottom: 0.5rem; line-height: 1.2; font-size: 1.75rem; font-family: Raleway, sans-serif; margin-top: 3rem !important;\">Visi</h3>\r\n<ol style=\"box-sizing: border-box; padding-left: 2rem; margin-top: 0px; margin-bottom: 1rem; font-family: \'Open Sans\', sans-serif; font-size: 16px;\">\r\n<li style=\"box-sizing: border-box;\">Menghasilkan lulusan yang kompeten dalam IPTEK DAN IMTAQ,</li>\r\n<li style=\"box-sizing: border-box;\">serta mampu bersaing pada tingkat nasional dan global.</li>\r\n</ol>\r\n<h3 class=\"mt-5 fw-bold\" style=\"box-sizing: border-box; margin-bottom: 0.5rem; line-height: 1.2; font-size: 1.75rem; font-family: Raleway, sans-serif; margin-top: 3rem !important;\">Misi</h3>\r\n<ol style=\"box-sizing: border-box; padding-left: 2rem; margin-top: 0px; margin-bottom: 1rem; font-family: \'Open Sans\', sans-serif; font-size: 16px;\">\r\n<li style=\"box-sizing: border-box;\">Menumbuhkan semangat kreatifitas, bersinergi dan kompetitif kepada seluruh warga sekolah</li>\r\n<li style=\"box-sizing: border-box;\">Melaksanakan kurikulum melalui pembelajaran dan penilaian berbasis kompetensi, Berbasis wirausaha, berwawasan lingkungan.dan berlandaskan kejujuran.</li>\r\n<li style=\"box-sizing: border-box;\">Meningkatkan kualitas sumber daya manusia melalui sertifikasi Kompetensi Tingkat Nasional dan Internasional</li>\r\n<li style=\"box-sizing: border-box;\">Mengembangkan potensi peserta didik melalui kegiatan Minat dan Bakat dan pembinaan kedisiplinan.</li>\r\n<li style=\"box-sizing: border-box;\">Menerapkan layanan prima dalam pengelolaan sekolah melalui Sistem Manajeman Mutu</li>\r\n</ol>',NULL,'visi-dan-misi',NULL,NULL,'ACTIVE','2021-10-17 07:03:13','2021-10-17 07:03:13',7),(30,1,'Tujuan Sekolah',NULL,'<h3 class=\"mt-5\" style=\"box-sizing: border-box; margin-bottom: 0.5rem; font-weight: 500; line-height: 1.2; font-size: 1.75rem; font-family: Raleway, sans-serif; margin-top: 3rem !important;\"><span style=\"box-sizing: border-box; font-weight: bolder;\">Tujuan Sekolah</span></h3>\r\n<ol style=\"box-sizing: border-box; padding-left: 2rem; margin-top: 0px; margin-bottom: 1rem; font-family: \'Open Sans\', sans-serif; font-size: 16px;\">\r\n<li style=\"box-sizing: border-box;\">Menghasilkan lulusan yang kompeten</li>\r\n<li style=\"box-sizing: border-box;\">Meningkatkan kualitas pembelajaran.</li>\r\n<li style=\"box-sizing: border-box;\">Menyiapkan peserta didik agar mampu mengembangkan sikap profesional, mampu beradaptasi dan berkompetisi</li>\r\n<li style=\"box-sizing: border-box;\">Meningkatkan kepuasan masyarakat untuk memperoleh layanan pendidikan</li>\r\n<li style=\"box-sizing: border-box;\">Konsistensi pelaksanaan aktifitas, kendali mutu dan jaminan mutu sekolah.</li>\r\n<li style=\"box-sizing: border-box;\">Meningkatkan kesejahteraan warga sekolah.</li>\r\n</ol>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: \'Open Sans\', sans-serif; font-size: 16px;\">Dalam segala aktivitas Proses Pendidikan menerapkan budaya mutu sebagai berikut :</p>\r\n<ul style=\"box-sizing: border-box; padding: 0px 0px 0px 2rem; margin: 0px 0px 1rem; list-style: none; font-family: \'Open Sans\', sans-serif; font-size: 16px;\">\r\n<li style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-weight: bolder;\">Perubahan itu masa depan</span></li>\r\n<li style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-weight: bolder;\">Pelayanan Prima</span></li>\r\n<li style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-weight: bolder;\">Learning without practising is nothing</span></li>\r\n<li style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-weight: bolder;\">Service is investment</span></li>\r\n<li style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-weight: bolder;\">Our quality ask be different</span></li>\r\n</ul>',NULL,'tujuan-sekolah',NULL,NULL,'ACTIVE','2021-10-17 07:03:49','2021-10-17 07:03:49',7),(31,1,'Guru SMK Taruna Bhakti',NULL,NULL,'pages/October2021/1PGpfdWDQJ92a0O5lexF.jpg','guru-smk-taruna-bhakti',NULL,NULL,'ACTIVE','2021-10-17 07:04:39','2021-10-17 07:04:39',1),(32,1,'Struktur Kurikulum SMK Taruna Bhakti',NULL,NULL,'pages/October2021/O3r0wkusYSHeWG1I3AQC.jpg','struktur-kurikulum-smk-taruna-bhakti',NULL,NULL,'ACTIVE','2021-10-17 07:05:31','2021-10-17 07:05:31',1),(33,1,'Evaluasi',NULL,'<p>awdawd</p>','pages/October2021/ilgcJtXv0ZmDCXodd7N5.jpg','evaluasi',NULL,NULL,'ACTIVE','2021-10-17 07:05:58','2022-01-09 01:41:25',1),(34,1,'Data Tamatan SMK Taruna Bhakti',NULL,NULL,'pages/October2021/cDOEwebCTaJn1PhGOowV.jpg','data-tamatan',NULL,NULL,'ACTIVE','2021-10-17 07:06:41','2021-10-17 10:23:01',2),(35,1,'Sarana dan Prasarana Sekolah',NULL,NULL,'pages/October2021/eQ019SBsh0uAnMPpp80B.jpg','sarana-dan-prasarana-sekolah',NULL,NULL,'ACTIVE','2021-10-17 07:07:11','2021-10-17 07:07:11',3),(36,1,'Ruang Pembelajaran Umum',NULL,NULL,'pages/October2021/3sMON3t5jLtDkcYSazBV.jpg','ruang-pembelajaran-umum',NULL,NULL,'ACTIVE','2021-10-17 07:09:49','2021-10-17 07:09:49',3),(37,1,'Ruang Pembelajaran Khusus',NULL,NULL,'pages/October2021/kgF7fVYUfWsAKsDNrdrG.jpg','ruang-pembelajaran-khusus',NULL,NULL,'ACTIVE','2021-10-17 07:10:20','2021-10-17 07:10:20',3),(38,1,'Fasilitas Parkir Kendaraan Siswa',NULL,NULL,'pages/October2021/CCB2AEMVRLE0IOmG60PT.jpg','fasilitas-parkir-kendaraan-siswa',NULL,NULL,'ACTIVE','2021-10-17 07:10:49','2021-10-17 07:10:49',3),(39,1,'Mushola Raudhotul Ilmi',NULL,NULL,'pages/October2021/FxpLN738Cng20v1IHS4F.jpg','mushola-raudhotul-ilmi',NULL,NULL,'ACTIVE','2021-10-17 07:11:17','2021-10-17 07:11:17',3),(40,1,'Fasilitas Pendukung',NULL,NULL,'pages/October2021/S1FCYUJRV4rbOebXZJFH.jpg','fasilitas-pendukung',NULL,NULL,'ACTIVE','2021-10-17 07:11:43','2021-10-17 07:11:43',3),(41,1,'Kegiatan Osis',NULL,NULL,'pages/October2021/ixtVINehuSZSi3ZqqFGg.jpg','kegiatan-osis',NULL,NULL,'ACTIVE','2021-10-17 07:12:18','2021-10-17 07:12:18',4),(42,1,'Bimbingan Konseling',NULL,NULL,'pages/October2021/3wAIRX6Eb22eWcK63Luo.jpg','bimbingan-konseling',NULL,NULL,'ACTIVE','2021-10-17 07:13:11','2021-10-17 07:13:33',4),(43,1,'Ekstrakurikuler',NULL,NULL,'pages/October2021/Bxf8ULlbOHc5NXM532gt.jpg','ekstrakurikuler',NULL,NULL,'ACTIVE','2021-10-17 07:14:21','2021-10-17 07:14:21',4),(44,1,'Open Recruitment',NULL,NULL,'pages/October2021/HXlnBNqDnLyIfxskufGZ.jpg','open-recruitment',NULL,NULL,'ACTIVE','2021-10-17 07:15:13','2021-10-17 07:15:13',5),(45,1,'Data Lulusan SMK Taruna Bhakti',NULL,NULL,'pages/October2021/OHY6s4U7cPMX5OO5gT4o.jpg','data-lulusan-smk-taruna-bhakti',NULL,NULL,'ACTIVE','2021-10-17 07:15:49','2021-10-17 07:15:49',5),(46,1,'Image',NULL,NULL,'pages/October2021/nvvieG1eXz1wWu70LCgx.jpg','image',NULL,NULL,'ACTIVE','2021-10-17 07:16:45','2021-10-17 07:16:45',10),(47,1,'Video',NULL,NULL,'pages/October2021/gelmSD1zy7kstltz1FzG.jpg','video',NULL,NULL,'ACTIVE','2021-10-17 07:17:15','2021-10-17 07:17:15',10),(54,1,'Jurusan','wdwd',NULL,'pages/January2022/plIZr5BjGh3dL92cG72u.jpg','jurusan',NULL,NULL,'ACTIVE','2022-01-07 16:02:03','2022-01-09 02:05:12',6),(56,1,'PPDB',NULL,NULL,'pages/February2022/lihBIJxeTHGkAL1Ea95L.png','ppdb',NULL,NULL,'ACTIVE','2022-02-20 17:10:44','2022-02-20 17:11:26',4);
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partners`
--

DROP TABLE IF EXISTS `partners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `partners` (
  `id` int unsigned NOT NULL,
  `logo_perusahaan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_perusahaan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat_perusahaan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `website_perusahaan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partners`
--

LOCK TABLES `partners` WRITE;
/*!40000 ALTER TABLE `partners` DISABLE KEYS */;
INSERT INTO `partners` VALUES (1,'partners\\September2021\\X5dVle3n9fghgh63JqPL.png','Impunity','jl dongkal no 30','2021-09-30 08:39:59','2021-09-30 08:39:59',NULL),(2,'partners\\September2021\\VfckVh3Uuf1HwQZu2m9F.png','Automate','jl baru no 30','2021-09-30 08:41:09','2021-09-30 08:41:09',NULL),(9,'partners\\September2021\\eBChzSeaoGRIUizDLpYM.png','Play Media','MNC','2021-09-30 08:50:47','2021-09-30 08:50:47',NULL),(10,'partners\\September2021\\QISLM81GwCEJUpgHywdJ.png','Rumah Coding','Rumah','2021-09-30 08:51:02','2021-09-30 08:51:02',NULL);
/*!40000 ALTER TABLE `partners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pembayaran_calonsiswass`
--

DROP TABLE IF EXISTS `pembayaran_calonsiswass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pembayaran_calonsiswass` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `calonsiswa_id` int DEFAULT NULL,
  `tipecicilan_id` int DEFAULT NULL,
  `nominal` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metode_bayar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bukti_bayar` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pembayaran_calonsiswass`
--

LOCK TABLES `pembayaran_calonsiswass` WRITE;
/*!40000 ALTER TABLE `pembayaran_calonsiswass` DISABLE KEYS */;
INSERT INTO `pembayaran_calonsiswass` VALUES (6,11,2,'200000','BANK','bukti_pembayaran_casis/January2022/1642184319|81818181.jpg','2022-01-14 18:18:39','2022-01-29 05:32:57','1'),(7,8,1,'4000000','BANK','bukti_pembayaran_casis/January2022/1642296988|321321321.jpg','2022-01-16 01:36:28','2022-02-04 03:25:55','1'),(8,11,2,'300000','BANK','bukti_pembayaran_casis/January2022/1642304837|81818181.jpg','2022-01-16 03:47:17','2022-01-29 05:31:23','1'),(10,5,1,'4000000','BANK','bukti_pembayaran_casis/January2022/1643609691|81818181.png','2022-01-31 06:14:51','2022-01-31 06:14:51','1'),(11,17,2,'100000','BANK','bukti_pembayaran_casis/February2022/1645842069|22262373137.png','2022-02-26 02:21:09','2022-02-26 02:22:05','1'),(12,17,2,'1000000','BANK','bukti_pembayaran_casis/February2022/1645842228|22262373137.png','2022-02-26 02:23:48','2022-02-26 02:24:18','1'),(13,17,2,'900000','CASH','bukti_pembayaran_casis/February2022/1645842306|22262373137.png','2022-02-26 02:25:06','2022-02-26 02:25:26','0'),(14,17,2,'1000000','BANK','bukti_pembayaran_casis/February2022/1645842390|22262373137.png','2022-02-26 02:26:30','2022-02-26 02:27:26','1'),(15,17,2,'1000000','BANK','bukti_pembayaran_casis/February2022/1645842406|22262373137.png','2022-02-26 02:26:46','2022-02-26 02:27:58','1'),(16,17,2,'900000','BANK','bukti_pembayaran_casis/February2022/1645842428|22262373137.png','2022-02-26 02:27:08','2022-02-26 02:27:45','1');
/*!40000 ALTER TABLE `pembayaran_calonsiswass` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pembayarans`
--

DROP TABLE IF EXISTS `pembayarans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pembayarans` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `nama_pembayaran` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nominal_pembayaran` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pembayarans`
--

LOCK TABLES `pembayarans` WRITE;
/*!40000 ALTER TABLE `pembayarans` DISABLE KEYS */;
INSERT INTO `pembayarans` VALUES (1,'Sekali Bayar',4000000,'2021-11-25 04:12:38','2021-11-25 04:12:38'),(2,'Cicilan',4000000,'2021-11-25 05:31:00','2021-11-25 05:31:50');
/*!40000 ALTER TABLE `pembayarans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permission_role` (
  `permission_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_role`
--

LOCK TABLES `permission_role` WRITE;
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;
INSERT INTO `permission_role` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(21,1),(22,1),(23,1),(24,1),(25,1),(26,1),(27,1),(28,1),(29,1),(30,1),(31,1),(32,1),(33,1),(34,1),(35,1),(36,1),(37,1),(38,1),(39,1),(40,1),(41,1),(42,1),(43,1),(44,1),(45,1),(46,1),(47,1),(48,1),(49,1),(50,1),(51,1),(52,1),(53,1),(54,1),(55,1),(56,1),(57,1),(58,1),(59,1),(60,1),(66,1),(67,1),(68,1),(69,1),(70,1),(71,1),(72,1),(73,1),(74,1),(75,1),(76,1),(77,1),(78,1),(79,1),(80,1),(81,1),(82,1),(83,1),(84,1),(85,1),(121,1),(122,1),(123,1),(124,1),(125,1),(126,1),(127,1),(128,1),(129,1),(130,1),(131,1),(132,1),(133,1),(134,1),(135,1),(136,1),(137,1),(138,1),(139,1),(140,1),(141,1),(142,1),(143,1),(144,1),(145,1),(146,1),(147,1),(148,1),(149,1),(150,1),(151,1),(152,1),(153,1),(154,1),(155,1),(156,1),(157,1),(158,1),(159,1),(160,1),(161,1),(162,1),(163,1),(164,1),(165,1),(166,1),(167,1),(168,1),(169,1),(170,1),(171,1),(172,1),(173,1),(174,1),(175,1),(176,1),(177,1),(178,1),(179,1),(180,1),(181,1),(182,1),(183,1),(184,1),(185,1),(186,1),(187,1),(188,1),(189,1),(190,1),(191,1),(192,1),(193,1),(194,1),(195,1),(196,1),(197,1),(198,1),(199,1),(200,1),(201,1),(202,1),(203,1),(204,1),(205,1),(206,1),(207,1),(208,1),(209,1),(210,1),(211,1),(212,1),(213,1),(214,1),(215,1),(216,1),(217,1),(218,1),(219,1),(220,1),(221,1),(222,1),(223,1),(224,1),(225,1),(226,1),(227,1),(228,1),(229,1),(230,1),(231,1),(232,1),(233,1),(234,1),(235,1),(236,1),(237,1),(238,1),(239,1),(240,1),(241,1),(242,1),(243,1),(244,1),(245,1),(246,1),(247,1),(248,1),(249,1),(250,1),(251,1),(252,1),(253,1),(254,1),(255,1),(256,1),(257,1),(258,1),(259,1),(260,1),(261,1),(262,1),(263,1),(264,1),(265,1),(266,1),(267,1),(268,1),(269,1),(270,1),(271,1),(272,1),(273,1),(274,1),(275,1),(276,1),(277,1),(278,1),(279,1),(280,1);
/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=281 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'browse_admin',NULL,'2021-09-21 07:32:56','2021-09-21 07:32:56'),(2,'browse_bread',NULL,'2021-09-21 07:32:56','2021-09-21 07:32:56'),(3,'browse_database',NULL,'2021-09-21 07:32:57','2021-09-21 07:32:57'),(4,'browse_media',NULL,'2021-09-21 07:32:57','2021-09-21 07:32:57'),(5,'browse_compass',NULL,'2021-09-21 07:32:57','2021-09-21 07:32:57'),(6,'browse_menus','menus','2021-09-21 07:32:57','2021-09-21 07:32:57'),(7,'read_menus','menus','2021-09-21 07:32:57','2021-09-21 07:32:57'),(8,'edit_menus','menus','2021-09-21 07:32:57','2021-09-21 07:32:57'),(9,'add_menus','menus','2021-09-21 07:32:58','2021-09-21 07:32:58'),(10,'delete_menus','menus','2021-09-21 07:32:58','2021-09-21 07:32:58'),(11,'browse_roles','roles','2021-09-21 07:32:58','2021-09-21 07:32:58'),(12,'read_roles','roles','2021-09-21 07:32:58','2021-09-21 07:32:58'),(13,'edit_roles','roles','2021-09-21 07:32:58','2021-09-21 07:32:58'),(14,'add_roles','roles','2021-09-21 07:32:58','2021-09-21 07:32:58'),(15,'delete_roles','roles','2021-09-21 07:32:58','2021-09-21 07:32:58'),(16,'browse_users','users','2021-09-21 07:32:58','2021-09-21 07:32:58'),(17,'read_users','users','2021-09-21 07:32:58','2021-09-21 07:32:58'),(18,'edit_users','users','2021-09-21 07:32:58','2021-09-21 07:32:58'),(19,'add_users','users','2021-09-21 07:32:58','2021-09-21 07:32:58'),(20,'delete_users','users','2021-09-21 07:32:59','2021-09-21 07:32:59'),(21,'browse_settings','settings','2021-09-21 07:32:59','2021-09-21 07:32:59'),(22,'read_settings','settings','2021-09-21 07:32:59','2021-09-21 07:32:59'),(23,'edit_settings','settings','2021-09-21 07:32:59','2021-09-21 07:32:59'),(24,'add_settings','settings','2021-09-21 07:32:59','2021-09-21 07:32:59'),(25,'delete_settings','settings','2021-09-21 07:32:59','2021-09-21 07:32:59'),(26,'browse_categories','categories','2021-09-21 07:33:10','2021-09-21 07:33:10'),(27,'read_categories','categories','2021-09-21 07:33:10','2021-09-21 07:33:10'),(28,'edit_categories','categories','2021-09-21 07:33:10','2021-09-21 07:33:10'),(29,'add_categories','categories','2021-09-21 07:33:10','2021-09-21 07:33:10'),(30,'delete_categories','categories','2021-09-21 07:33:10','2021-09-21 07:33:10'),(31,'browse_posts','posts','2021-09-21 07:33:12','2021-09-21 07:33:12'),(32,'read_posts','posts','2021-09-21 07:33:12','2021-09-21 07:33:12'),(33,'edit_posts','posts','2021-09-21 07:33:12','2021-09-21 07:33:12'),(34,'add_posts','posts','2021-09-21 07:33:12','2021-09-21 07:33:12'),(35,'delete_posts','posts','2021-09-21 07:33:12','2021-09-21 07:33:12'),(36,'browse_pages','pages','2021-09-21 07:33:13','2021-09-21 07:33:13'),(37,'read_pages','pages','2021-09-21 07:33:13','2021-09-21 07:33:13'),(38,'edit_pages','pages','2021-09-21 07:33:13','2021-09-21 07:33:13'),(39,'add_pages','pages','2021-09-21 07:33:13','2021-09-21 07:33:13'),(40,'delete_pages','pages','2021-09-21 07:33:13','2021-09-21 07:33:13'),(41,'browse_gurus','gurus','2021-09-21 20:11:33','2021-09-21 20:11:33'),(42,'read_gurus','gurus','2021-09-21 20:11:33','2021-09-21 20:11:33'),(43,'edit_gurus','gurus','2021-09-21 20:11:33','2021-09-21 20:11:33'),(44,'add_gurus','gurus','2021-09-21 20:11:33','2021-09-21 20:11:33'),(45,'delete_gurus','gurus','2021-09-21 20:11:33','2021-09-21 20:11:33'),(46,'browse_siswas','siswas','2021-09-21 20:12:15','2021-09-21 20:12:15'),(47,'read_siswas','siswas','2021-09-21 20:12:15','2021-09-21 20:12:15'),(48,'edit_siswas','siswas','2021-09-21 20:12:15','2021-09-21 20:12:15'),(49,'add_siswas','siswas','2021-09-21 20:12:15','2021-09-21 20:12:15'),(50,'delete_siswas','siswas','2021-09-21 20:12:15','2021-09-21 20:12:15'),(51,'browse_managers','managers','2021-09-21 20:20:01','2021-09-21 20:20:01'),(52,'read_managers','managers','2021-09-21 20:20:01','2021-09-21 20:20:01'),(53,'edit_managers','managers','2021-09-21 20:20:01','2021-09-21 20:20:01'),(54,'add_managers','managers','2021-09-21 20:20:01','2021-09-21 20:20:01'),(55,'delete_managers','managers','2021-09-21 20:20:01','2021-09-21 20:20:01'),(56,'browse_kelas','kelas','2021-09-21 20:32:17','2021-09-21 20:32:17'),(57,'read_kelas','kelas','2021-09-21 20:32:17','2021-09-21 20:32:17'),(58,'edit_kelas','kelas','2021-09-21 20:32:17','2021-09-21 20:32:17'),(59,'add_kelas','kelas','2021-09-21 20:32:17','2021-09-21 20:32:17'),(60,'delete_kelas','kelas','2021-09-21 20:32:17','2021-09-21 20:32:17'),(66,'browse_alumnis','alumnis','2021-09-29 21:41:44','2021-09-29 21:41:44'),(67,'read_alumnis','alumnis','2021-09-29 21:41:44','2021-09-29 21:41:44'),(68,'edit_alumnis','alumnis','2021-09-29 21:41:44','2021-09-29 21:41:44'),(69,'add_alumnis','alumnis','2021-09-29 21:41:44','2021-09-29 21:41:44'),(70,'delete_alumnis','alumnis','2021-09-29 21:41:44','2021-09-29 21:41:44'),(71,'browse_categories_alumnis','categories_alumnis','2021-09-29 21:51:04','2021-09-29 21:51:04'),(72,'read_categories_alumnis','categories_alumnis','2021-09-29 21:51:04','2021-09-29 21:51:04'),(73,'edit_categories_alumnis','categories_alumnis','2021-09-29 21:51:04','2021-09-29 21:51:04'),(74,'add_categories_alumnis','categories_alumnis','2021-09-29 21:51:04','2021-09-29 21:51:04'),(75,'delete_categories_alumnis','categories_alumnis','2021-09-29 21:51:04','2021-09-29 21:51:04'),(76,'browse_partners','partners','2021-09-29 21:52:12','2021-09-29 21:52:12'),(77,'read_partners','partners','2021-09-29 21:52:12','2021-09-29 21:52:12'),(78,'edit_partners','partners','2021-09-29 21:52:12','2021-09-29 21:52:12'),(79,'add_partners','partners','2021-09-29 21:52:12','2021-09-29 21:52:12'),(80,'delete_partners','partners','2021-09-29 21:52:12','2021-09-29 21:52:12'),(81,'browse_jurusans','jurusans','2021-09-29 23:52:50','2021-09-29 23:52:50'),(82,'read_jurusans','jurusans','2021-09-29 23:52:50','2021-09-29 23:52:50'),(83,'edit_jurusans','jurusans','2021-09-29 23:52:50','2021-09-29 23:52:50'),(84,'add_jurusans','jurusans','2021-09-29 23:52:50','2021-09-29 23:52:50'),(85,'delete_jurusans','jurusans','2021-09-29 23:52:50','2021-09-29 23:52:50'),(121,'browse_content_sarpras','content_sarpras','2021-10-06 14:30:52','2021-10-06 14:30:52'),(122,'read_content_sarpras','content_sarpras','2021-10-06 14:30:52','2021-10-06 14:30:52'),(123,'edit_content_sarpras','content_sarpras','2021-10-06 14:30:52','2021-10-06 14:30:52'),(124,'add_content_sarpras','content_sarpras','2021-10-06 14:30:52','2021-10-06 14:30:52'),(125,'delete_content_sarpras','content_sarpras','2021-10-06 14:30:52','2021-10-06 14:30:52'),(126,'browse_gallery_sarpras','gallery_sarpras','2021-10-06 14:35:52','2021-10-06 14:35:52'),(127,'read_gallery_sarpras','gallery_sarpras','2021-10-06 14:35:52','2021-10-06 14:35:52'),(128,'edit_gallery_sarpras','gallery_sarpras','2021-10-06 14:35:52','2021-10-06 14:35:52'),(129,'add_gallery_sarpras','gallery_sarpras','2021-10-06 14:35:52','2021-10-06 14:35:52'),(130,'delete_gallery_sarpras','gallery_sarpras','2021-10-06 14:35:52','2021-10-06 14:35:52'),(131,'browse_mapels','mapels','2021-10-07 02:56:08','2021-10-07 02:56:08'),(132,'read_mapels','mapels','2021-10-07 02:56:08','2021-10-07 02:56:08'),(133,'edit_mapels','mapels','2021-10-07 02:56:08','2021-10-07 02:56:08'),(134,'add_mapels','mapels','2021-10-07 02:56:08','2021-10-07 02:56:08'),(135,'delete_mapels','mapels','2021-10-07 02:56:08','2021-10-07 02:56:08'),(136,'browse_navbars','navbars','2021-10-16 04:24:35','2021-10-16 04:24:35'),(137,'read_navbars','navbars','2021-10-16 04:24:35','2021-10-16 04:24:35'),(138,'edit_navbars','navbars','2021-10-16 04:24:35','2021-10-16 04:24:35'),(139,'add_navbars','navbars','2021-10-16 04:24:35','2021-10-16 04:24:35'),(140,'delete_navbars','navbars','2021-10-16 04:24:35','2021-10-16 04:24:35'),(141,'browse_images','images','2021-10-17 03:22:35','2021-10-17 03:22:35'),(142,'read_images','images','2021-10-17 03:22:35','2021-10-17 03:22:35'),(143,'edit_images','images','2021-10-17 03:22:35','2021-10-17 03:22:35'),(144,'add_images','images','2021-10-17 03:22:35','2021-10-17 03:22:35'),(145,'delete_images','images','2021-10-17 03:22:35','2021-10-17 03:22:35'),(146,'browse_videos','videos','2021-10-17 03:24:20','2021-10-17 03:24:20'),(147,'read_videos','videos','2021-10-17 03:24:20','2021-10-17 03:24:20'),(148,'edit_videos','videos','2021-10-17 03:24:20','2021-10-17 03:24:20'),(149,'add_videos','videos','2021-10-17 03:24:20','2021-10-17 03:24:20'),(150,'delete_videos','videos','2021-10-17 03:24:20','2021-10-17 03:24:20'),(151,'browse_contents','contents','2021-10-17 09:10:32','2021-10-17 09:10:32'),(152,'read_contents','contents','2021-10-17 09:10:32','2021-10-17 09:10:32'),(153,'edit_contents','contents','2021-10-17 09:10:32','2021-10-17 09:10:32'),(154,'add_contents','contents','2021-10-17 09:10:32','2021-10-17 09:10:32'),(155,'delete_contents','contents','2021-10-17 09:10:32','2021-10-17 09:10:32'),(156,'browse_backgrounds','backgrounds','2021-10-18 07:11:15','2021-10-18 07:11:15'),(157,'read_backgrounds','backgrounds','2021-10-18 07:11:15','2021-10-18 07:11:15'),(158,'edit_backgrounds','backgrounds','2021-10-18 07:11:15','2021-10-18 07:11:15'),(159,'add_backgrounds','backgrounds','2021-10-18 07:11:15','2021-10-18 07:11:15'),(160,'delete_backgrounds','backgrounds','2021-10-18 07:11:15','2021-10-18 07:11:15'),(161,'browse_guru_kejuruans','guru_kejuruans','2021-10-21 07:08:03','2021-10-21 07:08:03'),(162,'read_guru_kejuruans','guru_kejuruans','2021-10-21 07:08:03','2021-10-21 07:08:03'),(163,'edit_guru_kejuruans','guru_kejuruans','2021-10-21 07:08:03','2021-10-21 07:08:03'),(164,'add_guru_kejuruans','guru_kejuruans','2021-10-21 07:08:03','2021-10-21 07:08:03'),(165,'delete_guru_kejuruans','guru_kejuruans','2021-10-21 07:08:03','2021-10-21 07:08:03'),(166,'browse_galleries','galleries','2021-10-21 07:12:49','2021-10-21 07:12:49'),(167,'read_galleries','galleries','2021-10-21 07:12:49','2021-10-21 07:12:49'),(168,'edit_galleries','galleries','2021-10-21 07:12:49','2021-10-21 07:12:49'),(169,'add_galleries','galleries','2021-10-21 07:12:49','2021-10-21 07:12:49'),(170,'delete_galleries','galleries','2021-10-21 07:12:49','2021-10-21 07:12:49'),(171,'browse_kategoris','kategoris','2021-10-21 07:13:41','2021-10-21 07:13:41'),(172,'read_kategoris','kategoris','2021-10-21 07:13:41','2021-10-21 07:13:41'),(173,'edit_kategoris','kategoris','2021-10-21 07:13:41','2021-10-21 07:13:41'),(174,'add_kategoris','kategoris','2021-10-21 07:13:41','2021-10-21 07:13:41'),(175,'delete_kategoris','kategoris','2021-10-21 07:13:41','2021-10-21 07:13:41'),(176,'browse_ekskuls','ekskuls','2021-10-21 08:58:00','2021-10-21 08:58:00'),(177,'read_ekskuls','ekskuls','2021-10-21 08:58:00','2021-10-21 08:58:00'),(178,'edit_ekskuls','ekskuls','2021-10-21 08:58:00','2021-10-21 08:58:00'),(179,'add_ekskuls','ekskuls','2021-10-21 08:58:00','2021-10-21 08:58:00'),(180,'delete_ekskuls','ekskuls','2021-10-21 08:58:00','2021-10-21 08:58:00'),(181,'browse_detail_users','detail_users','2021-10-23 04:09:48','2021-10-23 04:09:48'),(182,'read_detail_users','detail_users','2021-10-23 04:09:48','2021-10-23 04:09:48'),(183,'edit_detail_users','detail_users','2021-10-23 04:09:48','2021-10-23 04:09:48'),(184,'add_detail_users','detail_users','2021-10-23 04:09:48','2021-10-23 04:09:48'),(185,'delete_detail_users','detail_users','2021-10-23 04:09:48','2021-10-23 04:09:48'),(186,'browse_skills','skills','2021-10-23 04:10:19','2021-10-23 04:10:19'),(187,'read_skills','skills','2021-10-23 04:10:19','2021-10-23 04:10:19'),(188,'edit_skills','skills','2021-10-23 04:10:19','2021-10-23 04:10:19'),(189,'add_skills','skills','2021-10-23 04:10:19','2021-10-23 04:10:19'),(190,'delete_skills','skills','2021-10-23 04:10:19','2021-10-23 04:10:19'),(191,'browse_calon_siswa','calon_siswa','2021-11-07 10:54:00','2021-11-07 10:54:00'),(192,'read_calon_siswa','calon_siswa','2021-11-07 10:54:00','2021-11-07 10:54:00'),(193,'edit_calon_siswa','calon_siswa','2021-11-07 10:54:00','2021-11-07 10:54:00'),(194,'add_calon_siswa','calon_siswa','2021-11-07 10:54:00','2021-11-07 10:54:00'),(195,'delete_calon_siswa','calon_siswa','2021-11-07 10:54:00','2021-11-07 10:54:00'),(196,'browse_gugus','gugus','2021-11-07 21:26:32','2021-11-07 21:26:32'),(197,'read_gugus','gugus','2021-11-07 21:26:32','2021-11-07 21:26:32'),(198,'edit_gugus','gugus','2021-11-07 21:26:32','2021-11-07 21:26:32'),(199,'add_gugus','gugus','2021-11-07 21:26:32','2021-11-07 21:26:32'),(200,'delete_gugus','gugus','2021-11-07 21:26:32','2021-11-07 21:26:32'),(201,'browse_pembayaran_CalonSiswas','pembayaran_CalonSiswas','2021-11-08 02:52:33','2021-11-08 02:52:33'),(202,'read_pembayaran_CalonSiswas','pembayaran_CalonSiswas','2021-11-08 02:52:33','2021-11-08 02:52:33'),(203,'edit_pembayaran_CalonSiswas','pembayaran_CalonSiswas','2021-11-08 02:52:33','2021-11-08 02:52:33'),(204,'add_pembayaran_CalonSiswas','pembayaran_CalonSiswas','2021-11-08 02:52:33','2021-11-08 02:52:33'),(205,'delete_pembayaran_CalonSiswas','pembayaran_CalonSiswas','2021-11-08 02:52:33','2021-11-08 02:52:33'),(206,'browse_pembayaran','pembayaran','2021-11-08 02:53:16','2021-11-08 02:53:16'),(207,'read_pembayaran','pembayaran','2021-11-08 02:53:16','2021-11-08 02:53:16'),(208,'edit_pembayaran','pembayaran','2021-11-08 02:53:16','2021-11-08 02:53:16'),(209,'add_pembayaran','pembayaran','2021-11-08 02:53:16','2021-11-08 02:53:16'),(210,'delete_pembayaran','pembayaran','2021-11-08 02:53:16','2021-11-08 02:53:16'),(221,'browse_asal_sekolahs','asal_sekolahs','2021-11-13 14:40:28','2021-11-13 14:40:28'),(222,'read_asal_sekolahs','asal_sekolahs','2021-11-13 14:40:28','2021-11-13 14:40:28'),(223,'edit_asal_sekolahs','asal_sekolahs','2021-11-13 14:40:28','2021-11-13 14:40:28'),(224,'add_asal_sekolahs','asal_sekolahs','2021-11-13 14:40:28','2021-11-13 14:40:28'),(225,'delete_asal_sekolahs','asal_sekolahs','2021-11-13 14:40:28','2021-11-13 14:40:28'),(231,'browse_pembayarans','pembayarans','2021-11-25 00:57:07','2021-11-25 00:57:07'),(232,'read_pembayarans','pembayarans','2021-11-25 00:57:07','2021-11-25 00:57:07'),(233,'edit_pembayarans','pembayarans','2021-11-25 00:57:07','2021-11-25 00:57:07'),(234,'add_pembayarans','pembayarans','2021-11-25 00:57:07','2021-11-25 00:57:07'),(235,'delete_pembayarans','pembayarans','2021-11-25 00:57:07','2021-11-25 00:57:07'),(236,'browse_pembayaran_calonsiswass','pembayaran_calonsiswass','2021-11-25 07:06:15','2021-11-25 07:06:15'),(237,'read_pembayaran_calonsiswass','pembayaran_calonsiswass','2021-11-25 07:06:15','2021-11-25 07:06:15'),(238,'edit_pembayaran_calonsiswass','pembayaran_calonsiswass','2021-11-25 07:06:15','2021-11-25 07:06:15'),(239,'add_pembayaran_calonsiswass','pembayaran_calonsiswass','2021-11-25 07:06:15','2021-11-25 07:06:15'),(240,'delete_pembayaran_calonsiswass','pembayaran_calonsiswass','2021-11-25 07:06:15','2021-11-25 07:06:15'),(241,'browse_content_jurusans','content_jurusans','2022-01-07 18:11:11','2022-01-07 18:11:11'),(242,'read_content_jurusans','content_jurusans','2022-01-07 18:11:11','2022-01-07 18:11:11'),(243,'edit_content_jurusans','content_jurusans','2022-01-07 18:11:11','2022-01-07 18:11:11'),(244,'add_content_jurusans','content_jurusans','2022-01-07 18:11:11','2022-01-07 18:11:11'),(245,'delete_content_jurusans','content_jurusans','2022-01-07 18:11:11','2022-01-07 18:11:11'),(251,'browse_content_ekskuls','content_ekskuls','2022-01-07 20:36:19','2022-01-07 20:36:19'),(252,'read_content_ekskuls','content_ekskuls','2022-01-07 20:36:19','2022-01-07 20:36:19'),(253,'edit_content_ekskuls','content_ekskuls','2022-01-07 20:36:19','2022-01-07 20:36:19'),(254,'add_content_ekskuls','content_ekskuls','2022-01-07 20:36:19','2022-01-07 20:36:19'),(255,'delete_content_ekskuls','content_ekskuls','2022-01-07 20:36:19','2022-01-07 20:36:19'),(256,'browse_gallery_ekskuls','gallery_ekskuls','2022-01-07 20:42:05','2022-01-07 20:42:05'),(257,'read_gallery_ekskuls','gallery_ekskuls','2022-01-07 20:42:05','2022-01-07 20:42:05'),(258,'edit_gallery_ekskuls','gallery_ekskuls','2022-01-07 20:42:05','2022-01-07 20:42:05'),(259,'add_gallery_ekskuls','gallery_ekskuls','2022-01-07 20:42:05','2022-01-07 20:42:05'),(260,'delete_gallery_ekskuls','gallery_ekskuls','2022-01-07 20:42:05','2022-01-07 20:42:05'),(261,'browse_gallery_jurusans','gallery_jurusans','2022-01-09 03:06:35','2022-01-09 03:06:35'),(262,'read_gallery_jurusans','gallery_jurusans','2022-01-09 03:06:35','2022-01-09 03:06:35'),(263,'edit_gallery_jurusans','gallery_jurusans','2022-01-09 03:06:35','2022-01-09 03:06:35'),(264,'add_gallery_jurusans','gallery_jurusans','2022-01-09 03:06:35','2022-01-09 03:06:35'),(265,'delete_gallery_jurusans','gallery_jurusans','2022-01-09 03:06:35','2022-01-09 03:06:35'),(266,'browse_tab_jurusans','tab_jurusans','2022-01-09 07:19:14','2022-01-09 07:19:14'),(267,'read_tab_jurusans','tab_jurusans','2022-01-09 07:19:14','2022-01-09 07:19:14'),(268,'edit_tab_jurusans','tab_jurusans','2022-01-09 07:19:14','2022-01-09 07:19:14'),(269,'add_tab_jurusans','tab_jurusans','2022-01-09 07:19:14','2022-01-09 07:19:14'),(270,'delete_tab_jurusans','tab_jurusans','2022-01-09 07:19:14','2022-01-09 07:19:14'),(271,'browse_tab_ekskuls','tab_ekskuls','2022-01-09 09:09:48','2022-01-09 09:09:48'),(272,'read_tab_ekskuls','tab_ekskuls','2022-01-09 09:09:48','2022-01-09 09:09:48'),(273,'edit_tab_ekskuls','tab_ekskuls','2022-01-09 09:09:48','2022-01-09 09:09:48'),(274,'add_tab_ekskuls','tab_ekskuls','2022-01-09 09:09:48','2022-01-09 09:09:48'),(275,'delete_tab_ekskuls','tab_ekskuls','2022-01-09 09:09:48','2022-01-09 09:09:48'),(276,'browse_user_reference','user_reference','2022-01-26 05:41:33','2022-01-26 05:41:33'),(277,'read_user_reference','user_reference','2022-01-26 05:41:33','2022-01-26 05:41:33'),(278,'edit_user_reference','user_reference','2022-01-26 05:41:33','2022-01-26 05:41:33'),(279,'add_user_reference','user_reference','2022-01-26 05:41:33','2022-01-26 05:41:33'),(280,'delete_user_reference','user_reference','2022-01-26 05:41:33','2022-01-26 05:41:33');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int NOT NULL,
  `category_id` int DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `body` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (30,1,3,'Peringati 10 Muharram 1443 H, SMK Taruna Bhakti Berikan Santunan Kepada 133 Siswa Yatim, Piatu, dan Yatim Piatu',NULL,'SMK Taruna Bhakti melalui Pokja Kesiswaan menggalang partisipasi dengan Yayasan Setya Bhakti dengan seluruh guru SMK Taruna Bhakti memberikan santunan kepada 133 siswa yatim dan atau piatu dalam rangka memperingati 10 Muharram 1443 H.','<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: Lato, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 15px;\">SMK Taruna Bhakti melalui Pokja Kesiswaan menggalang partisipasi dengan Yayasan Setya Bhakti dengan seluruh guru SMK Taruna Bhakti memberikan santunan kepada 133 siswa yatim dan atau piatu dalam rangka memperingati 10 Muharram 1443 H.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: Lato, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 15px;\">Kegiatan ini dilaksanakan pada Sabtu, 28 Agustus 2021 bertempat di Mushola Roudhoutul &lsquo;Ilmi, sarana ibadah di SMK Taruna Bhakti. Siswa yang menerima santunan berasal dari seluruh kelas tingkat X, XI, dan XII yang saat ini berjumlah 37 rombel. Teknis penyaluran menerapkan protokol kesehatan ketat dengan membagi dua sesi, yakni pagi pukul 10.00 &ndash; 11.30 WIB dan siang pukul 14.30 &ndash; 16.00 WIB.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: Lato, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 15px;\">Tujuan diselenggarakannya kegiatan ini adalah sebagai bentuk aksi sosial, mempererat tali silaturahmi, dan edukasi kepada seluruh warga sekolah sebagai pembelajaran untuk berbagi kepada sesama. Tak hanya itu, diharapkan program ini dapat terlaksana secara berkelanjutan sebagai wujud kepedulian sekolah kepada seluruh peserta didiknya.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: Lato, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 15px;\"><img class=\"aligncenter size-full wp-image-10032\" style=\"box-sizing: border-box; vertical-align: middle; border: 0px none; height: auto; max-width: 100%; clear: both; display: block; margin-left: auto; margin-right: auto;\" src=\"https://smktarunabhakti.net/wp-content/uploads/2021/08/10-muharom-1.jpg\" sizes=\"(max-width: 1280px) 100vw, 1280px\" srcset=\"https://smktarunabhakti.net/wp-content/uploads/2021/08/10-muharom-1.jpg 1280w, https://smktarunabhakti.net/wp-content/uploads/2021/08/10-muharom-1-300x169.jpg 300w, https://smktarunabhakti.net/wp-content/uploads/2021/08/10-muharom-1-1024x576.jpg 1024w, https://smktarunabhakti.net/wp-content/uploads/2021/08/10-muharom-1-768x432.jpg 768w\" alt=\"\" width=\"1280\" height=\"720\" /></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: Lato, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 15px;\"><img class=\"aligncenter size-full wp-image-10033\" style=\"box-sizing: border-box; vertical-align: middle; border: 0px none; height: auto; max-width: 100%; clear: both; display: block; margin-left: auto; margin-right: auto;\" src=\"https://smktarunabhakti.net/wp-content/uploads/2021/08/10-Muharom-2.jpg\" sizes=\"(max-width: 1280px) 100vw, 1280px\" srcset=\"https://smktarunabhakti.net/wp-content/uploads/2021/08/10-Muharom-2.jpg 1280w, https://smktarunabhakti.net/wp-content/uploads/2021/08/10-Muharom-2-300x169.jpg 300w, https://smktarunabhakti.net/wp-content/uploads/2021/08/10-Muharom-2-1024x576.jpg 1024w, https://smktarunabhakti.net/wp-content/uploads/2021/08/10-Muharom-2-768x432.jpg 768w\" alt=\"\" width=\"1280\" height=\"720\" /></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: Lato, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 15px;\"><img class=\"aligncenter size-full wp-image-10034\" style=\"box-sizing: border-box; vertical-align: middle; border: 0px none; height: auto; max-width: 100%; clear: both; display: block; margin-left: auto; margin-right: auto;\" src=\"https://smktarunabhakti.net/wp-content/uploads/2021/08/10-Muharom-3.jpg\" sizes=\"(max-width: 1280px) 100vw, 1280px\" srcset=\"https://smktarunabhakti.net/wp-content/uploads/2021/08/10-Muharom-3.jpg 1280w, https://smktarunabhakti.net/wp-content/uploads/2021/08/10-Muharom-3-300x138.jpg 300w, https://smktarunabhakti.net/wp-content/uploads/2021/08/10-Muharom-3-1024x471.jpg 1024w, https://smktarunabhakti.net/wp-content/uploads/2021/08/10-Muharom-3-768x353.jpg 768w\" alt=\"\" width=\"1280\" height=\"589\" /></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: Lato, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 15px;\"><img class=\"aligncenter size-full wp-image-10035\" style=\"box-sizing: border-box; vertical-align: middle; border: 0px none; height: auto; max-width: 100%; clear: both; display: block; margin-left: auto; margin-right: auto;\" src=\"https://smktarunabhakti.net/wp-content/uploads/2021/08/10-Muharom.jpg\" sizes=\"(max-width: 1280px) 100vw, 1280px\" srcset=\"https://smktarunabhakti.net/wp-content/uploads/2021/08/10-Muharom.jpg 1280w, https://smktarunabhakti.net/wp-content/uploads/2021/08/10-Muharom-300x169.jpg 300w, https://smktarunabhakti.net/wp-content/uploads/2021/08/10-Muharom-1024x576.jpg 1024w, https://smktarunabhakti.net/wp-content/uploads/2021/08/10-Muharom-768x432.jpg 768w\" alt=\"\" width=\"1280\" height=\"720\" /></p>','posts\\October2021\\fRyMijdbsP4vOimiapgx.jpg','peringati-10-muharram-1443-h-smk-taruna-bhakti-berikan-santunan-kepada-133-siswa-yatim-piatu-dan-yatim-piatu',NULL,NULL,'PUBLISHED',1,'2021-10-08 04:13:02','2021-10-14 12:46:57'),(31,1,3,'SMK Taruna Bhakti Selenggarakan Gebyar Vaksinasi Pelajar Dosis Ke-1',NULL,'SMK Taruna Bhakti melalui Pokja Kesiswaan ditunjuk sebagai Pelaksana Kegiatan Gebyar Vaksinasi Pelajar Dosis Ke-1 pada Jumat, 3 September 2021.','<div class=\"entry-content\" style=\"box-sizing: border-box; margin: 1.5em 0px 0px; color: #212529; font-family: Lato, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 15px;\">\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\">SMK Taruna Bhakti melalui Pokja Kesiswaan ditunjuk sebagai Pelaksana Kegiatan Gebyar Vaksinasi Pelajar Dosis Ke-1 pada Jumat, 3 September 2021. Kegiatan ini merupakan kerjasama Musyawarah Kerja Kepala Sekolah (MKKS) Kota Depok dengan Rumah Sakit Bhayangkara Brimob Depok.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\">Peserta yang mengikuti program vaksinasi ini sebanyak 835 orang dengan rincian peserta dari SMK Taruna Bhakti sebanyak 488 orang, SMP dan SMK lain sebanyak 367 orang, dan warga lingkungan sekitar SMK Taruna Bhakti sebanyak 92 orang.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\">Jenis vaksin yang diberikan adalah Pfizer, salah satu jenis vaksin yang digunakan di Indonesia. Pelaksanaan kegiatan ini menerapkan protokol kesehatan secara ketat yang dijuga dikawal oleh Petugas Kesatuan Brimob Depok. Tujuan diselenggarakan program ini adalah sebagai bakti sekolah kepada negara dalam membantu proses percepatan vaksinasi untuk melawan pandemi Covid-19, khususnya untuk kalangan pelajar sebagai syarat pemberlakuan Pembelajaran Tatap Muka Terbatas (PTMT) SMK Taruna Bhakti Tahun Pelajaran 2021/2022.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><img class=\"aligncenter size-full wp-image-10039\" style=\"box-sizing: border-box; vertical-align: middle; border: 0px none; height: auto; max-width: 100%; clear: both; display: block; margin-left: auto; margin-right: auto;\" src=\"https://smktarunabhakti.net/wp-content/uploads/2021/09/Vaksin-1.jpg\" sizes=\"(max-width: 1280px) 100vw, 1280px\" srcset=\"https://smktarunabhakti.net/wp-content/uploads/2021/09/Vaksin-1.jpg 1280w, https://smktarunabhakti.net/wp-content/uploads/2021/09/Vaksin-1-300x169.jpg 300w, https://smktarunabhakti.net/wp-content/uploads/2021/09/Vaksin-1-1024x576.jpg 1024w, https://smktarunabhakti.net/wp-content/uploads/2021/09/Vaksin-1-768x432.jpg 768w\" alt=\"\" width=\"1280\" height=\"720\" /></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><img class=\"aligncenter size-full wp-image-10040\" style=\"box-sizing: border-box; vertical-align: middle; border: 0px none; height: auto; max-width: 100%; clear: both; display: block; margin-left: auto; margin-right: auto;\" src=\"https://smktarunabhakti.net/wp-content/uploads/2021/09/Vaksin-2.jpg\" sizes=\"(max-width: 1280px) 100vw, 1280px\" srcset=\"https://smktarunabhakti.net/wp-content/uploads/2021/09/Vaksin-2.jpg 1280w, https://smktarunabhakti.net/wp-content/uploads/2021/09/Vaksin-2-300x169.jpg 300w, https://smktarunabhakti.net/wp-content/uploads/2021/09/Vaksin-2-1024x575.jpg 1024w, https://smktarunabhakti.net/wp-content/uploads/2021/09/Vaksin-2-768x431.jpg 768w\" alt=\"\" width=\"1280\" height=\"719\" /></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><img class=\"aligncenter size-full wp-image-10041\" style=\"box-sizing: border-box; vertical-align: middle; border: 0px none; height: auto; max-width: 100%; clear: both; display: block; margin-left: auto; margin-right: auto;\" src=\"https://smktarunabhakti.net/wp-content/uploads/2021/09/Vaksin-3.jpg\" sizes=\"(max-width: 1280px) 100vw, 1280px\" srcset=\"https://smktarunabhakti.net/wp-content/uploads/2021/09/Vaksin-3.jpg 1280w, https://smktarunabhakti.net/wp-content/uploads/2021/09/Vaksin-3-300x169.jpg 300w, https://smktarunabhakti.net/wp-content/uploads/2021/09/Vaksin-3-1024x575.jpg 1024w, https://smktarunabhakti.net/wp-content/uploads/2021/09/Vaksin-3-768x431.jpg 768w\" alt=\"\" width=\"1280\" height=\"719\" /></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><img class=\"aligncenter size-full wp-image-10042\" style=\"box-sizing: border-box; vertical-align: middle; border: 0px none; height: auto; max-width: 100%; clear: both; display: block; margin-left: auto; margin-right: auto;\" src=\"https://smktarunabhakti.net/wp-content/uploads/2021/09/Vaksin-4.jpg\" sizes=\"(max-width: 1280px) 100vw, 1280px\" srcset=\"https://smktarunabhakti.net/wp-content/uploads/2021/09/Vaksin-4.jpg 1280w, https://smktarunabhakti.net/wp-content/uploads/2021/09/Vaksin-4-300x225.jpg 300w, https://smktarunabhakti.net/wp-content/uploads/2021/09/Vaksin-4-1024x768.jpg 1024w, https://smktarunabhakti.net/wp-content/uploads/2021/09/Vaksin-4-768x576.jpg 768w\" alt=\"\" width=\"1280\" height=\"960\" /></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><img class=\"aligncenter size-full wp-image-10043\" style=\"box-sizing: border-box; vertical-align: middle; border: 0px none; height: auto; max-width: 100%; clear: both; display: block; margin-left: auto; margin-right: auto;\" src=\"https://smktarunabhakti.net/wp-content/uploads/2021/09/vaksin-5.jpg\" sizes=\"(max-width: 1280px) 100vw, 1280px\" srcset=\"https://smktarunabhakti.net/wp-content/uploads/2021/09/vaksin-5.jpg 1280w, https://smktarunabhakti.net/wp-content/uploads/2021/09/vaksin-5-300x225.jpg 300w, https://smktarunabhakti.net/wp-content/uploads/2021/09/vaksin-5-1024x768.jpg 1024w, https://smktarunabhakti.net/wp-content/uploads/2021/09/vaksin-5-768x576.jpg 768w\" alt=\"\" width=\"1280\" height=\"960\" /></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><img class=\"aligncenter size-full wp-image-10044\" style=\"box-sizing: border-box; vertical-align: middle; border: 0px none; height: auto; max-width: 100%; clear: both; display: block; margin-left: auto; margin-right: auto;\" src=\"https://smktarunabhakti.net/wp-content/uploads/2021/09/Vaksin-6.jpg\" sizes=\"(max-width: 1280px) 100vw, 1280px\" srcset=\"https://smktarunabhakti.net/wp-content/uploads/2021/09/Vaksin-6.jpg 1280w, https://smktarunabhakti.net/wp-content/uploads/2021/09/Vaksin-6-300x222.jpg 300w, https://smktarunabhakti.net/wp-content/uploads/2021/09/Vaksin-6-1024x759.jpg 1024w, https://smktarunabhakti.net/wp-content/uploads/2021/09/Vaksin-6-768x569.jpg 768w\" alt=\"\" width=\"1280\" height=\"949\" /></p>\r\n<p>&nbsp;</p>\r\n</div>','posts\\October2021\\lJhPRF2DGuTCG3fGBhJR.jpg','smk-taruna-bhakti-selenggarakan-gebyar-vaksinasi-pelajar-dosis-ke-1',NULL,NULL,'PUBLISHED',1,'2021-10-08 04:14:01','2021-10-14 12:38:35'),(50,1,5,'test2','test2','test','<p>test</p>','posts/January2022/VSHbMbgRLY7PFEZm5jyy.png','test2','test','default','PUBLISHED',1,'2021-11-08 10:57:16','2022-01-07 10:26:39'),(52,1,4,'awdawd','awdawd','adwawdawd','<p>adwawdawd</p>','posts/January2022/uS5TAg19TwfpUiYUGzK3.png','awdawd','adwawdawd','default','PUBLISHED',1,'2021-11-08 11:05:35','2022-01-07 15:42:54'),(53,6,3,'lowdwl','dwakodoadk','awdwadawdll','<p>awdwadawdll</p>','posts/November2021/Screenshot from 2021-11-07 17-45-40.png','lowdwl','awdwadawdll','default','PUBLISHED',1,'2021-11-08 11:09:30','2021-11-08 11:09:30'),(54,6,7,'wodwad','awdadawd','awdwadawd','<p>awdwadawd</p>','posts/November2021/Screenshot from 2021-11-04 07-25-40.png','wodwad','awdwadawd','default','PUBLISHED',1,'2021-11-09 01:41:42','2021-11-09 01:41:42'),(55,6,5,'kwodkwodk','kawopdkpawod','awdawdawda','<p>awdawdawda</p>','posts/November2021/Screenshot from 2021-11-04 07-25-40.png','kwodkwodk','awdawdawda','default','PUBLISHED',1,'2021-11-09 01:42:14','2021-11-09 01:42:14');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prestasi_casis`
--

DROP TABLE IF EXISTS `prestasi_casis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prestasi_casis` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `jenis_prestasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tingkat_prestasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_prestasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tahun_prestasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `penyelenggara_prestasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `peringkat_prestasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prestasi_casis`
--

LOCK TABLES `prestasi_casis` WRITE;
/*!40000 ALTER TABLE `prestasi_casis` DISABLE KEYS */;
INSERT INTO `prestasi_casis` VALUES (15,NULL,NULL,NULL,NULL,NULL,NULL,'2021-11-22 21:59:02','2021-11-26 02:58:33'),(26,'Technology 4.0','Nasional','Creator Enginner','2018','KOMINFO','4','2021-11-25 16:34:32','2021-11-25 16:34:32'),(28,'Technology 4.0','Nasional','Creator Software','2019','Kominfo depok','4','2021-12-06 02:44:34','2021-12-06 02:44:34'),(29,'Technology 4.0','Nasional','Creator Software','2019','Kominfo depok','4','2021-12-06 02:45:39','2021-12-06 02:45:39'),(30,NULL,NULL,NULL,NULL,NULL,NULL,'2021-12-06 02:54:52','2021-12-06 02:54:52'),(31,NULL,NULL,NULL,NULL,NULL,NULL,'2022-01-06 18:10:18','2022-01-06 18:13:00'),(33,NULL,NULL,NULL,NULL,NULL,NULL,'2022-01-06 18:46:13','2022-01-06 18:46:13'),(34,'Technology 4.0','Nasional','Creator Enginner','2018','KOMINFO','4','2022-01-06 18:50:45','2022-02-17 15:05:31'),(35,NULL,NULL,NULL,NULL,NULL,NULL,'2022-02-26 01:35:27','2022-02-26 01:35:27'),(36,NULL,NULL,NULL,NULL,NULL,NULL,'2022-02-26 01:50:35','2022-02-26 01:50:35'),(37,NULL,NULL,NULL,NULL,NULL,NULL,'2022-02-26 01:57:00','2022-02-26 01:57:00'),(39,NULL,NULL,NULL,NULL,NULL,NULL,'2022-02-26 02:01:36','2022-02-26 02:01:36'),(40,NULL,NULL,NULL,NULL,NULL,NULL,'2022-02-26 02:08:34','2022-02-26 02:08:34'),(41,NULL,NULL,NULL,NULL,NULL,NULL,'2022-02-26 02:19:21','2022-02-26 02:19:21');
/*!40000 ALTER TABLE `prestasi_casis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Administrator','2021-09-21 07:32:55','2021-09-21 07:32:55'),(2,'user','Normal User','2021-09-21 07:32:56','2021-09-21 07:32:56'),(3,'siswa','Siswa','2021-09-23 20:57:35','2021-09-23 20:58:45'),(4,'guru','Guru','2021-09-23 20:58:28','2021-09-23 20:58:28'),(5,'manager','Manager',NULL,NULL),(6,'perusahaan','Perusahaan',NULL,NULL),(7,'casis','Calon Siswa','2021-11-07 10:47:37','2021-11-07 10:47:37');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` int unsigned NOT NULL,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '1',
  `group` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'site.title','Site Title','Site Title','','text',10,'Site'),(2,'site.description','Site Description','Site Description','','text',11,'Site'),(3,'site.logo','Site Logo','settings\\October2021\\kPm9a78D1EXFcXIgtmSz.png','','image',1,'Site'),(4,'site.google_analytics_tracking_id','Google Analytics Tracking ID',NULL,'','text',12,'Site'),(5,'admin.bg_image','Admin Background Image','settings/October2021/mxaxhTGZ741nEZaPuKXA.png','','image',5,'Admin'),(6,'admin.title','Admin Title','SMK Taruna Bhakti','','text',1,'Admin'),(7,'admin.description','Admin Description','Welcome to Page Admin SMK Taruna Bhakti','','text',2,'Admin'),(8,'admin.loader','Admin Loader','','','image',3,'Admin'),(9,'admin.icon_image','Admin Icon Image','settings/October2021/cWCmjpfhKB9xzkabkiFS.png','','image',4,'Admin'),(10,'admin.google_analytics_client_id','Google Analytics Client ID (used for admin dashboard)',NULL,'','text',1,'Admin'),(13,'site.fitur_home_page','Fitur Home Page','settings/October2021/DLpESG8ztdttleSD9CQz.png',NULL,'image',2,'Site'),(15,'site.virtual-tour','Virtual Tour','https://kuula.co/share/collection/7YQlT?fs=1&vr=1&sd=1&initload=0&thumbs=1&info=0&logo=1&logosize=40',NULL,'text',3,'Site'),(16,'site.heading','Heading','<h1>SMK Pusat</h1>\r\n<h1>Keunggulan</h1>',NULL,'rich_text_box',4,'Site'),(17,'site.sub_heading','Sub Heading','Our Quality Ask Be DIfferent',NULL,'text_area',8,'Site'),(23,'site.instagram','Link Instagram','https://instagram.com/starbhak.official?utm_medium=copy_link',NULL,'text',16,'Site'),(24,'site.facebook','Link Facebook','https://web.facebook.com/smktarunabhaktidepok',NULL,'text',17,'Site');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `siswas`
--

DROP TABLE IF EXISTS `siswas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `siswas` (
  `id` int unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kelas_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `nipd` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `siswas`
--

LOCK TABLES `siswas` WRITE;
/*!40000 ALTER TABLE `siswas` DISABLE KEYS */;
INSERT INTO `siswas` VALUES (3,'admin@admin.com','2','alifqi171@gmail.com',NULL,'2021-10-16 12:36:08','2021-10-16 12:36:08','2021-10-15 17:00:00',NULL);
/*!40000 ALTER TABLE `siswas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skills`
--

DROP TABLE IF EXISTS `skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skills` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `nama_skill` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skills`
--

LOCK TABLES `skills` WRITE;
/*!40000 ALTER TABLE `skills` DISABLE KEYS */;
INSERT INTO `skills` VALUES (1,'Laravel','2021-10-23 04:11:55','2021-10-23 04:11:55'),(2,'HTML','2021-10-23 04:12:03','2021-10-23 04:12:03'),(3,'CSS','2021-10-23 04:12:07','2021-10-23 04:12:07');
/*!40000 ALTER TABLE `skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tab_ekskuls`
--

DROP TABLE IF EXISTS `tab_ekskuls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tab_ekskuls` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `eskul` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tab_ekskuls`
--

LOCK TABLES `tab_ekskuls` WRITE;
/*!40000 ALTER TABLE `tab_ekskuls` DISABLE KEYS */;
INSERT INTO `tab_ekskuls` VALUES (1,'Volley','Volley','2022-01-09 09:10:00','2022-01-11 03:26:03','1');
/*!40000 ALTER TABLE `tab_ekskuls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tab_jurusans`
--

DROP TABLE IF EXISTS `tab_jurusans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tab_jurusans` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `jurusan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tab_jurusans`
--

LOCK TABLES `tab_jurusans` WRITE;
/*!40000 ALTER TABLE `tab_jurusans` DISABLE KEYS */;
INSERT INTO `tab_jurusans` VALUES (1,'TKJ','TKJ','2022-01-09 07:19:00','2022-01-10 04:45:40','1'),(2,'TKJ-2','TKJ-2','2022-01-09 09:04:00','2022-01-10 04:45:14','1');
/*!40000 ALTER TABLE `tab_jurusans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `translations` (
  `id` int unsigned NOT NULL,
  `table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int unsigned NOT NULL,
  `locale` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations`
--

LOCK TABLES `translations` WRITE;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
INSERT INTO `translations` VALUES (1,'data_types','display_name_singular',5,'pt','Post','2021-09-21 07:33:14','2021-09-21 07:33:14'),(2,'data_types','display_name_singular',6,'pt','Página','2021-09-21 07:33:14','2021-09-21 07:33:14'),(3,'data_types','display_name_singular',1,'pt','Utilizador','2021-09-21 07:33:14','2021-09-21 07:33:14'),(4,'data_types','display_name_singular',4,'pt','Categoria','2021-09-21 07:33:14','2021-09-21 07:33:14'),(5,'data_types','display_name_singular',2,'pt','Menu','2021-09-21 07:33:14','2021-09-21 07:33:14'),(6,'data_types','display_name_singular',3,'pt','Função','2021-09-21 07:33:14','2021-09-21 07:33:14'),(7,'data_types','display_name_plural',5,'pt','Posts','2021-09-21 07:33:14','2021-09-21 07:33:14'),(8,'data_types','display_name_plural',6,'pt','Páginas','2021-09-21 07:33:14','2021-09-21 07:33:14'),(9,'data_types','display_name_plural',1,'pt','Utilizadores','2021-09-21 07:33:14','2021-09-21 07:33:14'),(10,'data_types','display_name_plural',4,'pt','Categorias','2021-09-21 07:33:15','2021-09-21 07:33:15'),(11,'data_types','display_name_plural',2,'pt','Menus','2021-09-21 07:33:15','2021-09-21 07:33:15'),(12,'data_types','display_name_plural',3,'pt','Funções','2021-09-21 07:33:15','2021-09-21 07:33:15'),(13,'categories','slug',1,'pt','categoria-1','2021-09-21 07:33:15','2021-09-21 07:33:15'),(14,'categories','name',1,'pt','Categoria 1','2021-09-21 07:33:15','2021-09-21 07:33:15'),(15,'categories','slug',2,'pt','categoria-2','2021-09-21 07:33:15','2021-09-21 07:33:15'),(16,'categories','name',2,'pt','Categoria 2','2021-09-21 07:33:15','2021-09-21 07:33:15'),(17,'pages','title',1,'pt','Olá Mundo','2021-09-21 07:33:15','2021-09-21 07:33:15'),(18,'pages','slug',1,'pt','ola-mundo','2021-09-21 07:33:15','2021-09-21 07:33:15'),(19,'pages','body',1,'pt','<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>','2021-09-21 07:33:15','2021-09-21 07:33:15'),(20,'menu_items','title',1,'pt','Painel de Controle','2021-09-21 07:33:15','2021-09-21 07:33:15'),(21,'menu_items','title',2,'pt','Media','2021-09-21 07:33:15','2021-09-21 07:33:15'),(22,'menu_items','title',12,'pt','Publicações','2021-09-21 07:33:15','2021-09-21 07:33:15'),(23,'menu_items','title',3,'pt','Utilizadores','2021-09-21 07:33:15','2021-09-21 07:33:15'),(24,'menu_items','title',11,'pt','Categorias','2021-09-21 07:33:15','2021-09-21 07:33:15'),(25,'menu_items','title',13,'pt','Páginas','2021-09-21 07:33:15','2021-09-21 07:33:15'),(26,'menu_items','title',4,'pt','Funções','2021-09-21 07:33:15','2021-09-21 07:33:15'),(27,'menu_items','title',5,'pt','Ferramentas','2021-09-21 07:33:16','2021-09-21 07:33:16'),(28,'menu_items','title',6,'pt','Menus','2021-09-21 07:33:16','2021-09-21 07:33:16'),(29,'menu_items','title',7,'pt','Base de dados','2021-09-21 07:33:16','2021-09-21 07:33:16'),(30,'menu_items','title',10,'pt','Configurações','2021-09-21 07:33:16','2021-09-21 07:33:16');
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_reference`
--

DROP TABLE IF EXISTS `user_reference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_reference` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_hp` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipe_ref` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kelas` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sekolah` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ref_code` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_reference`
--

LOCK TABLES `user_reference` WRITE;
/*!40000 ALTER TABLE `user_reference` DISABLE KEYS */;
INSERT INTO `user_reference` VALUES (1,'Nur Firdaus Ramandani','08121311226','nurfirdaus.5000@gmail.com','wali_kelas','XI TKJ2','SMK Taruna Bhakti','NJ38EI2','2022-01-27 03:08:41','2022-01-27 03:08:41'),(2,'VIka','081232242','vika@gmail.com','wali_kelas','XII TEI 3','SMK Taruna Bhakti','IBDFG3R','2022-01-28 01:17:54','2022-01-28 01:17:54'),(3,'Siti','0823123','siti@gmail.com','wali_kelas','XII TEI 3','SMK Taruna Bhakti','J4VRG33','2022-02-03 17:34:30','2022-02-03 17:34:30'),(4,'DONI','08192929','doni@gmail.com','wali_kelas','XI TKJ2','SMK Taruna Bhakti','UOW3NQY','2022-02-26 01:29:02','2022-02-26 01:29:02'),(5,'Didit','072372381','didit@gmail.com','wali_kelas','XI TKJ1','SMK Taruna Bhakti','5EH9I0B','2022-02-26 01:32:37','2022-02-26 01:32:37'),(6,'SInar','087272727','sinar@gmail.com','wali_kelas','XI TKJ3','SMK Taruna Bhakti','QZBYCEF','2022-02-26 01:47:43','2022-02-26 01:47:43'),(7,'who','081243372','who@gmail.com','wali_kelas','XI TKJ1','SMK Taruna Bhakti','0T3T25B','2022-02-26 02:05:51','2022-02-26 02:05:51'),(8,'Ali','0812111111','ali@gmail.com','wali_kelas','XII BC 3','SMK Taruna Bhakti','I5Y097X','2022-02-26 02:16:24','2022-02-26 02:16:24');
/*!40000 ALTER TABLE `user_reference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_roles` (
  `user_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `user_roles_user_id_index` (`user_id`),
  KEY `user_roles_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `role_id` bigint unsigned DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `nomor_induk` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jabatan_guru` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kelas_siswa` int DEFAULT NULL,
  `spesifc_role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mapel_id` int DEFAULT NULL,
  `detail_user` int DEFAULT NULL,
  `calon_siswa_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `role_id` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=717 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,1,'Taruna','admin@admin.com','users/default.png',NULL,'$2y$10$Fo8k1RIU9Ej0B7oa4thUgexNlQk06ytDVR6fcbbS6hVBZlUQ6HIyC','seX35pQJPwhVw1zJpq9DdJFEMHUcT6bRjchXRmZUiuIWq1hhzZcUABkl6FZZ',NULL,'2021-08-19 18:52:57','2021-08-19 18:52:57',NULL,NULL,NULL,'',NULL,NULL,NULL),(2,1,'admin','admin@email.com','users/default.png',NULL,'$2y$10$R4YUok8EtOVF81IlFaCTZ.8l6i03Hgd6B1YUZaYQK/cVC0k8mUj76',NULL,'{\"locale\":\"id\"}','2021-10-04 19:09:29','2021-10-05 00:01:23','523235235',NULL,NULL,'kepsek',NULL,NULL,NULL),(3,3,'Ari Suhendra Tahyadi','32232@gmail.com','users/default.png',NULL,'$2y$10$qMNo101mY9bBwUaUBHidAuKh1NiuG0b4ATbUF.mhBYouy87Pv0UHC',NULL,'{\"locale\":\"id\"}','2021-10-04 19:21:41','2022-01-10 04:54:57','42342342342',NULL,2,'siswa',NULL,1,NULL),(4,4,'Joko','joko@gmail.com','users/default.png',NULL,'$2y$10$f3rsEQTIdKXvwalpXQOXJu2KaX8.Ve7Nwu03g65AVx77xNFeqgJsW',NULL,'{\"locale\":\"id\"}','2021-10-04 19:25:37','2022-01-27 04:58:49','12910100259',NULL,NULL,'tu',NULL,NULL,NULL),(5,1,'admin','admin@test.com','users/default.png',NULL,'$2y$10$INKBBk0I6VUlMaIN2ALde.BIxc4q0PAaeiRx5i68s0Rf41.qaddqm',NULL,NULL,'2021-10-04 23:28:44','2021-10-05 00:01:03','4324234234',NULL,NULL,'admin',NULL,NULL,NULL),(6,5,'THEBBB','Yuhnpa@gmail.com','users\\October2021\\E8czVAHwOuRA1hZJKfyk.jpg',NULL,'$2y$10$BNaBhza.bvWGNQyZknvOQuMztrlh1JXW1Q3q3izJoeM69Ne13j7Ky',NULL,NULL,'2021-10-04 23:43:46','2021-10-05 02:19:25','3423242342342','Kepala Program',NULL,'kaprog',NULL,NULL,NULL),(8,6,'PT.Telkom','telkom@gmail.com','user-img/1635051587 tb.png',NULL,'$2y$10$cgIafsOLGIJ5m.tI1sTAe.FzknGSfOUCyANsaGopSNjKeNIs2sMXK','','[]','2021-10-08 08:31:02','2021-10-24 04:59:47','9591','',NULL,'',NULL,2,NULL),(9,1,'admin','admin@gmail.com','user-img/1635496582 surat1.png',NULL,'$2y$10$8Fs6ZBjA60UToL.97tNZteZFYsBtWcCDmaxr9hI2GnyMV.xPiygGe','','[]','2021-10-08 08:31:02','2021-10-29 08:36:22','17928','',NULL,'admin',2,5,NULL),(35,3,'siswa27','siswa27@gmail.com','user-img/1635072733 WhatsApp Image 2021-01-13 at 19.03.40 (1).jpeg',NULL,'$2y$10$rbSM1hVmW5jzLSpFSl6qXO9TM/YyqKCwKR9pyRpdccDfyupwLLILy','','[]','2021-10-08 08:31:05','2021-10-24 10:52:13','943625','',3,'siswa',1,4,NULL),(36,5,'Panitia Johns','john@gmail.com','users/default.png',NULL,'$2y$10$khf4xz4pzELvMxec1CNcMeBwQoqubCHpmNP9ATiQ8/bivpV.mETzS','','{\"locale\":\"id\"}','2021-10-08 08:31:06','2021-12-30 00:15:21','145',NULL,NULL,'kaprog',NULL,NULL,NULL),(541,3,NULL,'email','users/default.png',NULL,'$2y$10$gOW3EPDx8ymVWBHeK8VfR.Q9WviGD7UWLZrgP27qYvp1dvNjm/yyW',NULL,NULL,'2021-11-03 09:44:08','2021-11-03 09:44:08',NULL,NULL,NULL,'siswa',NULL,NULL,NULL),(542,3,'joko','jokos@gmail.com','users/default.png',NULL,'$2y$10$o/40OIuRqs/a5VeO451fbes.xrhfsVG/38.5lQ/6cYvni5sOQGYji',NULL,NULL,'2021-11-03 09:44:09','2021-11-03 09:44:09','01237833333',NULL,NULL,'siswa',NULL,NULL,NULL),(543,3,'firstname','email@email.com','users/default.png',NULL,'$2y$10$QP46IlAO7COCp0vpWVAXbOEk63atn1Z2edJINyqTBAaicvhDqO1q2',NULL,NULL,'2021-11-03 09:44:09','2021-11-03 09:44:09','09922211',NULL,NULL,'siswa',NULL,NULL,NULL),(544,3,'Viola Yoza','taruna50@starbhak.com','users/default.png',NULL,'$2y$04$nkhdhj6J6xLbj6THb/ztPuFB5AsjiJrDyA4wvU1IbCeUMR3B1/TX6',NULL,NULL,'2021-11-03 10:18:51','2021-11-03 10:18:51','2122100330',NULL,47,'siswa',NULL,NULL,NULL),(545,3,NULL,'email','users/default.png',NULL,'$2y$10$gOW3EPDx8ymVWBHeK8VfR.Q9WviGD7UWLZrgP27qYvp1dvNjm/yyW',NULL,NULL,'2021-11-03 10:18:51','2021-11-03 10:18:51',NULL,NULL,48,'siswa',NULL,NULL,NULL),(546,3,'wdqwdwqdqwdqd','efnkwjefbjwkebf@gmail.com','users/default.png',NULL,'$2y$10$SpcY4LAl/SBvwYDmvQpkfeljHvphYeUHzTwopXH3RD3vcG96rjQmu',NULL,'{\"locale\":\"id\"}','2021-11-09 05:58:04','2021-11-09 05:58:04','23123123123',NULL,4,'siswa',NULL,NULL,NULL),(548,2,'Panitia Cahaya','panitia@gmail.com','user-img/1643341899 Screenshot from 2021-11-08 13-33-56.png',NULL,'$2y$10$UBPCl5U8XbydvPbnOaQeT.mF2C1U40bcmTyqLRtoLwtsG3XAyokRO',NULL,'{\"locale\":\"nl\"}','2021-11-09 06:56:40','2022-01-28 03:51:39','2738462378',NULL,NULL,'panitia',NULL,7,NULL),(549,7,'sVit Mineral','vit.500000@gmail.com','users/default.png',NULL,'$2y$10$uuqGho3ydX02TwRMS2g/r.POIK6MGTHM8FoauFU/tT4o/aLjQTZQa','',NULL,'2021-11-26 02:58:33','2021-11-26 02:58:33','9999999999',NULL,NULL,'casis',NULL,NULL,1),(550,7,'tribes','tribes@gmail.com','users/default.png',NULL,'$2y$10$T1d8rBJSHnlCVWf2ljyOfeiBikZV6McHBcpNxJlSnHOn03TCeWbnm','','[]','2021-11-25 16:41:47','2021-11-25 16:41:47','87878788878',NULL,NULL,'casis',NULL,NULL,3),(551,3,'adit','adit@gmail.com','users/default.png',NULL,'$2y$10$z9YmEtv0Ozhj3NeaFqKZTOULr.ncIxB3XboX/gtz.SIrDmN6SzfNi','','[]','2021-12-06 02:54:52','2022-02-20 14:04:13','81818181',NULL,53,'siswa',NULL,NULL,8),(552,5,'gua','gua@gmail.com','users/default.png',NULL,'$2y$10$PW5EbeHLiOKZ542uQ8DbZu2EXekCTITm6o.EusxPIZqktj1.Qg0D.',NULL,'{\"locale\":\"id\"}','2021-12-29 23:57:41','2021-12-30 00:16:13','242342423',NULL,NULL,'kaprog',NULL,NULL,NULL),(553,5,'noer','noer@gmail.com','users/default.png',NULL,'$2y$10$UEqNQFmlq6bm4zzJvrDyluQml4s5//5vTbJVnzaBjFBN6/F5GdZWC',NULL,'{\"locale\":\"id\"}','2021-12-30 00:19:22','2021-12-30 15:42:19','343242423',NULL,NULL,'panitia',NULL,NULL,NULL),(554,5,'low','low@gmail.com','users/default.png',NULL,'$2y$10$zMyu3o4iF/.Q9vqXczJ06.udFlN03gkAm7jQ3MKwFpS1.1eUhsKb6',NULL,'{\"locale\":\"id\"}','2021-12-30 04:28:28','2021-12-30 04:39:31','223412312',NULL,NULL,'kaprog',NULL,NULL,NULL),(555,7,'loke','loke@gmail.com','users/default.png',NULL,'$2y$10$jP4zzh/5jHSHwd9J4xeye..dAlbJrtOyXPZBx8C7YHiC74pDVLT9C','',NULL,'2022-01-06 18:13:00','2022-01-06 18:13:00','321321321',NULL,NULL,'casis',NULL,NULL,6),(556,3,'andro','andro@gmail.com','users/default.png',NULL,'$2y$10$rMM1TIaE3ppmlh4lwNuokeF9KbtG1ZLqPuN4BWXil9qcRkbpYsmZW','','[]','2022-01-06 18:38:45','2022-02-20 14:54:13','876876876',NULL,55,'siswa',NULL,NULL,5),(557,7,'android','android@gmail.com','users/default.png',NULL,'$2y$10$RjRqUKj98M3iNdjS8./mm.Ai27/07oXK24MggJEd84eV0Fhi/qL1W','','[]','2022-01-06 18:46:13','2022-01-06 18:46:13','987987987',NULL,NULL,'casis',NULL,NULL,10),(558,7,'Pantura Raya','pantura@gmail.com','users/default.png',NULL,'$2y$10$2EOeBAYGL4ZPX.uxTfR8nunUXmHnL15MJx13ukB9UiPiVeVysnFsa','',NULL,'2022-02-17 15:05:31','2022-02-17 15:05:31','23423423423',NULL,NULL,'casis',NULL,NULL,11),(559,3,NULL,'email','users/default.png',NULL,'$2y$10$gOW3EPDx8ymVWBHeK8VfR.Q9WviGD7UWLZrgP27qYvp1dvNjm/yyW',NULL,NULL,'2022-01-09 04:25:53','2022-01-09 04:25:53',NULL,NULL,48,'siswa',NULL,NULL,NULL),(560,3,NULL,'email','users/default.png',NULL,'$2y$10$gOW3EPDx8ymVWBHeK8VfR.Q9WviGD7UWLZrgP27qYvp1dvNjm/yyW',NULL,NULL,'2022-01-09 04:29:32','2022-01-09 04:29:32',NULL,NULL,48,'siswa',NULL,NULL,NULL),(562,3,'siswa2','email','users/default.png',NULL,'$2y$10$0EBCk5pLzSIJE/Ny6Vcl4eXRnpH9H9rYgncj8NPaM6bJTwT.ZjsI6',NULL,NULL,'2022-01-09 04:44:54','2022-01-09 04:44:54','75',NULL,18,'siswa',NULL,NULL,NULL),(563,4,'312314','312314@gmail.com','users/default.png',NULL,'$2y$10$jxcLg6lWm08KurSA492.cOBYyd/46s/aXd8a9nW8pyvunNpFruZKm',NULL,'{\"locale\":\"id\"}','2022-01-09 04:44:54','2022-01-27 05:31:17','312314',NULL,NULL,'kurikulum',2,NULL,NULL),(564,3,'Kukuh Pradypta','email','users/default.png',NULL,'$2y$10$w2blzsq/5s7St2MeIC/TTuDCKaRoV5mAi43C.f43YeRazXrQu3yQK',NULL,NULL,'2022-01-09 04:44:54','2022-01-09 04:44:54','2325231',NULL,2,'siswa',NULL,NULL,NULL),(565,3,'4324234','email','users/default.png',NULL,'$2y$10$7/VjpMn9qoIyf8U.K8RIae63XvETpWoaWVz6cTptzZx3EtS4cs8ze',NULL,NULL,'2022-01-09 04:44:54','2022-01-09 04:44:54','4324234',NULL,48,'siswa',NULL,NULL,NULL),(566,3,'siswa43','email','users/default.png',NULL,'$2y$10$LsMWbPLbWRxFYBm9chh8fusg7i/g2lA/zTWADzwKygidg68zRwja6',NULL,NULL,'2022-01-09 04:44:55','2022-01-09 04:44:55','23515379',NULL,9,'siswa',NULL,NULL,NULL),(567,3,'1920100259','email','users/default.png',NULL,'$2y$10$LF8F.pQyINY5pQid4cPk9ODY9ZCEsadGPVWDrnlxce2tqS0TBak8y',NULL,NULL,'2022-01-09 04:44:55','2022-01-09 04:44:55','1920100259',NULL,2,'siswa',NULL,NULL,NULL),(568,3,'1920100325','email','users/default.png',NULL,'$2y$10$c2yR3EWRQBWWrceltJ2aEOJhpn4sxjQTgjXOIrw1vfQj8n/hObiWW',NULL,NULL,'2022-01-09 04:44:55','2022-01-09 04:44:55','1920100325',NULL,48,'siswa',NULL,NULL,NULL),(569,3,'1920100373','email','users/default.png',NULL,'$2y$10$4HQbVfVMBPU4wKdu.I5aIuD39Lgs6vbshflmaQ.L4jV/nKcubvKBC',NULL,NULL,'2022-01-09 04:44:55','2022-01-09 04:44:55','1920100373',NULL,2,'siswa',NULL,NULL,NULL),(570,3,'siswa2','email','users/default.png',NULL,'$2y$10$0EBCk5pLzSIJE/Ny6Vcl4eXRnpH9H9rYgncj8NPaM6bJTwT.ZjsI6',NULL,NULL,'2022-01-09 04:44:56','2022-01-09 04:44:56','75',NULL,18,'siswa',NULL,NULL,NULL),(571,3,'312314','email','users/default.png',NULL,'$2y$10$0MiO/AXNP90GfABmowu.kOj.4.g8eVqhAHDXzNjCoy4QIDRrWbhA.',NULL,NULL,'2022-01-09 04:44:56','2022-01-09 04:44:56','312314',NULL,48,'siswa',NULL,NULL,NULL),(572,3,'Kukuh Pradypta','email','users/default.png',NULL,'$2y$10$w2blzsq/5s7St2MeIC/TTuDCKaRoV5mAi43C.f43YeRazXrQu3yQK',NULL,NULL,'2022-01-09 04:44:56','2022-01-09 04:44:56','2325231',NULL,2,'siswa',NULL,NULL,NULL),(573,3,'4324234','email','users/default.png',NULL,'$2y$10$7/VjpMn9qoIyf8U.K8RIae63XvETpWoaWVz6cTptzZx3EtS4cs8ze',NULL,NULL,'2022-01-09 04:44:56','2022-01-09 04:44:56','4324234',NULL,48,'siswa',NULL,NULL,NULL),(574,3,'siswa43','email','users/default.png',NULL,'$2y$10$LsMWbPLbWRxFYBm9chh8fusg7i/g2lA/zTWADzwKygidg68zRwja6',NULL,NULL,'2022-01-09 04:44:56','2022-01-09 04:44:56','23515379',NULL,9,'siswa',NULL,NULL,NULL),(711,7,'Alex','alex@gmail.com','users/default.png',NULL,'$2y$10$.KAsAdyFd0O1bVH5UY5Ee.Tcql1xXkJjjewmX0qAShkU12J68ERLm','','[]','2022-02-26 01:35:27','2022-02-26 01:35:27','712318929',NULL,NULL,'casis',NULL,NULL,12),(712,7,'Cozy','cozy@gmail.com','users/default.png',NULL,'$2y$10$lXDqxEPvcf1hQVDOAW3pMeX..imdSDRlcC19gEvIIqOTwIHEOXvTy','','[]','2022-02-26 01:50:35','2022-02-26 01:50:35','232288238823',NULL,NULL,'casis',NULL,NULL,13),(713,7,'Eko','eko@gmail.com','users/default.png',NULL,'$2y$10$gbcEmlc2r.gSnXuMqLhbiuN5iPM5c3I9v.biK4ueCx6rCr7JfLOZ6','','[]','2022-02-26 01:57:00','2022-02-26 01:57:00','242123',NULL,NULL,'casis',NULL,NULL,14),(714,7,'sasuke','sasuke@gmail.com','users/default.png',NULL,'$2y$10$d4V3au.X5GyyUptLgaj0huo1zlLdaHsQ0Jat1Ghrn2NWTkPPDuoXS','','[]','2022-02-26 02:01:36','2022-02-26 02:01:36','112112121',NULL,NULL,'casis',NULL,NULL,15),(715,7,'Messi','messi@gmail.com','users/default.png',NULL,'$2y$10$Wiklwwadhmgpv5OddFnqVOWNwi9uafeY1VjTSBHrzUNMv7ScAoIwm','','[]','2022-02-26 02:08:34','2022-02-26 02:08:34','23422300004',NULL,NULL,'casis',NULL,NULL,16),(716,3,'Naruto Uzumaki','naruto@gmail.com','users/default.png',NULL,'$2y$10$uQ5UeqQls.7W0rS2Un31zOAG0EE/VKJ3rznTWQAMmFgmRBY2uJqU2','','[]','2022-02-26 02:19:21','2022-02-26 02:30:22','22262373137',NULL,55,'siswa',NULL,NULL,17);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `videos`
--

DROP TABLE IF EXISTS `videos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `videos` (
  `id` int unsigned NOT NULL,
  `video` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `videos`
--

LOCK TABLES `videos` WRITE;
/*!40000 ALTER TABLE `videos` DISABLE KEYS */;
INSERT INTO `videos` VALUES (2,'videos/October2021/DF4hrxELH5xrWEpBwsvL.mp4','Video 1','Video 1 adalah','2021-10-17 03:54:00','2021-10-18 06:08:40'),(3,'videos/October2021/a4WKmqVlTuYTjwJHBK5A.mp4','Video 2','Video 2 adalah','2021-10-18 05:44:00','2021-10-18 06:08:28'),(4,'videos/October2021/oRKErsTkxGeZibFP6PSx.mp4','Bandicam','Bandicam adalah','2021-10-18 06:05:38','2021-10-18 06:05:38'),(5,'videos/October2021/hrbSDr5uB3fC0QOJ69nU.mp4','Video 4','Video 4 adalah','2021-10-18 06:09:40','2021-10-18 06:09:40');
/*!40000 ALTER TABLE `videos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-26 10:07:06
