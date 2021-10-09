-- MySQL dump 10.13  Distrib 8.0.25, for macos11 (x86_64)
--
-- Host: localhost    Database: mcs-sso
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Current Database: `mcs-sso`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `mcs-sso` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `mcs-sso`;

--
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account` (
  `id` int NOT NULL AUTO_INCREMENT,
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `version` int NOT NULL,
  `username` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `actived` tinyint NOT NULL,
  `token` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tokenExp` timestamp NULL DEFAULT NULL,
  `code` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `codeExp` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDX_742864d1835007ca4f8d2f7c0f` (`username`,`type`),
  UNIQUE KEY `IDX_8770e2748b77098c167c385540` (`token`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (1,'2021-09-27 11:50:40.615281','2021-09-27 11:50:40.000000',2,'dungnguyen27384@gmail.com','4989b70968f474f1005cd1aff498b837','admin',1,'ZylFiFfQI6MVKbh9nUysJBadwJNRQiK4RNOFXaCPEwTUGwK8uJ5tv91Z4WCZvvGY9oSTWzmpnlDGdt4zcPrIvA','2021-10-27 04:50:41',NULL,NULL),(2,'2021-09-27 11:50:40.682147','2021-09-27 11:50:40.682147',1,'clinica@mailinator.com','96e79218965eb72c92a549dd5a330112','clinicuser',1,NULL,NULL,NULL,NULL),(3,'2021-09-27 11:50:40.709023','2021-09-27 11:50:40.709023',1,'doctora0@mailinator.com','96e79218965eb72c92a549dd5a330112','doctor',1,NULL,NULL,NULL,NULL),(4,'2021-09-27 11:50:40.759461','2021-09-27 11:50:40.759461',1,'clinicb@mailinator.com','96e79218965eb72c92a549dd5a330112','clinicuser',1,NULL,NULL,NULL,NULL),(5,'2021-09-27 11:50:40.784060','2021-09-27 11:50:40.784060',1,'doctorb0@mailinator.com','96e79218965eb72c92a549dd5a330112','doctor',1,NULL,NULL,NULL,NULL),(6,'2021-09-27 11:50:40.832326','2021-09-27 11:50:40.832326',1,'doctorb1@mailinator.com','96e79218965eb72c92a549dd5a330112','doctor',1,NULL,NULL,NULL,NULL),(7,'2021-09-27 11:50:40.877735','2021-09-27 11:50:40.877735',1,'clinicc@mailinator.com','96e79218965eb72c92a549dd5a330112','clinicuser',1,NULL,NULL,NULL,NULL),(8,'2021-09-27 11:50:40.899747','2021-09-27 11:50:40.899747',1,'doctorc0@mailinator.com','96e79218965eb72c92a549dd5a330112','doctor',1,NULL,NULL,NULL,NULL),(9,'2021-09-27 11:50:40.940649','2021-09-27 11:50:40.940649',1,'doctorc1@mailinator.com','96e79218965eb72c92a549dd5a330112','doctor',1,NULL,NULL,NULL,NULL),(10,'2021-09-27 11:50:40.982964','2021-09-27 11:50:40.982964',1,'doctorc2@mailinator.com','96e79218965eb72c92a549dd5a330112','doctor',1,NULL,NULL,NULL,NULL),(11,'2021-09-27 11:50:41.053305','2021-09-27 11:50:41.053305',1,'clinicd@mailinator.com','96e79218965eb72c92a549dd5a330112','clinicuser',1,NULL,NULL,NULL,NULL),(12,'2021-09-27 11:50:41.082781','2021-09-27 11:50:41.082781',1,'doctord0@mailinator.com','96e79218965eb72c92a549dd5a330112','doctor',1,NULL,NULL,NULL,NULL),(13,'2021-09-27 11:50:41.127131','2021-09-27 11:50:41.127131',1,'clinice@mailinator.com','96e79218965eb72c92a549dd5a330112','clinicuser',1,NULL,NULL,NULL,NULL),(14,'2021-09-27 11:50:41.147478','2021-09-27 11:50:41.147478',1,'doctore0@mailinator.com','96e79218965eb72c92a549dd5a330112','doctor',1,NULL,NULL,NULL,NULL),(15,'2021-09-27 11:50:41.187667','2021-09-27 11:50:41.187667',1,'doctore1@mailinator.com','96e79218965eb72c92a549dd5a330112','doctor',1,NULL,NULL,NULL,NULL),(16,'2021-09-27 11:50:41.225388','2021-09-27 11:50:41.225388',1,'clinicf@mailinator.com','96e79218965eb72c92a549dd5a330112','clinicuser',1,NULL,NULL,NULL,NULL),(17,'2021-09-27 11:50:41.246665','2021-09-27 11:50:41.246665',1,'doctorf0@mailinator.com','96e79218965eb72c92a549dd5a330112','doctor',1,NULL,NULL,NULL,NULL),(18,'2021-09-27 11:50:41.285398','2021-09-27 11:50:41.285398',1,'doctorf1@mailinator.com','96e79218965eb72c92a549dd5a330112','doctor',1,NULL,NULL,NULL,NULL),(19,'2021-09-27 11:50:41.325825','2021-09-27 11:50:41.325825',1,'doctorf2@mailinator.com','96e79218965eb72c92a549dd5a330112','doctor',1,NULL,NULL,NULL,NULL),(20,'2021-09-27 11:50:41.382830','2021-09-27 11:50:41.382830',1,'clinicg@mailinator.com','96e79218965eb72c92a549dd5a330112','clinicuser',1,NULL,NULL,NULL,NULL),(21,'2021-09-27 11:50:41.402217','2021-09-27 11:50:41.402217',1,'doctorg0@mailinator.com','96e79218965eb72c92a549dd5a330112','doctor',1,NULL,NULL,NULL,NULL),(22,'2021-09-27 11:50:41.440991','2021-09-27 11:50:41.440991',1,'clinich@mailinator.com','96e79218965eb72c92a549dd5a330112','clinicuser',1,NULL,NULL,NULL,NULL),(23,'2021-09-27 11:50:41.464420','2021-09-27 11:50:41.464420',1,'doctorh0@mailinator.com','96e79218965eb72c92a549dd5a330112','doctor',1,NULL,NULL,NULL,NULL),(24,'2021-09-27 11:50:41.503080','2021-09-27 11:50:41.503080',1,'doctorh1@mailinator.com','96e79218965eb72c92a549dd5a330112','doctor',1,NULL,NULL,NULL,NULL),(25,'2021-09-27 11:50:41.540950','2021-09-27 11:50:41.540950',1,'clinici@mailinator.com','96e79218965eb72c92a549dd5a330112','clinicuser',1,NULL,NULL,NULL,NULL),(26,'2021-09-27 11:50:41.563814','2021-09-27 11:50:41.563814',1,'doctori0@mailinator.com','96e79218965eb72c92a549dd5a330112','doctor',1,NULL,NULL,NULL,NULL),(27,'2021-09-27 11:50:41.603313','2021-09-27 11:50:41.603313',1,'doctori1@mailinator.com','96e79218965eb72c92a549dd5a330112','doctor',1,NULL,NULL,NULL,NULL),(28,'2021-09-27 11:50:41.645743','2021-09-27 11:50:41.645743',1,'doctori2@mailinator.com','96e79218965eb72c92a549dd5a330112','doctor',1,NULL,NULL,NULL,NULL),(29,'2021-09-27 11:50:41.703265','2021-09-27 11:50:41.703265',1,'clinicj@mailinator.com','96e79218965eb72c92a549dd5a330112','clinicuser',1,NULL,NULL,NULL,NULL),(30,'2021-09-27 11:50:41.722712','2021-09-27 11:50:41.722712',1,'doctorj0@mailinator.com','96e79218965eb72c92a549dd5a330112','doctor',1,NULL,NULL,NULL,NULL),(31,'2021-09-27 11:50:41.759802','2021-09-27 11:50:41.759802',1,'clinick@mailinator.com','96e79218965eb72c92a549dd5a330112','clinicuser',1,NULL,NULL,NULL,NULL),(32,'2021-09-27 11:50:41.781251','2021-09-27 11:50:41.781251',1,'doctork0@mailinator.com','96e79218965eb72c92a549dd5a330112','doctor',1,NULL,NULL,NULL,NULL),(33,'2021-09-27 11:50:41.818108','2021-09-27 11:50:41.818108',1,'doctork1@mailinator.com','96e79218965eb72c92a549dd5a330112','doctor',1,NULL,NULL,NULL,NULL),(34,'2021-09-27 11:50:41.860823','2021-09-27 11:50:41.860823',1,'clinicl@mailinator.com','96e79218965eb72c92a549dd5a330112','clinicuser',1,NULL,NULL,NULL,NULL),(35,'2021-09-27 11:50:41.882859','2021-09-27 11:50:41.882859',1,'doctorl0@mailinator.com','96e79218965eb72c92a549dd5a330112','doctor',1,NULL,NULL,NULL,NULL),(36,'2021-09-27 11:50:41.920276','2021-09-27 11:50:41.920276',1,'doctorl1@mailinator.com','96e79218965eb72c92a549dd5a330112','doctor',1,NULL,NULL,NULL,NULL),(37,'2021-09-27 11:50:41.957502','2021-09-27 11:50:41.957502',1,'doctorl2@mailinator.com','96e79218965eb72c92a549dd5a330112','doctor',1,NULL,NULL,NULL,NULL),(38,'2021-09-27 11:50:42.014558','2021-09-27 11:50:42.014558',1,'clinicm@mailinator.com','96e79218965eb72c92a549dd5a330112','clinicuser',1,NULL,NULL,NULL,NULL),(39,'2021-09-27 11:50:42.034652','2021-09-27 11:50:42.034652',1,'doctorm0@mailinator.com','96e79218965eb72c92a549dd5a330112','doctor',1,NULL,NULL,NULL,NULL),(40,'2021-09-27 11:50:42.072365','2021-09-27 11:50:42.072365',1,'clinicn@mailinator.com','96e79218965eb72c92a549dd5a330112','clinicuser',1,NULL,NULL,NULL,NULL),(41,'2021-09-27 11:50:42.092204','2021-09-27 11:50:42.092204',1,'doctorn0@mailinator.com','96e79218965eb72c92a549dd5a330112','doctor',1,NULL,NULL,NULL,NULL),(42,'2021-09-27 11:50:42.128891','2021-09-27 11:50:42.128891',1,'doctorn1@mailinator.com','96e79218965eb72c92a549dd5a330112','doctor',1,NULL,NULL,NULL,NULL),(43,'2021-09-27 11:50:42.166293','2021-09-27 11:50:42.166293',1,'clinico@mailinator.com','96e79218965eb72c92a549dd5a330112','clinicuser',1,NULL,NULL,NULL,NULL),(44,'2021-09-27 11:50:42.186589','2021-09-27 11:50:42.186589',1,'doctoro0@mailinator.com','96e79218965eb72c92a549dd5a330112','doctor',1,NULL,NULL,NULL,NULL),(45,'2021-09-27 11:50:42.223407','2021-09-27 11:50:42.223407',1,'doctoro1@mailinator.com','96e79218965eb72c92a549dd5a330112','doctor',1,NULL,NULL,NULL,NULL),(46,'2021-09-27 11:50:42.262933','2021-09-27 11:50:42.262933',1,'doctoro2@mailinator.com','96e79218965eb72c92a549dd5a330112','doctor',1,NULL,NULL,NULL,NULL),(47,'2021-09-27 11:50:42.321677','2021-09-27 11:50:42.321677',1,'clinicp@mailinator.com','96e79218965eb72c92a549dd5a330112','clinicuser',1,NULL,NULL,NULL,NULL),(48,'2021-09-27 11:50:42.340142','2021-09-27 11:50:42.340142',1,'doctorp0@mailinator.com','96e79218965eb72c92a549dd5a330112','doctor',1,NULL,NULL,NULL,NULL),(49,'2021-09-27 11:50:42.380020','2021-09-27 11:50:42.380020',1,'clinicq@mailinator.com','96e79218965eb72c92a549dd5a330112','clinicuser',1,NULL,NULL,NULL,NULL),(50,'2021-09-27 11:50:42.399875','2021-09-27 11:50:42.399875',1,'doctorq0@mailinator.com','96e79218965eb72c92a549dd5a330112','doctor',1,NULL,NULL,NULL,NULL),(51,'2021-09-27 11:50:42.437515','2021-09-27 11:50:42.437515',1,'doctorq1@mailinator.com','96e79218965eb72c92a549dd5a330112','doctor',1,NULL,NULL,NULL,NULL),(52,'2021-09-27 11:50:42.486870','2021-09-27 11:50:42.486870',1,'clinicr@mailinator.com','96e79218965eb72c92a549dd5a330112','clinicuser',1,NULL,NULL,NULL,NULL),(53,'2021-09-27 11:50:42.506926','2021-09-27 11:50:42.506926',1,'doctorr0@mailinator.com','96e79218965eb72c92a549dd5a330112','doctor',1,NULL,NULL,NULL,NULL),(54,'2021-09-27 11:50:42.543839','2021-09-27 11:50:42.543839',1,'doctorr1@mailinator.com','96e79218965eb72c92a549dd5a330112','doctor',1,NULL,NULL,NULL,NULL),(55,'2021-09-27 11:50:42.586994','2021-09-27 11:50:42.586994',1,'doctorr2@mailinator.com','96e79218965eb72c92a549dd5a330112','doctor',1,NULL,NULL,NULL,NULL),(56,'2021-09-27 11:50:42.644196','2021-09-27 11:50:42.644196',1,'clinics@mailinator.com','96e79218965eb72c92a549dd5a330112','clinicuser',1,NULL,NULL,NULL,NULL),(57,'2021-09-27 11:50:42.662428','2021-09-27 11:50:42.662428',1,'doctors0@mailinator.com','96e79218965eb72c92a549dd5a330112','doctor',1,NULL,NULL,NULL,NULL),(58,'2021-09-27 11:50:42.695907','2021-09-27 11:50:42.695907',1,'clinict@mailinator.com','96e79218965eb72c92a549dd5a330112','clinicuser',1,NULL,NULL,NULL,NULL),(59,'2021-09-27 11:50:42.712588','2021-09-27 11:50:42.712588',1,'doctort0@mailinator.com','96e79218965eb72c92a549dd5a330112','doctor',1,NULL,NULL,NULL,NULL),(60,'2021-09-27 11:50:42.743951','2021-09-27 11:50:42.743951',1,'doctort1@mailinator.com','96e79218965eb72c92a549dd5a330112','doctor',1,NULL,NULL,NULL,NULL),(61,'2021-09-27 11:50:42.778287','2021-09-27 11:50:42.778287',1,'clinicu@mailinator.com','96e79218965eb72c92a549dd5a330112','clinicuser',1,NULL,NULL,NULL,NULL),(62,'2021-09-27 11:50:42.795145','2021-09-27 11:50:42.795145',1,'doctoru0@mailinator.com','96e79218965eb72c92a549dd5a330112','doctor',1,NULL,NULL,NULL,NULL),(63,'2021-09-27 11:50:42.827674','2021-09-27 11:50:42.827674',1,'doctoru1@mailinator.com','96e79218965eb72c92a549dd5a330112','doctor',1,NULL,NULL,NULL,NULL),(64,'2021-09-27 11:50:42.864525','2021-09-27 11:50:42.864525',1,'doctoru2@mailinator.com','96e79218965eb72c92a549dd5a330112','doctor',1,NULL,NULL,NULL,NULL),(65,'2021-09-27 11:50:42.925734','2021-09-27 11:50:42.925734',1,'clinicv@mailinator.com','96e79218965eb72c92a549dd5a330112','clinicuser',1,NULL,NULL,NULL,NULL),(66,'2021-09-27 11:50:42.946521','2021-09-27 11:50:42.946521',1,'doctorv0@mailinator.com','96e79218965eb72c92a549dd5a330112','doctor',1,NULL,NULL,NULL,NULL),(67,'2021-09-27 11:50:42.982188','2021-09-27 11:50:42.982188',1,'clinicw@mailinator.com','96e79218965eb72c92a549dd5a330112','clinicuser',1,NULL,NULL,NULL,NULL),(68,'2021-09-27 11:50:43.000353','2021-09-27 11:50:43.000353',1,'doctorw0@mailinator.com','96e79218965eb72c92a549dd5a330112','doctor',1,NULL,NULL,NULL,NULL),(69,'2021-09-27 11:50:43.036680','2021-09-27 11:50:43.036680',1,'doctorw1@mailinator.com','96e79218965eb72c92a549dd5a330112','doctor',1,NULL,NULL,NULL,NULL),(70,'2021-09-27 11:50:43.072252','2021-09-27 11:50:43.072252',1,'clinicx@mailinator.com','96e79218965eb72c92a549dd5a330112','clinicuser',1,NULL,NULL,NULL,NULL),(71,'2021-09-27 11:50:43.098776','2021-09-27 11:50:43.098776',1,'doctorx0@mailinator.com','96e79218965eb72c92a549dd5a330112','doctor',1,NULL,NULL,NULL,NULL),(72,'2021-09-27 11:50:43.130737','2021-09-27 11:50:43.130737',1,'doctorx1@mailinator.com','96e79218965eb72c92a549dd5a330112','doctor',1,NULL,NULL,NULL,NULL),(73,'2021-09-27 11:50:43.162718','2021-09-27 11:50:43.162718',1,'doctorx2@mailinator.com','96e79218965eb72c92a549dd5a330112','doctor',1,NULL,NULL,NULL,NULL),(74,'2021-09-27 11:50:43.217973','2021-09-27 11:50:43.217973',1,'clinicy@mailinator.com','96e79218965eb72c92a549dd5a330112','clinicuser',1,NULL,NULL,NULL,NULL),(75,'2021-09-27 11:50:43.234308','2021-09-27 11:50:43.234308',1,'doctory0@mailinator.com','96e79218965eb72c92a549dd5a330112','doctor',1,NULL,NULL,NULL,NULL),(76,'2021-09-27 11:50:43.266285','2021-09-27 11:50:43.266285',1,'clinicz@mailinator.com','96e79218965eb72c92a549dd5a330112','clinicuser',1,NULL,NULL,NULL,NULL),(77,'2021-09-27 11:50:43.282444','2021-09-27 11:50:43.282444',1,'doctorz0@mailinator.com','96e79218965eb72c92a549dd5a330112','doctor',1,NULL,NULL,NULL,NULL),(78,'2021-09-27 11:50:43.314153','2021-09-27 11:50:43.314153',1,'doctorz1@mailinator.com','96e79218965eb72c92a549dd5a330112','doctor',1,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `mcs-message`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `mcs-message` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `mcs-message`;

--
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account` (
  `id` int NOT NULL AUTO_INCREMENT,
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `version` int NOT NULL,
  `username` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDX_41dfcb70af895ddf9a53094515` (`username`),
  UNIQUE KEY `IDX_8770e2748b77098c167c385540` (`token`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (1,'2021-09-27 10:47:11.865537','2021-09-27 10:47:11.865537',1,'admin@datchonhanh.com','0TnZF2TArcBp8r48MwNx1Fl0OMRS03KYbn6aUEMtn5hC9dXJiqa2wO9AvIdCJodHOBjiTF1KNXLpv897OnYQHF');
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `apns`
--

DROP TABLE IF EXISTS `apns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `apns` (
  `id` int NOT NULL AUTO_INCREMENT,
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `version` int NOT NULL,
  `appBundle` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `device` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `badge` int DEFAULT NULL,
  `sound` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isProduction` tinyint NOT NULL,
  `providerId` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_6729e182cd1f149ecf504c83079` (`providerId`),
  CONSTRAINT `FK_6729e182cd1f149ecf504c83079` FOREIGN KEY (`providerId`) REFERENCES `apns_provider` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apns`
--

LOCK TABLES `apns` WRITE;
/*!40000 ALTER TABLE `apns` DISABLE KEYS */;
/*!40000 ALTER TABLE `apns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `apns_provider`
--

DROP TABLE IF EXISTS `apns_provider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `apns_provider` (
  `id` int NOT NULL AUTO_INCREMENT,
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `version` int NOT NULL,
  `projectId` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `keyId` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `teamId` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `accountId` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDX_2a37e96cd736af5cd899fcfde7` (`projectId`,`accountId`),
  KEY `FK_983da69f524c5b34a9aef071e87` (`accountId`),
  CONSTRAINT `FK_983da69f524c5b34a9aef071e87` FOREIGN KEY (`accountId`) REFERENCES `account` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apns_provider`
--

LOCK TABLES `apns_provider` WRITE;
/*!40000 ALTER TABLE `apns_provider` DISABLE KEYS */;
INSERT INTO `apns_provider` VALUES (1,'2021-09-27 10:48:22.507075','2021-09-27 10:48:22.507075',1,'mcs-cloud273','-----BEGIN PRIVATE KEY-----\nMIGTAgEAMBMGByqGSM49AgEGCCqGSM49AwEHBHkwdwIBAQQgGBmHMCRDJsWtdNfA\nyRndSMx3xlz6GZNBgSzc8apzXiygCgYIKoZIzj0DAQehRANCAARU9LcezC7jTQbR\nn5y05I/OYuW/uUnTtnpvUZKfuXUZlhgOThBytLhlGUbZpno5BnaYnqTnE0HWmf87\nx1yPbgoM\n-----END PRIVATE KEY-----','6S7RN3SB6Q','99J65Q2669',1);
/*!40000 ALTER TABLE `apns_provider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email`
--

DROP TABLE IF EXISTS `email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email` (
  `id` int NOT NULL AUTO_INCREMENT,
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `version` int NOT NULL,
  `type` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `to` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `providerId` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_40a50185f628f1efdc9ec91231a` (`providerId`),
  CONSTRAINT `FK_40a50185f628f1efdc9ec91231a` FOREIGN KEY (`providerId`) REFERENCES `email_provider` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email`
--

LOCK TABLES `email` WRITE;
/*!40000 ALTER TABLE `email` DISABLE KEYS */;
/*!40000 ALTER TABLE `email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_provider`
--

DROP TABLE IF EXISTS `email_provider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_provider` (
  `id` int NOT NULL AUTO_INCREMENT,
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `version` int NOT NULL,
  `host` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `port` int NOT NULL,
  `secure` tinyint NOT NULL,
  `accountId` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDX_a30be0c181e4d4f43371e3d92f` (`sender`),
  KEY `FK_a52beb3a6bc970cb49b850d9836` (`accountId`),
  CONSTRAINT `FK_a52beb3a6bc970cb49b850d9836` FOREIGN KEY (`accountId`) REFERENCES `account` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_provider`
--

LOCK TABLES `email_provider` WRITE;
/*!40000 ALTER TABLE `email_provider` DISABLE KEYS */;
INSERT INTO `email_provider` VALUES (1,'2021-09-27 10:48:19.493908','2021-09-27 10:48:19.493908',1,'smtp.zoho.com','cskh@datchonhanh.com','W7FzS6PgFAuw',465,1,1);
/*!40000 ALTER TABLE `email_provider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fcm`
--

DROP TABLE IF EXISTS `fcm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fcm` (
  `id` int NOT NULL AUTO_INCREMENT,
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `version` int NOT NULL,
  `type` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `device` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `tag` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sound` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `providerId` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_b619d06a3596dd7d2e39cb07a81` (`providerId`),
  CONSTRAINT `FK_b619d06a3596dd7d2e39cb07a81` FOREIGN KEY (`providerId`) REFERENCES `fcm_provider` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fcm`
--

LOCK TABLES `fcm` WRITE;
/*!40000 ALTER TABLE `fcm` DISABLE KEYS */;
/*!40000 ALTER TABLE `fcm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fcm_provider`
--

DROP TABLE IF EXISTS `fcm_provider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fcm_provider` (
  `id` int NOT NULL AUTO_INCREMENT,
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `version` int NOT NULL,
  `projectId` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `clientEmail` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `privateKey` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `accountId` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDX_7fee4cb2a5fb120afc89b15ea9` (`projectId`,`accountId`),
  KEY `FK_d41a3cfc3b7bca97691786aaf75` (`accountId`),
  CONSTRAINT `FK_d41a3cfc3b7bca97691786aaf75` FOREIGN KEY (`accountId`) REFERENCES `account` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fcm_provider`
--

LOCK TABLES `fcm_provider` WRITE;
/*!40000 ALTER TABLE `fcm_provider` DISABLE KEYS */;
INSERT INTO `fcm_provider` VALUES (1,'2021-09-27 10:48:26.051071','2021-09-27 10:48:26.051071',1,'mcs-cloud273','firebase-adminsdk-imub2@mcs-cloud273.iam.gserviceaccount.com','-----BEGIN PRIVATE KEY-----\nMIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQDNcyMFFVLKCd3C\nVKCu8LVs/biaQ3JlQxTdBvibo7MB/7HT9nSxqxEDYDZvIfLufwI853Bj7kYXqs8o\n80JWYU8UU6YSwoVYW6hoyhCL9QcqRrG4fnjluIBhtzyznQaD4cEuNNmy8ewm125n\ney7af3x3WAKRuQi29aNpBnF/9ezigOGp8Ic4b7P49C9FsZOdmuEmI0xZB9X/7zOP\n6BzaWPcHHYqtJ9MN37B9UtDaLHfXeg3qw60GxkgzPqzGAJt/7XgLL/OrGbdimudC\nZuHLpi5/kWlyCVfBG7pcW3+ChzxhoPwtgHoshBw+//ITar+Kf02vvzdIr+6+by4i\n4r64cCOhAgMBAAECggEABWFI6wu41zj4y1toWYpswtPWVSZT4SBXhBX4FcnMsM5F\nhayiF8q4M2WeKUz7GckeSbJhFmHViK5AtmSf4aeS0MBDxKEeyS59x5A2jJa0G0Se\nh+t6bqAVLxHjg1vW4UZctuE8C/BDQA1jSw8ODhtZat3lc9PTzUg7kS8RsvFRhKkh\nr22RjQDNNzARht3wZDq9MMYyti0JH77LJG7M6ENS7MvlmzoEbBC8m0/LmH3gYP68\n1zj+2bVlZ0PEhZCt0PkJLK7fHu74fDjxu7rqho3WrXt0M638QJhHtt5DrAfMoWo0\nDgWRRGL6jtC6APPCc8COfOxvtp2KMXxnARuAXjFlAQKBgQDzUFFlHa/yNiTnonPd\nRNmaC7rlg8VmhxGcjb2G0fILq18GcyKV99WrV4tH7pCE6GXQYMBpDeIxjURg9zxR\nzjc2+mWWKUvUuWrOaW1nBieaF7tQ8s68BAxffb5nnF9R8MFWOsx5iCqFKNwddRIg\nqt61EG6BthREBY2vsntOR7Y4IQKBgQDYKWvSmL5J3A0f4BtMxERTBnkl3Hw4oTMn\nhxVc4fwbFV0Rhq8BuT4LcVQ0Yh4sU6W9pvnKskBN2o/U2kT0GId++/S/tQxjt90L\njg+HEEj8DE1dfsNIwuHLQ5p8emVPxyBykqFQPT0BPaVJ4mlN65ZhMNb8jNr2E3oJ\nwqjyO+Z7gQKBgQDcE5Prz/RrMsoise/2/eWMzntYSd3tJNKrNhFttswl/fXPkaiA\n2VBs0Jxsjb4uWT5uQnUHEMW9aDenNTlcDRgoJEhqkCPE34lZ9kY8X3bGjByj1Vtk\n+Ixwev4UHX6iUQ+u/TQh4SYEl7aw9klVPvh98cTikly2QgesGdYqMfcBwQKBgQDN\n3Uz5yUxYrUC2ncmCJ91mMOEKBN0tVaCRQZ4/0l02Mfdr7JgZjSEg5rKqHNPdpWBQ\nqYh12aNSQhf/QEyxJ/dLIYvrU/LTuVTEX2w8Vm8b1F+N7l7vmeJOojir2ilIfD1T\nwH/vGhNSbjJPllhxxC94qnnlFgSmnM/6IbCi2hdcgQKBgHqZU9HUEMCBbc3WOr/a\nuleGy5+LPoV/9PHj9F0Uep2cJ+U+XaA/2Apj0wxU2kBH0HSAQ6pig21ytE2XdMUL\ndIQWfjZTtu61WvE+n6H7JC+G/8R8kfSVjuCXFZmgUUgKjn/fzUeqfSKOxVfON0ng\nPG3kfZkcq0sxXLTlNm7iysgh\n-----END PRIVATE KEY-----\n',1);
/*!40000 ALTER TABLE `fcm_provider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms`
--

DROP TABLE IF EXISTS `sms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sms` (
  `id` int NOT NULL AUTO_INCREMENT,
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `version` int NOT NULL,
  `type` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `accountId` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_1eb799569ad207d5a3b21dd62f6` (`accountId`),
  CONSTRAINT `FK_1eb799569ad207d5a3b21dd62f6` FOREIGN KEY (`accountId`) REFERENCES `account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms`
--

LOCK TABLES `sms` WRITE;
/*!40000 ALTER TABLE `sms` DISABLE KEYS */;
/*!40000 ALTER TABLE `sms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `mcs-server`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `mcs-server` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `mcs-server`;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `version` int NOT NULL,
  `deactivated` tinyint NOT NULL DEFAULT '0',
  `description` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sso` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` enum('vi','en') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDX_c894cc540ccfd6a27bc945cc67` (`sso`),
  UNIQUE KEY `IDX_5e568e001f9d1b91f67815c580` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'2021-09-27 11:50:40.625810','2021-09-27 11:50:40.625810',1,0,NULL,'dungnguyen27384@gmail.com','dungnguyen27384@gmail.com','vi');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_device`
--

DROP TABLE IF EXISTS `admin_device`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_device` (
  `id` int NOT NULL AUTO_INCREMENT,
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `version` int NOT NULL,
  `deactivated` tinyint NOT NULL DEFAULT '0',
  `description` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `info` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `os` enum('ios','android','mac','window','linux','chrome','safari','firefox','ie','edge') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic` enum('com.cloud273.patient','com.cloud273.doctor','com.cloud273.clinic','com.cloud273.admin') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `production` tinyint NOT NULL DEFAULT '1',
  `accountId` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDX_2bdfd89449db0ca06fa9cc869e` (`topic`,`accountId`),
  KEY `FK_deaa8c8f6badc8e62e12679e6b6` (`accountId`),
  CONSTRAINT `FK_deaa8c8f6badc8e62e12679e6b6` FOREIGN KEY (`accountId`) REFERENCES `admin` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_device`
--

LOCK TABLES `admin_device` WRITE;
/*!40000 ALTER TABLE `admin_device` DISABLE KEYS */;
INSERT INTO `admin_device` VALUES (1,'2021-09-27 11:50:40.662324','2021-09-27 11:50:40.662324',1,0,NULL,'iMac',NULL,'mac','com.cloud273.admin',1,1);
/*!40000 ALTER TABLE `admin_device` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `allergy`
--

DROP TABLE IF EXISTS `allergy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `allergy` (
  `id` int NOT NULL AUTO_INCREMENT,
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `version` int NOT NULL,
  `deactivated` tinyint NOT NULL DEFAULT '0',
  `description` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `patientId` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDX_9ce5705149140b65825ce3b5a6` (`name`,`patientId`),
  KEY `FK_bc3502f7acc8a5575b7185429fa` (`patientId`),
  CONSTRAINT `FK_bc3502f7acc8a5575b7185429fa` FOREIGN KEY (`patientId`) REFERENCES `patient` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `allergy`
--

LOCK TABLES `allergy` WRITE;
/*!40000 ALTER TABLE `allergy` DISABLE KEYS */;
/*!40000 ALTER TABLE `allergy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appointment`
--

DROP TABLE IF EXISTS `appointment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appointment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `version` int NOT NULL,
  `deactivated` tinyint NOT NULL DEFAULT '0',
  `description` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL,
  `begin` datetime NOT NULL,
  `specialty` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('classic','telemed') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `visitTime` int NOT NULL,
  `doctorBasic` json NOT NULL,
  `doctorDetail` json NOT NULL,
  `clinicBasic` json NOT NULL,
  `clinicDetail` json NOT NULL,
  `patientBasic` json NOT NULL,
  `patientDetail` json NOT NULL,
  `symptoms` json NOT NULL,
  `allergies` json DEFAULT NULL,
  `surgeries` json DEFAULT NULL,
  `medications` json DEFAULT NULL,
  `packageId` int NOT NULL,
  `scheduleId` int DEFAULT NULL,
  `workingDayId` int DEFAULT NULL,
  `patientId` int NOT NULL,
  `prescriptionId` int DEFAULT NULL,
  `priceAmount` double NOT NULL,
  `priceCurrency` enum('vnd','usd') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'vnd',
  `statusBy` enum('patient','clinic','doctor','system') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `statusValue` enum('created','accepted','rejected','cancelled','started','finished') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `statusDescription` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDX_3d5a1ea3fa382e2cf25e00f01e` (`code`),
  KEY `FK_285e936e8d786a4fa3e941679b8` (`packageId`),
  KEY `FK_2540d0c8faece706fb52349c84b` (`scheduleId`),
  KEY `FK_9a6d7b8b0c3163a26204e8f873d` (`workingDayId`),
  KEY `FK_5ce4c3130796367c93cd817948e` (`patientId`),
  CONSTRAINT `FK_2540d0c8faece706fb52349c84b` FOREIGN KEY (`scheduleId`) REFERENCES `schedule` (`id`),
  CONSTRAINT `FK_285e936e8d786a4fa3e941679b8` FOREIGN KEY (`packageId`) REFERENCES `package` (`id`),
  CONSTRAINT `FK_5ce4c3130796367c93cd817948e` FOREIGN KEY (`patientId`) REFERENCES `patient` (`id`),
  CONSTRAINT `FK_9a6d7b8b0c3163a26204e8f873d` FOREIGN KEY (`workingDayId`) REFERENCES `working_day` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment`
--

LOCK TABLES `appointment` WRITE;
/*!40000 ALTER TABLE `appointment` DISABLE KEYS */;
/*!40000 ALTER TABLE `appointment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appointment_status`
--

DROP TABLE IF EXISTS `appointment_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appointment_status` (
  `id` int NOT NULL AUTO_INCREMENT,
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `version` int NOT NULL,
  `deactivated` tinyint NOT NULL DEFAULT '0',
  `description` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `by` enum('patient','clinic','doctor','system') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` enum('created','accepted','rejected','cancelled','started','finished') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `appointmentId` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_ed9e0f45fbd073573e1a59e77cf` (`appointmentId`),
  CONSTRAINT `FK_ed9e0f45fbd073573e1a59e77cf` FOREIGN KEY (`appointmentId`) REFERENCES `appointment` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment_status`
--

LOCK TABLES `appointment_status` WRITE;
/*!40000 ALTER TABLE `appointment_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `appointment_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clinic`
--

DROP TABLE IF EXISTS `clinic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clinic` (
  `id` int NOT NULL AUTO_INCREMENT,
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `version` int NOT NULL,
  `deactivated` tinyint NOT NULL DEFAULT '0',
  `description` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `workPhone` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `addressCountry` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `addressState` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `addressCity` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `addressLine` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `addressLongitude` float DEFAULT NULL,
  `addressLatitude` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDX_050033b437380ba808c041fe73` (`email`),
  UNIQUE KEY `IDX_b3df084998059e1f2f31bfd1e8` (`phone`),
  UNIQUE KEY `IDX_0f623f990d919939a1f86b4724` (`workPhone`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clinic`
--

LOCK TABLES `clinic` WRITE;
/*!40000 ALTER TABLE `clinic` DISABLE KEYS */;
INSERT INTO `clinic` VALUES (1,'2021-09-27 11:50:40.685623','2021-09-27 11:50:40.685623',1,0,'Description for Clinic A','Clinic A','clinica@mailinator.com','+84933000010','+8418001010','clinic_0.jpg','VN','VNSGO','VNSGO001','0 Street Ward',10,10),(2,'2021-09-27 11:50:40.762853','2021-09-27 11:50:40.762853',1,0,'Description for Clinic B','Clinic B','clinicb@mailinator.com','+84933000011','+8418001011','clinic_1.jpg','VN','VNTG1','VNTG1CTH','1 Street Ward',10,10),(3,'2021-09-27 11:50:40.880886','2021-09-27 11:50:40.880886',1,0,'Description for Clinic C','Clinic C','clinicc@mailinator.com','+84933000012','+8418001012','clinic_2.jpg','VN','VNSGO','VNSGO003','2 Street Ward',10,10),(4,'2021-09-27 11:50:41.056739','2021-09-27 11:50:41.056739',1,0,'Description for Clinic D','Clinic D','clinicd@mailinator.com','+84933000013','+8418001013','clinic_3.jpg','VN','VNTG1','VNTG1TPD','3 Street Ward',10,10),(5,'2021-09-27 11:50:41.130338','2021-09-27 11:50:41.130338',1,0,'Description for Clinic E','Clinic E','clinice@mailinator.com','+84933000014','+8418001014','clinic_4.jpg','VN','VNSGO','VNSGO005','4 Street Ward',10,10),(6,'2021-09-27 11:50:41.228585','2021-09-27 11:50:41.228585',1,0,'Description for Clinic F','Clinic F','clinicf@mailinator.com','+84933000015','+8418001015','clinic_5.jpg','VN','VNTG1','VNTG1CLA','5 Street Ward',10,10),(7,'2021-09-27 11:50:41.385155','2021-09-27 11:50:41.385155',1,0,'Description for Clinic G','Clinic G','clinicg@mailinator.com','+84933000016','+8418001016','clinic_6.jpg','VN','VNSGO','VNSGO007','6 Street Ward',10,10),(8,'2021-09-27 11:50:41.444018','2021-09-27 11:50:41.444018',1,0,'Description for Clinic H','Clinic H','clinich@mailinator.com','+84933000017','+8418001017','clinic_7.jpg','VN','VNTG1','VNTG1CGA','7 Street Ward',10,10),(9,'2021-09-27 11:50:41.543899','2021-09-27 11:50:41.543899',1,0,'Description for Clinic I','Clinic I','clinici@mailinator.com','+84933000018','+8418001018','clinic_8.jpg','VN','VNSGO','VNSGO009','8 Street Ward',10,10),(10,'2021-09-27 11:50:41.705514','2021-09-27 11:50:41.705514',1,0,'Description for Clinic J','Clinic J','clinicj@mailinator.com','+84933000019','+8418001019','clinic_9.jpg','VN','VNTG1','VNTG1GCD','9 Street Ward',10,10),(11,'2021-09-27 11:50:41.763222','2021-09-27 11:50:41.763222',1,0,'Description for Clinic K','Clinic K','clinick@mailinator.com','+84933000020','+8418001020','clinic_10.jpg','VN','VNSGO','VNSGO011','10 Street Ward',10,10),(12,'2021-09-27 11:50:41.864725','2021-09-27 11:50:41.864725',1,0,'Description for Clinic L','Clinic L','clinicl@mailinator.com','+84933000021','+8418001021','clinic_11.jpg','VN','VNTG1','VNTG1MTH','11 Street Ward',10,10),(13,'2021-09-27 11:50:42.017768','2021-09-27 11:50:42.017768',1,0,'Description for Clinic M','Clinic M','clinicm@mailinator.com','+84933000022','+8418001022','clinic_12.jpg','VN','VNSGO','VNSGOTDU','12 Street Ward',10,10),(14,'2021-09-27 11:50:42.075052','2021-09-27 11:50:42.075052',1,0,'Description for Clinic N','Clinic N','clinicn@mailinator.com','+84933000023','+8418001023','clinic_13.jpg','VN','VNTG1','VNTG1TPH','13 Street Ward',10,10),(15,'2021-09-27 11:50:42.168546','2021-09-27 11:50:42.168546',1,0,'Description for Clinic O','Clinic O','clinico@mailinator.com','+84933000024','+8418001024','clinic_14.jpg','VN','VNSGO','VNSGOTBI','14 Street Ward',10,10),(16,'2021-09-27 11:50:42.324274','2021-09-27 11:50:42.324274',1,0,'Description for Clinic P','Clinic P','clinicp@mailinator.com','+84933000025','+8418001025','clinic_15.jpg','VN','VNTG1','VNTG1TCL','15 Street Ward',10,10),(17,'2021-09-27 11:50:42.382650','2021-09-27 11:50:42.382650',1,0,'Description for Clinic Q','Clinic Q','clinicq@mailinator.com','+84933000026','+8418001026','clinic_16.jpg','VN','VNSGO','VNSGOPNH','16 Street Ward',10,10),(18,'2021-09-27 11:50:42.489911','2021-09-27 11:50:42.489911',1,0,'Description for Clinic R','Clinic R','clinicr@mailinator.com','+84933000027','+8418001027','clinic_17.jpg','VN','VNTG1','VNTG1CBE','17 Street Ward',10,10),(19,'2021-09-27 11:50:42.646666','2021-09-27 11:50:42.646666',1,0,'Description for Clinic S','Clinic S','clinics@mailinator.com','+84933000028','+8418001028','clinic_18.jpg','VN','VNSGO','VNSGOBTA','18 Street Ward',10,10),(20,'2021-09-27 11:50:42.697982','2021-09-27 11:50:42.697982',1,0,'Description for Clinic T','Clinic T','clinict@mailinator.com','+84933000029','+8418001029','clinic_19.jpg','VN','VNTG1','VNTG1GCO','19 Street Ward',10,10),(21,'2021-09-27 11:50:42.780485','2021-09-27 11:50:42.780485',1,0,'Description for Clinic U','Clinic U','clinicu@mailinator.com','+84933000030','+8418001030','clinic_20.jpg','VN','VNSGO','VNSGOHMO','20 Street Ward',10,10),(22,'2021-09-27 11:50:42.929414','2021-09-27 11:50:42.929414',1,0,'Description for Clinic V','Clinic V','clinicv@mailinator.com','+84933000031','+8418001031','clinic_21.jpg','VN','VNTG1','VNTG1GCT','21 Street Ward',10,10),(23,'2021-09-27 11:50:42.984183','2021-09-27 11:50:42.984183',1,0,'Description for Clinic W','Clinic W','clinicw@mailinator.com','+84933000032','+8418001032','clinic_22.jpg','VN','VNSGO','VNSGOBCH','22 Street Ward',10,10),(24,'2021-09-27 11:50:43.076228','2021-09-27 11:50:43.076228',1,0,'Description for Clinic X','Clinic X','clinicx@mailinator.com','+84933000033','+8418001033','clinic_23.jpg','VN','VNTG1','VNTG1CTH','23 Street Ward',10,10),(25,'2021-09-27 11:50:43.219852','2021-09-27 11:50:43.219852',1,0,'Description for Clinic Y','Clinic Y','clinicy@mailinator.com','+84933000034','+8418001034','clinic_24.jpg','VN','VNSGO','VNSGO001','24 Street Ward',10,10),(26,'2021-09-27 11:50:43.268305','2021-09-27 11:50:43.268305',1,0,'Description for Clinic Z','Clinic Z','clinicz@mailinator.com','+84933000035','+8418001035','clinic_25.jpg','VN','VNTG1','VNTG1TPD','25 Street Ward',10,10);
/*!40000 ALTER TABLE `clinic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clinic_cert`
--

DROP TABLE IF EXISTS `clinic_cert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clinic_cert` (
  `id` int NOT NULL AUTO_INCREMENT,
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `version` int NOT NULL,
  `deactivated` tinyint NOT NULL DEFAULT '0',
  `description` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `issuer` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `issueDate` date NOT NULL,
  `expDate` date DEFAULT NULL,
  `image` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('working','other') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `clinicId` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_0c3e11c5f99e3cf499ef7852ece` (`clinicId`),
  CONSTRAINT `FK_0c3e11c5f99e3cf499ef7852ece` FOREIGN KEY (`clinicId`) REFERENCES `clinic` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clinic_cert`
--

LOCK TABLES `clinic_cert` WRITE;
/*!40000 ALTER TABLE `clinic_cert` DISABLE KEYS */;
INSERT INTO `clinic_cert` VALUES (1,'2021-09-27 11:50:40.698169','2021-09-27 11:50:40.698169',1,0,'Description for Clinic A working certificate','10000','Clinic A working certificate','Ministry of health','2019-11-19',NULL,'clinic_cert_0.jpg','working',1),(2,'2021-09-27 11:50:40.772769','2021-09-27 11:50:40.772769',1,0,'Description for Clinic B working certificate','10001','Clinic B working certificate','Ministry of health','2016-10-02',NULL,'clinic_cert_1.jpg','working',2),(3,'2021-09-27 11:50:40.889304','2021-09-27 11:50:40.889304',1,0,'Description for Clinic C working certificate','10002','Clinic C working certificate','Ministry of health','2018-11-22',NULL,'clinic_cert_2.jpg','working',3),(4,'2021-09-27 11:50:41.071798','2021-09-27 11:50:41.071798',1,0,'Description for Clinic D working certificate','10003','Clinic D working certificate','Ministry of health','2006-01-24',NULL,'clinic_cert_3.jpg','working',4),(5,'2021-09-27 11:50:41.138094','2021-09-27 11:50:41.138094',1,0,'Description for Clinic E working certificate','10004','Clinic E working certificate','Ministry of health','2000-10-08',NULL,'clinic_cert_4.jpg','working',5),(6,'2021-09-27 11:50:41.236799','2021-09-27 11:50:41.236799',1,0,'Description for Clinic F working certificate','10005','Clinic F working certificate','Ministry of health','2004-03-17',NULL,'clinic_cert_5.jpg','working',6),(7,'2021-09-27 11:50:41.393414','2021-09-27 11:50:41.393414',1,0,'Description for Clinic G working certificate','10006','Clinic G working certificate','Ministry of health','2018-01-20',NULL,'clinic_cert_6.jpg','working',7),(8,'2021-09-27 11:50:41.454490','2021-09-27 11:50:41.454490',1,0,'Description for Clinic H working certificate','10007','Clinic H working certificate','Ministry of health','2010-04-25',NULL,'clinic_cert_7.jpg','working',8),(9,'2021-09-27 11:50:41.552351','2021-09-27 11:50:41.552351',1,0,'Description for Clinic I working certificate','10008','Clinic I working certificate','Ministry of health','2016-04-02',NULL,'clinic_cert_8.jpg','working',9),(10,'2021-09-27 11:50:41.714482','2021-09-27 11:50:41.714482',1,0,'Description for Clinic J working certificate','10009','Clinic J working certificate','Ministry of health','2002-01-15',NULL,'clinic_cert_9.jpg','working',10),(11,'2021-09-27 11:50:41.770647','2021-09-27 11:50:41.770647',1,0,'Description for Clinic K working certificate','100010','Clinic K working certificate','Ministry of health','2020-05-17',NULL,'clinic_cert_10.jpg','working',11),(12,'2021-09-27 11:50:41.872992','2021-09-27 11:50:41.872992',1,0,'Description for Clinic L working certificate','100011','Clinic L working certificate','Ministry of health','2014-10-08',NULL,'clinic_cert_11.jpg','working',12),(13,'2021-09-27 11:50:42.025866','2021-09-27 11:50:42.025866',1,0,'Description for Clinic M working certificate','100012','Clinic M working certificate','Ministry of health','2008-03-09',NULL,'clinic_cert_12.jpg','working',13),(14,'2021-09-27 11:50:42.083815','2021-09-27 11:50:42.083815',1,0,'Description for Clinic N working certificate','100013','Clinic N working certificate','Ministry of health','2000-11-21',NULL,'clinic_cert_13.jpg','working',14),(15,'2021-09-27 11:50:42.178555','2021-09-27 11:50:42.178555',1,0,'Description for Clinic O working certificate','100014','Clinic O working certificate','Ministry of health','2015-05-30',NULL,'clinic_cert_14.jpg','working',15),(16,'2021-09-27 11:50:42.332868','2021-09-27 11:50:42.332868',1,0,'Description for Clinic P working certificate','100015','Clinic P working certificate','Ministry of health','2002-05-22',NULL,'clinic_cert_15.jpg','working',16),(17,'2021-09-27 11:50:42.390713','2021-09-27 11:50:42.390713',1,0,'Description for Clinic Q working certificate','100016','Clinic Q working certificate','Ministry of health','2011-09-16',NULL,'clinic_cert_16.jpg','working',17),(18,'2021-09-27 11:50:42.499548','2021-09-27 11:50:42.499548',1,0,'Description for Clinic R working certificate','100017','Clinic R working certificate','Ministry of health','2001-06-19',NULL,'clinic_cert_17.jpg','working',18),(19,'2021-09-27 11:50:42.653835','2021-09-27 11:50:42.653835',1,0,'Description for Clinic S working certificate','100018','Clinic S working certificate','Ministry of health','2010-12-12',NULL,'clinic_cert_18.jpg','working',19),(20,'2021-09-27 11:50:42.704545','2021-09-27 11:50:42.704545',1,0,'Description for Clinic T working certificate','100019','Clinic T working certificate','Ministry of health','2015-06-30',NULL,'clinic_cert_19.jpg','working',20),(21,'2021-09-27 11:50:42.787106','2021-09-27 11:50:42.787106',1,0,'Description for Clinic U working certificate','100020','Clinic U working certificate','Ministry of health','2010-02-02',NULL,'clinic_cert_20.jpg','working',21),(22,'2021-09-27 11:50:42.936953','2021-09-27 11:50:42.936953',1,0,'Description for Clinic V working certificate','100021','Clinic V working certificate','Ministry of health','2018-06-07',NULL,'clinic_cert_21.jpg','working',22),(23,'2021-09-27 11:50:42.992040','2021-09-27 11:50:42.992040',1,0,'Description for Clinic W working certificate','100022','Clinic W working certificate','Ministry of health','2003-05-31',NULL,'clinic_cert_22.jpg','working',23),(24,'2021-09-27 11:50:43.088743','2021-09-27 11:50:43.088743',1,0,'Description for Clinic X working certificate','100023','Clinic X working certificate','Ministry of health','2012-02-08',NULL,'clinic_cert_23.jpg','working',24),(25,'2021-09-27 11:50:43.227621','2021-09-27 11:50:43.227621',1,0,'Description for Clinic Y working certificate','100024','Clinic Y working certificate','Ministry of health','2017-02-10',NULL,'clinic_cert_24.jpg','working',25),(26,'2021-09-27 11:50:43.275602','2021-09-27 11:50:43.275602',1,0,'Description for Clinic Z working certificate','100025','Clinic Z working certificate','Ministry of health','2005-07-21',NULL,'clinic_cert_25.jpg','working',26);
/*!40000 ALTER TABLE `clinic_cert` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clinic_user`
--

DROP TABLE IF EXISTS `clinic_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clinic_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `version` int NOT NULL,
  `deactivated` tinyint NOT NULL DEFAULT '0',
  `description` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sso` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` enum('vi','en') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `clinicId` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDX_5fa7e19573487d61a0a70a8450` (`sso`),
  UNIQUE KEY `IDX_5e77a42e7e7db112d11fa50149` (`username`),
  KEY `FK_d3c6c5c946ef7d3c334a5443fb4` (`clinicId`),
  CONSTRAINT `FK_d3c6c5c946ef7d3c334a5443fb4` FOREIGN KEY (`clinicId`) REFERENCES `clinic` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clinic_user`
--

LOCK TABLES `clinic_user` WRITE;
/*!40000 ALTER TABLE `clinic_user` DISABLE KEYS */;
INSERT INTO `clinic_user` VALUES (1,'2021-09-27 11:50:40.687617','2021-09-27 11:50:40.687617',1,0,NULL,'clinica@mailinator.com','clinica@mailinator.com','vi',1),(2,'2021-09-27 11:50:40.764531','2021-09-27 11:50:40.764531',1,0,NULL,'clinicb@mailinator.com','clinicb@mailinator.com','vi',2),(3,'2021-09-27 11:50:40.882136','2021-09-27 11:50:40.882136',1,0,NULL,'clinicc@mailinator.com','clinicc@mailinator.com','vi',3),(4,'2021-09-27 11:50:41.058858','2021-09-27 11:50:41.058858',1,0,NULL,'clinicd@mailinator.com','clinicd@mailinator.com','vi',4),(5,'2021-09-27 11:50:41.131519','2021-09-27 11:50:41.131519',1,0,NULL,'clinice@mailinator.com','clinice@mailinator.com','vi',5),(6,'2021-09-27 11:50:41.229813','2021-09-27 11:50:41.229813',1,0,NULL,'clinicf@mailinator.com','clinicf@mailinator.com','vi',6),(7,'2021-09-27 11:50:41.386139','2021-09-27 11:50:41.386139',1,0,NULL,'clinicg@mailinator.com','clinicg@mailinator.com','vi',7),(8,'2021-09-27 11:50:41.445365','2021-09-27 11:50:41.445365',1,0,NULL,'clinich@mailinator.com','clinich@mailinator.com','vi',8),(9,'2021-09-27 11:50:41.545368','2021-09-27 11:50:41.545368',1,0,NULL,'clinici@mailinator.com','clinici@mailinator.com','vi',9),(10,'2021-09-27 11:50:41.706521','2021-09-27 11:50:41.706521',1,0,NULL,'clinicj@mailinator.com','clinicj@mailinator.com','vi',10),(11,'2021-09-27 11:50:41.764371','2021-09-27 11:50:41.764371',1,0,NULL,'clinick@mailinator.com','clinick@mailinator.com','vi',11),(12,'2021-09-27 11:50:41.865787','2021-09-27 11:50:41.865787',1,0,NULL,'clinicl@mailinator.com','clinicl@mailinator.com','vi',12),(13,'2021-09-27 11:50:42.018728','2021-09-27 11:50:42.018728',1,0,NULL,'clinicm@mailinator.com','clinicm@mailinator.com','vi',13),(14,'2021-09-27 11:50:42.076380','2021-09-27 11:50:42.076380',1,0,NULL,'clinicn@mailinator.com','clinicn@mailinator.com','vi',14),(15,'2021-09-27 11:50:42.170107','2021-09-27 11:50:42.170107',1,0,NULL,'clinico@mailinator.com','clinico@mailinator.com','vi',15),(16,'2021-09-27 11:50:42.325576','2021-09-27 11:50:42.325576',1,0,NULL,'clinicp@mailinator.com','clinicp@mailinator.com','vi',16),(17,'2021-09-27 11:50:42.383630','2021-09-27 11:50:42.383630',1,0,NULL,'clinicq@mailinator.com','clinicq@mailinator.com','vi',17),(18,'2021-09-27 11:50:42.491928','2021-09-27 11:50:42.491928',1,0,NULL,'clinicr@mailinator.com','clinicr@mailinator.com','vi',18),(19,'2021-09-27 11:50:42.647599','2021-09-27 11:50:42.647599',1,0,NULL,'clinics@mailinator.com','clinics@mailinator.com','vi',19),(20,'2021-09-27 11:50:42.698872','2021-09-27 11:50:42.698872',1,0,NULL,'clinict@mailinator.com','clinict@mailinator.com','vi',20),(21,'2021-09-27 11:50:42.781305','2021-09-27 11:50:42.781305',1,0,NULL,'clinicu@mailinator.com','clinicu@mailinator.com','vi',21),(22,'2021-09-27 11:50:42.930511','2021-09-27 11:50:42.930511',1,0,NULL,'clinicv@mailinator.com','clinicv@mailinator.com','vi',22),(23,'2021-09-27 11:50:42.984989','2021-09-27 11:50:42.984989',1,0,NULL,'clinicw@mailinator.com','clinicw@mailinator.com','vi',23),(24,'2021-09-27 11:50:43.078041','2021-09-27 11:50:43.078041',1,0,NULL,'clinicx@mailinator.com','clinicx@mailinator.com','vi',24),(25,'2021-09-27 11:50:43.220660','2021-09-27 11:50:43.220660',1,0,NULL,'clinicy@mailinator.com','clinicy@mailinator.com','vi',25),(26,'2021-09-27 11:50:43.269112','2021-09-27 11:50:43.269112',1,0,NULL,'clinicz@mailinator.com','clinicz@mailinator.com','vi',26);
/*!40000 ALTER TABLE `clinic_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clinic_user_device`
--

DROP TABLE IF EXISTS `clinic_user_device`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clinic_user_device` (
  `id` int NOT NULL AUTO_INCREMENT,
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `version` int NOT NULL,
  `deactivated` tinyint NOT NULL DEFAULT '0',
  `description` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `info` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `os` enum('ios','android','mac','window','linux','chrome','safari','firefox','ie','edge') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic` enum('com.cloud273.patient','com.cloud273.doctor','com.cloud273.clinic','com.cloud273.admin') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `production` tinyint NOT NULL DEFAULT '1',
  `accountId` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDX_484a38240003cce717d307826c` (`topic`,`accountId`),
  KEY `FK_a33910a64563f4e3837eb60013a` (`accountId`),
  CONSTRAINT `FK_a33910a64563f4e3837eb60013a` FOREIGN KEY (`accountId`) REFERENCES `clinic_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clinic_user_device`
--

LOCK TABLES `clinic_user_device` WRITE;
/*!40000 ALTER TABLE `clinic_user_device` DISABLE KEYS */;
/*!40000 ALTER TABLE `clinic_user_device` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctor` (
  `id` int NOT NULL AUTO_INCREMENT,
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `version` int NOT NULL,
  `deactivated` tinyint NOT NULL DEFAULT '0',
  `description` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sso` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` enum('vi','en') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `specialties` json NOT NULL,
  `title` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `office` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `biography` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `startWork` date NOT NULL,
  `timezone` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `clinicId` int NOT NULL,
  `favPatientId` int DEFAULT NULL,
  `profileFirstname` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `profileLastname` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `profileGender` enum('male','female','unknown') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `profileDob` date NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDX_e227b35060e6ed40954c1b7558` (`sso`),
  UNIQUE KEY `IDX_fdb6bf9a0b96d874a857220cec` (`username`),
  KEY `FK_b3b7adce2d51d8fc43d3c98b057` (`clinicId`),
  KEY `FK_ca3322fffe0385a4b232ef9d3d5` (`favPatientId`),
  CONSTRAINT `FK_b3b7adce2d51d8fc43d3c98b057` FOREIGN KEY (`clinicId`) REFERENCES `clinic` (`id`),
  CONSTRAINT `FK_ca3322fffe0385a4b232ef9d3d5` FOREIGN KEY (`favPatientId`) REFERENCES `patient` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor`
--

LOCK TABLES `doctor` WRITE;
/*!40000 ALTER TABLE `doctor` DISABLE KEYS */;
INSERT INTO `doctor` VALUES (1,'2021-09-27 11:50:40.712090','2021-09-27 11:50:40.712090',1,0,'Description for Doctor A0','doctora0@mailinator.com','doctora0@mailinator.com','vi','doctor_0.jpg','[\"primary\"]','Dr','CEO','Biography of Doctor A0','2014-02-20','+07:00',1,NULL,'Doctor A0','','male','1973-12-03'),(2,'2021-09-27 11:50:40.786805','2021-09-27 11:50:40.786805',1,0,'Description for Doctor B1','doctorb0@mailinator.com','doctorb0@mailinator.com','vi','doctor_1.jpg','[\"primary\"]','Dr','CEO','Biography of Doctor B1','2009-06-04','+07:00',2,NULL,'Doctor B1','','male','1979-01-31'),(3,'2021-09-27 11:50:40.834979','2021-09-27 11:50:40.834979',1,0,'Description for Doctor B1','doctorb1@mailinator.com','doctorb1@mailinator.com','vi','doctor_2.jpg','[\"cardiology\"]','Dr','CEO','Biography of Doctor B1','2006-12-23','+07:00',2,NULL,'Doctor B1','','female','1972-08-22'),(4,'2021-09-27 11:50:40.902773','2021-09-27 11:50:40.902773',1,0,'Description for Doctor C2','doctorc0@mailinator.com','doctorc0@mailinator.com','vi','doctor_3.jpg','[\"primary\"]','Dr','CEO','Biography of Doctor C2','2014-12-15','+07:00',3,NULL,'Doctor C2','','male','1967-09-16'),(5,'2021-09-27 11:50:40.944801','2021-09-27 11:50:40.944801',1,0,'Description for Doctor C2','doctorc1@mailinator.com','doctorc1@mailinator.com','vi','doctor_4.jpg','[\"cardiology\"]','Dr','CEO','Biography of Doctor C2','2015-10-02','+07:00',3,NULL,'Doctor C2','','female','1970-12-19'),(6,'2021-09-27 11:50:40.985472','2021-09-27 11:50:40.985472',1,0,'Description for Doctor C2','doctorc2@mailinator.com','doctorc2@mailinator.com','vi','doctor_5.jpg','[\"primary\", \"cardiology\"]','Dr','CEO','Biography of Doctor C2','2013-05-05','+07:00',3,NULL,'Doctor C2','','male','1972-11-11'),(7,'2021-09-27 11:50:41.086047','2021-09-27 11:50:41.086047',1,0,'Description for Doctor D3','doctord0@mailinator.com','doctord0@mailinator.com','vi','doctor_6.jpg','[\"primary\"]','Dr','CEO','Biography of Doctor D3','2006-10-29','+07:00',4,NULL,'Doctor D3','','male','1981-11-17'),(8,'2021-09-27 11:50:41.149988','2021-09-27 11:50:41.149988',1,0,'Description for Doctor E4','doctore0@mailinator.com','doctore0@mailinator.com','vi','doctor_7.jpg','[\"primary\"]','Dr','CEO','Biography of Doctor E4','2015-07-01','+07:00',5,NULL,'Doctor E4','','male','1976-07-26'),(9,'2021-09-27 11:50:41.190206','2021-09-27 11:50:41.190206',1,0,'Description for Doctor E4','doctore1@mailinator.com','doctore1@mailinator.com','vi','doctor_8.jpg','[\"cardiology\"]','Dr','CEO','Biography of Doctor E4','2016-01-24','+07:00',5,NULL,'Doctor E4','','female','1974-04-05'),(10,'2021-09-27 11:50:41.249201','2021-09-27 11:50:41.249201',1,0,'Description for Doctor F5','doctorf0@mailinator.com','doctorf0@mailinator.com','vi','doctor_9.jpg','[\"primary\"]','Dr','CEO','Biography of Doctor F5','2015-11-09','+07:00',6,NULL,'Doctor F5','','male','1976-11-15'),(11,'2021-09-27 11:50:41.287562','2021-09-27 11:50:41.287562',1,0,'Description for Doctor F5','doctorf1@mailinator.com','doctorf1@mailinator.com','vi','doctor_10.jpg','[\"cardiology\"]','Dr','CEO','Biography of Doctor F5','2013-04-22','+07:00',6,NULL,'Doctor F5','','female','1984-07-11'),(12,'2021-09-27 11:50:41.328902','2021-09-27 11:50:41.328902',1,0,'Description for Doctor F5','doctorf2@mailinator.com','doctorf2@mailinator.com','vi','doctor_11.jpg','[\"primary\", \"cardiology\"]','Dr','CEO','Biography of Doctor F5','2016-09-08','+07:00',6,NULL,'Doctor F5','','male','1983-05-27'),(13,'2021-09-27 11:50:41.404624','2021-09-27 11:50:41.404624',1,0,'Description for Doctor G6','doctorg0@mailinator.com','doctorg0@mailinator.com','vi','doctor_12.jpg','[\"primary\"]','Dr','CEO','Biography of Doctor G6','2010-08-28','+07:00',7,NULL,'Doctor G6','','male','1979-04-07'),(14,'2021-09-27 11:50:41.466821','2021-09-27 11:50:41.466821',1,0,'Description for Doctor H7','doctorh0@mailinator.com','doctorh0@mailinator.com','vi','doctor_13.jpg','[\"primary\"]','Dr','CEO','Biography of Doctor H7','2015-08-06','+07:00',8,NULL,'Doctor H7','','male','1970-08-28'),(15,'2021-09-27 11:50:41.505366','2021-09-27 11:50:41.505366',1,0,'Description for Doctor H7','doctorh1@mailinator.com','doctorh1@mailinator.com','vi','doctor_14.jpg','[\"cardiology\"]','Dr','CEO','Biography of Doctor H7','2008-11-13','+07:00',8,NULL,'Doctor H7','','female','1981-05-02'),(16,'2021-09-27 11:50:41.566304','2021-09-27 11:50:41.566304',1,0,'Description for Doctor I8','doctori0@mailinator.com','doctori0@mailinator.com','vi','doctor_15.jpg','[\"primary\"]','Dr','CEO','Biography of Doctor I8','2008-02-17','+07:00',9,NULL,'Doctor I8','','male','1973-12-07'),(17,'2021-09-27 11:50:41.606586','2021-09-27 11:50:41.606586',1,0,'Description for Doctor I8','doctori1@mailinator.com','doctori1@mailinator.com','vi','doctor_16.jpg','[\"cardiology\"]','Dr','CEO','Biography of Doctor I8','2016-03-02','+07:00',9,NULL,'Doctor I8','','female','1985-01-18'),(18,'2021-09-27 11:50:41.648599','2021-09-27 11:50:41.648599',1,0,'Description for Doctor I8','doctori2@mailinator.com','doctori2@mailinator.com','vi','doctor_17.jpg','[\"primary\", \"cardiology\"]','Dr','CEO','Biography of Doctor I8','2007-04-09','+07:00',9,NULL,'Doctor I8','','male','1981-06-11'),(19,'2021-09-27 11:50:41.725386','2021-09-27 11:50:41.725386',1,0,'Description for Doctor J9','doctorj0@mailinator.com','doctorj0@mailinator.com','vi','doctor_18.jpg','[\"primary\"]','Dr','CEO','Biography of Doctor J9','2016-05-15','+07:00',10,NULL,'Doctor J9','','male','1981-06-11'),(20,'2021-09-27 11:50:41.783601','2021-09-27 11:50:41.783601',1,0,'Description for Doctor K10','doctork0@mailinator.com','doctork0@mailinator.com','vi','doctor_19.jpg','[\"primary\"]','Dr','CEO','Biography of Doctor K10','2011-03-29','+07:00',11,NULL,'Doctor K10','','male','1977-10-05'),(21,'2021-09-27 11:50:41.820323','2021-09-27 11:50:41.820323',1,0,'Description for Doctor K10','doctork1@mailinator.com','doctork1@mailinator.com','vi','doctor_20.jpg','[\"cardiology\"]','Dr','CEO','Biography of Doctor K10','2015-11-01','+07:00',11,NULL,'Doctor K10','','female','1968-05-30'),(22,'2021-09-27 11:50:41.885094','2021-09-27 11:50:41.885094',1,0,'Description for Doctor L11','doctorl0@mailinator.com','doctorl0@mailinator.com','vi','doctor_21.jpg','[\"primary\"]','Dr','CEO','Biography of Doctor L11','2014-08-19','+07:00',12,NULL,'Doctor L11','','male','1970-07-13'),(23,'2021-09-27 11:50:41.922507','2021-09-27 11:50:41.922507',1,0,'Description for Doctor L11','doctorl1@mailinator.com','doctorl1@mailinator.com','vi','doctor_22.jpg','[\"cardiology\"]','Dr','CEO','Biography of Doctor L11','2008-01-11','+07:00',12,NULL,'Doctor L11','','female','1972-11-20'),(24,'2021-09-27 11:50:41.960502','2021-09-27 11:50:41.960502',1,0,'Description for Doctor L11','doctorl2@mailinator.com','doctorl2@mailinator.com','vi','doctor_23.jpg','[\"primary\", \"cardiology\"]','Dr','CEO','Biography of Doctor L11','2010-02-01','+07:00',12,NULL,'Doctor L11','','male','1982-01-29'),(25,'2021-09-27 11:50:42.036838','2021-09-27 11:50:42.036838',1,0,'Description for Doctor M12','doctorm0@mailinator.com','doctorm0@mailinator.com','vi','doctor_24.jpg','[\"primary\"]','Dr','CEO','Biography of Doctor M12','2009-03-09','+07:00',13,NULL,'Doctor M12','','male','1970-06-29'),(26,'2021-09-27 11:50:42.095064','2021-09-27 11:50:42.095064',1,0,'Description for Doctor N13','doctorn0@mailinator.com','doctorn0@mailinator.com','vi','doctor_25.jpg','[\"primary\"]','Dr','CEO','Biography of Doctor N13','2010-08-15','+07:00',14,NULL,'Doctor N13','','male','1969-06-04'),(27,'2021-09-27 11:50:42.131604','2021-09-27 11:50:42.131604',1,0,'Description for Doctor N13','doctorn1@mailinator.com','doctorn1@mailinator.com','vi','doctor_26.jpg','[\"cardiology\"]','Dr','CEO','Biography of Doctor N13','2009-08-31','+07:00',14,NULL,'Doctor N13','','female','1976-12-12'),(28,'2021-09-27 11:50:42.188730','2021-09-27 11:50:42.188730',1,0,'Description for Doctor O14','doctoro0@mailinator.com','doctoro0@mailinator.com','vi','doctor_27.jpg','[\"primary\"]','Dr','CEO','Biography of Doctor O14','2007-06-08','+07:00',15,NULL,'Doctor O14','','male','1984-02-11'),(29,'2021-09-27 11:50:42.226431','2021-09-27 11:50:42.226431',1,0,'Description for Doctor O14','doctoro1@mailinator.com','doctoro1@mailinator.com','vi','doctor_28.jpg','[\"cardiology\"]','Dr','CEO','Biography of Doctor O14','2013-03-27','+07:00',15,NULL,'Doctor O14','','female','1978-08-07'),(30,'2021-09-27 11:50:42.265393','2021-09-27 11:50:42.265393',1,0,'Description for Doctor O14','doctoro2@mailinator.com','doctoro2@mailinator.com','vi','doctor_29.jpg','[\"primary\", \"cardiology\"]','Dr','CEO','Biography of Doctor O14','2011-04-23','+07:00',15,NULL,'Doctor O14','','male','1986-07-22'),(31,'2021-09-27 11:50:42.343338','2021-09-27 11:50:42.343338',1,0,'Description for Doctor P15','doctorp0@mailinator.com','doctorp0@mailinator.com','vi','doctor_30.jpg','[\"primary\"]','Dr','CEO','Biography of Doctor P15','2009-03-03','+07:00',16,NULL,'Doctor P15','','male','1967-03-18'),(32,'2021-09-27 11:50:42.402034','2021-09-27 11:50:42.402034',1,0,'Description for Doctor Q16','doctorq0@mailinator.com','doctorq0@mailinator.com','vi','doctor_31.jpg','[\"primary\"]','Dr','CEO','Biography of Doctor Q16','2013-10-15','+07:00',17,NULL,'Doctor Q16','','male','1980-07-21'),(33,'2021-09-27 11:50:42.441627','2021-09-27 11:50:42.441627',1,0,'Description for Doctor Q16','doctorq1@mailinator.com','doctorq1@mailinator.com','vi','doctor_32.jpg','[\"cardiology\"]','Dr','CEO','Biography of Doctor Q16','2010-12-31','+07:00',17,NULL,'Doctor Q16','','female','1973-04-17'),(34,'2021-09-27 11:50:42.510093','2021-09-27 11:50:42.510093',1,0,'Description for Doctor R17','doctorr0@mailinator.com','doctorr0@mailinator.com','vi','doctor_33.jpg','[\"primary\"]','Dr','CEO','Biography of Doctor R17','2012-08-27','+07:00',18,NULL,'Doctor R17','','male','1975-08-19'),(35,'2021-09-27 11:50:42.546566','2021-09-27 11:50:42.546566',1,0,'Description for Doctor R17','doctorr1@mailinator.com','doctorr1@mailinator.com','vi','doctor_34.jpg','[\"cardiology\"]','Dr','CEO','Biography of Doctor R17','2013-12-24','+07:00',18,NULL,'Doctor R17','','female','1978-10-17'),(36,'2021-09-27 11:50:42.589554','2021-09-27 11:50:42.589554',1,0,'Description for Doctor R17','doctorr2@mailinator.com','doctorr2@mailinator.com','vi','doctor_35.jpg','[\"primary\", \"cardiology\"]','Dr','CEO','Biography of Doctor R17','2016-03-07','+07:00',18,NULL,'Doctor R17','','male','1971-09-02'),(37,'2021-09-27 11:50:42.664582','2021-09-27 11:50:42.664582',1,0,'Description for Doctor S18','doctors0@mailinator.com','doctors0@mailinator.com','vi','doctor_36.jpg','[\"primary\"]','Dr','CEO','Biography of Doctor S18','2011-03-18','+07:00',19,NULL,'Doctor S18','','male','1982-10-01'),(38,'2021-09-27 11:50:42.714576','2021-09-27 11:50:42.714576',1,0,'Description for Doctor T19','doctort0@mailinator.com','doctort0@mailinator.com','vi','doctor_37.jpg','[\"primary\"]','Dr','CEO','Biography of Doctor T19','2009-05-02','+07:00',20,NULL,'Doctor T19','','male','1983-08-31'),(39,'2021-09-27 11:50:42.746167','2021-09-27 11:50:42.746167',1,0,'Description for Doctor T19','doctort1@mailinator.com','doctort1@mailinator.com','vi','doctor_38.jpg','[\"cardiology\"]','Dr','CEO','Biography of Doctor T19','2007-10-31','+07:00',20,NULL,'Doctor T19','','female','1974-02-02'),(40,'2021-09-27 11:50:42.797166','2021-09-27 11:50:42.797166',1,0,'Description for Doctor U20','doctoru0@mailinator.com','doctoru0@mailinator.com','vi','doctor_39.jpg','[\"primary\"]','Dr','CEO','Biography of Doctor U20','2014-07-29','+07:00',21,NULL,'Doctor U20','','male','1968-04-25'),(41,'2021-09-27 11:50:42.829783','2021-09-27 11:50:42.829783',1,0,'Description for Doctor U20','doctoru1@mailinator.com','doctoru1@mailinator.com','vi','doctor_40.jpg','[\"cardiology\"]','Dr','CEO','Biography of Doctor U20','2016-05-15','+07:00',21,NULL,'Doctor U20','','female','1969-12-20'),(42,'2021-09-27 11:50:42.866565','2021-09-27 11:50:42.866565',1,0,'Description for Doctor U20','doctoru2@mailinator.com','doctoru2@mailinator.com','vi','doctor_41.jpg','[\"primary\", \"cardiology\"]','Dr','CEO','Biography of Doctor U20','2007-06-11','+07:00',21,NULL,'Doctor U20','','male','1976-05-25'),(43,'2021-09-27 11:50:42.948679','2021-09-27 11:50:42.948679',1,0,'Description for Doctor V21','doctorv0@mailinator.com','doctorv0@mailinator.com','vi','doctor_42.jpg','[\"primary\"]','Dr','CEO','Biography of Doctor V21','2010-10-21','+07:00',22,NULL,'Doctor V21','','male','1970-03-20'),(44,'2021-09-27 11:50:43.002385','2021-09-27 11:50:43.002385',1,0,'Description for Doctor W22','doctorw0@mailinator.com','doctorw0@mailinator.com','vi','doctor_43.jpg','[\"primary\"]','Dr','CEO','Biography of Doctor W22','2011-05-10','+07:00',23,NULL,'Doctor W22','','male','1968-02-24'),(45,'2021-09-27 11:50:43.038565','2021-09-27 11:50:43.038565',1,0,'Description for Doctor W22','doctorw1@mailinator.com','doctorw1@mailinator.com','vi','doctor_44.jpg','[\"cardiology\"]','Dr','CEO','Biography of Doctor W22','2015-02-18','+07:00',23,NULL,'Doctor W22','','female','1978-05-16'),(46,'2021-09-27 11:50:43.101014','2021-09-27 11:50:43.101014',1,0,'Description for Doctor X23','doctorx0@mailinator.com','doctorx0@mailinator.com','vi','doctor_45.jpg','[\"primary\"]','Dr','CEO','Biography of Doctor X23','2013-04-04','+07:00',24,NULL,'Doctor X23','','male','1973-02-11'),(47,'2021-09-27 11:50:43.133019','2021-09-27 11:50:43.133019',1,0,'Description for Doctor X23','doctorx1@mailinator.com','doctorx1@mailinator.com','vi','doctor_46.jpg','[\"cardiology\"]','Dr','CEO','Biography of Doctor X23','2008-05-17','+07:00',24,NULL,'Doctor X23','','female','1972-06-27'),(48,'2021-09-27 11:50:43.164600','2021-09-27 11:50:43.164600',1,0,'Description for Doctor X23','doctorx2@mailinator.com','doctorx2@mailinator.com','vi','doctor_47.jpg','[\"primary\", \"cardiology\"]','Dr','CEO','Biography of Doctor X23','2007-01-08','+07:00',24,NULL,'Doctor X23','','male','1967-07-06'),(49,'2021-09-27 11:50:43.236348','2021-09-27 11:50:43.236348',1,0,'Description for Doctor Y24','doctory0@mailinator.com','doctory0@mailinator.com','vi','doctor_48.jpg','[\"primary\"]','Dr','CEO','Biography of Doctor Y24','2008-02-18','+07:00',25,NULL,'Doctor Y24','','male','1985-03-22'),(50,'2021-09-27 11:50:43.284268','2021-09-27 11:50:43.284268',1,0,'Description for Doctor Z25','doctorz0@mailinator.com','doctorz0@mailinator.com','vi','doctor_49.jpg','[\"primary\"]','Dr','CEO','Biography of Doctor Z25','2013-11-21','+07:00',26,NULL,'Doctor Z25','','male','1975-01-09'),(51,'2021-09-27 11:50:43.316059','2021-09-27 11:50:43.316059',1,0,'Description for Doctor Z25','doctorz1@mailinator.com','doctorz1@mailinator.com','vi','doctor_50.jpg','[\"cardiology\"]','Dr','CEO','Biography of Doctor Z25','2010-06-03','+07:00',26,NULL,'Doctor Z25','','female','1972-11-30');
/*!40000 ALTER TABLE `doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctor_cert`
--

DROP TABLE IF EXISTS `doctor_cert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctor_cert` (
  `id` int NOT NULL AUTO_INCREMENT,
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `version` int NOT NULL,
  `deactivated` tinyint NOT NULL DEFAULT '0',
  `description` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `issuer` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `issueDate` date NOT NULL,
  `expDate` date DEFAULT NULL,
  `image` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('personal','working','degree','other') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `doctorId` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_ac69ad89acd2da883de3df90930` (`doctorId`),
  CONSTRAINT `FK_ac69ad89acd2da883de3df90930` FOREIGN KEY (`doctorId`) REFERENCES `doctor` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor_cert`
--

LOCK TABLES `doctor_cert` WRITE;
/*!40000 ALTER TABLE `doctor_cert` DISABLE KEYS */;
INSERT INTO `doctor_cert` VALUES (1,'2021-09-27 11:50:40.721838','2021-09-27 11:50:40.721838',1,0,'Description for Doctor A0 working certificate','10000','Doctor A0 working certificate','Department of health Sai Gon','2001-10-05',NULL,'doctor_cert_0.jpg','working',1),(2,'2021-09-27 11:50:40.795899','2021-09-27 11:50:40.795899',1,0,'Description for Doctor B1 working certificate','10001','Doctor B1 working certificate','Department of health Sai Gon','2003-04-03',NULL,'doctor_cert_1.jpg','working',2),(3,'2021-09-27 11:50:40.843403','2021-09-27 11:50:40.843403',1,0,'Description for Doctor B1 working certificate','10001','Doctor B1 working certificate','Department of health Sai Gon','2005-10-16',NULL,'doctor_cert_2.jpg','working',3),(4,'2021-09-27 11:50:40.911383','2021-09-27 11:50:40.911383',1,0,'Description for Doctor C2 working certificate','10002','Doctor C2 working certificate','Department of health Sai Gon','2015-04-18',NULL,'doctor_cert_3.jpg','working',4),(5,'2021-09-27 11:50:40.953020','2021-09-27 11:50:40.953020',1,0,'Description for Doctor C2 working certificate','10002','Doctor C2 working certificate','Department of health Sai Gon','2007-07-24',NULL,'doctor_cert_4.jpg','working',5),(6,'2021-09-27 11:50:40.994744','2021-09-27 11:50:40.994744',1,0,'Description for Doctor C2 working certificate','10002','Doctor C2 working certificate','Department of health Sai Gon','2017-05-02',NULL,'doctor_cert_5.jpg','working',6),(7,'2021-09-27 11:50:41.094941','2021-09-27 11:50:41.094941',1,0,'Description for Doctor D3 working certificate','10003','Doctor D3 working certificate','Department of health Sai Gon','2011-06-22',NULL,'doctor_cert_6.jpg','working',7),(8,'2021-09-27 11:50:41.156922','2021-09-27 11:50:41.156922',1,0,'Description for Doctor E4 working certificate','10004','Doctor E4 working certificate','Department of health Sai Gon','2016-08-24',NULL,'doctor_cert_7.jpg','working',8),(9,'2021-09-27 11:50:41.198913','2021-09-27 11:50:41.198913',1,0,'Description for Doctor E4 working certificate','10004','Doctor E4 working certificate','Department of health Sai Gon','2005-03-29',NULL,'doctor_cert_8.jpg','working',9),(10,'2021-09-27 11:50:41.256210','2021-09-27 11:50:41.256210',1,0,'Description for Doctor F5 working certificate','10005','Doctor F5 working certificate','Department of health Sai Gon','2009-07-04',NULL,'doctor_cert_9.jpg','working',10),(11,'2021-09-27 11:50:41.295492','2021-09-27 11:50:41.295492',1,0,'Description for Doctor F5 working certificate','10005','Doctor F5 working certificate','Department of health Sai Gon','2013-06-22',NULL,'doctor_cert_10.jpg','working',11),(12,'2021-09-27 11:50:41.336551','2021-09-27 11:50:41.336551',1,0,'Description for Doctor F5 working certificate','10005','Doctor F5 working certificate','Department of health Sai Gon','2019-09-24',NULL,'doctor_cert_11.jpg','working',12),(13,'2021-09-27 11:50:41.413055','2021-09-27 11:50:41.413055',1,0,'Description for Doctor G6 working certificate','10006','Doctor G6 working certificate','Department of health Sai Gon','2020-07-13',NULL,'doctor_cert_12.jpg','working',13),(14,'2021-09-27 11:50:41.473491','2021-09-27 11:50:41.473491',1,0,'Description for Doctor H7 working certificate','10007','Doctor H7 working certificate','Department of health Sai Gon','2017-05-15',NULL,'doctor_cert_13.jpg','working',14),(15,'2021-09-27 11:50:41.513721','2021-09-27 11:50:41.513721',1,0,'Description for Doctor H7 working certificate','10007','Doctor H7 working certificate','Department of health Sai Gon','2011-03-18',NULL,'doctor_cert_14.jpg','working',15),(16,'2021-09-27 11:50:41.573160','2021-09-27 11:50:41.573160',1,0,'Description for Doctor I8 working certificate','10008','Doctor I8 working certificate','Department of health Sai Gon','2001-12-26',NULL,'doctor_cert_15.jpg','working',16),(17,'2021-09-27 11:50:41.617188','2021-09-27 11:50:41.617188',1,0,'Description for Doctor I8 working certificate','10008','Doctor I8 working certificate','Department of health Sai Gon','2002-09-19',NULL,'doctor_cert_16.jpg','working',17),(18,'2021-09-27 11:50:41.657078','2021-09-27 11:50:41.657078',1,0,'Description for Doctor I8 working certificate','10008','Doctor I8 working certificate','Department of health Sai Gon','2016-08-01',NULL,'doctor_cert_17.jpg','working',18),(19,'2021-09-27 11:50:41.733222','2021-09-27 11:50:41.733222',1,0,'Description for Doctor J9 working certificate','10009','Doctor J9 working certificate','Department of health Sai Gon','2008-02-12',NULL,'doctor_cert_18.jpg','working',19),(20,'2021-09-27 11:50:41.791049','2021-09-27 11:50:41.791049',1,0,'Description for Doctor K10 working certificate','100010','Doctor K10 working certificate','Department of health Sai Gon','2004-07-13',NULL,'doctor_cert_19.jpg','working',20),(21,'2021-09-27 11:50:41.829414','2021-09-27 11:50:41.829414',1,0,'Description for Doctor K10 working certificate','100010','Doctor K10 working certificate','Department of health Sai Gon','2014-06-06',NULL,'doctor_cert_20.jpg','working',21),(22,'2021-09-27 11:50:41.892351','2021-09-27 11:50:41.892351',1,0,'Description for Doctor L11 working certificate','100011','Doctor L11 working certificate','Department of health Sai Gon','2009-07-10',NULL,'doctor_cert_21.jpg','working',22),(23,'2021-09-27 11:50:41.931320','2021-09-27 11:50:41.931320',1,0,'Description for Doctor L11 working certificate','100011','Doctor L11 working certificate','Department of health Sai Gon','2003-02-21',NULL,'doctor_cert_22.jpg','working',23),(24,'2021-09-27 11:50:41.968007','2021-09-27 11:50:41.968007',1,0,'Description for Doctor L11 working certificate','100011','Doctor L11 working certificate','Department of health Sai Gon','2015-01-24',NULL,'doctor_cert_23.jpg','working',24),(25,'2021-09-27 11:50:42.046366','2021-09-27 11:50:42.046366',1,0,'Description for Doctor M12 working certificate','100012','Doctor M12 working certificate','Department of health Sai Gon','2020-03-31',NULL,'doctor_cert_24.jpg','working',25),(26,'2021-09-27 11:50:42.102298','2021-09-27 11:50:42.102298',1,0,'Description for Doctor N13 working certificate','100013','Doctor N13 working certificate','Department of health Sai Gon','2019-03-28',NULL,'doctor_cert_25.jpg','working',26),(27,'2021-09-27 11:50:42.138328','2021-09-27 11:50:42.138328',1,0,'Description for Doctor N13 working certificate','100013','Doctor N13 working certificate','Department of health Sai Gon','2012-01-14',NULL,'doctor_cert_26.jpg','working',27),(28,'2021-09-27 11:50:42.196626','2021-09-27 11:50:42.196626',1,0,'Description for Doctor O14 working certificate','100014','Doctor O14 working certificate','Department of health Sai Gon','2020-07-28',NULL,'doctor_cert_27.jpg','working',28),(29,'2021-09-27 11:50:42.233848','2021-09-27 11:50:42.233848',1,0,'Description for Doctor O14 working certificate','100014','Doctor O14 working certificate','Department of health Sai Gon','2012-09-12',NULL,'doctor_cert_28.jpg','working',29),(30,'2021-09-27 11:50:42.273365','2021-09-27 11:50:42.273365',1,0,'Description for Doctor O14 working certificate','100014','Doctor O14 working certificate','Department of health Sai Gon','2019-02-21',NULL,'doctor_cert_29.jpg','working',30),(31,'2021-09-27 11:50:42.350812','2021-09-27 11:50:42.350812',1,0,'Description for Doctor P15 working certificate','100015','Doctor P15 working certificate','Department of health Sai Gon','2020-05-26',NULL,'doctor_cert_30.jpg','working',31),(32,'2021-09-27 11:50:42.408837','2021-09-27 11:50:42.408837',1,0,'Description for Doctor Q16 working certificate','100016','Doctor Q16 working certificate','Department of health Sai Gon','2020-03-15',NULL,'doctor_cert_31.jpg','working',32),(33,'2021-09-27 11:50:42.452708','2021-09-27 11:50:42.452708',1,0,'Description for Doctor Q16 working certificate','100016','Doctor Q16 working certificate','Department of health Sai Gon','2007-02-23',NULL,'doctor_cert_32.jpg','working',33),(34,'2021-09-27 11:50:42.517456','2021-09-27 11:50:42.517456',1,0,'Description for Doctor R17 working certificate','100017','Doctor R17 working certificate','Department of health Sai Gon','2012-09-24',NULL,'doctor_cert_33.jpg','working',34),(35,'2021-09-27 11:50:42.552885','2021-09-27 11:50:42.552885',1,0,'Description for Doctor R17 working certificate','100017','Doctor R17 working certificate','Department of health Sai Gon','2015-06-30',NULL,'doctor_cert_34.jpg','working',35),(36,'2021-09-27 11:50:42.598246','2021-09-27 11:50:42.598246',1,0,'Description for Doctor R17 working certificate','100017','Doctor R17 working certificate','Department of health Sai Gon','2003-09-01',NULL,'doctor_cert_35.jpg','working',36),(37,'2021-09-27 11:50:42.671716','2021-09-27 11:50:42.671716',1,0,'Description for Doctor S18 working certificate','100018','Doctor S18 working certificate','Department of health Sai Gon','2020-09-11',NULL,'doctor_cert_36.jpg','working',37),(38,'2021-09-27 11:50:42.720433','2021-09-27 11:50:42.720433',1,0,'Description for Doctor T19 working certificate','100019','Doctor T19 working certificate','Department of health Sai Gon','2000-12-24',NULL,'doctor_cert_37.jpg','working',38),(39,'2021-09-27 11:50:42.751990','2021-09-27 11:50:42.751990',1,0,'Description for Doctor T19 working certificate','100019','Doctor T19 working certificate','Department of health Sai Gon','2007-02-04',NULL,'doctor_cert_38.jpg','working',39),(40,'2021-09-27 11:50:42.803566','2021-09-27 11:50:42.803566',1,0,'Description for Doctor U20 working certificate','100020','Doctor U20 working certificate','Department of health Sai Gon','2004-01-24',NULL,'doctor_cert_39.jpg','working',40),(41,'2021-09-27 11:50:42.837709','2021-09-27 11:50:42.837709',1,0,'Description for Doctor U20 working certificate','100020','Doctor U20 working certificate','Department of health Sai Gon','2012-09-17',NULL,'doctor_cert_40.jpg','working',41),(42,'2021-09-27 11:50:42.872761','2021-09-27 11:50:42.872761',1,0,'Description for Doctor U20 working certificate','100020','Doctor U20 working certificate','Department of health Sai Gon','2014-03-23',NULL,'doctor_cert_41.jpg','working',42),(43,'2021-09-27 11:50:42.954556','2021-09-27 11:50:42.954556',1,0,'Description for Doctor V21 working certificate','100021','Doctor V21 working certificate','Department of health Sai Gon','2020-03-27',NULL,'doctor_cert_42.jpg','working',43),(44,'2021-09-27 11:50:43.010484','2021-09-27 11:50:43.010484',1,0,'Description for Doctor W22 working certificate','100022','Doctor W22 working certificate','Department of health Sai Gon','2010-10-11',NULL,'doctor_cert_43.jpg','working',44),(45,'2021-09-27 11:50:43.046107','2021-09-27 11:50:43.046107',1,0,'Description for Doctor W22 working certificate','100022','Doctor W22 working certificate','Department of health Sai Gon','2015-11-27',NULL,'doctor_cert_44.jpg','working',45),(46,'2021-09-27 11:50:43.107222','2021-09-27 11:50:43.107222',1,0,'Description for Doctor X23 working certificate','100023','Doctor X23 working certificate','Department of health Sai Gon','2007-06-21',NULL,'doctor_cert_45.jpg','working',46),(47,'2021-09-27 11:50:43.139180','2021-09-27 11:50:43.139180',1,0,'Description for Doctor X23 working certificate','100023','Doctor X23 working certificate','Department of health Sai Gon','2002-06-07',NULL,'doctor_cert_46.jpg','working',47),(48,'2021-09-27 11:50:43.170221','2021-09-27 11:50:43.170221',1,0,'Description for Doctor X23 working certificate','100023','Doctor X23 working certificate','Department of health Sai Gon','2007-11-26',NULL,'doctor_cert_47.jpg','working',48),(49,'2021-09-27 11:50:43.243107','2021-09-27 11:50:43.243107',1,0,'Description for Doctor Y24 working certificate','100024','Doctor Y24 working certificate','Department of health Sai Gon','2015-05-02',NULL,'doctor_cert_48.jpg','working',49),(50,'2021-09-27 11:50:43.290058','2021-09-27 11:50:43.290058',1,0,'Description for Doctor Z25 working certificate','100025','Doctor Z25 working certificate','Department of health Sai Gon','2006-12-15',NULL,'doctor_cert_49.jpg','working',50),(51,'2021-09-27 11:50:43.321786','2021-09-27 11:50:43.321786',1,0,'Description for Doctor Z25 working certificate','100025','Doctor Z25 working certificate','Department of health Sai Gon','2019-04-22',NULL,'doctor_cert_50.jpg','working',51);
/*!40000 ALTER TABLE `doctor_cert` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctor_device`
--

DROP TABLE IF EXISTS `doctor_device`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctor_device` (
  `id` int NOT NULL AUTO_INCREMENT,
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `version` int NOT NULL,
  `deactivated` tinyint NOT NULL DEFAULT '0',
  `description` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `info` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `os` enum('ios','android','mac','window','linux','chrome','safari','firefox','ie','edge') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic` enum('com.cloud273.patient','com.cloud273.doctor','com.cloud273.clinic','com.cloud273.admin') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `production` tinyint NOT NULL DEFAULT '1',
  `accountId` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDX_7d64a41f6f6780330053dc4b39` (`topic`,`accountId`),
  KEY `FK_db0c2edb26c48614a1e322deac3` (`accountId`),
  CONSTRAINT `FK_db0c2edb26c48614a1e322deac3` FOREIGN KEY (`accountId`) REFERENCES `doctor` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor_device`
--

LOCK TABLES `doctor_device` WRITE;
/*!40000 ALTER TABLE `doctor_device` DISABLE KEYS */;
/*!40000 ALTER TABLE `doctor_device` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icd`
--

DROP TABLE IF EXISTS `icd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `icd` (
  `id` int NOT NULL AUTO_INCREMENT,
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `version` int NOT NULL,
  `deactivated` tinyint NOT NULL DEFAULT '0',
  `description` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `disease` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDX_6f0e61e8289e2d29939ffdb29a` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icd`
--

LOCK TABLES `icd` WRITE;
/*!40000 ALTER TABLE `icd` DISABLE KEYS */;
/*!40000 ALTER TABLE `icd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medication`
--

DROP TABLE IF EXISTS `medication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medication` (
  `id` int NOT NULL AUTO_INCREMENT,
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `version` int NOT NULL,
  `deactivated` tinyint NOT NULL DEFAULT '0',
  `description` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` enum('highBP','highCholesterol','pregnant','cancer') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` enum('yes','no','unknown') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unknown',
  `patientId` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDX_462da35df0120843506fae9413` (`name`,`patientId`),
  KEY `FK_56b2a7d052074e54b88d603ba38` (`patientId`),
  CONSTRAINT `FK_56b2a7d052074e54b88d603ba38` FOREIGN KEY (`patientId`) REFERENCES `patient` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medication`
--

LOCK TABLES `medication` WRITE;
/*!40000 ALTER TABLE `medication` DISABLE KEYS */;
/*!40000 ALTER TABLE `medication` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicine`
--

DROP TABLE IF EXISTS `medicine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicine` (
  `id` int NOT NULL AUTO_INCREMENT,
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `version` int NOT NULL,
  `deactivated` tinyint NOT NULL DEFAULT '0',
  `description` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('uong','chich','thoa','dat') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDX_1a7795d3936ec4beed020ce339` (`name`,`type`,`brand`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicine`
--

LOCK TABLES `medicine` WRITE;
/*!40000 ALTER TABLE `medicine` DISABLE KEYS */;
/*!40000 ALTER TABLE `medicine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicine_component`
--

DROP TABLE IF EXISTS `medicine_component`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicine_component` (
  `id` int NOT NULL AUTO_INCREMENT,
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `version` int NOT NULL,
  `deactivated` tinyint NOT NULL DEFAULT '0',
  `description` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `dose` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDX_4856cb6f1b3c80262af41591a7` (`name`,`dose`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicine_component`
--

LOCK TABLES `medicine_component` WRITE;
/*!40000 ALTER TABLE `medicine_component` DISABLE KEYS */;
/*!40000 ALTER TABLE `medicine_component` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicine_components_medicine_component`
--

DROP TABLE IF EXISTS `medicine_components_medicine_component`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicine_components_medicine_component` (
  `medicineId` int NOT NULL,
  `medicineComponentId` int NOT NULL,
  PRIMARY KEY (`medicineId`,`medicineComponentId`),
  KEY `IDX_c3b58c07639012d66d217ebe1c` (`medicineId`),
  KEY `IDX_6c98026d244c0058769954041f` (`medicineComponentId`),
  CONSTRAINT `FK_6c98026d244c0058769954041fb` FOREIGN KEY (`medicineComponentId`) REFERENCES `medicine_component` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_c3b58c07639012d66d217ebe1cd` FOREIGN KEY (`medicineId`) REFERENCES `medicine` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicine_components_medicine_component`
--

LOCK TABLES `medicine_components_medicine_component` WRITE;
/*!40000 ALTER TABLE `medicine_components_medicine_component` DISABLE KEYS */;
/*!40000 ALTER TABLE `medicine_components_medicine_component` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `package`
--

DROP TABLE IF EXISTS `package`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `package` (
  `id` int NOT NULL AUTO_INCREMENT,
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `version` int NOT NULL,
  `deactivated` tinyint NOT NULL DEFAULT '0',
  `description` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `specialty` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('classic','telemed') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `visitTime` int NOT NULL,
  `doctorId` int NOT NULL,
  `priceAmount` double NOT NULL,
  `priceCurrency` enum('vnd','usd') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'vnd',
  PRIMARY KEY (`id`),
  KEY `FK_db0332804645fc48e0cc586380c` (`doctorId`),
  CONSTRAINT `FK_db0332804645fc48e0cc586380c` FOREIGN KEY (`doctorId`) REFERENCES `doctor` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `package`
--

LOCK TABLES `package` WRITE;
/*!40000 ALTER TABLE `package` DISABLE KEYS */;
INSERT INTO `package` VALUES (1,'2021-09-27 11:50:40.734798','2021-09-27 11:50:40.734798',1,0,'Description for package','primary','classic',300,1,50000,'vnd'),(2,'2021-09-27 11:50:40.808254','2021-09-27 11:50:40.808254',1,0,'Description for package','primary','classic',600,2,150000,'vnd'),(3,'2021-09-27 11:50:40.853317','2021-09-27 11:50:40.853317',1,0,'Description for package','cardiology','classic',600,3,50000,'vnd'),(4,'2021-09-27 11:50:40.920576','2021-09-27 11:50:40.920576',1,0,'Description for package','primary','classic',600,4,300000,'vnd'),(5,'2021-09-27 11:50:40.963643','2021-09-27 11:50:40.963643',1,0,'Description for package','cardiology','classic',600,5,400000,'vnd'),(6,'2021-09-27 11:50:41.004576','2021-09-27 11:50:41.004576',1,0,'Description for package','primary','classic',300,6,450000,'vnd'),(7,'2021-09-27 11:50:41.025955','2021-09-27 11:50:41.025955',1,0,'Description for package','cardiology','classic',600,6,150000,'vnd'),(8,'2021-09-27 11:50:41.104499','2021-09-27 11:50:41.104499',1,0,'Description for package','primary','classic',300,7,100000,'vnd'),(9,'2021-09-27 11:50:41.168662','2021-09-27 11:50:41.168662',1,0,'Description for package','primary','classic',300,8,450000,'vnd'),(10,'2021-09-27 11:50:41.207846','2021-09-27 11:50:41.207846',1,0,'Description for package','cardiology','classic',300,9,300000,'vnd'),(11,'2021-09-27 11:50:41.266224','2021-09-27 11:50:41.266224',1,0,'Description for package','primary','classic',600,10,350000,'vnd'),(12,'2021-09-27 11:50:41.304341','2021-09-27 11:50:41.304341',1,0,'Description for package','cardiology','classic',300,11,100000,'vnd'),(13,'2021-09-27 11:50:41.346443','2021-09-27 11:50:41.346443',1,0,'Description for package','primary','classic',300,12,250000,'vnd'),(14,'2021-09-27 11:50:41.365025','2021-09-27 11:50:41.365025',1,0,'Description for package','cardiology','classic',300,12,300000,'vnd'),(15,'2021-09-27 11:50:41.422298','2021-09-27 11:50:41.422298',1,0,'Description for package','primary','classic',600,13,150000,'vnd'),(16,'2021-09-27 11:50:41.483813','2021-09-27 11:50:41.483813',1,0,'Description for package','primary','classic',300,14,350000,'vnd'),(17,'2021-09-27 11:50:41.522282','2021-09-27 11:50:41.522282',1,0,'Description for package','cardiology','classic',300,15,150000,'vnd'),(18,'2021-09-27 11:50:41.583070','2021-09-27 11:50:41.583070',1,0,'Description for package','primary','classic',600,16,300000,'vnd'),(19,'2021-09-27 11:50:41.626026','2021-09-27 11:50:41.626026',1,0,'Description for package','cardiology','classic',600,17,300000,'vnd'),(20,'2021-09-27 11:50:41.666585','2021-09-27 11:50:41.666585',1,0,'Description for package','primary','classic',600,18,150000,'vnd'),(21,'2021-09-27 11:50:41.683901','2021-09-27 11:50:41.683901',1,0,'Description for package','cardiology','classic',600,18,300000,'vnd'),(22,'2021-09-27 11:50:41.741745','2021-09-27 11:50:41.741745',1,0,'Description for package','primary','classic',300,19,150000,'vnd'),(23,'2021-09-27 11:50:41.800694','2021-09-27 11:50:41.800694',1,0,'Description for package','primary','classic',300,20,400000,'vnd'),(24,'2021-09-27 11:50:41.839246','2021-09-27 11:50:41.839246',1,0,'Description for package','cardiology','classic',300,21,450000,'vnd'),(25,'2021-09-27 11:50:41.901221','2021-09-27 11:50:41.901221',1,0,'Description for package','primary','classic',600,22,50000,'vnd'),(26,'2021-09-27 11:50:41.939203','2021-09-27 11:50:41.939203',1,0,'Description for package','cardiology','classic',300,23,300000,'vnd'),(27,'2021-09-27 11:50:41.976628','2021-09-27 11:50:41.976628',1,0,'Description for package','primary','classic',300,24,50000,'vnd'),(28,'2021-09-27 11:50:41.995293','2021-09-27 11:50:41.995293',1,0,'Description for package','cardiology','classic',300,24,150000,'vnd'),(29,'2021-09-27 11:50:42.054686','2021-09-27 11:50:42.054686',1,0,'Description for package','primary','classic',600,25,350000,'vnd'),(30,'2021-09-27 11:50:42.111405','2021-09-27 11:50:42.111405',1,0,'Description for package','primary','classic',300,26,200000,'vnd'),(31,'2021-09-27 11:50:42.148436','2021-09-27 11:50:42.148436',1,0,'Description for package','cardiology','classic',600,27,250000,'vnd'),(32,'2021-09-27 11:50:42.204777','2021-09-27 11:50:42.204777',1,0,'Description for package','primary','classic',600,28,50000,'vnd'),(33,'2021-09-27 11:50:42.245047','2021-09-27 11:50:42.245047',1,0,'Description for package','cardiology','classic',600,29,150000,'vnd'),(34,'2021-09-27 11:50:42.283920','2021-09-27 11:50:42.283920',1,0,'Description for package','primary','classic',600,30,200000,'vnd'),(35,'2021-09-27 11:50:42.302038','2021-09-27 11:50:42.302038',1,0,'Description for package','cardiology','classic',300,30,350000,'vnd'),(36,'2021-09-27 11:50:42.359658','2021-09-27 11:50:42.359658',1,0,'Description for package','primary','classic',300,31,150000,'vnd'),(37,'2021-09-27 11:50:42.417888','2021-09-27 11:50:42.417888',1,0,'Description for package','primary','classic',300,32,300000,'vnd'),(38,'2021-09-27 11:50:42.464182','2021-09-27 11:50:42.464182',1,0,'Description for package','cardiology','classic',600,33,350000,'vnd'),(39,'2021-09-27 11:50:42.525771','2021-09-27 11:50:42.525771',1,0,'Description for package','primary','classic',300,34,150000,'vnd'),(40,'2021-09-27 11:50:42.563501','2021-09-27 11:50:42.563501',1,0,'Description for package','cardiology','classic',600,35,300000,'vnd'),(41,'2021-09-27 11:50:42.606354','2021-09-27 11:50:42.606354',1,0,'Description for package','primary','classic',300,36,300000,'vnd'),(42,'2021-09-27 11:50:42.623409','2021-09-27 11:50:42.623409',1,0,'Description for package','cardiology','classic',600,36,400000,'vnd'),(43,'2021-09-27 11:50:42.680446','2021-09-27 11:50:42.680446',1,0,'Description for package','primary','classic',600,37,200000,'vnd'),(44,'2021-09-27 11:50:42.728555','2021-09-27 11:50:42.728555',1,0,'Description for package','primary','classic',300,38,250000,'vnd'),(45,'2021-09-27 11:50:42.760072','2021-09-27 11:50:42.760072',1,0,'Description for package','cardiology','classic',600,39,450000,'vnd'),(46,'2021-09-27 11:50:42.811770','2021-09-27 11:50:42.811770',1,0,'Description for package','primary','classic',300,40,200000,'vnd'),(47,'2021-09-27 11:50:42.846365','2021-09-27 11:50:42.846365',1,0,'Description for package','cardiology','classic',600,41,250000,'vnd'),(48,'2021-09-27 11:50:42.882028','2021-09-27 11:50:42.882028',1,0,'Description for package','primary','classic',300,42,250000,'vnd'),(49,'2021-09-27 11:50:42.902875','2021-09-27 11:50:42.902875',1,0,'Description for package','cardiology','classic',600,42,300000,'vnd'),(50,'2021-09-27 11:50:42.964007','2021-09-27 11:50:42.964007',1,0,'Description for package','primary','classic',300,43,200000,'vnd'),(51,'2021-09-27 11:50:43.019774','2021-09-27 11:50:43.019774',1,0,'Description for package','primary','classic',600,44,50000,'vnd'),(52,'2021-09-27 11:50:43.054131','2021-09-27 11:50:43.054131',1,0,'Description for package','cardiology','classic',300,45,100000,'vnd'),(53,'2021-09-27 11:50:43.115241','2021-09-27 11:50:43.115241',1,0,'Description for package','primary','classic',300,46,200000,'vnd'),(54,'2021-09-27 11:50:43.147374','2021-09-27 11:50:43.147374',1,0,'Description for package','cardiology','classic',600,47,350000,'vnd'),(55,'2021-09-27 11:50:43.180198','2021-09-27 11:50:43.180198',1,0,'Description for package','primary','classic',600,48,350000,'vnd'),(56,'2021-09-27 11:50:43.200132','2021-09-27 11:50:43.200132',1,0,'Description for package','cardiology','classic',600,48,300000,'vnd'),(57,'2021-09-27 11:50:43.250396','2021-09-27 11:50:43.250396',1,0,'Description for package','primary','classic',300,49,50000,'vnd'),(58,'2021-09-27 11:50:43.298360','2021-09-27 11:50:43.298360',1,0,'Description for package','primary','classic',300,50,200000,'vnd'),(59,'2021-09-27 11:50:43.330549','2021-09-27 11:50:43.330549',1,0,'Description for package','cardiology','classic',300,51,300000,'vnd');
/*!40000 ALTER TABLE `package` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient` (
  `id` int NOT NULL AUTO_INCREMENT,
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `version` int NOT NULL,
  `deactivated` tinyint NOT NULL DEFAULT '0',
  `description` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sso` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` enum('vi','en') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profileFirstname` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `profileLastname` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `profileGender` enum('male','female','unknown') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `profileDob` date NOT NULL,
  `addressCountry` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `addressState` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `addressCity` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `addressLine` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `addressLongitude` float DEFAULT NULL,
  `addressLatitude` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDX_dd7b5cadc25e5bab4c90e589f9` (`sso`),
  UNIQUE KEY `IDX_41fa9ba0db45a508ef0b640610` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient_device`
--

DROP TABLE IF EXISTS `patient_device`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient_device` (
  `id` int NOT NULL AUTO_INCREMENT,
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `version` int NOT NULL,
  `deactivated` tinyint NOT NULL DEFAULT '0',
  `description` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `info` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `os` enum('ios','android','mac','window','linux','chrome','safari','firefox','ie','edge') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic` enum('com.cloud273.patient','com.cloud273.doctor','com.cloud273.clinic','com.cloud273.admin') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `production` tinyint NOT NULL DEFAULT '1',
  `accountId` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDX_7daa576f1edb0b9a76d4c51f48` (`topic`,`accountId`),
  KEY `FK_dd38d70cb858a3191cdd553cdd5` (`accountId`),
  CONSTRAINT `FK_dd38d70cb858a3191cdd553cdd5` FOREIGN KEY (`accountId`) REFERENCES `patient` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_device`
--

LOCK TABLES `patient_device` WRITE;
/*!40000 ALTER TABLE `patient_device` DISABLE KEYS */;
/*!40000 ALTER TABLE `patient_device` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pd_review`
--

DROP TABLE IF EXISTS `pd_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pd_review` (
  `id` int NOT NULL AUTO_INCREMENT,
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `version` int NOT NULL,
  `deactivated` tinyint NOT NULL DEFAULT '0',
  `description` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` int NOT NULL,
  `status` enum('accepted','approved','rejected') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `patientId` int NOT NULL,
  `doctorId` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_452dda465e11e2d98cd32a3c719` (`patientId`),
  KEY `FK_f7777e1cb21c81956238ecd8fcc` (`doctorId`),
  CONSTRAINT `FK_452dda465e11e2d98cd32a3c719` FOREIGN KEY (`patientId`) REFERENCES `patient` (`id`),
  CONSTRAINT `FK_f7777e1cb21c81956238ecd8fcc` FOREIGN KEY (`doctorId`) REFERENCES `doctor` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pd_review`
--

LOCK TABLES `pd_review` WRITE;
/*!40000 ALTER TABLE `pd_review` DISABLE KEYS */;
/*!40000 ALTER TABLE `pd_review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pharmacy`
--

DROP TABLE IF EXISTS `pharmacy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pharmacy` (
  `id` int NOT NULL AUTO_INCREMENT,
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `version` int NOT NULL,
  `deactivated` tinyint NOT NULL DEFAULT '0',
  `description` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `workPhone` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `addressCountry` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `addressState` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `addressCity` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `addressLine` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `addressLongitude` float DEFAULT NULL,
  `addressLatitude` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDX_5ceb769a3b3d919ad8699951a8` (`email`),
  UNIQUE KEY `IDX_d81bb43977dd07125d25635a02` (`phone`),
  UNIQUE KEY `IDX_d6f33ee93d03dafbd572d42ebf` (`workPhone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pharmacy`
--

LOCK TABLES `pharmacy` WRITE;
/*!40000 ALTER TABLE `pharmacy` DISABLE KEYS */;
/*!40000 ALTER TABLE `pharmacy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pharmacy_cert`
--

DROP TABLE IF EXISTS `pharmacy_cert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pharmacy_cert` (
  `id` int NOT NULL AUTO_INCREMENT,
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `version` int NOT NULL,
  `deactivated` tinyint NOT NULL DEFAULT '0',
  `description` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `issuer` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `issueDate` date NOT NULL,
  `expDate` date DEFAULT NULL,
  `image` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('working','other') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pharmacyId` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_d56e3d824575ebeebde4af24c3a` (`pharmacyId`),
  CONSTRAINT `FK_d56e3d824575ebeebde4af24c3a` FOREIGN KEY (`pharmacyId`) REFERENCES `pharmacy` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pharmacy_cert`
--

LOCK TABLES `pharmacy_cert` WRITE;
/*!40000 ALTER TABLE `pharmacy_cert` DISABLE KEYS */;
/*!40000 ALTER TABLE `pharmacy_cert` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pharmacy_user`
--

DROP TABLE IF EXISTS `pharmacy_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pharmacy_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `version` int NOT NULL,
  `deactivated` tinyint NOT NULL DEFAULT '0',
  `description` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sso` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` enum('vi','en') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pharmacyId` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDX_49ec6be33ab4feb985536d76a2` (`sso`),
  UNIQUE KEY `IDX_e24b644f48b2c1dcee0e7a79e9` (`username`),
  KEY `FK_4919c82c0b78704bc6a00ebee66` (`pharmacyId`),
  CONSTRAINT `FK_4919c82c0b78704bc6a00ebee66` FOREIGN KEY (`pharmacyId`) REFERENCES `pharmacy` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pharmacy_user`
--

LOCK TABLES `pharmacy_user` WRITE;
/*!40000 ALTER TABLE `pharmacy_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `pharmacy_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pharmacy_user_device`
--

DROP TABLE IF EXISTS `pharmacy_user_device`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pharmacy_user_device` (
  `id` int NOT NULL AUTO_INCREMENT,
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `version` int NOT NULL,
  `deactivated` tinyint NOT NULL DEFAULT '0',
  `description` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `info` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `os` enum('ios','android','mac','window','linux','chrome','safari','firefox','ie','edge') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic` enum('com.cloud273.patient','com.cloud273.doctor','com.cloud273.clinic','com.cloud273.admin') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `production` tinyint NOT NULL DEFAULT '1',
  `accountId` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDX_bc4aa1b209b9241dc31b4bff9d` (`topic`,`accountId`),
  KEY `FK_0c1b9c3300c57217095bc6e56bd` (`accountId`),
  CONSTRAINT `FK_0c1b9c3300c57217095bc6e56bd` FOREIGN KEY (`accountId`) REFERENCES `pharmacy_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pharmacy_user_device`
--

LOCK TABLES `pharmacy_user_device` WRITE;
/*!40000 ALTER TABLE `pharmacy_user_device` DISABLE KEYS */;
/*!40000 ALTER TABLE `pharmacy_user_device` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prescription`
--

DROP TABLE IF EXISTS `prescription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prescription` (
  `id` int NOT NULL AUTO_INCREMENT,
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `version` int NOT NULL,
  `deactivated` tinyint NOT NULL DEFAULT '0',
  `description` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icdCode` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disease` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `appointmentId` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prescription`
--

LOCK TABLES `prescription` WRITE;
/*!40000 ALTER TABLE `prescription` DISABLE KEYS */;
/*!40000 ALTER TABLE `prescription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prescription_medicine`
--

DROP TABLE IF EXISTS `prescription_medicine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prescription_medicine` (
  `id` int NOT NULL AUTO_INCREMENT,
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `version` int NOT NULL,
  `deactivated` tinyint NOT NULL DEFAULT '0',
  `description` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total` double NOT NULL,
  `morning` double NOT NULL,
  `afternoon` double NOT NULL,
  `evening` double NOT NULL,
  `night` double NOT NULL,
  `prescriptionId` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_f5abb709c739834ac0ee95750bf` (`prescriptionId`),
  CONSTRAINT `FK_f5abb709c739834ac0ee95750bf` FOREIGN KEY (`prescriptionId`) REFERENCES `prescription` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prescription_medicine`
--

LOCK TABLES `prescription_medicine` WRITE;
/*!40000 ALTER TABLE `prescription_medicine` DISABLE KEYS */;
/*!40000 ALTER TABLE `prescription_medicine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedule`
--

DROP TABLE IF EXISTS `schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schedule` (
  `id` int NOT NULL AUTO_INCREMENT,
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `version` int NOT NULL,
  `deactivated` tinyint NOT NULL DEFAULT '0',
  `description` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `monday` json NOT NULL,
  `tuesday` json NOT NULL,
  `wednesday` json NOT NULL,
  `thursday` json NOT NULL,
  `friday` json NOT NULL,
  `saturday` json NOT NULL,
  `sunday` json NOT NULL,
  `packageId` int NOT NULL,
  `durationFrom` date NOT NULL,
  `durationTo` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_2688d6d8a5443ca46c16aff6592` (`packageId`),
  CONSTRAINT `FK_2688d6d8a5443ca46c16aff6592` FOREIGN KEY (`packageId`) REFERENCES `package` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule`
--

LOCK TABLES `schedule` WRITE;
/*!40000 ALTER TABLE `schedule` DISABLE KEYS */;
INSERT INTO `schedule` VALUES (1,'2021-09-27 11:50:40.748285','2021-09-27 11:50:40.748285',1,0,'Description of schedule','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}]','[{\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}]','[]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]',1,'2021-09-27','2022-09-27'),(2,'2021-09-27 11:50:40.821033','2021-09-27 11:50:40.821033',1,0,'Description of schedule','[{\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}]','[]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]','[{\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]',2,'2021-09-27','2022-09-27'),(3,'2021-09-27 11:50:40.867479','2021-09-27 11:50:40.867479',1,0,'Description of schedule','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}]','[{\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}]',3,'2021-09-27','2022-09-27'),(4,'2021-09-27 11:50:40.932120','2021-09-27 11:50:40.932120',1,0,'Description of schedule','[{\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]',4,'2021-09-27','2022-09-27'),(5,'2021-09-27 11:50:40.972285','2021-09-27 11:50:40.972285',1,0,'Description of schedule','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}]','[{\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]','[{\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]','[{\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[]',5,'2021-09-27','2022-09-27'),(6,'2021-09-27 11:50:41.016049','2021-09-27 11:50:41.016049',1,0,'Description of schedule','[{\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}]','[{\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]',6,'2021-09-27','2022-09-27'),(7,'2021-09-27 11:50:41.038753','2021-09-27 11:50:41.038753',1,0,'Description of schedule','[{\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]',7,'2021-09-27','2022-09-27'),(8,'2021-09-27 11:50:41.116460','2021-09-27 11:50:41.116460',1,0,'Description of schedule','[]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}]','[{\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]','[{\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]',8,'2021-09-27','2022-09-27'),(9,'2021-09-27 11:50:41.178584','2021-09-27 11:50:41.178584',1,0,'Description of schedule','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}]','[{\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[]','[{\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]',9,'2021-09-27','2022-09-27'),(10,'2021-09-27 11:50:41.217037','2021-09-27 11:50:41.217037',1,0,'Description of schedule','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[]','[]','[{\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}]',10,'2021-09-27','2022-09-27'),(11,'2021-09-27 11:50:41.277163','2021-09-27 11:50:41.277163',1,0,'Description of schedule','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]','[{\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}]',11,'2021-09-27','2022-09-27'),(12,'2021-09-27 11:50:41.315192','2021-09-27 11:50:41.315192',1,0,'Description of schedule','[{\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}]','[{\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]',12,'2021-09-27','2022-09-27'),(13,'2021-09-27 11:50:41.354673','2021-09-27 11:50:41.354673',1,0,'Description of schedule','[{\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]',13,'2021-09-27','2022-09-27'),(14,'2021-09-27 11:50:41.372907','2021-09-27 11:50:41.372907',1,0,'Description of schedule','[]','[{\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]','[{\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]','[{\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]',14,'2021-09-27','2022-09-27'),(15,'2021-09-27 11:50:41.432429','2021-09-27 11:50:41.432429',1,0,'Description of schedule','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}]','[]','[{\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]','[]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]',15,'2021-09-27','2022-09-27'),(16,'2021-09-27 11:50:41.494096','2021-09-27 11:50:41.494096',1,0,'Description of schedule','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]','[{\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]',16,'2021-09-27','2022-09-27'),(17,'2021-09-27 11:50:41.532300','2021-09-27 11:50:41.532300',1,0,'Description of schedule','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}]','[{\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]',17,'2021-09-27','2022-09-27'),(18,'2021-09-27 11:50:41.594941','2021-09-27 11:50:41.594941',1,0,'Description of schedule','[{\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]','[{\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]','[]','[{\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]',18,'2021-09-27','2022-09-27'),(19,'2021-09-27 11:50:41.635914','2021-09-27 11:50:41.635914',1,0,'Description of schedule','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]','[{\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]','[{\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]',19,'2021-09-27','2022-09-27'),(20,'2021-09-27 11:50:41.674360','2021-09-27 11:50:41.674360',1,0,'Description of schedule','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]','[{\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}]','[{\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[]','[{\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]',20,'2021-09-27','2022-09-27'),(21,'2021-09-27 11:50:41.693189','2021-09-27 11:50:41.693189',1,0,'Description of schedule','[{\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]','[{\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[]',21,'2021-09-27','2022-09-27'),(22,'2021-09-27 11:50:41.751106','2021-09-27 11:50:41.751106',1,0,'Description of schedule','[{\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[]','[{\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[]','[{\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]',22,'2021-09-27','2022-09-27'),(23,'2021-09-27 11:50:41.809153','2021-09-27 11:50:41.809153',1,0,'Description of schedule','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}]','[{\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]','[{\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[]','[{\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]',23,'2021-09-27','2022-09-27'),(24,'2021-09-27 11:50:41.851826','2021-09-27 11:50:41.851826',1,0,'Description of schedule','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[]','[]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}]','[{\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]',24,'2021-09-27','2022-09-27'),(25,'2021-09-27 11:50:41.911664','2021-09-27 11:50:41.911664',1,0,'Description of schedule','[{\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]','[{\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]','[{\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]','[]',25,'2021-09-27','2022-09-27'),(26,'2021-09-27 11:50:41.949760','2021-09-27 11:50:41.949760',1,0,'Description of schedule','[]','[]','[{\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}]','[{\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[]','[{\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]',26,'2021-09-27','2022-09-27'),(27,'2021-09-27 11:50:41.985570','2021-09-27 11:50:41.985570',1,0,'Description of schedule','[{\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[]','[{\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]',27,'2021-09-27','2022-09-27'),(28,'2021-09-27 11:50:42.004595','2021-09-27 11:50:42.004595',1,0,'Description of schedule','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]','[]','[{\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}]',28,'2021-09-27','2022-09-27'),(29,'2021-09-27 11:50:42.064650','2021-09-27 11:50:42.064650',1,0,'Description of schedule','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}]','[{\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]',29,'2021-09-27','2022-09-27'),(30,'2021-09-27 11:50:42.119696','2021-09-27 11:50:42.119696',1,0,'Description of schedule','[{\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]','[{\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]',30,'2021-09-27','2022-09-27'),(31,'2021-09-27 11:50:42.156463','2021-09-27 11:50:42.156463',1,0,'Description of schedule','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]','[{\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]','[{\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[]',31,'2021-09-27','2022-09-27'),(32,'2021-09-27 11:50:42.215427','2021-09-27 11:50:42.215427',1,0,'Description of schedule','[{\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]','[{\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]','[{\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}]','[]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}]',32,'2021-09-27','2022-09-27'),(33,'2021-09-27 11:50:42.253649','2021-09-27 11:50:42.253649',1,0,'Description of schedule','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]','[{\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]',33,'2021-09-27','2022-09-27'),(34,'2021-09-27 11:50:42.293019','2021-09-27 11:50:42.293019',1,0,'Description of schedule','[{\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}]','[{\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}]','[{\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]','[{\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]',34,'2021-09-27','2022-09-27'),(35,'2021-09-27 11:50:42.312916','2021-09-27 11:50:42.312916',1,0,'Description of schedule','[{\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]','[]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]',35,'2021-09-27','2022-09-27'),(36,'2021-09-27 11:50:42.369391','2021-09-27 11:50:42.369391',1,0,'Description of schedule','[{\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}]','[{\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]',36,'2021-09-27','2022-09-27'),(37,'2021-09-27 11:50:42.426147','2021-09-27 11:50:42.426147',1,0,'Description of schedule','[{\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]','[{\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]','[{\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]','[]','[{\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]',37,'2021-09-27','2022-09-27'),(38,'2021-09-27 11:50:42.474509','2021-09-27 11:50:42.474509',1,0,'Description of schedule','[{\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}]','[{\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}]',38,'2021-09-27','2022-09-27'),(39,'2021-09-27 11:50:42.535023','2021-09-27 11:50:42.535023',1,0,'Description of schedule','[{\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}]',39,'2021-09-27','2022-09-27'),(40,'2021-09-27 11:50:42.574177','2021-09-27 11:50:42.574177',1,0,'Description of schedule','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}]','[{\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]',40,'2021-09-27','2022-09-27'),(41,'2021-09-27 11:50:42.615866','2021-09-27 11:50:42.615866',1,0,'Description of schedule','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}]','[]','[{\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]',41,'2021-09-27','2022-09-27'),(42,'2021-09-27 11:50:42.632880','2021-09-27 11:50:42.632880',1,0,'Description of schedule','[{\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]','[{\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[]','[{\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]',42,'2021-09-27','2022-09-27'),(43,'2021-09-27 11:50:42.687535','2021-09-27 11:50:42.687535',1,0,'Description of schedule','[]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]','[{\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]','[{\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]','[]','[]',43,'2021-09-27','2022-09-27'),(44,'2021-09-27 11:50:42.735989','2021-09-27 11:50:42.735989',1,0,'Description of schedule','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]',44,'2021-09-27','2022-09-27'),(45,'2021-09-27 11:50:42.768953','2021-09-27 11:50:42.768953',1,0,'Description of schedule','[{\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]','[{\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]','[{\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]',45,'2021-09-27','2022-09-27'),(46,'2021-09-27 11:50:42.819830','2021-09-27 11:50:42.819830',1,0,'Description of schedule','[{\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]',46,'2021-09-27','2022-09-27'),(47,'2021-09-27 11:50:42.854941','2021-09-27 11:50:42.854941',1,0,'Description of schedule','[{\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[]','[{\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]','[{\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]','[{\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[]','[{\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]',47,'2021-09-27','2022-09-27'),(48,'2021-09-27 11:50:42.889441','2021-09-27 11:50:42.889441',1,0,'Description of schedule','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}]','[{\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}]',48,'2021-09-27','2022-09-27'),(49,'2021-09-27 11:50:42.915246','2021-09-27 11:50:42.915246',1,0,'Description of schedule','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}]','[]','[{\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]','[{\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]',49,'2021-09-27','2022-09-27'),(50,'2021-09-27 11:50:42.972554','2021-09-27 11:50:42.972554',1,0,'Description of schedule','[{\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]',50,'2021-09-27','2022-09-27'),(51,'2021-09-27 11:50:43.029155','2021-09-27 11:50:43.029155',1,0,'Description of schedule','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}]','[{\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]',51,'2021-09-27','2022-09-27'),(52,'2021-09-27 11:50:43.062769','2021-09-27 11:50:43.062769',1,0,'Description of schedule','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]','[]','[{\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}]',52,'2021-09-27','2022-09-27'),(53,'2021-09-27 11:50:43.121766','2021-09-27 11:50:43.121766',1,0,'Description of schedule','[]','[{\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]',53,'2021-09-27','2022-09-27'),(54,'2021-09-27 11:50:43.154838','2021-09-27 11:50:43.154838',1,0,'Description of schedule','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]','[{\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[]','[]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]',54,'2021-09-27','2022-09-27'),(55,'2021-09-27 11:50:43.189883','2021-09-27 11:50:43.189883',1,0,'Description of schedule','[{\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]','[{\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]','[{\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[]',55,'2021-09-27','2022-09-27'),(56,'2021-09-27 11:50:43.210783','2021-09-27 11:50:43.210783',1,0,'Description of schedule','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}]','[]','[{\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}]','[{\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}]','[]',56,'2021-09-27','2022-09-27'),(57,'2021-09-27 11:50:43.258684','2021-09-27 11:50:43.258684',1,0,'Description of schedule','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]','[{\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[]',57,'2021-09-27','2022-09-27'),(58,'2021-09-27 11:50:43.305325','2021-09-27 11:50:43.305325',1,0,'Description of schedule','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]','[{\"to\": \"16:00:00\", \"from\": \"13:00:00\"}]',58,'2021-09-27','2022-09-27'),(59,'2021-09-27 11:50:43.337595','2021-09-27 11:50:43.337595',1,0,'Description of schedule','[{\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}]','[{\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}]','[{\"to\": \"11:00:00\", \"from\": \"07:00:00\"}, {\"to\": \"16:00:00\", \"from\": \"13:00:00\"}, {\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]','[{\"to\": \"20:00:00\", \"from\": \"18:00:00\"}]',59,'2021-09-27','2022-09-27');
/*!40000 ALTER TABLE `schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surgery`
--

DROP TABLE IF EXISTS `surgery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `surgery` (
  `id` int NOT NULL AUTO_INCREMENT,
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `version` int NOT NULL,
  `deactivated` tinyint NOT NULL DEFAULT '0',
  `description` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date DEFAULT NULL,
  `patientId` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDX_532ca53ef98d66ebfbb45ead14` (`name`,`patientId`),
  KEY `FK_cf1cdd4b148722b7f56719008ec` (`patientId`),
  CONSTRAINT `FK_cf1cdd4b148722b7f56719008ec` FOREIGN KEY (`patientId`) REFERENCES `patient` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surgery`
--

LOCK TABLES `surgery` WRITE;
/*!40000 ALTER TABLE `surgery` DISABLE KEYS */;
/*!40000 ALTER TABLE `surgery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `working_day`
--

DROP TABLE IF EXISTS `working_day`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `working_day` (
  `id` int NOT NULL AUTO_INCREMENT,
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `version` int NOT NULL,
  `deactivated` tinyint NOT NULL DEFAULT '0',
  `description` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date NOT NULL,
  `times` json NOT NULL,
  `packageId` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_d45069ff76a206a7f4b9d10021f` (`packageId`),
  CONSTRAINT `FK_d45069ff76a206a7f4b9d10021f` FOREIGN KEY (`packageId`) REFERENCES `package` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `working_day`
--

LOCK TABLES `working_day` WRITE;
/*!40000 ALTER TABLE `working_day` DISABLE KEYS */;
/*!40000 ALTER TABLE `working_day` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-29 10:40:22
