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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (1,'2021-09-27 11:02:19.873140','2021-09-27 11:02:19.873140',1,'dungnguyen27384@gmail.com','33a9c623fb251efdf6e00abf0a832687','admin',0,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_device`
--

LOCK TABLES `admin_device` WRITE;
/*!40000 ALTER TABLE `admin_device` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clinic`
--

LOCK TABLES `clinic` WRITE;
/*!40000 ALTER TABLE `clinic` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clinic_cert`
--

LOCK TABLES `clinic_cert` WRITE;
/*!40000 ALTER TABLE `clinic_cert` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clinic_user`
--

LOCK TABLES `clinic_user` WRITE;
/*!40000 ALTER TABLE `clinic_user` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor`
--

LOCK TABLES `doctor` WRITE;
/*!40000 ALTER TABLE `doctor` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor_cert`
--

LOCK TABLES `doctor_cert` WRITE;
/*!40000 ALTER TABLE `doctor_cert` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `package`
--

LOCK TABLES `package` WRITE;
/*!40000 ALTER TABLE `package` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule`
--

LOCK TABLES `schedule` WRITE;
/*!40000 ALTER TABLE `schedule` DISABLE KEYS */;
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

-- Dump completed on 2021-09-29 10:37:33
