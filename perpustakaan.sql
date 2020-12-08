-- MySQL dump 10.17  Distrib 10.3.23-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: perpustakaan
-- ------------------------------------------------------
-- Server version	10.3.23-MariaDB-1-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `anggota`
--

DROP TABLE IF EXISTS `anggota`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `anggota` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `alamat` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anggota`
--

LOCK TABLES `anggota` WRITE;
/*!40000 ALTER TABLE `anggota` DISABLE KEYS */;
INSERT INTO `anggota` VALUES (1,'fannyhasbi','$2y$10$5R0201EoaIj2aNo4Egn3e.UqCkh2cXzw1aLYaeuBbmVfAiMfdg4nC','Fanny Hasbi',1,'Brebes'),(2,'example','$2y$10$eAkRJ8lPmvC.WSCF2t.6CeikVqD5cHxsN3g5fBzqFBSEVvAQ8sFLK','Example Member',0,'Semarang'),(3,'budi','$2y$10$eAkRJ8lPmvC.WSCF2t.6CeikVqD5cHxsN3g5fBzqFBSEVvAQ8sFLK','Budi',0,'Salatiga'),(4,'alice','$2y$10$eAkRJ8lPmvC.WSCF2t.6CeikVqD5cHxsN3g5fBzqFBSEVvAQ8sFLK','Alice ',0,'Jakarta'),(5,'admin','$2y$10$R4Md3rZLkY6FiYXukr0AxeBgtqhxebVnRidK/NeV/Am/qclPd8i7O','admin',0,'Jakarta');
/*!40000 ALTER TABLE `anggota` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buku`
--

DROP TABLE IF EXISTS `buku`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `buku` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `judul` varchar(100) NOT NULL,
  `pengarang` varchar(100) NOT NULL,
  `tahun` smallint(5) unsigned NOT NULL DEFAULT 0,
  `penerbit` varchar(100) NOT NULL,
  `kategori` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buku`
--

LOCK TABLES `buku` WRITE;
/*!40000 ALTER TABLE `buku` DISABLE KEYS */;
INSERT INTO `buku` VALUES (1,'Laskar Pelangi','Andrea Hirata',2008,'Bentang Pustaka',NULL),(2,'Bumi Manusia','Pramoedya Ananta Toer',2005,'Lentera Dipantara',NULL),(3,'5 cm','Donny Dhirgantoro',2005,'Grasindo',NULL),(4,'Sang Pemimpi','Andrea Hirata',2006,'Bentang Pustaka',NULL),(5,'Perahu Kertas','Dee Lestari',2009,'Bentang Pustaka',NULL);
/*!40000 ALTER TABLE `buku` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pinjam`
--

DROP TABLE IF EXISTS `pinjam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pinjam` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_anggota` int(11) NOT NULL,
  `id_buku` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `id_anggota` (`id_anggota`),
  KEY `id_buku` (`id_buku`),
  CONSTRAINT `pinjam_ibfk_1` FOREIGN KEY (`id_anggota`) REFERENCES `anggota` (`id`),
  CONSTRAINT `pinjam_ibfk_2` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pinjam`
--

LOCK TABLES `pinjam` WRITE;
/*!40000 ALTER TABLE `pinjam` DISABLE KEYS */;
/*!40000 ALTER TABLE `pinjam` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-08 10:20:47
