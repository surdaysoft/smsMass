-- MySQL dump 10.13  Distrib 5.5.47, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: project_sms
-- ------------------------------------------------------
-- Server version	5.5.47-0ubuntu0.14.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `daftar_kontak`
--

DROP TABLE IF EXISTS `daftar_kontak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `daftar_kontak` (
  `id_kontak` int(3) NOT NULL AUTO_INCREMENT,
  `nama_kontak` varchar(50) NOT NULL,
  `kontak` varchar(13) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `id_grup` int(3) NOT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`id_kontak`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COMMENT='latin1_swedish_ci';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `daftar_kontak`
--

LOCK TABLES `daftar_kontak` WRITE;
/*!40000 ALTER TABLE `daftar_kontak` DISABLE KEYS */;
INSERT INTO `daftar_kontak` VALUES (1,'Iwan Setiawan','08123456','Ciamis',1,'12em@email.com'),(2,'Afika Aliyah','098712345','Bandung',2,'em2@email.com'),(3,'Afika','08812345','Kalapajajar',3,'e1m@email.com'),(4,'Asep','abcb','Ciamis',1,'em@email.com'),(5,'Ujang','98989898','Jakarta',4,'emamama@gma.com');
/*!40000 ALTER TABLE `daftar_kontak` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grup_kontak`
--

DROP TABLE IF EXISTS `grup_kontak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grup_kontak` (
  `id_grup` int(3) NOT NULL AUTO_INCREMENT,
  `nama_grup` varchar(50) NOT NULL,
  `ket` varchar(60) NOT NULL,
  PRIMARY KEY (`id_grup`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grup_kontak`
--

LOCK TABLES `grup_kontak` WRITE;
/*!40000 ALTER TABLE `grup_kontak` DISABLE KEYS */;
INSERT INTO `grup_kontak` VALUES (1,'Pemadam Kebakaran','Info Kebakaran'),(2,'PLN','Pemadaman Listrik Bergilir'),(3,'Polisi','kepolisian'),(4,'PDAM','Jadwal Pengaliran'),(5,'Telkom','Tagihan Internet'),(6,'Rumah Sakit','Info UGD'),(7,'Pemda','Acara Daerah'),(8,'BASARNAS','Info Bencana'),(9,'DCKKTR','Kebersihan Kota'),(10,'Bina Marga','Perbaikan Jalan');
/*!40000 ALTER TABLE `grup_kontak` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-02-12 11:37:36
