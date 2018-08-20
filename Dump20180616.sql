-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: salesmanager
-- ------------------------------------------------------
-- Server version	5.7.20-log

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
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admins` (
  `i` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `secret` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`i`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,'admin','5f4dcc3b5aa765d61d8327deb882cf99');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `CATEGORY_ID` bigint(20) NOT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_MODIFIED` datetime DEFAULT NULL,
  `UPDT_ID` varchar(20) DEFAULT NULL,
  `CATEGORY_IMAGE` varchar(100) DEFAULT NULL,
  `CATEGORY_STATUS` bit(1) DEFAULT NULL,
  `CODE` varchar(100) NOT NULL,
  `DEPTH` int(11) DEFAULT NULL,
  `FEATURED` bit(1) DEFAULT NULL,
  `LINEAGE` varchar(255) DEFAULT NULL,
  `SORT_ORDER` int(11) DEFAULT NULL,
  `VISIBLE` bit(1) DEFAULT NULL,
  `MERCHANT_ID` int(11) NOT NULL,
  `PARENT_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`CATEGORY_ID`),
  UNIQUE KEY `UK_3mq9i6qmgquvoieslx39pej6x` (`MERCHANT_ID`,`CODE`),
  KEY `FK_by5aj5to9lgmfvlhn4fb5b242` (`PARENT_ID`),
  CONSTRAINT `FK_b5718wl9wilwj9k8je1k2jeo` FOREIGN KEY (`MERCHANT_ID`) REFERENCES `merchant_store` (`MERCHANT_ID`),
  CONSTRAINT `FK_by5aj5to9lgmfvlhn4fb5b242` FOREIGN KEY (`PARENT_ID`) REFERENCES `category` (`CATEGORY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'2018-03-19 10:13:40','2018-03-19 10:13:40','admin',NULL,'\0','ht',0,'\0','/',0,'',1,NULL),(2,'2018-03-19 09:59:55','2018-03-19 09:59:55','admin',NULL,'\0','FsC',0,'\0','/',0,'',1,NULL),(3,'2018-04-28 15:30:06','2018-04-28 15:30:06','admin',NULL,'\0','Ea',1,'\0','/50/',0,'',1,50),(4,'2018-03-19 10:24:09','2018-03-19 10:24:09','admin',NULL,'\0','bodyC',0,'\0','/',0,'',1,NULL),(5,'2018-03-19 10:34:24','2018-03-19 10:34:24','admin',NULL,'\0','bm',1,'\0','/2/',0,'',1,2),(6,'2018-03-19 10:37:45','2018-03-19 10:37:45','admin',NULL,'\0','lb',1,'\0','/2/',0,'',1,2),(7,'2018-03-19 10:39:21','2018-03-19 10:39:21','admin',NULL,'\0','ss',1,'\0','/2/',0,'',1,2),(8,'2018-03-19 10:40:03','2018-03-19 10:40:03','admin',NULL,'\0','ao',1,'\0','/2/',0,'',1,2),(9,'2018-03-19 10:44:20','2018-03-19 10:44:20','admin',NULL,'\0','sp',1,'\0','/1/',0,'',1,1),(10,'2018-03-19 10:46:21','2018-03-19 10:46:21','admin',NULL,'\0','hc',1,'\0','/1/',0,'',1,1),(11,'2018-03-19 10:49:42','2018-03-19 10:49:42','admin',NULL,'\0','ac',1,'\0','/2/',0,'',1,2),(12,'2018-03-19 10:53:45','2018-03-19 10:53:45','admin',NULL,'\0','as',1,'\0','/1/',0,'',1,1),(13,'2018-03-19 10:56:40','2018-03-19 10:56:40','admin',NULL,'\0','fc',1,'\0','/2/',0,'',1,2),(14,'2018-03-19 11:04:12','2018-03-19 11:04:12','admin',NULL,'\0','bl',1,'\0','/4/',0,'',1,4),(15,'2018-03-19 11:01:55','2018-03-19 11:01:55','admin',NULL,'\0','s',1,'\0','/4/',0,'',1,4),(16,'2018-03-19 11:14:23','2018-03-19 11:14:23','admin',NULL,'\0','hft',1,'\0','/4/',0,'',1,4),(17,'2018-03-20 01:58:17','2018-03-20 01:58:17','admin',NULL,'\0','aoe',1,'\0','/3/',0,'',1,3),(18,'2018-04-29 08:28:13','2018-04-29 08:28:13','admin',NULL,'\0','ae',1,'\0','/50/',0,'',1,50),(50,'2018-04-28 15:22:19','2018-04-28 15:22:19','admin',NULL,'\0','food',0,'\0','/',0,'',1,NULL),(51,'2018-04-28 15:22:58','2018-04-28 15:22:58','admin',NULL,'\0','forhome',0,'\0','/',0,'',1,NULL),(52,'2018-04-28 15:23:25','2018-04-28 15:23:26','admin',NULL,'\0','fakya',1,'\0','/50/',0,'',1,50),(53,'2018-04-28 15:23:56','2018-04-28 15:23:56','admin',NULL,'\0','chocolate',1,'\0','/50/',0,'',1,50),(54,'2018-04-28 15:24:23','2018-04-28 15:24:23','admin',NULL,'\0','dates',1,'\0','/50/',0,'',1,50),(55,'2018-04-28 15:24:47','2018-04-28 15:24:47','admin',NULL,'\0','garden',1,'\0','/51/',0,'',1,51),(57,'2018-04-28 15:25:47','2018-04-28 15:25:47','admin',NULL,'\0','book',1,'\0','/51/',0,'',1,51),(58,'2018-04-28 15:26:10','2018-04-28 15:26:11','admin',NULL,'\0','plant',2,'\0','/51/55/',0,'',1,55),(62,'2018-04-28 15:28:56','2018-04-28 15:28:57','admin',NULL,'\0','coran',2,'\0','/51/57/',0,'',1,57),(63,'2018-04-28 15:30:40','2018-04-28 15:30:40','admin',NULL,'\0','flower',2,'\0','/51/55/',0,'',1,55),(100,'2018-04-29 08:32:08','2018-04-29 08:32:08','admin',NULL,'\0','hd',1,'\0','/51/',0,'',1,51),(101,'2018-04-29 08:33:46','2018-04-29 08:33:46','admin',NULL,'\0','ck',2,'\0','/51/100/',0,'',1,100),(102,'2018-04-29 08:34:14','2018-04-29 08:34:14','admin',NULL,'\0','candle',2,'\0','/51/100/',0,'',1,100),(103,'2018-04-29 08:37:22','2018-04-29 08:37:22','admin',NULL,'\0','morocco',2,'\0','/51/100/',0,'',1,100),(104,'2018-04-29 08:37:40','2018-04-29 08:37:40','admin',NULL,'\0','flag',3,'\0','/51/100/103/',0,'',1,103),(105,'2018-04-29 08:37:55','2018-04-29 08:37:55','admin',NULL,'\0','paiting',3,'\0','/51/100/103/',0,'',1,103);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_description`
--

DROP TABLE IF EXISTS `category_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_description` (
  `DESCRIPTION_ID` bigint(20) NOT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_MODIFIED` datetime DEFAULT NULL,
  `UPDT_ID` varchar(20) DEFAULT NULL,
  `DESCRIPTION` longtext,
  `NAME` varchar(120) NOT NULL,
  `TITLE` varchar(100) DEFAULT NULL,
  `CATEGORY_HIGHLIGHT` varchar(255) DEFAULT NULL,
  `META_DESCRIPTION` varchar(255) DEFAULT NULL,
  `META_KEYWORDS` varchar(255) DEFAULT NULL,
  `META_TITLE` varchar(120) DEFAULT NULL,
  `SEF_URL` varchar(120) DEFAULT NULL,
  `LANGUAGE_ID` int(11) NOT NULL,
  `CATEGORY_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`DESCRIPTION_ID`),
  UNIQUE KEY `UK_buesqq6cyx7e5hy3mf30cfieq` (`CATEGORY_ID`,`LANGUAGE_ID`),
  KEY `FK_i17o4f83r3q77m1wpwqxj3qeh` (`LANGUAGE_ID`),
  CONSTRAINT `FK_by2tlirq8wuhx2ml9ashsjwv2` FOREIGN KEY (`CATEGORY_ID`) REFERENCES `category` (`CATEGORY_ID`),
  CONSTRAINT `FK_i17o4f83r3q77m1wpwqxj3qeh` FOREIGN KEY (`LANGUAGE_ID`) REFERENCES `language` (`LANGUAGE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_description`
--

LOCK TABLES `category_description` WRITE;
/*!40000 ALTER TABLE `category_description` DISABLE KEYS */;
INSERT INTO `category_description` VALUES (750,'2018-03-19 10:13:40','2018-03-19 10:13:40',NULL,'','Hair traitment',NULL,'','','','','hair-traitment',1,1),(751,'2018-03-19 10:13:40','2018-03-19 10:13:40',NULL,'','Soin de cheveux',NULL,'','','','','soin-de-cheveux',2,1),(752,'2018-03-19 09:59:55','2018-03-19 09:59:55',NULL,'','Facial skin care',NULL,'','','','','facial-skin-care',1,2),(753,'2018-03-19 09:59:55','2018-03-19 09:59:55',NULL,'','Soin de visage',NULL,'','','','','soin-de-visage',2,2),(754,'2018-04-28 15:30:06','2018-04-28 15:30:06',NULL,'','Edible argan',NULL,'','','','','edible-argan',1,3),(755,'2018-03-19 11:31:29','2018-03-19 11:31:29',NULL,'','Argant comestible',NULL,'','','','','argant-comestible',2,3),(756,'2018-03-19 10:24:09','2018-03-19 10:24:09',NULL,'','Body care',NULL,'','','','','body-care',1,4),(757,'2018-03-19 10:24:09','2018-03-19 10:24:09',NULL,'','Soin de corps',NULL,'','','','','soin-de-corps',2,4),(758,'2018-03-19 10:34:24','2018-03-19 10:34:24',NULL,'','Beauty mask',NULL,'','','','','beauty-mask',1,5),(759,'2018-03-19 10:34:24','2018-03-19 10:34:24',NULL,'','Masque de beaute',NULL,'','','','','masque-de-beaute',2,5),(760,'2018-03-19 10:37:45','2018-03-19 10:37:45',NULL,'','Lip balm',NULL,'','','','','lip-balm',1,6),(761,'2018-03-19 10:37:45','2018-03-19 10:37:45',NULL,'','baume a levres',NULL,'','','','','baume-a-levres',2,6),(762,'2018-03-19 10:39:21','2018-03-19 10:39:21',NULL,'','Sunscreen',NULL,'','','','','sunscreen',1,7),(763,'2018-03-19 10:39:21','2018-03-19 10:39:21',NULL,'','Ecran solaire',NULL,'','','','','ecran-solaire',2,7),(764,'2018-03-19 10:40:03','2018-03-19 10:40:03',NULL,'','Argan oil',NULL,'','','','','argan-oil',1,8),(765,'2018-03-19 10:40:03','2018-03-19 10:40:03',NULL,'','Huile d\'argan',NULL,'','','','','huile-dargan',2,8),(766,'2018-03-19 10:44:20','2018-03-19 10:44:20',NULL,'','Shampoo',NULL,'','','','','shampoo',1,9),(767,'2018-03-19 10:44:20','2018-03-19 10:44:20',NULL,'','Shampoing',NULL,'','','','','shampoing',2,9),(768,'2018-03-19 10:46:21','2018-03-19 10:46:21',NULL,'','Hair conditioners',NULL,'','','','','hair-conditioners',1,10),(769,'2018-03-19 10:46:21','2018-03-19 10:46:21',NULL,'','masque capillaires',NULL,'','','','','masque-capillaires',2,10),(770,'2018-03-19 10:49:42','2018-03-19 10:49:42',NULL,'','Anti-ageing cream',NULL,'','','','','anti-ageing-cream',1,11),(771,'2018-03-19 10:49:42','2018-03-19 10:49:42',NULL,'','cream anti vieillissement',NULL,'','','','','cream-anti-vieillissement',2,11),(772,'2018-03-19 10:53:45','2018-03-19 10:53:45',NULL,'','Argan serum',NULL,'','','','','argan-serum',1,12),(773,'2018-03-19 10:53:45','2018-03-19 10:53:45',NULL,'','Serum d\'argan',NULL,'','','','','serum-dargan',2,12),(774,'2018-03-19 10:56:40','2018-03-19 10:56:40',NULL,'','Face cream',NULL,'','','','','face-cream',1,13),(775,'2018-03-19 10:56:40','2018-03-19 10:56:40',NULL,'','creme de visage',NULL,'','','','','creme-de-visage',2,13),(776,'2018-03-19 11:04:12','2018-03-19 11:04:12',NULL,'','Body Lotion',NULL,'','','','','body-lotion',1,14),(777,'2018-03-19 11:04:12','2018-03-19 11:04:12',NULL,'','Lotion pour le corps',NULL,'','','','','lotion-pour-le-corps',2,14),(778,'2018-03-19 11:01:55','2018-03-19 11:01:55',NULL,'','Soap',NULL,'','','','','soap',1,15),(779,'2018-03-19 11:01:55','2018-03-19 11:01:55',NULL,'','Savon',NULL,'','','','','savon',2,15),(780,'2018-03-19 11:14:23','2018-03-19 11:14:23',NULL,'','Hand & Foot treatment',NULL,'','','','','hand-foot-treatment',1,16),(781,'2018-03-19 11:14:23','2018-03-19 11:14:23',NULL,'','Traitement main & pied',NULL,'','','','','traitement-main-pied',2,16),(782,'2018-03-20 01:58:17','2018-03-20 01:58:17',NULL,'','Argan oil edible',NULL,'','','','','argan-oil-edible',1,17),(783,'2018-03-20 01:58:17','2018-03-20 01:58:17',NULL,'','Huile d\'argan comestible',NULL,'','','','','huile-dargan-comestible',2,17),(784,'2018-04-29 08:28:13','2018-04-29 08:28:13',NULL,'','Amlou',NULL,'','','','','amlou',1,18),(785,'2018-03-19 11:17:17','2018-03-19 11:17:17',NULL,'','Amlou',NULL,'','','','','amlou',2,18),(1600,'2018-04-28 15:22:19','2018-04-28 15:22:19',NULL,'','Food',NULL,'','','','','food',1,50),(1601,'2018-04-28 15:22:58','2018-04-28 15:22:58',NULL,'','For Home',NULL,'','','','','for-home',1,51),(1602,'2018-04-28 15:23:25','2018-04-28 15:23:26',NULL,'','fakya',NULL,'','','','','fakya',1,52),(1603,'2018-04-28 15:23:56','2018-04-28 15:23:56',NULL,'','Chocolate',NULL,'','','','','chocolate',1,53),(1604,'2018-04-28 15:24:23','2018-04-28 15:24:23',NULL,'','Dates',NULL,'','','','','dates',1,54),(1605,'2018-04-28 15:24:47','2018-04-28 15:24:47',NULL,'','Garden',NULL,'','','','','garden',1,55),(1607,'2018-04-28 15:25:47','2018-04-28 15:25:47',NULL,'','Books',NULL,'','','','','books',1,57),(1608,'2018-04-28 15:26:10','2018-04-28 15:26:11',NULL,'','plant',NULL,'','','','','plant',1,58),(1612,'2018-04-28 15:28:56','2018-04-28 15:28:57',NULL,'','Coran',NULL,'','','','','coran',1,62),(1613,'2018-04-28 15:30:40','2018-04-28 15:30:40',NULL,'','flowers',NULL,'','','','','flowers',1,63),(1800,'2018-04-29 08:32:08','2018-04-29 08:32:08',NULL,'','Home decor',NULL,'','','','','home-decor',1,100),(1801,'2018-04-29 08:33:46','2018-04-29 08:33:46',NULL,'','Clock',NULL,'','','','','clock',1,101),(1802,'2018-04-29 08:34:14','2018-04-29 08:34:14',NULL,'','Candles',NULL,'','','','','candles',1,102),(1803,'2018-04-29 08:37:22','2018-04-29 08:37:22',NULL,'','Morocco',NULL,'','','','','morocco',1,103),(1804,'2018-04-29 08:37:40','2018-04-29 08:37:40',NULL,'','Flag',NULL,'','','','','flag',1,104),(1805,'2018-04-29 08:37:55','2018-04-29 08:37:55',NULL,'','Painting',NULL,'','','','','painting',1,105);
/*!40000 ALTER TABLE `category_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `content`
--

DROP TABLE IF EXISTS `content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `content` (
  `CONTENT_ID` bigint(20) NOT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_MODIFIED` datetime DEFAULT NULL,
  `UPDT_ID` varchar(20) DEFAULT NULL,
  `CODE` varchar(100) NOT NULL,
  `CONTENT_POSITION` varchar(10) DEFAULT NULL,
  `CONTENT_TYPE` varchar(10) DEFAULT NULL,
  `LINK_TO_MENU` bit(1) DEFAULT NULL,
  `PRODUCT_GROUP` varchar(255) DEFAULT NULL,
  `SORT_ORDER` int(11) DEFAULT NULL,
  `VISIBLE` bit(1) DEFAULT NULL,
  `MERCHANT_ID` int(11) NOT NULL,
  PRIMARY KEY (`CONTENT_ID`),
  UNIQUE KEY `UK_t1v2ld0mrwviquqourql4uub0` (`MERCHANT_ID`,`CODE`),
  CONSTRAINT `FK_l2s62g3nt07rx5tdfhsap7t7h` FOREIGN KEY (`MERCHANT_ID`) REFERENCES `merchant_store` (`MERCHANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `content`
--

LOCK TABLES `content` WRITE;
/*!40000 ALTER TABLE `content` DISABLE KEYS */;
INSERT INTO `content` VALUES (50,NULL,NULL,NULL,'imageHome','LEFT','BOX','',NULL,0,'',1),(100,NULL,NULL,NULL,'LANDING_PAGE',NULL,'SECTION','\0',NULL,0,'',1);
/*!40000 ALTER TABLE `content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `content_description`
--

DROP TABLE IF EXISTS `content_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `content_description` (
  `DESCRIPTION_ID` bigint(20) NOT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_MODIFIED` datetime DEFAULT NULL,
  `UPDT_ID` varchar(20) DEFAULT NULL,
  `DESCRIPTION` longtext,
  `NAME` varchar(120) NOT NULL,
  `TITLE` varchar(100) DEFAULT NULL,
  `META_DESCRIPTION` varchar(255) DEFAULT NULL,
  `META_KEYWORDS` varchar(255) DEFAULT NULL,
  `META_TITLE` varchar(255) DEFAULT NULL,
  `SEF_URL` varchar(120) DEFAULT NULL,
  `LANGUAGE_ID` int(11) NOT NULL,
  `CONTENT_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`DESCRIPTION_ID`),
  UNIQUE KEY `UK_n0w5r7ctbp88r4rvk7ayklofm` (`CONTENT_ID`,`LANGUAGE_ID`),
  KEY `FK_f9ivw889okp1hujbvfq072ll2` (`LANGUAGE_ID`),
  CONSTRAINT `FK_4ds7m2jymx6n57xxp0qp268oi` FOREIGN KEY (`CONTENT_ID`) REFERENCES `content` (`CONTENT_ID`),
  CONSTRAINT `FK_f9ivw889okp1hujbvfq072ll2` FOREIGN KEY (`LANGUAGE_ID`) REFERENCES `language` (`LANGUAGE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `content_description`
--

LOCK TABLES `content_description` WRITE;
/*!40000 ALTER TABLE `content_description` DISABLE KEYS */;
INSERT INTO `content_description` VALUES (1150,'2018-03-27 01:35:40','2018-03-27 01:35:40',NULL,'<p>\r\n	<img alt=\"\" src=\"/static/files/DEFAULT/IMAGE/argan.1411634.w740.jpg\" style=\"width: 740px; height: 491px;\" /></p>\r\n<p>\r\n	<strong>Featured items :</strong></p>\r\n','imageHome',NULL,NULL,NULL,NULL,NULL,1,50),(1151,'2018-03-22 02:25:01','2018-03-22 02:25:01',NULL,'','page',NULL,NULL,NULL,NULL,NULL,2,50),(1200,'2018-03-21 04:35:19','2018-03-22 02:54:29',NULL,'','Moussahama',NULL,'Moussahama, argan, cooperatives, argan oil products','',NULL,NULL,1,100),(1201,'2018-03-21 04:35:19','2018-03-21 04:35:19',NULL,'','Page d\'acceuil',NULL,'','',NULL,NULL,2,100);
/*!40000 ALTER TABLE `content_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `country` (
  `COUNTRY_ID` int(11) NOT NULL,
  `COUNTRY_ISOCODE` varchar(255) NOT NULL,
  `COUNTRY_SUPPORTED` bit(1) DEFAULT NULL,
  `GEOZONE_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`COUNTRY_ID`),
  UNIQUE KEY `UK_dqb99v22pt27v0tgeqo958e6x` (`COUNTRY_ISOCODE`),
  KEY `FK_2lbinu04sww6iku2vis3qrj75` (`GEOZONE_ID`),
  CONSTRAINT `FK_2lbinu04sww6iku2vis3qrj75` FOREIGN KEY (`GEOZONE_ID`) REFERENCES `geozone` (`GEOZONE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (1,'AL','',NULL),(2,'DZ','',NULL),(3,'AR','',NULL),(4,'AU','',NULL),(5,'AT','',NULL),(6,'BH','',NULL),(7,'BY','',NULL),(8,'BE','',NULL),(9,'BO','',NULL),(10,'BA','',NULL),(11,'BR','',NULL),(12,'BG','',NULL),(13,'CA','',NULL),(14,'CL','',NULL),(15,'CN','',NULL),(16,'CO','',NULL),(17,'CR','',NULL),(18,'HR','',NULL),(19,'CU','',NULL),(20,'CY','',NULL),(21,'CZ','',NULL),(22,'DK','',NULL),(23,'DO','',NULL),(24,'EC','',NULL),(25,'EG','',NULL),(26,'SV','',NULL),(27,'EE','',NULL),(28,'FI','',NULL),(29,'FR','',NULL),(30,'DE','',NULL),(31,'GR','',NULL),(32,'GT','',NULL),(33,'HN','',NULL),(34,'HK','',NULL),(35,'HU','',NULL),(36,'IS','',NULL),(37,'IN','',NULL),(38,'ID','',NULL),(39,'IQ','',NULL),(40,'IE','',NULL),(41,'IL','',NULL),(42,'IT','',NULL),(43,'JP','',NULL),(44,'JO','',NULL),(45,'KR','',NULL),(46,'KW','',NULL),(47,'LV','',NULL),(48,'LB','',NULL),(49,'LY','',NULL),(50,'LT','',NULL),(51,'LU','',NULL),(52,'MK','',NULL),(53,'MY','',NULL),(54,'MT','',NULL),(55,'MX','',NULL),(56,'ME','',NULL),(57,'MA','',NULL),(58,'NL','',NULL),(59,'NZ','',NULL),(60,'NI','',NULL),(61,'NO','',NULL),(62,'OM','',NULL),(63,'PA','',NULL),(64,'PY','',NULL),(65,'PE','',NULL),(66,'PH','',NULL),(67,'PL','',NULL),(68,'PT','',NULL),(69,'PR','',NULL),(70,'QA','',NULL),(71,'RO','',NULL),(72,'RU','',NULL),(73,'SA','',NULL),(74,'RS','',NULL),(75,'SG','',NULL),(76,'SK','',NULL),(77,'SI','',NULL),(78,'ZA','',NULL),(79,'ES','',NULL),(80,'SD','',NULL),(81,'SE','',NULL),(82,'CH','',NULL),(83,'SY','',NULL),(84,'TW','',NULL),(85,'TH','',NULL),(86,'TN','',NULL),(87,'TR','',NULL),(88,'UA','',NULL),(89,'AE','',NULL),(90,'GB','',NULL),(91,'US','',NULL),(92,'UY','',NULL),(93,'VE','',NULL),(94,'VN','',NULL),(95,'YE','',NULL);
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country_description`
--

DROP TABLE IF EXISTS `country_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `country_description` (
  `DESCRIPTION_ID` bigint(20) NOT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_MODIFIED` datetime DEFAULT NULL,
  `UPDT_ID` varchar(20) DEFAULT NULL,
  `DESCRIPTION` longtext,
  `NAME` varchar(120) NOT NULL,
  `TITLE` varchar(100) DEFAULT NULL,
  `LANGUAGE_ID` int(11) NOT NULL,
  `COUNTRY_ID` int(11) NOT NULL,
  PRIMARY KEY (`DESCRIPTION_ID`),
  UNIQUE KEY `UK_t7nshki1rbp6157ed0v6cx4y4` (`COUNTRY_ID`,`LANGUAGE_ID`),
  KEY `FK_gxbf63g476n3u9ovtrlnjveuu` (`LANGUAGE_ID`),
  CONSTRAINT `FK_dlhty043oqoecr3f37uqvhj8w` FOREIGN KEY (`COUNTRY_ID`) REFERENCES `country` (`COUNTRY_ID`),
  CONSTRAINT `FK_gxbf63g476n3u9ovtrlnjveuu` FOREIGN KEY (`LANGUAGE_ID`) REFERENCES `language` (`LANGUAGE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country_description`
--

LOCK TABLES `country_description` WRITE;
/*!40000 ALTER TABLE `country_description` DISABLE KEYS */;
INSERT INTO `country_description` VALUES (1,'2018-03-13 09:09:43','2018-03-13 09:09:43',NULL,NULL,'Albania',NULL,1,1),(2,'2018-03-13 09:09:43','2018-03-13 09:09:43',NULL,NULL,'Albanie',NULL,2,1),(3,'2018-03-13 09:09:43','2018-03-13 09:09:43',NULL,NULL,'Албания',NULL,3,1),(4,'2018-03-13 09:09:43','2018-03-13 09:09:43',NULL,NULL,'Algeria',NULL,1,2),(5,'2018-03-13 09:09:43','2018-03-13 09:09:43',NULL,NULL,'Algérie',NULL,2,2),(6,'2018-03-13 09:09:43','2018-03-13 09:09:43',NULL,NULL,'Алжир',NULL,3,2),(7,'2018-03-13 09:09:43','2018-03-13 09:09:43',NULL,NULL,'Argentina',NULL,1,3),(8,'2018-03-13 09:09:43','2018-03-13 09:09:43',NULL,NULL,'Argentine',NULL,2,3),(9,'2018-03-13 09:09:43','2018-03-13 09:09:43',NULL,NULL,'Аргентина',NULL,3,3),(10,'2018-03-13 09:09:43','2018-03-13 09:09:43',NULL,NULL,'Australia',NULL,1,4),(11,'2018-03-13 09:09:43','2018-03-13 09:09:43',NULL,NULL,'Australie',NULL,2,4),(12,'2018-03-13 09:09:43','2018-03-13 09:09:43',NULL,NULL,'Австралия',NULL,3,4),(13,'2018-03-13 09:09:43','2018-03-13 09:09:43',NULL,NULL,'Austria',NULL,1,5),(14,'2018-03-13 09:09:43','2018-03-13 09:09:43',NULL,NULL,'Autriche',NULL,2,5),(15,'2018-03-13 09:09:43','2018-03-13 09:09:43',NULL,NULL,'Австрия',NULL,3,5),(16,'2018-03-13 09:09:43','2018-03-13 09:09:43',NULL,NULL,'Bahrain',NULL,1,6),(17,'2018-03-13 09:09:43','2018-03-13 09:09:43',NULL,NULL,'Bahreïn',NULL,2,6),(18,'2018-03-13 09:09:43','2018-03-13 09:09:43',NULL,NULL,'Бахрейн',NULL,3,6),(19,'2018-03-13 09:09:43','2018-03-13 09:09:43',NULL,NULL,'Belarus',NULL,1,7),(20,'2018-03-13 09:09:43','2018-03-13 09:09:43',NULL,NULL,'Biélo-Russie',NULL,2,7),(21,'2018-03-13 09:09:43','2018-03-13 09:09:43',NULL,NULL,'Беларусь',NULL,3,7),(22,'2018-03-13 09:09:43','2018-03-13 09:09:43',NULL,NULL,'Belgium',NULL,1,8),(23,'2018-03-13 09:09:43','2018-03-13 09:09:43',NULL,NULL,'Belgique',NULL,2,8),(24,'2018-03-13 09:09:43','2018-03-13 09:09:43',NULL,NULL,'Бельгия',NULL,3,8),(25,'2018-03-13 09:09:43','2018-03-13 09:09:43',NULL,NULL,'Bolivia',NULL,1,9),(26,'2018-03-13 09:09:43','2018-03-13 09:09:43',NULL,NULL,'Bolivie',NULL,2,9),(27,'2018-03-13 09:09:43','2018-03-13 09:09:43',NULL,NULL,'Боливия',NULL,3,9),(28,'2018-03-13 09:09:43','2018-03-13 09:09:43',NULL,NULL,'Bosnia and Herzegovina',NULL,1,10),(29,'2018-03-13 09:09:43','2018-03-13 09:09:43',NULL,NULL,'Bosnie-Herzégovine',NULL,2,10),(30,'2018-03-13 09:09:43','2018-03-13 09:09:43',NULL,NULL,'Босния и Герцеговина',NULL,3,10),(31,'2018-03-13 09:09:43','2018-03-13 09:09:43',NULL,NULL,'Brazil',NULL,1,11),(32,'2018-03-13 09:09:43','2018-03-13 09:09:43',NULL,NULL,'Brésil',NULL,2,11),(33,'2018-03-13 09:09:43','2018-03-13 09:09:43',NULL,NULL,'Бразилия',NULL,3,11),(34,'2018-03-13 09:09:43','2018-03-13 09:09:43',NULL,NULL,'Bulgaria',NULL,1,12),(35,'2018-03-13 09:09:43','2018-03-13 09:09:43',NULL,NULL,'Bulgarie',NULL,2,12),(36,'2018-03-13 09:09:43','2018-03-13 09:09:43',NULL,NULL,'Болгария',NULL,3,12),(37,'2018-03-13 09:09:43','2018-03-13 09:09:43',NULL,NULL,'Canada',NULL,1,13),(38,'2018-03-13 09:09:43','2018-03-13 09:09:43',NULL,NULL,'Canada',NULL,2,13),(39,'2018-03-13 09:09:43','2018-03-13 09:09:43',NULL,NULL,'Канада',NULL,3,13),(40,'2018-03-13 09:09:43','2018-03-13 09:09:43',NULL,NULL,'Chile',NULL,1,14),(41,'2018-03-13 09:09:43','2018-03-13 09:09:43',NULL,NULL,'Chili',NULL,2,14),(42,'2018-03-13 09:09:43','2018-03-13 09:09:43',NULL,NULL,'Чили',NULL,3,14),(43,'2018-03-13 09:09:44','2018-03-13 09:09:44',NULL,NULL,'China',NULL,1,15),(44,'2018-03-13 09:09:44','2018-03-13 09:09:44',NULL,NULL,'Chine',NULL,2,15),(45,'2018-03-13 09:09:44','2018-03-13 09:09:44',NULL,NULL,'Китай',NULL,3,15),(46,'2018-03-13 09:09:44','2018-03-13 09:09:44',NULL,NULL,'Colombia',NULL,1,16),(47,'2018-03-13 09:09:44','2018-03-13 09:09:44',NULL,NULL,'Colombie',NULL,2,16),(48,'2018-03-13 09:09:44','2018-03-13 09:09:44',NULL,NULL,'Колумбия',NULL,3,16),(49,'2018-03-13 09:09:44','2018-03-13 09:09:44',NULL,NULL,'Costa Rica',NULL,1,17),(50,'2018-03-13 09:09:44','2018-03-13 09:09:44',NULL,NULL,'Costa Rica',NULL,2,17),(51,'2018-03-13 09:09:44','2018-03-13 09:09:44',NULL,NULL,'Коста-Рика',NULL,3,17),(52,'2018-03-13 09:09:44','2018-03-13 09:09:44',NULL,NULL,'Croatia',NULL,1,18),(53,'2018-03-13 09:09:44','2018-03-13 09:09:44',NULL,NULL,'Croatie',NULL,2,18),(54,'2018-03-13 09:09:44','2018-03-13 09:09:44',NULL,NULL,'Хорватия',NULL,3,18),(55,'2018-03-13 09:09:44','2018-03-13 09:09:44',NULL,NULL,'Cuba',NULL,1,19),(56,'2018-03-13 09:09:44','2018-03-13 09:09:44',NULL,NULL,'Cuba',NULL,2,19),(57,'2018-03-13 09:09:44','2018-03-13 09:09:44',NULL,NULL,'Куба',NULL,3,19),(58,'2018-03-13 09:09:44','2018-03-13 09:09:44',NULL,NULL,'Cyprus',NULL,1,20),(59,'2018-03-13 09:09:44','2018-03-13 09:09:44',NULL,NULL,'Chypre',NULL,2,20),(60,'2018-03-13 09:09:44','2018-03-13 09:09:44',NULL,NULL,'Кипр',NULL,3,20),(61,'2018-03-13 09:09:44','2018-03-13 09:09:44',NULL,NULL,'Czech Republic',NULL,1,21),(62,'2018-03-13 09:09:44','2018-03-13 09:09:44',NULL,NULL,'République Tchèque',NULL,2,21),(63,'2018-03-13 09:09:44','2018-03-13 09:09:44',NULL,NULL,'Чехия',NULL,3,21),(64,'2018-03-13 09:09:44','2018-03-13 09:09:44',NULL,NULL,'Denmark',NULL,1,22),(65,'2018-03-13 09:09:44','2018-03-13 09:09:44',NULL,NULL,'Danemark',NULL,2,22),(66,'2018-03-13 09:09:44','2018-03-13 09:09:44',NULL,NULL,'Дания',NULL,3,22),(67,'2018-03-13 09:09:44','2018-03-13 09:09:44',NULL,NULL,'Dominican Republic',NULL,1,23),(68,'2018-03-13 09:09:44','2018-03-13 09:09:44',NULL,NULL,'République Dominicaine',NULL,2,23),(69,'2018-03-13 09:09:44','2018-03-13 09:09:44',NULL,NULL,'Доминиканская Республика',NULL,3,23),(70,'2018-03-13 09:09:44','2018-03-13 09:09:44',NULL,NULL,'Ecuador',NULL,1,24),(71,'2018-03-13 09:09:44','2018-03-13 09:09:44',NULL,NULL,'Equateur',NULL,2,24),(72,'2018-03-13 09:09:44','2018-03-13 09:09:44',NULL,NULL,'Эквадор',NULL,3,24),(73,'2018-03-13 09:09:44','2018-03-13 09:09:44',NULL,NULL,'Egypt',NULL,1,25),(74,'2018-03-13 09:09:44','2018-03-13 09:09:44',NULL,NULL,'Egypte',NULL,2,25),(75,'2018-03-13 09:09:44','2018-03-13 09:09:44',NULL,NULL,'Египт',NULL,3,25),(76,'2018-03-13 09:09:44','2018-03-13 09:09:44',NULL,NULL,'El Salvador',NULL,1,26),(77,'2018-03-13 09:09:44','2018-03-13 09:09:44',NULL,NULL,'El Salvador',NULL,2,26),(78,'2018-03-13 09:09:44','2018-03-13 09:09:44',NULL,NULL,'Сальвадор',NULL,3,26),(79,'2018-03-13 09:09:44','2018-03-13 09:09:44',NULL,NULL,'Estonia',NULL,1,27),(80,'2018-03-13 09:09:44','2018-03-13 09:09:44',NULL,NULL,'Estonie',NULL,2,27),(81,'2018-03-13 09:09:44','2018-03-13 09:09:44',NULL,NULL,'Эстония',NULL,3,27),(82,'2018-03-13 09:09:44','2018-03-13 09:09:44',NULL,NULL,'Finland',NULL,1,28),(83,'2018-03-13 09:09:44','2018-03-13 09:09:44',NULL,NULL,'Finlande',NULL,2,28),(84,'2018-03-13 09:09:44','2018-03-13 09:09:44',NULL,NULL,'Финляндия',NULL,3,28),(85,'2018-03-13 09:09:44','2018-03-13 09:09:44',NULL,NULL,'France',NULL,1,29),(86,'2018-03-13 09:09:44','2018-03-13 09:09:44',NULL,NULL,'France',NULL,2,29),(87,'2018-03-13 09:09:44','2018-03-13 09:09:44',NULL,NULL,'Франция',NULL,3,29),(88,'2018-03-13 09:09:44','2018-03-13 09:09:44',NULL,NULL,'Germany',NULL,1,30),(89,'2018-03-13 09:09:44','2018-03-13 09:09:44',NULL,NULL,'Allemagne',NULL,2,30),(90,'2018-03-13 09:09:44','2018-03-13 09:09:44',NULL,NULL,'Германия',NULL,3,30),(91,'2018-03-13 09:09:44','2018-03-13 09:09:44',NULL,NULL,'Greece',NULL,1,31),(92,'2018-03-13 09:09:44','2018-03-13 09:09:44',NULL,NULL,'Grèce',NULL,2,31),(93,'2018-03-13 09:09:44','2018-03-13 09:09:44',NULL,NULL,'Греция',NULL,3,31),(94,'2018-03-13 09:09:44','2018-03-13 09:09:44',NULL,NULL,'Guatemala',NULL,1,32),(95,'2018-03-13 09:09:44','2018-03-13 09:09:44',NULL,NULL,'Guatemala',NULL,2,32),(96,'2018-03-13 09:09:44','2018-03-13 09:09:44',NULL,NULL,'Гватемала',NULL,3,32),(97,'2018-03-13 09:09:44','2018-03-13 09:09:44',NULL,NULL,'Honduras',NULL,1,33),(98,'2018-03-13 09:09:44','2018-03-13 09:09:44',NULL,NULL,'Honduras',NULL,2,33),(99,'2018-03-13 09:09:44','2018-03-13 09:09:44',NULL,NULL,'Гондурас',NULL,3,33),(100,'2018-03-13 09:09:44','2018-03-13 09:09:44',NULL,NULL,'Hong Kong',NULL,1,34),(101,'2018-03-13 09:09:44','2018-03-13 09:09:44',NULL,NULL,'Hong-Kong',NULL,2,34),(102,'2018-03-13 09:09:44','2018-03-13 09:09:44',NULL,NULL,'Гонконг',NULL,3,34),(103,'2018-03-13 09:09:44','2018-03-13 09:09:44',NULL,NULL,'Hungary',NULL,1,35),(104,'2018-03-13 09:09:44','2018-03-13 09:09:44',NULL,NULL,'Hongrie',NULL,2,35),(105,'2018-03-13 09:09:44','2018-03-13 09:09:44',NULL,NULL,'Венгрия',NULL,3,35),(106,'2018-03-13 09:09:44','2018-03-13 09:09:44',NULL,NULL,'Iceland',NULL,1,36),(107,'2018-03-13 09:09:44','2018-03-13 09:09:44',NULL,NULL,'Islande',NULL,2,36),(108,'2018-03-13 09:09:44','2018-03-13 09:09:44',NULL,NULL,'Исландия',NULL,3,36),(109,'2018-03-13 09:09:44','2018-03-13 09:09:44',NULL,NULL,'India',NULL,1,37),(110,'2018-03-13 09:09:44','2018-03-13 09:09:44',NULL,NULL,'Inde',NULL,2,37),(111,'2018-03-13 09:09:44','2018-03-13 09:09:44',NULL,NULL,'Индия',NULL,3,37),(112,'2018-03-13 09:09:44','2018-03-13 09:09:44',NULL,NULL,'Indonesia',NULL,1,38),(113,'2018-03-13 09:09:44','2018-03-13 09:09:44',NULL,NULL,'Indonésie',NULL,2,38),(114,'2018-03-13 09:09:44','2018-03-13 09:09:44',NULL,NULL,'Индонезия',NULL,3,38),(115,'2018-03-13 09:09:44','2018-03-13 09:09:44',NULL,NULL,'Iraq',NULL,1,39),(116,'2018-03-13 09:09:44','2018-03-13 09:09:44',NULL,NULL,'Irak',NULL,2,39),(117,'2018-03-13 09:09:44','2018-03-13 09:09:44',NULL,NULL,'Ирак',NULL,3,39),(118,'2018-03-13 09:09:44','2018-03-13 09:09:44',NULL,NULL,'Ireland',NULL,1,40),(119,'2018-03-13 09:09:44','2018-03-13 09:09:44',NULL,NULL,'Irlande',NULL,2,40),(120,'2018-03-13 09:09:44','2018-03-13 09:09:44',NULL,NULL,'Ирландия',NULL,3,40),(121,'2018-03-13 09:09:44','2018-03-13 09:09:44',NULL,NULL,'Israel',NULL,1,41),(122,'2018-03-13 09:09:44','2018-03-13 09:09:44',NULL,NULL,'Israël',NULL,2,41),(123,'2018-03-13 09:09:44','2018-03-13 09:09:44',NULL,NULL,'Израиль',NULL,3,41),(124,'2018-03-13 09:09:44','2018-03-13 09:09:44',NULL,NULL,'Italy',NULL,1,42),(125,'2018-03-13 09:09:44','2018-03-13 09:09:44',NULL,NULL,'Italie',NULL,2,42),(126,'2018-03-13 09:09:44','2018-03-13 09:09:44',NULL,NULL,'Италия',NULL,3,42),(127,'2018-03-13 09:09:44','2018-03-13 09:09:44',NULL,NULL,'Japan',NULL,1,43),(128,'2018-03-13 09:09:44','2018-03-13 09:09:44',NULL,NULL,'Japon',NULL,2,43),(129,'2018-03-13 09:09:44','2018-03-13 09:09:44',NULL,NULL,'Япония',NULL,3,43),(130,'2018-03-13 09:09:44','2018-03-13 09:09:44',NULL,NULL,'Jordan',NULL,1,44),(131,'2018-03-13 09:09:44','2018-03-13 09:09:44',NULL,NULL,'Jordanie',NULL,2,44),(132,'2018-03-13 09:09:44','2018-03-13 09:09:44',NULL,NULL,'Иордания',NULL,3,44),(133,'2018-03-13 09:09:44','2018-03-13 09:09:44',NULL,NULL,'South Korea',NULL,1,45),(134,'2018-03-13 09:09:44','2018-03-13 09:09:44',NULL,NULL,'Corée du Sud',NULL,2,45),(135,'2018-03-13 09:09:44','2018-03-13 09:09:44',NULL,NULL,'Южная Корея',NULL,3,45),(136,'2018-03-13 09:09:44','2018-03-13 09:09:44',NULL,NULL,'Kuwait',NULL,1,46),(137,'2018-03-13 09:09:44','2018-03-13 09:09:44',NULL,NULL,'Koweit',NULL,2,46),(138,'2018-03-13 09:09:44','2018-03-13 09:09:44',NULL,NULL,'Кувейт',NULL,3,46),(139,'2018-03-13 09:09:44','2018-03-13 09:09:44',NULL,NULL,'Latvia',NULL,1,47),(140,'2018-03-13 09:09:44','2018-03-13 09:09:44',NULL,NULL,'Lettonie',NULL,2,47),(141,'2018-03-13 09:09:44','2018-03-13 09:09:44',NULL,NULL,'Латвия',NULL,3,47),(142,'2018-03-13 09:09:44','2018-03-13 09:09:44',NULL,NULL,'Lebanon',NULL,1,48),(143,'2018-03-13 09:09:44','2018-03-13 09:09:44',NULL,NULL,'Liban',NULL,2,48),(144,'2018-03-13 09:09:44','2018-03-13 09:09:44',NULL,NULL,'Ливан',NULL,3,48),(145,'2018-03-13 09:09:44','2018-03-13 09:09:44',NULL,NULL,'Libya',NULL,1,49),(146,'2018-03-13 09:09:44','2018-03-13 09:09:44',NULL,NULL,'Libye',NULL,2,49),(147,'2018-03-13 09:09:44','2018-03-13 09:09:44',NULL,NULL,'Ливия',NULL,3,49),(148,'2018-03-13 09:09:44','2018-03-13 09:09:44',NULL,NULL,'Lithuania',NULL,1,50),(149,'2018-03-13 09:09:44','2018-03-13 09:09:44',NULL,NULL,'Lithuanie',NULL,2,50),(150,'2018-03-13 09:09:44','2018-03-13 09:09:44',NULL,NULL,'Литва',NULL,3,50),(151,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Luxembourg',NULL,1,51),(152,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Luxembourg',NULL,2,51),(153,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Люксембург',NULL,3,51),(154,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Macedonia',NULL,1,52),(155,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Macédoine',NULL,2,52),(156,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Македония',NULL,3,52),(157,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Malaysia',NULL,1,53),(158,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Malaisie',NULL,2,53),(159,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Малайзия',NULL,3,53),(160,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Malta',NULL,1,54),(161,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Malte',NULL,2,54),(162,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Мальта',NULL,3,54),(163,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Mexico',NULL,1,55),(164,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Mexique',NULL,2,55),(165,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Мексика',NULL,3,55),(166,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Montenegro',NULL,1,56),(167,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Monténégro',NULL,2,56),(168,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Montenegro',NULL,3,56),(169,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Morocco',NULL,1,57),(170,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Maroc',NULL,2,57),(171,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Марокко',NULL,3,57),(172,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Netherlands',NULL,1,58),(173,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Pays-Bas',NULL,2,58),(174,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Нидерланды',NULL,3,58),(175,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'New Zealand',NULL,1,59),(176,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Nouvelle-Zélande',NULL,2,59),(177,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Новая Зеландия',NULL,3,59),(178,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Nicaragua',NULL,1,60),(179,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Nicaragua',NULL,2,60),(180,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Никарагуа',NULL,3,60),(181,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Norway',NULL,1,61),(182,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Norvège',NULL,2,61),(183,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Норвегия',NULL,3,61),(184,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Oman',NULL,1,62),(185,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Oman',NULL,2,62),(186,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Оман',NULL,3,62),(187,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Panama',NULL,1,63),(188,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Panama',NULL,2,63),(189,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Панама',NULL,3,63),(190,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Paraguay',NULL,1,64),(191,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Paraguay',NULL,2,64),(192,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Парагвай',NULL,3,64),(193,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Peru',NULL,1,65),(194,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Pérou',NULL,2,65),(195,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Перу',NULL,3,65),(196,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Philippines',NULL,1,66),(197,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Philippines',NULL,2,66),(198,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Филиппины',NULL,3,66),(199,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Poland',NULL,1,67),(200,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Pologne',NULL,2,67),(201,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Польша',NULL,3,67),(202,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Portugal',NULL,1,68),(203,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Portugal',NULL,2,68),(204,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Португалия',NULL,3,68),(205,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Puerto Rico',NULL,1,69),(206,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Porto Rico',NULL,2,69),(207,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Пуэрто-Рико',NULL,3,69),(208,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Qatar',NULL,1,70),(209,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Qatar',NULL,2,70),(210,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Катар',NULL,3,70),(211,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Romania',NULL,1,71),(212,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Roumanie',NULL,2,71),(213,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Румыния',NULL,3,71),(214,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Russia',NULL,1,72),(215,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Russie',NULL,2,72),(216,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Россия',NULL,3,72),(217,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Saudi Arabia',NULL,1,73),(218,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Arabie Saoudite',NULL,2,73),(219,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Саудовская Аравия',NULL,3,73),(220,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Serbia',NULL,1,74),(221,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Serbie',NULL,2,74),(222,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Serbia',NULL,3,74),(223,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Singapore',NULL,1,75),(224,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Singapour',NULL,2,75),(225,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Сингапур',NULL,3,75),(226,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Slovakia',NULL,1,76),(227,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Slovaquie',NULL,2,76),(228,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Словакия',NULL,3,76),(229,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Slovenia',NULL,1,77),(230,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Slovénie',NULL,2,77),(231,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Словения',NULL,3,77),(232,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'South Africa',NULL,1,78),(233,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Afrique du Sud',NULL,2,78),(234,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Южная Африка',NULL,3,78),(235,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Spain',NULL,1,79),(236,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Espagne',NULL,2,79),(237,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Испания',NULL,3,79),(238,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Sudan',NULL,1,80),(239,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Soudan',NULL,2,80),(240,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Судан',NULL,3,80),(241,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Sweden',NULL,1,81),(242,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Suède',NULL,2,81),(243,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Швеция',NULL,3,81),(244,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Switzerland',NULL,1,82),(245,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Suisse',NULL,2,82),(246,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Швейцария',NULL,3,82),(247,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Syria',NULL,1,83),(248,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Syrie',NULL,2,83),(249,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Сирия',NULL,3,83),(250,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Taiwan',NULL,1,84),(251,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Taiwan',NULL,2,84),(252,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Тайвань',NULL,3,84),(253,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Thailand',NULL,1,85),(254,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Thaïlande',NULL,2,85),(255,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Таиланд',NULL,3,85),(256,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Tunisia',NULL,1,86),(257,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Tunisie',NULL,2,86),(258,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Тунис',NULL,3,86),(259,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Turkey',NULL,1,87),(260,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Turquie',NULL,2,87),(261,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Турция',NULL,3,87),(262,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Ukraine',NULL,1,88),(263,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Ukraine',NULL,2,88),(264,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Украина',NULL,3,88),(265,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'United Arab Emirates',NULL,1,89),(266,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Emirats Arabes Unis',NULL,2,89),(267,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Объединенные Арабские Эмираты',NULL,3,89),(268,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'United Kingdom',NULL,1,90),(269,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Royaume-Uni',NULL,2,90),(270,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Соединенное Королевство',NULL,3,90),(271,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'United States',NULL,1,91),(272,'2018-03-13 09:09:45','2018-03-13 09:09:45',NULL,NULL,'Etats-Unis',NULL,2,91),(273,'2018-03-13 09:09:46','2018-03-13 09:09:46',NULL,NULL,'Соединенные Штаты',NULL,3,91),(274,'2018-03-13 09:09:46','2018-03-13 09:09:46',NULL,NULL,'Uruguay',NULL,1,92),(275,'2018-03-13 09:09:46','2018-03-13 09:09:46',NULL,NULL,'Uruguay',NULL,2,92),(276,'2018-03-13 09:09:46','2018-03-13 09:09:46',NULL,NULL,'Уругвай',NULL,3,92),(277,'2018-03-13 09:09:46','2018-03-13 09:09:46',NULL,NULL,'Venezuela',NULL,1,93),(278,'2018-03-13 09:09:46','2018-03-13 09:09:46',NULL,NULL,'Vénézuela',NULL,2,93),(279,'2018-03-13 09:09:46','2018-03-13 09:09:46',NULL,NULL,'Венесуэла',NULL,3,93),(280,'2018-03-13 09:09:46','2018-03-13 09:09:46',NULL,NULL,'Vietnam',NULL,1,94),(281,'2018-03-13 09:09:46','2018-03-13 09:09:46',NULL,NULL,'Vietnam',NULL,2,94),(282,'2018-03-13 09:09:46','2018-03-13 09:09:46',NULL,NULL,'Вьетнам',NULL,3,94),(283,'2018-03-13 09:09:46','2018-03-13 09:09:46',NULL,NULL,'Yemen',NULL,1,95),(284,'2018-03-13 09:09:46','2018-03-13 09:09:46',NULL,NULL,'Yémen',NULL,2,95),(285,'2018-03-13 09:09:46','2018-03-13 09:09:46',NULL,NULL,'Йемен',NULL,3,95);
/*!40000 ALTER TABLE `country_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currency`
--

DROP TABLE IF EXISTS `currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `currency` (
  `CURRENCY_ID` bigint(20) NOT NULL,
  `CURRENCY_CODE` varchar(255) DEFAULT NULL,
  `CURRENCY_CURRENCY_CODE` varchar(255) NOT NULL,
  `CURRENCY_NAME` varchar(255) DEFAULT NULL,
  `CURRENCY_SUPPORTED` bit(1) DEFAULT NULL,
  PRIMARY KEY (`CURRENCY_ID`),
  UNIQUE KEY `UK_m7ku15ekud52vp67ry73a36te` (`CURRENCY_CURRENCY_CODE`),
  UNIQUE KEY `UK_1ubr7n96hjajamtggqp090a4x` (`CURRENCY_CODE`),
  UNIQUE KEY `UK_7r1k69cbk5giewqr5c9r4v6f` (`CURRENCY_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currency`
--

LOCK TABLES `currency` WRITE;
/*!40000 ALTER TABLE `currency` DISABLE KEYS */;
INSERT INTO `currency` VALUES (1,'FJD','FJD','FJD',''),(2,'MXN','MXN','MXN',''),(3,'STD','STD','STD',''),(4,'LVL','LVL','LVL',''),(5,'SCR','SCR','SCR',''),(6,'CDF','CDF','CDF',''),(7,'BBD','BBD','BBD',''),(8,'GTQ','GTQ','GTQ',''),(9,'CLP','CLP','CLP',''),(10,'HNL','HNL','HNL',''),(11,'UGX','UGX','UGX',''),(12,'ZAR','ZAR','ZAR',''),(13,'MXV','MXV','MXV',''),(14,'TND','TND','TND',''),(15,'BSD','BSD','BSD',''),(16,'SLL','SLL','SLL',''),(17,'SDG','SDG','SDG',''),(18,'IQD','IQD','IQD',''),(19,'CUP','CUP','CUP',''),(20,'GMD','GMD','GMD',''),(21,'TWD','TWD','TWD',''),(22,'RSD','RSD','RSD',''),(23,'DOP','DOP','DOP',''),(24,'KMF','KMF','KMF',''),(25,'MYR','MYR','MYR',''),(26,'FKP','FKP','FKP',''),(27,'XOF','XOF','XOF',''),(28,'GEL','GEL','GEL',''),(29,'UYU','UYU','UYU',''),(30,'MAD','MAD','MAD',''),(31,'CVE','CVE','CVE',''),(32,'AZN','AZN','AZN',''),(33,'OMR','OMR','OMR',''),(34,'PGK','PGK','PGK',''),(35,'KES','KES','KES',''),(36,'SEK','SEK','SEK',''),(37,'BTN','BTN','BTN',''),(38,'UAH','UAH','UAH',''),(39,'GNF','GNF','GNF',''),(40,'ERN','ERN','ERN',''),(41,'MZN','MZN','MZN',''),(42,'SVC','SVC','SVC',''),(43,'ARS','ARS','ARS',''),(44,'QAR','QAR','QAR',''),(45,'IRR','IRR','IRR',''),(46,'MRO','MRO','MRO',''),(47,'CNY','CNY','CNY',''),(48,'XPF','XPF','XPF',''),(49,'THB','THB','THB',''),(50,'UZS','UZS','UZS',''),(51,'BDT','BDT','BDT',''),(52,'LYD','LYD','LYD',''),(53,'BMD','BMD','BMD',''),(54,'KWD','KWD','KWD',''),(55,'PHP','PHP','PHP',''),(56,'RUB','RUB','RUB',''),(57,'PYG','PYG','PYG',''),(58,'ISK','ISK','ISK',''),(59,'JMD','JMD','JMD',''),(60,'COP','COP','COP',''),(61,'USD','USD','USD',''),(62,'MKD','MKD','MKD',''),(63,'DZD','DZD','DZD',''),(64,'PAB','PAB','PAB',''),(65,'SGD','SGD','SGD',''),(66,'ETB','ETB','ETB',''),(67,'KGS','KGS','KGS',''),(68,'SOS','SOS','SOS',''),(69,'VUV','VUV','VUV',''),(70,'VEF','VEF','VEF',''),(71,'LAK','LAK','LAK',''),(72,'BND','BND','BND',''),(73,'ZMK','ZMK','ZMK',''),(74,'XAF','XAF','XAF',''),(75,'LRD','LRD','LRD',''),(76,'HRK','HRK','HRK',''),(77,'CHF','CHF','CHF',''),(78,'ALL','ALL','ALL',''),(79,'DJF','DJF','DJF',''),(80,'TZS','TZS','TZS',''),(81,'VND','VND','VND',''),(82,'AUD','AUD','AUD',''),(83,'ILS','ILS','ILS',''),(84,'GHS','GHS','GHS',''),(85,'GYD','GYD','GYD',''),(86,'KPW','KPW','KPW',''),(87,'BOB','BOB','BOB',''),(88,'KHR','KHR','KHR',''),(89,'MDL','MDL','MDL',''),(90,'IDR','IDR','IDR',''),(91,'KYD','KYD','KYD',''),(92,'AMD','AMD','AMD',''),(93,'BWP','BWP','BWP',''),(94,'SHP','SHP','SHP',''),(95,'TRY','TRY','TRY',''),(96,'LBP','LBP','LBP',''),(97,'TJS','TJS','TJS',''),(98,'JOD','JOD','JOD',''),(99,'HKD','HKD','HKD',''),(100,'RWF','RWF','RWF',''),(101,'AED','AED','AED',''),(102,'EUR','EUR','EUR',''),(103,'LSL','LSL','LSL',''),(104,'DKK','DKK','DKK',''),(105,'CAD','CAD','CAD',''),(106,'BOV','BOV','BOV',''),(107,'BGN','BGN','BGN',''),(108,'MMK','MMK','MMK',''),(109,'NOK','NOK','NOK',''),(110,'MUR','MUR','MUR',''),(111,'SYP','SYP','SYP',''),(112,'GIP','GIP','GIP',''),(113,'RON','RON','RON',''),(114,'LKR','LKR','LKR',''),(115,'NGN','NGN','NGN',''),(116,'CRC','CRC','CRC',''),(117,'CZK','CZK','CZK',''),(118,'PKR','PKR','PKR',''),(119,'XCD','XCD','XCD',''),(120,'ANG','ANG','ANG',''),(121,'HTG','HTG','HTG',''),(122,'BHD','BHD','BHD',''),(123,'KZT','KZT','KZT',''),(124,'SRD','SRD','SRD',''),(125,'SZL','SZL','SZL',''),(126,'LTL','LTL','LTL',''),(127,'SAR','SAR','SAR',''),(128,'TTD','TTD','TTD',''),(129,'YER','YER','YER',''),(130,'MVR','MVR','MVR',''),(131,'AFN','AFN','AFN',''),(132,'INR','INR','INR',''),(133,'AWG','AWG','AWG',''),(134,'KRW','KRW','KRW',''),(135,'NPR','NPR','NPR',''),(136,'JPY','JPY','JPY',''),(137,'MNT','MNT','MNT',''),(138,'AOA','AOA','AOA',''),(139,'PLN','PLN','PLN',''),(140,'GBP','GBP','GBP',''),(141,'SBD','SBD','SBD',''),(142,'HUF','HUF','HUF',''),(143,'BYR','BYR','BYR',''),(144,'BIF','BIF','BIF',''),(145,'MWK','MWK','MWK',''),(146,'MGA','MGA','MGA',''),(147,'XDR','XDR','XDR',''),(148,'BZD','BZD','BZD',''),(149,'BAM','BAM','BAM',''),(150,'EGP','EGP','EGP',''),(151,'MOP','MOP','MOP',''),(152,'NAD','NAD','NAD',''),(153,'NIO','NIO','NIO',''),(154,'PEN','PEN','PEN',''),(155,'NZD','NZD','NZD',''),(156,'WST','WST','WST',''),(157,'CLF','CLF','CLF',''),(158,'BRL','BRL','BRL','');
/*!40000 ALTER TABLE `currency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `CUSTOMER_ID` bigint(20) NOT NULL,
  `CUSTOMER_ANONYMOUS` bit(1) DEFAULT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_MODIFIED` datetime DEFAULT NULL,
  `UPDT_ID` varchar(20) DEFAULT NULL,
  `BILLING_STREET_ADDRESS` varchar(256) DEFAULT NULL,
  `BILLING_CITY` varchar(100) DEFAULT NULL,
  `BILLING_COMPANY` varchar(100) DEFAULT NULL,
  `BILLING_FIRST_NAME` varchar(64) NOT NULL,
  `BILLING_LAST_NAME` varchar(64) NOT NULL,
  `LATITUDE` varchar(100) DEFAULT NULL,
  `LONGITUDE` varchar(100) DEFAULT NULL,
  `BILLING_POSTCODE` varchar(20) DEFAULT NULL,
  `BILLING_STATE` varchar(100) DEFAULT NULL,
  `BILLING_TELEPHONE` varchar(32) DEFAULT NULL,
  `CUSTOMER_COMPANY` varchar(100) DEFAULT NULL,
  `REVIEW_AVG` decimal(19,2) DEFAULT NULL,
  `REVIEW_COUNT` int(11) DEFAULT NULL,
  `CUSTOMER_DOB` datetime DEFAULT NULL,
  `DELIVERY_STREET_ADDRESS` varchar(256) DEFAULT NULL,
  `DELIVERY_CITY` varchar(100) DEFAULT NULL,
  `DELIVERY_COMPANY` varchar(100) DEFAULT NULL,
  `DELIVERY_FIRST_NAME` varchar(64) DEFAULT NULL,
  `DELIVERY_LAST_NAME` varchar(64) DEFAULT NULL,
  `DELIVERY_POSTCODE` varchar(20) DEFAULT NULL,
  `DELIVERY_STATE` varchar(100) DEFAULT NULL,
  `DELIVERY_TELEPHONE` varchar(32) DEFAULT NULL,
  `CUSTOMER_EMAIL_ADDRESS` varchar(96) NOT NULL,
  `CUSTOMER_GENDER` varchar(1) DEFAULT NULL,
  `CUSTOMER_NICK` varchar(96) DEFAULT NULL,
  `CUSTOMER_PASSWORD` varchar(60) DEFAULT NULL,
  `PROVIDER` varchar(255) DEFAULT NULL,
  `BILLING_COUNTRY_ID` int(11) NOT NULL,
  `BILLING_ZONE_ID` bigint(20) DEFAULT NULL,
  `LANGUAGE_ID` int(11) NOT NULL,
  `DELIVERY_COUNTRY_ID` int(11) DEFAULT NULL,
  `DELIVERY_ZONE_ID` bigint(20) DEFAULT NULL,
  `MERCHANT_ID` int(11) NOT NULL,
  PRIMARY KEY (`CUSTOMER_ID`),
  KEY `FK_3j13fd0w8fcubko0fdv53w18j` (`BILLING_COUNTRY_ID`),
  KEY `FK_72ork8lgtlvgwi0iwf0khdhv7` (`BILLING_ZONE_ID`),
  KEY `FK_eyy3eqwvkp4nudh4r02afghhs` (`LANGUAGE_ID`),
  KEY `FK_k7gt46oima5w2h4wq84hhg19c` (`DELIVERY_COUNTRY_ID`),
  KEY `FK_2atbo3aje6mi15gk8p7a5qvxb` (`DELIVERY_ZONE_ID`),
  KEY `FK_j00dj3m9tcac4sua8ajqln77a` (`MERCHANT_ID`),
  CONSTRAINT `FK_2atbo3aje6mi15gk8p7a5qvxb` FOREIGN KEY (`DELIVERY_ZONE_ID`) REFERENCES `zone` (`ZONE_ID`),
  CONSTRAINT `FK_3j13fd0w8fcubko0fdv53w18j` FOREIGN KEY (`BILLING_COUNTRY_ID`) REFERENCES `country` (`COUNTRY_ID`),
  CONSTRAINT `FK_72ork8lgtlvgwi0iwf0khdhv7` FOREIGN KEY (`BILLING_ZONE_ID`) REFERENCES `zone` (`ZONE_ID`),
  CONSTRAINT `FK_eyy3eqwvkp4nudh4r02afghhs` FOREIGN KEY (`LANGUAGE_ID`) REFERENCES `language` (`LANGUAGE_ID`),
  CONSTRAINT `FK_j00dj3m9tcac4sua8ajqln77a` FOREIGN KEY (`MERCHANT_ID`) REFERENCES `merchant_store` (`MERCHANT_ID`),
  CONSTRAINT `FK_k7gt46oima5w2h4wq84hhg19c` FOREIGN KEY (`DELIVERY_COUNTRY_ID`) REFERENCES `country` (`COUNTRY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'\0',NULL,NULL,NULL,'HIH, A915','Kobe','','Amal','Elfrihmate',NULL,NULL,'651-0077','hyogo','8099878788',NULL,0.00,0,NULL,'HIH, A915','Kobe','','Amal','Elfrihmate','651-0077','hyogo','8099878788','amal@test.com','M','PdQQlZ','$2a$11$7JvmjOBXuBZzlf8IGENtVezT.ZEaArCWYkpU4WTqsqjYHU6q5lLMG',NULL,43,NULL,1,43,NULL,1),(50,'\0',NULL,NULL,NULL,'HIH, A915','Kobe','','Halima','Aimane',NULL,NULL,'651-0077','Hyogo','0809558877',NULL,0.00,0,NULL,'HIH, A915','Kobe','','Halima','Aimane','651-0077','Hyogo','0809558877','aimane.halima@gmail.com','M','OzkVOS','$2a$11$DL6XpRLNMO8VDPVuh6G5L.cmYU9Cz9qOiG6LErF.XVwHcab1QmXUi',NULL,43,NULL,1,43,NULL,1),(100,'\0',NULL,NULL,NULL,'Kasuganomichi','Kobe','','Aman','Sultani',NULL,NULL,'6510078','Hyogo','8098879907',NULL,0.00,0,NULL,'Kasuganomichi','Kobe','','Aman','Sultani','6510078','Hyogo','8098879907','aman@example.com','M','rR_tgP','$2a$11$IytQbwR5SLFUQUWbex9tx.yaEBUhHsZGKH4q.5xqRDSGvljPtuj5.',NULL,43,NULL,1,43,NULL,1),(101,'\0',NULL,NULL,NULL,'HIH, A915','Quebec','','Amal','Elfrihmate',NULL,NULL,'651 007','','(809) 987-8788',NULL,0.00,0,NULL,'HIH, A915','Quebec','','Amal','Elfrihmate','651 007','','(809) 987-8788','amal@test.com','M','oxADay','$2a$11$qhzpunF9x1X2kz1obmSWv.ANd14CU3ImhvbjjxmbDXbEHiaErTW3W',NULL,13,8,1,13,8,1),(102,'\0',NULL,NULL,NULL,'HIH, A915','Kobe','','Amal','Elfrihmate',NULL,NULL,'651-0077','hyogo','8099878788',NULL,0.00,0,NULL,'HIH, A915','Kobe','','Amal','Elfrihmate','651-0077','hyogo','8099878788','amal@test.com','M','xmUIzN','$2a$11$71chutQ71Y0LIcu7v7hCsefu6LsGPljidIUfNUdgWoQAD59Ga8O7.',NULL,43,NULL,1,43,NULL,1),(103,'\0',NULL,NULL,NULL,'Kasuganomichi','Kobe','','Aman','Sultani',NULL,NULL,'6510078','hyogo','8098879907',NULL,0.00,0,NULL,'Kasuganomichi','Kobe','','Aman','Sultani','6510078','hyogo','8098879907','aman@example.com','M','aYCyWM','$2a$11$PpQGhssP5cwaCrCSuhN7oenGaGSvN0wwCmFcSJNYShiqsbgdhduFi',NULL,43,NULL,1,43,NULL,1),(104,'\0',NULL,NULL,NULL,'HIH, A915','Hyogo','','Halima','Aimane',NULL,NULL,'651-0077','hyogo','8099878788',NULL,0.00,0,NULL,'HIH, A915','Hyogo','','Halima','Aimane','651-0077','hyogo','8099878788','aimane.halima@gmail.com','M','tTBAQu','$2a$11$7AD5WkDoVkThj7qBRI4sA.Qun30udBEoLtNW4/ambp/MkRCPZkTSW',NULL,43,NULL,1,43,NULL,1),(150,'\0',NULL,NULL,NULL,NULL,NULL,NULL,'hala','emane',NULL,NULL,NULL,'Algers',NULL,NULL,0.00,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'hala@gmail.com','M','hala@gmail.com','$2a$11$j14RApekqNXe8z/MF27oNuFjwC2kn0cUQUBTuV4w99MpZXm3eyJ9G',NULL,2,NULL,1,NULL,NULL,1),(151,'\0',NULL,NULL,NULL,'hyogo','hyogo','','hala','emane',NULL,NULL,'651001','hyogo','0809558877',NULL,0.00,0,NULL,'hyogo','hyogo','','hala','emane','651001','hyogo','0809558877','hala@gmail.com','M','vfjzjl','$2a$11$sNJs41K4FQdldgKT27gLn.TnrdXXEiQ08/kBRC3sejWIsyOW8CKiG',NULL,57,NULL,1,57,NULL,1),(200,'\0',NULL,NULL,NULL,'Temara','Rabat','','Omaima','Mikdame',NULL,NULL,'11000','Rabat','0648778547',NULL,0.00,0,NULL,'Temara','Rabat','','Omaima','Mikdame','11000','Rabat','0648778547','omaima.m@gmail.com','M','usYByu','$2a$11$Ud95Q.vWk3qRug9ToLnqf.mUN6wh47GTmIuEL4J/f3YpMgqZwemkm',NULL,57,NULL,1,57,NULL,1),(250,'\0',NULL,NULL,NULL,'rue something','Kobe','','hala','emane',NULL,NULL,'651-0072','hyogo','0809558877',NULL,0.00,0,NULL,'rue something','Kobe','','hala','emane','651-0072','hyogo','0809558877','aimane.halima@gmail.com','M','avNebF','$2a$11$ry6Fi2B0oOKOWsih3O9BkeRBxbTUT8lpqD//j4XxXtr2fjOs7MuD2',NULL,43,NULL,1,43,NULL,1),(251,'\0',NULL,NULL,NULL,'rue something','Kobe','','hala','emane',NULL,NULL,'651-0072','hyogo','0809558877',NULL,0.00,0,NULL,'rue something','Kobe','','hala','emane','651-0072','hyogo','0809558877','aimane.halima@gmail.com','M','OjlrWD','$2a$11$YlF0jGtC.7SYV1nYcQ555eYnoQ.5zC6SBnpN3UJBpYz7kxBF3r6AS',NULL,43,NULL,1,43,NULL,1),(300,'\0',NULL,NULL,NULL,'HIH, A915','Quebec','','Amal','Elfrihmate',NULL,NULL,'651 007','','8099878788',NULL,0.00,0,NULL,'HIH, A915','Quebec','','Amal','Elfrihmate','651 007','','8099878788','amal@test.com','M','ULQMKu','$2a$11$AOhEbx4lVhztBaa9xKKymeZkPRmLl/3n1Rrv/5FF2vClq5AryQfN.',NULL,13,8,1,13,8,1);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_attribute`
--

DROP TABLE IF EXISTS `customer_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_attribute` (
  `CUSTOMER_ATTRIBUTE_ID` bigint(20) NOT NULL,
  `CUSTOMER_ATTR_TXT_VAL` varchar(255) DEFAULT NULL,
  `CUSTOMER_ID` bigint(20) NOT NULL,
  `OPTION_ID` bigint(20) NOT NULL,
  `OPTION_VALUE_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`CUSTOMER_ATTRIBUTE_ID`),
  UNIQUE KEY `UK_46kbpre88yh963gewm3kmdni1` (`OPTION_ID`,`CUSTOMER_ID`),
  KEY `FK_29fkuiaadeus36gasl9q1tsq3` (`CUSTOMER_ID`),
  KEY `FK_caeovxjxl3iya5jmoauqsxf9k` (`OPTION_VALUE_ID`),
  CONSTRAINT `FK_29fkuiaadeus36gasl9q1tsq3` FOREIGN KEY (`CUSTOMER_ID`) REFERENCES `customer` (`CUSTOMER_ID`),
  CONSTRAINT `FK_apotuxwjsvba5y88au4xyw0nh` FOREIGN KEY (`OPTION_ID`) REFERENCES `customer_option` (`CUSTOMER_OPTION_ID`),
  CONSTRAINT `FK_caeovxjxl3iya5jmoauqsxf9k` FOREIGN KEY (`OPTION_VALUE_ID`) REFERENCES `customer_option_value` (`CUSTOMER_OPTION_VALUE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_attribute`
--

LOCK TABLES `customer_attribute` WRITE;
/*!40000 ALTER TABLE `customer_attribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_group`
--

DROP TABLE IF EXISTS `customer_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_group` (
  `CUSTOMER_ID` bigint(20) NOT NULL,
  `GROUP_ID` int(11) NOT NULL,
  KEY `FK_7dgmjiv744ak7617blnsqm560` (`GROUP_ID`),
  KEY `FK_kmd61ih4bv0aaofdyel8d2se1` (`CUSTOMER_ID`),
  CONSTRAINT `FK_7dgmjiv744ak7617blnsqm560` FOREIGN KEY (`GROUP_ID`) REFERENCES `sm_group` (`GROUP_ID`),
  CONSTRAINT `FK_kmd61ih4bv0aaofdyel8d2se1` FOREIGN KEY (`CUSTOMER_ID`) REFERENCES `customer` (`CUSTOMER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_group`
--

LOCK TABLES `customer_group` WRITE;
/*!40000 ALTER TABLE `customer_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_opt_val_description`
--

DROP TABLE IF EXISTS `customer_opt_val_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_opt_val_description` (
  `DESCRIPTION_ID` bigint(20) NOT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_MODIFIED` datetime DEFAULT NULL,
  `UPDT_ID` varchar(20) DEFAULT NULL,
  `DESCRIPTION` longtext,
  `NAME` varchar(120) NOT NULL,
  `TITLE` varchar(100) DEFAULT NULL,
  `LANGUAGE_ID` int(11) NOT NULL,
  `CUSTOMER_OPT_VAL_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`DESCRIPTION_ID`),
  UNIQUE KEY `UK_ge7f2t1d31r87wnk09h9u1tnv` (`CUSTOMER_OPT_VAL_ID`,`LANGUAGE_ID`),
  KEY `FK_5tan60tg9d812ti5hg0ch784f` (`LANGUAGE_ID`),
  CONSTRAINT `FK_5tan60tg9d812ti5hg0ch784f` FOREIGN KEY (`LANGUAGE_ID`) REFERENCES `language` (`LANGUAGE_ID`),
  CONSTRAINT `FK_sj4lco1gcmplvqlgfdbdpmtyn` FOREIGN KEY (`CUSTOMER_OPT_VAL_ID`) REFERENCES `customer_option_value` (`CUSTOMER_OPTION_VALUE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_opt_val_description`
--

LOCK TABLES `customer_opt_val_description` WRITE;
/*!40000 ALTER TABLE `customer_opt_val_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_opt_val_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_optin`
--

DROP TABLE IF EXISTS `customer_optin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_optin` (
  `CUSTOMER_OPTIN_ID` bigint(20) NOT NULL,
  `EMAIL` varchar(255) DEFAULT NULL,
  `FIRST` varchar(255) DEFAULT NULL,
  `LAST` varchar(255) DEFAULT NULL,
  `OPTIN_DATE` datetime DEFAULT NULL,
  `VALUE` longtext,
  `OPTIN_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`CUSTOMER_OPTIN_ID`),
  UNIQUE KEY `UK_c4fnyu0pvxxtrbko10rm1jqyw` (`EMAIL`,`OPTIN_ID`),
  KEY `FK_2sv3ldopc4d3h30rg4wxixvgw` (`OPTIN_ID`),
  CONSTRAINT `FK_2sv3ldopc4d3h30rg4wxixvgw` FOREIGN KEY (`OPTIN_ID`) REFERENCES `optin` (`OPTIN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_optin`
--

LOCK TABLES `customer_optin` WRITE;
/*!40000 ALTER TABLE `customer_optin` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_optin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_option`
--

DROP TABLE IF EXISTS `customer_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_option` (
  `CUSTOMER_OPTION_ID` bigint(20) NOT NULL,
  `CUSTOMER_OPT_ACTIVE` bit(1) DEFAULT NULL,
  `CUSTOMER_OPT_CODE` varchar(255) NOT NULL,
  `CUSTOMER_OPTION_TYPE` varchar(10) DEFAULT NULL,
  `CUSTOMER_OPT_PUBLIC` bit(1) DEFAULT NULL,
  `SORT_ORDER` int(11) DEFAULT NULL,
  `MERCHANT_ID` int(11) NOT NULL,
  PRIMARY KEY (`CUSTOMER_OPTION_ID`),
  UNIQUE KEY `UK_rov34a6g4dhhiqukvhp1ggm0u` (`MERCHANT_ID`,`CUSTOMER_OPT_CODE`),
  KEY `CUST_OPT_CODE_IDX` (`CUSTOMER_OPT_CODE`),
  CONSTRAINT `FK_c8hb7w6e4rle5vfjf4p96sh80` FOREIGN KEY (`MERCHANT_ID`) REFERENCES `merchant_store` (`MERCHANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_option`
--

LOCK TABLES `customer_option` WRITE;
/*!40000 ALTER TABLE `customer_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_option_desc`
--

DROP TABLE IF EXISTS `customer_option_desc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_option_desc` (
  `DESCRIPTION_ID` bigint(20) NOT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_MODIFIED` datetime DEFAULT NULL,
  `UPDT_ID` varchar(20) DEFAULT NULL,
  `DESCRIPTION` longtext,
  `NAME` varchar(120) NOT NULL,
  `TITLE` varchar(100) DEFAULT NULL,
  `CUSTOMER_OPTION_COMMENT` longtext,
  `LANGUAGE_ID` int(11) NOT NULL,
  `CUSTOMER_OPTION_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`DESCRIPTION_ID`),
  UNIQUE KEY `UK_6ovl4t1ciag1wubtcebaoo7vi` (`CUSTOMER_OPTION_ID`,`LANGUAGE_ID`),
  KEY `FK_i3pt01q982o6f1eelf2wgg16a` (`LANGUAGE_ID`),
  CONSTRAINT `FK_i3pt01q982o6f1eelf2wgg16a` FOREIGN KEY (`LANGUAGE_ID`) REFERENCES `language` (`LANGUAGE_ID`),
  CONSTRAINT `FK_p7u6vmiivmpui2sytdt41u2ye` FOREIGN KEY (`CUSTOMER_OPTION_ID`) REFERENCES `customer_option` (`CUSTOMER_OPTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_option_desc`
--

LOCK TABLES `customer_option_desc` WRITE;
/*!40000 ALTER TABLE `customer_option_desc` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_option_desc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_option_set`
--

DROP TABLE IF EXISTS `customer_option_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_option_set` (
  `CUSTOMER_OPTIONSET_ID` bigint(20) NOT NULL,
  `SORT_ORDER` int(11) DEFAULT NULL,
  `CUSTOMER_OPTION_ID` bigint(20) NOT NULL,
  `CUSTOMER_OPTION_VALUE_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`CUSTOMER_OPTIONSET_ID`),
  UNIQUE KEY `UK_4peli2ritnnq2xqpyq188srm6` (`CUSTOMER_OPTION_ID`,`CUSTOMER_OPTION_VALUE_ID`),
  KEY `FK_8rommesmavdij4j64u80rnpf5` (`CUSTOMER_OPTION_VALUE_ID`),
  CONSTRAINT `FK_8rommesmavdij4j64u80rnpf5` FOREIGN KEY (`CUSTOMER_OPTION_VALUE_ID`) REFERENCES `customer_option_value` (`CUSTOMER_OPTION_VALUE_ID`),
  CONSTRAINT `FK_nw8syffq9lv0p0nc0vvlecbba` FOREIGN KEY (`CUSTOMER_OPTION_ID`) REFERENCES `customer_option` (`CUSTOMER_OPTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_option_set`
--

LOCK TABLES `customer_option_set` WRITE;
/*!40000 ALTER TABLE `customer_option_set` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_option_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_option_value`
--

DROP TABLE IF EXISTS `customer_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_option_value` (
  `CUSTOMER_OPTION_VALUE_ID` bigint(20) NOT NULL,
  `CUSTOMER_OPT_VAL_CODE` varchar(255) NOT NULL,
  `CUSTOMER_OPT_VAL_IMAGE` varchar(255) DEFAULT NULL,
  `SORT_ORDER` int(11) DEFAULT NULL,
  `MERCHANT_ID` int(11) NOT NULL,
  PRIMARY KEY (`CUSTOMER_OPTION_VALUE_ID`),
  UNIQUE KEY `UK_cb1fmv71nrx7m1rlx1ff5qvdt` (`MERCHANT_ID`,`CUSTOMER_OPT_VAL_CODE`),
  KEY `CUST_OPT_VAL_CODE_IDX` (`CUSTOMER_OPT_VAL_CODE`),
  CONSTRAINT `FK_qbur9hs0qbtgl3f85l4c6s3yd` FOREIGN KEY (`MERCHANT_ID`) REFERENCES `merchant_store` (`MERCHANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_option_value`
--

LOCK TABLES `customer_option_value` WRITE;
/*!40000 ALTER TABLE `customer_option_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_review`
--

DROP TABLE IF EXISTS `customer_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_review` (
  `CUSTOMER_REVIEW_ID` bigint(20) NOT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_MODIFIED` datetime DEFAULT NULL,
  `UPDT_ID` varchar(20) DEFAULT NULL,
  `REVIEW_DATE` datetime DEFAULT NULL,
  `REVIEWS_RATING` double DEFAULT NULL,
  `REVIEWS_READ` bigint(20) DEFAULT NULL,
  `STATUS` int(11) DEFAULT NULL,
  `CUSTOMERS_ID` bigint(20) DEFAULT NULL,
  `REVIEWED_CUSTOMER_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`CUSTOMER_REVIEW_ID`),
  UNIQUE KEY `UK_2momthbfrtgico2yyod8w18pk` (`CUSTOMERS_ID`,`REVIEWED_CUSTOMER_ID`),
  KEY `FK_iok46l7xqptpqplqleyxp72ew` (`REVIEWED_CUSTOMER_ID`),
  CONSTRAINT `FK_5pqg5kifmqcewf9tukkftbo99` FOREIGN KEY (`CUSTOMERS_ID`) REFERENCES `customer` (`CUSTOMER_ID`),
  CONSTRAINT `FK_iok46l7xqptpqplqleyxp72ew` FOREIGN KEY (`REVIEWED_CUSTOMER_ID`) REFERENCES `customer` (`CUSTOMER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_review`
--

LOCK TABLES `customer_review` WRITE;
/*!40000 ALTER TABLE `customer_review` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_review_description`
--

DROP TABLE IF EXISTS `customer_review_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_review_description` (
  `DESCRIPTION_ID` bigint(20) NOT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_MODIFIED` datetime DEFAULT NULL,
  `UPDT_ID` varchar(20) DEFAULT NULL,
  `DESCRIPTION` longtext,
  `NAME` varchar(120) NOT NULL,
  `TITLE` varchar(100) DEFAULT NULL,
  `LANGUAGE_ID` int(11) NOT NULL,
  `CUSTOMER_REVIEW_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`DESCRIPTION_ID`),
  UNIQUE KEY `UK_1va9q0nhoe3wli25ktpmouvyh` (`CUSTOMER_REVIEW_ID`,`LANGUAGE_ID`),
  KEY `FK_q28ohfcbdwexg6oojcft90adr` (`LANGUAGE_ID`),
  CONSTRAINT `FK_15vh2djpyycr278wc2dvu99xf` FOREIGN KEY (`CUSTOMER_REVIEW_ID`) REFERENCES `customer_review` (`CUSTOMER_REVIEW_ID`),
  CONSTRAINT `FK_q28ohfcbdwexg6oojcft90adr` FOREIGN KEY (`LANGUAGE_ID`) REFERENCES `language` (`LANGUAGE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_review_description`
--

LOCK TABLES `customer_review_description` WRITE;
/*!40000 ALTER TABLE `customer_review_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_review_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event` (
  `idEVENT` int(11) NOT NULL AUTO_INCREMENT,
  `NAME_EVENT` varchar(45) NOT NULL,
  `DATE_EVENT` date NOT NULL,
  `PRIORITY` enum('yes','no') DEFAULT NULL,
  PRIMARY KEY (`idEVENT`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
INSERT INTO `event` VALUES (1,'New Year','2018-01-01','yes'),(2,'Proclamation of Independence','2018-01-11','no'),(3,'Labor Day','2018-05-01','yes'),(4,'Eid al Fitr','2018-06-15','yes'),(5,'Enthronement','2018-07-29','no'),(6,'Oued el-dahab day','2018-08-14','no'),(7,'Revolution day','2018-08-20','no'),(8,'Youth day','2018-08-21','no'),(9,'Eid al-Adha','2018-08-23','yes'),(10,'Fatih moharam','2018-09-11','yes'),(11,'Green march day','2018-11-06','no'),(12,'Independance day','2018-11-18','no'),(13,'Eid el mawled','2018-11-20','no'),(14,'Start Ramadan','2018-05-16','yes'),(15,'Achoura','2018-09-21','yes'),(16,'St. Valentine','2018-02-14','yes'),(17,'Easter Day','2018-04-01','yes'),(18,'Hallowen','2018-10-31','no'),(19,'Christmas','2018-12-25','yes'),(20,'Hanukkah','2018-12-03','no'),(22,'Passover','2018-03-31','no'),(23,'Chinese New year','2018-12-28','no'),(24,'International women day','2018-03-08','yes'),(25,'Earth day','2018-04-22','no'),(26,'Mothers day','2018-05-14','yes'),(28,'Friendship day','2018-07-30','no'),(29,'Black Friday','2018-11-24','no'),(30,'Back to school','2018-09-04','yes'),(31,'Start of Winter','2018-12-21','yes'),(32,'Start of Spring','2018-03-20','yes'),(33,'Start of Fall','2018-09-22','yes'),(34,'Start of Summer','2018-06-21','yes'),(35,'Thanksgiving','2018-11-22','yes'),(36,'Ramadan 2017','2017-05-26','yes'),(37,'Eid al Fitr 2017','2017-06-25','yes'),(38,'Eid al-Adha 2017','2017-08-31','yes'),(39,'Fatih Muharram 2017','2017-09-22','yes'),(40,'Achoura 2017','2017-09-29','yes'),(41,'Eid el mawled 2017','2017-11-30','yes');
/*!40000 ALTER TABLE `event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `file_history`
--

DROP TABLE IF EXISTS `file_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `file_history` (
  `FILE_HISTORY_ID` bigint(20) NOT NULL,
  `ACCOUNTED_DATE` datetime DEFAULT NULL,
  `DATE_ADDED` datetime NOT NULL,
  `DATE_DELETED` datetime DEFAULT NULL,
  `DOWNLOAD_COUNT` int(11) NOT NULL,
  `FILE_ID` bigint(20) DEFAULT NULL,
  `FILESIZE` int(11) NOT NULL,
  `MERCHANT_ID` int(11) NOT NULL,
  PRIMARY KEY (`FILE_HISTORY_ID`),
  UNIQUE KEY `UK_av35sb3v4nxq8v1n1rkxufir` (`MERCHANT_ID`,`FILE_ID`),
  CONSTRAINT `FK_5p2nkrcj0b8k5r3mv3lijif45` FOREIGN KEY (`MERCHANT_ID`) REFERENCES `merchant_store` (`MERCHANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `file_history`
--

LOCK TABLES `file_history` WRITE;
/*!40000 ALTER TABLE `file_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `file_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `geozone`
--

DROP TABLE IF EXISTS `geozone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `geozone` (
  `GEOZONE_ID` bigint(20) NOT NULL,
  `GEOZONE_CODE` varchar(255) DEFAULT NULL,
  `GEOZONE_NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`GEOZONE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `geozone`
--

LOCK TABLES `geozone` WRITE;
/*!40000 ALTER TABLE `geozone` DISABLE KEYS */;
/*!40000 ALTER TABLE `geozone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `geozone_description`
--

DROP TABLE IF EXISTS `geozone_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `geozone_description` (
  `DESCRIPTION_ID` bigint(20) NOT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_MODIFIED` datetime DEFAULT NULL,
  `UPDT_ID` varchar(20) DEFAULT NULL,
  `DESCRIPTION` longtext,
  `NAME` varchar(120) NOT NULL,
  `TITLE` varchar(100) DEFAULT NULL,
  `LANGUAGE_ID` int(11) NOT NULL,
  `GEOZONE_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`DESCRIPTION_ID`),
  UNIQUE KEY `UK_soq8o99w3c8ys3ntamt5i4mat` (`GEOZONE_ID`,`LANGUAGE_ID`),
  KEY `FK_1lcbkc4tt49q5qbue3m9p29c2` (`LANGUAGE_ID`),
  CONSTRAINT `FK_1lcbkc4tt49q5qbue3m9p29c2` FOREIGN KEY (`LANGUAGE_ID`) REFERENCES `language` (`LANGUAGE_ID`),
  CONSTRAINT `FK_m2xipv66da4ujekwbwxuyhmb8` FOREIGN KEY (`GEOZONE_ID`) REFERENCES `geozone` (`GEOZONE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `geozone_description`
--

LOCK TABLES `geozone_description` WRITE;
/*!40000 ALTER TABLE `geozone_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `geozone_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language`
--

DROP TABLE IF EXISTS `language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `language` (
  `LANGUAGE_ID` int(11) NOT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_MODIFIED` datetime DEFAULT NULL,
  `UPDT_ID` varchar(20) DEFAULT NULL,
  `CODE` varchar(255) NOT NULL,
  `SORT_ORDER` int(11) DEFAULT NULL,
  PRIMARY KEY (`LANGUAGE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language`
--

LOCK TABLES `language` WRITE;
/*!40000 ALTER TABLE `language` DISABLE KEYS */;
INSERT INTO `language` VALUES (1,'2018-03-13 09:09:42','2018-03-13 09:09:42',NULL,'en',NULL),(2,'2018-03-13 09:09:43','2018-03-13 09:09:43',NULL,'fr',NULL),(3,'2018-03-13 09:09:43','2018-03-13 09:09:43',NULL,'ru',NULL);
/*!40000 ALTER TABLE `language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manufacturer`
--

DROP TABLE IF EXISTS `manufacturer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `manufacturer` (
  `MANUFACTURER_ID` bigint(20) NOT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_MODIFIED` datetime DEFAULT NULL,
  `UPDT_ID` varchar(20) DEFAULT NULL,
  `CODE` varchar(100) NOT NULL,
  `MANUFACTURER_IMAGE` varchar(255) DEFAULT NULL,
  `SORT_ORDER` int(11) DEFAULT NULL,
  `MERCHANT_ID` int(11) NOT NULL,
  PRIMARY KEY (`MANUFACTURER_ID`),
  UNIQUE KEY `UK_6brqfdkga7jc78n8dh3v595y3` (`MERCHANT_ID`,`CODE`),
  CONSTRAINT `FK_6a0xjjrya6f08ys6bm5tr84q5` FOREIGN KEY (`MERCHANT_ID`) REFERENCES `merchant_store` (`MERCHANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manufacturer`
--

LOCK TABLES `manufacturer` WRITE;
/*!40000 ALTER TABLE `manufacturer` DISABLE KEYS */;
INSERT INTO `manufacturer` VALUES (1,'2018-03-13 09:09:51','2018-03-13 09:09:51',NULL,'DEFAULT',NULL,0,1),(50,'2018-03-21 08:40:44','2018-03-21 08:40:44',NULL,'fac001',NULL,0,1);
/*!40000 ALTER TABLE `manufacturer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manufacturer_description`
--

DROP TABLE IF EXISTS `manufacturer_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `manufacturer_description` (
  `DESCRIPTION_ID` bigint(20) NOT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_MODIFIED` datetime DEFAULT NULL,
  `UPDT_ID` varchar(20) DEFAULT NULL,
  `DESCRIPTION` longtext,
  `NAME` varchar(120) NOT NULL,
  `TITLE` varchar(100) DEFAULT NULL,
  `DATE_LAST_CLICK` datetime DEFAULT NULL,
  `MANUFACTURERS_URL` varchar(255) DEFAULT NULL,
  `URL_CLICKED` int(11) DEFAULT NULL,
  `LANGUAGE_ID` int(11) NOT NULL,
  `MANUFACTURER_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`DESCRIPTION_ID`),
  UNIQUE KEY `UK_lpv09p83sc887clxe04nroup6` (`MANUFACTURER_ID`,`LANGUAGE_ID`),
  KEY `FK_886779uo5mvsjx1aflijs3ldi` (`LANGUAGE_ID`),
  CONSTRAINT `FK_1o49ome5ymq7n6xabxylr6fmg` FOREIGN KEY (`MANUFACTURER_ID`) REFERENCES `manufacturer` (`MANUFACTURER_ID`),
  CONSTRAINT `FK_886779uo5mvsjx1aflijs3ldi` FOREIGN KEY (`LANGUAGE_ID`) REFERENCES `language` (`LANGUAGE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manufacturer_description`
--

LOCK TABLES `manufacturer_description` WRITE;
/*!40000 ALTER TABLE `manufacturer_description` DISABLE KEYS */;
INSERT INTO `manufacturer_description` VALUES (700,'2018-03-13 09:09:51','2018-03-13 09:09:51',NULL,'DEFAULT','DEFAULT',NULL,NULL,NULL,NULL,1,1),(1250,'2018-03-21 08:40:44','2018-03-21 08:40:44',NULL,'','Coop','',NULL,'coop',NULL,2,50),(1251,'2018-03-21 08:40:44','2018-03-21 08:40:44',NULL,'','Coop','',NULL,'coop',NULL,1,50);
/*!40000 ALTER TABLE `manufacturer_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `match_pro_and_event`
--

DROP TABLE IF EXISTS `match_pro_and_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `match_pro_and_event` (
  `IDMATCH` int(11) NOT NULL AUTO_INCREMENT,
  `idEVENT` int(11) DEFAULT NULL,
  `PRODUCT_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`IDMATCH`),
  KEY `idEVENT` (`idEVENT`),
  KEY `PRODUCT_ID` (`PRODUCT_ID`),
  CONSTRAINT `match_pro_and_event_ibfk_1` FOREIGN KEY (`idEVENT`) REFERENCES `event` (`idEVENT`),
  CONSTRAINT `match_pro_and_event_ibfk_2` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `product` (`PRODUCT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `match_pro_and_event`
--

LOCK TABLES `match_pro_and_event` WRITE;
/*!40000 ALTER TABLE `match_pro_and_event` DISABLE KEYS */;
INSERT INTO `match_pro_and_event` VALUES (1,1,214),(2,1,215),(3,1,251),(4,1,252),(5,1,253),(6,1,207),(7,1,208),(8,2,254),(9,2,300),(10,3,207),(11,3,208),(12,3,160),(13,3,161),(14,3,216),(15,3,217),(16,4,217),(17,4,216),(18,4,215),(19,4,214),(20,4,201),(21,4,200),(22,4,211),(23,4,212),(24,4,213),(25,4,160),(26,4,161),(27,4,159),(28,4,100),(29,4,155),(30,4,156),(31,5,300),(32,5,254),(33,6,254),(34,6,300),(35,7,300),(36,7,254),(37,8,254),(38,8,300),(39,9,216),(40,9,217),(41,9,100),(42,9,101),(43,9,162),(44,9,163),(45,10,216),(46,10,217),(47,10,214),(48,10,215),(49,10,157),(50,11,216),(51,11,217),(52,11,300),(53,11,254),(54,13,216),(55,13,217),(56,13,200),(57,13,201),(58,14,250),(59,14,200),(60,14,201),(61,14,160),(62,14,161),(63,14,162),(64,14,163),(65,14,211),(66,14,212),(67,14,213),(68,15,216),(69,15,217),(70,16,214),(71,16,215),(72,16,251),(73,16,252),(74,16,253),(75,16,207),(76,16,208),(77,16,159),(78,16,2),(79,16,214),(80,16,215),(81,17,251),(82,17,252),(83,17,253),(84,19,214),(85,19,215),(86,20,251),(87,20,252),(88,20,253),(89,12,254),(90,12,300),(91,22,162),(92,22,163),(93,22,160),(94,22,161),(95,23,251),(96,23,252),(97,23,253),(98,23,214),(99,23,215),(100,24,205),(101,24,206),(102,24,207),(103,24,208),(104,24,214),(105,24,215),(106,24,2),(107,24,150),(108,24,151),(109,25,205),(110,25,206),(111,25,207),(112,25,208),(113,26,208),(114,26,207),(115,26,208),(116,26,214),(117,26,215),(118,26,2),(119,26,101),(120,26,150),(121,26,151),(122,26,154),(123,26,152),(124,26,153),(125,26,158),(126,26,159),(127,28,207),(128,28,208),(129,28,214),(130,28,215),(131,28,158),(132,28,159),(133,29,206),(134,29,2),(135,29,250),(136,29,150),(137,30,250),(138,30,100),(139,30,4),(140,30,5),(141,31,6),(142,31,1),(143,32,205),(144,32,206),(145,32,207),(146,32,208),(147,32,160),(148,32,161),(149,33,4),(150,33,5),(151,33,1),(152,33,150),(153,33,151),(154,34,3),(155,34,100),(156,34,155),(157,34,156),(158,35,162),(159,35,163),(160,36,250),(161,36,200),(162,36,201),(163,36,160),(164,36,161),(165,36,162),(166,36,163),(167,36,211),(168,36,212),(169,36,213),(170,37,214),(171,37,215),(172,37,216),(173,37,200),(174,37,201),(175,37,211),(176,37,212),(177,37,213),(178,37,159),(179,37,160),(180,37,161),(181,37,100),(182,37,155),(183,37,156),(184,38,100),(185,38,101),(186,38,162),(187,38,163),(188,38,216),(189,38,217),(190,39,214),(191,39,215),(192,39,216),(193,39,217),(194,39,157),(195,40,216),(196,40,217),(197,41,200),(198,41,201),(199,41,216),(200,41,217);
/*!40000 ALTER TABLE `match_pro_and_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `merchant_configuration`
--

DROP TABLE IF EXISTS `merchant_configuration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `merchant_configuration` (
  `MERCHANT_CONFIG_ID` bigint(20) NOT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_MODIFIED` datetime DEFAULT NULL,
  `UPDT_ID` varchar(20) DEFAULT NULL,
  `CONFIG_KEY` varchar(255) DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  `VALUE` longtext,
  `MERCHANT_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`MERCHANT_CONFIG_ID`),
  UNIQUE KEY `UK_j0c3h8onw3m6hjcr3yylst9fb` (`MERCHANT_ID`,`CONFIG_KEY`),
  CONSTRAINT `FK_4hwqhy43w922otscgfah9d30a` FOREIGN KEY (`MERCHANT_ID`) REFERENCES `merchant_store` (`MERCHANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `merchant_configuration`
--

LOCK TABLES `merchant_configuration` WRITE;
/*!40000 ALTER TABLE `merchant_configuration` DISABLE KEYS */;
INSERT INTO `merchant_configuration` VALUES (1,'2018-03-13 09:09:53','2018-03-22 02:56:40',NULL,'CONFIG','CONFIG','{\"allowPurchaseItems\":true,\"displayContactUs\":false,\"displayCustomerAgreement\":true,\"defaultSearchConfigPath\":{},\"displayCustomerSection\":true,\"displayAddToCartOnFeaturedItems\":true,\"testMode\":false,\"displayStoreAddress\":true,\"displaySearchBox\":true,\"debugMode\":true,\"useDefaultSearchConfig\":{}}',1),(50,'2018-03-19 14:12:19','2018-03-19 14:12:19',NULL,'PAYMENT','INTEGRATION','df02614ab6600db0eb4d78e2c4df5574f9ba1903c78f9da01dded48dcbe5fa1395559a2eb8160dd8615b22e900932a7b1edd856cb8b2ce48d51bfc6263594da3de5f28a3ab16b46d26071eba3a99e5abff1ebb9e0a15088e8a26b3ba510e9a3b38dfcaaed3238ce1caadde88fb06e3c6a62efc97b423fc078e03f72a600485b425d27acefb88f1b7aaf551bb6d998b2da1641bcae92e6dd2ec447d59e54388f7bf1f9aabac45c1f38d4b48ccf7cd715aa32d05463e44ee0be354cfc5706ecdaee905c4d38948bd281722acc23afa8e7a9f7944ec23f99e52d39c7b353f6c23a430d5b602b73db8da72af7b211d7e8c662e51b8cfaae83dc61f4a8cf2ec1dfaaf1500e8b175526ece8dd32b331821c7636c50c73f9164fb99d2fcba822723acf7088ac0b00ae4c9188a3981804329ad53d988759a59a0d1f7f62da8284eacab4efdc6725d096add1b8560d52346fc18c06a1ed6b6433d3cf140bfa28aaffb232e59dba8a1327bc3a6908928059d9bec01574ef96d8fa348e16c4a6ffa344da32d1a158325e45ed14ad05d8a72306a4541069ef6c45ed2b8cbd236d1ffea3c16825126ebc557b4f1e9f60d9bf68e88a68b19f0e6e504f3dc3d418baaf8b630b69746a4ae2e434e9e737180a9df9672313a66fab09e359618594f75cf0c9f03ac3d0cdf57a2207c5efa5ecba1a2622ad19afd3b43e48fef0905d433856993001aaf667f4c90157be3c5b0858b1b0b41a2a7c7cb2a9250a5286d271b0c965d5cdb3bc7909e9a712901ffe9b44c902cfaa9e7dfca0140cc3dfb1140847eb667cf77b1b04335aaddc60d76a5d51040565a6fcf25dac003c77718731b0830ff7db6295a43871d55bcac091160d92a7b90c268ca68911907e106aa5b18d460be52966e2ff065b4fa79d7802dea47f115a52f608480b4289b550cea498fb2f99b1b279a3acd690e676cf8d9c126f735f74d40f747',1),(100,'2018-03-20 08:05:51','2018-03-20 08:17:10',NULL,'SHIPPING','INTEGRATION','df02614ab6600db0eb4d78e2c4df55740a3632c23495d207674f0bdef76266c50f2e31f12af589c92a6e67ad4d1e9a7b0dbe808d05c409e47270b39aa0cc7a5791f650aaabfe5baf8e29ab102ea6cdab71b5cfe0b271d3610f9fa5e758a93cbf092a100bd0ad88ab9c4fb7ef61c1830580cf69c434f063370b41932d33e76b99e963a5e5ea4c46b3ebe955a0b071982f1aca9aba6df2e8a65cc905da208b531db4720586d66723a3ef4c466fb6f53969',1),(101,'2018-03-20 08:05:51','2018-03-20 08:17:10',NULL,'weightBased','INTEGRATION','{\"moduleCode\":\"weightBased\",\"active\":true}',1),(102,'2018-03-20 08:09:07','2018-03-20 08:20:24',NULL,'SHIPPING_CONFIG','INTEGRATION','{\"boxLength\":0,\"orderTotalFreeShipping\":50.00,\"shipBaseType\":\"SHIPPING\",\"shipOptionPriceType\":\"ALL\",\"maxWeight\":0.0,\"boxHeight\":0,\"shipFreeType\":\"INTERNATIONAL\",\"taxOnShipping\":false,\"shipPackageType\":\"ITEM\",\"freeShippingEnabled\":false,\"boxWeight\":0.0,\"shipType\":\"NATIONAL\",\"boxWidth\":0,\"handlingFees\":null,\"shipDescription\":\"SHORT_DESCRIPTION\"}',1),(103,'2018-03-20 08:09:20','2018-03-20 08:09:35',NULL,'SUPPORTED_CNTR','INTEGRATION','[]',1);
/*!40000 ALTER TABLE `merchant_configuration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `merchant_language`
--

DROP TABLE IF EXISTS `merchant_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `merchant_language` (
  `stores_MERCHANT_ID` int(11) NOT NULL,
  `languages_LANGUAGE_ID` int(11) NOT NULL,
  KEY `FK_53o35arh6914xpjlfkk9fg7hr` (`languages_LANGUAGE_ID`),
  KEY `FK_otl5jb3ntlujif2krkk7f1hfc` (`stores_MERCHANT_ID`),
  CONSTRAINT `FK_53o35arh6914xpjlfkk9fg7hr` FOREIGN KEY (`languages_LANGUAGE_ID`) REFERENCES `language` (`LANGUAGE_ID`),
  CONSTRAINT `FK_otl5jb3ntlujif2krkk7f1hfc` FOREIGN KEY (`stores_MERCHANT_ID`) REFERENCES `merchant_store` (`MERCHANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `merchant_language`
--

LOCK TABLES `merchant_language` WRITE;
/*!40000 ALTER TABLE `merchant_language` DISABLE KEYS */;
INSERT INTO `merchant_language` VALUES (1,1);
/*!40000 ALTER TABLE `merchant_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `merchant_log`
--

DROP TABLE IF EXISTS `merchant_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `merchant_log` (
  `MERCHANT_LOG_ID` bigint(20) NOT NULL,
  `LOG` longtext,
  `MODULE` varchar(25) DEFAULT NULL,
  `MERCHANT_ID` int(11) NOT NULL,
  PRIMARY KEY (`MERCHANT_LOG_ID`),
  KEY `FK_g76deolju6sf5ikvoe5ir23q3` (`MERCHANT_ID`),
  CONSTRAINT `FK_g76deolju6sf5ikvoe5ir23q3` FOREIGN KEY (`MERCHANT_ID`) REFERENCES `merchant_store` (`MERCHANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `merchant_log`
--

LOCK TABLES `merchant_log` WRITE;
/*!40000 ALTER TABLE `merchant_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `merchant_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `merchant_store`
--

DROP TABLE IF EXISTS `merchant_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `merchant_store` (
  `MERCHANT_ID` int(11) NOT NULL,
  `STORE_CODE` varchar(100) NOT NULL,
  `CONTINUESHOPPINGURL` varchar(150) DEFAULT NULL,
  `CURRENCY_FORMAT_NATIONAL` bit(1) DEFAULT NULL,
  `DOMAIN_NAME` varchar(80) DEFAULT NULL,
  `IN_BUSINESS_SINCE` date DEFAULT NULL,
  `INVOICE_TEMPLATE` varchar(25) DEFAULT NULL,
  `SEIZEUNITCODE` varchar(5) DEFAULT NULL,
  `STORE_EMAIL` varchar(60) NOT NULL,
  `STORE_LOGO` varchar(100) DEFAULT NULL,
  `STORE_TEMPLATE` varchar(25) DEFAULT NULL,
  `STORE_ADDRESS` varchar(255) DEFAULT NULL,
  `STORE_CITY` varchar(100) NOT NULL,
  `STORE_NAME` varchar(100) NOT NULL,
  `STORE_PHONE` varchar(50) NOT NULL,
  `STORE_POSTAL_CODE` varchar(15) NOT NULL,
  `STORE_STATE_PROV` varchar(100) DEFAULT NULL,
  `USE_CACHE` bit(1) DEFAULT NULL,
  `WEIGHTUNITCODE` varchar(5) DEFAULT NULL,
  `COUNTRY_ID` int(11) NOT NULL,
  `CURRENCY_ID` bigint(20) NOT NULL,
  `LANGUAGE_ID` int(11) NOT NULL,
  `ZONE_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`MERCHANT_ID`),
  UNIQUE KEY `UK_4pvtsnqv4nlao8725n9ldpguf` (`STORE_CODE`),
  KEY `FK_4k1mv6pikwues6f2uhnju0aj6` (`COUNTRY_ID`),
  KEY `FK_4uyyjjys5buui6oe3vp84k5ip` (`CURRENCY_ID`),
  KEY `FK_tcj9cbm9ur5itu2c6wrct1dnq` (`LANGUAGE_ID`),
  KEY `FK_141243r2vth00rq0lyem39abo` (`ZONE_ID`),
  CONSTRAINT `FK_141243r2vth00rq0lyem39abo` FOREIGN KEY (`ZONE_ID`) REFERENCES `zone` (`ZONE_ID`),
  CONSTRAINT `FK_4k1mv6pikwues6f2uhnju0aj6` FOREIGN KEY (`COUNTRY_ID`) REFERENCES `country` (`COUNTRY_ID`),
  CONSTRAINT `FK_4uyyjjys5buui6oe3vp84k5ip` FOREIGN KEY (`CURRENCY_ID`) REFERENCES `currency` (`CURRENCY_ID`),
  CONSTRAINT `FK_tcj9cbm9ur5itu2c6wrct1dnq` FOREIGN KEY (`LANGUAGE_ID`) REFERENCES `language` (`LANGUAGE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `merchant_store`
--

LOCK TABLES `merchant_store` WRITE;
/*!40000 ALTER TABLE `merchant_store` DISABLE KEYS */;
INSERT INTO `merchant_store` VALUES (1,'DEFAULT',NULL,'\0','localhost:80/shop','2018-03-09',NULL,'CM','john@test.com','coollogo_com-295431098.png','generic','1234 Street address','Rabat','Moussahama','061-3667-7628','10000','Rabat','\0','KG',57,30,1,NULL);
/*!40000 ALTER TABLE `merchant_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `module_configuration`
--

DROP TABLE IF EXISTS `module_configuration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `module_configuration` (
  `MODULE_CONF_ID` bigint(20) NOT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_MODIFIED` datetime DEFAULT NULL,
  `UPDT_ID` varchar(20) DEFAULT NULL,
  `CODE` varchar(255) NOT NULL,
  `DETAILS` longtext,
  `CONFIGURATION` longtext,
  `CUSTOM_IND` bit(1) DEFAULT NULL,
  `IMAGE` varchar(255) DEFAULT NULL,
  `MODULE` varchar(255) DEFAULT NULL,
  `REGIONS` varchar(255) DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`MODULE_CONF_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `module_configuration`
--

LOCK TABLES `module_configuration` WRITE;
/*!40000 ALTER TABLE `module_configuration` DISABLE KEYS */;
INSERT INTO `module_configuration` VALUES (1,'2018-03-13 09:09:51','2018-03-13 09:09:51',NULL,'usps',NULL,'[{\"scheme\":\"http\",\"host\":\"testing.shippingapis.com\",\"port\":\"80\",\"uri\":\"/ShippingAPI.dll\",\"env\":\"TEST\",\"config1\":null,\"config2\":null},{\"scheme\":\"http\",\"host\":\"production.shippingapis.com\",\"port\":\"80\",\"uri\":\"/ShippingAPI.dll\",\"env\":\"PROD\",\"config1\":null,\"config2\":null}]','\0','usps.jpg','SHIPPING','[\"US\"]',NULL),(2,'2018-03-13 09:09:51','2018-03-13 09:09:51',NULL,'canadapost',NULL,'[{\"scheme\":\"https\",\"host\":\"ct.soa-gw.canadapost.ca\",\"port\":\"443\",\"uri\":\"/rs/ship/price\",\"env\":\"TEST\",\"config1\":null,\"config2\":null},{\"scheme\":\"https\",\"host\":\"soa-gw.canadapost.ca\",\"port\":\"443\",\"uri\":\"/rs/ship/price\",\"env\":\"PROD\",\"config1\":null,\"config2\":null}]','\0','canadapost.jpg','SHIPPING','[\"CA\"]',NULL),(3,'2018-03-13 09:09:51','2018-03-13 09:09:51',NULL,'ups','{\"01\":\"UPS Next Day Air\",\"02\":\"UPS Second Day Air\",\"03\":\"UPS Ground\",\"07\":\"UPS Worldwide Express\",\"08\":\"UPS Worldwide Expedited\",\"11\":\"UPS Standard\",\"12\":\"UPS Three-Day Select\",\"13\":\"UPS Next Day Air Saver\",\"14\":\"UPS Next Day Air Early A.M.\",\"54\":\"UPS Worldwide Express Plus\",\"59\":\"UPS Second Day Air A.M.\",\"69\":\"UPS Saver\"}','[{\"scheme\":\"https\",\"host\":\"wwwcie.ups.com\",\"port\":\"443\",\"uri\":\"/ups.app/xml/Rate\",\"env\":\"TEST\",\"config1\":null,\"config2\":null},{\"scheme\":\"https\",\"host\":\"onlinetools.ups.com\",\"port\":\"443\",\"uri\":\"/xml/Rate\",\"env\":\"PROD\",\"config1\":null,\"config2\":null}]','\0','ups.jpg','SHIPPING','[\"US\",\"CA\",\"FR\",\"GB\"]',NULL),(4,'2018-03-13 09:09:51','2018-03-13 09:09:51',NULL,'weightBased',NULL,NULL,'',NULL,'SHIPPING','[\"*\"]',NULL),(5,'2018-03-13 09:09:51','2018-03-13 09:09:51',NULL,'customQuotesRules',NULL,NULL,'\0',NULL,'SHIPPING','[\"*\"]',NULL),(6,'2018-03-13 09:09:51','2018-03-13 09:09:51',NULL,'priceByDistance',NULL,NULL,'\0',NULL,'SHIPPING','[\"*\"]',NULL),(7,'2018-03-13 09:09:51','2018-03-13 09:09:51',NULL,'storePickUp',NULL,NULL,'\0',NULL,'SHIPPING','[\"*\"]',NULL),(8,'2018-03-13 09:09:51','2018-03-13 09:09:51',NULL,'moneyorder',NULL,NULL,'\0','moneyorder.gif','PAYMENT','[\"*\"]','moneyorder'),(9,'2018-03-13 09:09:51','2018-03-13 09:09:51',NULL,'paypal-express-checkout',NULL,'[{\"scheme\":\"\",\"host\":\"\",\"port\":\"\",\"uri\":\"\",\"env\":\"TEST\",\"config1\":\"https://www.sandbox.paypal.com/cgi-bin/webscr?cmd=_express-checkout&token=\",\"config2\":null},{\"scheme\":\"\",\"host\":\"\",\"port\":\"\",\"uri\":\"\",\"env\":\"PROD\",\"config1\":\"https://www.paypal.com/cgi-bin/webscr?cmd=_express-checkout&token=\",\"config2\":null}]','\0','icon-paypal.png','PAYMENT','[\"*\"]','paypal'),(10,'2018-03-13 09:09:51','2018-03-13 09:09:51',NULL,'beanstream',NULL,'[{\"scheme\":\"https\",\"host\":\"www.beanstream.com\",\"port\":\"443\",\"uri\":\"/scripts/process_transaction.asp\",\"env\":\"TEST\",\"config1\":null,\"config2\":null},{\"scheme\":\"https\",\"host\":\"www.beanstream.com\",\"port\":\"443\",\"uri\":\"/scripts/process_transaction.asp\",\"env\":\"PROD\",\"config1\":null,\"config2\":null}]','\0','beanstream.gif','PAYMENT','[\"US\",\"CA\",\"GB\"]','creditcard'),(11,'2018-03-13 09:09:51','2018-03-13 09:09:51',NULL,'stripe',NULL,'[{\"scheme\":\"https\",\"host\":\"www.stripe.com\",\"port\":\"443\",\"uri\":\"/\",\"env\":\"TEST\",\"config1\":null,\"config2\":null},{\"scheme\":\"https\",\"host\":\"www.stripe.com\",\"port\":\"443\",\"uri\":\"/\",\"env\":\"PROD\",\"config1\":null,\"config2\":null}]','\0','stripe.png','PAYMENT','[\"US\",\"CA\",\"GB\",\"AU\",\"FI\",\"DK\",\"IE\",\"NO\",\"SE\"]','creditcard'),(12,'2018-03-13 09:09:51','2018-03-13 09:09:51',NULL,'braintree',NULL,'[{\"scheme\":\"https\",\"host\":\"NOTREQUIRED\",\"port\":\"NOTREQUIRED\",\"uri\":\"NOTREQUIRED\",\"env\":\"TEST\",\"config1\":null,\"config2\":null},{\"scheme\":\"https\",\"host\":\"NOTREQUIRED\",\"port\":\"NOTREQUIRED\",\"uri\":\"NOTREQUIRED\",\"env\":\"PROD\",\"config1\":null,\"config2\":null}]','\0','braintree.jpg','PAYMENT','[\"US\",\"CA\",\"GB\",\"AU\",\"FI\",\"DK\",\"IE\",\"NO\",\"SE\",\"AL\",\"AD\",\"AT\",\"BY\",\"BE\",\"BG\",\"HY\",\"CY\",\"CZ\",\"FR\",\"GR\",\"IS\",\"IE\",\"IM\",\"IT\",\"PL\",\"LU\",\"CH\",\"RS\",\"SG\",\"MY\",\"HK\",\"NZ\"]','creditcard');
/*!40000 ALTER TABLE `module_configuration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `optin`
--

DROP TABLE IF EXISTS `optin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `optin` (
  `OPTIN_ID` bigint(20) NOT NULL,
  `CODE` varchar(255) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `END_DATE` datetime DEFAULT NULL,
  `START_DATE` datetime DEFAULT NULL,
  `MERCHANT_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`OPTIN_ID`),
  UNIQUE KEY `UK_manlx6siq6ddf14cud40k8gw6` (`MERCHANT_ID`,`CODE`),
  CONSTRAINT `FK_78lse42pdfcesqv7t666puqqi` FOREIGN KEY (`MERCHANT_ID`) REFERENCES `merchant_store` (`MERCHANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `optin`
--

LOCK TABLES `optin` WRITE;
/*!40000 ALTER TABLE `optin` DISABLE KEYS */;
/*!40000 ALTER TABLE `optin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_account`
--

DROP TABLE IF EXISTS `order_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_account` (
  `ORDER_ACCOUNT_ID` bigint(20) NOT NULL,
  `ORDER_ACCOUNT_BILL_DAY` int(11) NOT NULL,
  `ORDER_ACCOUNT_END_DATE` date DEFAULT NULL,
  `ORDER_ACCOUNT_START_DATE` date NOT NULL,
  `ORDER_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`ORDER_ACCOUNT_ID`),
  KEY `FK_jwovcys19bo3gyrko0kj0dh4l` (`ORDER_ID`),
  CONSTRAINT `FK_jwovcys19bo3gyrko0kj0dh4l` FOREIGN KEY (`ORDER_ID`) REFERENCES `orders` (`ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_account`
--

LOCK TABLES `order_account` WRITE;
/*!40000 ALTER TABLE `order_account` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_account_product`
--

DROP TABLE IF EXISTS `order_account_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_account_product` (
  `ORDER_ACCOUNT_PRODUCT_ID` bigint(20) NOT NULL,
  `ORDER_ACCOUNT_PRODUCT_ACCNT_DT` date DEFAULT NULL,
  `ORDER_ACCOUNT_PRODUCT_END_DT` date DEFAULT NULL,
  `ORDER_ACCOUNT_PRODUCT_EOT` datetime DEFAULT NULL,
  `ORDER_ACCOUNT_PRODUCT_L_ST_DT` datetime DEFAULT NULL,
  `ORDER_ACCOUNT_PRODUCT_L_TRX_ST` int(11) NOT NULL,
  `ORDER_ACCOUNT_PRODUCT_PM_FR_TY` int(11) NOT NULL,
  `ORDER_ACCOUNT_PRODUCT_ST_DT` date NOT NULL,
  `ORDER_ACCOUNT_PRODUCT_STATUS` int(11) NOT NULL,
  `ORDER_ACCOUNT_ID` bigint(20) NOT NULL,
  `ORDER_PRODUCT_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`ORDER_ACCOUNT_PRODUCT_ID`),
  KEY `FK_rh6ota16guhs9w00trr64087g` (`ORDER_ACCOUNT_ID`),
  KEY `FK_pcotjac5eu4pmsl4dhaq024po` (`ORDER_PRODUCT_ID`),
  CONSTRAINT `FK_pcotjac5eu4pmsl4dhaq024po` FOREIGN KEY (`ORDER_PRODUCT_ID`) REFERENCES `order_product` (`ORDER_PRODUCT_ID`),
  CONSTRAINT `FK_rh6ota16guhs9w00trr64087g` FOREIGN KEY (`ORDER_ACCOUNT_ID`) REFERENCES `order_account` (`ORDER_ACCOUNT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_account_product`
--

LOCK TABLES `order_account_product` WRITE;
/*!40000 ALTER TABLE `order_account_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_account_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_attribute`
--

DROP TABLE IF EXISTS `order_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_attribute` (
  `ORDER_ATTRIBUTE_ID` bigint(20) NOT NULL,
  `IDENTIFIER` varchar(255) NOT NULL,
  `VALUE` varchar(255) NOT NULL,
  `ORDER_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`ORDER_ATTRIBUTE_ID`),
  KEY `FK_pxjv2i0f7bouvj3tgklxipp37` (`ORDER_ID`),
  CONSTRAINT `FK_pxjv2i0f7bouvj3tgklxipp37` FOREIGN KEY (`ORDER_ID`) REFERENCES `orders` (`ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_attribute`
--

LOCK TABLES `order_attribute` WRITE;
/*!40000 ALTER TABLE `order_attribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_product`
--

DROP TABLE IF EXISTS `order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_product` (
  `ORDER_PRODUCT_ID` bigint(20) NOT NULL,
  `ONETIME_CHARGE` decimal(19,2) NOT NULL,
  `PRODUCT_NAME` varchar(64) NOT NULL,
  `PRODUCT_QUANTITY` int(11) DEFAULT NULL,
  `PRODUCT_SKU` varchar(255) DEFAULT NULL,
  `ORDER_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`ORDER_PRODUCT_ID`),
  KEY `FK_4nsxta166qmi0u7v02p6gtnxa` (`ORDER_ID`),
  CONSTRAINT `FK_4nsxta166qmi0u7v02p6gtnxa` FOREIGN KEY (`ORDER_ID`) REFERENCES `orders` (`ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_product`
--

LOCK TABLES `order_product` WRITE;
/*!40000 ALTER TABLE `order_product` DISABLE KEYS */;
INSERT INTO `order_product` VALUES (1,25.00,'Argan Lip Balm',1,'lb001',1),(50,25.00,'Argan Lip Balm',1,'lb001',50),(100,25.00,'Argan Lip Balm',1,'lb001',100),(101,50.00,'Shampoo of argan oil',1,'s001',101),(102,70.00,'conditioner argan',1,'cd001',102),(103,20.00,'Argan soap',1,'s002',103),(104,25.00,'Argan Lip Balm',1,'lb001',104),(150,88.50,'Argan body lotion',1,'bl003',150),(151,25.00,'baume a lèvres d\'argan',1,'lb001',150),(200,130.00,'candle with henne',1,'candle001',200),(201,240.00,'Crate Filled With Nuts And Fruit',1,'fayka002',200),(202,140.00,'red Coran kit',1,'coran002',200),(203,40.00,'argan oil face mask',1,'bm002',203),(204,40.00,'Argan soap',1,'s002',204),(205,80.00,'Coran',1,'coran001',205),(206,60.00,'Argan oil body lotion',1,'bl002',206),(207,190.00,'king mohammed VI',1,'paiting001',207),(208,320.00,'Clock',1,'clock001',208),(209,120.00,'bio edible argan oil',1,'eao002',209),(210,220.00,'dried fruits and nuts',1,'fakya001',210),(211,155.00,'big bouquet',1,'flower01',211),(212,145.00,'chocolate gift box',1,'chocolat01',212),(213,60.00,'scented candle',1,'candle002',213),(214,40.00,'argan oil face mask',1,'bm002',214),(215,40.00,'Argan soap',1,'s002',215),(216,160.00,'edible argan oil',1,'eao003',216),(217,100.00,'olive and argan hand cream',1,'hc003',217),(218,120.00,'bio edible argan oil',1,'eao002',218),(219,220.00,'dried fruits and nuts',1,'fakya001',219),(220,157.00,'eco-planter organic herb kit',1,'plant001',220),(221,160.00,'edible argan oil',1,'eao003',221),(222,240.00,'crate filled with nuts and fruit',1,'fayka002',222),(223,90.00,'organic dates',1,'dates001',223),(224,60.00,'scented candle',1,'candle002',224),(225,157.00,'eco-planter organic herb kit',1,'plant001',225),(226,160.00,'argan cream',1,'ac002',226),(227,40.00,'Argan soap',1,'s002',227),(228,60.00,'Hand and nail cream ',1,'hnt001',228),(229,40.00,'argan oil face mask',1,'bm002',229),(230,100.00,'Sweet and nutritious Amlou',1,'amlou002',230),(231,50.00,'Shampoo of argan',1,'s001',231),(232,50.00,'Shampoo of argan',1,'s001',232),(233,70.00,'conditioner argan',1,'cd001',233),(234,120.00,'Anti-ageing cream',1,'aac002 ',234),(235,250.00,'Argan Face Care set',1,'fc002',235),(236,40.00,'argan oil face mask',1,'bm002',236),(237,220.00,'dried fruits and nuts',1,'fakya001',237),(238,150.00,'Argan oil for skin',1,'ao001',238),(239,160.00,'edible argan oil',1,'eao003',239),(240,140.00,'red Coran kit',1,'coran002',240),(241,88.50,'Argan body lotion',1,'bl003',241),(242,20.00,'Morocco flag',1,'flag001',242),(243,50.00,'candle with moroccan touch',1,'candle003',243),(244,90.00,'organic dates',1,'dates001',244),(245,155.00,'big bouquet',1,'flower01',245),(246,160.00,'argan cream',1,'ac002',246),(247,50.00,'Shampoo of argan',1,'s001',247),(248,140.00,'medjool dates filled with nuts',1,'dates003',248),(249,140.00,'red Coran kit',1,'coran002',249),(250,140.00,'red Coran kit',1,'coran002',250),(251,40.00,'Argan soap',1,'s002',251),(252,20.00,'Morocco flag',1,'flag001',252),(253,80.00,'Coran',1,'coran001',253),(254,188.00,'chocolate truffles',1,'chocolat02',254),(255,88.50,'Argan body lotion',1,'bl003',255),(256,120.00,'Anti-ageing cream',1,'aac002 ',256),(257,40.00,'argan oil face mask',1,'bm002',257),(258,60.00,'Hand and nail cream ',1,'hnt001',258),(259,155.00,'big bouquet',1,'flower01',259),(260,145.00,'chocolate gift box',1,'chocolat01',260),(261,130.00,'candle with henne',1,'candle001',261),(262,25.00,'Argan Lip Balm',1,'lb001',262),(263,190.00,'king mohammed VI',1,'paiting001',263),(264,160.00,'edible argan oil',1,'eao003',264),(265,220.00,'kokedama kit',1,'plant002',265),(266,220.00,'kokedama kit',1,'plant002',266),(267,60.00,'Hand and nail cream ',1,'hnt001',267),(268,150.00,'Argan oil for skin',1,'ao001',268),(269,120.00,'bio edible argan oil',1,'eao002',269),(270,160.00,'edible argan oil',1,'eao003',270),(271,200.00,'Argan sunscreen',1,'ss001',271),(272,140.00,'medjool dates filled with nuts',1,'dates003',272),(273,157.00,'eco-planter organic herb kit',1,'plant001',273),(274,90.00,'luxury dates',1,'dates002',274),(275,220.00,'dried fruits and nuts',1,'fakya001',275),(276,50.00,'candle with moroccan touch',1,'candle003',276),(277,25.00,'Argan Lip Balm',1,'lb001',277),(278,130.00,'candle with henne',1,'candle001',278),(279,40.00,'Argan soap',1,'s002',279),(280,200.00,'Argan sunscreen',1,'ss001',280),(281,220.00,'dried fruits and nuts',1,'fakya001',281),(282,190.00,'king mohammed VI',1,'paiting001',282),(283,115.00,'Argan oil serum',1,'serum002',283),(284,130.00,'candle with henne',1,'candle001',284),(285,189.00,'beauty mask',1,'mb004',285),(286,152.00,'Organic Amlou With Almond',1,'amlou003',286),(287,250.00,'Argan Face Care set',1,'fc002',287),(288,130.00,'beautiful orchid',1,'flower02',288),(289,88.50,'Argan body lotion',1,'bl003',289),(290,90.00,'luxury dates',1,'dates002',290),(291,157.00,'eco-planter organic herb kit',1,'plant001',291),(292,140.00,'medjool dates filled with nuts',1,'dates003',292),(293,190.00,'king mohammed VI',1,'paiting001',293),(294,130.00,'beautiful orchid',1,'flower02',294),(295,115.00,'Argan oil serum',1,'serum002',295),(296,130.00,'candle with henne',1,'candle001',296),(297,40.00,'argan oil face mask',1,'bm002',297),(298,100.00,'olive and argan hand cream',1,'hc003',298),(299,190.00,'king mohammed VI',1,'paiting001',299),(300,60.00,'Hand and nail cream ',1,'hnt001',300),(301,60.00,'scented candle',1,'candle002',301),(302,120.00,'Anti-ageing cream',1,'aac002 ',302),(303,100.00,'Sweet and nutritious Amlou',1,'amlou002',303),(304,120.00,'bio edible argan oil',1,'eao002',304),(305,25.00,'Argan Lip Balm',1,'lb001',305),(306,60.00,'Hand and nail cream ',1,'hnt001',306),(307,100.00,'Sweet and nutritious Amlou',1,'amlou002',307),(308,140.00,'medjool dates filled with nuts',1,'dates003',308),(309,40.00,'argan oil face mask',1,'bm002',309),(310,90.00,'organic dates',1,'dates001',310),(311,88.50,'Argan body lotion',1,'bl003',311),(312,157.00,'eco-planter organic herb kit',1,'plant001',312),(313,50.00,'candle with moroccan touch',1,'candle003',313),(314,320.00,'Clock',1,'clock001',314),(315,157.00,'eco-planter organic herb kit',1,'plant001',315),(316,88.50,'Argan body lotion',1,'bl003',316),(317,190.00,'king mohammed VI',1,'paiting001',317),(318,240.00,'crate filled with nuts and fruit',1,'fayka002',318),(319,60.00,'Argan oil body lotion',1,'bl002',319),(320,250.00,'Argan Face Care set',1,'fc002',320),(321,60.00,'Hand and nail cream ',1,'hnt001',321),(322,220.00,'dried fruits and nuts',1,'fakya001',322),(323,157.00,'eco-planter organic herb kit',1,'plant001',323),(324,80.00,'Coran',1,'coran001',324),(325,130.00,'candle with henne',1,'candle001',325),(326,240.00,'crate filled with nuts and fruit',1,'fayka002',326),(327,80.00,'Coran',1,'coran001',327),(328,100.00,'olive and argan hand cream',1,'hc003',328),(329,189.00,'beauty mask',1,'mb004',329),(330,100.00,'Sweet and nutritious Amlou',1,'amlou002',330),(331,250.00,'Argan Face Care set',1,'fc002',331),(332,140.00,'medjool dates filled with nuts',1,'dates003',332),(333,90.00,'luxury dates',1,'dates002',333),(334,90.00,'foot cream with mint and argan',1,'hft002',334),(335,60.00,'Argan oil body lotion',1,'bl002',335),(336,145.00,'chocolate gift box',1,'chocolat01',336),(337,240.00,'crate filled with nuts and fruit',1,'fayka002',337),(338,130.00,'candle with henne',1,'candle001',338),(339,190.00,'king mohammed VI',1,'paiting001',339),(340,100.00,'olive and argan hand cream',1,'hc003',340),(341,60.00,'Hand and nail cream ',1,'hnt001',341),(342,100.00,'olive and argan hand cream',1,'hc003',342),(343,80.00,'Coran',1,'coran001',343),(344,25.00,'Argan Lip Balm',1,'lb001',344),(345,190.00,'king mohammed VI',1,'paiting001',345),(346,160.00,'edible argan oil',1,'eao003',346),(347,220.00,'kokedama kit',1,'plant002',347),(348,157.00,'eco-planter organic herb kit',1,'plant001',348),(349,40.00,'Argan soap',1,'s002',349),(350,60.00,'scented candle',1,'candle002',350),(351,90.00,'foot cream with mint and argan',1,'hft002',351),(352,155.00,'big bouquet',1,'flower01',352),(353,115.00,'Argan oil serum',1,'serum002',353),(354,130.00,'candle with henne',1,'candle001',354),(355,115.00,'Argan oil serum',1,'serum002',355),(356,100.00,'olive and argan hand cream',1,'hc003',356),(357,190.00,'king mohammed VI',1,'paiting001',357),(358,100.00,'olive and argan hand cream',1,'hc003',358),(359,60.00,'Hand and nail cream ',1,'hnt001',359),(360,100.00,'olive and argan hand cream',1,'hc003',360),(361,220.00,'kokedama kit',1,'plant002',361),(362,115.00,'Argan oil serum',1,'serum002',362),(363,200.00,'Argan sunscreen',1,'ss001',363),(364,70.00,'conditioner argan',1,'cd001',364),(365,60.00,'Argan oil body lotion',1,'bl002',365),(366,90.00,'foot cream with mint and argan',1,'hft002',366),(367,140.00,'red Coran kit',1,'coran002',367),(368,150.00,'Argan oil for skin',1,'ao001',368),(369,120.00,'Anti-ageing cream',1,'aac002 ',369),(370,115.00,'Argan oil serum',1,'serum002',370),(371,70.00,'conditioner argan',1,'cd001',371),(372,120.00,'Anti-ageing cream',1,'aac002 ',372),(373,25.00,'Argan Lip Balm',1,'lb001',373),(374,220.00,'dried fruits and nuts',1,'fakya001',374),(375,140.00,'medjool dates filled with nuts',1,'dates003',375),(376,160.00,'cream anti-age',1,'caa001',376),(377,20.00,'Morocco flag',1,'flag001',377),(378,160.00,'cream anti-age',1,'caa001',378),(379,100.00,'olive and argan hand cream',1,'hc003',379),(380,40.00,'argan oil face mask',1,'bm002',380),(381,115.00,'Argan oil serum',1,'serum002',381),(382,157.00,'eco-planter organic herb kit',1,'plant001',382),(383,130.00,'candle with henne',1,'candle001',383),(384,130.00,'beautiful orchid',1,'flower02',384),(385,155.00,'big bouquet',1,'flower01',385),(386,90.00,'foot cream with mint and argan',1,'hft002',386),(387,120.00,'bio edible argan oil',1,'eao002',387),(388,155.00,'big bouquet',1,'flower01',388),(389,90.00,'organic dates',1,'dates001',389),(390,140.00,'red Coran kit',1,'coran002',390),(391,145.00,'chocolate gift box',1,'chocolat01',391),(392,40.00,'Argan soap',1,'s002',392),(393,152.00,'Organic Amlou With Almond',1,'amlou003',393),(394,320.00,'Clock',1,'clock001',394),(395,50.00,'candle with moroccan touch',1,'candle003',395),(396,190.00,'king mohammed VI',1,'paiting001',396),(397,60.00,'Hand and nail cream ',1,'hnt001',397),(398,130.00,'candle with henne',1,'candle001',398),(399,190.00,'king mohammed VI',1,'paiting001',399),(400,100.00,'olive and argan hand cream',1,'hc003',400),(401,40.00,'Argan soap',1,'s002',401),(402,70.00,'conditioner argan',1,'cd001',402),(403,250.00,'Argan Face Care set',1,'fc002',403),(404,240.00,'crate filled with nuts and fruit',1,'fayka002',404),(405,100.00,'olive and argan hand cream',1,'hc003',405),(406,160.00,'edible argan oil',1,'eao003',406),(407,130.00,'candle with henne',1,'candle001',407),(408,190.00,'king mohammed VI',1,'paiting001',408),(409,60.00,'Hand and nail cream ',1,'hnt001',409),(410,60.00,'scented candle',1,'candle002',410),(411,60.00,'Hand and nail cream ',1,'hnt001',411),(412,50.00,'Shampoo of argan',1,'s001',412),(413,188.00,'chocolate truffles',1,'chocolat02',413),(414,240.00,'crate filled with nuts and fruit',1,'fayka002',414),(415,188.00,'chocolate truffles',1,'chocolat02',415),(416,189.00,'beauty mask',1,'mb004',416),(417,145.00,'chocolate gift box',1,'chocolat01',417),(418,157.00,'eco-planter organic herb kit',1,'plant001',418),(419,90.00,'organic dates',1,'dates001',419),(420,155.00,'big bouquet',1,'flower01',420),(421,60.00,'Hand and nail cream ',1,'hnt001',421),(422,50.00,'candle with moroccan touch',1,'candle003',422),(423,70.00,'conditioner argan',1,'cd001',423),(424,140.00,'medjool dates filled with nuts',1,'dates003',424),(425,40.00,'argan oil face mask',1,'bm002',425),(426,140.00,'medjool dates filled with nuts',1,'dates003',426),(427,157.00,'eco-planter organic herb kit',1,'plant001',427),(428,145.00,'chocolate gift box',1,'chocolat01',428),(429,250.00,'Argan Face Care set',1,'fc002',429),(430,140.00,'medjool dates filled with nuts',1,'dates003',430),(431,140.00,'medjool dates filled with nuts',1,'dates003',431),(432,152.00,'Organic Amlou With Almond',1,'amlou003',432),(433,25.00,'Argan Lip Balm',1,'lb001',433),(434,60.00,'Hand and nail cream ',1,'hnt001',434),(435,152.00,'Organic Amlou With Almond',1,'amlou003',435),(436,130.00,'candle with henne',1,'candle001',436),(437,200.00,'Argan sunscreen',1,'ss001',437),(438,157.00,'eco-planter organic herb kit',1,'plant001',438),(439,220.00,'dried fruits and nuts',1,'fakya001',439),(440,60.00,'Argan oil body lotion',1,'bl002',440),(441,60.00,'Hand and nail cream ',1,'hnt001',441),(442,240.00,'crate filled with nuts and fruit',1,'fayka002',442),(443,140.00,'medjool dates filled with nuts',1,'dates003',443),(444,160.00,'cream anti-age',1,'caa001',444),(445,60.00,'scented candle',1,'candle002',445),(446,20.00,'Morocco flag',1,'flag001',446),(447,40.00,'Argan soap',1,'s002',447),(448,140.00,'medjool dates filled with nuts',1,'dates003',448),(449,90.00,'foot cream with mint and argan',1,'hft002',449),(450,100.00,'olive and argan hand cream',1,'hc003',450),(451,160.00,'argan cream',1,'ac002',451),(452,88.50,'Argan body lotion',1,'bl003',452),(453,60.00,'Hand and nail cream ',1,'hnt001',453),(454,188.00,'chocolate truffles',1,'chocolat02',454),(455,152.00,'Organic Amlou With Almond',1,'amlou003',455),(456,60.00,'scented candle',1,'candle002',456),(457,40.00,'argan oil face mask',1,'bm002',457),(458,70.00,'conditioner argan',1,'cd001',458),(459,60.00,'Argan oil body lotion',1,'bl002',459),(460,60.00,'Argan oil body lotion',1,'bl002',460),(461,220.00,'kokedama kit',1,'plant002',461),(462,25.00,'Argan Lip Balm',1,'lb001',462),(463,145.00,'chocolate gift box',1,'chocolat01',463),(464,152.00,'Organic Amlou With Almond',1,'amlou003',464),(465,200.00,'Argan sunscreen',1,'ss001',465),(466,240.00,'crate filled with nuts and fruit',1,'fayka002',466),(467,25.00,'Argan Lip Balm',1,'lb001',467),(468,150.00,'Argan oil for skin',1,'ao001',468),(469,90.00,'organic dates',1,'dates001',469),(470,120.00,'bio edible argan oil',1,'eao002',470),(471,40.00,'argan oil face mask',1,'bm002',471),(472,100.00,'Sweet and nutritious Amlou',1,'amlou002',472),(473,250.00,'Argan Face Care set',1,'fc002',473),(474,240.00,'crate filled with nuts and fruit',1,'fayka002',474),(475,160.00,'argan cream',1,'ac002',475),(476,40.00,'argan oil face mask',1,'bm002',476),(477,100.00,'Sweet and nutritious Amlou',1,'amlou002',477),(478,150.00,'Argan oil for skin',1,'ao001',478),(479,90.00,'organic dates',1,'dates001',479),(480,152.00,'Organic Amlou With Almond',1,'amlou003',480),(481,90.00,'foot cream with mint and argan',1,'hft002',481),(482,200.00,'Argan sunscreen',1,'ss001',482),(483,115.00,'Argan oil serum',1,'serum002',483),(484,90.00,'organic dates',1,'dates001',484),(485,115.00,'Argan oil serum',1,'serum002',485),(486,90.00,'luxury dates',1,'dates002',486),(487,140.00,'red Coran kit',1,'coran002',487),(488,130.00,'beautiful orchid',1,'flower02',488),(489,155.00,'big bouquet',1,'flower01',489),(490,60.00,'Hand and nail cream ',1,'hnt001',490),(491,150.00,'Argan oil for skin',1,'ao001',491),(492,100.00,'Sweet and nutritious Amlou',1,'amlou002',492),(493,160.00,'cream anti-age',1,'caa001',493),(494,130.00,'candle with henne',1,'candle001',494),(495,140.00,'medjool dates filled with nuts',1,'dates003',495),(496,70.00,'conditioner argan',1,'cd001',496),(497,60.00,'Hand and nail cream ',1,'hnt001',497),(498,220.00,'kokedama kit',1,'plant002',498),(499,140.00,'red Coran kit',1,'coran002',499),(500,60.00,'scented candle',1,'candle002',500);
/*!40000 ALTER TABLE `order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_product_attribute`
--

DROP TABLE IF EXISTS `order_product_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_product_attribute` (
  `ORDER_PRODUCT_ATTRIBUTE_ID` bigint(20) NOT NULL,
  `PRODUCT_ATTRIBUTE_IS_FREE` bit(1) NOT NULL,
  `PRODUCT_ATTRIBUTE_NAME` varchar(255) DEFAULT NULL,
  `PRODUCT_ATTRIBUTE_PRICE` decimal(15,4) NOT NULL,
  `PRODUCT_ATTRIBUTE_VAL_NAME` varchar(255) DEFAULT NULL,
  `PRODUCT_ATTRIBUTE_WEIGHT` decimal(15,4) DEFAULT NULL,
  `PRODUCT_OPTION_ID` bigint(20) NOT NULL,
  `PRODUCT_OPTION_VALUE_ID` bigint(20) NOT NULL,
  `ORDER_PRODUCT_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`ORDER_PRODUCT_ATTRIBUTE_ID`),
  KEY `FK_5rjwlj26iv0e3vnuajjiniek7` (`ORDER_PRODUCT_ID`),
  CONSTRAINT `FK_5rjwlj26iv0e3vnuajjiniek7` FOREIGN KEY (`ORDER_PRODUCT_ID`) REFERENCES `order_product` (`ORDER_PRODUCT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_product_attribute`
--

LOCK TABLES `order_product_attribute` WRITE;
/*!40000 ALTER TABLE `order_product_attribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_product_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_product_download`
--

DROP TABLE IF EXISTS `order_product_download`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_product_download` (
  `ORDER_PRODUCT_DOWNLOAD_ID` bigint(20) NOT NULL,
  `DOWNLOAD_COUNT` int(11) NOT NULL,
  `DOWNLOAD_MAXDAYS` int(11) NOT NULL,
  `ORDER_PRODUCT_FILENAME` varchar(255) NOT NULL,
  `ORDER_PRODUCT_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`ORDER_PRODUCT_DOWNLOAD_ID`),
  KEY `FK_52kb521ve197of5311bu3ee5b` (`ORDER_PRODUCT_ID`),
  CONSTRAINT `FK_52kb521ve197of5311bu3ee5b` FOREIGN KEY (`ORDER_PRODUCT_ID`) REFERENCES `order_product` (`ORDER_PRODUCT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_product_download`
--

LOCK TABLES `order_product_download` WRITE;
/*!40000 ALTER TABLE `order_product_download` DISABLE KEYS */;
INSERT INTO `order_product_download` VALUES (201,1,31,'Your digital file name',201),(202,1,31,'Your digital file name',202);
/*!40000 ALTER TABLE `order_product_download` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_product_price`
--

DROP TABLE IF EXISTS `order_product_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_product_price` (
  `ORDER_PRODUCT_PRICE_ID` bigint(20) NOT NULL,
  `DEFAULT_PRICE` bit(1) NOT NULL,
  `PRODUCT_PRICE` decimal(19,2) NOT NULL,
  `PRODUCT_PRICE_CODE` varchar(64) NOT NULL,
  `PRODUCT_PRICE_NAME` varchar(255) DEFAULT NULL,
  `PRODUCT_PRICE_SPECIAL` decimal(19,2) DEFAULT NULL,
  `PRD_PRICE_SPECIAL_END_DT` datetime DEFAULT NULL,
  `PRD_PRICE_SPECIAL_ST_DT` datetime DEFAULT NULL,
  `ORDER_PRODUCT_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`ORDER_PRODUCT_PRICE_ID`),
  KEY `FK_shr0wnakwvod5vksceh64umfy` (`ORDER_PRODUCT_ID`),
  CONSTRAINT `FK_shr0wnakwvod5vksceh64umfy` FOREIGN KEY (`ORDER_PRODUCT_ID`) REFERENCES `order_product` (`ORDER_PRODUCT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_product_price`
--

LOCK TABLES `order_product_price` WRITE;
/*!40000 ALTER TABLE `order_product_price` DISABLE KEYS */;
INSERT INTO `order_product_price` VALUES (1,'',25.00,'base','DEFAULT',NULL,NULL,NULL,1),(50,'',25.00,'base','DEFAULT',NULL,NULL,NULL,50),(100,'',25.00,'base','DEFAULT',NULL,NULL,NULL,100),(101,'',50.00,'base','DEFAULT',NULL,NULL,NULL,101),(102,'',70.00,'base','DEFAULT',NULL,NULL,NULL,102),(103,'',20.00,'base','DEFAULT',NULL,NULL,NULL,103),(104,'',25.00,'base','DEFAULT',NULL,NULL,NULL,104),(150,'',88.50,'base','DEFAULT',NULL,NULL,NULL,150),(151,'',25.00,'base','DEFAULT',NULL,NULL,NULL,151),(200,'',130.00,'base','DEFAULT',NULL,NULL,NULL,200),(201,'',240.00,'base','DEFAULT',NULL,NULL,NULL,201),(202,'',140.00,'base','DEFAULT',NULL,NULL,NULL,202),(203,'',40.00,'base','DEFAULT',NULL,NULL,NULL,203),(204,'',40.00,'base','DEFAULT',NULL,NULL,NULL,204),(205,'',80.00,'base','DEFAULT',NULL,NULL,NULL,205),(206,'',60.00,'base','DEFAULT',NULL,NULL,NULL,206),(207,'',190.00,'base','DEFAULT',NULL,NULL,NULL,207),(208,'',320.00,'base','DEFAULT',NULL,NULL,NULL,208),(209,'',120.00,'base','DEFAULT',NULL,NULL,NULL,209),(210,'',220.00,'base','DEFAULT',NULL,NULL,NULL,210),(211,'',155.00,'base','DEFAULT',NULL,NULL,NULL,211),(212,'',145.00,'base','DEFAULT',NULL,NULL,NULL,212),(213,'',60.00,'base','DEFAULT',NULL,NULL,NULL,213),(214,'',40.00,'base','DEFAULT',NULL,NULL,NULL,214),(215,'',40.00,'base','DEFAULT',NULL,NULL,NULL,215),(216,'',160.00,'base','DEFAULT',NULL,NULL,NULL,216),(217,'',100.00,'base','DEFAULT',NULL,NULL,NULL,217),(218,'',120.00,'base','DEFAULT',NULL,NULL,NULL,218),(219,'',220.00,'base','DEFAULT',NULL,NULL,NULL,219),(220,'',157.00,'base','DEFAULT',NULL,NULL,NULL,220),(221,'',160.00,'base','DEFAULT',NULL,NULL,NULL,221),(222,'',240.00,'base','DEFAULT',NULL,NULL,NULL,222),(223,'',90.00,'base','DEFAULT',NULL,NULL,NULL,223),(224,'',60.00,'base','DEFAULT',NULL,NULL,NULL,224),(225,'',157.00,'base','DEFAULT',NULL,NULL,NULL,225),(226,'',160.00,'base','DEFAULT',NULL,NULL,NULL,226),(227,'',40.00,'base','DEFAULT',NULL,NULL,NULL,227),(228,'',60.00,'base','DEFAULT',NULL,NULL,NULL,228),(229,'',40.00,'base','DEFAULT',NULL,NULL,NULL,229),(230,'',100.00,'base','DEFAULT',NULL,NULL,NULL,230),(231,'',50.00,'base','DEFAULT',NULL,NULL,NULL,231),(232,'',50.00,'base','DEFAULT',NULL,NULL,NULL,232),(233,'',70.00,'base','DEFAULT',NULL,NULL,NULL,233),(234,'',120.00,'base','DEFAULT',NULL,NULL,NULL,234),(235,'',250.00,'base','DEFAULT',NULL,NULL,NULL,235),(236,'',40.00,'base','DEFAULT',NULL,NULL,NULL,236),(237,'',220.00,'base','DEFAULT',NULL,NULL,NULL,237),(238,'',150.00,'base','DEFAULT',NULL,NULL,NULL,238),(239,'',160.00,'base','DEFAULT',NULL,NULL,NULL,239),(240,'',140.00,'base','DEFAULT',NULL,NULL,NULL,240),(241,'',88.50,'base','DEFAULT',NULL,NULL,NULL,241),(242,'',20.00,'base','DEFAULT',NULL,NULL,NULL,242),(243,'',50.00,'base','DEFAULT',NULL,NULL,NULL,243),(244,'',90.00,'base','DEFAULT',NULL,NULL,NULL,244),(245,'',155.00,'base','DEFAULT',NULL,NULL,NULL,245),(246,'',160.00,'base','DEFAULT',NULL,NULL,NULL,246),(247,'',50.00,'base','DEFAULT',NULL,NULL,NULL,247),(248,'',140.00,'base','DEFAULT',NULL,NULL,NULL,248),(249,'',140.00,'base','DEFAULT',NULL,NULL,NULL,249),(250,'',140.00,'base','DEFAULT',NULL,NULL,NULL,250),(251,'',40.00,'base','DEFAULT',NULL,NULL,NULL,251),(252,'',20.00,'base','DEFAULT',NULL,NULL,NULL,252),(253,'',80.00,'base','DEFAULT',NULL,NULL,NULL,253),(254,'',188.00,'base','DEFAULT',NULL,NULL,NULL,254),(255,'',88.50,'base','DEFAULT',NULL,NULL,NULL,255),(256,'',120.00,'base','DEFAULT',NULL,NULL,NULL,256),(257,'',40.00,'base','DEFAULT',NULL,NULL,NULL,257),(258,'',60.00,'base','DEFAULT',NULL,NULL,NULL,258),(259,'',155.00,'base','DEFAULT',NULL,NULL,NULL,259),(260,'',145.00,'base','DEFAULT',NULL,NULL,NULL,260),(261,'',130.00,'base','DEFAULT',NULL,NULL,NULL,261),(262,'',25.00,'base','DEFAULT',NULL,NULL,NULL,262),(263,'',190.00,'base','DEFAULT',NULL,NULL,NULL,263),(264,'',160.00,'base','DEFAULT',NULL,NULL,NULL,264),(265,'',220.00,'base','DEFAULT',NULL,NULL,NULL,265),(266,'',220.00,'base','DEFAULT',NULL,NULL,NULL,266),(267,'',60.00,'base','DEFAULT',NULL,NULL,NULL,267),(268,'',150.00,'base','DEFAULT',NULL,NULL,NULL,268),(269,'',120.00,'base','DEFAULT',NULL,NULL,NULL,269),(270,'',160.00,'base','DEFAULT',NULL,NULL,NULL,270),(271,'',200.00,'base','DEFAULT',NULL,NULL,NULL,271),(272,'',140.00,'base','DEFAULT',NULL,NULL,NULL,272),(273,'',157.00,'base','DEFAULT',NULL,NULL,NULL,273),(274,'',90.00,'base','DEFAULT',NULL,NULL,NULL,274),(275,'',220.00,'base','DEFAULT',NULL,NULL,NULL,275),(276,'',50.00,'base','DEFAULT',NULL,NULL,NULL,276),(277,'',25.00,'base','DEFAULT',NULL,NULL,NULL,277),(278,'',130.00,'base','DEFAULT',NULL,NULL,NULL,278),(279,'',40.00,'base','DEFAULT',NULL,NULL,NULL,279),(280,'',200.00,'base','DEFAULT',NULL,NULL,NULL,280),(281,'',220.00,'base','DEFAULT',NULL,NULL,NULL,281),(282,'',190.00,'base','DEFAULT',NULL,NULL,NULL,282),(283,'',115.00,'base','DEFAULT',NULL,NULL,NULL,283),(284,'',130.00,'base','DEFAULT',NULL,NULL,NULL,284),(285,'',189.00,'base','DEFAULT',NULL,NULL,NULL,285),(286,'',152.00,'base','DEFAULT',NULL,NULL,NULL,286),(287,'',250.00,'base','DEFAULT',NULL,NULL,NULL,287),(288,'',130.00,'base','DEFAULT',NULL,NULL,NULL,288),(289,'',88.50,'base','DEFAULT',NULL,NULL,NULL,289),(290,'',90.00,'base','DEFAULT',NULL,NULL,NULL,290),(291,'',157.00,'base','DEFAULT',NULL,NULL,NULL,291),(292,'',140.00,'base','DEFAULT',NULL,NULL,NULL,292),(293,'',190.00,'base','DEFAULT',NULL,NULL,NULL,293),(294,'',130.00,'base','DEFAULT',NULL,NULL,NULL,294),(295,'',115.00,'base','DEFAULT',NULL,NULL,NULL,295),(296,'',130.00,'base','DEFAULT',NULL,NULL,NULL,296),(297,'',40.00,'base','DEFAULT',NULL,NULL,NULL,297),(298,'',100.00,'base','DEFAULT',NULL,NULL,NULL,298),(299,'',190.00,'base','DEFAULT',NULL,NULL,NULL,299),(300,'',60.00,'base','DEFAULT',NULL,NULL,NULL,300),(301,'',60.00,'base','DEFAULT',NULL,NULL,NULL,301),(302,'',120.00,'base','DEFAULT',NULL,NULL,NULL,302),(303,'',100.00,'base','DEFAULT',NULL,NULL,NULL,303),(304,'',120.00,'base','DEFAULT',NULL,NULL,NULL,304),(305,'',25.00,'base','DEFAULT',NULL,NULL,NULL,305),(306,'',60.00,'base','DEFAULT',NULL,NULL,NULL,306),(307,'',100.00,'base','DEFAULT',NULL,NULL,NULL,307),(308,'',140.00,'base','DEFAULT',NULL,NULL,NULL,308),(309,'',40.00,'base','DEFAULT',NULL,NULL,NULL,309),(310,'',90.00,'base','DEFAULT',NULL,NULL,NULL,310),(311,'',88.50,'base','DEFAULT',NULL,NULL,NULL,311),(312,'',157.00,'base','DEFAULT',NULL,NULL,NULL,312),(313,'',50.00,'base','DEFAULT',NULL,NULL,NULL,313),(314,'',320.00,'base','DEFAULT',NULL,NULL,NULL,314),(315,'',157.00,'base','DEFAULT',NULL,NULL,NULL,315),(316,'',88.50,'base','DEFAULT',NULL,NULL,NULL,316),(317,'',190.00,'base','DEFAULT',NULL,NULL,NULL,317),(318,'',240.00,'base','DEFAULT',NULL,NULL,NULL,318),(319,'',60.00,'base','DEFAULT',NULL,NULL,NULL,319),(320,'',250.00,'base','DEFAULT',NULL,NULL,NULL,320),(321,'',60.00,'base','DEFAULT',NULL,NULL,NULL,321),(322,'',220.00,'base','DEFAULT',NULL,NULL,NULL,322),(323,'',157.00,'base','DEFAULT',NULL,NULL,NULL,323),(324,'',80.00,'base','DEFAULT',NULL,NULL,NULL,324),(325,'',130.00,'base','DEFAULT',NULL,NULL,NULL,325),(326,'',240.00,'base','DEFAULT',NULL,NULL,NULL,326),(327,'',80.00,'base','DEFAULT',NULL,NULL,NULL,327),(328,'',100.00,'base','DEFAULT',NULL,NULL,NULL,328),(329,'',189.00,'base','DEFAULT',NULL,NULL,NULL,329),(330,'',100.00,'base','DEFAULT',NULL,NULL,NULL,330),(331,'',250.00,'base','DEFAULT',NULL,NULL,NULL,331),(332,'',140.00,'base','DEFAULT',NULL,NULL,NULL,332),(333,'',90.00,'base','DEFAULT',NULL,NULL,NULL,333),(334,'',90.00,'base','DEFAULT',NULL,NULL,NULL,334),(335,'',60.00,'base','DEFAULT',NULL,NULL,NULL,335),(336,'',145.00,'base','DEFAULT',NULL,NULL,NULL,336),(337,'',240.00,'base','DEFAULT',NULL,NULL,NULL,337),(338,'',130.00,'base','DEFAULT',NULL,NULL,NULL,338),(339,'',190.00,'base','DEFAULT',NULL,NULL,NULL,339),(340,'',100.00,'base','DEFAULT',NULL,NULL,NULL,340),(341,'',60.00,'base','DEFAULT',NULL,NULL,NULL,341),(342,'',100.00,'base','DEFAULT',NULL,NULL,NULL,342),(343,'',80.00,'base','DEFAULT',NULL,NULL,NULL,343),(344,'',25.00,'base','DEFAULT',NULL,NULL,NULL,344),(345,'',190.00,'base','DEFAULT',NULL,NULL,NULL,345),(346,'',160.00,'base','DEFAULT',NULL,NULL,NULL,346),(347,'',220.00,'base','DEFAULT',NULL,NULL,NULL,347),(348,'',157.00,'base','DEFAULT',NULL,NULL,NULL,348),(349,'',40.00,'base','DEFAULT',NULL,NULL,NULL,349),(350,'',60.00,'base','DEFAULT',NULL,NULL,NULL,350),(351,'',90.00,'base','DEFAULT',NULL,NULL,NULL,351),(352,'',155.00,'base','DEFAULT',NULL,NULL,NULL,352),(353,'',115.00,'base','DEFAULT',NULL,NULL,NULL,353),(354,'',130.00,'base','DEFAULT',NULL,NULL,NULL,354),(355,'',115.00,'base','DEFAULT',NULL,NULL,NULL,355),(356,'',100.00,'base','DEFAULT',NULL,NULL,NULL,356),(357,'',190.00,'base','DEFAULT',NULL,NULL,NULL,357),(358,'',100.00,'base','DEFAULT',NULL,NULL,NULL,358),(359,'',60.00,'base','DEFAULT',NULL,NULL,NULL,359),(360,'',100.00,'base','DEFAULT',NULL,NULL,NULL,360),(361,'',220.00,'base','DEFAULT',NULL,NULL,NULL,361),(362,'',115.00,'base','DEFAULT',NULL,NULL,NULL,362),(363,'',200.00,'base','DEFAULT',NULL,NULL,NULL,363),(364,'',70.00,'base','DEFAULT',NULL,NULL,NULL,364),(365,'',60.00,'base','DEFAULT',NULL,NULL,NULL,365),(366,'',90.00,'base','DEFAULT',NULL,NULL,NULL,366),(367,'',140.00,'base','DEFAULT',NULL,NULL,NULL,367),(368,'',150.00,'base','DEFAULT',NULL,NULL,NULL,368),(369,'',120.00,'base','DEFAULT',NULL,NULL,NULL,369),(370,'',115.00,'base','DEFAULT',NULL,NULL,NULL,370),(371,'',70.00,'base','DEFAULT',NULL,NULL,NULL,371),(372,'',120.00,'base','DEFAULT',NULL,NULL,NULL,372),(373,'',25.00,'base','DEFAULT',NULL,NULL,NULL,373),(374,'',220.00,'base','DEFAULT',NULL,NULL,NULL,374),(375,'',140.00,'base','DEFAULT',NULL,NULL,NULL,375),(376,'',160.00,'base','DEFAULT',NULL,NULL,NULL,376),(377,'',20.00,'base','DEFAULT',NULL,NULL,NULL,377),(378,'',160.00,'base','DEFAULT',NULL,NULL,NULL,378),(379,'',100.00,'base','DEFAULT',NULL,NULL,NULL,379),(380,'',40.00,'base','DEFAULT',NULL,NULL,NULL,380),(381,'',115.00,'base','DEFAULT',NULL,NULL,NULL,381),(382,'',157.00,'base','DEFAULT',NULL,NULL,NULL,382),(383,'',130.00,'base','DEFAULT',NULL,NULL,NULL,383),(384,'',130.00,'base','DEFAULT',NULL,NULL,NULL,384),(385,'',155.00,'base','DEFAULT',NULL,NULL,NULL,385),(386,'',90.00,'base','DEFAULT',NULL,NULL,NULL,386),(387,'',120.00,'base','DEFAULT',NULL,NULL,NULL,387),(388,'',155.00,'base','DEFAULT',NULL,NULL,NULL,388),(389,'',90.00,'base','DEFAULT',NULL,NULL,NULL,389),(390,'',140.00,'base','DEFAULT',NULL,NULL,NULL,390),(391,'',145.00,'base','DEFAULT',NULL,NULL,NULL,391),(392,'',40.00,'base','DEFAULT',NULL,NULL,NULL,392),(393,'',152.00,'base','DEFAULT',NULL,NULL,NULL,393),(394,'',320.00,'base','DEFAULT',NULL,NULL,NULL,394),(395,'',50.00,'base','DEFAULT',NULL,NULL,NULL,395),(396,'',190.00,'base','DEFAULT',NULL,NULL,NULL,396),(397,'',60.00,'base','DEFAULT',NULL,NULL,NULL,397),(398,'',130.00,'base','DEFAULT',NULL,NULL,NULL,398),(399,'',190.00,'base','DEFAULT',NULL,NULL,NULL,399),(400,'',100.00,'base','DEFAULT',NULL,NULL,NULL,400),(401,'',40.00,'base','DEFAULT',NULL,NULL,NULL,401),(402,'',70.00,'base','DEFAULT',NULL,NULL,NULL,402),(403,'',250.00,'base','DEFAULT',NULL,NULL,NULL,403),(404,'',240.00,'base','DEFAULT',NULL,NULL,NULL,404),(405,'',100.00,'base','DEFAULT',NULL,NULL,NULL,405),(406,'',160.00,'base','DEFAULT',NULL,NULL,NULL,406),(407,'',130.00,'base','DEFAULT',NULL,NULL,NULL,407),(408,'',190.00,'base','DEFAULT',NULL,NULL,NULL,408),(409,'',60.00,'base','DEFAULT',NULL,NULL,NULL,409),(410,'',60.00,'base','DEFAULT',NULL,NULL,NULL,410),(411,'',60.00,'base','DEFAULT',NULL,NULL,NULL,411),(412,'',50.00,'base','DEFAULT',NULL,NULL,NULL,412),(413,'',188.00,'base','DEFAULT',NULL,NULL,NULL,413),(414,'',240.00,'base','DEFAULT',NULL,NULL,NULL,414),(415,'',188.00,'base','DEFAULT',NULL,NULL,NULL,415),(416,'',189.00,'base','DEFAULT',NULL,NULL,NULL,416),(417,'',145.00,'base','DEFAULT',NULL,NULL,NULL,417),(418,'',157.00,'base','DEFAULT',NULL,NULL,NULL,418),(419,'',90.00,'base','DEFAULT',NULL,NULL,NULL,419),(420,'',155.00,'base','DEFAULT',NULL,NULL,NULL,420),(421,'',60.00,'base','DEFAULT',NULL,NULL,NULL,421),(422,'',50.00,'base','DEFAULT',NULL,NULL,NULL,422),(423,'',70.00,'base','DEFAULT',NULL,NULL,NULL,423),(424,'',140.00,'base','DEFAULT',NULL,NULL,NULL,424),(425,'',40.00,'base','DEFAULT',NULL,NULL,NULL,425),(426,'',140.00,'base','DEFAULT',NULL,NULL,NULL,426),(427,'',157.00,'base','DEFAULT',NULL,NULL,NULL,427),(428,'',145.00,'base','DEFAULT',NULL,NULL,NULL,428),(429,'',250.00,'base','DEFAULT',NULL,NULL,NULL,429),(430,'',140.00,'base','DEFAULT',NULL,NULL,NULL,430),(431,'',140.00,'base','DEFAULT',NULL,NULL,NULL,431),(432,'',152.00,'base','DEFAULT',NULL,NULL,NULL,432),(433,'',25.00,'base','DEFAULT',NULL,NULL,NULL,433),(434,'',60.00,'base','DEFAULT',NULL,NULL,NULL,434),(435,'',152.00,'base','DEFAULT',NULL,NULL,NULL,435),(436,'',130.00,'base','DEFAULT',NULL,NULL,NULL,436),(437,'',200.00,'base','DEFAULT',NULL,NULL,NULL,437),(438,'',157.00,'base','DEFAULT',NULL,NULL,NULL,438),(439,'',220.00,'base','DEFAULT',NULL,NULL,NULL,439),(440,'',60.00,'base','DEFAULT',NULL,NULL,NULL,440),(441,'',60.00,'base','DEFAULT',NULL,NULL,NULL,441),(442,'',240.00,'base','DEFAULT',NULL,NULL,NULL,442),(443,'',140.00,'base','DEFAULT',NULL,NULL,NULL,443),(444,'',160.00,'base','DEFAULT',NULL,NULL,NULL,444),(445,'',60.00,'base','DEFAULT',NULL,NULL,NULL,445),(446,'',20.00,'base','DEFAULT',NULL,NULL,NULL,446),(447,'',40.00,'base','DEFAULT',NULL,NULL,NULL,447),(448,'',140.00,'base','DEFAULT',NULL,NULL,NULL,448),(449,'',90.00,'base','DEFAULT',NULL,NULL,NULL,449),(450,'',100.00,'base','DEFAULT',NULL,NULL,NULL,450),(451,'',160.00,'base','DEFAULT',NULL,NULL,NULL,451),(452,'',88.50,'base','DEFAULT',NULL,NULL,NULL,452),(453,'',60.00,'base','DEFAULT',NULL,NULL,NULL,453),(454,'',188.00,'base','DEFAULT',NULL,NULL,NULL,454),(455,'',152.00,'base','DEFAULT',NULL,NULL,NULL,455),(456,'',60.00,'base','DEFAULT',NULL,NULL,NULL,456),(457,'',40.00,'base','DEFAULT',NULL,NULL,NULL,457),(458,'',70.00,'base','DEFAULT',NULL,NULL,NULL,458),(459,'',60.00,'base','DEFAULT',NULL,NULL,NULL,459),(460,'',60.00,'base','DEFAULT',NULL,NULL,NULL,460),(461,'',220.00,'base','DEFAULT',NULL,NULL,NULL,461),(462,'',25.00,'base','DEFAULT',NULL,NULL,NULL,462),(463,'',145.00,'base','DEFAULT',NULL,NULL,NULL,463),(464,'',152.00,'base','DEFAULT',NULL,NULL,NULL,464),(465,'',200.00,'base','DEFAULT',NULL,NULL,NULL,465),(466,'',240.00,'base','DEFAULT',NULL,NULL,NULL,466),(467,'',25.00,'base','DEFAULT',NULL,NULL,NULL,467),(468,'',150.00,'base','DEFAULT',NULL,NULL,NULL,468),(469,'',90.00,'base','DEFAULT',NULL,NULL,NULL,469),(470,'',120.00,'base','DEFAULT',NULL,NULL,NULL,470),(471,'',40.00,'base','DEFAULT',NULL,NULL,NULL,471),(472,'',100.00,'base','DEFAULT',NULL,NULL,NULL,472),(473,'',250.00,'base','DEFAULT',NULL,NULL,NULL,473),(474,'',240.00,'base','DEFAULT',NULL,NULL,NULL,474),(475,'',160.00,'base','DEFAULT',NULL,NULL,NULL,475),(476,'',40.00,'base','DEFAULT',NULL,NULL,NULL,476),(477,'',100.00,'base','DEFAULT',NULL,NULL,NULL,477),(478,'',150.00,'base','DEFAULT',NULL,NULL,NULL,478),(479,'',90.00,'base','DEFAULT',NULL,NULL,NULL,479),(480,'',152.00,'base','DEFAULT',NULL,NULL,NULL,480),(481,'',90.00,'base','DEFAULT',NULL,NULL,NULL,481),(482,'',200.00,'base','DEFAULT',NULL,NULL,NULL,482),(483,'',115.00,'base','DEFAULT',NULL,NULL,NULL,483),(484,'',90.00,'base','DEFAULT',NULL,NULL,NULL,484),(485,'',115.00,'base','DEFAULT',NULL,NULL,NULL,485),(486,'',90.00,'base','DEFAULT',NULL,NULL,NULL,486),(487,'',140.00,'base','DEFAULT',NULL,NULL,NULL,487),(488,'',130.00,'base','DEFAULT',NULL,NULL,NULL,488),(489,'',155.00,'base','DEFAULT',NULL,NULL,NULL,489),(490,'',60.00,'base','DEFAULT',NULL,NULL,NULL,490),(491,'',150.00,'base','DEFAULT',NULL,NULL,NULL,491),(492,'',100.00,'base','DEFAULT',NULL,NULL,NULL,492),(493,'',160.00,'base','DEFAULT',NULL,NULL,NULL,493),(494,'',130.00,'base','DEFAULT',NULL,NULL,NULL,494),(495,'',140.00,'base','DEFAULT',NULL,NULL,NULL,495),(496,'',70.00,'base','DEFAULT',NULL,NULL,NULL,496),(497,'',60.00,'base','DEFAULT',NULL,NULL,NULL,497),(498,'',220.00,'base','DEFAULT',NULL,NULL,NULL,498),(499,'',140.00,'base','DEFAULT',NULL,NULL,NULL,499),(500,'',60.00,'base','DEFAULT',NULL,NULL,NULL,500);
/*!40000 ALTER TABLE `order_product_price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_status_history`
--

DROP TABLE IF EXISTS `order_status_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_status_history` (
  `ORDER_STATUS_HISTORY_ID` bigint(20) NOT NULL,
  `COMMENTS` longtext,
  `CUSTOMER_NOTIFIED` int(11) DEFAULT NULL,
  `DATE_ADDED` datetime NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `ORDER_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`ORDER_STATUS_HISTORY_ID`),
  KEY `FK_n14slyp7y649y5rhbmikw3pi0` (`ORDER_ID`),
  CONSTRAINT `FK_n14slyp7y649y5rhbmikw3pi0` FOREIGN KEY (`ORDER_ID`) REFERENCES `orders` (`ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_status_history`
--

LOCK TABLES `order_status_history` WRITE;
/*!40000 ALTER TABLE `order_status_history` DISABLE KEYS */;
INSERT INTO `order_status_history` VALUES (1,NULL,NULL,'2018-03-19 14:13:13','ORDERED',1),(50,NULL,NULL,'2018-03-20 00:40:47','ORDERED',50),(100,NULL,NULL,'2018-03-20 08:16:51','ORDERED',100),(101,NULL,NULL,'2018-03-20 08:17:46','ORDERED',101),(102,NULL,NULL,'2018-03-20 08:19:01','ORDERED',102),(103,NULL,NULL,'2018-03-20 08:19:59','ORDERED',103),(104,NULL,NULL,'2018-03-20 08:21:26','ORDERED',104),(150,NULL,NULL,'2018-04-16 09:59:01','ORDERED',150),(200,NULL,NULL,'2018-04-29 08:50:58','ORDERED',200),(201,'We received your order',1,'2018-01-25 11:40:14','ORDERED',201),(202,'Your order is being processed',1,'2017-11-21 11:40:14','PROCESSED',202),(203,'Your order is being processed',1,'2018-03-24 11:40:14','PROCESSED',203),(204,'You have been refunded',1,'2017-10-09 11:40:14','REFUNDED',204),(205,'Your order is being processed',1,'2017-08-08 11:40:14','PROCESSED',205),(206,'Your order has being canceled',1,'2018-02-16 11:40:14','CANCELED',206),(207,'You have been refunded',1,'2017-07-02 11:40:14','REFUNDED',207),(208,'Your order is being processed',1,'2018-03-01 11:40:14','PROCESSED',208),(209,'You have been refunded',1,'2017-09-22 11:40:14','REFUNDED',209),(210,'You have been refunded',1,'2017-11-20 11:40:14','REFUNDED',210),(211,'You have been refunded',1,'2017-11-16 11:40:14','REFUNDED',211),(212,'Your order has being canceled',1,'2017-12-06 11:40:14','CANCELED',212),(213,'We received your order',1,'2018-03-10 11:40:14','ORDERED',213),(214,'Your order has being canceled',1,'2018-02-20 11:40:14','CANCELED',214),(215,'Your order has being delivered',1,'2018-04-28 11:40:14','DELIVERED',215),(216,'Your order has being delivered',1,'2018-04-24 11:40:14','DELIVERED',216),(217,'Your order is being processed',1,'2018-04-29 11:40:14','PROCESSED',217),(218,'You have been refunded',1,'2017-07-28 11:40:14','REFUNDED',218),(219,'We received your order',1,'2018-03-16 11:40:14','ORDERED',219),(220,'Your order is being processed',1,'2017-10-25 11:40:14','PROCESSED',220),(221,'We received your order',1,'2017-10-14 11:40:14','ORDERED',221),(222,'You have been refunded',1,'2018-03-24 11:40:14','REFUNDED',222),(223,'You have been refunded',1,'2017-07-22 11:40:14','REFUNDED',223),(224,'Your order has being delivered',1,'2017-10-15 11:40:14','DELIVERED',224),(225,'You have been refunded',1,'2017-06-17 11:40:14','REFUNDED',225),(226,'Your order has being delivered',1,'2017-06-14 11:40:14','DELIVERED',226),(227,'You have been refunded',1,'2017-12-05 11:40:14','REFUNDED',227),(228,'You have been refunded',1,'2017-08-04 11:40:14','REFUNDED',228),(229,'You have been refunded',1,'2017-08-01 11:40:14','REFUNDED',229),(230,'Your order is being processed',1,'2017-08-22 11:40:14','PROCESSED',230),(231,'We received your order',1,'2017-08-01 11:40:14','ORDERED',231),(232,'Your order is being processed',1,'2017-12-15 11:40:15','PROCESSED',232),(233,'Your order is being processed',1,'2017-06-08 11:40:15','PROCESSED',233),(234,'Your order has being delivered',1,'2018-03-19 11:40:15','DELIVERED',234),(235,'Your order is being processed',1,'2018-03-04 11:40:15','PROCESSED',235),(236,'Your order has being delivered',1,'2018-04-26 11:40:15','DELIVERED',236),(237,'You have been refunded',1,'2017-05-10 11:40:15','REFUNDED',237),(238,'Your order has being delivered',1,'2017-11-22 11:40:15','DELIVERED',238),(239,'Your order has being delivered',1,'2018-02-23 11:40:15','DELIVERED',239),(240,'Your order has being delivered',1,'2017-09-07 11:40:15','DELIVERED',240),(241,'Your order has being delivered',1,'2018-03-16 11:40:15','DELIVERED',241),(242,'Your order has being canceled',1,'2017-10-20 11:40:15','CANCELED',242),(243,'Your order has being canceled',1,'2017-05-27 11:40:15','CANCELED',243),(244,'Your order is being processed',1,'2017-07-13 11:40:15','PROCESSED',244),(245,'Your order has being delivered',1,'2018-02-22 11:40:15','DELIVERED',245),(246,'Your order has being delivered',1,'2017-10-23 11:40:15','DELIVERED',246),(247,'Your order is being processed',1,'2018-03-02 11:40:15','PROCESSED',247),(248,'Your order has being delivered',1,'2018-01-28 11:40:15','DELIVERED',248),(249,'Your order is being processed',1,'2018-02-11 11:40:15','PROCESSED',249),(250,'Your order is being processed',1,'2018-04-11 11:40:15','PROCESSED',250),(251,'You have been refunded',1,'2017-09-13 11:40:15','REFUNDED',251),(252,'Your order is being processed',1,'2018-01-13 11:40:15','PROCESSED',252),(253,'Your order is being processed',1,'2017-05-24 11:40:15','PROCESSED',253),(254,'Your order has being delivered',1,'2017-05-09 11:40:15','DELIVERED',254),(255,'We received your order',1,'2017-10-06 11:40:15','ORDERED',255),(256,'We received your order',1,'2017-07-18 11:40:15','ORDERED',256),(257,'Your order is being processed',1,'2017-11-06 11:40:15','PROCESSED',257),(258,'Your order has being delivered',1,'2018-05-01 11:40:15','DELIVERED',258),(259,'Your order has being delivered',1,'2017-12-03 11:40:15','DELIVERED',259),(260,'Your order has being delivered',1,'2017-09-28 11:40:15','DELIVERED',260),(261,'You have been refunded',1,'2017-07-16 11:40:15','REFUNDED',261),(262,'Your order has being delivered',1,'2018-04-20 11:40:15','DELIVERED',262),(263,'You have been refunded',1,'2018-01-10 11:40:15','REFUNDED',263),(264,'Your order is being processed',1,'2017-12-23 11:40:15','PROCESSED',264),(265,'Your order is being processed',1,'2017-09-24 11:40:15','PROCESSED',265),(266,'Your order has being delivered',1,'2017-09-04 11:40:15','DELIVERED',266),(267,'Your order has being delivered',1,'2017-09-29 11:40:15','DELIVERED',267),(268,'We received your order',1,'2017-07-03 11:40:15','ORDERED',268),(269,'Your order is being processed',1,'2018-04-05 11:40:15','PROCESSED',269),(270,'Your order has being delivered',1,'2018-03-21 11:40:15','DELIVERED',270),(271,'You have been refunded',1,'2017-12-30 11:40:15','REFUNDED',271),(272,'You have been refunded',1,'2017-08-02 11:40:15','REFUNDED',272),(273,'You have been refunded',1,'2017-07-24 11:40:15','REFUNDED',273),(274,'Your order has being delivered',1,'2017-05-11 11:40:15','DELIVERED',274),(275,'You have been refunded',1,'2017-05-08 11:40:15','REFUNDED',275),(276,'Your order has being delivered',1,'2018-02-20 11:40:15','DELIVERED',276),(277,'Your order is being processed',1,'2017-08-13 11:40:15','PROCESSED',277),(278,'Your order is being processed',1,'2017-06-13 11:40:15','PROCESSED',278),(279,'Your order is being processed',1,'2017-10-14 11:40:15','PROCESSED',279),(280,'Your order has being delivered',1,'2017-05-09 11:40:15','DELIVERED',280),(281,'Your order is being processed',1,'2017-05-24 11:40:15','PROCESSED',281),(282,'Your order is being processed',1,'2017-12-23 11:40:15','PROCESSED',282),(283,'Your order has being canceled',1,'2018-03-04 11:40:15','CANCELED',283),(284,'Your order is being processed',1,'2018-01-04 11:40:15','PROCESSED',284),(285,'We received your order',1,'2017-06-20 11:40:15','ORDERED',285),(286,'We received your order',1,'2017-11-26 11:40:15','ORDERED',286),(287,'Your order is being processed',1,'2017-06-11 11:40:15','PROCESSED',287),(288,'You have been refunded',1,'2017-06-14 11:40:15','REFUNDED',288),(289,'We received your order',1,'2017-09-11 11:40:15','ORDERED',289),(290,'Your order is being processed',1,'2017-09-26 11:40:15','PROCESSED',290),(291,'Your order is being processed',1,'2017-06-24 11:40:15','PROCESSED',291),(292,'You have been refunded',1,'2017-09-22 11:40:15','REFUNDED',292),(293,'Your order has being delivered',1,'2017-10-10 11:40:15','DELIVERED',293),(294,'We received your order',1,'2017-11-18 11:40:15','ORDERED',294),(295,'Your order is being processed',1,'2018-03-25 11:40:15','PROCESSED',295),(296,'Your order is being processed',1,'2017-05-17 11:40:15','PROCESSED',296),(297,'We received your order',1,'2017-06-15 11:40:15','ORDERED',297),(298,'Your order has being canceled',1,'2017-08-07 11:40:15','CANCELED',298),(299,'Your order has being delivered',1,'2018-03-21 11:40:15','DELIVERED',299),(300,'Your order has being delivered',1,'2017-12-06 11:40:15','DELIVERED',300),(301,'Your order has being delivered',1,'2018-04-07 11:40:15','DELIVERED',301),(302,'You have been refunded',1,'2017-06-20 11:40:15','REFUNDED',302),(303,'Your order has being delivered',1,'2017-07-06 11:40:15','DELIVERED',303),(304,'Your order is being processed',1,'2017-07-07 11:40:15','PROCESSED',304),(305,'Your order has being delivered',1,'2017-07-05 11:40:15','DELIVERED',305),(306,'Your order is being processed',1,'2017-05-12 11:40:15','PROCESSED',306),(307,'Your order has being delivered',1,'2017-08-20 11:40:15','DELIVERED',307),(308,'Your order is being processed',1,'2017-11-29 11:40:15','PROCESSED',308),(309,'Your order is being processed',1,'2017-07-16 11:40:15','PROCESSED',309),(310,'You have been refunded',1,'2017-06-16 11:40:15','REFUNDED',310),(311,'We received your order',1,'2017-10-11 11:40:15','ORDERED',311),(312,'You have been refunded',1,'2017-09-05 11:40:15','REFUNDED',312),(313,'You have been refunded',1,'2017-12-28 11:40:15','REFUNDED',313),(314,'Your order has being delivered',1,'2018-01-28 11:40:15','DELIVERED',314),(315,'Your order has being canceled',1,'2017-07-20 11:40:15','CANCELED',315),(316,'Your order has being canceled',1,'2017-06-03 11:40:15','CANCELED',316),(317,'You have been refunded',1,'2018-03-24 11:40:15','REFUNDED',317),(318,'Your order has being canceled',1,'2017-09-09 11:40:15','CANCELED',318),(319,'Your order has being delivered',1,'2017-08-11 11:40:15','DELIVERED',319),(320,'Your order has being delivered',1,'2017-11-14 11:40:15','DELIVERED',320),(321,'Your order is being processed',1,'2017-08-12 11:40:15','PROCESSED',321),(322,'Your order is being processed',1,'2018-04-24 11:40:15','PROCESSED',322),(323,'Your order is being processed',1,'2017-07-13 11:40:15','PROCESSED',323),(324,'Your order has being canceled',1,'2017-11-04 11:40:15','CANCELED',324),(325,'You have been refunded',1,'2018-02-17 11:40:15','REFUNDED',325),(326,'You have been refunded',1,'2018-01-07 11:40:15','REFUNDED',326),(327,'You have been refunded',1,'2018-03-05 11:40:15','REFUNDED',327),(328,'Your order has being canceled',1,'2017-08-19 11:40:15','CANCELED',328),(329,'Your order has being delivered',1,'2017-06-13 11:40:15','DELIVERED',329),(330,'Your order is being processed',1,'2017-09-14 11:40:15','PROCESSED',330),(331,'You have been refunded',1,'2018-02-28 11:40:15','REFUNDED',331),(332,'You have been refunded',1,'2018-01-04 11:40:15','REFUNDED',332),(333,'You have been refunded',1,'2017-09-18 11:40:15','REFUNDED',333),(334,'Your order has being canceled',1,'2018-04-02 11:40:15','CANCELED',334),(335,'You have been refunded',1,'2017-09-09 11:40:15','REFUNDED',335),(336,'Your order has being delivered',1,'2018-01-09 11:40:15','DELIVERED',336),(337,'Your order is being processed',1,'2017-07-02 11:40:15','PROCESSED',337),(338,'Your order is being processed',1,'2017-07-07 11:40:15','PROCESSED',338),(339,'We received your order',1,'2017-05-16 11:40:15','ORDERED',339),(340,'You have been refunded',1,'2017-10-12 11:40:15','REFUNDED',340),(341,'Your order has being canceled',1,'2017-08-22 11:40:15','CANCELED',341),(342,'You have been refunded',1,'2018-02-22 11:40:15','REFUNDED',342),(343,'We received your order',1,'2018-01-17 11:40:15','ORDERED',343),(344,'We received your order',1,'2018-01-27 11:40:15','ORDERED',344),(345,'You have been refunded',1,'2018-02-15 11:40:15','REFUNDED',345),(346,'Your order has being delivered',1,'2017-06-15 11:40:15','DELIVERED',346),(347,'Your order is being processed',1,'2017-07-18 11:40:15','PROCESSED',347),(348,'We received your order',1,'2017-07-23 11:40:15','ORDERED',348),(349,'Your order has being canceled',1,'2018-04-24 11:40:15','CANCELED',349),(350,'You have been refunded',1,'2018-02-21 11:40:15','REFUNDED',350),(351,'We received your order',1,'2017-10-18 11:40:15','ORDERED',351),(352,'You have been refunded',1,'2018-02-28 11:40:15','REFUNDED',352),(353,'You have been refunded',1,'2017-05-25 11:40:15','REFUNDED',353),(354,'Your order has being delivered',1,'2017-12-21 11:40:15','DELIVERED',354),(355,'You have been refunded',1,'2018-01-11 11:40:15','REFUNDED',355),(356,'Your order is being processed',1,'2017-08-19 11:40:15','PROCESSED',356),(357,'Your order is being processed',1,'2017-07-05 11:40:15','PROCESSED',357),(358,'Your order is being processed',1,'2017-08-22 11:40:15','PROCESSED',358),(359,'Your order is being processed',1,'2017-12-25 11:40:15','PROCESSED',359),(360,'You have been refunded',1,'2017-12-12 11:40:15','REFUNDED',360),(361,'Your order is being processed',1,'2017-05-06 11:40:15','PROCESSED',361),(362,'You have been refunded',1,'2018-02-16 11:40:15','REFUNDED',362),(363,'Your order is being processed',1,'2018-03-14 11:40:15','PROCESSED',363),(364,'You have been refunded',1,'2017-07-05 11:40:15','REFUNDED',364),(365,'Your order has being delivered',1,'2017-05-03 11:40:15','DELIVERED',365),(366,'Your order has being delivered',1,'2018-02-28 11:40:15','DELIVERED',366),(367,'Your order has being canceled',1,'2017-06-26 11:40:15','CANCELED',367),(368,'We received your order',1,'2017-11-19 11:40:15','ORDERED',368),(369,'You have been refunded',1,'2017-10-19 11:40:15','REFUNDED',369),(370,'We received your order',1,'2017-06-23 11:40:15','ORDERED',370),(371,'We received your order',1,'2017-07-03 11:40:16','ORDERED',371),(372,'Your order has being delivered',1,'2017-10-10 11:40:16','DELIVERED',372),(373,'Your order is being processed',1,'2017-10-28 11:40:16','PROCESSED',373),(374,'You have been refunded',1,'2018-01-22 11:40:16','REFUNDED',374),(375,'Your order has being delivered',1,'2018-04-30 11:40:16','DELIVERED',375),(376,'Your order has being canceled',1,'2018-02-12 11:40:16','CANCELED',376),(377,'We received your order',1,'2017-07-15 11:40:16','ORDERED',377),(378,'You have been refunded',1,'2018-04-10 11:40:16','REFUNDED',378),(379,'Your order has being delivered',1,'2017-08-13 11:40:16','DELIVERED',379),(380,'Your order has being delivered',1,'2017-08-09 11:40:16','DELIVERED',380),(381,'You have been refunded',1,'2018-01-15 11:40:16','REFUNDED',381),(382,'Your order has being canceled',1,'2018-02-15 11:40:16','CANCELED',382),(383,'We received your order',1,'2017-09-06 11:40:16','ORDERED',383),(384,'Your order has being canceled',1,'2017-12-22 11:40:16','CANCELED',384),(385,'We received your order',1,'2018-01-30 11:40:16','ORDERED',385),(386,'Your order is being processed',1,'2017-09-28 11:40:16','PROCESSED',386),(387,'Your order is being processed',1,'2017-08-11 11:40:16','PROCESSED',387),(388,'Your order has being canceled',1,'2018-01-23 11:40:16','CANCELED',388),(389,'You have been refunded',1,'2017-08-25 11:40:16','REFUNDED',389),(390,'Your order is being processed',1,'2018-03-07 11:40:16','PROCESSED',390),(391,'You have been refunded',1,'2017-07-09 11:40:16','REFUNDED',391),(392,'Your order has being canceled',1,'2018-02-18 11:40:16','CANCELED',392),(393,'You have been refunded',1,'2017-07-26 11:40:16','REFUNDED',393),(394,'Your order has being canceled',1,'2018-03-19 11:40:16','CANCELED',394),(395,'We received your order',1,'2018-02-28 11:40:16','ORDERED',395),(396,'Your order has being delivered',1,'2018-01-15 11:40:16','DELIVERED',396),(397,'Your order has being canceled',1,'2018-02-28 11:40:16','CANCELED',397),(398,'Your order is being processed',1,'2018-03-13 11:40:16','PROCESSED',398),(399,'Your order has being delivered',1,'2017-10-04 11:40:16','DELIVERED',399),(400,'Your order has being delivered',1,'2018-02-19 11:40:16','DELIVERED',400),(401,'Your order has being canceled',1,'2018-03-26 11:40:16','CANCELED',401),(402,'Your order is being processed',1,'2017-07-04 11:40:16','PROCESSED',402),(403,'We received your order',1,'2017-06-07 11:40:16','ORDERED',403),(404,'You have been refunded',1,'2017-10-21 11:40:16','REFUNDED',404),(405,'Your order has being delivered',1,'2018-03-02 11:40:16','DELIVERED',405),(406,'You have been refunded',1,'2017-12-12 11:40:16','REFUNDED',406),(407,'We received your order',1,'2018-04-17 11:40:16','ORDERED',407),(408,'You have been refunded',1,'2017-06-20 11:40:16','REFUNDED',408),(409,'Your order has being delivered',1,'2017-08-11 11:40:16','DELIVERED',409),(410,'You have been refunded',1,'2018-01-07 11:40:16','REFUNDED',410),(411,'Your order has being delivered',1,'2017-11-21 11:40:16','DELIVERED',411),(412,'Your order has being canceled',1,'2018-03-04 11:40:16','CANCELED',412),(413,'You have been refunded',1,'2017-06-23 11:40:16','REFUNDED',413),(414,'We received your order',1,'2017-06-30 11:40:16','ORDERED',414),(415,'Your order has being delivered',1,'2017-11-02 11:40:16','DELIVERED',415),(416,'Your order has being delivered',1,'2017-05-13 11:40:16','DELIVERED',416),(417,'Your order is being processed',1,'2017-09-13 11:40:16','PROCESSED',417),(418,'You have been refunded',1,'2018-02-13 11:40:16','REFUNDED',418),(419,'Your order has being canceled',1,'2017-08-21 11:40:16','CANCELED',419),(420,'You have been refunded',1,'2017-07-28 11:40:16','REFUNDED',420),(421,'Your order has being delivered',1,'2017-11-07 11:40:16','DELIVERED',421),(422,'Your order is being processed',1,'2017-09-23 11:40:16','PROCESSED',422),(423,'We received your order',1,'2018-02-24 11:40:16','ORDERED',423),(424,'Your order is being processed',1,'2017-12-12 11:40:16','PROCESSED',424),(425,'Your order has being delivered',1,'2018-03-05 11:40:16','DELIVERED',425),(426,'Your order is being processed',1,'2018-04-01 11:40:16','PROCESSED',426),(427,'Your order is being processed',1,'2017-12-21 11:40:16','PROCESSED',427),(428,'Your order has being delivered',1,'2017-11-16 11:40:16','DELIVERED',428),(429,'Your order has being delivered',1,'2017-10-11 11:40:16','DELIVERED',429),(430,'Your order has being delivered',1,'2017-12-08 11:40:16','DELIVERED',430),(431,'Your order has being delivered',1,'2017-08-05 11:40:16','DELIVERED',431),(432,'You have been refunded',1,'2018-04-28 11:40:16','REFUNDED',432),(433,'Your order has being delivered',1,'2017-09-30 11:40:16','DELIVERED',433),(434,'We received your order',1,'2017-10-07 11:40:16','ORDERED',434),(435,'We received your order',1,'2017-08-16 11:40:16','ORDERED',435),(436,'Your order has being delivered',1,'2018-03-24 11:40:16','DELIVERED',436),(437,'Your order has being delivered',1,'2018-04-05 11:40:16','DELIVERED',437),(438,'You have been refunded',1,'2018-04-29 11:40:16','REFUNDED',438),(439,'You have been refunded',1,'2018-03-22 11:40:16','REFUNDED',439),(440,'Your order has being delivered',1,'2017-08-19 11:40:16','DELIVERED',440),(441,'Your order is being processed',1,'2017-05-22 11:40:16','PROCESSED',441),(442,'You have been refunded',1,'2018-04-24 11:40:16','REFUNDED',442),(443,'You have been refunded',1,'2017-05-11 11:40:16','REFUNDED',443),(444,'Your order is being processed',1,'2017-07-30 11:40:16','PROCESSED',444),(445,'You have been refunded',1,'2018-01-18 11:40:16','REFUNDED',445),(446,'We received your order',1,'2017-12-11 11:40:16','ORDERED',446),(447,'Your order has being delivered',1,'2017-10-23 11:40:16','DELIVERED',447),(448,'We received your order',1,'2017-11-29 11:40:16','ORDERED',448),(449,'Your order is being processed',1,'2017-06-23 11:40:16','PROCESSED',449),(450,'You have been refunded',1,'2018-02-16 11:40:16','REFUNDED',450),(451,'You have been refunded',1,'2017-10-19 11:40:16','REFUNDED',451),(452,'Your order has being delivered',1,'2017-08-15 11:40:16','DELIVERED',452),(453,'Your order is being processed',1,'2017-07-01 11:40:16','PROCESSED',453),(454,'You have been refunded',1,'2017-09-16 11:40:16','REFUNDED',454),(455,'Your order is being processed',1,'2018-04-05 11:40:16','PROCESSED',455),(456,'Your order is being processed',1,'2017-10-04 11:40:16','PROCESSED',456),(457,'You have been refunded',1,'2018-01-20 11:40:16','REFUNDED',457),(458,'We received your order',1,'2017-05-19 11:40:16','ORDERED',458),(459,'You have been refunded',1,'2018-04-21 11:40:16','REFUNDED',459),(460,'Your order has being delivered',1,'2017-09-14 11:40:16','DELIVERED',460),(461,'You have been refunded',1,'2017-09-28 11:40:16','REFUNDED',461),(462,'You have been refunded',1,'2017-07-04 11:40:16','REFUNDED',462),(463,'Your order is being processed',1,'2018-02-20 11:40:16','PROCESSED',463),(464,'We received your order',1,'2018-02-21 11:40:16','ORDERED',464),(465,'You have been refunded',1,'2017-09-04 11:40:16','REFUNDED',465),(466,'Your order is being processed',1,'2017-09-05 11:40:16','PROCESSED',466),(467,'Your order has being delivered',1,'2018-03-02 11:40:16','DELIVERED',467),(468,'You have been refunded',1,'2018-03-15 11:40:16','REFUNDED',468),(469,'You have been refunded',1,'2017-06-01 11:40:16','REFUNDED',469),(470,'We received your order',1,'2017-06-03 11:40:16','ORDERED',470),(471,'You have been refunded',1,'2017-09-18 11:40:16','REFUNDED',471),(472,'Your order is being processed',1,'2017-08-12 11:40:16','PROCESSED',472),(473,'Your order is being processed',1,'2018-01-08 11:40:16','PROCESSED',473),(474,'Your order is being processed',1,'2018-03-17 11:40:16','PROCESSED',474),(475,'Your order has being delivered',1,'2017-12-18 11:40:16','DELIVERED',475),(476,'Your order has being delivered',1,'2017-10-07 11:40:16','DELIVERED',476),(477,'You have been refunded',1,'2018-01-21 11:40:16','REFUNDED',477),(478,'You have been refunded',1,'2017-06-28 11:40:16','REFUNDED',478),(479,'You have been refunded',1,'2017-12-22 11:40:16','REFUNDED',479),(480,'Your order has being delivered',1,'2018-01-12 11:40:16','DELIVERED',480),(481,'You have been refunded',1,'2017-09-15 11:40:16','REFUNDED',481),(482,'You have been refunded',1,'2017-12-03 11:40:16','REFUNDED',482),(483,'You have been refunded',1,'2017-09-11 11:40:16','REFUNDED',483),(484,'Your order has being delivered',1,'2018-01-16 11:40:16','DELIVERED',484),(485,'Your order has being delivered',1,'2017-09-27 11:40:16','DELIVERED',485),(486,'Your order has being delivered',1,'2018-01-07 11:40:16','DELIVERED',486),(487,'Your order is being processed',1,'2017-05-12 11:40:16','PROCESSED',487),(488,'Your order has being canceled',1,'2017-08-21 11:40:16','CANCELED',488),(489,'You have been refunded',1,'2018-02-16 11:40:16','REFUNDED',489),(490,'Your order has being canceled',1,'2017-09-01 11:40:16','CANCELED',490),(491,'Your order is being processed',1,'2017-12-03 11:40:16','PROCESSED',491),(492,'We received your order',1,'2017-06-26 11:40:16','ORDERED',492),(493,'Your order is being processed',1,'2017-12-05 11:40:16','PROCESSED',493),(494,'Your order has being delivered',1,'2017-12-12 11:40:16','DELIVERED',494),(495,'You have been refunded',1,'2017-10-05 11:40:16','REFUNDED',495),(496,'Your order has being delivered',1,'2017-09-17 11:40:16','DELIVERED',496),(497,'You have been refunded',1,'2017-11-04 11:40:16','REFUNDED',497),(498,'We received your order',1,'2018-01-21 11:40:16','ORDERED',498),(499,'We received your order',1,'2018-03-12 11:40:16','ORDERED',499),(500,'Your order has being delivered',1,'2017-11-10 11:40:16','DELIVERED',500);
/*!40000 ALTER TABLE `order_status_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_total`
--

DROP TABLE IF EXISTS `order_total`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_total` (
  `ORDER_ACCOUNT_ID` bigint(20) NOT NULL,
  `MODULE` varchar(60) DEFAULT NULL,
  `CODE` varchar(255) NOT NULL,
  `ORDER_TOTAL_TYPE` varchar(255) DEFAULT NULL,
  `ORDER_VALUE_TYPE` varchar(255) DEFAULT NULL,
  `SORT_ORDER` int(11) NOT NULL,
  `TEXT` longtext,
  `TITLE` varchar(255) DEFAULT NULL,
  `VALUE` decimal(15,4) NOT NULL,
  `ORDER_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`ORDER_ACCOUNT_ID`),
  KEY `FK_khquiwoxp3mpaolsy0hslfjch` (`ORDER_ID`),
  CONSTRAINT `FK_khquiwoxp3mpaolsy0hslfjch` FOREIGN KEY (`ORDER_ID`) REFERENCES `orders` (`ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_total`
--

LOCK TABLES `order_total` WRITE;
/*!40000 ALTER TABLE `order_total` DISABLE KEYS */;
INSERT INTO `order_total` VALUES (1,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',25.0000,1),(2,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',25.0000,1),(50,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',25.0000,50),(51,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',25.0000,50),(100,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',25.0000,100),(101,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',25.0000,100),(102,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',50.0000,101),(103,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',50.0000,101),(104,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',70.0000,102),(105,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',70.0000,102),(106,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',20.0000,103),(107,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',20.0000,103),(108,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',25.0000,104),(109,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',25.0000,104),(150,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',113.5000,150),(151,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',113.5000,150),(200,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',510.0000,200),(201,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',510.0000,200),(202,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',40.0000,204),(203,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',40.0000,204),(204,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',80.0000,205),(205,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',80.0000,205),(206,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',60.0000,206),(207,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',60.0000,206),(208,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',190.0000,207),(209,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',190.0000,207),(210,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',320.0000,208),(211,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',320.0000,208),(212,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',120.0000,209),(213,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',120.0000,209),(214,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',220.0000,210),(215,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',220.0000,210),(216,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',155.0000,211),(217,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',155.0000,211),(218,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',145.0000,212),(219,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',145.0000,212),(220,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',60.0000,213),(221,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',60.0000,213),(222,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',40.0000,214),(223,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',40.0000,214),(224,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',40.0000,215),(225,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',40.0000,215),(226,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',160.0000,216),(227,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',160.0000,216),(228,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',100.0000,217),(229,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',100.0000,217),(230,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',120.0000,218),(231,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',120.0000,218),(232,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',220.0000,219),(233,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',220.0000,219),(234,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',157.0000,220),(235,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',157.0000,220),(236,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',160.0000,221),(237,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',160.0000,221),(238,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',240.0000,222),(239,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',240.0000,222),(240,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',90.0000,223),(241,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',90.0000,223),(242,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',60.0000,224),(243,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',60.0000,224),(244,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',157.0000,225),(245,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',157.0000,225),(246,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',160.0000,226),(247,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',160.0000,226),(248,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',40.0000,227),(249,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',40.0000,227),(250,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',60.0000,228),(251,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',60.0000,228),(252,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',40.0000,229),(253,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',40.0000,229),(254,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',100.0000,230),(255,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',100.0000,230),(256,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',50.0000,231),(257,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',50.0000,231),(258,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',50.0000,232),(259,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',50.0000,232),(260,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',70.0000,233),(261,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',70.0000,233),(262,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',120.0000,234),(263,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',120.0000,234),(264,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',250.0000,235),(265,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',250.0000,235),(266,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',40.0000,236),(267,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',40.0000,236),(268,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',220.0000,237),(269,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',220.0000,237),(270,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',150.0000,238),(271,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',150.0000,238),(272,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',160.0000,239),(273,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',160.0000,239),(274,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',140.0000,240),(275,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',140.0000,240),(276,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',88.5000,241),(277,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',88.5000,241),(278,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',20.0000,242),(279,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',20.0000,242),(280,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',50.0000,243),(281,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',50.0000,243),(282,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',90.0000,244),(283,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',90.0000,244),(284,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',155.0000,245),(285,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',155.0000,245),(286,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',160.0000,246),(287,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',160.0000,246),(288,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',50.0000,247),(289,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',50.0000,247),(290,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',140.0000,248),(291,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',140.0000,248),(292,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',140.0000,249),(293,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',140.0000,249),(294,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',140.0000,250),(295,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',140.0000,250),(296,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',40.0000,251),(297,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',40.0000,251),(298,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',20.0000,252),(299,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',20.0000,252),(300,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',80.0000,253),(301,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',80.0000,253),(302,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',188.0000,254),(303,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',188.0000,254),(304,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',88.5000,255),(305,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',88.5000,255),(306,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',120.0000,256),(307,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',120.0000,256),(308,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',40.0000,257),(309,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',40.0000,257),(310,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',60.0000,258),(311,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',60.0000,258),(312,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',155.0000,259),(313,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',155.0000,259),(314,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',145.0000,260),(315,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',145.0000,260),(316,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',130.0000,261),(317,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',130.0000,261),(318,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',25.0000,262),(319,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',25.0000,262),(320,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',190.0000,263),(321,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',190.0000,263),(322,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',160.0000,264),(323,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',160.0000,264),(324,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',220.0000,265),(325,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',220.0000,265),(326,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',220.0000,266),(327,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',220.0000,266),(328,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',60.0000,267),(329,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',60.0000,267),(330,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',150.0000,268),(331,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',150.0000,268),(332,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',120.0000,269),(333,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',120.0000,269),(334,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',160.0000,270),(335,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',160.0000,270),(336,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',200.0000,271),(337,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',200.0000,271),(338,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',140.0000,272),(339,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',140.0000,272),(340,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',157.0000,273),(341,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',157.0000,273),(342,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',90.0000,274),(343,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',90.0000,274),(344,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',220.0000,275),(345,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',220.0000,275),(346,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',50.0000,276),(347,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',50.0000,276),(348,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',25.0000,277),(349,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',25.0000,277),(350,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',130.0000,278),(351,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',130.0000,278),(352,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',40.0000,279),(353,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',40.0000,279),(354,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',200.0000,280),(355,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',200.0000,280),(356,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',220.0000,281),(357,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',220.0000,281),(358,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',190.0000,282),(359,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',190.0000,282),(360,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',115.0000,283),(361,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',115.0000,283),(362,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',130.0000,284),(363,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',130.0000,284),(364,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',189.0000,285),(365,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',189.0000,285),(366,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',152.0000,286),(367,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',152.0000,286),(368,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',250.0000,287),(369,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',250.0000,287),(370,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',130.0000,288),(371,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',130.0000,288),(372,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',88.5000,289),(373,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',88.5000,289),(374,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',90.0000,290),(375,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',90.0000,290),(376,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',157.0000,291),(377,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',157.0000,291),(378,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',140.0000,292),(379,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',140.0000,292),(380,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',190.0000,293),(381,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',190.0000,293),(382,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',130.0000,294),(383,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',130.0000,294),(384,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',115.0000,295),(385,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',115.0000,295),(386,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',130.0000,296),(387,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',130.0000,296),(388,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',40.0000,297),(389,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',40.0000,297),(390,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',100.0000,298),(391,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',100.0000,298),(392,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',190.0000,299),(393,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',190.0000,299),(394,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',60.0000,300),(395,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',60.0000,300),(396,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',60.0000,301),(397,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',60.0000,301),(398,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',120.0000,302),(399,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',120.0000,302),(400,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',100.0000,303),(401,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',100.0000,303),(402,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',120.0000,304),(403,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',120.0000,304),(404,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',25.0000,305),(405,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',25.0000,305),(406,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',60.0000,306),(407,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',60.0000,306),(408,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',100.0000,307),(409,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',100.0000,307),(410,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',140.0000,308),(411,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',140.0000,308),(412,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',40.0000,309),(413,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',40.0000,309),(414,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',90.0000,310),(415,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',90.0000,310),(416,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',88.5000,311),(417,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',88.5000,311),(418,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',157.0000,312),(419,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',157.0000,312),(420,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',50.0000,313),(421,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',50.0000,313),(422,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',320.0000,314),(423,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',320.0000,314),(424,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',157.0000,315),(425,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',157.0000,315),(426,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',88.5000,316),(427,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',88.5000,316),(428,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',190.0000,317),(429,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',190.0000,317),(430,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',240.0000,318),(431,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',240.0000,318),(432,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',60.0000,319),(433,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',60.0000,319),(434,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',250.0000,320),(435,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',250.0000,320),(436,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',60.0000,321),(437,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',60.0000,321),(438,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',220.0000,322),(439,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',220.0000,322),(440,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',157.0000,323),(441,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',157.0000,323),(442,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',80.0000,324),(443,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',80.0000,324),(444,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',130.0000,325),(445,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',130.0000,325),(446,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',240.0000,326),(447,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',240.0000,326),(448,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',80.0000,327),(449,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',80.0000,327),(450,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',100.0000,328),(451,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',100.0000,328),(452,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',189.0000,329),(453,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',189.0000,329),(454,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',100.0000,330),(455,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',100.0000,330),(456,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',250.0000,331),(457,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',250.0000,331),(458,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',140.0000,332),(459,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',140.0000,332),(460,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',90.0000,333),(461,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',90.0000,333),(462,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',90.0000,334),(463,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',90.0000,334),(464,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',60.0000,335),(465,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',60.0000,335),(466,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',145.0000,336),(467,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',145.0000,336),(468,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',240.0000,337),(469,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',240.0000,337),(470,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',130.0000,338),(471,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',130.0000,338),(472,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',190.0000,339),(473,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',190.0000,339),(474,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',100.0000,340),(475,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',100.0000,340),(476,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',60.0000,341),(477,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',60.0000,341),(478,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',100.0000,342),(479,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',100.0000,342),(480,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',80.0000,343),(481,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',80.0000,343),(482,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',25.0000,344),(483,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',25.0000,344),(484,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',190.0000,345),(485,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',190.0000,345),(486,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',160.0000,346),(487,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',160.0000,346),(488,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',220.0000,347),(489,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',220.0000,347),(490,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',157.0000,348),(491,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',157.0000,348),(492,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',40.0000,349),(493,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',40.0000,349),(494,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',60.0000,350),(495,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',60.0000,350),(496,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',90.0000,351),(497,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',90.0000,351),(498,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',155.0000,352),(499,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',155.0000,352),(500,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',115.0000,353),(501,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',115.0000,353),(502,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',130.0000,354),(503,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',130.0000,354),(504,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',115.0000,355),(505,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',115.0000,355),(506,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',100.0000,356),(507,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',100.0000,356),(508,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',190.0000,357),(509,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',190.0000,357),(510,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',100.0000,358),(511,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',100.0000,358),(512,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',60.0000,359),(513,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',60.0000,359),(514,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',100.0000,360),(515,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',100.0000,360),(516,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',220.0000,361),(517,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',220.0000,361),(518,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',115.0000,362),(519,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',115.0000,362),(520,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',200.0000,363),(521,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',200.0000,363),(522,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',70.0000,364),(523,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',70.0000,364),(524,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',60.0000,365),(525,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',60.0000,365),(526,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',90.0000,366),(527,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',90.0000,366),(528,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',140.0000,367),(529,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',140.0000,367),(530,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',150.0000,368),(531,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',150.0000,368),(532,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',120.0000,369),(533,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',120.0000,369),(534,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',115.0000,370),(535,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',115.0000,370),(536,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',70.0000,371),(537,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',70.0000,371),(538,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',120.0000,372),(539,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',120.0000,372),(540,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',25.0000,373),(541,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',25.0000,373),(542,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',220.0000,374),(543,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',220.0000,374),(544,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',140.0000,375),(545,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',140.0000,375),(546,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',160.0000,376),(547,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',160.0000,376),(548,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',20.0000,377),(549,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',20.0000,377),(550,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',160.0000,378),(551,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',160.0000,378),(552,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',100.0000,379),(553,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',100.0000,379),(554,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',40.0000,380),(555,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',40.0000,380),(556,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',115.0000,381),(557,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',115.0000,381),(558,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',157.0000,382),(559,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',157.0000,382),(560,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',130.0000,383),(561,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',130.0000,383),(562,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',130.0000,384),(563,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',130.0000,384),(564,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',155.0000,385),(565,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',155.0000,385),(566,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',90.0000,386),(567,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',90.0000,386),(568,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',120.0000,387),(569,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',120.0000,387),(570,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',155.0000,388),(571,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',155.0000,388),(572,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',90.0000,389),(573,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',90.0000,389),(574,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',140.0000,390),(575,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',140.0000,390),(576,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',145.0000,391),(577,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',145.0000,391),(578,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',40.0000,392),(579,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',40.0000,392),(580,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',152.0000,393),(581,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',152.0000,393),(582,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',320.0000,394),(583,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',320.0000,394),(584,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',50.0000,395),(585,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',50.0000,395),(586,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',190.0000,396),(587,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',190.0000,396),(588,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',60.0000,397),(589,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',60.0000,397),(590,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',130.0000,398),(591,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',130.0000,398),(592,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',190.0000,399),(593,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',190.0000,399),(594,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',100.0000,400),(595,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',100.0000,400),(596,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',40.0000,401),(597,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',40.0000,401),(598,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',70.0000,402),(599,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',70.0000,402),(600,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',250.0000,403),(601,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',250.0000,403),(602,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',240.0000,404),(603,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',240.0000,404),(604,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',100.0000,405),(605,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',100.0000,405),(606,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',160.0000,406),(607,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',160.0000,406),(608,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',130.0000,407),(609,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',130.0000,407),(610,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',190.0000,408),(611,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',190.0000,408),(612,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',60.0000,409),(613,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',60.0000,409),(614,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',60.0000,410),(615,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',60.0000,410),(616,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',60.0000,411),(617,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',60.0000,411),(618,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',50.0000,412),(619,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',50.0000,412),(620,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',188.0000,413),(621,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',188.0000,413),(622,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',240.0000,414),(623,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',240.0000,414),(624,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',188.0000,415),(625,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',188.0000,415),(626,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',189.0000,416),(627,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',189.0000,416),(628,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',145.0000,417),(629,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',145.0000,417),(630,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',157.0000,418),(631,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',157.0000,418),(632,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',90.0000,419),(633,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',90.0000,419),(634,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',155.0000,420),(635,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',155.0000,420),(636,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',60.0000,421),(637,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',60.0000,421),(638,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',50.0000,422),(639,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',50.0000,422),(640,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',70.0000,423),(641,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',70.0000,423),(642,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',140.0000,424),(643,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',140.0000,424),(644,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',40.0000,425),(645,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',40.0000,425),(646,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',140.0000,426),(647,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',140.0000,426),(648,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',157.0000,427),(649,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',157.0000,427),(650,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',145.0000,428),(651,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',145.0000,428),(652,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',250.0000,429),(653,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',250.0000,429),(654,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',140.0000,430),(655,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',140.0000,430),(656,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',140.0000,431),(657,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',140.0000,431),(658,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',152.0000,432),(659,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',152.0000,432),(660,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',25.0000,433),(661,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',25.0000,433),(662,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',60.0000,434),(663,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',60.0000,434),(664,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',152.0000,435),(665,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',152.0000,435),(666,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',130.0000,436),(667,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',130.0000,436),(668,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',200.0000,437),(669,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',200.0000,437),(670,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',157.0000,438),(671,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',157.0000,438),(672,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',220.0000,439),(673,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',220.0000,439),(674,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',60.0000,440),(675,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',60.0000,440),(676,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',60.0000,441),(677,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',60.0000,441),(678,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',240.0000,442),(679,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',240.0000,442),(680,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',140.0000,443),(681,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',140.0000,443),(682,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',160.0000,444),(683,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',160.0000,444),(684,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',60.0000,445),(685,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',60.0000,445),(686,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',20.0000,446),(687,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',20.0000,446),(688,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',40.0000,447),(689,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',40.0000,447),(690,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',140.0000,448),(691,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',140.0000,448),(692,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',90.0000,449),(693,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',90.0000,449),(694,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',100.0000,450),(695,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',100.0000,450),(696,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',160.0000,451),(697,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',160.0000,451),(698,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',88.5000,452),(699,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',88.5000,452),(700,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',60.0000,453),(701,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',60.0000,453),(702,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',188.0000,454),(703,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',188.0000,454),(704,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',152.0000,455),(705,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',152.0000,455),(706,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',60.0000,456),(707,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',60.0000,456),(708,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',40.0000,457),(709,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',40.0000,457),(710,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',70.0000,458),(711,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',70.0000,458),(712,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',60.0000,459),(713,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',60.0000,459),(714,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',60.0000,460),(715,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',60.0000,460),(716,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',220.0000,461),(717,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',220.0000,461),(718,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',25.0000,462),(719,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',25.0000,462),(720,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',145.0000,463),(721,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',145.0000,463),(722,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',152.0000,464),(723,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',152.0000,464),(724,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',200.0000,465),(725,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',200.0000,465),(726,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',240.0000,466),(727,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',240.0000,466),(728,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',25.0000,467),(729,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',25.0000,467),(730,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',150.0000,468),(731,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',150.0000,468),(732,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',90.0000,469),(733,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',90.0000,469),(734,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',120.0000,470),(735,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',120.0000,470),(736,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',40.0000,471),(737,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',40.0000,471),(738,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',100.0000,472),(739,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',100.0000,472),(740,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',250.0000,473),(741,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',250.0000,473),(742,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',240.0000,474),(743,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',240.0000,474),(744,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',160.0000,475),(745,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',160.0000,475),(746,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',40.0000,476),(747,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',40.0000,476),(748,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',100.0000,477),(749,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',100.0000,477),(750,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',150.0000,478),(751,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',150.0000,478),(752,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',90.0000,479),(753,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',90.0000,479),(754,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',152.0000,480),(755,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',152.0000,480),(756,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',90.0000,481),(757,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',90.0000,481),(758,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',200.0000,482),(759,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',200.0000,482),(760,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',115.0000,483),(761,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',115.0000,483),(762,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',90.0000,484),(763,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',90.0000,484),(764,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',115.0000,485),(765,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',115.0000,485),(766,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',90.0000,486),(767,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',90.0000,486),(768,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',140.0000,487),(769,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',140.0000,487),(770,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',130.0000,488),(771,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',130.0000,488),(772,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',155.0000,489),(773,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',155.0000,489),(774,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',60.0000,490),(775,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',60.0000,490),(776,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',150.0000,491),(777,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',150.0000,491),(778,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',100.0000,492),(779,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',100.0000,492),(780,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',160.0000,493),(781,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',160.0000,493),(782,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',130.0000,494),(783,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',130.0000,494),(784,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',140.0000,495),(785,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',140.0000,495),(786,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',70.0000,496),(787,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',70.0000,496),(788,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',60.0000,497),(789,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',60.0000,497),(790,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',220.0000,498),(791,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',220.0000,498),(792,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',140.0000,499),(793,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',140.0000,499),(794,'subtotal','order.total.subtotal','SUBTOTAL','ONE_TIME',5,NULL,'subtotal',60.0000,500),(795,'total','order.total.total','TOTAL','ONE_TIME',500,NULL,'total',60.0000,500);
/*!40000 ALTER TABLE `order_total` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `ORDER_ID` bigint(20) NOT NULL,
  `BILLING_STREET_ADDRESS` varchar(256) DEFAULT NULL,
  `BILLING_CITY` varchar(100) DEFAULT NULL,
  `BILLING_COMPANY` varchar(100) DEFAULT NULL,
  `BILLING_FIRST_NAME` varchar(64) NOT NULL,
  `BILLING_LAST_NAME` varchar(64) NOT NULL,
  `LATITUDE` varchar(100) DEFAULT NULL,
  `LONGITUDE` varchar(100) DEFAULT NULL,
  `BILLING_POSTCODE` varchar(20) DEFAULT NULL,
  `BILLING_STATE` varchar(100) DEFAULT NULL,
  `BILLING_TELEPHONE` varchar(32) DEFAULT NULL,
  `CHANNEL` varchar(255) DEFAULT NULL,
  `CONFIRMED_ADDRESS` bit(1) DEFAULT NULL,
  `CARD_TYPE` varchar(255) DEFAULT NULL,
  `CC_CVV` varchar(255) DEFAULT NULL,
  `CC_EXPIRES` varchar(255) DEFAULT NULL,
  `CC_NUMBER` varchar(255) DEFAULT NULL,
  `CC_OWNER` varchar(255) DEFAULT NULL,
  `CURRENCY_VALUE` decimal(19,2) DEFAULT NULL,
  `CUSTOMER_AGREED` bit(1) DEFAULT NULL,
  `CUSTOMER_EMAIL_ADDRESS` varchar(50) NOT NULL,
  `CUSTOMER_ID` bigint(20) DEFAULT NULL,
  `DATE_PURCHASED` date DEFAULT NULL,
  `DELIVERY_STREET_ADDRESS` varchar(256) DEFAULT NULL,
  `DELIVERY_CITY` varchar(100) DEFAULT NULL,
  `DELIVERY_COMPANY` varchar(100) DEFAULT NULL,
  `DELIVERY_FIRST_NAME` varchar(64) DEFAULT NULL,
  `DELIVERY_LAST_NAME` varchar(64) DEFAULT NULL,
  `DELIVERY_POSTCODE` varchar(20) DEFAULT NULL,
  `DELIVERY_STATE` varchar(100) DEFAULT NULL,
  `DELIVERY_TELEPHONE` varchar(32) DEFAULT NULL,
  `IP_ADDRESS` varchar(255) DEFAULT NULL,
  `LAST_MODIFIED` datetime DEFAULT NULL,
  `LOCALE` varchar(255) DEFAULT NULL,
  `ORDER_DATE_FINISHED` datetime DEFAULT NULL,
  `ORDER_TYPE` varchar(255) DEFAULT NULL,
  `PAYMENT_MODULE_CODE` varchar(255) DEFAULT NULL,
  `PAYMENT_TYPE` varchar(255) DEFAULT NULL,
  `SHIPPING_MODULE_CODE` varchar(255) DEFAULT NULL,
  `ORDER_STATUS` varchar(255) DEFAULT NULL,
  `ORDER_TOTAL` decimal(19,2) DEFAULT NULL,
  `BILLING_COUNTRY_ID` int(11) NOT NULL,
  `BILLING_ZONE_ID` bigint(20) DEFAULT NULL,
  `CURRENCY_ID` bigint(20) DEFAULT NULL,
  `DELIVERY_COUNTRY_ID` int(11) DEFAULT NULL,
  `DELIVERY_ZONE_ID` bigint(20) DEFAULT NULL,
  `MERCHANTID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ORDER_ID`),
  KEY `FK_fnbc9pw6waewb1yraliutnhh1` (`BILLING_COUNTRY_ID`),
  KEY `FK_8e0096usk6ubo6g1m4g02cdg9` (`BILLING_ZONE_ID`),
  KEY `FK_ib790h1pasu1n7mye2hxl3i99` (`CURRENCY_ID`),
  KEY `FK_4lkaw8wsvt2mfmwna70lctuu8` (`DELIVERY_COUNTRY_ID`),
  KEY `FK_hq0mw7hixmta7q34ohl1g18wl` (`DELIVERY_ZONE_ID`),
  KEY `FK_3b8cm7lvbxjbtepjn64nnbtc0` (`MERCHANTID`),
  CONSTRAINT `FK_3b8cm7lvbxjbtepjn64nnbtc0` FOREIGN KEY (`MERCHANTID`) REFERENCES `merchant_store` (`MERCHANT_ID`),
  CONSTRAINT `FK_4lkaw8wsvt2mfmwna70lctuu8` FOREIGN KEY (`DELIVERY_COUNTRY_ID`) REFERENCES `country` (`COUNTRY_ID`),
  CONSTRAINT `FK_8e0096usk6ubo6g1m4g02cdg9` FOREIGN KEY (`BILLING_ZONE_ID`) REFERENCES `zone` (`ZONE_ID`),
  CONSTRAINT `FK_fnbc9pw6waewb1yraliutnhh1` FOREIGN KEY (`BILLING_COUNTRY_ID`) REFERENCES `country` (`COUNTRY_ID`),
  CONSTRAINT `FK_hq0mw7hixmta7q34ohl1g18wl` FOREIGN KEY (`DELIVERY_ZONE_ID`) REFERENCES `zone` (`ZONE_ID`),
  CONSTRAINT `FK_ib790h1pasu1n7mye2hxl3i99` FOREIGN KEY (`CURRENCY_ID`) REFERENCES `currency` (`CURRENCY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'HIH, A915','Kobe',NULL,'Amal','Elfrihmate',NULL,NULL,'651-0077','hyogo','8099878788',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'\0','amal@test.com',1,'2017-03-18','HIH, A915','Kobe',NULL,'Amal','Elfrihmate','651-0077','hyogo',NULL,NULL,'2018-03-19 14:13:52','en_US',NULL,'ORDER','moneyorder','MONEYORDER',NULL,'ORDERED',25.00,43,NULL,30,43,NULL,1),(50,'HIH, A915','Kobe','','Halima','Aimane',NULL,NULL,'651-0077','Hyogo','0809558877',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',50,'2017-03-20','HIH, A915','Kobe','','Halima','Aimane','651-0077','Hyogo','0809558877',NULL,NULL,'en_US',NULL,'ORDER','moneyorder','MONEYORDER',NULL,'ORDERED',25.00,43,NULL,30,43,NULL,1),(100,'Kasuganomichi','Kobe',NULL,'Aman','Sultani',NULL,NULL,'6510078','Hyogo','8098879907',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'\0','aman@example.com',100,'2017-03-19','Kasuganomichi','Kobe',NULL,'Aman','Sultani','6510078','Hyogo',NULL,NULL,'2018-03-22 02:59:48','en_US',NULL,'ORDER','moneyorder','MONEYORDER',NULL,'PROCESSED',25.00,43,NULL,30,43,NULL,1),(101,'HIH, A915','Quebec','','Amal','Elfrihmate',NULL,NULL,'651 007','','(809) 987-8788',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','amal@test.com',101,'2017-03-20','HIH, A915','Quebec','','Amal','Elfrihmate','651 007','','(809) 987-8788',NULL,NULL,'en_US',NULL,'ORDER','moneyorder','MONEYORDER',NULL,'ORDERED',50.00,13,8,30,13,8,1),(102,'HIH, A915','Kobe','','Amal','Elfrihmate',NULL,NULL,'651-0077','hyogo','8099878788',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','amal@test.com',102,'2017-03-20','HIH, A915','Kobe','','Amal','Elfrihmate','651-0077','hyogo','8099878788',NULL,NULL,'en_US',NULL,'ORDER','moneyorder','MONEYORDER',NULL,'ORDERED',70.00,43,NULL,30,43,NULL,1),(103,'Kasuganomichi','Kobe','','Aman','Sultani',NULL,NULL,'6510078','hyogo','8098879907',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aman@example.com',103,'2017-03-20','Kasuganomichi','Kobe','','Aman','Sultani','6510078','hyogo','8098879907',NULL,NULL,'en_US',NULL,'ORDER','moneyorder','MONEYORDER',NULL,'ORDERED',20.00,43,NULL,30,43,NULL,1),(104,'HIH, A915','Hyogo',NULL,'Halima','Aimane',NULL,NULL,'651-0077','hyogo','8099878788',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'\0','aimane.halima@gmail.com',104,'2017-03-19','HIH, A915','Hyogo',NULL,'Halima','Aimane','651-0077','hyogo',NULL,NULL,'2018-03-22 02:59:11','en_US',NULL,'ORDER','moneyorder','MONEYORDER',NULL,'DELIVERED',25.00,43,NULL,30,43,NULL,1),(150,'hyogo','hyogo','','hala','emane',NULL,NULL,'651001','hyogo','0809558877',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','hala@gmail.com',151,'2017-04-16','hyogo','hyogo','','hala','emane','651001','hyogo','0809558877',NULL,NULL,'en_US',NULL,'ORDER','moneyorder','MONEYORDER',NULL,'ORDERED',113.50,57,NULL,30,57,NULL,1),(200,'Temara','Rabat','','Omaima','Mikdame',NULL,NULL,'11000','Rabat','0648778547',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','omaima.m@gmail.com',200,'2017-04-29','Temara','Rabat','','Omaima','Mikdame','11000','Rabat','0648778547',NULL,NULL,'en_US',NULL,'ORDER','moneyorder','MONEYORDER',NULL,'ORDERED',510.00,57,NULL,30,57,NULL,1),(201,'Wakanimocho','Osaka',NULL,'Mickel','Sall',NULL,NULL,'651-0077','Osaka','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-01-25','Wakanimocho','Osaka',NULL,'Mickel','Sall','651-0077','Osaka',NULL,NULL,'2018-01-26 04:14:14','en_US','2018-01-25 11:40:14','ORDER','moneyorder','MONEYORDER',NULL,'ORDERED',NULL,43,NULL,30,43,NULL,1),(202,'Chuo-ku','Osaka',NULL,'Gabriel','Van dar',NULL,NULL,'651-0077','Osaka','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-11-21','Chuo-ku','Osaka',NULL,'Gabriel','Van dar','651-0077','Osaka',NULL,NULL,'2017-11-21 19:46:14','en_US','2017-11-21 11:40:14','ORDER','moneyorder','MONEYORDER',NULL,'PROCESSED',NULL,43,NULL,30,43,NULL,1),(203,'Chuo-ku','Kurachiki',NULL,'Maria','Benatia',NULL,NULL,'651-0077','Kurachiki','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-03-24','Chuo-ku','Kurachiki',NULL,'Maria','Benatia','651-0077','Kurachiki',NULL,NULL,'2018-03-24 22:17:14','en_US','2018-03-24 11:40:14','ORDER','moneyorder','MONEYORDER',NULL,'PROCESSED',NULL,43,NULL,30,43,NULL,1),(204,'Chuo-ku','Kurachiki',NULL,'Ymran','Benatia',NULL,NULL,'651-0077','Kurachiki','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-10-09','Chuo-ku','Kurachiki',NULL,'Ymran','Benatia','651-0077','Kurachiki',NULL,NULL,'2017-10-09 20:10:14','en_US','2017-10-09 11:40:14','ORDER','moneyorder','MONEYORDER',NULL,'REFUNDED',40.00,43,NULL,30,43,NULL,1),(205,'Wakanimocho','Osaka',NULL,'Joe','Benatia',NULL,NULL,'651-0077','Osaka','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-08-08','Wakanimocho','Osaka',NULL,'Joe','Benatia','651-0077','Osaka',NULL,NULL,'2017-08-08 21:56:14','en_US','2017-08-08 11:40:14','ORDER','moneyorder','MONEYORDER',NULL,'PROCESSED',80.00,43,NULL,30,43,NULL,1),(206,'Wakanimocho','Kobe',NULL,'Fatima','Dupond',NULL,NULL,'651-0077','Kobe','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-02-16','Wakanimocho','Kobe',NULL,'Fatima','Dupond','651-0077','Kobe',NULL,NULL,'2018-02-16 22:00:14','en_US','2018-02-16 11:40:14','ORDER','moneyorder','MONEYORDER',NULL,'CANCELED',60.00,43,NULL,30,43,NULL,1),(207,'HIH, A915','Nara',NULL,'Leila','Leplus',NULL,NULL,'651-0077','Nara','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-07-02','HIH, A915','Nara',NULL,'Leila','Leplus','651-0077','Nara',NULL,NULL,'2017-07-03 08:21:14','en_US','2017-07-02 11:40:14','ORDER','moneyorder','MONEYORDER',NULL,'REFUNDED',190.00,43,NULL,30,43,NULL,1),(208,'HIH, A915','Nara',NULL,'Latifa','Tali',NULL,NULL,'651-0077','Nara','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-03-01','HIH, A915','Nara',NULL,'Latifa','Tali','651-0077','Nara',NULL,NULL,'2018-03-02 04:22:14','en_US','2018-03-01 11:40:14','ORDER','moneyorder','MONEYORDER',NULL,'PROCESSED',320.00,43,NULL,30,43,NULL,1),(209,'HIH, A915','Osaka',NULL,'Gabriel','Tali',NULL,NULL,'651-0077','Osaka','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-09-22','HIH, A915','Osaka',NULL,'Gabriel','Tali','651-0077','Osaka',NULL,NULL,'2017-09-22 22:42:14','en_US','2017-09-22 11:40:14','ORDER','moneyorder','MONEYORDER',NULL,'REFUNDED',120.00,43,NULL,30,43,NULL,1),(210,'HIH, A915','Nara',NULL,'Fatima','Van dar',NULL,NULL,'651-0077','Nara','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-11-20','HIH, A915','Nara',NULL,'Fatima','Van dar','651-0077','Nara',NULL,NULL,'2017-11-21 00:27:14','en_US','2017-11-20 11:40:14','ORDER','moneyorder','MONEYORDER',NULL,'REFUNDED',220.00,43,NULL,30,43,NULL,1),(211,'HIH, A915','Nara',NULL,'Latifa','Aman',NULL,NULL,'651-0077','Nara','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-11-16','HIH, A915','Nara',NULL,'Latifa','Aman','651-0077','Nara',NULL,NULL,'2017-11-16 16:15:14','en_US','2017-11-16 11:40:14','ORDER','moneyorder','MONEYORDER',NULL,'REFUNDED',155.00,43,NULL,30,43,NULL,1),(212,'nada','Kyoto',NULL,'Gabriel','Elmaleh',NULL,NULL,'651-0077','Kyoto','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-12-06','nada','Kyoto',NULL,'Gabriel','Elmaleh','651-0077','Kyoto',NULL,NULL,'2017-12-06 17:53:14','en_US','2017-12-06 11:40:14','ORDER','moneyorder','MONEYORDER',NULL,'CANCELED',145.00,43,NULL,30,43,NULL,1),(213,'nada','Kyoto',NULL,'Anass','Van dar',NULL,NULL,'651-0077','Kyoto','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-03-10','nada','Kyoto',NULL,'Anass','Van dar','651-0077','Kyoto',NULL,NULL,'2018-03-10 17:06:14','en_US','2018-03-10 11:40:14','ORDER','moneyorder','MONEYORDER',NULL,'ORDERED',60.00,43,NULL,30,43,NULL,1),(214,'Wakanimocho','Osaka',NULL,'Khalil','Mohajir',NULL,NULL,'651-0077','Osaka','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-02-20','Wakanimocho','Osaka',NULL,'Khalil','Mohajir','651-0077','Osaka',NULL,NULL,'2018-02-21 11:26:14','en_US','2018-02-20 11:40:14','ORDER','moneyorder','MONEYORDER',NULL,'CANCELED',40.00,43,NULL,30,43,NULL,1),(215,'Wakanimocho','Kyoto',NULL,'Gabriel','Morabit',NULL,NULL,'651-0077','Kyoto','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-04-28','Wakanimocho','Kyoto',NULL,'Gabriel','Morabit','651-0077','Kyoto',NULL,NULL,'2018-04-29 00:15:14','en_US','2018-04-28 11:40:14','ORDER','moneyorder','MONEYORDER',NULL,'DELIVERED',40.00,43,NULL,30,43,NULL,1),(216,'Wakanimocho','Nara',NULL,'Julia','Leplus',NULL,NULL,'651-0077','Nara','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-04-24','Wakanimocho','Nara',NULL,'Julia','Leplus','651-0077','Nara',NULL,NULL,'2018-04-25 05:58:14','en_US','2018-04-24 11:40:14','ORDER','moneyorder','MONEYORDER',NULL,'DELIVERED',160.00,43,NULL,30,43,NULL,1),(217,'Chuo-ku','Kobe',NULL,'Maria','Chappy',NULL,NULL,'651-0077','Kobe','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-04-29','Chuo-ku','Kobe',NULL,'Maria','Chappy','651-0077','Kobe',NULL,NULL,'2018-04-29 17:44:14','en_US','2018-04-29 11:40:14','ORDER','moneyorder','MONEYORDER',NULL,'PROCESSED',100.00,43,NULL,30,43,NULL,1),(218,'Wakanimocho','Kyoto',NULL,'Mohamed','Elmaleh',NULL,NULL,'651-0077','Kyoto','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-07-28','Wakanimocho','Kyoto',NULL,'Mohamed','Elmaleh','651-0077','Kyoto',NULL,NULL,'2017-07-29 04:10:14','en_US','2017-07-28 11:40:14','ORDER','moneyorder','MONEYORDER',NULL,'REFUNDED',120.00,43,NULL,30,43,NULL,1),(219,'nada','Nara',NULL,'Mickel','BenKhadra',NULL,NULL,'651-0077','Nara','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-03-16','nada','Nara',NULL,'Mickel','BenKhadra','651-0077','Nara',NULL,NULL,'2018-03-16 14:23:14','en_US','2018-03-16 11:40:14','ORDER','moneyorder','MONEYORDER',NULL,'ORDERED',220.00,43,NULL,30,43,NULL,1),(220,'HIH, A915','Nara',NULL,'Zackaria','Sall',NULL,NULL,'651-0077','Nara','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-10-25','HIH, A915','Nara',NULL,'Zackaria','Sall','651-0077','Nara',NULL,NULL,'2017-10-25 18:50:14','en_US','2017-10-25 11:40:14','ORDER','moneyorder','MONEYORDER',NULL,'PROCESSED',157.00,43,NULL,30,43,NULL,1),(221,'Wakanimocho','Osaka',NULL,'Maria','Van dar',NULL,NULL,'651-0077','Osaka','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-10-14','Wakanimocho','Osaka',NULL,'Maria','Van dar','651-0077','Osaka',NULL,NULL,'2017-10-15 06:23:14','en_US','2017-10-14 11:40:14','ORDER','moneyorder','MONEYORDER',NULL,'ORDERED',160.00,43,NULL,30,43,NULL,1),(222,'HIH, A915','Nara',NULL,'Latifa','Leplus',NULL,NULL,'651-0077','Nara','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-03-24','HIH, A915','Nara',NULL,'Latifa','Leplus','651-0077','Nara',NULL,NULL,'2018-03-24 19:27:14','en_US','2018-03-24 11:40:14','ORDER','moneyorder','MONEYORDER',NULL,'REFUNDED',240.00,43,NULL,30,43,NULL,1),(223,'Wakanimocho','Kyoto',NULL,'Joe','Elmaleh',NULL,NULL,'651-0077','Kyoto','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-07-22','Wakanimocho','Kyoto',NULL,'Joe','Elmaleh','651-0077','Kyoto',NULL,NULL,'2017-07-23 04:40:14','en_US','2017-07-22 11:40:14','ORDER','moneyorder','MONEYORDER',NULL,'REFUNDED',90.00,43,NULL,30,43,NULL,1),(224,'Chuo-ku','Kobe',NULL,'Anass','Dupond',NULL,NULL,'651-0077','Kobe','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-10-15','Chuo-ku','Kobe',NULL,'Anass','Dupond','651-0077','Kobe',NULL,NULL,'2017-10-15 16:27:14','en_US','2017-10-15 11:40:14','ORDER','moneyorder','MONEYORDER',NULL,'DELIVERED',60.00,43,NULL,30,43,NULL,1),(225,'Chuo-ku','Nara',NULL,'Anass','BenKhadra',NULL,NULL,'651-0077','Nara','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-06-17','Chuo-ku','Nara',NULL,'Anass','BenKhadra','651-0077','Nara',NULL,NULL,'2017-06-17 22:20:14','en_US','2017-06-17 11:40:14','ORDER','moneyorder','MONEYORDER',NULL,'REFUNDED',157.00,43,NULL,30,43,NULL,1),(226,'Chuo-ku','Kobe',NULL,'Khalil','Aman',NULL,NULL,'651-0077','Kobe','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-06-14','Chuo-ku','Kobe',NULL,'Khalil','Aman','651-0077','Kobe',NULL,NULL,'2017-06-14 21:09:14','en_US','2017-06-14 11:40:14','ORDER','moneyorder','MONEYORDER',NULL,'DELIVERED',160.00,43,NULL,30,43,NULL,1),(227,'Wakanimocho','Osaka',NULL,'Khalil','Lazrak',NULL,NULL,'651-0077','Osaka','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-12-05','Wakanimocho','Osaka',NULL,'Khalil','Lazrak','651-0077','Osaka',NULL,NULL,'2017-12-06 04:47:14','en_US','2017-12-05 11:40:14','ORDER','moneyorder','MONEYORDER',NULL,'REFUNDED',40.00,43,NULL,30,43,NULL,1),(228,'nada','Nara',NULL,'Safae','Lazrak',NULL,NULL,'651-0077','Nara','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-08-04','nada','Nara',NULL,'Safae','Lazrak','651-0077','Nara',NULL,NULL,'2017-08-05 09:08:14','en_US','2017-08-04 11:40:14','ORDER','moneyorder','MONEYORDER',NULL,'REFUNDED',60.00,43,NULL,30,43,NULL,1),(229,'Chuo-ku','Osaka',NULL,'Zackaria','Dupond',NULL,NULL,'651-0077','Osaka','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-08-01','Chuo-ku','Osaka',NULL,'Zackaria','Dupond','651-0077','Osaka',NULL,NULL,'2017-08-01 23:28:14','en_US','2017-08-01 11:40:14','ORDER','moneyorder','MONEYORDER',NULL,'REFUNDED',40.00,43,NULL,30,43,NULL,1),(230,'Chuo-ku','Kurachiki',NULL,'Mickel','Sall',NULL,NULL,'651-0077','Kurachiki','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-08-22','Chuo-ku','Kurachiki',NULL,'Mickel','Sall','651-0077','Kurachiki',NULL,NULL,'2017-08-23 03:18:14','en_US','2017-08-22 11:40:14','ORDER','moneyorder','MONEYORDER',NULL,'PROCESSED',100.00,43,NULL,30,43,NULL,1),(231,'Wakanimocho','Osaka',NULL,'Anass','Chappy',NULL,NULL,'651-0077','Osaka','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-08-01','Wakanimocho','Osaka',NULL,'Anass','Chappy','651-0077','Osaka',NULL,NULL,'2017-08-02 11:23:14','en_US','2017-08-01 11:40:14','ORDER','moneyorder','MONEYORDER',NULL,'ORDERED',50.00,43,NULL,30,43,NULL,1),(232,'Chuo-ku','Kyoto',NULL,'Fatima','Dupond',NULL,NULL,'651-0077','Kyoto','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-12-15','Chuo-ku','Kyoto',NULL,'Fatima','Dupond','651-0077','Kyoto',NULL,NULL,'2017-12-15 12:51:15','en_US','2017-12-15 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'PROCESSED',50.00,43,NULL,30,43,NULL,1),(233,'HIH, A915','Nara',NULL,'Ymran','Leplus',NULL,NULL,'651-0077','Nara','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-06-08','HIH, A915','Nara',NULL,'Ymran','Leplus','651-0077','Nara',NULL,NULL,'2017-06-08 11:47:15','en_US','2017-06-08 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'PROCESSED',70.00,43,NULL,30,43,NULL,1),(234,'HIH, A915','Osaka',NULL,'Julia','Lazrak',NULL,NULL,'651-0077','Osaka','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-03-19','HIH, A915','Osaka',NULL,'Julia','Lazrak','651-0077','Osaka',NULL,NULL,'2018-03-19 16:06:15','en_US','2018-03-19 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'DELIVERED',120.00,43,NULL,30,43,NULL,1),(235,'Wakanimocho','Kobe',NULL,'Kevin','Van dar',NULL,NULL,'651-0077','Kobe','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-03-04','Wakanimocho','Kobe',NULL,'Kevin','Van dar','651-0077','Kobe',NULL,NULL,'2018-03-04 22:17:15','en_US','2018-03-04 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'PROCESSED',250.00,43,NULL,30,43,NULL,1),(236,'Wakanimocho','Kyoto',NULL,'Khalil','Tali',NULL,NULL,'651-0077','Kyoto','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-04-26','Wakanimocho','Kyoto',NULL,'Khalil','Tali','651-0077','Kyoto',NULL,NULL,'2018-04-27 01:16:15','en_US','2018-04-26 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'DELIVERED',40.00,43,NULL,30,43,NULL,1),(237,'HIH, A915','Kyoto',NULL,'Zackaria','Mohajir',NULL,NULL,'651-0077','Kyoto','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-05-10','HIH, A915','Kyoto',NULL,'Zackaria','Mohajir','651-0077','Kyoto',NULL,NULL,'2017-05-11 07:06:15','en_US','2017-05-10 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'REFUNDED',220.00,43,NULL,30,43,NULL,1),(238,'HIH, A915','Osaka',NULL,'Maria','Benatia',NULL,NULL,'651-0077','Osaka','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-11-22','HIH, A915','Osaka',NULL,'Maria','Benatia','651-0077','Osaka',NULL,NULL,'2017-11-23 06:51:15','en_US','2017-11-22 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'DELIVERED',150.00,43,NULL,30,43,NULL,1),(239,'Chuo-ku','Kyoto',NULL,'Mohamed','Aman',NULL,NULL,'651-0077','Kyoto','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-02-23','Chuo-ku','Kyoto',NULL,'Mohamed','Aman','651-0077','Kyoto',NULL,NULL,'2018-02-23 21:51:15','en_US','2018-02-23 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'DELIVERED',160.00,43,NULL,30,43,NULL,1),(240,'Kasuganomichi','Kyoto',NULL,'Maria','Van dar',NULL,NULL,'651-0077','Kyoto','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-09-07','Kasuganomichi','Kyoto',NULL,'Maria','Van dar','651-0077','Kyoto',NULL,NULL,'2017-09-08 00:13:15','en_US','2017-09-07 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'DELIVERED',140.00,43,NULL,30,43,NULL,1),(241,'HIH, A915','Kobe',NULL,'Ymran','Morabit',NULL,NULL,'651-0077','Kobe','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-03-16','HIH, A915','Kobe',NULL,'Ymran','Morabit','651-0077','Kobe',NULL,NULL,'2018-03-16 12:44:15','en_US','2018-03-16 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'DELIVERED',88.50,43,NULL,30,43,NULL,1),(242,'Chuo-ku','Nara',NULL,'Maria','Chappy',NULL,NULL,'651-0077','Nara','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-10-20','Chuo-ku','Nara',NULL,'Maria','Chappy','651-0077','Nara',NULL,NULL,'2017-10-21 06:15:15','en_US','2017-10-20 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'CANCELED',20.00,43,NULL,30,43,NULL,1),(243,'Chuo-ku','Kurachiki',NULL,'Mohamed','Elmaleh',NULL,NULL,'651-0077','Kurachiki','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-05-27','Chuo-ku','Kurachiki',NULL,'Mohamed','Elmaleh','651-0077','Kurachiki',NULL,NULL,'2017-05-27 23:04:15','en_US','2017-05-27 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'CANCELED',50.00,43,NULL,30,43,NULL,1),(244,'HIH, A915','Kurachiki',NULL,'Mohamed','Benatia',NULL,NULL,'651-0077','Kurachiki','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-07-13','HIH, A915','Kurachiki',NULL,'Mohamed','Benatia','651-0077','Kurachiki',NULL,NULL,'2017-07-13 23:49:15','en_US','2017-07-13 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'PROCESSED',90.00,43,NULL,30,43,NULL,1),(245,'Wakanimocho','Kurachiki',NULL,'Julia','Van dar',NULL,NULL,'651-0077','Kurachiki','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-02-22','Wakanimocho','Kurachiki',NULL,'Julia','Van dar','651-0077','Kurachiki',NULL,NULL,'2018-02-22 21:29:15','en_US','2018-02-22 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'DELIVERED',155.00,43,NULL,30,43,NULL,1),(246,'HIH, A915','Osaka',NULL,'Julia','Mohajir',NULL,NULL,'651-0077','Osaka','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-10-23','HIH, A915','Osaka',NULL,'Julia','Mohajir','651-0077','Osaka',NULL,NULL,'2017-10-23 17:29:15','en_US','2017-10-23 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'DELIVERED',160.00,43,NULL,30,43,NULL,1),(247,'HIH, A915','Kobe',NULL,'Zackaria','Lazrak',NULL,NULL,'651-0077','Kobe','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-03-02','HIH, A915','Kobe',NULL,'Zackaria','Lazrak','651-0077','Kobe',NULL,NULL,'2018-03-02 14:03:15','en_US','2018-03-02 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'PROCESSED',50.00,43,NULL,30,43,NULL,1),(248,'Chuo-ku','Nara',NULL,'Leila','Dupond',NULL,NULL,'651-0077','Nara','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-01-28','Chuo-ku','Nara',NULL,'Leila','Dupond','651-0077','Nara',NULL,NULL,'2018-01-29 00:55:15','en_US','2018-01-28 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'DELIVERED',140.00,43,NULL,30,43,NULL,1),(249,'Wakanimocho','Osaka',NULL,'Ymran','Benatia',NULL,NULL,'651-0077','Osaka','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-02-11','Wakanimocho','Osaka',NULL,'Ymran','Benatia','651-0077','Osaka',NULL,NULL,'2018-02-12 06:22:15','en_US','2018-02-11 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'PROCESSED',140.00,43,NULL,30,43,NULL,1),(250,'HIH, A915','Nara',NULL,'Kevin','Benatia',NULL,NULL,'651-0077','Nara','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-04-11','HIH, A915','Nara',NULL,'Kevin','Benatia','651-0077','Nara',NULL,NULL,'2018-04-12 01:47:15','en_US','2018-04-11 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'PROCESSED',140.00,43,NULL,30,43,NULL,1),(251,'Kasuganomichi','Nara',NULL,'Ymran','Morabit',NULL,NULL,'651-0077','Nara','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-09-13','Kasuganomichi','Nara',NULL,'Ymran','Morabit','651-0077','Nara',NULL,NULL,'2017-09-14 01:43:15','en_US','2017-09-13 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'REFUNDED',40.00,43,NULL,30,43,NULL,1),(252,'HIH, A915','Kobe',NULL,'Mohamed','Sall',NULL,NULL,'651-0077','Kobe','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-01-13','HIH, A915','Kobe',NULL,'Mohamed','Sall','651-0077','Kobe',NULL,NULL,'2018-01-14 10:07:15','en_US','2018-01-13 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'PROCESSED',20.00,43,NULL,30,43,NULL,1),(253,'HIH, A915','Kyoto',NULL,'Kevin','Aman',NULL,NULL,'651-0077','Kyoto','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-05-24','HIH, A915','Kyoto',NULL,'Kevin','Aman','651-0077','Kyoto',NULL,NULL,'2017-05-24 17:52:15','en_US','2017-05-24 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'PROCESSED',80.00,43,NULL,30,43,NULL,1),(254,'Wakanimocho','Kyoto',NULL,'Mohamed','Mohajir',NULL,NULL,'651-0077','Kyoto','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-05-09','Wakanimocho','Kyoto',NULL,'Mohamed','Mohajir','651-0077','Kyoto',NULL,NULL,'2017-05-10 02:03:15','en_US','2017-05-09 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'DELIVERED',188.00,43,NULL,30,43,NULL,1),(255,'Chuo-ku','Kobe',NULL,'Khalil','Sall',NULL,NULL,'651-0077','Kobe','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-10-06','Chuo-ku','Kobe',NULL,'Khalil','Sall','651-0077','Kobe',NULL,NULL,'2017-10-06 19:49:15','en_US','2017-10-06 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'ORDERED',88.50,43,NULL,30,43,NULL,1),(256,'nada','Osaka',NULL,'Mickel','BenKhadra',NULL,NULL,'651-0077','Osaka','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-07-18','nada','Osaka',NULL,'Mickel','BenKhadra','651-0077','Osaka',NULL,NULL,'2017-07-18 20:07:15','en_US','2017-07-18 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'ORDERED',120.00,43,NULL,30,43,NULL,1),(257,'Wakanimocho','Kyoto',NULL,'Leila','Tali',NULL,NULL,'651-0077','Kyoto','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-11-06','Wakanimocho','Kyoto',NULL,'Leila','Tali','651-0077','Kyoto',NULL,NULL,'2017-11-06 14:14:15','en_US','2017-11-06 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'PROCESSED',40.00,43,NULL,30,43,NULL,1),(258,'Chuo-ku','Kobe',NULL,'Fatima','Leplus',NULL,NULL,'651-0077','Kobe','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-05-01','Chuo-ku','Kobe',NULL,'Fatima','Leplus','651-0077','Kobe',NULL,NULL,'2018-05-02 09:51:15','en_US','2018-05-01 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'DELIVERED',60.00,43,NULL,30,43,NULL,1),(259,'HIH, A915','Kyoto',NULL,'Mohamed','Van dar',NULL,NULL,'651-0077','Kyoto','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-12-03','HIH, A915','Kyoto',NULL,'Mohamed','Van dar','651-0077','Kyoto',NULL,NULL,'2017-12-04 03:27:15','en_US','2017-12-03 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'DELIVERED',155.00,43,NULL,30,43,NULL,1),(260,'nada','Nara',NULL,'Fatima','Leplus',NULL,NULL,'651-0077','Nara','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-09-28','nada','Nara',NULL,'Fatima','Leplus','651-0077','Nara',NULL,NULL,'2017-09-28 13:08:15','en_US','2017-09-28 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'DELIVERED',145.00,43,NULL,30,43,NULL,1),(261,'Wakanimocho','Kurachiki',NULL,'Fatima','Elmaleh',NULL,NULL,'651-0077','Kurachiki','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-07-16','Wakanimocho','Kurachiki',NULL,'Fatima','Elmaleh','651-0077','Kurachiki',NULL,NULL,'2017-07-16 20:57:15','en_US','2017-07-16 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'REFUNDED',130.00,43,NULL,30,43,NULL,1),(262,'HIH, A915','Osaka',NULL,'Amal','Tali',NULL,NULL,'651-0077','Osaka','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-04-20','HIH, A915','Osaka',NULL,'Amal','Tali','651-0077','Osaka',NULL,NULL,'2018-04-20 18:44:15','en_US','2018-04-20 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'DELIVERED',25.00,43,NULL,30,43,NULL,1),(263,'Chuo-ku','Osaka',NULL,'Mickel','Dupond',NULL,NULL,'651-0077','Osaka','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-01-10','Chuo-ku','Osaka',NULL,'Mickel','Dupond','651-0077','Osaka',NULL,NULL,'2018-01-11 02:54:15','en_US','2018-01-10 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'REFUNDED',190.00,43,NULL,30,43,NULL,1),(264,'Wakanimocho','Kyoto',NULL,'Mohamed','Yan',NULL,NULL,'651-0077','Kyoto','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-12-23','Wakanimocho','Kyoto',NULL,'Mohamed','Yan','651-0077','Kyoto',NULL,NULL,'2017-12-24 06:50:15','en_US','2017-12-23 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'PROCESSED',160.00,43,NULL,30,43,NULL,1),(265,'Chuo-ku','Osaka',NULL,'Khalil','Morabit',NULL,NULL,'651-0077','Osaka','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-09-24','Chuo-ku','Osaka',NULL,'Khalil','Morabit','651-0077','Osaka',NULL,NULL,'2017-09-24 14:00:15','en_US','2017-09-24 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'PROCESSED',220.00,43,NULL,30,43,NULL,1),(266,'Chuo-ku','Nara',NULL,'Mickel','Yan',NULL,NULL,'651-0077','Nara','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-09-04','Chuo-ku','Nara',NULL,'Mickel','Yan','651-0077','Nara',NULL,NULL,'2017-09-05 09:58:15','en_US','2017-09-04 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'DELIVERED',220.00,43,NULL,30,43,NULL,1),(267,'nada','Kyoto',NULL,'Ymran','Mohajir',NULL,NULL,'651-0077','Kyoto','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-09-29','nada','Kyoto',NULL,'Ymran','Mohajir','651-0077','Kyoto',NULL,NULL,'2017-09-30 09:28:15','en_US','2017-09-29 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'DELIVERED',60.00,43,NULL,30,43,NULL,1),(268,'nada','Kobe',NULL,'Khalil','Elmaleh',NULL,NULL,'651-0077','Kobe','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-07-03','nada','Kobe',NULL,'Khalil','Elmaleh','651-0077','Kobe',NULL,NULL,'2017-07-03 23:49:15','en_US','2017-07-03 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'ORDERED',150.00,43,NULL,30,43,NULL,1),(269,'HIH, A915','Kyoto',NULL,'Kevin','Van dar',NULL,NULL,'651-0077','Kyoto','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-04-05','HIH, A915','Kyoto',NULL,'Kevin','Van dar','651-0077','Kyoto',NULL,NULL,'2018-04-05 16:02:15','en_US','2018-04-05 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'PROCESSED',120.00,43,NULL,30,43,NULL,1),(270,'Wakanimocho','Kurachiki',NULL,'Julia','BenKhadra',NULL,NULL,'651-0077','Kurachiki','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-03-21','Wakanimocho','Kurachiki',NULL,'Julia','BenKhadra','651-0077','Kurachiki',NULL,NULL,'2018-03-21 12:14:15','en_US','2018-03-21 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'DELIVERED',160.00,43,NULL,30,43,NULL,1),(271,'HIH, A915','Nara',NULL,'Julia','Tali',NULL,NULL,'651-0077','Nara','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-12-30','HIH, A915','Nara',NULL,'Julia','Tali','651-0077','Nara',NULL,NULL,'2017-12-30 19:25:15','en_US','2017-12-30 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'REFUNDED',200.00,43,NULL,30,43,NULL,1),(272,'Wakanimocho','Kobe',NULL,'Khalil','Benatia',NULL,NULL,'651-0077','Kobe','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-08-02','Wakanimocho','Kobe',NULL,'Khalil','Benatia','651-0077','Kobe',NULL,NULL,'2017-08-02 22:16:15','en_US','2017-08-02 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'REFUNDED',140.00,43,NULL,30,43,NULL,1),(273,'Wakanimocho','Osaka',NULL,'Fatima','Van dar',NULL,NULL,'651-0077','Osaka','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-07-24','Wakanimocho','Osaka',NULL,'Fatima','Van dar','651-0077','Osaka',NULL,NULL,'2017-07-24 17:57:15','en_US','2017-07-24 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'REFUNDED',157.00,43,NULL,30,43,NULL,1),(274,'Wakanimocho','Kyoto',NULL,'Zackaria','Chappy',NULL,NULL,'651-0077','Kyoto','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-05-11','Wakanimocho','Kyoto',NULL,'Zackaria','Chappy','651-0077','Kyoto',NULL,NULL,'2017-05-11 23:12:15','en_US','2017-05-11 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'DELIVERED',90.00,43,NULL,30,43,NULL,1),(275,'HIH, A915','Nara',NULL,'Leila','Leplus',NULL,NULL,'651-0077','Nara','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-05-08','HIH, A915','Nara',NULL,'Leila','Leplus','651-0077','Nara',NULL,NULL,'2017-05-08 17:01:15','en_US','2017-05-08 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'REFUNDED',220.00,43,NULL,30,43,NULL,1),(276,'Wakanimocho','Kyoto',NULL,'Joe','Elmaleh',NULL,NULL,'651-0077','Kyoto','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-02-20','Wakanimocho','Kyoto',NULL,'Joe','Elmaleh','651-0077','Kyoto',NULL,NULL,'2018-02-21 02:22:15','en_US','2018-02-20 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'DELIVERED',50.00,43,NULL,30,43,NULL,1),(277,'HIH, A915','Osaka',NULL,'Safae','Van dar',NULL,NULL,'651-0077','Osaka','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-08-13','HIH, A915','Osaka',NULL,'Safae','Van dar','651-0077','Osaka',NULL,NULL,'2017-08-13 15:24:15','en_US','2017-08-13 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'PROCESSED',25.00,43,NULL,30,43,NULL,1),(278,'HIH, A915','Osaka',NULL,'Fatima','Aman',NULL,NULL,'651-0077','Osaka','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-06-13','HIH, A915','Osaka',NULL,'Fatima','Aman','651-0077','Osaka',NULL,NULL,'2017-06-14 00:00:15','en_US','2017-06-13 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'PROCESSED',130.00,43,NULL,30,43,NULL,1),(279,'HIH, A915','Nara',NULL,'Kevin','Chappy',NULL,NULL,'651-0077','Nara','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-10-14','HIH, A915','Nara',NULL,'Kevin','Chappy','651-0077','Nara',NULL,NULL,'2017-10-15 03:22:15','en_US','2017-10-14 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'PROCESSED',40.00,43,NULL,30,43,NULL,1),(280,'Kasuganomichi','Osaka',NULL,'Anass','Elmaleh',NULL,NULL,'651-0077','Osaka','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-05-09','Kasuganomichi','Osaka',NULL,'Anass','Elmaleh','651-0077','Osaka',NULL,NULL,'2017-05-09 18:11:15','en_US','2017-05-09 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'DELIVERED',200.00,43,NULL,30,43,NULL,1),(281,'Wakanimocho','Nara',NULL,'Mohamed','Aman',NULL,NULL,'651-0077','Nara','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-05-24','Wakanimocho','Nara',NULL,'Mohamed','Aman','651-0077','Nara',NULL,NULL,'2017-05-24 18:52:15','en_US','2017-05-24 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'PROCESSED',220.00,43,NULL,30,43,NULL,1),(282,'nada','Kyoto',NULL,'Kevin','Lazrak',NULL,NULL,'651-0077','Kyoto','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-12-23','nada','Kyoto',NULL,'Kevin','Lazrak','651-0077','Kyoto',NULL,NULL,'2017-12-24 04:27:15','en_US','2017-12-23 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'PROCESSED',190.00,43,NULL,30,43,NULL,1),(283,'Kasuganomichi','Nara',NULL,'Amal','Dupond',NULL,NULL,'651-0077','Nara','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-03-04','Kasuganomichi','Nara',NULL,'Amal','Dupond','651-0077','Nara',NULL,NULL,'2018-03-05 05:42:15','en_US','2018-03-04 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'CANCELED',115.00,43,NULL,30,43,NULL,1),(284,'Wakanimocho','Kobe',NULL,'Anass','Aman',NULL,NULL,'651-0077','Kobe','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-01-04','Wakanimocho','Kobe',NULL,'Anass','Aman','651-0077','Kobe',NULL,NULL,'2018-01-05 01:25:15','en_US','2018-01-04 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'PROCESSED',130.00,43,NULL,30,43,NULL,1),(285,'Kasuganomichi','Kobe',NULL,'Khalil','Tali',NULL,NULL,'651-0077','Kobe','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-06-20','Kasuganomichi','Kobe',NULL,'Khalil','Tali','651-0077','Kobe',NULL,NULL,'2017-06-20 11:56:15','en_US','2017-06-20 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'ORDERED',189.00,43,NULL,30,43,NULL,1),(286,'Kasuganomichi','Nara',NULL,'Khalil','Chappy',NULL,NULL,'651-0077','Nara','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-11-26','Kasuganomichi','Nara',NULL,'Khalil','Chappy','651-0077','Nara',NULL,NULL,'2017-11-26 15:15:15','en_US','2017-11-26 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'ORDERED',152.00,43,NULL,30,43,NULL,1),(287,'Chuo-ku','Kyoto',NULL,'Julia','Morabit',NULL,NULL,'651-0077','Kyoto','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-06-11','Chuo-ku','Kyoto',NULL,'Julia','Morabit','651-0077','Kyoto',NULL,NULL,'2017-06-11 12:07:15','en_US','2017-06-11 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'PROCESSED',250.00,43,NULL,30,43,NULL,1),(288,'Chuo-ku','Kyoto',NULL,'Julia','Yan',NULL,NULL,'651-0077','Kyoto','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-06-14','Chuo-ku','Kyoto',NULL,'Julia','Yan','651-0077','Kyoto',NULL,NULL,'2017-06-15 05:13:15','en_US','2017-06-14 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'REFUNDED',130.00,43,NULL,30,43,NULL,1),(289,'Chuo-ku','Kyoto',NULL,'Gabriel','Elmaleh',NULL,NULL,'651-0077','Kyoto','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-09-11','Chuo-ku','Kyoto',NULL,'Gabriel','Elmaleh','651-0077','Kyoto',NULL,NULL,'2017-09-11 11:49:15','en_US','2017-09-11 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'ORDERED',88.50,43,NULL,30,43,NULL,1),(290,'Kasuganomichi','Kobe',NULL,'Leila','Dupond',NULL,NULL,'651-0077','Kobe','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-09-26','Kasuganomichi','Kobe',NULL,'Leila','Dupond','651-0077','Kobe',NULL,NULL,'2017-09-27 05:05:15','en_US','2017-09-26 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'PROCESSED',90.00,43,NULL,30,43,NULL,1),(291,'nada','Kobe',NULL,'Mickel','Chappy',NULL,NULL,'651-0077','Kobe','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-06-24','nada','Kobe',NULL,'Mickel','Chappy','651-0077','Kobe',NULL,NULL,'2017-06-24 20:09:15','en_US','2017-06-24 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'PROCESSED',157.00,43,NULL,30,43,NULL,1),(292,'nada','Osaka',NULL,'Mickel','Leplus',NULL,NULL,'651-0077','Osaka','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-09-22','nada','Osaka',NULL,'Mickel','Leplus','651-0077','Osaka',NULL,NULL,'2017-09-22 22:43:15','en_US','2017-09-22 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'REFUNDED',140.00,43,NULL,30,43,NULL,1),(293,'Kasuganomichi','Kobe',NULL,'Maria','Tali',NULL,NULL,'651-0077','Kobe','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-10-10','Kasuganomichi','Kobe',NULL,'Maria','Tali','651-0077','Kobe',NULL,NULL,'2017-10-11 03:01:15','en_US','2017-10-10 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'DELIVERED',190.00,43,NULL,30,43,NULL,1),(294,'Kasuganomichi','Kobe',NULL,'Gabriel','Mohajir',NULL,NULL,'651-0077','Kobe','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-11-18','Kasuganomichi','Kobe',NULL,'Gabriel','Mohajir','651-0077','Kobe',NULL,NULL,'2017-11-18 21:27:15','en_US','2017-11-18 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'ORDERED',130.00,43,NULL,30,43,NULL,1),(295,'Chuo-ku','Osaka',NULL,'Leila','Lazrak',NULL,NULL,'651-0077','Osaka','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-03-25','Chuo-ku','Osaka',NULL,'Leila','Lazrak','651-0077','Osaka',NULL,NULL,'2018-03-26 08:42:15','en_US','2018-03-25 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'PROCESSED',115.00,43,NULL,30,43,NULL,1),(296,'Chuo-ku','Osaka',NULL,'Latifa','Van dar',NULL,NULL,'651-0077','Osaka','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-05-17','Chuo-ku','Osaka',NULL,'Latifa','Van dar','651-0077','Osaka',NULL,NULL,'2017-05-17 20:52:15','en_US','2017-05-17 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'PROCESSED',130.00,43,NULL,30,43,NULL,1),(297,'nada','Kyoto',NULL,'Khalil','Mohajir',NULL,NULL,'651-0077','Kyoto','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-06-15','nada','Kyoto',NULL,'Khalil','Mohajir','651-0077','Kyoto',NULL,NULL,'2017-06-16 08:25:15','en_US','2017-06-15 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'ORDERED',40.00,43,NULL,30,43,NULL,1),(298,'Chuo-ku','Nara',NULL,'Ymran','Chappy',NULL,NULL,'651-0077','Nara','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-08-07','Chuo-ku','Nara',NULL,'Ymran','Chappy','651-0077','Nara',NULL,NULL,'2017-08-07 18:22:15','en_US','2017-08-07 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'CANCELED',100.00,43,NULL,30,43,NULL,1),(299,'Wakanimocho','Osaka',NULL,'Latifa','BenKhadra',NULL,NULL,'651-0077','Osaka','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-03-21','Wakanimocho','Osaka',NULL,'Latifa','BenKhadra','651-0077','Osaka',NULL,NULL,'2018-03-22 10:01:15','en_US','2018-03-21 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'DELIVERED',190.00,43,NULL,30,43,NULL,1),(300,'Wakanimocho','Osaka',NULL,'Gabriel','Elmaleh',NULL,NULL,'651-0077','Osaka','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-12-06','Wakanimocho','Osaka',NULL,'Gabriel','Elmaleh','651-0077','Osaka',NULL,NULL,'2017-12-07 03:58:15','en_US','2017-12-06 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'DELIVERED',60.00,43,NULL,30,43,NULL,1),(301,'Wakanimocho','Kobe',NULL,'Julia','Leplus',NULL,NULL,'651-0077','Kobe','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-04-07','Wakanimocho','Kobe',NULL,'Julia','Leplus','651-0077','Kobe',NULL,NULL,'2018-04-08 02:28:15','en_US','2018-04-07 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'DELIVERED',60.00,43,NULL,30,43,NULL,1),(302,'HIH, A915','Nara',NULL,'Amal','Leplus',NULL,NULL,'651-0077','Nara','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-06-20','HIH, A915','Nara',NULL,'Amal','Leplus','651-0077','Nara',NULL,NULL,'2017-06-20 22:51:15','en_US','2017-06-20 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'REFUNDED',120.00,43,NULL,30,43,NULL,1),(303,'Chuo-ku','Kurachiki',NULL,'Anass','Morabit',NULL,NULL,'651-0077','Kurachiki','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-07-06','Chuo-ku','Kurachiki',NULL,'Anass','Morabit','651-0077','Kurachiki',NULL,NULL,'2017-07-06 19:07:15','en_US','2017-07-06 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'DELIVERED',100.00,43,NULL,30,43,NULL,1),(304,'Kasuganomichi','Osaka',NULL,'Leila','Benatia',NULL,NULL,'651-0077','Osaka','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-07-07','Kasuganomichi','Osaka',NULL,'Leila','Benatia','651-0077','Osaka',NULL,NULL,'2017-07-08 02:09:15','en_US','2017-07-07 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'PROCESSED',120.00,43,NULL,30,43,NULL,1),(305,'nada','Kurachiki',NULL,'Joe','Mohajir',NULL,NULL,'651-0077','Kurachiki','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-07-05','nada','Kurachiki',NULL,'Joe','Mohajir','651-0077','Kurachiki',NULL,NULL,'2017-07-05 14:55:15','en_US','2017-07-05 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'DELIVERED',25.00,43,NULL,30,43,NULL,1),(306,'nada','Osaka',NULL,'Amal','Dupond',NULL,NULL,'651-0077','Osaka','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-05-12','nada','Osaka',NULL,'Amal','Dupond','651-0077','Osaka',NULL,NULL,'2017-05-13 02:25:15','en_US','2017-05-12 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'PROCESSED',60.00,43,NULL,30,43,NULL,1),(307,'Chuo-ku','Kurachiki',NULL,'Zackaria','Benatia',NULL,NULL,'651-0077','Kurachiki','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-08-20','Chuo-ku','Kurachiki',NULL,'Zackaria','Benatia','651-0077','Kurachiki',NULL,NULL,'2017-08-21 05:09:15','en_US','2017-08-20 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'DELIVERED',100.00,43,NULL,30,43,NULL,1),(308,'HIH, A915','Nara',NULL,'Kevin','Lazrak',NULL,NULL,'651-0077','Nara','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-11-29','HIH, A915','Nara',NULL,'Kevin','Lazrak','651-0077','Nara',NULL,NULL,'2017-11-30 01:28:15','en_US','2017-11-29 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'PROCESSED',140.00,43,NULL,30,43,NULL,1),(309,'Chuo-ku','Kyoto',NULL,'Mickel','Mohajir',NULL,NULL,'651-0077','Kyoto','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-07-16','Chuo-ku','Kyoto',NULL,'Mickel','Mohajir','651-0077','Kyoto',NULL,NULL,'2017-07-16 16:06:15','en_US','2017-07-16 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'PROCESSED',40.00,43,NULL,30,43,NULL,1),(310,'Chuo-ku','Kurachiki',NULL,'Ymran','Sall',NULL,NULL,'651-0077','Kurachiki','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-06-16','Chuo-ku','Kurachiki',NULL,'Ymran','Sall','651-0077','Kurachiki',NULL,NULL,'2017-06-16 23:21:15','en_US','2017-06-16 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'REFUNDED',90.00,43,NULL,30,43,NULL,1),(311,'HIH, A915','Nara',NULL,'Khalil','Mohajir',NULL,NULL,'651-0077','Nara','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-10-11','HIH, A915','Nara',NULL,'Khalil','Mohajir','651-0077','Nara',NULL,NULL,'2017-10-12 05:13:15','en_US','2017-10-11 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'ORDERED',88.50,43,NULL,30,43,NULL,1),(312,'HIH, A915','Nara',NULL,'Leila','Tali',NULL,NULL,'651-0077','Nara','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-09-05','HIH, A915','Nara',NULL,'Leila','Tali','651-0077','Nara',NULL,NULL,'2017-09-05 23:52:15','en_US','2017-09-05 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'REFUNDED',157.00,43,NULL,30,43,NULL,1),(313,'HIH, A915','Kyoto',NULL,'Safae','Aman',NULL,NULL,'651-0077','Kyoto','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-12-28','HIH, A915','Kyoto',NULL,'Safae','Aman','651-0077','Kyoto',NULL,NULL,'2017-12-29 02:07:15','en_US','2017-12-28 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'REFUNDED',50.00,43,NULL,30,43,NULL,1),(314,'Kasuganomichi','Nara',NULL,'Julia','Van dar',NULL,NULL,'651-0077','Nara','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-01-28','Kasuganomichi','Nara',NULL,'Julia','Van dar','651-0077','Nara',NULL,NULL,'2018-01-29 04:24:15','en_US','2018-01-28 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'DELIVERED',320.00,43,NULL,30,43,NULL,1),(315,'HIH, A915','Kyoto',NULL,'Joe','Aman',NULL,NULL,'651-0077','Kyoto','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-07-20','HIH, A915','Kyoto',NULL,'Joe','Aman','651-0077','Kyoto',NULL,NULL,'2017-07-20 19:27:15','en_US','2017-07-20 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'CANCELED',157.00,43,NULL,30,43,NULL,1),(316,'HIH, A915','Osaka',NULL,'Joe','Tali',NULL,NULL,'651-0077','Osaka','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-06-03','HIH, A915','Osaka',NULL,'Joe','Tali','651-0077','Osaka',NULL,NULL,'2017-06-03 17:08:15','en_US','2017-06-03 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'CANCELED',88.50,43,NULL,30,43,NULL,1),(317,'HIH, A915','Kyoto',NULL,'Zackaria','Yan',NULL,NULL,'651-0077','Kyoto','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-03-24','HIH, A915','Kyoto',NULL,'Zackaria','Yan','651-0077','Kyoto',NULL,NULL,'2018-03-25 00:29:15','en_US','2018-03-24 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'REFUNDED',190.00,43,NULL,30,43,NULL,1),(318,'HIH, A915','Nara',NULL,'Kevin','Leplus',NULL,NULL,'651-0077','Nara','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-09-09','HIH, A915','Nara',NULL,'Kevin','Leplus','651-0077','Nara',NULL,NULL,'2017-09-10 10:28:15','en_US','2017-09-09 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'CANCELED',240.00,43,NULL,30,43,NULL,1),(319,'nada','Kobe',NULL,'Anass','BenKhadra',NULL,NULL,'651-0077','Kobe','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-08-11','nada','Kobe',NULL,'Anass','BenKhadra','651-0077','Kobe',NULL,NULL,'2017-08-12 01:07:15','en_US','2017-08-11 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'DELIVERED',60.00,43,NULL,30,43,NULL,1),(320,'HIH, A915','Nara',NULL,'Kevin','Chappy',NULL,NULL,'651-0077','Nara','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-11-14','HIH, A915','Nara',NULL,'Kevin','Chappy','651-0077','Nara',NULL,NULL,'2017-11-14 13:04:15','en_US','2017-11-14 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'DELIVERED',250.00,43,NULL,30,43,NULL,1),(321,'Wakanimocho','Kurachiki',NULL,'Ymran','Morabit',NULL,NULL,'651-0077','Kurachiki','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-08-12','Wakanimocho','Kurachiki',NULL,'Ymran','Morabit','651-0077','Kurachiki',NULL,NULL,'2017-08-12 13:00:15','en_US','2017-08-12 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'PROCESSED',60.00,43,NULL,30,43,NULL,1),(322,'Wakanimocho','Nara',NULL,'Mickel','Benatia',NULL,NULL,'651-0077','Nara','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-04-24','Wakanimocho','Nara',NULL,'Mickel','Benatia','651-0077','Nara',NULL,NULL,'2018-04-25 11:00:15','en_US','2018-04-24 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'PROCESSED',220.00,43,NULL,30,43,NULL,1),(323,'nada','Nara',NULL,'Gabriel','Dupond',NULL,NULL,'651-0077','Nara','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-07-13','nada','Nara',NULL,'Gabriel','Dupond','651-0077','Nara',NULL,NULL,'2017-07-14 04:40:15','en_US','2017-07-13 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'PROCESSED',157.00,43,NULL,30,43,NULL,1),(324,'nada','Kobe',NULL,'Mickel','Aman',NULL,NULL,'651-0077','Kobe','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-11-04','nada','Kobe',NULL,'Mickel','Aman','651-0077','Kobe',NULL,NULL,'2017-11-04 20:56:15','en_US','2017-11-04 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'CANCELED',80.00,43,NULL,30,43,NULL,1),(325,'HIH, A915','Nara',NULL,'Kevin','Benatia',NULL,NULL,'651-0077','Nara','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-02-17','HIH, A915','Nara',NULL,'Kevin','Benatia','651-0077','Nara',NULL,NULL,'2018-02-17 18:08:15','en_US','2018-02-17 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'REFUNDED',130.00,43,NULL,30,43,NULL,1),(326,'Chuo-ku','Nara',NULL,'Ymran','Sall',NULL,NULL,'651-0077','Nara','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-01-07','Chuo-ku','Nara',NULL,'Ymran','Sall','651-0077','Nara',NULL,NULL,'2018-01-07 23:22:15','en_US','2018-01-07 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'REFUNDED',240.00,43,NULL,30,43,NULL,1),(327,'Wakanimocho','Osaka',NULL,'Anass','Aman',NULL,NULL,'651-0077','Osaka','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-03-05','Wakanimocho','Osaka',NULL,'Anass','Aman','651-0077','Osaka',NULL,NULL,'2018-03-06 03:40:15','en_US','2018-03-05 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'REFUNDED',80.00,43,NULL,30,43,NULL,1),(328,'Kasuganomichi','Osaka',NULL,'Safae','Chappy',NULL,NULL,'651-0077','Osaka','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-08-19','Kasuganomichi','Osaka',NULL,'Safae','Chappy','651-0077','Osaka',NULL,NULL,'2017-08-19 16:53:15','en_US','2017-08-19 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'CANCELED',100.00,43,NULL,30,43,NULL,1),(329,'Kasuganomichi','Nara',NULL,'Ymran','Benatia',NULL,NULL,'651-0077','Nara','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-06-13','Kasuganomichi','Nara',NULL,'Ymran','Benatia','651-0077','Nara',NULL,NULL,'2017-06-14 05:14:15','en_US','2017-06-13 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'DELIVERED',189.00,43,NULL,30,43,NULL,1),(330,'Kasuganomichi','Nara',NULL,'Mickel','Van dar',NULL,NULL,'651-0077','Nara','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-09-14','Kasuganomichi','Nara',NULL,'Mickel','Van dar','651-0077','Nara',NULL,NULL,'2017-09-14 12:48:15','en_US','2017-09-14 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'PROCESSED',100.00,43,NULL,30,43,NULL,1),(331,'Kasuganomichi','Kyoto',NULL,'Joe','Tali',NULL,NULL,'651-0077','Kyoto','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-02-28','Kasuganomichi','Kyoto',NULL,'Joe','Tali','651-0077','Kyoto',NULL,NULL,'2018-02-28 20:18:15','en_US','2018-02-28 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'REFUNDED',250.00,43,NULL,30,43,NULL,1),(332,'Chuo-ku','Osaka',NULL,'Ymran','Van dar',NULL,NULL,'651-0077','Osaka','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-01-04','Chuo-ku','Osaka',NULL,'Ymran','Van dar','651-0077','Osaka',NULL,NULL,'2018-01-04 17:10:15','en_US','2018-01-04 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'REFUNDED',140.00,43,NULL,30,43,NULL,1),(333,'HIH, A915','Osaka',NULL,'Latifa','Elmaleh',NULL,NULL,'651-0077','Osaka','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-09-18','HIH, A915','Osaka',NULL,'Latifa','Elmaleh','651-0077','Osaka',NULL,NULL,'2017-09-19 11:07:15','en_US','2017-09-18 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'REFUNDED',90.00,43,NULL,30,43,NULL,1),(334,'Chuo-ku','Nara',NULL,'Anass','Elmaleh',NULL,NULL,'651-0077','Nara','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-04-02','Chuo-ku','Nara',NULL,'Anass','Elmaleh','651-0077','Nara',NULL,NULL,'2018-04-03 08:49:15','en_US','2018-04-02 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'CANCELED',90.00,43,NULL,30,43,NULL,1),(335,'nada','Nara',NULL,'Latifa','Benatia',NULL,NULL,'651-0077','Nara','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-09-09','nada','Nara',NULL,'Latifa','Benatia','651-0077','Nara',NULL,NULL,'2017-09-09 14:41:15','en_US','2017-09-09 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'REFUNDED',60.00,43,NULL,30,43,NULL,1),(336,'nada','Nara',NULL,'Gabriel','Morabit',NULL,NULL,'651-0077','Nara','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-01-09','nada','Nara',NULL,'Gabriel','Morabit','651-0077','Nara',NULL,NULL,'2018-01-09 12:49:15','en_US','2018-01-09 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'DELIVERED',145.00,43,NULL,30,43,NULL,1),(337,'Kasuganomichi','Osaka',NULL,'Gabriel','Yan',NULL,NULL,'651-0077','Osaka','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-07-02','Kasuganomichi','Osaka',NULL,'Gabriel','Yan','651-0077','Osaka',NULL,NULL,'2017-07-02 16:24:15','en_US','2017-07-02 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'PROCESSED',240.00,43,NULL,30,43,NULL,1),(338,'Wakanimocho','Osaka',NULL,'Latifa','Chappy',NULL,NULL,'651-0077','Osaka','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-07-07','Wakanimocho','Osaka',NULL,'Latifa','Chappy','651-0077','Osaka',NULL,NULL,'2017-07-08 03:11:15','en_US','2017-07-07 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'PROCESSED',130.00,43,NULL,30,43,NULL,1),(339,'HIH, A915','Nara',NULL,'Leila','Sall',NULL,NULL,'651-0077','Nara','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-05-16','HIH, A915','Nara',NULL,'Leila','Sall','651-0077','Nara',NULL,NULL,'2017-05-17 06:46:15','en_US','2017-05-16 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'ORDERED',190.00,43,NULL,30,43,NULL,1),(340,'HIH, A915','Osaka',NULL,'Mohamed','Mohajir',NULL,NULL,'651-0077','Osaka','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-10-12','HIH, A915','Osaka',NULL,'Mohamed','Mohajir','651-0077','Osaka',NULL,NULL,'2017-10-12 14:17:15','en_US','2017-10-12 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'REFUNDED',100.00,43,NULL,30,43,NULL,1),(341,'Chuo-ku','Osaka',NULL,'Joe','Lazrak',NULL,NULL,'651-0077','Osaka','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-08-22','Chuo-ku','Osaka',NULL,'Joe','Lazrak','651-0077','Osaka',NULL,NULL,'2017-08-23 07:09:15','en_US','2017-08-22 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'CANCELED',60.00,43,NULL,30,43,NULL,1),(342,'Wakanimocho','Osaka',NULL,'Joe','Dupond',NULL,NULL,'651-0077','Osaka','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-02-22','Wakanimocho','Osaka',NULL,'Joe','Dupond','651-0077','Osaka',NULL,NULL,'2018-02-22 19:50:15','en_US','2018-02-22 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'REFUNDED',100.00,43,NULL,30,43,NULL,1),(343,'Chuo-ku','Kyoto',NULL,'Fatima','Aman',NULL,NULL,'651-0077','Kyoto','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-01-17','Chuo-ku','Kyoto',NULL,'Fatima','Aman','651-0077','Kyoto',NULL,NULL,'2018-01-18 08:26:15','en_US','2018-01-17 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'ORDERED',80.00,43,NULL,30,43,NULL,1),(344,'HIH, A915','Osaka',NULL,'Ymran','Van dar',NULL,NULL,'651-0077','Osaka','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-01-27','HIH, A915','Osaka',NULL,'Ymran','Van dar','651-0077','Osaka',NULL,NULL,'2018-01-27 13:28:15','en_US','2018-01-27 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'ORDERED',25.00,43,NULL,30,43,NULL,1),(345,'Wakanimocho','Nara',NULL,'Amal','BenKhadra',NULL,NULL,'651-0077','Nara','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-02-15','Wakanimocho','Nara',NULL,'Amal','BenKhadra','651-0077','Nara',NULL,NULL,'2018-02-16 03:52:15','en_US','2018-02-15 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'REFUNDED',190.00,43,NULL,30,43,NULL,1),(346,'Kasuganomichi','Kurachiki',NULL,'Joe','Elmaleh',NULL,NULL,'651-0077','Kurachiki','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-06-15','Kasuganomichi','Kurachiki',NULL,'Joe','Elmaleh','651-0077','Kurachiki',NULL,NULL,'2017-06-16 01:11:15','en_US','2017-06-15 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'DELIVERED',160.00,43,NULL,30,43,NULL,1),(347,'HIH, A915','Kyoto',NULL,'Joe','Morabit',NULL,NULL,'651-0077','Kyoto','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-07-18','HIH, A915','Kyoto',NULL,'Joe','Morabit','651-0077','Kyoto',NULL,NULL,'2017-07-18 22:07:15','en_US','2017-07-18 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'PROCESSED',220.00,43,NULL,30,43,NULL,1),(348,'nada','Osaka',NULL,'Anass','Mohajir',NULL,NULL,'651-0077','Osaka','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-07-23','nada','Osaka',NULL,'Anass','Mohajir','651-0077','Osaka',NULL,NULL,'2017-07-24 08:42:15','en_US','2017-07-23 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'ORDERED',157.00,43,NULL,30,43,NULL,1),(349,'HIH, A915','Kyoto',NULL,'Mickel','Benatia',NULL,NULL,'651-0077','Kyoto','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-04-24','HIH, A915','Kyoto',NULL,'Mickel','Benatia','651-0077','Kyoto',NULL,NULL,'2018-04-25 02:08:15','en_US','2018-04-24 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'CANCELED',40.00,43,NULL,30,43,NULL,1),(350,'Wakanimocho','Kyoto',NULL,'Khalil','BenKhadra',NULL,NULL,'651-0077','Kyoto','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-02-21','Wakanimocho','Kyoto',NULL,'Khalil','BenKhadra','651-0077','Kyoto',NULL,NULL,'2018-02-22 04:44:15','en_US','2018-02-21 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'REFUNDED',60.00,43,NULL,30,43,NULL,1),(351,'Chuo-ku','Nara',NULL,'Anass','BenKhadra',NULL,NULL,'651-0077','Nara','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-10-18','Chuo-ku','Nara',NULL,'Anass','BenKhadra','651-0077','Nara',NULL,NULL,'2017-10-19 08:05:15','en_US','2017-10-18 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'ORDERED',90.00,43,NULL,30,43,NULL,1),(352,'HIH, A915','Kobe',NULL,'Kevin','Aman',NULL,NULL,'651-0077','Kobe','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-02-28','HIH, A915','Kobe',NULL,'Kevin','Aman','651-0077','Kobe',NULL,NULL,'2018-02-28 12:15:15','en_US','2018-02-28 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'REFUNDED',155.00,43,NULL,30,43,NULL,1),(353,'HIH, A915','Kyoto',NULL,'Mickel','Yan',NULL,NULL,'651-0077','Kyoto','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-05-25','HIH, A915','Kyoto',NULL,'Mickel','Yan','651-0077','Kyoto',NULL,NULL,'2017-05-25 22:54:15','en_US','2017-05-25 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'REFUNDED',115.00,43,NULL,30,43,NULL,1),(354,'Chuo-ku','Kyoto',NULL,'Leila','Dupond',NULL,NULL,'651-0077','Kyoto','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-12-21','Chuo-ku','Kyoto',NULL,'Leila','Dupond','651-0077','Kyoto',NULL,NULL,'2017-12-22 11:21:15','en_US','2017-12-21 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'DELIVERED',130.00,43,NULL,30,43,NULL,1),(355,'Kasuganomichi','Nara',NULL,'Julia','Yan',NULL,NULL,'651-0077','Nara','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-01-11','Kasuganomichi','Nara',NULL,'Julia','Yan','651-0077','Nara',NULL,NULL,'2018-01-11 16:00:15','en_US','2018-01-11 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'REFUNDED',115.00,43,NULL,30,43,NULL,1),(356,'Chuo-ku','Kurachiki',NULL,'Amal','Chappy',NULL,NULL,'651-0077','Kurachiki','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-08-19','Chuo-ku','Kurachiki',NULL,'Amal','Chappy','651-0077','Kurachiki',NULL,NULL,'2017-08-20 03:47:15','en_US','2017-08-19 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'PROCESSED',100.00,43,NULL,30,43,NULL,1),(357,'Chuo-ku','Nara',NULL,'Fatima','Morabit',NULL,NULL,'651-0077','Nara','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-07-05','Chuo-ku','Nara',NULL,'Fatima','Morabit','651-0077','Nara',NULL,NULL,'2017-07-06 08:02:15','en_US','2017-07-05 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'PROCESSED',190.00,43,NULL,30,43,NULL,1),(358,'Kasuganomichi','Osaka',NULL,'Anass','Tali',NULL,NULL,'651-0077','Osaka','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-08-22','Kasuganomichi','Osaka',NULL,'Anass','Tali','651-0077','Osaka',NULL,NULL,'2017-08-22 14:01:15','en_US','2017-08-22 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'PROCESSED',100.00,43,NULL,30,43,NULL,1),(359,'Wakanimocho','Kyoto',NULL,'Maria','Sall',NULL,NULL,'651-0077','Kyoto','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-12-25','Wakanimocho','Kyoto',NULL,'Maria','Sall','651-0077','Kyoto',NULL,NULL,'2017-12-25 17:54:15','en_US','2017-12-25 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'PROCESSED',60.00,43,NULL,30,43,NULL,1),(360,'Chuo-ku','Kobe',NULL,'Safae','Tali',NULL,NULL,'651-0077','Kobe','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-12-12','Chuo-ku','Kobe',NULL,'Safae','Tali','651-0077','Kobe',NULL,NULL,'2017-12-13 03:16:15','en_US','2017-12-12 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'REFUNDED',100.00,43,NULL,30,43,NULL,1),(361,'Kasuganomichi','Kyoto',NULL,'Maria','Dupond',NULL,NULL,'651-0077','Kyoto','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-05-06','Kasuganomichi','Kyoto',NULL,'Maria','Dupond','651-0077','Kyoto',NULL,NULL,'2017-05-07 05:45:15','en_US','2017-05-06 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'PROCESSED',220.00,43,NULL,30,43,NULL,1),(362,'Kasuganomichi','Nara',NULL,'Julia','Dupond',NULL,NULL,'651-0077','Nara','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-02-16','Kasuganomichi','Nara',NULL,'Julia','Dupond','651-0077','Nara',NULL,NULL,'2018-02-17 08:04:15','en_US','2018-02-16 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'REFUNDED',115.00,43,NULL,30,43,NULL,1),(363,'Wakanimocho','Kobe',NULL,'Anass','BenKhadra',NULL,NULL,'651-0077','Kobe','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-03-14','Wakanimocho','Kobe',NULL,'Anass','BenKhadra','651-0077','Kobe',NULL,NULL,'2018-03-15 07:43:15','en_US','2018-03-14 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'PROCESSED',200.00,43,NULL,30,43,NULL,1),(364,'nada','Nara',NULL,'Anass','Sall',NULL,NULL,'651-0077','Nara','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-07-05','nada','Nara',NULL,'Anass','Sall','651-0077','Nara',NULL,NULL,'2017-07-05 13:54:15','en_US','2017-07-05 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'REFUNDED',70.00,43,NULL,30,43,NULL,1),(365,'Kasuganomichi','Kobe',NULL,'Joe','Mohajir',NULL,NULL,'651-0077','Kobe','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-05-03','Kasuganomichi','Kobe',NULL,'Joe','Mohajir','651-0077','Kobe',NULL,NULL,'2017-05-04 03:46:15','en_US','2017-05-03 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'DELIVERED',60.00,43,NULL,30,43,NULL,1),(366,'HIH, A915','Nara',NULL,'Latifa','Van dar',NULL,NULL,'651-0077','Nara','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-02-28','HIH, A915','Nara',NULL,'Latifa','Van dar','651-0077','Nara',NULL,NULL,'2018-02-28 18:07:15','en_US','2018-02-28 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'DELIVERED',90.00,43,NULL,30,43,NULL,1),(367,'Kasuganomichi','Nara',NULL,'Zackaria','Lazrak',NULL,NULL,'651-0077','Nara','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-06-26','Kasuganomichi','Nara',NULL,'Zackaria','Lazrak','651-0077','Nara',NULL,NULL,'2017-06-26 20:41:15','en_US','2017-06-26 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'CANCELED',140.00,43,NULL,30,43,NULL,1),(368,'Wakanimocho','Nara',NULL,'Fatima','BenKhadra',NULL,NULL,'651-0077','Nara','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-11-19','Wakanimocho','Nara',NULL,'Fatima','BenKhadra','651-0077','Nara',NULL,NULL,'2017-11-20 01:28:15','en_US','2017-11-19 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'ORDERED',150.00,43,NULL,30,43,NULL,1),(369,'Kasuganomichi','Kobe',NULL,'Gabriel','BenKhadra',NULL,NULL,'651-0077','Kobe','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-10-19','Kasuganomichi','Kobe',NULL,'Gabriel','BenKhadra','651-0077','Kobe',NULL,NULL,'2017-10-19 16:08:15','en_US','2017-10-19 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'REFUNDED',120.00,43,NULL,30,43,NULL,1),(370,'Chuo-ku','Osaka',NULL,'Safae','Morabit',NULL,NULL,'651-0077','Osaka','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-06-23','Chuo-ku','Osaka',NULL,'Safae','Morabit','651-0077','Osaka',NULL,NULL,'2017-06-24 05:03:15','en_US','2017-06-23 11:40:15','ORDER','moneyorder','MONEYORDER',NULL,'ORDERED',115.00,43,NULL,30,43,NULL,1),(371,'nada','Kyoto',NULL,'Maria','Lazrak',NULL,NULL,'651-0077','Kyoto','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-07-03','nada','Kyoto',NULL,'Maria','Lazrak','651-0077','Kyoto',NULL,NULL,'2017-07-03 14:45:16','en_US','2017-07-03 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'ORDERED',70.00,43,NULL,30,43,NULL,1),(372,'HIH, A915','Nara',NULL,'Maria','Aman',NULL,NULL,'651-0077','Nara','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-10-10','HIH, A915','Nara',NULL,'Maria','Aman','651-0077','Nara',NULL,NULL,'2017-10-11 06:14:16','en_US','2017-10-10 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'DELIVERED',120.00,43,NULL,30,43,NULL,1),(373,'nada','Kyoto',NULL,'Fatima','Leplus',NULL,NULL,'651-0077','Kyoto','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-10-28','nada','Kyoto',NULL,'Fatima','Leplus','651-0077','Kyoto',NULL,NULL,'2017-10-28 20:00:16','en_US','2017-10-28 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'PROCESSED',25.00,43,NULL,30,43,NULL,1),(374,'Wakanimocho','Kyoto',NULL,'Maria','Chappy',NULL,NULL,'651-0077','Kyoto','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-01-22','Wakanimocho','Kyoto',NULL,'Maria','Chappy','651-0077','Kyoto',NULL,NULL,'2018-01-22 21:02:16','en_US','2018-01-22 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'REFUNDED',220.00,43,NULL,30,43,NULL,1),(375,'HIH, A915','Osaka',NULL,'Gabriel','Benatia',NULL,NULL,'651-0077','Osaka','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-04-30','HIH, A915','Osaka',NULL,'Gabriel','Benatia','651-0077','Osaka',NULL,NULL,'2018-05-01 05:49:16','en_US','2018-04-30 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'DELIVERED',140.00,43,NULL,30,43,NULL,1),(376,'HIH, A915','Kurachiki',NULL,'Fatima','Yan',NULL,NULL,'651-0077','Kurachiki','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-02-12','HIH, A915','Kurachiki',NULL,'Fatima','Yan','651-0077','Kurachiki',NULL,NULL,'2018-02-13 00:52:16','en_US','2018-02-12 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'CANCELED',160.00,43,NULL,30,43,NULL,1),(377,'Wakanimocho','Nara',NULL,'Leila','Elmaleh',NULL,NULL,'651-0077','Nara','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-07-15','Wakanimocho','Nara',NULL,'Leila','Elmaleh','651-0077','Nara',NULL,NULL,'2017-07-16 02:49:16','en_US','2017-07-15 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'ORDERED',20.00,43,NULL,30,43,NULL,1),(378,'Wakanimocho','Kyoto',NULL,'Khalil','Sall',NULL,NULL,'651-0077','Kyoto','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-04-10','Wakanimocho','Kyoto',NULL,'Khalil','Sall','651-0077','Kyoto',NULL,NULL,'2018-04-11 06:50:16','en_US','2018-04-10 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'REFUNDED',160.00,43,NULL,30,43,NULL,1),(379,'Wakanimocho','Osaka',NULL,'Gabriel','Dupond',NULL,NULL,'651-0077','Osaka','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-08-13','Wakanimocho','Osaka',NULL,'Gabriel','Dupond','651-0077','Osaka',NULL,NULL,'2017-08-13 21:26:16','en_US','2017-08-13 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'DELIVERED',100.00,43,NULL,30,43,NULL,1),(380,'Wakanimocho','Nara',NULL,'Latifa','Benatia',NULL,NULL,'651-0077','Nara','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-08-09','Wakanimocho','Nara',NULL,'Latifa','Benatia','651-0077','Nara',NULL,NULL,'2017-08-09 20:44:16','en_US','2017-08-09 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'DELIVERED',40.00,43,NULL,30,43,NULL,1),(381,'Wakanimocho','Kyoto',NULL,'Maria','BenKhadra',NULL,NULL,'651-0077','Kyoto','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-01-15','Wakanimocho','Kyoto',NULL,'Maria','BenKhadra','651-0077','Kyoto',NULL,NULL,'2018-01-15 23:12:16','en_US','2018-01-15 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'REFUNDED',115.00,43,NULL,30,43,NULL,1),(382,'Kasuganomichi','Kobe',NULL,'Maria','Chappy',NULL,NULL,'651-0077','Kobe','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-02-15','Kasuganomichi','Kobe',NULL,'Maria','Chappy','651-0077','Kobe',NULL,NULL,'2018-02-16 04:03:16','en_US','2018-02-15 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'CANCELED',157.00,43,NULL,30,43,NULL,1),(383,'HIH, A915','Kurachiki',NULL,'Mohamed','BenKhadra',NULL,NULL,'651-0077','Kurachiki','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-09-06','HIH, A915','Kurachiki',NULL,'Mohamed','BenKhadra','651-0077','Kurachiki',NULL,NULL,'2017-09-06 20:12:16','en_US','2017-09-06 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'ORDERED',130.00,43,NULL,30,43,NULL,1),(384,'nada','Kurachiki',NULL,'Anass','Leplus',NULL,NULL,'651-0077','Kurachiki','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-12-22','nada','Kurachiki',NULL,'Anass','Leplus','651-0077','Kurachiki',NULL,NULL,'2017-12-22 16:44:16','en_US','2017-12-22 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'CANCELED',130.00,43,NULL,30,43,NULL,1),(385,'Wakanimocho','Kyoto',NULL,'Leila','Tali',NULL,NULL,'651-0077','Kyoto','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-01-30','Wakanimocho','Kyoto',NULL,'Leila','Tali','651-0077','Kyoto',NULL,NULL,'2018-01-30 16:50:16','en_US','2018-01-30 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'ORDERED',155.00,43,NULL,30,43,NULL,1),(386,'nada','Kobe',NULL,'Kevin','Lazrak',NULL,NULL,'651-0077','Kobe','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-09-28','nada','Kobe',NULL,'Kevin','Lazrak','651-0077','Kobe',NULL,NULL,'2017-09-28 13:19:16','en_US','2017-09-28 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'PROCESSED',90.00,43,NULL,30,43,NULL,1),(387,'Kasuganomichi','Osaka',NULL,'Ymran','Sall',NULL,NULL,'651-0077','Osaka','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-08-11','Kasuganomichi','Osaka',NULL,'Ymran','Sall','651-0077','Osaka',NULL,NULL,'2017-08-12 07:59:16','en_US','2017-08-11 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'PROCESSED',120.00,43,NULL,30,43,NULL,1),(388,'Chuo-ku','Kurachiki',NULL,'Zackaria','Yan',NULL,NULL,'651-0077','Kurachiki','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-01-23','Chuo-ku','Kurachiki',NULL,'Zackaria','Yan','651-0077','Kurachiki',NULL,NULL,'2018-01-23 21:12:16','en_US','2018-01-23 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'CANCELED',155.00,43,NULL,30,43,NULL,1),(389,'Wakanimocho','Nara',NULL,'Mickel','Chappy',NULL,NULL,'651-0077','Nara','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-08-25','Wakanimocho','Nara',NULL,'Mickel','Chappy','651-0077','Nara',NULL,NULL,'2017-08-26 05:29:16','en_US','2017-08-25 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'REFUNDED',90.00,43,NULL,30,43,NULL,1),(390,'nada','Osaka',NULL,'Kevin','Tali',NULL,NULL,'651-0077','Osaka','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-03-07','nada','Osaka',NULL,'Kevin','Tali','651-0077','Osaka',NULL,NULL,'2018-03-08 06:52:16','en_US','2018-03-07 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'PROCESSED',140.00,43,NULL,30,43,NULL,1),(391,'HIH, A915','Nara',NULL,'Kevin','Tali',NULL,NULL,'651-0077','Nara','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-07-09','HIH, A915','Nara',NULL,'Kevin','Tali','651-0077','Nara',NULL,NULL,'2017-07-10 09:23:16','en_US','2017-07-09 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'REFUNDED',145.00,43,NULL,30,43,NULL,1),(392,'Wakanimocho','Nara',NULL,'Khalil','Tali',NULL,NULL,'651-0077','Nara','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-02-18','Wakanimocho','Nara',NULL,'Khalil','Tali','651-0077','Nara',NULL,NULL,'2018-02-18 18:08:16','en_US','2018-02-18 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'CANCELED',40.00,43,NULL,30,43,NULL,1),(393,'Wakanimocho','Kurachiki',NULL,'Khalil','Benatia',NULL,NULL,'651-0077','Kurachiki','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-07-26','Wakanimocho','Kurachiki',NULL,'Khalil','Benatia','651-0077','Kurachiki',NULL,NULL,'2017-07-27 04:49:16','en_US','2017-07-26 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'REFUNDED',152.00,43,NULL,30,43,NULL,1),(394,'Wakanimocho','Nara',NULL,'Zackaria','Elmaleh',NULL,NULL,'651-0077','Nara','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-03-19','Wakanimocho','Nara',NULL,'Zackaria','Elmaleh','651-0077','Nara',NULL,NULL,'2018-03-19 18:07:16','en_US','2018-03-19 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'CANCELED',320.00,43,NULL,30,43,NULL,1),(395,'HIH, A915','Nara',NULL,'Khalil','Benatia',NULL,NULL,'651-0077','Nara','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-02-28','HIH, A915','Nara',NULL,'Khalil','Benatia','651-0077','Nara',NULL,NULL,'2018-03-01 11:15:16','en_US','2018-02-28 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'ORDERED',50.00,43,NULL,30,43,NULL,1),(396,'Chuo-ku','Kyoto',NULL,'Kevin','Chappy',NULL,NULL,'651-0077','Kyoto','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-01-15','Chuo-ku','Kyoto',NULL,'Kevin','Chappy','651-0077','Kyoto',NULL,NULL,'2018-01-16 03:25:16','en_US','2018-01-15 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'DELIVERED',190.00,43,NULL,30,43,NULL,1),(397,'Chuo-ku','Kyoto',NULL,'Anass','Yan',NULL,NULL,'651-0077','Kyoto','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-02-28','Chuo-ku','Kyoto',NULL,'Anass','Yan','651-0077','Kyoto',NULL,NULL,'2018-03-01 08:25:16','en_US','2018-02-28 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'CANCELED',60.00,43,NULL,30,43,NULL,1),(398,'HIH, A915','Kyoto',NULL,'Mickel','Tali',NULL,NULL,'651-0077','Kyoto','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-03-13','HIH, A915','Kyoto',NULL,'Mickel','Tali','651-0077','Kyoto',NULL,NULL,'2018-03-13 14:14:16','en_US','2018-03-13 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'PROCESSED',130.00,43,NULL,30,43,NULL,1),(399,'Wakanimocho','Osaka',NULL,'Julia','Leplus',NULL,NULL,'651-0077','Osaka','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-10-04','Wakanimocho','Osaka',NULL,'Julia','Leplus','651-0077','Osaka',NULL,NULL,'2017-10-04 12:26:16','en_US','2017-10-04 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'DELIVERED',190.00,43,NULL,30,43,NULL,1),(400,'HIH, A915','Osaka',NULL,'Zackaria','Sall',NULL,NULL,'651-0077','Osaka','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-02-19','HIH, A915','Osaka',NULL,'Zackaria','Sall','651-0077','Osaka',NULL,NULL,'2018-02-19 17:29:16','en_US','2018-02-19 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'DELIVERED',100.00,43,NULL,30,43,NULL,1),(401,'Wakanimocho','Osaka',NULL,'Anass','Tali',NULL,NULL,'651-0077','Osaka','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-03-26','Wakanimocho','Osaka',NULL,'Anass','Tali','651-0077','Osaka',NULL,NULL,'2018-03-27 01:50:16','en_US','2018-03-26 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'CANCELED',40.00,43,NULL,30,43,NULL,1),(402,'HIH, A915','Kyoto',NULL,'Latifa','Tali',NULL,NULL,'651-0077','Kyoto','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-07-04','HIH, A915','Kyoto',NULL,'Latifa','Tali','651-0077','Kyoto',NULL,NULL,'2017-07-04 20:47:16','en_US','2017-07-04 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'PROCESSED',70.00,43,NULL,30,43,NULL,1),(403,'Chuo-ku','Nara',NULL,'Mohamed','Dupond',NULL,NULL,'651-0077','Nara','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-06-07','Chuo-ku','Nara',NULL,'Mohamed','Dupond','651-0077','Nara',NULL,NULL,'2017-06-08 00:42:16','en_US','2017-06-07 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'ORDERED',250.00,43,NULL,30,43,NULL,1),(404,'Chuo-ku','Nara',NULL,'Zackaria','Benatia',NULL,NULL,'651-0077','Nara','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-10-21','Chuo-ku','Nara',NULL,'Zackaria','Benatia','651-0077','Nara',NULL,NULL,'2017-10-21 23:21:16','en_US','2017-10-21 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'REFUNDED',240.00,43,NULL,30,43,NULL,1),(405,'nada','Kyoto',NULL,'Julia','Tali',NULL,NULL,'651-0077','Kyoto','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-03-02','nada','Kyoto',NULL,'Julia','Tali','651-0077','Kyoto',NULL,NULL,'2018-03-03 09:12:16','en_US','2018-03-02 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'DELIVERED',100.00,43,NULL,30,43,NULL,1),(406,'Chuo-ku','Nara',NULL,'Julia','Elmaleh',NULL,NULL,'651-0077','Nara','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-12-12','Chuo-ku','Nara',NULL,'Julia','Elmaleh','651-0077','Nara',NULL,NULL,'2017-12-12 12:20:16','en_US','2017-12-12 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'REFUNDED',160.00,43,NULL,30,43,NULL,1),(407,'Chuo-ku','Kobe',NULL,'Fatima','Dupond',NULL,NULL,'651-0077','Kobe','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-04-17','Chuo-ku','Kobe',NULL,'Fatima','Dupond','651-0077','Kobe',NULL,NULL,'2018-04-17 21:26:16','en_US','2018-04-17 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'ORDERED',130.00,43,NULL,30,43,NULL,1),(408,'nada','Osaka',NULL,'Fatima','Tali',NULL,NULL,'651-0077','Osaka','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-06-20','nada','Osaka',NULL,'Fatima','Tali','651-0077','Osaka',NULL,NULL,'2017-06-21 09:44:16','en_US','2017-06-20 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'REFUNDED',190.00,43,NULL,30,43,NULL,1),(409,'Chuo-ku','Kobe',NULL,'Mickel','BenKhadra',NULL,NULL,'651-0077','Kobe','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-08-11','Chuo-ku','Kobe',NULL,'Mickel','BenKhadra','651-0077','Kobe',NULL,NULL,'2017-08-11 12:12:16','en_US','2017-08-11 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'DELIVERED',60.00,43,NULL,30,43,NULL,1),(410,'HIH, A915','Osaka',NULL,'Khalil','Elmaleh',NULL,NULL,'651-0077','Osaka','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-01-07','HIH, A915','Osaka',NULL,'Khalil','Elmaleh','651-0077','Osaka',NULL,NULL,'2018-01-07 17:41:16','en_US','2018-01-07 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'REFUNDED',60.00,43,NULL,30,43,NULL,1),(411,'Wakanimocho','Nara',NULL,'Maria','Benatia',NULL,NULL,'651-0077','Nara','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-11-21','Wakanimocho','Nara',NULL,'Maria','Benatia','651-0077','Nara',NULL,NULL,'2017-11-22 02:00:16','en_US','2017-11-21 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'DELIVERED',60.00,43,NULL,30,43,NULL,1),(412,'Kasuganomichi','Kyoto',NULL,'Fatima','Morabit',NULL,NULL,'651-0077','Kyoto','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-03-04','Kasuganomichi','Kyoto',NULL,'Fatima','Morabit','651-0077','Kyoto',NULL,NULL,'2018-03-04 19:16:16','en_US','2018-03-04 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'CANCELED',50.00,43,NULL,30,43,NULL,1),(413,'nada','Nara',NULL,'Zackaria','Morabit',NULL,NULL,'651-0077','Nara','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-06-23','nada','Nara',NULL,'Zackaria','Morabit','651-0077','Nara',NULL,NULL,'2017-06-23 14:06:16','en_US','2017-06-23 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'REFUNDED',188.00,43,NULL,30,43,NULL,1),(414,'Chuo-ku','Osaka',NULL,'Mickel','Dupond',NULL,NULL,'651-0077','Osaka','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-06-30','Chuo-ku','Osaka',NULL,'Mickel','Dupond','651-0077','Osaka',NULL,NULL,'2017-06-30 11:57:16','en_US','2017-06-30 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'ORDERED',240.00,43,NULL,30,43,NULL,1),(415,'nada','Kyoto',NULL,'Mohamed','Van dar',NULL,NULL,'651-0077','Kyoto','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-11-02','nada','Kyoto',NULL,'Mohamed','Van dar','651-0077','Kyoto',NULL,NULL,'2017-11-03 07:51:16','en_US','2017-11-02 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'DELIVERED',188.00,43,NULL,30,43,NULL,1),(416,'nada','Nara',NULL,'Maria','Dupond',NULL,NULL,'651-0077','Nara','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-05-13','nada','Nara',NULL,'Maria','Dupond','651-0077','Nara',NULL,NULL,'2017-05-14 07:15:16','en_US','2017-05-13 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'DELIVERED',189.00,43,NULL,30,43,NULL,1),(417,'nada','Osaka',NULL,'Gabriel','Van dar',NULL,NULL,'651-0077','Osaka','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-09-13','nada','Osaka',NULL,'Gabriel','Van dar','651-0077','Osaka',NULL,NULL,'2017-09-13 22:42:16','en_US','2017-09-13 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'PROCESSED',145.00,43,NULL,30,43,NULL,1),(418,'Chuo-ku','Nara',NULL,'Zackaria','Tali',NULL,NULL,'651-0077','Nara','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-02-13','Chuo-ku','Nara',NULL,'Zackaria','Tali','651-0077','Nara',NULL,NULL,'2018-02-13 11:45:16','en_US','2018-02-13 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'REFUNDED',157.00,43,NULL,30,43,NULL,1),(419,'Chuo-ku','Nara',NULL,'Khalil','Leplus',NULL,NULL,'651-0077','Nara','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-08-21','Chuo-ku','Nara',NULL,'Khalil','Leplus','651-0077','Nara',NULL,NULL,'2017-08-21 23:06:16','en_US','2017-08-21 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'CANCELED',90.00,43,NULL,30,43,NULL,1),(420,'HIH, A915','Nara',NULL,'Fatima','Mohajir',NULL,NULL,'651-0077','Nara','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-07-28','HIH, A915','Nara',NULL,'Fatima','Mohajir','651-0077','Nara',NULL,NULL,'2017-07-29 11:13:16','en_US','2017-07-28 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'REFUNDED',155.00,43,NULL,30,43,NULL,1),(421,'HIH, A915','Nara',NULL,'Ymran','Morabit',NULL,NULL,'651-0077','Nara','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-11-07','HIH, A915','Nara',NULL,'Ymran','Morabit','651-0077','Nara',NULL,NULL,'2017-11-08 03:20:16','en_US','2017-11-07 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'DELIVERED',60.00,43,NULL,30,43,NULL,1),(422,'Wakanimocho','Nara',NULL,'Amal','Sall',NULL,NULL,'651-0077','Nara','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-09-23','Wakanimocho','Nara',NULL,'Amal','Sall','651-0077','Nara',NULL,NULL,'2017-09-23 17:51:16','en_US','2017-09-23 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'PROCESSED',50.00,43,NULL,30,43,NULL,1),(423,'Chuo-ku','Nara',NULL,'Maria','Leplus',NULL,NULL,'651-0077','Nara','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-02-24','Chuo-ku','Nara',NULL,'Maria','Leplus','651-0077','Nara',NULL,NULL,'2018-02-24 21:00:16','en_US','2018-02-24 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'ORDERED',70.00,43,NULL,30,43,NULL,1),(424,'Wakanimocho','Kurachiki',NULL,'Zackaria','Tali',NULL,NULL,'651-0077','Kurachiki','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-12-12','Wakanimocho','Kurachiki',NULL,'Zackaria','Tali','651-0077','Kurachiki',NULL,NULL,'2017-12-13 01:27:16','en_US','2017-12-12 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'PROCESSED',140.00,43,NULL,30,43,NULL,1),(425,'Chuo-ku','Osaka',NULL,'Zackaria','Dupond',NULL,NULL,'651-0077','Osaka','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-03-05','Chuo-ku','Osaka',NULL,'Zackaria','Dupond','651-0077','Osaka',NULL,NULL,'2018-03-05 22:27:16','en_US','2018-03-05 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'DELIVERED',40.00,43,NULL,30,43,NULL,1),(426,'nada','Kurachiki',NULL,'Mickel','Lazrak',NULL,NULL,'651-0077','Kurachiki','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-04-01','nada','Kurachiki',NULL,'Mickel','Lazrak','651-0077','Kurachiki',NULL,NULL,'2018-04-02 07:01:16','en_US','2018-04-01 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'PROCESSED',140.00,43,NULL,30,43,NULL,1),(427,'nada','Kyoto',NULL,'Khalil','Benatia',NULL,NULL,'651-0077','Kyoto','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-12-21','nada','Kyoto',NULL,'Khalil','Benatia','651-0077','Kyoto',NULL,NULL,'2017-12-22 05:29:16','en_US','2017-12-21 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'PROCESSED',157.00,43,NULL,30,43,NULL,1),(428,'HIH, A915','Kobe',NULL,'Ymran','Benatia',NULL,NULL,'651-0077','Kobe','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-11-16','HIH, A915','Kobe',NULL,'Ymran','Benatia','651-0077','Kobe',NULL,NULL,'2017-11-17 10:24:16','en_US','2017-11-16 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'DELIVERED',145.00,43,NULL,30,43,NULL,1),(429,'HIH, A915','Kyoto',NULL,'Amal','Mohajir',NULL,NULL,'651-0077','Kyoto','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-10-11','HIH, A915','Kyoto',NULL,'Amal','Mohajir','651-0077','Kyoto',NULL,NULL,'2017-10-12 11:04:16','en_US','2017-10-11 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'DELIVERED',250.00,43,NULL,30,43,NULL,1),(430,'Kasuganomichi','Kyoto',NULL,'Ymran','Chappy',NULL,NULL,'651-0077','Kyoto','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-12-08','Kasuganomichi','Kyoto',NULL,'Ymran','Chappy','651-0077','Kyoto',NULL,NULL,'2017-12-08 19:15:16','en_US','2017-12-08 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'DELIVERED',140.00,43,NULL,30,43,NULL,1),(431,'Chuo-ku','Osaka',NULL,'Mickel','BenKhadra',NULL,NULL,'651-0077','Osaka','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-08-05','Chuo-ku','Osaka',NULL,'Mickel','BenKhadra','651-0077','Osaka',NULL,NULL,'2017-08-06 10:19:16','en_US','2017-08-05 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'DELIVERED',140.00,43,NULL,30,43,NULL,1),(432,'Wakanimocho','Osaka',NULL,'Latifa','BenKhadra',NULL,NULL,'651-0077','Osaka','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-04-28','Wakanimocho','Osaka',NULL,'Latifa','BenKhadra','651-0077','Osaka',NULL,NULL,'2018-04-29 03:28:16','en_US','2018-04-28 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'REFUNDED',152.00,43,NULL,30,43,NULL,1),(433,'Chuo-ku','Osaka',NULL,'Maria','Sall',NULL,NULL,'651-0077','Osaka','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-09-30','Chuo-ku','Osaka',NULL,'Maria','Sall','651-0077','Osaka',NULL,NULL,'2017-09-30 20:21:16','en_US','2017-09-30 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'DELIVERED',25.00,43,NULL,30,43,NULL,1),(434,'Kasuganomichi','Osaka',NULL,'Leila','Chappy',NULL,NULL,'651-0077','Osaka','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-10-07','Kasuganomichi','Osaka',NULL,'Leila','Chappy','651-0077','Osaka',NULL,NULL,'2017-10-08 00:51:16','en_US','2017-10-07 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'ORDERED',60.00,43,NULL,30,43,NULL,1),(435,'Wakanimocho','Kyoto',NULL,'Fatima','Lazrak',NULL,NULL,'651-0077','Kyoto','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-08-16','Wakanimocho','Kyoto',NULL,'Fatima','Lazrak','651-0077','Kyoto',NULL,NULL,'2017-08-16 17:22:16','en_US','2017-08-16 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'ORDERED',152.00,43,NULL,30,43,NULL,1),(436,'Chuo-ku','Nara',NULL,'Mickel','Benatia',NULL,NULL,'651-0077','Nara','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-03-24','Chuo-ku','Nara',NULL,'Mickel','Benatia','651-0077','Nara',NULL,NULL,'2018-03-24 16:14:16','en_US','2018-03-24 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'DELIVERED',130.00,43,NULL,30,43,NULL,1),(437,'Wakanimocho','Kyoto',NULL,'Leila','Benatia',NULL,NULL,'651-0077','Kyoto','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-04-05','Wakanimocho','Kyoto',NULL,'Leila','Benatia','651-0077','Kyoto',NULL,NULL,'2018-04-05 19:15:16','en_US','2018-04-05 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'DELIVERED',200.00,43,NULL,30,43,NULL,1),(438,'Wakanimocho','Osaka',NULL,'Leila','Van dar',NULL,NULL,'651-0077','Osaka','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-04-29','Wakanimocho','Osaka',NULL,'Leila','Van dar','651-0077','Osaka',NULL,NULL,'2018-04-30 10:19:16','en_US','2018-04-29 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'REFUNDED',157.00,43,NULL,30,43,NULL,1),(439,'Wakanimocho','Kyoto',NULL,'Joe','Van dar',NULL,NULL,'651-0077','Kyoto','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-03-22','Wakanimocho','Kyoto',NULL,'Joe','Van dar','651-0077','Kyoto',NULL,NULL,'2018-03-22 16:04:16','en_US','2018-03-22 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'REFUNDED',220.00,43,NULL,30,43,NULL,1),(440,'HIH, A915','Osaka',NULL,'Khalil','Benatia',NULL,NULL,'651-0077','Osaka','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-08-19','HIH, A915','Osaka',NULL,'Khalil','Benatia','651-0077','Osaka',NULL,NULL,'2017-08-20 03:58:16','en_US','2017-08-19 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'DELIVERED',60.00,43,NULL,30,43,NULL,1),(441,'Chuo-ku','Kobe',NULL,'Latifa','BenKhadra',NULL,NULL,'651-0077','Kobe','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-05-22','Chuo-ku','Kobe',NULL,'Latifa','BenKhadra','651-0077','Kobe',NULL,NULL,'2017-05-23 02:13:16','en_US','2017-05-22 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'PROCESSED',60.00,43,NULL,30,43,NULL,1),(442,'Wakanimocho','Kyoto',NULL,'Julia','Leplus',NULL,NULL,'651-0077','Kyoto','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-04-24','Wakanimocho','Kyoto',NULL,'Julia','Leplus','651-0077','Kyoto',NULL,NULL,'2018-04-25 08:10:16','en_US','2018-04-24 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'REFUNDED',240.00,43,NULL,30,43,NULL,1),(443,'HIH, A915','Kobe',NULL,'Fatima','Morabit',NULL,NULL,'651-0077','Kobe','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-05-11','HIH, A915','Kobe',NULL,'Fatima','Morabit','651-0077','Kobe',NULL,NULL,'2017-05-11 21:12:16','en_US','2017-05-11 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'REFUNDED',140.00,43,NULL,30,43,NULL,1),(444,'Chuo-ku','Osaka',NULL,'Fatima','Chappy',NULL,NULL,'651-0077','Osaka','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-07-30','Chuo-ku','Osaka',NULL,'Fatima','Chappy','651-0077','Osaka',NULL,NULL,'2017-07-31 11:24:16','en_US','2017-07-30 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'PROCESSED',160.00,43,NULL,30,43,NULL,1),(445,'Chuo-ku','Kobe',NULL,'Joe','Yan',NULL,NULL,'651-0077','Kobe','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-01-18','Chuo-ku','Kobe',NULL,'Joe','Yan','651-0077','Kobe',NULL,NULL,'2018-01-19 11:27:16','en_US','2018-01-18 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'REFUNDED',60.00,43,NULL,30,43,NULL,1),(446,'nada','Osaka',NULL,'Fatima','Yan',NULL,NULL,'651-0077','Osaka','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-12-11','nada','Osaka',NULL,'Fatima','Yan','651-0077','Osaka',NULL,NULL,'2017-12-11 18:12:16','en_US','2017-12-11 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'ORDERED',20.00,43,NULL,30,43,NULL,1),(447,'HIH, A915','Nara',NULL,'Zackaria','Elmaleh',NULL,NULL,'651-0077','Nara','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-10-23','HIH, A915','Nara',NULL,'Zackaria','Elmaleh','651-0077','Nara',NULL,NULL,'2017-10-23 20:40:16','en_US','2017-10-23 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'DELIVERED',40.00,43,NULL,30,43,NULL,1),(448,'Chuo-ku','Kyoto',NULL,'Gabriel','Leplus',NULL,NULL,'651-0077','Kyoto','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-11-29','Chuo-ku','Kyoto',NULL,'Gabriel','Leplus','651-0077','Kyoto',NULL,NULL,'2017-11-29 12:22:16','en_US','2017-11-29 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'ORDERED',140.00,43,NULL,30,43,NULL,1),(449,'nada','Osaka',NULL,'Leila','Sall',NULL,NULL,'651-0077','Osaka','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-06-23','nada','Osaka',NULL,'Leila','Sall','651-0077','Osaka',NULL,NULL,'2017-06-24 00:00:16','en_US','2017-06-23 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'PROCESSED',90.00,43,NULL,30,43,NULL,1),(450,'Chuo-ku','Kurachiki',NULL,'Latifa','Dupond',NULL,NULL,'651-0077','Kurachiki','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-02-16','Chuo-ku','Kurachiki',NULL,'Latifa','Dupond','651-0077','Kurachiki',NULL,NULL,'2018-02-16 15:08:16','en_US','2018-02-16 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'REFUNDED',100.00,43,NULL,30,43,NULL,1),(451,'nada','Nara',NULL,'Mohamed','Morabit',NULL,NULL,'651-0077','Nara','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-10-19','nada','Nara',NULL,'Mohamed','Morabit','651-0077','Nara',NULL,NULL,'2017-10-19 14:56:16','en_US','2017-10-19 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'REFUNDED',160.00,43,NULL,30,43,NULL,1),(452,'Kasuganomichi','Kyoto',NULL,'Gabriel','Aman',NULL,NULL,'651-0077','Kyoto','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-08-15','Kasuganomichi','Kyoto',NULL,'Gabriel','Aman','651-0077','Kyoto',NULL,NULL,'2017-08-16 11:20:16','en_US','2017-08-15 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'DELIVERED',88.50,43,NULL,30,43,NULL,1),(453,'HIH, A915','Osaka',NULL,'Zackaria','Dupond',NULL,NULL,'651-0077','Osaka','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-07-01','HIH, A915','Osaka',NULL,'Zackaria','Dupond','651-0077','Osaka',NULL,NULL,'2017-07-01 12:57:16','en_US','2017-07-01 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'PROCESSED',60.00,43,NULL,30,43,NULL,1),(454,'nada','Kyoto',NULL,'Amal','Tali',NULL,NULL,'651-0077','Kyoto','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-09-16','nada','Kyoto',NULL,'Amal','Tali','651-0077','Kyoto',NULL,NULL,'2017-09-17 07:06:16','en_US','2017-09-16 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'REFUNDED',188.00,43,NULL,30,43,NULL,1),(455,'HIH, A915','Kyoto',NULL,'Ymran','Chappy',NULL,NULL,'651-0077','Kyoto','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-04-05','HIH, A915','Kyoto',NULL,'Ymran','Chappy','651-0077','Kyoto',NULL,NULL,'2018-04-05 16:02:16','en_US','2018-04-05 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'PROCESSED',152.00,43,NULL,30,43,NULL,1),(456,'HIH, A915','Osaka',NULL,'Fatima','Leplus',NULL,NULL,'651-0077','Osaka','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-10-04','HIH, A915','Osaka',NULL,'Fatima','Leplus','651-0077','Osaka',NULL,NULL,'2017-10-05 06:23:16','en_US','2017-10-04 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'PROCESSED',60.00,43,NULL,30,43,NULL,1),(457,'Wakanimocho','Kyoto',NULL,'Khalil','BenKhadra',NULL,NULL,'651-0077','Kyoto','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-01-20','Wakanimocho','Kyoto',NULL,'Khalil','BenKhadra','651-0077','Kyoto',NULL,NULL,'2018-01-20 15:00:16','en_US','2018-01-20 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'REFUNDED',40.00,43,NULL,30,43,NULL,1),(458,'Chuo-ku','Kyoto',NULL,'Ymran','Yan',NULL,NULL,'651-0077','Kyoto','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-05-19','Chuo-ku','Kyoto',NULL,'Ymran','Yan','651-0077','Kyoto',NULL,NULL,'2017-05-19 23:14:16','en_US','2017-05-19 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'ORDERED',70.00,43,NULL,30,43,NULL,1),(459,'Chuo-ku','Nara',NULL,'Mickel','Sall',NULL,NULL,'651-0077','Nara','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-04-21','Chuo-ku','Nara',NULL,'Mickel','Sall','651-0077','Nara',NULL,NULL,'2018-04-21 15:42:16','en_US','2018-04-21 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'REFUNDED',60.00,43,NULL,30,43,NULL,1),(460,'HIH, A915','Nara',NULL,'Latifa','Aman',NULL,NULL,'651-0077','Nara','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-09-14','HIH, A915','Nara',NULL,'Latifa','Aman','651-0077','Nara',NULL,NULL,'2017-09-14 21:03:16','en_US','2017-09-14 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'DELIVERED',60.00,43,NULL,30,43,NULL,1),(461,'HIH, A915','Osaka',NULL,'Julia','Tali',NULL,NULL,'651-0077','Osaka','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-09-28','HIH, A915','Osaka',NULL,'Julia','Tali','651-0077','Osaka',NULL,NULL,'2017-09-28 20:22:16','en_US','2017-09-28 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'REFUNDED',220.00,43,NULL,30,43,NULL,1),(462,'Chuo-ku','Osaka',NULL,'Ymran','Mohajir',NULL,NULL,'651-0077','Osaka','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-07-04','Chuo-ku','Osaka',NULL,'Ymran','Mohajir','651-0077','Osaka',NULL,NULL,'2017-07-04 12:43:16','en_US','2017-07-04 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'REFUNDED',25.00,43,NULL,30,43,NULL,1),(463,'nada','Osaka',NULL,'Joe','Elmaleh',NULL,NULL,'651-0077','Osaka','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-02-20','nada','Osaka',NULL,'Joe','Elmaleh','651-0077','Osaka',NULL,NULL,'2018-02-20 13:16:16','en_US','2018-02-20 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'PROCESSED',145.00,43,NULL,30,43,NULL,1),(464,'Wakanimocho','Osaka',NULL,'Leila','Sall',NULL,NULL,'651-0077','Osaka','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-02-21','Wakanimocho','Osaka',NULL,'Leila','Sall','651-0077','Osaka',NULL,NULL,'2018-02-22 11:25:16','en_US','2018-02-21 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'ORDERED',152.00,43,NULL,30,43,NULL,1),(465,'Kasuganomichi','Kurachiki',NULL,'Julia','Leplus',NULL,NULL,'651-0077','Kurachiki','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-09-04','Kasuganomichi','Kurachiki',NULL,'Julia','Leplus','651-0077','Kurachiki',NULL,NULL,'2017-09-04 18:01:16','en_US','2017-09-04 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'REFUNDED',200.00,43,NULL,30,43,NULL,1),(466,'HIH, A915','Kyoto',NULL,'Maria','BenKhadra',NULL,NULL,'651-0077','Kyoto','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-09-05','HIH, A915','Kyoto',NULL,'Maria','BenKhadra','651-0077','Kyoto',NULL,NULL,'2017-09-06 08:07:16','en_US','2017-09-05 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'PROCESSED',240.00,43,NULL,30,43,NULL,1),(467,'HIH, A915','Nara',NULL,'Kevin','BenKhadra',NULL,NULL,'651-0077','Nara','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-03-02','HIH, A915','Nara',NULL,'Kevin','BenKhadra','651-0077','Nara',NULL,NULL,'2018-03-02 14:25:16','en_US','2018-03-02 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'DELIVERED',25.00,43,NULL,30,43,NULL,1),(468,'Wakanimocho','Kurachiki',NULL,'Kevin','Morabit',NULL,NULL,'651-0077','Kurachiki','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-03-15','Wakanimocho','Kurachiki',NULL,'Kevin','Morabit','651-0077','Kurachiki',NULL,NULL,'2018-03-16 01:29:16','en_US','2018-03-15 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'REFUNDED',150.00,43,NULL,30,43,NULL,1),(469,'Kasuganomichi','Nara',NULL,'Mohamed','Aman',NULL,NULL,'651-0077','Nara','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-06-01','Kasuganomichi','Nara',NULL,'Mohamed','Aman','651-0077','Nara',NULL,NULL,'2017-06-02 01:13:16','en_US','2017-06-01 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'REFUNDED',90.00,43,NULL,30,43,NULL,1),(470,'nada','Osaka',NULL,'Leila','Tali',NULL,NULL,'651-0077','Osaka','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-06-03','nada','Osaka',NULL,'Leila','Tali','651-0077','Osaka',NULL,NULL,'2017-06-03 22:11:16','en_US','2017-06-03 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'ORDERED',120.00,43,NULL,30,43,NULL,1),(471,'HIH, A915','Kobe',NULL,'Amal','Mohajir',NULL,NULL,'651-0077','Kobe','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-09-18','HIH, A915','Kobe',NULL,'Amal','Mohajir','651-0077','Kobe',NULL,NULL,'2017-09-18 21:12:16','en_US','2017-09-18 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'REFUNDED',40.00,43,NULL,30,43,NULL,1),(472,'HIH, A915','Kyoto',NULL,'Safae','BenKhadra',NULL,NULL,'651-0077','Kyoto','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-08-12','HIH, A915','Kyoto',NULL,'Safae','BenKhadra','651-0077','Kyoto',NULL,NULL,'2017-08-13 02:07:16','en_US','2017-08-12 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'PROCESSED',100.00,43,NULL,30,43,NULL,1),(473,'Wakanimocho','Osaka',NULL,'Khalil','Sall',NULL,NULL,'651-0077','Osaka','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-01-08','Wakanimocho','Osaka',NULL,'Khalil','Sall','651-0077','Osaka',NULL,NULL,'2018-01-09 11:27:16','en_US','2018-01-08 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'PROCESSED',250.00,43,NULL,30,43,NULL,1),(474,'Kasuganomichi','Nara',NULL,'Mickel','Benatia',NULL,NULL,'651-0077','Nara','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-03-17','Kasuganomichi','Nara',NULL,'Mickel','Benatia','651-0077','Nara',NULL,NULL,'2018-03-18 05:40:16','en_US','2018-03-17 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'PROCESSED',240.00,43,NULL,30,43,NULL,1),(475,'Wakanimocho','Kurachiki',NULL,'Fatima','Lazrak',NULL,NULL,'651-0077','Kurachiki','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-12-18','Wakanimocho','Kurachiki',NULL,'Fatima','Lazrak','651-0077','Kurachiki',NULL,NULL,'2017-12-19 05:09:16','en_US','2017-12-18 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'DELIVERED',160.00,43,NULL,30,43,NULL,1),(476,'Wakanimocho','Nara',NULL,'Gabriel','Sall',NULL,NULL,'651-0077','Nara','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-10-07','Wakanimocho','Nara',NULL,'Gabriel','Sall','651-0077','Nara',NULL,NULL,'2017-10-07 23:51:16','en_US','2017-10-07 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'DELIVERED',40.00,43,NULL,30,43,NULL,1),(477,'HIH, A915','Nara',NULL,'Fatima','Van dar',NULL,NULL,'651-0077','Nara','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-01-21','HIH, A915','Nara',NULL,'Fatima','Van dar','651-0077','Nara',NULL,NULL,'2018-01-22 09:57:16','en_US','2018-01-21 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'REFUNDED',100.00,43,NULL,30,43,NULL,1),(478,'Wakanimocho','Osaka',NULL,'Joe','BenKhadra',NULL,NULL,'651-0077','Osaka','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-06-28','Wakanimocho','Osaka',NULL,'Joe','BenKhadra','651-0077','Osaka',NULL,NULL,'2017-06-28 19:50:16','en_US','2017-06-28 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'REFUNDED',150.00,43,NULL,30,43,NULL,1),(479,'nada','Kyoto',NULL,'Mickel','Benatia',NULL,NULL,'651-0077','Kyoto','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-12-22','nada','Kyoto',NULL,'Mickel','Benatia','651-0077','Kyoto',NULL,NULL,'2017-12-22 19:45:16','en_US','2017-12-22 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'REFUNDED',90.00,43,NULL,30,43,NULL,1),(480,'Wakanimocho','Kyoto',NULL,'Zackaria','Tali',NULL,NULL,'651-0077','Kyoto','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-01-12','Wakanimocho','Kyoto',NULL,'Zackaria','Tali','651-0077','Kyoto',NULL,NULL,'2018-01-12 13:09:16','en_US','2018-01-12 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'DELIVERED',152.00,43,NULL,30,43,NULL,1),(481,'Chuo-ku','Kyoto',NULL,'Safae','Leplus',NULL,NULL,'651-0077','Kyoto','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-09-15','Chuo-ku','Kyoto',NULL,'Safae','Leplus','651-0077','Kyoto',NULL,NULL,'2017-09-16 01:04:16','en_US','2017-09-15 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'REFUNDED',90.00,43,NULL,30,43,NULL,1),(482,'HIH, A915','Kobe',NULL,'Joe','Benatia',NULL,NULL,'651-0077','Kobe','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-12-03','HIH, A915','Kobe',NULL,'Joe','Benatia','651-0077','Kobe',NULL,NULL,'2017-12-03 16:43:16','en_US','2017-12-03 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'REFUNDED',200.00,43,NULL,30,43,NULL,1),(483,'HIH, A915','Osaka',NULL,'Leila','Tali',NULL,NULL,'651-0077','Osaka','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-09-11','HIH, A915','Osaka',NULL,'Leila','Tali','651-0077','Osaka',NULL,NULL,'2017-09-11 16:40:16','en_US','2017-09-11 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'REFUNDED',115.00,43,NULL,30,43,NULL,1),(484,'nada','Kobe',NULL,'Maria','Benatia',NULL,NULL,'651-0077','Kobe','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-01-16','nada','Kobe',NULL,'Maria','Benatia','651-0077','Kobe',NULL,NULL,'2018-01-17 06:26:16','en_US','2018-01-16 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'DELIVERED',90.00,43,NULL,30,43,NULL,1),(485,'Chuo-ku','Osaka',NULL,'Gabriel','Leplus',NULL,NULL,'651-0077','Osaka','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-09-27','Chuo-ku','Osaka',NULL,'Gabriel','Leplus','651-0077','Osaka',NULL,NULL,'2017-09-27 21:23:16','en_US','2017-09-27 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'DELIVERED',115.00,43,NULL,30,43,NULL,1),(486,'Chuo-ku','Osaka',NULL,'Khalil','Elmaleh',NULL,NULL,'651-0077','Osaka','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-01-07','Chuo-ku','Osaka',NULL,'Khalil','Elmaleh','651-0077','Osaka',NULL,NULL,'2018-01-07 20:21:16','en_US','2018-01-07 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'DELIVERED',90.00,43,NULL,30,43,NULL,1),(487,'HIH, A915','Osaka',NULL,'Latifa','Aman',NULL,NULL,'651-0077','Osaka','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-05-12','HIH, A915','Osaka',NULL,'Latifa','Aman','651-0077','Osaka',NULL,NULL,'2017-05-13 08:27:16','en_US','2017-05-12 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'PROCESSED',140.00,43,NULL,30,43,NULL,1),(488,'Chuo-ku','Osaka',NULL,'Maria','Leplus',NULL,NULL,'651-0077','Osaka','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-08-21','Chuo-ku','Osaka',NULL,'Maria','Leplus','651-0077','Osaka',NULL,NULL,'2017-08-21 12:12:16','en_US','2017-08-21 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'CANCELED',130.00,43,NULL,30,43,NULL,1),(489,'Chuo-ku','Kobe',NULL,'Latifa','Dupond',NULL,NULL,'651-0077','Kobe','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-02-16','Chuo-ku','Kobe',NULL,'Latifa','Dupond','651-0077','Kobe',NULL,NULL,'2018-02-16 16:57:16','en_US','2018-02-16 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'REFUNDED',155.00,43,NULL,30,43,NULL,1),(490,'Kasuganomichi','Kyoto',NULL,'Joe','Van dar',NULL,NULL,'651-0077','Kyoto','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-09-01','Kasuganomichi','Kyoto',NULL,'Joe','Van dar','651-0077','Kyoto',NULL,NULL,'2017-09-02 02:07:16','en_US','2017-09-01 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'CANCELED',60.00,43,NULL,30,43,NULL,1),(491,'Kasuganomichi','Nara',NULL,'Leila','Benatia',NULL,NULL,'651-0077','Nara','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-12-03','Kasuganomichi','Nara',NULL,'Leila','Benatia','651-0077','Nara',NULL,NULL,'2017-12-04 08:50:16','en_US','2017-12-03 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'PROCESSED',150.00,43,NULL,30,43,NULL,1),(492,'Chuo-ku','Nara',NULL,'Khalil','Leplus',NULL,NULL,'651-0077','Nara','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-06-26','Chuo-ku','Nara',NULL,'Khalil','Leplus','651-0077','Nara',NULL,NULL,'2017-06-27 08:25:16','en_US','2017-06-26 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'ORDERED',100.00,43,NULL,30,43,NULL,1),(493,'Chuo-ku','Kyoto',NULL,'Leila','Leplus',NULL,NULL,'651-0077','Kyoto','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-12-05','Chuo-ku','Kyoto',NULL,'Leila','Leplus','651-0077','Kyoto',NULL,NULL,'2017-12-05 12:51:16','en_US','2017-12-05 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'PROCESSED',160.00,43,NULL,30,43,NULL,1),(494,'HIH, A915','Osaka',NULL,'Kevin','Tali',NULL,NULL,'651-0077','Osaka','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-12-12','HIH, A915','Osaka',NULL,'Kevin','Tali','651-0077','Osaka',NULL,NULL,'2017-12-13 07:29:16','en_US','2017-12-12 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'DELIVERED',130.00,43,NULL,30,43,NULL,1),(495,'Chuo-ku','Nara',NULL,'Leila','Tali',NULL,NULL,'651-0077','Nara','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-10-05','Chuo-ku','Nara',NULL,'Leila','Tali','651-0077','Nara',NULL,NULL,'2017-10-06 09:24:16','en_US','2017-10-05 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'REFUNDED',140.00,43,NULL,30,43,NULL,1),(496,'HIH, A915','Nara',NULL,'Zackaria','Sall',NULL,NULL,'651-0077','Nara','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-09-17','HIH, A915','Nara',NULL,'Zackaria','Sall','651-0077','Nara',NULL,NULL,'2017-09-17 20:11:16','en_US','2017-09-17 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'DELIVERED',70.00,43,NULL,30,43,NULL,1),(497,'Chuo-ku','Osaka',NULL,'Safae','Aman',NULL,NULL,'651-0077','Osaka','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','halima_03@yahoo.fr',1,'2017-11-04','Chuo-ku','Osaka',NULL,'Safae','Aman','651-0077','Osaka',NULL,NULL,'2017-11-05 03:59:16','en_US','2017-11-04 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'REFUNDED',60.00,43,NULL,30,43,NULL,1),(498,'Kasuganomichi','Kyoto',NULL,'Kevin','Morabit',NULL,NULL,'651-0077','Kyoto','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-01-21','Kasuganomichi','Kyoto',NULL,'Kevin','Morabit','651-0077','Kyoto',NULL,NULL,'2018-01-21 21:52:16','en_US','2018-01-21 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'ORDERED',220.00,43,NULL,30,43,NULL,1),(499,'nada','Osaka',NULL,'Ymran','Yan',NULL,NULL,'651-0077','Osaka','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-03-12','nada','Osaka',NULL,'Ymran','Yan','651-0077','Osaka',NULL,NULL,'2018-03-13 01:08:16','en_US','2018-03-12 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'ORDERED',140.00,43,NULL,30,43,NULL,1),(500,'HIH, A915','Nara',NULL,'Khalil','Aman',NULL,NULL,'651-0077','Nara','',NULL,'\0',NULL,NULL,NULL,NULL,NULL,1.00,'','aimane.halima@gmail.com',1,'2017-11-10','HIH, A915','Nara',NULL,'Khalil','Aman','651-0077','Nara',NULL,NULL,'2017-11-11 00:27:16','en_US','2017-11-10 11:40:16','ORDER','moneyorder','MONEYORDER',NULL,'DELIVERED',60.00,43,NULL,30,43,NULL,1);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission`
--

DROP TABLE IF EXISTS `permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permission` (
  `PERMISSION_ID` int(11) NOT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_MODIFIED` datetime DEFAULT NULL,
  `UPDT_ID` varchar(20) DEFAULT NULL,
  `PERMISSION_NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`PERMISSION_ID`),
  UNIQUE KEY `UK_ss26hgwetkj8ms5y5jn2co4j3` (`PERMISSION_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission`
--

LOCK TABLES `permission` WRITE;
/*!40000 ALTER TABLE `permission` DISABLE KEYS */;
INSERT INTO `permission` VALUES (1,'2018-03-13 09:09:51','2018-03-13 09:09:52',NULL,'STORE_ADMIN'),(2,'2018-03-13 09:09:52','2018-03-13 09:09:52',NULL,'SUPERADMIN'),(3,'2018-03-13 09:09:52','2018-03-13 09:09:52',NULL,'ADMIN'),(4,'2018-03-13 09:09:52','2018-03-13 09:09:52',NULL,'AUTH'),(5,'2018-03-13 09:09:52','2018-03-13 09:09:52',NULL,'PRODUCTS'),(6,'2018-03-13 09:09:52','2018-03-13 09:09:52',NULL,'ORDER'),(7,'2018-03-13 09:09:52','2018-03-13 09:09:52',NULL,'CONTENT'),(8,'2018-03-13 09:09:52','2018-03-13 09:09:52',NULL,'STORE'),(9,'2018-03-13 09:09:52','2018-03-13 09:09:52',NULL,'TAX'),(10,'2018-03-13 09:09:52','2018-03-13 09:09:52',NULL,'PAYMENT'),(11,'2018-03-13 09:09:52','2018-03-13 09:09:52',NULL,'CUSTOMER'),(12,'2018-03-13 09:09:52','2018-03-13 09:09:52',NULL,'SHIPPING'),(13,'2018-03-13 09:09:52','2018-03-13 09:09:52',NULL,'AUTH_CUSTOMER');
/*!40000 ALTER TABLE `permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission_group`
--

DROP TABLE IF EXISTS `permission_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permission_group` (
  `PERMISSION_ID` int(11) NOT NULL,
  `GROUP_ID` int(11) NOT NULL,
  KEY `FK_pj2gjygldr9p81w673a27taw3` (`GROUP_ID`),
  KEY `FK_nngtfydo0o1i7w2lv6k4csut` (`PERMISSION_ID`),
  CONSTRAINT `FK_nngtfydo0o1i7w2lv6k4csut` FOREIGN KEY (`PERMISSION_ID`) REFERENCES `permission` (`PERMISSION_ID`),
  CONSTRAINT `FK_pj2gjygldr9p81w673a27taw3` FOREIGN KEY (`GROUP_ID`) REFERENCES `sm_group` (`GROUP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_group`
--

LOCK TABLES `permission_group` WRITE;
/*!40000 ALTER TABLE `permission_group` DISABLE KEYS */;
INSERT INTO `permission_group` VALUES (1,1),(1,2),(2,1),(3,1),(3,2),(4,1),(4,2),(4,3),(4,4),(4,5),(5,1),(5,2),(5,3),(6,1),(6,2),(6,5),(7,1),(7,2),(7,6),(8,1),(8,2),(8,4),(9,1),(9,2),(9,4),(10,1),(10,2),(10,4),(11,1),(11,2),(11,4),(12,1),(12,2),(12,4),(13,7);
/*!40000 ALTER TABLE `permission_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `PRODUCT_ID` bigint(20) NOT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_MODIFIED` datetime DEFAULT NULL,
  `UPDT_ID` varchar(20) DEFAULT NULL,
  `AVAILABLE` bit(1) DEFAULT NULL,
  `COND` int(11) DEFAULT NULL,
  `DATE_AVAILABLE` datetime DEFAULT NULL,
  `PREORDER` bit(1) DEFAULT NULL,
  `PRODUCT_HEIGHT` decimal(19,2) DEFAULT NULL,
  `PRODUCT_FREE` bit(1) DEFAULT NULL,
  `PRODUCT_LENGTH` decimal(19,2) DEFAULT NULL,
  `QUANTITY_ORDERED` int(11) DEFAULT NULL,
  `REVIEW_AVG` decimal(19,2) DEFAULT NULL,
  `REVIEW_COUNT` int(11) DEFAULT NULL,
  `PRODUCT_SHIP` bit(1) DEFAULT NULL,
  `PRODUCT_VIRTUAL` bit(1) DEFAULT NULL,
  `PRODUCT_WEIGHT` decimal(19,2) DEFAULT NULL,
  `PRODUCT_WIDTH` decimal(19,2) DEFAULT NULL,
  `REF_SKU` varchar(255) DEFAULT NULL,
  `RENTAL_DURATION` int(11) DEFAULT NULL,
  `RENTAL_PERIOD` int(11) DEFAULT NULL,
  `RENTAL_STATUS` int(11) DEFAULT NULL,
  `SKU` varchar(255) NOT NULL,
  `SORT_ORDER` int(11) DEFAULT NULL,
  `MANUFACTURER_ID` bigint(20) DEFAULT NULL,
  `MERCHANT_ID` int(11) NOT NULL,
  `CUSTOMER_ID` bigint(20) DEFAULT NULL,
  `TAX_CLASS_ID` bigint(20) DEFAULT NULL,
  `PRODUCT_TYPE_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`PRODUCT_ID`),
  UNIQUE KEY `UK_s8ofsn9pehdrstjg52j5qabxh` (`MERCHANT_ID`,`SKU`),
  KEY `FK_t03uwph4r4si70siiqafff3qj` (`MANUFACTURER_ID`),
  KEY `FK_r94hy42pyt9ot7ncu2s2kykqc` (`CUSTOMER_ID`),
  KEY `FK_pm6ef7y9lxy9xeav2dvcr4n4p` (`TAX_CLASS_ID`),
  KEY `FK_nor0i9e2avl4yyioivxyxpr28` (`PRODUCT_TYPE_ID`),
  CONSTRAINT `FK_a1p3pj01g4ojbdf1i93iavwoo` FOREIGN KEY (`MERCHANT_ID`) REFERENCES `merchant_store` (`MERCHANT_ID`),
  CONSTRAINT `FK_nor0i9e2avl4yyioivxyxpr28` FOREIGN KEY (`PRODUCT_TYPE_ID`) REFERENCES `product_type` (`PRODUCT_TYPE_ID`),
  CONSTRAINT `FK_pm6ef7y9lxy9xeav2dvcr4n4p` FOREIGN KEY (`TAX_CLASS_ID`) REFERENCES `tax_class` (`TAX_CLASS_ID`),
  CONSTRAINT `FK_r94hy42pyt9ot7ncu2s2kykqc` FOREIGN KEY (`CUSTOMER_ID`) REFERENCES `customer` (`CUSTOMER_ID`),
  CONSTRAINT `FK_t03uwph4r4si70siiqafff3qj` FOREIGN KEY (`MANUFACTURER_ID`) REFERENCES `manufacturer` (`MANUFACTURER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'2018-03-19 13:07:34','2018-05-24 09:06:35',NULL,'',NULL,'2018-03-18 15:00:00','\0',NULL,'\0',NULL,NULL,NULL,NULL,'\0','',NULL,NULL,'ao',NULL,NULL,NULL,'ao001',0,50,1,NULL,1,1),(2,'2018-03-19 13:18:18','2018-03-22 02:57:07',NULL,'',NULL,'2018-03-18 15:00:00','\0',NULL,'\0',NULL,NULL,NULL,NULL,'\0','\0',NULL,NULL,'',NULL,NULL,NULL,'fc002',0,1,1,NULL,1,1),(3,'2018-03-19 13:22:36','2018-03-22 07:12:56',NULL,'',NULL,'2018-03-18 15:00:00','\0',NULL,'\0',NULL,NULL,NULL,NULL,'\0','',NULL,NULL,'ss',NULL,NULL,NULL,'ss001',0,1,1,NULL,1,1),(4,'2018-03-19 13:31:43','2018-03-20 08:17:41',NULL,'',NULL,'2018-03-19 13:31:43','\0',NULL,'\0',NULL,NULL,NULL,NULL,'\0','\0',NULL,NULL,'',NULL,NULL,NULL,'s001',0,1,1,NULL,1,1),(5,'2018-03-19 13:37:30','2018-03-20 08:18:44',NULL,'',NULL,'2018-03-19 13:37:30','\0',NULL,'\0',NULL,NULL,NULL,NULL,'\0','\0',NULL,NULL,'',NULL,NULL,NULL,'cd001',0,1,1,NULL,1,1),(6,'2018-03-19 13:42:56','2018-04-16 09:58:40',NULL,'',NULL,'2018-03-18 15:00:00','\0',NULL,'\0',NULL,NULL,NULL,NULL,'\0','\0',NULL,NULL,'lb',NULL,NULL,NULL,'lb001',0,1,1,NULL,1,1),(100,'2018-03-21 12:14:23','2018-03-21 12:14:57',NULL,'',NULL,'2018-03-21 12:14:23','\0',NULL,'\0',NULL,NULL,NULL,NULL,'\0','',NULL,NULL,'',NULL,NULL,NULL,'s002',0,50,1,NULL,1,1),(101,'2018-03-21 12:23:20','2018-03-21 12:23:20',NULL,'',NULL,'2018-03-21 12:23:20','\0',NULL,'\0',NULL,NULL,NULL,NULL,'\0','\0',NULL,NULL,'',NULL,NULL,NULL,'hnt001',0,50,1,NULL,1,1),(150,'2018-03-22 00:31:34','2018-03-22 00:31:34',NULL,'',NULL,'2018-03-22 00:31:34','\0',NULL,'\0',NULL,NULL,NULL,NULL,'\0','\0',NULL,NULL,'',NULL,NULL,NULL,'ac002',0,50,1,NULL,1,1),(151,'2018-03-22 00:36:13','2018-03-22 00:36:13',NULL,'',NULL,'2018-03-22 00:36:13','\0',NULL,'\0',NULL,NULL,NULL,NULL,'\0','\0',NULL,NULL,'',NULL,NULL,NULL,'hc003',0,1,1,NULL,1,1),(152,'2018-03-22 00:43:19','2018-03-22 00:43:19',NULL,'',NULL,'2018-03-22 00:43:19','\0',NULL,'\0',NULL,NULL,NULL,NULL,'\0','\0',NULL,NULL,'',NULL,NULL,NULL,'caa001',0,1,1,NULL,1,1),(153,'2018-03-22 00:47:39','2018-03-22 00:47:39',NULL,'',NULL,'2018-03-22 00:47:39','\0',NULL,'\0',NULL,NULL,NULL,NULL,'\0','\0',NULL,NULL,'',NULL,NULL,NULL,'aac002',0,1,1,NULL,1,1),(154,'2018-03-22 01:05:33','2018-03-22 01:05:33',NULL,'',NULL,'2018-03-22 01:05:33','\0',NULL,'\0',NULL,NULL,NULL,NULL,'\0','\0',NULL,NULL,'',NULL,NULL,NULL,'hft002',0,1,1,NULL,1,1),(155,'2018-03-22 01:10:02','2018-03-22 01:10:27',NULL,'',NULL,'2018-03-22 01:10:02','\0',NULL,'\0',NULL,NULL,NULL,NULL,'\0','',NULL,NULL,'',NULL,NULL,NULL,'bl002',0,1,1,NULL,1,1),(156,'2018-03-22 01:14:45','2018-03-22 01:14:45',NULL,'',NULL,'2018-03-22 01:14:45','\0',NULL,'\0',NULL,NULL,NULL,NULL,'\0','\0',NULL,NULL,'',NULL,NULL,NULL,'bl003',0,50,1,NULL,1,1),(157,'2018-03-22 01:24:18','2018-03-22 01:24:18',NULL,'',NULL,'2018-03-22 01:24:18','\0',NULL,'\0',NULL,NULL,NULL,NULL,'\0','\0',NULL,NULL,'',NULL,NULL,NULL,'serum002',0,1,1,NULL,1,1),(158,'2018-03-22 01:28:41','2018-03-22 02:57:56',NULL,'',NULL,'2018-03-21 15:00:00','\0',NULL,'\0',NULL,NULL,NULL,NULL,'\0','\0',NULL,NULL,'',NULL,NULL,NULL,'bm002',0,1,1,NULL,1,1),(159,'2018-03-22 01:40:58','2018-03-22 01:40:58',NULL,'',NULL,'2018-03-22 01:40:58','\0',NULL,'\0',NULL,NULL,NULL,NULL,'\0','\0',NULL,NULL,'',NULL,NULL,NULL,'mb004',0,1,1,NULL,1,1),(160,'2018-03-22 01:53:33','2018-03-22 01:53:33',NULL,'',NULL,'2018-03-22 01:53:33','\0',NULL,'\0',NULL,NULL,NULL,NULL,'\0','\0',NULL,NULL,'',NULL,NULL,NULL,'amlou002',0,50,1,NULL,1,1),(161,'2018-03-22 01:57:13','2018-03-22 01:57:13',NULL,'',NULL,'2018-03-22 01:57:13','\0',NULL,'\0',NULL,NULL,NULL,NULL,'\0','\0',NULL,NULL,'',NULL,NULL,NULL,'amlou003',0,50,1,NULL,1,1),(162,'2018-03-22 02:01:55','2018-03-22 02:01:55',NULL,'',NULL,'2018-03-22 02:01:55','\0',NULL,'\0',NULL,NULL,NULL,NULL,'\0','\0',NULL,NULL,'',NULL,NULL,NULL,'eao002',0,50,1,NULL,1,1),(163,'2018-03-22 02:22:26','2018-03-22 02:22:26',NULL,'',NULL,'2018-03-22 02:22:26','\0',NULL,'\0',NULL,NULL,NULL,NULL,'\0','\0',NULL,NULL,'',NULL,NULL,NULL,'eao003',0,50,1,NULL,1,1),(200,'2018-04-28 15:37:21','2018-04-29 08:47:13',NULL,'',NULL,'2018-04-28 15:00:00','\0',NULL,'\0',NULL,NULL,NULL,NULL,'\0','\0',NULL,NULL,'',NULL,NULL,NULL,'coran001',0,1,1,NULL,1,1),(201,'2018-04-28 15:38:43','2018-04-29 08:50:47',NULL,'',NULL,'2018-04-28 15:00:00','\0',NULL,'\0',NULL,NULL,NULL,NULL,'\0','\0',NULL,NULL,'',NULL,NULL,NULL,'coran002',0,1,1,NULL,1,1),(205,'2018-04-28 15:43:36','2018-04-28 15:43:36',NULL,'',NULL,'2018-04-28 15:43:36','\0',NULL,'\0',NULL,NULL,NULL,NULL,'\0','\0',NULL,NULL,'',NULL,NULL,NULL,'plant001',0,1,1,NULL,1,1),(206,'2018-04-28 15:45:25','2018-04-28 15:45:25',NULL,'',NULL,'2018-04-28 15:45:25','\0',NULL,'\0',NULL,NULL,NULL,NULL,'\0','\0',NULL,NULL,'',NULL,NULL,NULL,'plant002',0,1,1,NULL,1,1),(207,'2018-04-28 15:46:49','2018-04-29 08:47:55',NULL,'',NULL,'2018-04-28 15:00:00','\0',NULL,'\0',NULL,NULL,NULL,NULL,'\0','\0',NULL,NULL,'',NULL,NULL,NULL,'flower01',0,1,1,NULL,1,1),(208,'2018-04-28 15:48:29','2018-04-28 15:48:29',NULL,'',NULL,'2018-04-28 15:48:28','\0',NULL,'\0',NULL,NULL,NULL,NULL,'\0','\0',NULL,NULL,'',NULL,NULL,NULL,'flower02',0,1,1,NULL,1,1),(211,'2018-04-28 15:52:31','2018-04-28 15:52:31',NULL,'',NULL,'2018-04-28 15:52:31','\0',NULL,'\0',NULL,NULL,NULL,NULL,'\0','\0',NULL,NULL,'',NULL,NULL,NULL,'dates001',0,1,1,NULL,1,1),(212,'2018-04-28 15:53:44','2018-04-28 15:53:44',NULL,'',NULL,'2018-04-28 15:53:44','\0',NULL,'\0',NULL,NULL,NULL,NULL,'\0','\0',NULL,NULL,'',NULL,NULL,NULL,'dates002',0,1,1,NULL,1,1),(213,'2018-04-28 15:54:51','2018-04-28 15:54:51',NULL,'',NULL,'2018-04-28 15:54:51','\0',NULL,'\0',NULL,NULL,NULL,NULL,'\0','\0',NULL,NULL,'',NULL,NULL,NULL,'dates003',0,1,1,NULL,1,1),(214,'2018-04-28 15:56:34','2018-04-29 08:49:53',NULL,'',NULL,'2018-04-28 15:00:00','\0',NULL,'\0',NULL,NULL,NULL,NULL,'\0','\0',NULL,NULL,'',NULL,NULL,NULL,'chocolat01',0,1,1,NULL,1,1),(215,'2018-04-28 15:58:06','2018-04-28 15:58:06',NULL,'',NULL,'2018-04-28 15:58:06','\0',NULL,'\0',NULL,NULL,NULL,NULL,'\0','\0',NULL,NULL,'',NULL,NULL,NULL,'chocolat02',0,1,1,NULL,1,1),(216,'2018-04-28 15:59:35','2018-04-29 08:49:12',NULL,'',NULL,'2018-04-28 15:00:00','\0',NULL,'\0',NULL,NULL,NULL,NULL,'\0','\0',NULL,NULL,'',NULL,NULL,NULL,'fakya001',0,1,1,NULL,1,1),(217,'2018-04-28 16:00:49','2018-04-29 08:49:30',NULL,'',NULL,'2018-04-28 15:00:00','\0',NULL,'\0',NULL,NULL,NULL,NULL,'\0','\0',NULL,NULL,'',NULL,NULL,NULL,'fayka002',0,1,1,NULL,1,1),(250,'2018-04-29 08:36:53','2018-04-29 08:48:12',NULL,'',NULL,'2018-04-28 15:00:00','\0',NULL,'\0',NULL,NULL,NULL,NULL,'\0','\0',NULL,NULL,'',NULL,NULL,NULL,'clock001',0,1,1,NULL,1,1),(251,'2018-04-29 08:39:16','2018-04-29 08:48:32',NULL,'',NULL,'2018-04-28 15:00:00','\0',NULL,'\0',NULL,NULL,NULL,NULL,'\0','\0',NULL,NULL,'',NULL,NULL,NULL,'candle001',0,1,1,NULL,1,1),(252,'2018-04-29 08:40:26','2018-04-29 08:40:26',NULL,'',NULL,'2018-04-29 08:40:26','\0',NULL,'\0',NULL,NULL,NULL,NULL,'\0','\0',NULL,NULL,'',NULL,NULL,NULL,'candle003',0,1,1,NULL,1,1),(253,'2018-04-29 08:41:26','2018-04-29 08:46:45',NULL,'',NULL,'2018-04-28 15:00:00','\0',NULL,'\0',NULL,NULL,NULL,NULL,'\0','\0',NULL,NULL,'',NULL,NULL,NULL,'candle002',0,1,1,NULL,1,1),(254,'2018-04-29 08:42:28','2018-04-29 08:46:25',NULL,'',NULL,'2018-04-28 15:00:00','\0',NULL,'\0',NULL,NULL,NULL,NULL,'\0','\0',NULL,NULL,'',NULL,NULL,NULL,'paiting001',0,1,1,NULL,1,1),(300,'2018-04-29 15:52:14','2018-04-29 15:52:14',NULL,'',NULL,'2018-04-29 15:52:14','\0',NULL,'\0',NULL,NULL,NULL,NULL,'\0','\0',NULL,NULL,'',NULL,NULL,NULL,'flag001',0,1,1,NULL,1,1);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_attribute`
--

DROP TABLE IF EXISTS `product_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_attribute` (
  `PRODUCT_ATTRIBUTE_ID` bigint(20) NOT NULL,
  `PRODUCT_ATTRIBUTE_DEFAULT` bit(1) DEFAULT NULL,
  `PRODUCT_ATTRIBUTE_DISCOUNTED` bit(1) DEFAULT NULL,
  `PRODUCT_ATTRIBUTE_FOR_DISP` bit(1) DEFAULT NULL,
  `PRODUCT_ATTRIBUTE_REQUIRED` bit(1) DEFAULT NULL,
  `PRODUCT_ATTRIBUTE_FREE` bit(1) DEFAULT NULL,
  `PRODUCT_ATRIBUTE_PRICE` decimal(19,2) DEFAULT NULL,
  `PRODUCT_ATTRIBUTE_WEIGHT` decimal(19,2) DEFAULT NULL,
  `PRODUCT_ATTRIBUTE_SORT_ORD` int(11) DEFAULT NULL,
  `PRODUCT_ID` bigint(20) NOT NULL,
  `OPTION_ID` bigint(20) NOT NULL,
  `OPTION_VALUE_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`PRODUCT_ATTRIBUTE_ID`),
  UNIQUE KEY `UK_o0c6cfxcfejwfa2877gfgpuco` (`OPTION_ID`,`OPTION_VALUE_ID`,`PRODUCT_ID`),
  KEY `FK_6h8m6ocg2jhu3bfieqa0dupb1` (`PRODUCT_ID`),
  KEY `FK_g2h5gdhgcbn7b3cr26sj6ax4c` (`OPTION_VALUE_ID`),
  CONSTRAINT `FK_6h8m6ocg2jhu3bfieqa0dupb1` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `product` (`PRODUCT_ID`),
  CONSTRAINT `FK_g2h5gdhgcbn7b3cr26sj6ax4c` FOREIGN KEY (`OPTION_VALUE_ID`) REFERENCES `product_option_value` (`PRODUCT_OPTION_VALUE_ID`),
  CONSTRAINT `FK_r9u2iot9wkbn263up3pj9stc1` FOREIGN KEY (`OPTION_ID`) REFERENCES `product_option` (`PRODUCT_OPTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_attribute`
--

LOCK TABLES `product_attribute` WRITE;
/*!40000 ALTER TABLE `product_attribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_availability`
--

DROP TABLE IF EXISTS `product_availability`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_availability` (
  `PRODUCT_AVAIL_ID` bigint(20) NOT NULL,
  `DATE_AVAILABLE` date DEFAULT NULL,
  `FREE_SHIPPING` bit(1) DEFAULT NULL,
  `QUANTITY` int(11) NOT NULL,
  `QUANTITY_ORD_MAX` int(11) DEFAULT NULL,
  `QUANTITY_ORD_MIN` int(11) DEFAULT NULL,
  `STATUS` bit(1) DEFAULT NULL,
  `REGION` varchar(255) DEFAULT NULL,
  `REGION_VARIANT` varchar(255) DEFAULT NULL,
  `PRODUCT_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`PRODUCT_AVAIL_ID`),
  KEY `FK_g32kj493ntgjnky10l88q8ba7` (`PRODUCT_ID`),
  CONSTRAINT `FK_g32kj493ntgjnky10l88q8ba7` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `product` (`PRODUCT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_availability`
--

LOCK TABLES `product_availability` WRITE;
/*!40000 ALTER TABLE `product_availability` DISABLE KEYS */;
INSERT INTO `product_availability` VALUES (1,NULL,'\0',50,50,0,'','*',NULL,1),(2,NULL,'\0',60,60,0,'','*',NULL,2),(3,NULL,'\0',30,30,0,'','*',NULL,3),(4,NULL,'\0',10,10,0,'','*',NULL,4),(5,NULL,'\0',20,20,0,'','*',NULL,5),(6,NULL,'\0',60,60,0,'','*',NULL,6),(100,NULL,'\0',0,0,0,'','*',NULL,100),(101,NULL,'\0',50,0,0,'','*',NULL,101),(150,NULL,'\0',20,0,0,'','*',NULL,150),(151,NULL,'\0',0,0,0,'','*',NULL,151),(152,NULL,'\0',60,0,0,'','*',NULL,152),(153,NULL,'\0',0,0,0,'','*',NULL,153),(154,NULL,'\0',70,0,0,'','*',NULL,154),(155,NULL,'\0',30,0,0,'','*',NULL,155),(156,NULL,'\0',50,0,0,'','*',NULL,156),(157,NULL,'\0',80,0,0,'','*',NULL,157),(158,NULL,'\0',0,0,0,'','*',NULL,158),(159,NULL,'\0',0,0,0,'','*',NULL,159),(160,NULL,'\0',0,0,0,'','*',NULL,160),(161,NULL,'\0',0,0,0,'','*',NULL,161),(162,NULL,'\0',0,0,0,'','*',NULL,162),(163,NULL,'\0',0,0,0,'','*',NULL,163),(200,NULL,'\0',30,0,0,'','*',NULL,200),(201,NULL,'\0',50,0,0,'','*',NULL,201),(205,NULL,'\0',0,0,0,'','*',NULL,205),(206,NULL,'\0',0,0,0,'','*',NULL,206),(207,NULL,'\0',70,0,0,'','*',NULL,207),(208,NULL,'\0',0,0,0,'','*',NULL,208),(211,NULL,'\0',0,0,0,'','*',NULL,211),(212,NULL,'\0',0,0,0,'','*',NULL,212),(213,NULL,'\0',0,0,0,'','*',NULL,213),(214,NULL,'\0',50,0,0,'','*',NULL,214),(215,NULL,'\0',0,0,0,'','*',NULL,215),(216,NULL,'\0',20,0,0,'','*',NULL,216),(217,NULL,'\0',30,0,0,'','*',NULL,217),(250,NULL,'\0',30,0,0,'','*',NULL,250),(251,NULL,'\0',20,0,0,'','*',NULL,251),(252,NULL,'\0',0,0,0,'','*',NULL,252),(253,NULL,'\0',20,0,0,'','*',NULL,253),(254,NULL,'\0',10,0,0,'','*',NULL,254),(300,NULL,'\0',30,0,0,'','*',NULL,300);
/*!40000 ALTER TABLE `product_availability` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_category`
--

DROP TABLE IF EXISTS `product_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_category` (
  `PRODUCT_ID` bigint(20) NOT NULL,
  `CATEGORY_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`PRODUCT_ID`,`CATEGORY_ID`),
  KEY `FK_j0abhuuifvojg9079r0njja07` (`CATEGORY_ID`),
  CONSTRAINT `FK_cu9i33d6dbyo4s8jmfepoyn59` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `product` (`PRODUCT_ID`),
  CONSTRAINT `FK_j0abhuuifvojg9079r0njja07` FOREIGN KEY (`CATEGORY_ID`) REFERENCES `category` (`CATEGORY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_category`
--

LOCK TABLES `product_category` WRITE;
/*!40000 ALTER TABLE `product_category` DISABLE KEYS */;
INSERT INTO `product_category` VALUES (162,3),(163,3),(158,5),(159,5),(6,6),(3,7),(1,8),(2,8),(4,9),(5,10),(152,11),(153,11),(157,12),(150,13),(155,14),(156,14),(100,15),(101,16),(151,16),(154,16),(160,18),(161,18),(216,52),(217,52),(214,53),(215,53),(211,54),(212,54),(213,54),(205,58),(206,58),(200,62),(201,62),(207,63),(208,63),(250,101),(251,102),(252,102),(253,102),(300,104),(254,105);
/*!40000 ALTER TABLE `product_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_description`
--

DROP TABLE IF EXISTS `product_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_description` (
  `DESCRIPTION_ID` bigint(20) NOT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_MODIFIED` datetime DEFAULT NULL,
  `UPDT_ID` varchar(20) DEFAULT NULL,
  `DESCRIPTION` longtext,
  `NAME` varchar(120) NOT NULL,
  `TITLE` varchar(100) DEFAULT NULL,
  `META_DESCRIPTION` varchar(255) DEFAULT NULL,
  `META_KEYWORDS` varchar(255) DEFAULT NULL,
  `META_TITLE` varchar(255) DEFAULT NULL,
  `DOWNLOAD_LNK` varchar(255) DEFAULT NULL,
  `PRODUCT_HIGHLIGHT` varchar(255) DEFAULT NULL,
  `SEF_URL` varchar(255) DEFAULT NULL,
  `LANGUAGE_ID` int(11) NOT NULL,
  `PRODUCT_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`DESCRIPTION_ID`),
  UNIQUE KEY `UK_q4dnkx5b776ayqas2h4rr2d8q` (`PRODUCT_ID`,`LANGUAGE_ID`),
  KEY `FK_adhnr56rrg1b3v9ufoey6vjfs` (`LANGUAGE_ID`),
  CONSTRAINT `FK_adhnr56rrg1b3v9ufoey6vjfs` FOREIGN KEY (`LANGUAGE_ID`) REFERENCES `language` (`LANGUAGE_ID`),
  CONSTRAINT `FK_aruidfgmbeki4pu5ipjdd5j7p` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `product` (`PRODUCT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_description`
--

LOCK TABLES `product_description` WRITE;
/*!40000 ALTER TABLE `product_description` DISABLE KEYS */;
INSERT INTO `product_description` VALUES (850,'2018-03-21 08:41:12','2018-03-21 08:41:12',NULL,'<p style=\"box-sizing: border-box; margin: 0px 0px 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-size: 15px; font-family: Dosis, &quot;Ubuntu Condensed&quot;, Calibri, &quot;Trebuchet MS&quot;, Tahoma, Helvetica, sans-serif; vertical-align: baseline; min-height: 1px; color: rgb(119, 119, 119); background-color: rgb(255, 255, 255);\">\r\n	<span style=\"color:#000080;\"><cite>The cosmetic oil acts against dryness and aging of the skin, heals and nourishes fragile hair and strengthens nails.</cite></span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-size: 15px; font-family: Dosis, &quot;Ubuntu Condensed&quot;, Calibri, &quot;Trebuchet MS&quot;, Tahoma, Helvetica, sans-serif; vertical-align: baseline; min-height: 1px; color: rgb(119, 119, 119); background-color: rgb(255, 255, 255);\">\r\n	<span style=\"color:#000080;\"><cite>It is a recommended treatment </cite></span><span style=\"color:#000080;\"><cite>against</cite></span><span style=\"color:#000080;\"><cite> acne and different types of </cite></span><span style=\"color:#000080;\"><cite>eczema,</cite></span><span style=\"color:#000080;\"><cite> chapped skin, burns and is also ideal for massage.</cite></span></p>\r\n','Argan oil for skin',NULL,'','','','','','argan-oil-for-skin',1,1),(851,'2018-03-21 08:41:12','2018-03-21 08:41:12',NULL,'','huile d\'argan pour la peau',NULL,'','','','','','huile-dargan-pour-la-peau',2,1),(852,'2018-03-22 02:57:07','2018-03-22 02:57:07',NULL,'<p style=\"box-sizing: border-box; font-family: Arial, Helvetica, sans-serif; font-weight: 500; line-height: 1.1; color: rgb(105, 105, 111); margin-top: 20px; margin-bottom: 10px; font-size: 26px; text-align: justify; background-color: rgb(255, 255, 255);\">\r\n	<span style=\"color:#000080;\"><span style=\"font-size:14px;\"><strong><cite>Organic Argan Face Care set</cite></strong></span></span></p>\r\n<p class=\"justify\" style=\"box-sizing: border-box; margin: 0px 0px 24px; color: rgb(105, 105, 111); font-family: Arial, Helvetica, sans-serif; font-size: 16px; text-align: justify; background-color: rgb(255, 255, 255);\">\r\n	<span style=\"color:#000080;\"><span style=\"font-size:12px;\"><cite>This pair of face care products designed for all skin types is a great way to get started with oil cleansing and moisturizing for your face. Save 40MAD with this kit.</cite></span></span></p>\r\n<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; color: rgb(105, 105, 111); font-family: Arial, Helvetica, sans-serif; font-size: 16px; text-align: justify; background-color: rgb(255, 255, 255);\">\r\n	<li>\r\n		<p>\r\n			<span style=\"color:#000080;\"><span style=\"font-size:12px;\"><cite><strong style=\"box-sizing: border-box;\">Argan Face Cleansing Oil (2oz bottle)</strong>: Clears away makeup and impurities&mdash;leaving your skin feeling clean, balanced, and glowing! Clinically tested non-comedogenic. 100% organic.</cite></span></span></p>\r\n	</li>\r\n	<li>\r\n		<p>\r\n			<span style=\"color:#000080;\"><span style=\"font-size:12px;\"><cite><strong style=\"box-sizing: border-box;\">Argan Face Oil (1oz bottle)</strong>: An exotic blend of certified organic plant-based superfoods formulated to protect, moisturize, restore, and balance all skin types. Clinically tested non-comedogenic. 100% organic.</cite></span></span></p>\r\n	</li>\r\n</ul>\r\n','Argan Face Care set',NULL,'','','','','','argan-face-care-set',1,2),(853,'2018-03-19 13:18:18','2018-03-19 13:18:18',NULL,'','Collection produit argan pour visage',NULL,'','','','','','collection-produit-argant-pour-visage',2,2),(854,'2018-03-20 07:42:44','2018-03-20 07:42:44',NULL,'<p>\r\n	<span style=\"color:#000080;\"><span style=\"font-size:12px;\"><cite><span style=\"background-color: rgb(255, 255, 255); font-family: arial, sans-serif; white-space: pre-wrap;\">With a rich and melting texture, this treatment is specially formulated to penetrate quickly and resist water.</span></cite></span></span></p>\r\n<p>\r\n	<span style=\"color:#000080;\"><span style=\"font-size:12px;\"><cite><span style=\"font-family: arial, sans-serif; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">For a 100% natural protection, it contains mineral sunscreens anti-UVA and UVB and as well as plant active ingredients: Organic Argan oil rich in omega 6 and 9 known to protect the epidermis and prevent skin aging</span></cite></span></span></p>\r\n<p>\r\n	<span style=\"color: rgb(33, 33, 33); font-family: arial, sans-serif; font-size: 16px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">With a rich and melting texture, this treatment is specially formulated to penetrate quickly and resist water. For a 100% natural protection, it contains mineral sunscreens anti-UVA and UVB and as well as plant active ingredients: Organic Argan oil rich in omega 6 and 9 known to protect the epidermis and prevent skin aging</span></p>\r\n','Argan sunscreen',NULL,'','sunscreen,','','','','argan-sunscreen',1,3),(855,'2018-03-20 07:42:44','2018-03-20 07:42:44',NULL,'','écran solaire d\'argan',NULL,'','','','','','cran-solaire-dargan',2,3),(856,'2018-03-19 13:31:43','2018-03-19 13:31:43',NULL,'','Shampoing base d\'argan',NULL,'','','','','','shampoing-base-dargan',2,4),(857,'2018-03-19 13:31:43','2018-03-19 13:31:43',NULL,'<p>\r\n	<span style=\"color:#000080;\"><span style=\"font-size:12px;\"><cite><span style=\"font-family: Arial, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);\">A unique, precious blend of argan oil of Morocco which rapidly penetrates the hair shaft restoring shine and softness while strengthening and creating soft, seductive, silky perfection.</span></cite></span></span></p>\r\n<p>\r\n	<span style=\"color:#000080;\"><span style=\"font-size:12px;\"><cite><span style=\"background-color: rgb(255, 255, 255); font-family: Arial, Helvetica, Arial, sans-serif;\">This exotic precious blend of argan oil of Morocco, </span></cite></span></span><span style=\"background-color: rgb(255, 255, 255); font-family: Arial, Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color:#000080;\"><span style=\"font-size:12px;\"><cite>moisturises</cite></span></span></span><span style=\"color:#000080;\"><span style=\"font-size:12px;\"><cite><span style=\"background-color: rgb(255, 255, 255); font-family: Arial, Helvetica, Arial, sans-serif;\">, revives and helps create softness and strength while helping protect your hair from harmful styling heat as it gives you smooth, sexy tresses.</span></cite></span></span></p>\r\n','Shampoo of argan oil',NULL,'','','','','','shampoo-of-argan-oil',1,4),(858,'2018-03-19 13:37:30','2018-03-19 13:37:30',NULL,'<p>\r\n	<span style=\"color:#000080;\"><span style=\"font-size:12px;\"><cite>This rare formula has a centuries-old history of providing natural vitamin E and antioxidants while renewing your hair&#39;s cell structure, sealing in shine, and creating lush softness. A precious blend of Moroccan argan oil which instantly penetrates the hair shaft restoring shine and softness while strengthening. </cite></span></span></p>\r\n<p>\r\n	<span style=\"color:#000080;\"><span style=\"font-size:12px;\"><cite>Derived from the southwest region of Morocco, argan oil protects from styling heat and UV damage while creating soft, seductive, silky perfection.</cite></span></span></p>\r\n','conditioner argan',NULL,'','','','','','conditioner-argan',1,5),(859,'2018-03-19 13:37:30','2018-03-19 13:37:30',NULL,'','apres shampoing',NULL,'','','','','','apres-shampoin',2,5),(860,'2018-03-19 13:58:09','2018-03-19 13:58:09',NULL,'<p class=\"tw-data-text tw-ta tw-text-small\" data-fulltext=\"\" data-placeholder=\"Translation\" dir=\"ltr\" id=\"tw-target-text\" style=\"unicode-bidi: isolate; background-color: rgb(255, 255, 255); border: none; padding: 0px 0.14em 0px 0px; position: relative; margin-top: 0px; margin-bottom: 0px; resize: none; font-family: inherit; overflow: hidden; width: 276px; white-space: pre-wrap; word-wrap: break-word; color: rgb(33, 33, 33); height: 96px; font-size: 16px !important; line-height: 24px !important;\">\r\n	<span style=\"color:#000080;\"><span style=\"font-size:12px;\"><cite>A nourishing and economical balm that will slip everywhere to accompany you throughout your day</cite></span></span></p>\r\n','Argan Lip Balm',NULL,'','','','','','argan-lip-balm',1,6),(861,'2018-03-19 13:58:09','2018-03-19 13:58:09',NULL,'','baume a lèvres d\'argan',NULL,'','','','','','baume-a-levres-dargan',2,6),(1350,'2018-03-21 12:14:23','2018-03-21 12:14:23',NULL,'<p>\r\n	<cite><span style=\"color:#000080;\"><span style=\"font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: small; background-color: rgb(255, 255, 255);\">Argan oil soap is made from 100% organic oil from the seeds of the argan tree. Natural Argan Oil is a rare, exotic oil from Morocco that heals skin damaged by sun, dryness, and disease. Argan Oil soap is scented with&nbsp;lemongrass and patchouli&nbsp;essential oils.&nbsp;It cleanses gently to leave your skin feeling fresh and clean. Argan Oil soap can be used several times daily. We recommend using it in the morning and at night as part of your regular beauty regimen. Use several times daily to reduce wrinkles and heal damaged skin.</span></span></cite></p>\r\n','Argan soap',NULL,'','','','','','argan-soap',1,100),(1351,'2018-03-21 12:14:23','2018-03-21 12:14:23',NULL,'','savon d\'argan',NULL,'','','','','','savon-dargan',2,100),(1352,'2018-03-21 12:23:20','2018-03-21 12:24:53',NULL,'<p>\r\n	<span style=\"color: rgb(51, 51, 51); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: small; background-color: rgb(255, 255, 255);\">This Argan Oil Hand &amp; Nail Cream has been specially formulated using a unique blend of Argan Oil and Shea Butter to nourish hands and nails and leave them feeling soft and smooth.</span></p>\r\n','Hand and nail cream',NULL,'','hand cream, cream, nail, hand,','','','','hand-and-nail-cream',1,101),(1353,'2018-03-21 12:23:20','2018-03-21 12:23:20',NULL,'','creme pour main et ongle',NULL,'','','','','','creme-pour-main-et-ongle',2,101),(1500,'2018-03-22 00:31:35','2018-03-22 00:31:35',NULL,'<p>\r\n	<cite><span style=\"color:#696969;\"><span style=\"font-family: &quot;Open sans&quot;, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">&nbsp;This rich, non-greasy day creme is light-weight and yet is designed to revitalize your skin&nbsp;with the fabulous&nbsp;<cite>Moroccan</cite></span>&nbsp;Argan oil, which is known to provide superior nourishment.<span style=\"background-color: rgb(255, 255, 255); font-family: &quot;Open sans&quot;, sans-serif; font-size: 14px;\"> It additionally contains SPF 30 PA++ which provides extensive protection from UVA and UVB rays.</span></span></cite></p>\r\n','argan cream',NULL,'','','','','','argan-cream',1,150),(1501,'2018-03-22 00:31:35','2018-03-22 00:31:35',NULL,'','creme d\'argan',NULL,'','','','','','creme-dargan',2,150),(1502,'2018-03-22 00:36:13','2018-03-22 00:36:13',NULL,'','creme d\'argan et olive',NULL,'','','','','','creme-dargan-et-olive',2,151),(1503,'2018-03-22 00:36:13','2018-03-22 00:36:13',NULL,'<p>\r\n	<span style=\"color: rgb(85, 85, 85); font-family: Arvo, Arial, Helvetica, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">Made with 100% Organic Olive Oil, Argan Oil,&nbsp;active organic Aloe Vera.&nbsp;This hand cream&nbsp;offers freshness and rapid hydration making your skin smooth and soft for all-day comfort. It is&nbsp;</span><span style=\"background-color: rgb(255, 255, 255); color: rgb(85, 85, 85); font-family: Arvo, Arial, Helvetica, sans-serif; font-size: 13px;\">formulated using Bio-active ingredients. They are Paraben free, Mineral Oil-free, Vaseline free, &nbsp;Propylene Glycol free and GMO-free.</span></p>\r\n','olive and argan hand cream',NULL,'','','','','','olive-and-argan-hand-cream',1,151),(1504,'2018-03-22 00:43:19','2018-03-22 00:43:19',NULL,'','creme anti vieillissement',NULL,'','','','','','creme-anti-vieillissement',2,152),(1505,'2018-03-22 00:43:19','2018-03-22 00:44:15',NULL,'<p>\r\n	<span style=\"color:#696969;\"><span style=\"font-size:14px;\"><cite>Anti-aging argan oil cream is a complete anti-aging, restructuring and moisturizing cream. For all types of skins.&nbsp;</cite></span></span><span style=\"font-size: 14px; color: rgb(105, 105, 105);\">With argan oil, vitamin E, and glycerin.</span></p>\r\n','cream anti-age',NULL,'','anti age, cream,','','','','cream-anti-age',1,152),(1506,'2018-03-22 00:47:39','2018-03-22 00:47:39',NULL,'','creme anti vieillissement',NULL,'','','','','','creme-anti-vieillissement',2,153),(1507,'2018-03-22 00:47:39','2018-03-22 00:47:39',NULL,'<p>\r\n	<span style=\"color:#696969;\"><span style=\"font-size:14px;\"><cite>Anti-aging skin care, developed with argan oil known for its nourishing and regenerating effects.</cite></span></span></p>\r\n','Anti-ageing cream ',NULL,'','','','','','anti-ageing-cream',1,153),(1508,'2018-03-22 01:05:33','2018-03-22 01:05:33',NULL,'<p>\r\n	<span style=\"color:#696969;\"><span style=\"font-size:14px;\"><cite><span style=\"font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; background-color: rgb(255, 255, 255);\">This foot cream with cooling Mint Essential Oil, enhanced by fair trade organic Argan Oil and organic Shea Butter, moisturizes and soothes dry or sore feet. 75 ml/ 2.5 fl. oz tube with flip-top cap.&nbsp;</span></cite></span></span></p>\r\n<p>\r\n	<span style=\"color:#696969;\"><span style=\"font-size:12px;\"><span style=\"font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; background-color: rgb(255, 255, 255);\"><cite>INGREDIENTS: WATER, MENTHA PIPERITA WATER, PROPANEDIOL, GLYCERYL STEARATE, ARGANIA SPINOSA </cite></span></span></span><span style=\"font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: small; background-color: rgb(255, 255, 255);\"><span style=\"color:#696969;\"><span style=\"font-size:12px;\"><cite>KERNELOIL</cite></span></span><span style=\"color:#696969;\"><span style=\"font-size:12px;\"><cite>, ALCOHOL, CAPRYLIC/CAPRIC TRIGLYCERIDE, BUTYROSPERMUM PARKII BUTTER, OLUS OIL, PRUNUS AMYGDALUS DULCIS OIL, MENTHA </cite></span></span><span style=\"color:#696969;\"><span style=\"font-size:12px;\"><cite>VIRDIS</cite></span></span><span style=\"color:#696969;\"><span style=\"font-size:12px;\"><cite> LEAF OIL, MEI, MENTHA PIPERITA OIL, </cite></span></span><span style=\"color:#696969;\"><span style=\"font-size:12px;\"><cite>CANDELILULA</cite></span></span><span style=\"color:#696969;\"><span style=\"font-size:12px;\"><cite> CERA, HELIANTHUS ANNUUS SEED OIL, HYDROGENATED VEGETABLE OIL, CETEARYL ALCOHOL, SODIUM STEAROYL </cite></span></span><span style=\"color:#696969;\"><span style=\"font-size:12px;\"><cite>LACTYATE</cite></span></span></span><span style=\"color:#696969;\"><span style=\"font-size:12px;\"><span style=\"font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; background-color: rgb(255, 255, 255);\"><cite>, ORYZA SATIVA STARCH, TOCOPHEROL, SODIUM BENZOATE, POTASSIUM SORBATE, BENZYL ALCOHOL, LIMONENE</cite>.</span></span></span></p>\r\n','foot cream with mint and argan',NULL,'','','','','','foot-cream-with-mint-and-argan',1,154),(1509,'2018-03-22 01:05:33','2018-03-22 01:05:33',NULL,'','creme pied base menthe et argan',NULL,'','','','','','creme-pied-base-menthe-et-argan',2,154),(1510,'2018-03-22 01:10:02','2018-03-22 01:10:51',NULL,'<p>\r\n	<span style=\"color:#696969;\"><cite><span style=\"font-family: &quot;Source Sans Pro&quot;, Helvetica, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">Argan oil&nbsp;Body lotion. Contains Argan oil, organic olive oil, glycerine, allantoin, panthenol, ingredients rich in vitamins, known for hydrating, antiaging, soothing properties. Ensure nourishment and hydration for skin, rejuvenate and maintain elasticity, offering shine, wellness and freshness.</span></cite></span></p>\r\n','Argan oil body lotion',NULL,'','body lotion, argan body lotion,','','','','argan-oil-body-lotion',1,155),(1511,'2018-03-22 01:10:02','2018-03-22 01:10:02',NULL,'','Lotion pour le corps',NULL,'','','','','','lotion-pour-le-corps',2,155),(1512,'2018-03-22 01:14:45','2018-03-22 01:14:45',NULL,'','Lotion d\'argan pour corps',NULL,'','','','','','lotion-dargan-pour-corps',2,156),(1513,'2018-03-22 01:14:45','2018-03-22 01:15:08',NULL,'<div class=\"section-adi description\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; position: relative; font-family: Roboto, &quot;Helvetica Neue&quot;, Verdana, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">\r\n	<div class=\"std\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-family: proxima-nova, sans-serif;\">\r\n		<p style=\"box-sizing: border-box; margin: 0px 0px 1.5em; padding: 0px;\">\r\n			<span style=\"color:#696969;\"><cite><span style=\"font-size:14px;\">The cooperative makes its products with love and care, harnessing the goodness of natural coconut and argan nut oil for their miraculous qualities to nourish, cleanse, smooth and shine.<br style=\"box-sizing: border-box; margin: 0px; padding: 0px;\" />\r\n			Argan Body Lotion is made with pure organic argan oil, massage onto skin to help revitalize skin, get rid of dry skin while also gifting it with the amazing smell of argan.</span></cite></span></p>\r\n	</div>\r\n</div>\r\n<div class=\"section-adi description\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; position: relative; font-family: Roboto, &quot;Helvetica Neue&quot;, Verdana, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">\r\n	<h2 class=\"adi-title\" style=\"box-sizing: border-box; margin: 20px 0px; padding: 0px; font-size: 14px; font-weight: 400; font-family: bodoni-urw, sans-serif; line-height: 1.2; text-rendering: optimizeLegibility; text-transform: uppercase;\">\r\n		INGREDIENTS :&nbsp;Aqua, Isopropyl Myristate, Glycerin, Stearic Acid, Cetyl Alcohol, Cetearyl Alcohol, Acrylates/C10-30 Alkyl Acrylate Crosspolymer, Lauryl Mehtyl<span style=\"font-family: proxima-nova, sans-serif;\"> Gluceth-10 Hydroxypropyldminion Chloride, Argania Spinosa (Argan) Oil, Peg-20 Stearate, Peg-14M, Parfum, Ethylhexylglycerin, Phenoxyethanol, Sodium Hydroxide.</span></h2>\r\n</div>\r\n<p>\r\n	&nbsp;</p>\r\n','Argan body lotion',NULL,'','body lotion, argan body lotion,','','','','argan-body-lotion',1,156),(1514,'2018-03-22 01:24:18','2018-03-22 01:24:18',NULL,'','Argan oil serum',NULL,'','','','','','argan-oil-serum',2,157),(1515,'2018-03-22 01:24:18','2018-03-22 01:24:57',NULL,'<ul class=\"prd-attributesList ui-listBulleted js-short-description\" style=\"margin: 0px; padding: 0px; list-style-position: initial; list-style-image: initial; column-count: 2; color: rgb(58, 67, 70); font-family: Helvetica, Arial, sans-serif; font-size: 12px; background-color: rgb(255, 255, 255);\">\r\n	<li style=\"margin: 0px; padding: 0px; list-style: none; line-height: 16px; font-size: 13px; break-inside: initial; overflow: hidden;\">\r\n		<span style=\"color:#696969;\"><span style=\"font-size:14px;\"><cite>An ultra-lightweight&nbsp;<span style=\"margin: 0px; padding: 0px;\">treatment that restores split ends and deeply nourishes hair that is prone to breakage. Argan Oil Hair Serum leave-on formula instantly gives </span></cite></span></span><span style=\"margin: 0px; padding: 0px; font-size: 12px;\"><span style=\"color:#696969;\"><span style=\"font-size:14px;\"><cite>extra</cite></span></span></span><span style=\"color:#696969;\"><span style=\"font-size:14px;\"><cite><span style=\"margin: 0px; padding: 0px;\"> polish to hair without flattening it or making it look greasy.</span></cite></span></span></li>\r\n	<li style=\"margin: 0px; padding: 0px; list-style: none; line-height: 16px; font-size: 13px; break-inside: initial; overflow: hidden;\">\r\n		&nbsp;</li>\r\n	<li style=\"margin: 0px; padding: 0px; list-style: none; line-height: 16px; font-size: 13px; break-inside: initial; overflow: hidden;\">\r\n		<span style=\"color:#696969;\"><span style=\"font-size:14px;\"><cite><span data-spm-anchor-id=\"a2o4l.prod.0.i4.6b7f1f6bfsiO27\" style=\"margin: 0px 0px 0px 10px; padding: 0px; display: block;\">- Strengthens hair that is prone to breakage and split ends</span></cite></span></span></li>\r\n	<li style=\"margin: 0px; padding: 0px; list-style: none; line-height: 16px; font-size: 13px; break-inside: initial; overflow: hidden;\">\r\n		<span style=\"color:#696969;\"><span style=\"font-size:14px;\"><cite><span style=\"margin: 0px 0px 0px 10px; padding: 0px; display: block;\">- Leaves hair healthy, shiny&nbsp;and<span style=\"font-size: 13px;\"> strong</span></span></cite></span></span></li>\r\n	<li style=\"margin: 0px; padding: 0px; list-style: none; line-height: 16px; font-size: 13px; break-inside: initial; overflow: hidden;\">\r\n		<span style=\"color:#696969;\"><cite><span style=\"margin: 0px 0px 0px 10px; padding: 0px; display: block;\"><span style=\"font-size: 13px;\">- <span style=\"font-size:14px;\">Gently smoothens the hair with a non-greasy feel</span></span></span></cite></span></li>\r\n	<li style=\"margin: 0px; padding: 0px; list-style: none; line-height: 16px; font-size: 13px; break-inside: initial; overflow: hidden;\">\r\n		<span style=\"color:#696969;\"><cite><span style=\"margin: 0px 0px 0px 10px; padding: 0px; display: block;\">- <span style=\"font-size:14px;\">Forms a protective layer on the hair&rsquo;s surface to keep it from heat</span></span></cite></span></li>\r\n	<li style=\"margin: 0px; padding: 0px; list-style: none; line-height: 16px; font-size: 13px; break-inside: initial; overflow: hidden;\">\r\n		&nbsp;</li>\r\n	<li style=\"margin: 0px; padding: 0px; list-style: none; line-height: 16px; font-size: 13px; break-inside: initial; overflow: hidden;\">\r\n		&nbsp;</li>\r\n	<li style=\"margin: 0px; padding: 0px; list-style: none; line-height: 16px; font-size: 13px; break-inside: initial; overflow: hidden;\">\r\n		&nbsp;</li>\r\n	<li style=\"margin: 0px; padding: 0px; list-style: none; line-height: 16px; font-size: 13px; break-inside: initial; overflow: hidden;\">\r\n		&nbsp;</li>\r\n	<li style=\"margin: 0px; padding: 0px; list-style: none; line-height: 16px; font-size: 13px; break-inside: initial; overflow: hidden;\">\r\n		&nbsp;</li>\r\n	<li style=\"margin: 0px; padding: 0px; list-style: none; line-height: 16px; font-size: 13px; break-inside: initial; overflow: hidden;\">\r\n		&nbsp;</li>\r\n	<li style=\"margin: 0px; padding: 0px; list-style: none; line-height: 16px; font-size: 13px; break-inside: initial; overflow: hidden;\">\r\n		&nbsp;</li>\r\n	<li style=\"margin: 0px; padding: 0px; list-style: none; line-height: 16px; font-size: 13px; break-inside: initial; overflow: hidden;\">\r\n		&nbsp;</li>\r\n	<li style=\"margin: 0px; padding: 0px; list-style: none; line-height: 16px; font-size: 13px; break-inside: initial; overflow: hidden;\">\r\n		&nbsp;</li>\r\n	<li style=\"margin: 0px; padding: 0px; list-style: none; line-height: 16px; font-size: 13px; break-inside: initial; overflow: hidden;\">\r\n		&nbsp;</li>\r\n	<li style=\"margin: 0px; padding: 0px; list-style: none; line-height: 16px; font-size: 13px; break-inside: initial; overflow: hidden;\">\r\n		&nbsp;</li>\r\n	<li style=\"margin: 0px; padding: 0px; list-style: none; line-height: 16px; font-size: 13px; break-inside: initial; overflow: hidden;\">\r\n		<br />\r\n		&nbsp;</li>\r\n	<li style=\"margin: 0px; padding: 0px; list-style: none; line-height: 16px; font-size: 13px; break-inside: initial; overflow: hidden;\">\r\n		<div>\r\n			&nbsp;</div>\r\n	</li>\r\n	<li style=\"margin: 0px; padding: 0px; list-style: none; line-height: 16px; font-size: 13px; break-inside: initial; overflow: hidden;\">\r\n		&nbsp;</li>\r\n	<li style=\"margin: 0px; padding: 0px; list-style: none; line-height: 16px; font-size: 13px; break-inside: initial; overflow: hidden;\">\r\n		&nbsp;</li>\r\n	<li style=\"margin: 0px; padding: 0px; list-style: none; line-height: 16px; font-size: 13px; break-inside: initial; overflow: hidden;\">\r\n		&nbsp;</li>\r\n	<li style=\"margin: 0px; padding: 0px; list-style: none; line-height: 16px; font-size: 13px; break-inside: initial; overflow: hidden;\">\r\n		&nbsp;</li>\r\n	<li style=\"margin: 0px; padding: 0px; list-style: none; line-height: 16px; font-size: 13px; break-inside: initial; overflow: hidden;\">\r\n		&nbsp;</li>\r\n	<li style=\"margin: 0px; padding: 0px; list-style: none; line-height: 16px; font-size: 13px; break-inside: initial; overflow: hidden;\">\r\n		&nbsp;</li>\r\n	<li style=\"margin: 0px; padding: 0px; list-style: none; line-height: 16px; font-size: 13px; break-inside: initial; overflow: hidden;\">\r\n		&nbsp;</li>\r\n</ul>\r\n','Argan oil serum',NULL,'','serum, argan oil serum, hair serum,','','','','argan-oil-serum',1,157),(1516,'2018-03-22 01:28:41','2018-03-22 01:28:41',NULL,'','Masque de beaute pour visage',NULL,'','','','','','masque-de-beaute-pour-visage',2,158),(1517,'2018-03-22 02:57:56','2018-03-22 02:57:56',NULL,'<p>\r\n	<span style=\"color: rgb(51, 51, 51); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: small; background-color: rgb(255, 255, 255);\">Embrace the natural joy of Moroccan Argan Oil coupled with antioxidant rich Acai Berries. This power duo join forefs in this face mask to deeply cleanse pores, balance oil levels and bring tired skin back to life.</span></p>\r\n','argan oil face mask',NULL,'','face mask, mask, argan oil face mask,','','','','argan-oil-face-mask',1,158),(1518,'2018-03-22 01:40:58','2018-03-22 01:40:58',NULL,'','Masque de beaute pour visage',NULL,'','','','','','masque-de-beaute-pour-visage',2,159),(1519,'2018-03-22 01:40:58','2018-03-22 01:40:58',NULL,'<div>\r\n	<span style=\"color:#696969;\"><span style=\"font-size:14px;\"><cite>The natural beauty mask is made with honey, saffron and 100% pure Argan Oil, blended together to create a natural 2 in 1 face scrub and mask. The pure honey particles act as exfoliators for the skin, revitalizing it and leaving behind a soft, supple and absolutely glowing complexion. While helping to clear spots and blemishes, this 2 in 1 Face Scrub and Mask intensely hydrates skin, improves skin elasticity and tone, tightens the skin, helps to minimize pores and gives the skin an overall brighter, more radiant and rosy complexion. It is perfect for all skin types.</cite></span></span></div>\r\n<div>\r\n	&nbsp;</div>\r\n','beauty mask ',NULL,'','','','','beauty mask with honey, saffron and Argan Oil','beauty-mask',1,159),(1520,'2018-03-22 01:53:33','2018-03-22 01:54:12',NULL,'<p>\r\n	<span style=\"color:#696969;\"><span style=\"font-size: 14px;\"><cite>Natural </cite></span></span><span style=\"color:#696969;\"><span style=\"font-size:14px;\"><cite>amlou</cite></span></span><span style=\"color:#696969;\"><span style=\"font-size: 14px;\"><cite> is made of pure bee honey and wholesome almonds</cite></span></span></p>\r\n<p>\r\n	<span style=\"color:#696969;\"><span style=\"font-size:14px;\"><cite>Ingredients :</cite></span></span></p>\r\n<p>\r\n	<span style=\"color:#696969;\"><span style=\"font-size:14px;\"><cite>- 100% argan oil&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </cite>-</span><cite><span style=\"font-size: 14px;\">100% pure honey&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;and organic almonds</span></cite></span></p>\r\n','Sweet and nutritious Amlou',NULL,'','amlou,','','','','sweet-and-nutritious-amlou',1,160),(1521,'2018-03-22 01:53:33','2018-03-22 01:53:33',NULL,'','Amlou',NULL,'','','','','','amlou',2,160),(1522,'2018-03-22 01:57:13','2018-03-22 01:57:53',NULL,'<p>\r\n	<cite><span style=\"font-size:14px;\"><span style=\"color: rgb(84, 84, 84); font-family: Yantramanav, sans-serif; background-color: rgb(255, 255, 255);\">Organic Amlou is a 100% natural spread, derived from a traditional Berber recipe combining honey, almond and argan oil. The Amlou gathers all the ingredients of a fortifying culinary preparation recommended at breakfast providing the necessary bonus for the day.</span></span></cite></p>\r\n','Organic Amlou With Almond',NULL,'','amlou,','','','','organic-amlou-with-almond',1,161),(1523,'2018-03-22 01:57:13','2018-03-22 01:57:13',NULL,'','Amlou',NULL,'','','','','','amlou',2,161),(1524,'2018-03-22 02:01:55','2018-03-22 02:03:47',NULL,'<p>\r\n	<span style=\"font-size:14px;\"><cite><span style=\"font-family: FinenessProExtraLightRegular, Verdana, Arial, sans-serif;\">Argan oil has slightly nutty flavor. It is used for dipping bread, salads and similar uses. Argan oil is helping the prevention of various cancers and </span></cite></span><span style=\"font-family: FinenessProExtraLightRegular, Verdana, Arial, sans-serif; font-size: 16px;\"><span style=\"font-size:14px;\"><cite>cariovascular</cite></span></span><span style=\"font-size:14px;\"><cite><span style=\"font-family: FinenessProExtraLightRegular, Verdana, Arial, sans-serif;\">.</span></cite></span></p>\r\n','bio edible argan oil',NULL,'','argan oil, edible argan oil,','','','','bio-edible-argan-oil',1,162),(1525,'2018-03-22 02:01:55','2018-03-22 02:01:55',NULL,'','Huile d\'argan comestible',NULL,'','','','','','huile-dargan-comestible',2,162),(1526,'2018-03-22 02:22:26','2018-03-22 02:22:54',NULL,'','edible argan oil',NULL,'','argan oil, edible argan oil,','','','','edible-argan-oil',1,163),(1527,'2018-03-22 02:22:26','2018-03-22 02:22:26',NULL,'','Argan comestible',NULL,'','','','','','argan-comestible',2,163),(1700,'2018-04-29 08:47:13','2018-04-29 08:47:13',NULL,'','Coran',NULL,'','','','','','coran',1,200),(1701,'2018-04-29 08:47:34','2018-04-29 08:47:34',NULL,'','red Coran kit',NULL,'','','','','','red-coran-kit',1,201),(1705,'2018-04-28 15:43:36','2018-04-28 15:43:36',NULL,'','Eco-Planter Organic Herb Kit',NULL,'','','','','','eco-planter-organic-herb-kit',1,205),(1706,'2018-04-28 15:45:25','2018-04-28 15:45:25',NULL,'','Kokedama Kit',NULL,'','','','','','kokedama-kit',1,206),(1707,'2018-04-29 08:47:55','2018-04-29 08:47:55',NULL,'','big bouquet',NULL,'','','','','','big-bouquet',1,207),(1708,'2018-04-28 15:48:29','2018-04-28 15:48:29',NULL,'','Beautiful Orchid',NULL,'','','','','','beautiful-orchid',1,208),(1711,'2018-04-28 15:52:31','2018-04-28 15:52:31',NULL,'','Organic dates',NULL,'','','','','','organic-dates',1,211),(1712,'2018-04-28 15:53:44','2018-04-28 15:53:44',NULL,'','Luxury dates',NULL,'','','','','','luxury-dates',1,212),(1713,'2018-04-28 15:54:51','2018-04-28 15:54:51',NULL,'','Medjool Dates filled with nuts',NULL,'','','','','','medjool-dates-filled-with-nuts',1,213),(1714,'2018-04-29 08:49:53','2018-04-29 08:49:53',NULL,'','Chocolate gift box',NULL,'','','','','','chocolate-gift-box',1,214),(1715,'2018-04-28 15:58:06','2018-04-28 15:58:06',NULL,'','Chocolate truffles',NULL,'','','','','','chocolate-truffles',1,215),(1716,'2018-04-29 08:49:12','2018-04-29 08:49:12',NULL,'','Dried fruits and nuts',NULL,'','','','','','dried-fruits-and-nuts',1,216),(1717,'2018-04-29 08:49:30','2018-04-29 08:49:30',NULL,'','Crate Filled With Nuts And Fruit',NULL,'','','','','','crate-filled-with-nuts-and-fruit',1,217),(1900,'2018-04-29 08:48:12','2018-04-29 08:48:12',NULL,'','Clock',NULL,'','','','','','clock',1,250),(1901,'2018-04-29 08:48:32','2018-04-29 08:48:32',NULL,'','candle with henne',NULL,'','','','','','candle-with-henne',1,251),(1902,'2018-04-29 08:40:26','2018-04-29 08:40:26',NULL,'','Candle with moroccan touch',NULL,'','','','','','candle-with-moroccan-touch',1,252),(1903,'2018-04-29 08:46:45','2018-04-29 08:46:45',NULL,'','scented candle',NULL,'','','','','','scented-candle',1,253),(1904,'2018-04-29 08:46:25','2018-04-29 08:46:25',NULL,'','King Mohammed VI',NULL,'','','','','','king-mohammed-vi',1,254),(2050,'2018-04-29 15:52:14','2018-04-29 15:52:14',NULL,'<div class=\"short-description\" style=\"box-sizing: border-box; margin: 0px 0px 13px; padding: 0px; color: rgb(102, 102, 102); font-family: &quot;helvetica neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">\r\n	<div class=\"std\" style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n		This 3&#39; x 5&#39; Morocco Nylon Outdoor Flag is made using heavyweight bunting material that is 100% Nylon.</div>\r\n</div>\r\n<p>\r\n	&nbsp;</p>\r\n','Morocco flag',NULL,'','','','','','morocco-flag',1,300);
/*!40000 ALTER TABLE `product_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_digital`
--

DROP TABLE IF EXISTS `product_digital`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_digital` (
  `PRODUCT_DIGITAL_ID` bigint(20) NOT NULL,
  `FILE_NAME` varchar(255) NOT NULL,
  `PRODUCT_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`PRODUCT_DIGITAL_ID`),
  UNIQUE KEY `UK_juk1qgkh9v5w7ghvb18krwo8v` (`PRODUCT_ID`,`FILE_NAME`),
  CONSTRAINT `FK_7nmms6pbk5w9yvqm874hw1a1r` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `product` (`PRODUCT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_digital`
--

LOCK TABLES `product_digital` WRITE;
/*!40000 ALTER TABLE `product_digital` DISABLE KEYS */;
INSERT INTO `product_digital` VALUES (50,'argan.JPG',1),(1,'argan sunscreen.jpg',3),(100,'soapArgan.JPG',100),(150,'bodyLotion.JPG',155);
/*!40000 ALTER TABLE `product_digital` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_image`
--

DROP TABLE IF EXISTS `product_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_image` (
  `PRODUCT_IMAGE_ID` bigint(20) NOT NULL,
  `DEFAULT_IMAGE` bit(1) DEFAULT NULL,
  `IMAGE_CROP` bit(1) DEFAULT NULL,
  `IMAGE_TYPE` int(11) DEFAULT NULL,
  `PRODUCT_IMAGE` varchar(255) DEFAULT NULL,
  `PRODUCT_IMAGE_URL` varchar(255) DEFAULT NULL,
  `PRODUCT_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`PRODUCT_IMAGE_ID`),
  KEY `FK_dmpwg0pdbotjf8h0ca15tx3qm` (`PRODUCT_ID`),
  CONSTRAINT `FK_dmpwg0pdbotjf8h0ca15tx3qm` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `product` (`PRODUCT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_image`
--

LOCK TABLES `product_image` WRITE;
/*!40000 ALTER TABLE `product_image` DISABLE KEYS */;
INSERT INTO `product_image` VALUES (1,'','\0',0,'argan.JPG',NULL,1),(2,'','\0',0,'argan-face.png',NULL,2),(4,'','\0',0,'Shampoo.JPG',NULL,4),(5,'','\0',0,'conditioner.JPG',NULL,5),(6,'','\0',0,'lip balm.JPG',NULL,6),(50,'\0','\0',0,NULL,'',3),(100,'','\0',0,'argan sunscreen.jpg',NULL,3),(150,'\0','\0',0,NULL,'http://localhost:8080/shop/product/argan-lip-balm.html',6),(200,'','\0',0,'soapArgan.JPG',NULL,100),(201,'','\0',0,'71smI-cg55L._SL1200_.jpg',NULL,101),(250,'','\0',0,'cream.JPG',NULL,150),(251,'','\0',0,'arganAndOliveCream.JPG',NULL,151),(252,'','\0',0,'antiAge.JPG',NULL,152),(253,'','\0',0,'antiAge2.JPG',NULL,153),(254,'','\0',0,'foot.JPG',NULL,154),(255,'','\0',0,'bodyLotion.JPG',NULL,155),(256,'','\0',0,'bLotion.JPG',NULL,156),(257,'','\0',0,'serum.JPG',NULL,157),(258,'','\0',0,'mask.JPG',NULL,158),(259,'','\0',0,'masque.JPG',NULL,159),(260,'','\0',0,'amlou.JPG',NULL,160),(261,'','\0',0,'amlou2.JPG',NULL,161),(262,'','\0',0,'ARGAN-OIL3.png',NULL,162),(263,'','\0',0,'edibl arganoil.JPG',NULL,163),(300,'','\0',0,'21995-PACK-TAPIS-CORAN-SABHA-MUSC-SIWAK.jpg',NULL,201),(304,'','\0',0,'v1991.jpg',NULL,205),(305,'','\0',0,'Kokedama-Kit-N6_crop-301x301.jpg',NULL,206),(306,'','\0',0,'blissful-bouquet-VA00617.365.jpg',NULL,207),(307,'','\0',0,'eb9969713e15279b61d7ff78049790ae--peaches-milk.jpg',NULL,208),(310,'','\0',0,'104504100101.jpg',NULL,211),(311,'','\0',0,'Dates.JPG',NULL,212),(312,'','\0',0,'Medjool,Dates,White,Chocolate,Coated,Pistachio,Walnut,Cashews, Almonds-700x700.jpg',NULL,213),(313,'','\0',0,'download.jpg',NULL,214),(314,'','\0',0,'k3immwrpcxh.jpg',NULL,215),(315,'','\0',0,'dried.JPG',NULL,216),(316,'','\0',0,'e5a47888f72bbdee37bd3c538753c28e--fruit-gifts-fruit-gift-baskets.jpg',NULL,217),(350,'','\0',0,'3b2dd440cb6a1c3764ea26ba0a799398.jpg',NULL,250),(351,'','\0',0,'unnamed.jpg',NULL,251),(352,'','\0',0,'boite-bougie-blanche-verre-cerle-metal-argente-sabra.jpg',NULL,252),(353,'','\0',0,'candle.JPG',NULL,253),(354,'','\0',0,'(224cm x 174 cm).JPG',NULL,254),(355,'','\0',0,'Coran coffret.JPG',NULL,200),(400,'','\0',0,'Drapeau-Maroc-30-x-45-cm-155-3.jpg',NULL,300);
/*!40000 ALTER TABLE `product_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_image_description`
--

DROP TABLE IF EXISTS `product_image_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_image_description` (
  `DESCRIPTION_ID` bigint(20) NOT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_MODIFIED` datetime DEFAULT NULL,
  `UPDT_ID` varchar(20) DEFAULT NULL,
  `DESCRIPTION` longtext,
  `NAME` varchar(120) NOT NULL,
  `TITLE` varchar(100) DEFAULT NULL,
  `ALT_TAG` varchar(100) DEFAULT NULL,
  `LANGUAGE_ID` int(11) NOT NULL,
  `PRODUCT_IMAGE_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`DESCRIPTION_ID`),
  UNIQUE KEY `UK_n7yhdj6ccydgf201gibb882cd` (`PRODUCT_IMAGE_ID`,`LANGUAGE_ID`),
  KEY `FK_ro5t1gks1imat7hji5p7hessp` (`LANGUAGE_ID`),
  CONSTRAINT `FK_1sdajmriuthbewh872gji4qgt` FOREIGN KEY (`PRODUCT_IMAGE_ID`) REFERENCES `product_image` (`PRODUCT_IMAGE_ID`),
  CONSTRAINT `FK_ro5t1gks1imat7hji5p7hessp` FOREIGN KEY (`LANGUAGE_ID`) REFERENCES `language` (`LANGUAGE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_image_description`
--

LOCK TABLES `product_image_description` WRITE;
/*!40000 ALTER TABLE `product_image_description` DISABLE KEYS */;
INSERT INTO `product_image_description` VALUES (900,'2018-03-19 13:07:34','2018-03-19 13:07:34',NULL,NULL,'argan.JPG',NULL,NULL,1,1),(901,'2018-03-19 13:07:34','2018-03-19 13:07:34',NULL,NULL,'argan.JPG',NULL,NULL,2,1),(902,'2018-03-19 13:18:19','2018-03-19 13:18:19',NULL,NULL,'argan-face.png',NULL,NULL,1,2),(903,'2018-03-19 13:18:19','2018-03-19 13:18:19',NULL,NULL,'argan-face.png',NULL,NULL,2,2),(906,'2018-03-19 13:31:43','2018-03-19 13:31:43',NULL,NULL,'Shampoo.JPG',NULL,NULL,1,4),(907,'2018-03-19 13:31:43','2018-03-19 13:31:43',NULL,NULL,'Shampoo.JPG',NULL,NULL,2,4),(908,'2018-03-19 13:37:30','2018-03-19 13:37:30',NULL,NULL,'conditioner.JPG',NULL,NULL,1,5),(909,'2018-03-19 13:37:30','2018-03-19 13:37:30',NULL,NULL,'conditioner.JPG',NULL,NULL,2,5),(910,'2018-03-19 13:42:56','2018-03-19 13:42:56',NULL,NULL,'lip balm.JPG',NULL,NULL,1,6),(911,'2018-03-19 13:42:56','2018-03-19 13:42:56',NULL,NULL,'lip balm.JPG',NULL,NULL,2,6),(1050,'2018-03-20 07:42:45','2018-03-20 07:42:45',NULL,NULL,'argan sunscreen.jpg',NULL,NULL,1,100),(1051,'2018-03-20 07:42:45','2018-03-20 07:42:45',NULL,NULL,'argan sunscreen.jpg',NULL,NULL,2,100),(1400,'2018-03-21 12:14:24','2018-03-21 12:14:24',NULL,NULL,'soapArgan.JPG',NULL,NULL,1,200),(1401,'2018-03-21 12:14:24','2018-03-21 12:14:24',NULL,NULL,'soapArgan.JPG',NULL,NULL,2,200),(1402,'2018-03-21 12:23:20','2018-03-21 12:23:20',NULL,NULL,'71smI-cg55L._SL1200_.jpg',NULL,NULL,1,201),(1403,'2018-03-21 12:23:20','2018-03-21 12:23:20',NULL,NULL,'71smI-cg55L._SL1200_.jpg',NULL,NULL,2,201),(1550,'2018-03-22 00:31:35','2018-03-22 00:31:35',NULL,NULL,'cream.JPG',NULL,NULL,1,250),(1551,'2018-03-22 00:31:35','2018-03-22 00:31:35',NULL,NULL,'cream.JPG',NULL,NULL,2,250),(1552,'2018-03-22 00:36:13','2018-03-22 00:36:13',NULL,NULL,'arganAndOliveCream.JPG',NULL,NULL,1,251),(1553,'2018-03-22 00:36:13','2018-03-22 00:36:13',NULL,NULL,'arganAndOliveCream.JPG',NULL,NULL,2,251),(1554,'2018-03-22 00:43:20','2018-03-22 00:43:20',NULL,NULL,'antiAge.JPG',NULL,NULL,1,252),(1555,'2018-03-22 00:43:20','2018-03-22 00:43:20',NULL,NULL,'antiAge.JPG',NULL,NULL,2,252),(1556,'2018-03-22 00:47:39','2018-03-22 00:47:39',NULL,NULL,'antiAge2.JPG',NULL,NULL,1,253),(1557,'2018-03-22 00:47:39','2018-03-22 00:47:39',NULL,NULL,'antiAge2.JPG',NULL,NULL,2,253),(1558,'2018-03-22 01:05:33','2018-03-22 01:05:33',NULL,NULL,'foot.JPG',NULL,NULL,1,254),(1559,'2018-03-22 01:05:33','2018-03-22 01:05:33',NULL,NULL,'foot.JPG',NULL,NULL,2,254),(1560,'2018-03-22 01:10:02','2018-03-22 01:10:02',NULL,NULL,'bodyLotion.JPG',NULL,NULL,1,255),(1561,'2018-03-22 01:10:02','2018-03-22 01:10:02',NULL,NULL,'bodyLotion.JPG',NULL,NULL,2,255),(1562,'2018-03-22 01:14:45','2018-03-22 01:14:45',NULL,NULL,'bLotion.JPG',NULL,NULL,1,256),(1563,'2018-03-22 01:14:45','2018-03-22 01:14:45',NULL,NULL,'bLotion.JPG',NULL,NULL,2,256),(1564,'2018-03-22 01:24:18','2018-03-22 01:24:18',NULL,NULL,'serum.JPG',NULL,NULL,1,257),(1565,'2018-03-22 01:24:18','2018-03-22 01:24:18',NULL,NULL,'serum.JPG',NULL,NULL,2,257),(1566,'2018-03-22 01:28:41','2018-03-22 01:28:41',NULL,NULL,'mask.JPG',NULL,NULL,1,258),(1567,'2018-03-22 01:28:41','2018-03-22 01:28:41',NULL,NULL,'mask.JPG',NULL,NULL,2,258),(1568,'2018-03-22 01:40:58','2018-03-22 01:40:58',NULL,NULL,'masque.JPG',NULL,NULL,1,259),(1569,'2018-03-22 01:40:58','2018-03-22 01:40:58',NULL,NULL,'masque.JPG',NULL,NULL,2,259),(1570,'2018-03-22 01:53:33','2018-03-22 01:53:33',NULL,NULL,'amlou.JPG',NULL,NULL,1,260),(1571,'2018-03-22 01:53:33','2018-03-22 01:53:33',NULL,NULL,'amlou.JPG',NULL,NULL,2,260),(1572,'2018-03-22 01:57:13','2018-03-22 01:57:13',NULL,NULL,'amlou2.JPG',NULL,NULL,1,261),(1573,'2018-03-22 01:57:13','2018-03-22 01:57:13',NULL,NULL,'amlou2.JPG',NULL,NULL,2,261),(1574,'2018-03-22 02:01:56','2018-03-22 02:01:56',NULL,NULL,'ARGAN-OIL3.png',NULL,NULL,1,262),(1575,'2018-03-22 02:01:56','2018-03-22 02:01:56',NULL,NULL,'ARGAN-OIL3.png',NULL,NULL,2,262),(1576,'2018-03-22 02:22:26','2018-03-22 02:22:26',NULL,NULL,'edibl arganoil.JPG',NULL,NULL,1,263),(1577,'2018-03-22 02:22:26','2018-03-22 02:22:26',NULL,NULL,'edibl arganoil.JPG',NULL,NULL,2,263),(1750,'2018-04-28 15:38:43','2018-04-28 15:38:43',NULL,NULL,'21995-PACK-TAPIS-CORAN-SABHA-MUSC-SIWAK.jpg',NULL,NULL,1,300),(1754,'2018-04-28 15:43:36','2018-04-28 15:43:36',NULL,NULL,'v1991.jpg',NULL,NULL,1,304),(1755,'2018-04-28 15:45:25','2018-04-28 15:45:25',NULL,NULL,'Kokedama-Kit-N6_crop-301x301.jpg',NULL,NULL,1,305),(1756,'2018-04-28 15:46:49','2018-04-28 15:46:49',NULL,NULL,'blissful-bouquet-VA00617.365.jpg',NULL,NULL,1,306),(1757,'2018-04-28 15:48:29','2018-04-28 15:48:29',NULL,NULL,'eb9969713e15279b61d7ff78049790ae--peaches-milk.jpg',NULL,NULL,1,307),(1760,'2018-04-28 15:52:31','2018-04-28 15:52:31',NULL,NULL,'104504100101.jpg',NULL,NULL,1,310),(1761,'2018-04-28 15:53:44','2018-04-28 15:53:44',NULL,NULL,'Dates.JPG',NULL,NULL,1,311),(1762,'2018-04-28 15:54:51','2018-04-28 15:54:51',NULL,NULL,'Medjool,Dates,White,Chocolate,Coated,Pistachio,Walnut,Cashews, Almonds-700x700.jpg',NULL,NULL,1,312),(1763,'2018-04-28 15:56:35','2018-04-28 15:56:35',NULL,NULL,'download.jpg',NULL,NULL,1,313),(1764,'2018-04-28 15:58:06','2018-04-28 15:58:06',NULL,NULL,'k3immwrpcxh.jpg',NULL,NULL,1,314),(1765,'2018-04-28 15:59:35','2018-04-28 15:59:35',NULL,NULL,'dried.JPG',NULL,NULL,1,315),(1766,'2018-04-28 16:00:49','2018-04-28 16:00:49',NULL,NULL,'e5a47888f72bbdee37bd3c538753c28e--fruit-gifts-fruit-gift-baskets.jpg',NULL,NULL,1,316),(1950,'2018-04-29 08:36:53','2018-04-29 08:36:53',NULL,NULL,'3b2dd440cb6a1c3764ea26ba0a799398.jpg',NULL,NULL,1,350),(1951,'2018-04-29 08:39:16','2018-04-29 08:39:16',NULL,NULL,'unnamed.jpg',NULL,NULL,1,351),(1952,'2018-04-29 08:40:26','2018-04-29 08:40:26',NULL,NULL,'boite-bougie-blanche-verre-cerle-metal-argente-sabra.jpg',NULL,NULL,1,352),(1953,'2018-04-29 08:41:26','2018-04-29 08:41:26',NULL,NULL,'candle.JPG',NULL,NULL,1,353),(1954,'2018-04-29 08:42:28','2018-04-29 08:42:28',NULL,NULL,'(224cm x 174 cm).JPG',NULL,NULL,1,354),(1955,'2018-04-29 08:47:13','2018-04-29 08:47:13',NULL,NULL,'Coran coffret.JPG',NULL,NULL,1,355),(2100,'2018-04-29 15:52:15','2018-04-29 15:52:15',NULL,NULL,'Drapeau-Maroc-30-x-45-cm-155-3.jpg',NULL,NULL,1,400);
/*!40000 ALTER TABLE `product_image_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_option`
--

DROP TABLE IF EXISTS `product_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_option` (
  `PRODUCT_OPTION_ID` bigint(20) NOT NULL,
  `PRODUCT_OPTION_CODE` varchar(255) NOT NULL,
  `PRODUCT_OPTION_SORT_ORD` int(11) DEFAULT NULL,
  `PRODUCT_OPTION_TYPE` varchar(10) DEFAULT NULL,
  `PRODUCT_OPTION_READ` bit(1) DEFAULT NULL,
  `MERCHANT_ID` int(11) NOT NULL,
  PRIMARY KEY (`PRODUCT_OPTION_ID`),
  UNIQUE KEY `UK_hfcw5oi9ulljlog1b7ns1r9tu` (`MERCHANT_ID`,`PRODUCT_OPTION_CODE`),
  KEY `PRD_OPTION_CODE_IDX` (`PRODUCT_OPTION_CODE`),
  CONSTRAINT `FK_4w5ar6nahg63cj3vbm00xr7r7` FOREIGN KEY (`MERCHANT_ID`) REFERENCES `merchant_store` (`MERCHANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_option`
--

LOCK TABLES `product_option` WRITE;
/*!40000 ALTER TABLE `product_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_option_desc`
--

DROP TABLE IF EXISTS `product_option_desc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_option_desc` (
  `DESCRIPTION_ID` bigint(20) NOT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_MODIFIED` datetime DEFAULT NULL,
  `UPDT_ID` varchar(20) DEFAULT NULL,
  `DESCRIPTION` longtext,
  `NAME` varchar(120) NOT NULL,
  `TITLE` varchar(100) DEFAULT NULL,
  `PRODUCT_OPTION_COMMENT` longtext,
  `LANGUAGE_ID` int(11) NOT NULL,
  `PRODUCT_OPTION_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`DESCRIPTION_ID`),
  UNIQUE KEY `UK_mkcm8isyyyqbjd1yyb8mrpkuw` (`PRODUCT_OPTION_ID`,`LANGUAGE_ID`),
  KEY `FK_23nqig56qilwn2f6d76cl5ubx` (`LANGUAGE_ID`),
  CONSTRAINT `FK_23nqig56qilwn2f6d76cl5ubx` FOREIGN KEY (`LANGUAGE_ID`) REFERENCES `language` (`LANGUAGE_ID`),
  CONSTRAINT `FK_aa0fbx3v56bjbxwipag3bbdev` FOREIGN KEY (`PRODUCT_OPTION_ID`) REFERENCES `product_option` (`PRODUCT_OPTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_option_desc`
--

LOCK TABLES `product_option_desc` WRITE;
/*!40000 ALTER TABLE `product_option_desc` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_option_desc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_option_value`
--

DROP TABLE IF EXISTS `product_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_option_value` (
  `PRODUCT_OPTION_VALUE_ID` bigint(20) NOT NULL,
  `PRODUCT_OPTION_VAL_CODE` varchar(255) NOT NULL,
  `PRODUCT_OPT_FOR_DISP` bit(1) DEFAULT NULL,
  `PRODUCT_OPT_VAL_IMAGE` varchar(255) DEFAULT NULL,
  `PRODUCT_OPT_VAL_SORT_ORD` int(11) DEFAULT NULL,
  `MERCHANT_ID` int(11) NOT NULL,
  PRIMARY KEY (`PRODUCT_OPTION_VALUE_ID`),
  UNIQUE KEY `UK_ixbpi4hxrhljh935c3xfvnvsh` (`MERCHANT_ID`,`PRODUCT_OPTION_VAL_CODE`),
  KEY `PRD_OPTION_VAL_CODE_IDX` (`PRODUCT_OPTION_VAL_CODE`),
  CONSTRAINT `FK_9q3e32t980pm3xfonwcb94e9t` FOREIGN KEY (`MERCHANT_ID`) REFERENCES `merchant_store` (`MERCHANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_option_value`
--

LOCK TABLES `product_option_value` WRITE;
/*!40000 ALTER TABLE `product_option_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_option_value_description`
--

DROP TABLE IF EXISTS `product_option_value_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_option_value_description` (
  `DESCRIPTION_ID` bigint(20) NOT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_MODIFIED` datetime DEFAULT NULL,
  `UPDT_ID` varchar(20) DEFAULT NULL,
  `DESCRIPTION` longtext,
  `NAME` varchar(120) NOT NULL,
  `TITLE` varchar(100) DEFAULT NULL,
  `LANGUAGE_ID` int(11) NOT NULL,
  `PRODUCT_OPTION_VALUE_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`DESCRIPTION_ID`),
  UNIQUE KEY `UK_asgc60ot1wy0uho96n0j8429p` (`PRODUCT_OPTION_VALUE_ID`,`LANGUAGE_ID`),
  KEY `FK_hmjmi3k2k2xts6r1b3h59p7dj` (`LANGUAGE_ID`),
  CONSTRAINT `FK_4igjaqwi959o699j6o8jhfftl` FOREIGN KEY (`PRODUCT_OPTION_VALUE_ID`) REFERENCES `product_option_value` (`PRODUCT_OPTION_VALUE_ID`),
  CONSTRAINT `FK_hmjmi3k2k2xts6r1b3h59p7dj` FOREIGN KEY (`LANGUAGE_ID`) REFERENCES `language` (`LANGUAGE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_option_value_description`
--

LOCK TABLES `product_option_value_description` WRITE;
/*!40000 ALTER TABLE `product_option_value_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_option_value_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_price`
--

DROP TABLE IF EXISTS `product_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_price` (
  `PRODUCT_PRICE_ID` bigint(20) NOT NULL,
  `PRODUCT_PRICE_CODE` varchar(255) NOT NULL,
  `DEFAULT_PRICE` bit(1) DEFAULT NULL,
  `PRODUCT_PRICE_AMOUNT` decimal(19,2) NOT NULL,
  `PRODUCT_PRICE_SPECIAL_AMOUNT` decimal(19,2) DEFAULT NULL,
  `PRODUCT_PRICE_SPECIAL_END_DATE` date DEFAULT NULL,
  `PRODUCT_PRICE_SPECIAL_ST_DATE` date DEFAULT NULL,
  `PRODUCT_PRICE_TYPE` varchar(20) DEFAULT NULL,
  `PRODUCT_AVAIL_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`PRODUCT_PRICE_ID`),
  KEY `FK_bt21fp36gai74hfosfo02wucx` (`PRODUCT_AVAIL_ID`),
  CONSTRAINT `FK_bt21fp36gai74hfosfo02wucx` FOREIGN KEY (`PRODUCT_AVAIL_ID`) REFERENCES `product_availability` (`PRODUCT_AVAIL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_price`
--

LOCK TABLES `product_price` WRITE;
/*!40000 ALTER TABLE `product_price` DISABLE KEYS */;
INSERT INTO `product_price` VALUES (1,'base','',150.00,NULL,NULL,NULL,'ONE_TIME',1),(2,'base','',250.00,NULL,NULL,NULL,'ONE_TIME',2),(3,'base','',200.00,NULL,NULL,NULL,'ONE_TIME',3),(4,'base','',50.00,NULL,NULL,NULL,'ONE_TIME',4),(5,'base','',70.00,NULL,NULL,NULL,'ONE_TIME',5),(6,'base','',25.00,NULL,NULL,NULL,'ONE_TIME',6),(100,'base','',40.00,NULL,NULL,NULL,'ONE_TIME',100),(101,'base','',60.00,NULL,NULL,NULL,'ONE_TIME',101),(150,'base','',160.00,NULL,NULL,NULL,'ONE_TIME',150),(151,'base','',100.00,NULL,NULL,NULL,'ONE_TIME',151),(152,'base','',160.00,NULL,NULL,NULL,'ONE_TIME',152),(153,'base','',120.00,NULL,NULL,NULL,'ONE_TIME',153),(154,'base','',90.00,NULL,NULL,NULL,'ONE_TIME',154),(155,'base','',60.00,NULL,NULL,NULL,'ONE_TIME',155),(156,'base','',88.50,NULL,NULL,NULL,'ONE_TIME',156),(157,'base','',115.00,NULL,NULL,NULL,'ONE_TIME',157),(158,'base','',40.00,NULL,NULL,NULL,'ONE_TIME',158),(159,'base','',189.00,NULL,NULL,NULL,'ONE_TIME',159),(160,'base','',100.00,NULL,NULL,NULL,'ONE_TIME',160),(161,'base','',152.00,NULL,NULL,NULL,'ONE_TIME',161),(162,'base','',120.00,NULL,NULL,NULL,'ONE_TIME',162),(163,'base','',160.00,NULL,NULL,NULL,'ONE_TIME',163),(200,'base','',80.00,NULL,NULL,NULL,'ONE_TIME',200),(201,'base','',140.00,NULL,NULL,NULL,'ONE_TIME',201),(205,'base','',157.00,NULL,NULL,NULL,'ONE_TIME',205),(206,'base','',220.00,NULL,NULL,NULL,'ONE_TIME',206),(207,'base','',155.00,NULL,NULL,NULL,'ONE_TIME',207),(208,'base','',130.00,NULL,NULL,NULL,'ONE_TIME',208),(211,'base','',90.00,NULL,NULL,NULL,'ONE_TIME',211),(212,'base','',90.00,NULL,NULL,NULL,'ONE_TIME',212),(213,'base','',140.00,NULL,NULL,NULL,'ONE_TIME',213),(214,'base','',145.00,NULL,NULL,NULL,'ONE_TIME',214),(215,'base','',188.00,NULL,NULL,NULL,'ONE_TIME',215),(216,'base','',220.00,NULL,NULL,NULL,'ONE_TIME',216),(217,'base','',240.00,NULL,NULL,NULL,'ONE_TIME',217),(250,'base','',320.00,NULL,NULL,NULL,'ONE_TIME',250),(251,'base','',130.00,NULL,NULL,NULL,'ONE_TIME',251),(252,'base','',50.00,NULL,NULL,NULL,'ONE_TIME',252),(253,'base','',60.00,NULL,NULL,NULL,'ONE_TIME',253),(254,'base','',190.00,NULL,NULL,NULL,'ONE_TIME',254),(300,'base','',20.00,NULL,NULL,NULL,'ONE_TIME',300);
/*!40000 ALTER TABLE `product_price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_price_description`
--

DROP TABLE IF EXISTS `product_price_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_price_description` (
  `DESCRIPTION_ID` bigint(20) NOT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_MODIFIED` datetime DEFAULT NULL,
  `UPDT_ID` varchar(20) DEFAULT NULL,
  `DESCRIPTION` longtext,
  `NAME` varchar(120) NOT NULL,
  `TITLE` varchar(100) DEFAULT NULL,
  `LANGUAGE_ID` int(11) NOT NULL,
  `PRODUCT_PRICE_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`DESCRIPTION_ID`),
  UNIQUE KEY `UK_frsw8d41sxxogvxxoyd8nwaxu` (`PRODUCT_PRICE_ID`,`LANGUAGE_ID`),
  KEY `FK_fykbb1jc6rp1nsiaaj9ur40um` (`LANGUAGE_ID`),
  CONSTRAINT `FK_2xu1k5v5blwc7w6x65g4ww0au` FOREIGN KEY (`PRODUCT_PRICE_ID`) REFERENCES `product_price` (`PRODUCT_PRICE_ID`),
  CONSTRAINT `FK_fykbb1jc6rp1nsiaaj9ur40um` FOREIGN KEY (`LANGUAGE_ID`) REFERENCES `language` (`LANGUAGE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_price_description`
--

LOCK TABLES `product_price_description` WRITE;
/*!40000 ALTER TABLE `product_price_description` DISABLE KEYS */;
INSERT INTO `product_price_description` VALUES (800,'2018-03-19 13:07:34','2018-03-19 13:07:34',NULL,NULL,'DEFAULT',NULL,1,1),(801,'2018-03-19 13:07:34','2018-03-19 13:07:34',NULL,NULL,'DEFAULT',NULL,2,1),(802,'2018-03-19 13:18:18','2018-03-19 13:18:18',NULL,NULL,'DEFAULT',NULL,1,2),(803,'2018-03-19 13:18:18','2018-03-19 13:18:18',NULL,NULL,'DEFAULT',NULL,2,2),(804,'2018-03-19 13:22:36','2018-03-19 13:22:36',NULL,NULL,'DEFAULT',NULL,2,3),(805,'2018-03-19 13:22:36','2018-03-19 13:22:36',NULL,NULL,'DEFAULT',NULL,1,3),(806,'2018-03-19 13:31:43','2018-03-19 13:31:43',NULL,NULL,'DEFAULT',NULL,1,4),(807,'2018-03-19 13:31:43','2018-03-19 13:31:43',NULL,NULL,'DEFAULT',NULL,2,4),(808,'2018-03-19 13:37:30','2018-03-19 13:37:30',NULL,NULL,'DEFAULT',NULL,2,5),(809,'2018-03-19 13:37:30','2018-03-19 13:37:30',NULL,NULL,'DEFAULT',NULL,1,5),(810,'2018-03-19 13:42:56','2018-03-19 13:42:56',NULL,NULL,'DEFAULT',NULL,1,6),(811,'2018-03-19 13:42:56','2018-03-19 13:42:56',NULL,NULL,'DEFAULT',NULL,2,6),(1300,'2018-03-21 12:14:23','2018-03-21 12:14:23',NULL,NULL,'DEFAULT',NULL,1,100),(1301,'2018-03-21 12:14:23','2018-03-21 12:14:23',NULL,NULL,'DEFAULT',NULL,2,100),(1302,'2018-03-21 12:23:20','2018-03-21 12:23:20',NULL,NULL,'DEFAULT',NULL,1,101),(1303,'2018-03-21 12:23:20','2018-03-21 12:23:20',NULL,NULL,'DEFAULT',NULL,2,101),(1450,'2018-03-22 00:31:35','2018-03-22 00:31:35',NULL,NULL,'DEFAULT',NULL,1,150),(1451,'2018-03-22 00:31:35','2018-03-22 00:31:35',NULL,NULL,'DEFAULT',NULL,2,150),(1452,'2018-03-22 00:36:13','2018-03-22 00:36:13',NULL,NULL,'DEFAULT',NULL,2,151),(1453,'2018-03-22 00:36:13','2018-03-22 00:36:13',NULL,NULL,'DEFAULT',NULL,1,151),(1454,'2018-03-22 00:43:19','2018-03-22 00:43:19',NULL,NULL,'DEFAULT',NULL,2,152),(1455,'2018-03-22 00:43:19','2018-03-22 00:43:19',NULL,NULL,'DEFAULT',NULL,1,152),(1456,'2018-03-22 00:47:39','2018-03-22 00:47:39',NULL,NULL,'DEFAULT',NULL,1,153),(1457,'2018-03-22 00:47:39','2018-03-22 00:47:39',NULL,NULL,'DEFAULT',NULL,2,153),(1458,'2018-03-22 01:05:33','2018-03-22 01:05:33',NULL,NULL,'DEFAULT',NULL,1,154),(1459,'2018-03-22 01:05:33','2018-03-22 01:05:33',NULL,NULL,'DEFAULT',NULL,2,154),(1460,'2018-03-22 01:10:02','2018-03-22 01:10:02',NULL,NULL,'DEFAULT',NULL,2,155),(1461,'2018-03-22 01:10:02','2018-03-22 01:10:02',NULL,NULL,'DEFAULT',NULL,1,155),(1462,'2018-03-22 01:14:45','2018-03-22 01:14:45',NULL,NULL,'DEFAULT',NULL,1,156),(1463,'2018-03-22 01:14:45','2018-03-22 01:14:45',NULL,NULL,'DEFAULT',NULL,2,156),(1464,'2018-03-22 01:24:18','2018-03-22 01:24:18',NULL,NULL,'DEFAULT',NULL,1,157),(1465,'2018-03-22 01:24:18','2018-03-22 01:24:18',NULL,NULL,'DEFAULT',NULL,2,157),(1466,'2018-03-22 01:28:41','2018-03-22 01:28:41',NULL,NULL,'DEFAULT',NULL,1,158),(1467,'2018-03-22 01:28:41','2018-03-22 01:28:41',NULL,NULL,'DEFAULT',NULL,2,158),(1468,'2018-03-22 01:40:58','2018-03-22 01:40:58',NULL,NULL,'DEFAULT',NULL,1,159),(1469,'2018-03-22 01:40:58','2018-03-22 01:40:58',NULL,NULL,'DEFAULT',NULL,2,159),(1470,'2018-03-22 01:53:33','2018-03-22 01:53:33',NULL,NULL,'DEFAULT',NULL,2,160),(1471,'2018-03-22 01:53:33','2018-03-22 01:53:33',NULL,NULL,'DEFAULT',NULL,1,160),(1472,'2018-03-22 01:57:13','2018-03-22 01:57:13',NULL,NULL,'DEFAULT',NULL,1,161),(1473,'2018-03-22 01:57:13','2018-03-22 01:57:13',NULL,NULL,'DEFAULT',NULL,2,161),(1474,'2018-03-22 02:01:55','2018-03-22 02:01:55',NULL,NULL,'DEFAULT',NULL,2,162),(1475,'2018-03-22 02:01:55','2018-03-22 02:01:55',NULL,NULL,'DEFAULT',NULL,1,162),(1476,'2018-03-22 02:22:26','2018-03-22 02:22:26',NULL,NULL,'DEFAULT',NULL,2,163),(1477,'2018-03-22 02:22:26','2018-03-22 02:22:26',NULL,NULL,'DEFAULT',NULL,1,163),(1650,'2018-04-28 15:37:21','2018-04-28 15:37:21',NULL,NULL,'DEFAULT',NULL,1,200),(1651,'2018-04-28 15:38:43','2018-04-28 15:38:43',NULL,NULL,'DEFAULT',NULL,1,201),(1655,'2018-04-28 15:43:36','2018-04-28 15:43:36',NULL,NULL,'DEFAULT',NULL,1,205),(1656,'2018-04-28 15:45:25','2018-04-28 15:45:25',NULL,NULL,'DEFAULT',NULL,1,206),(1657,'2018-04-28 15:46:49','2018-04-28 15:46:49',NULL,NULL,'DEFAULT',NULL,1,207),(1658,'2018-04-28 15:48:29','2018-04-28 15:48:29',NULL,NULL,'DEFAULT',NULL,1,208),(1661,'2018-04-28 15:52:31','2018-04-28 15:52:31',NULL,NULL,'DEFAULT',NULL,1,211),(1662,'2018-04-28 15:53:44','2018-04-28 15:53:44',NULL,NULL,'DEFAULT',NULL,1,212),(1663,'2018-04-28 15:54:51','2018-04-28 15:54:51',NULL,NULL,'DEFAULT',NULL,1,213),(1664,'2018-04-28 15:56:34','2018-04-28 15:56:34',NULL,NULL,'DEFAULT',NULL,1,214),(1665,'2018-04-28 15:58:06','2018-04-28 15:58:06',NULL,NULL,'DEFAULT',NULL,1,215),(1666,'2018-04-28 15:59:35','2018-04-28 15:59:35',NULL,NULL,'DEFAULT',NULL,1,216),(1667,'2018-04-28 16:00:49','2018-04-28 16:00:49',NULL,NULL,'DEFAULT',NULL,1,217),(1850,'2018-04-29 08:36:53','2018-04-29 08:36:53',NULL,NULL,'DEFAULT',NULL,1,250),(1851,'2018-04-29 08:39:16','2018-04-29 08:39:16',NULL,NULL,'DEFAULT',NULL,1,251),(1852,'2018-04-29 08:40:26','2018-04-29 08:40:26',NULL,NULL,'DEFAULT',NULL,1,252),(1853,'2018-04-29 08:41:26','2018-04-29 08:41:26',NULL,NULL,'DEFAULT',NULL,1,253),(1854,'2018-04-29 08:42:28','2018-04-29 08:42:28',NULL,NULL,'DEFAULT',NULL,1,254),(2000,'2018-04-29 15:52:14','2018-04-29 15:52:14',NULL,NULL,'DEFAULT',NULL,1,300);
/*!40000 ALTER TABLE `product_price_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_relationship`
--

DROP TABLE IF EXISTS `product_relationship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_relationship` (
  `PRODUCT_RELATIONSHIP_ID` bigint(20) NOT NULL,
  `ACTIVE` bit(1) DEFAULT NULL,
  `CODE` varchar(255) DEFAULT NULL,
  `PRODUCT_ID` bigint(20) DEFAULT NULL,
  `RELATED_PRODUCT_ID` bigint(20) DEFAULT NULL,
  `MERCHANT_ID` int(11) NOT NULL,
  PRIMARY KEY (`PRODUCT_RELATIONSHIP_ID`),
  KEY `FK_soi25dq8dn9vmk1yiggivp2fl` (`PRODUCT_ID`),
  KEY `FK_d1m8psp38jc0nk5ux56918eik` (`RELATED_PRODUCT_ID`),
  KEY `FK_jlyfte1wuvqgdxwwt2fnbg47g` (`MERCHANT_ID`),
  CONSTRAINT `FK_d1m8psp38jc0nk5ux56918eik` FOREIGN KEY (`RELATED_PRODUCT_ID`) REFERENCES `product` (`PRODUCT_ID`),
  CONSTRAINT `FK_jlyfte1wuvqgdxwwt2fnbg47g` FOREIGN KEY (`MERCHANT_ID`) REFERENCES `merchant_store` (`MERCHANT_ID`),
  CONSTRAINT `FK_soi25dq8dn9vmk1yiggivp2fl` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `product` (`PRODUCT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_relationship`
--

LOCK TABLES `product_relationship` WRITE;
/*!40000 ALTER TABLE `product_relationship` DISABLE KEYS */;
INSERT INTO `product_relationship` VALUES (1,'','FEATURED_ITEM',NULL,1,1),(51,'','FEATURED_ITEM',NULL,3,1),(100,'','RELATED_ITEM',1,2,1),(150,'','RELATED_ITEM',151,101,1),(151,'','RELATED_ITEM',151,151,1),(153,'','RELATED_ITEM',153,152,1),(155,'','RELATED_ITEM',156,155,1),(156,'','RELATED_ITEM',159,158,1),(157,'','RELATED_ITEM',161,160,1),(158,'','RELATED_ITEM',163,162,1),(200,'','FEATURED_ITEM',NULL,251,1),(201,'','FEATURED_ITEM',NULL,217,1);
/*!40000 ALTER TABLE `product_relationship` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_review`
--

DROP TABLE IF EXISTS `product_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_review` (
  `PRODUCT_REVIEW_ID` bigint(20) NOT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_MODIFIED` datetime DEFAULT NULL,
  `UPDT_ID` varchar(20) DEFAULT NULL,
  `REVIEW_DATE` datetime DEFAULT NULL,
  `REVIEWS_RATING` double DEFAULT NULL,
  `REVIEWS_READ` bigint(20) DEFAULT NULL,
  `STATUS` int(11) DEFAULT NULL,
  `CUSTOMERS_ID` bigint(20) DEFAULT NULL,
  `PRODUCT_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`PRODUCT_REVIEW_ID`),
  UNIQUE KEY `UK_9ew5idgdbk8a77534hbnhd4yb` (`CUSTOMERS_ID`,`PRODUCT_ID`),
  KEY `FK_i1vhr6iv0i07sy5ogjcb7n8un` (`PRODUCT_ID`),
  CONSTRAINT `FK_i1vhr6iv0i07sy5ogjcb7n8un` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `product` (`PRODUCT_ID`),
  CONSTRAINT `FK_pvhck0hgg98k948igph4wtjo1` FOREIGN KEY (`CUSTOMERS_ID`) REFERENCES `customer` (`CUSTOMER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_review`
--

LOCK TABLES `product_review` WRITE;
/*!40000 ALTER TABLE `product_review` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_review_description`
--

DROP TABLE IF EXISTS `product_review_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_review_description` (
  `DESCRIPTION_ID` bigint(20) NOT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_MODIFIED` datetime DEFAULT NULL,
  `UPDT_ID` varchar(20) DEFAULT NULL,
  `DESCRIPTION` longtext,
  `NAME` varchar(120) NOT NULL,
  `TITLE` varchar(100) DEFAULT NULL,
  `LANGUAGE_ID` int(11) NOT NULL,
  `PRODUCT_REVIEW_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`DESCRIPTION_ID`),
  UNIQUE KEY `UK_qno5wjdtcj8pm3ykkkh7t4rxj` (`PRODUCT_REVIEW_ID`,`LANGUAGE_ID`),
  KEY `FK_n52r1gofhi1sfancu7ld7xp09` (`LANGUAGE_ID`),
  CONSTRAINT `FK_m7su4leperkhlinccx5ec3kja` FOREIGN KEY (`PRODUCT_REVIEW_ID`) REFERENCES `product_review` (`PRODUCT_REVIEW_ID`),
  CONSTRAINT `FK_n52r1gofhi1sfancu7ld7xp09` FOREIGN KEY (`LANGUAGE_ID`) REFERENCES `language` (`LANGUAGE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_review_description`
--

LOCK TABLES `product_review_description` WRITE;
/*!40000 ALTER TABLE `product_review_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_review_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_type`
--

DROP TABLE IF EXISTS `product_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_type` (
  `PRODUCT_TYPE_ID` bigint(20) NOT NULL,
  `PRD_TYPE_ADD_TO_CART` bit(1) DEFAULT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_MODIFIED` datetime DEFAULT NULL,
  `UPDT_ID` varchar(20) DEFAULT NULL,
  `PRD_TYPE_CODE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`PRODUCT_TYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_type`
--

LOCK TABLES `product_type` WRITE;
/*!40000 ALTER TABLE `product_type` DISABLE KEYS */;
INSERT INTO `product_type` VALUES (1,NULL,'2018-03-13 09:09:51','2018-03-13 09:09:51',NULL,'GENERAL');
/*!40000 ALTER TABLE `product_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shiping_origin`
--

DROP TABLE IF EXISTS `shiping_origin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shiping_origin` (
  `SHIP_ORIGIN_ID` bigint(20) NOT NULL,
  `ACTIVE` bit(1) DEFAULT NULL,
  `STREET_ADDRESS` varchar(256) NOT NULL,
  `CITY` varchar(100) NOT NULL,
  `POSTCODE` varchar(20) NOT NULL,
  `STATE` varchar(100) DEFAULT NULL,
  `COUNTRY_ID` int(11) DEFAULT NULL,
  `MERCHANT_ID` int(11) NOT NULL,
  `ZONE_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`SHIP_ORIGIN_ID`),
  KEY `FK_74fk2wqic6o7iayx04ojn63du` (`COUNTRY_ID`),
  KEY `FK_8lvfncpkdnd2ivn245u3792k3` (`MERCHANT_ID`),
  KEY `FK_qubd75iis2h2u0pmncwp2ergp` (`ZONE_ID`),
  CONSTRAINT `FK_74fk2wqic6o7iayx04ojn63du` FOREIGN KEY (`COUNTRY_ID`) REFERENCES `country` (`COUNTRY_ID`),
  CONSTRAINT `FK_8lvfncpkdnd2ivn245u3792k3` FOREIGN KEY (`MERCHANT_ID`) REFERENCES `merchant_store` (`MERCHANT_ID`),
  CONSTRAINT `FK_qubd75iis2h2u0pmncwp2ergp` FOREIGN KEY (`ZONE_ID`) REFERENCES `zone` (`ZONE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shiping_origin`
--

LOCK TABLES `shiping_origin` WRITE;
/*!40000 ALTER TABLE `shiping_origin` DISABLE KEYS */;
/*!40000 ALTER TABLE `shiping_origin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipping_quote`
--

DROP TABLE IF EXISTS `shipping_quote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shipping_quote` (
  `SHIPPING_QUOTE_ID` bigint(20) NOT NULL,
  `CART_ID` bigint(20) DEFAULT NULL,
  `CUSTOMER_ID` bigint(20) DEFAULT NULL,
  `DELIVERY_STREET_ADDRESS` varchar(256) DEFAULT NULL,
  `DELIVERY_CITY` varchar(100) DEFAULT NULL,
  `DELIVERY_COMPANY` varchar(100) DEFAULT NULL,
  `DELIVERY_FIRST_NAME` varchar(64) DEFAULT NULL,
  `DELIVERY_LAST_NAME` varchar(64) DEFAULT NULL,
  `DELIVERY_POSTCODE` varchar(20) DEFAULT NULL,
  `DELIVERY_STATE` varchar(100) DEFAULT NULL,
  `DELIVERY_TELEPHONE` varchar(32) DEFAULT NULL,
  `SHIPPING_NUMBER_DAYS` int(11) DEFAULT NULL,
  `FREE_SHIPPING` bit(1) DEFAULT NULL,
  `QUOTE_HANDLING` decimal(19,2) DEFAULT NULL,
  `MODULE` varchar(255) NOT NULL,
  `OPTION_CODE` varchar(255) DEFAULT NULL,
  `OPTION_DELIVERY_DATE` datetime DEFAULT NULL,
  `OPTION_NAME` varchar(255) DEFAULT NULL,
  `OPTION_SHIPPING_DATE` datetime DEFAULT NULL,
  `ORDER_ID` bigint(20) DEFAULT NULL,
  `QUOTE_PRICE` decimal(19,2) DEFAULT NULL,
  `QUOTE_DATE` datetime DEFAULT NULL,
  `DELIVERY_COUNTRY_ID` int(11) DEFAULT NULL,
  `DELIVERY_ZONE_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`SHIPPING_QUOTE_ID`),
  KEY `FK_d20pfg92gsn2m93b3q172gjlv` (`DELIVERY_COUNTRY_ID`),
  KEY `FK_ldcx5d9ghtpsyb0qwrqc4chi2` (`DELIVERY_ZONE_ID`),
  CONSTRAINT `FK_d20pfg92gsn2m93b3q172gjlv` FOREIGN KEY (`DELIVERY_COUNTRY_ID`) REFERENCES `country` (`COUNTRY_ID`),
  CONSTRAINT `FK_ldcx5d9ghtpsyb0qwrqc4chi2` FOREIGN KEY (`DELIVERY_ZONE_ID`) REFERENCES `zone` (`ZONE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipping_quote`
--

LOCK TABLES `shipping_quote` WRITE;
/*!40000 ALTER TABLE `shipping_quote` DISABLE KEYS */;
/*!40000 ALTER TABLE `shipping_quote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shopping_cart`
--

DROP TABLE IF EXISTS `shopping_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shopping_cart` (
  `SHP_CART_ID` bigint(20) NOT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_MODIFIED` datetime DEFAULT NULL,
  `UPDT_ID` varchar(20) DEFAULT NULL,
  `CUSTOMER_ID` bigint(20) DEFAULT NULL,
  `SHP_CART_CODE` varchar(255) NOT NULL,
  `MERCHANT_ID` int(11) NOT NULL,
  PRIMARY KEY (`SHP_CART_ID`),
  UNIQUE KEY `UK_8ld8p40fwrjobi7t3n95pna35` (`SHP_CART_CODE`),
  KEY `SHP_CART_CODE_IDX` (`SHP_CART_CODE`),
  KEY `SHP_CART_CUSTOMER_IDX` (`CUSTOMER_ID`),
  KEY `FK_q71ctu5sjtuird3f07paim1f2` (`MERCHANT_ID`),
  CONSTRAINT `FK_q71ctu5sjtuird3f07paim1f2` FOREIGN KEY (`MERCHANT_ID`) REFERENCES `merchant_store` (`MERCHANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shopping_cart`
--

LOCK TABLES `shopping_cart` WRITE;
/*!40000 ALTER TABLE `shopping_cart` DISABLE KEYS */;
INSERT INTO `shopping_cart` VALUES (150,'2018-03-22 07:11:04','2018-03-22 07:26:04',NULL,NULL,'6f0c9b95708a4ce59d4db49c4e3706d5',1),(200,'2018-04-16 09:47:44','2018-04-16 09:47:44',NULL,NULL,'05248f5188da4bf8b8ef1e240ea671b8',1),(201,'2018-04-16 09:48:01','2018-04-16 09:48:01',NULL,NULL,'b355bdf4c9f24a7d9e11a5fe3b410cc6',1),(202,'2018-04-16 09:50:28','2018-04-16 09:50:28',NULL,150,'1cb6db76d5de484585f45f25cdf22dd4',1),(300,'2018-05-24 09:01:58','2018-06-16 11:20:10',NULL,NULL,'6a0a4a1c840d422580502531b40f1e60',1);
/*!40000 ALTER TABLE `shopping_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shopping_cart_attr_item`
--

DROP TABLE IF EXISTS `shopping_cart_attr_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shopping_cart_attr_item` (
  `SHP_CART_ATTR_ITEM_ID` bigint(20) NOT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_MODIFIED` datetime DEFAULT NULL,
  `UPDT_ID` varchar(20) DEFAULT NULL,
  `PRODUCT_ATTR_ID` bigint(20) NOT NULL,
  `SHP_CART_ITEM_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`SHP_CART_ATTR_ITEM_ID`),
  KEY `FK_sc176ct7c75smml3pppgd6x7n` (`SHP_CART_ITEM_ID`),
  CONSTRAINT `FK_sc176ct7c75smml3pppgd6x7n` FOREIGN KEY (`SHP_CART_ITEM_ID`) REFERENCES `shopping_cart_item` (`SHP_CART_ITEM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shopping_cart_attr_item`
--

LOCK TABLES `shopping_cart_attr_item` WRITE;
/*!40000 ALTER TABLE `shopping_cart_attr_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `shopping_cart_attr_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shopping_cart_item`
--

DROP TABLE IF EXISTS `shopping_cart_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shopping_cart_item` (
  `SHP_CART_ITEM_ID` bigint(20) NOT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_MODIFIED` datetime DEFAULT NULL,
  `UPDT_ID` varchar(20) DEFAULT NULL,
  `PRODUCT_ID` bigint(20) NOT NULL,
  `QUANTITY` int(11) DEFAULT NULL,
  `SHP_CART_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`SHP_CART_ITEM_ID`),
  KEY `FK_8nwkbdvovjbaqovh1omtdqd4s` (`SHP_CART_ID`),
  CONSTRAINT `FK_8nwkbdvovjbaqovh1omtdqd4s` FOREIGN KEY (`SHP_CART_ID`) REFERENCES `shopping_cart` (`SHP_CART_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shopping_cart_item`
--

LOCK TABLES `shopping_cart_item` WRITE;
/*!40000 ALTER TABLE `shopping_cart_item` DISABLE KEYS */;
INSERT INTO `shopping_cart_item` VALUES (150,'2018-03-22 07:11:04','2018-03-22 07:26:04',NULL,3,1,150),(200,'2018-03-22 07:15:25','2018-03-22 07:26:04',NULL,2,1,150),(400,'2018-05-24 09:01:59','2018-06-16 11:20:10',NULL,1,1,300);
/*!40000 ALTER TABLE `shopping_cart_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sm_group`
--

DROP TABLE IF EXISTS `sm_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sm_group` (
  `GROUP_ID` int(11) NOT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_MODIFIED` datetime DEFAULT NULL,
  `UPDT_ID` varchar(20) DEFAULT NULL,
  `GROUP_NAME` varchar(255) NOT NULL,
  `GROUP_TYPE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`GROUP_ID`),
  UNIQUE KEY `UK_t83rjsoml3o785oj37lpqpyko` (`GROUP_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sm_group`
--

LOCK TABLES `sm_group` WRITE;
/*!40000 ALTER TABLE `sm_group` DISABLE KEYS */;
INSERT INTO `sm_group` VALUES (1,'2018-03-13 09:09:51','2018-03-13 09:09:51',NULL,'SUPERADMIN','ADMIN'),(2,'2018-03-13 09:09:51','2018-03-13 09:09:51',NULL,'ADMIN','ADMIN'),(3,'2018-03-13 09:09:52','2018-03-13 09:09:52',NULL,'ADMIN_CATALOGUE','ADMIN'),(4,'2018-03-13 09:09:52','2018-03-13 09:09:52',NULL,'ADMIN_STORE','ADMIN'),(5,'2018-03-13 09:09:52','2018-03-13 09:09:52',NULL,'ADMIN_ORDER','ADMIN'),(6,'2018-03-13 09:09:52','2018-03-13 09:09:52',NULL,'ADMIN_CONTENT','ADMIN'),(7,'2018-03-13 09:09:52','2018-03-13 09:09:52',NULL,'CUSTOMER','ADMIN');
/*!40000 ALTER TABLE `sm_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sm_sequencer`
--

DROP TABLE IF EXISTS `sm_sequencer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sm_sequencer` (
  `SEQ_NAME` varchar(255) DEFAULT NULL,
  `SEQ_COUNT` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sm_sequencer`
--

LOCK TABLES `sm_sequencer` WRITE;
/*!40000 ALTER TABLE `sm_sequencer` DISABLE KEYS */;
INSERT INTO `sm_sequencer` VALUES ('LANG_SEQ_NEXT_VAL',1),('COUNTRY_SEQ_NEXT_VAL',2),('DESCRIPTION_SEQ_NEXT_VAL',43),('ZONE_SEQ_NEXT_VAL',4),('CURRENCY_SEQ_NEXT_VAL',4),('PRD_TYPE_SEQ_NEXT_VAL',1),('MOD_CONF_SEQ_NEXT_VAL',1),('STORE_SEQ_NEXT_VAL',1),('TX_CLASS_SEQ_NEXT_VAL',1),('MANUFACT_SEQ_NEXT_VAL',2),('GROUP_SEQ_NEXT_VAL',1),('PERMISSION_SEQ_NEXT_VAL',1),('USER_SEQ_NEXT_VAL',2),('MERCH_CONF_SEQ_NEXT_VAL',3),('CATEGORY_SEQ_NEXT_VAL',3),('PRODUCT_SEQ_NEXT_VAL',7),('PRODUCT_AVAIL_SEQ_NEXT_VAL',7),('PRODUCT_PRICE_SEQ_NEXT_VAL',7),('PRODUCT_IMG_SEQ_NEXT_VAL',9),('PRODUCT_RELATION_SEQ_NEXT_VAL',5),('SHP_CRT_SEQ_NEXT_VAL',7),('SHP_CRT_ITM_SEQ_NEXT_VAL',9),('CUSTOMER_SEQ_NEXT_VAL',7),('TRANSACT_SEQ_NEXT_VAL',7),('ORDER_ID_SEQ_NEXT_VAL',7),('STATUS_HIST_ID_NEXT_VALUE',7),('ORDER_PRODUCT_ID_NEXT_VALUE',7),('ORDER_PRD_PRICE_ID_NEXT_VAL',7),('ORDER_TOTAL_ID_NEXT_VALUE',7),('PRODUCT_DGT_SEQ_NEXT_VAL',4),('CONTENT_SEQ_NEXT_VAL',3),('ORDER_PRODUCT_DL_ID_NEXT_VALUE',2);
/*!40000 ALTER TABLE `sm_sequencer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sm_transaction`
--

DROP TABLE IF EXISTS `sm_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sm_transaction` (
  `TRANSACTION_ID` bigint(20) NOT NULL,
  `AMOUNT` decimal(19,2) DEFAULT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_MODIFIED` datetime DEFAULT NULL,
  `UPDT_ID` varchar(20) DEFAULT NULL,
  `DETAILS` longtext,
  `PAYMENT_TYPE` varchar(255) DEFAULT NULL,
  `TRANSACTION_DATE` datetime DEFAULT NULL,
  `TRANSACTION_TYPE` varchar(255) DEFAULT NULL,
  `ORDER_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`TRANSACTION_ID`),
  KEY `FK_ajwett661pbjo6u9tk74ochve` (`ORDER_ID`),
  CONSTRAINT `FK_ajwett661pbjo6u9tk74ochve` FOREIGN KEY (`ORDER_ID`) REFERENCES `orders` (`ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sm_transaction`
--

LOCK TABLES `sm_transaction` WRITE;
/*!40000 ALTER TABLE `sm_transaction` DISABLE KEYS */;
INSERT INTO `sm_transaction` VALUES (1,25.00,'2018-03-19 14:13:13','2018-03-19 14:13:13',NULL,NULL,'MONEYORDER','2018-03-19 14:13:13','AUTHORIZECAPTURE',1),(50,25.00,'2018-03-20 00:40:47','2018-03-20 00:40:47',NULL,NULL,'MONEYORDER','2018-03-20 00:40:47','AUTHORIZECAPTURE',50),(100,25.00,'2018-03-20 08:16:51','2018-03-20 08:16:52',NULL,NULL,'MONEYORDER','2018-03-20 08:16:51','AUTHORIZECAPTURE',100),(101,50.00,'2018-03-20 08:17:46','2018-03-20 08:17:46',NULL,NULL,'MONEYORDER','2018-03-20 08:17:46','AUTHORIZECAPTURE',101),(102,70.00,'2018-03-20 08:19:01','2018-03-20 08:19:01',NULL,NULL,'MONEYORDER','2018-03-20 08:19:01','AUTHORIZECAPTURE',102),(103,20.00,'2018-03-20 08:19:59','2018-03-20 08:19:59',NULL,NULL,'MONEYORDER','2018-03-20 08:19:59','AUTHORIZECAPTURE',103),(104,25.00,'2018-03-20 08:21:26','2018-03-20 08:21:26',NULL,NULL,'MONEYORDER','2018-03-20 08:21:26','AUTHORIZECAPTURE',104),(150,113.50,'2018-04-16 09:59:01','2018-04-16 09:59:01',NULL,NULL,'MONEYORDER','2018-04-16 09:59:01','AUTHORIZECAPTURE',150),(200,510.00,'2018-04-29 08:50:58','2018-04-29 08:50:58',NULL,NULL,'MONEYORDER','2018-04-29 08:50:58','AUTHORIZECAPTURE',200);
/*!40000 ALTER TABLE `sm_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_configuration`
--

DROP TABLE IF EXISTS `system_configuration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `system_configuration` (
  `SYSTEM_CONFIG_ID` bigint(20) NOT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_MODIFIED` datetime DEFAULT NULL,
  `UPDT_ID` varchar(20) DEFAULT NULL,
  `CONFIG_KEY` varchar(255) DEFAULT NULL,
  `VALUE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`SYSTEM_CONFIG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_configuration`
--

LOCK TABLES `system_configuration` WRITE;
/*!40000 ALTER TABLE `system_configuration` DISABLE KEYS */;
/*!40000 ALTER TABLE `system_configuration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_notification`
--

DROP TABLE IF EXISTS `system_notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `system_notification` (
  `SYSTEM_NOTIF_ID` bigint(20) NOT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_MODIFIED` datetime DEFAULT NULL,
  `UPDT_ID` varchar(20) DEFAULT NULL,
  `END_DATE` date DEFAULT NULL,
  `CONFIG_KEY` varchar(255) DEFAULT NULL,
  `START_DATE` date DEFAULT NULL,
  `VALUE` varchar(255) DEFAULT NULL,
  `MERCHANT_ID` int(11) DEFAULT NULL,
  `USER_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`SYSTEM_NOTIF_ID`),
  UNIQUE KEY `UK_npdnlc390vgr2mhepib1mtrmr` (`MERCHANT_ID`,`CONFIG_KEY`),
  KEY `FK_jw5seps7hq717mgsqjrequeou` (`USER_ID`),
  CONSTRAINT `FK_6pow79mefofmd6svpdb47p1tq` FOREIGN KEY (`MERCHANT_ID`) REFERENCES `merchant_store` (`MERCHANT_ID`),
  CONSTRAINT `FK_jw5seps7hq717mgsqjrequeou` FOREIGN KEY (`USER_ID`) REFERENCES `user` (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_notification`
--

LOCK TABLES `system_notification` WRITE;
/*!40000 ALTER TABLE `system_notification` DISABLE KEYS */;
/*!40000 ALTER TABLE `system_notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tax_class`
--

DROP TABLE IF EXISTS `tax_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tax_class` (
  `TAX_CLASS_ID` bigint(20) NOT NULL,
  `TAX_CLASS_CODE` varchar(10) NOT NULL,
  `TAX_CLASS_TITLE` varchar(32) NOT NULL,
  `MERCHANT_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`TAX_CLASS_ID`),
  UNIQUE KEY `UK_a4q5q57a8oeh2ojeo8dhr935k` (`MERCHANT_ID`,`TAX_CLASS_CODE`),
  CONSTRAINT `FK_hs8kji9qd3y9sc8yb38k8fefb` FOREIGN KEY (`MERCHANT_ID`) REFERENCES `merchant_store` (`MERCHANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tax_class`
--

LOCK TABLES `tax_class` WRITE;
/*!40000 ALTER TABLE `tax_class` DISABLE KEYS */;
INSERT INTO `tax_class` VALUES (1,'DEFAULT','DEFAULT',1);
/*!40000 ALTER TABLE `tax_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tax_rate`
--

DROP TABLE IF EXISTS `tax_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tax_rate` (
  `TAX_RATE_ID` bigint(20) NOT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_MODIFIED` datetime DEFAULT NULL,
  `UPDT_ID` varchar(20) DEFAULT NULL,
  `TAX_CODE` varchar(255) NOT NULL,
  `PIGGYBACK` bit(1) DEFAULT NULL,
  `STORE_STATE_PROV` varchar(100) DEFAULT NULL,
  `TAX_PRIORITY` int(11) DEFAULT NULL,
  `TAX_RATE` decimal(7,4) NOT NULL,
  `COUNTRY_ID` int(11) NOT NULL,
  `MERCHANT_ID` int(11) NOT NULL,
  `PARENT_ID` bigint(20) DEFAULT NULL,
  `TAX_CLASS_ID` bigint(20) NOT NULL,
  `ZONE_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`TAX_RATE_ID`),
  UNIQUE KEY `UK_8gh6l9n0xq03b91sglp62oelu` (`TAX_CODE`,`MERCHANT_ID`),
  KEY `FK_4dk6cmp3gpa7y7wuwbesvpetb` (`COUNTRY_ID`),
  KEY `FK_35a95oa56qeqjqltvfh5wo2h7` (`MERCHANT_ID`),
  KEY `FK_5g3sbaqbfh5fny7ehf58pk869` (`PARENT_ID`),
  KEY `FK_q45avgtx0scd4e5m2m3k6i3rv` (`TAX_CLASS_ID`),
  KEY `FK_d505g6bra836ja1kamcnhkiju` (`ZONE_ID`),
  CONSTRAINT `FK_35a95oa56qeqjqltvfh5wo2h7` FOREIGN KEY (`MERCHANT_ID`) REFERENCES `merchant_store` (`MERCHANT_ID`),
  CONSTRAINT `FK_4dk6cmp3gpa7y7wuwbesvpetb` FOREIGN KEY (`COUNTRY_ID`) REFERENCES `country` (`COUNTRY_ID`),
  CONSTRAINT `FK_5g3sbaqbfh5fny7ehf58pk869` FOREIGN KEY (`PARENT_ID`) REFERENCES `tax_rate` (`TAX_RATE_ID`),
  CONSTRAINT `FK_d505g6bra836ja1kamcnhkiju` FOREIGN KEY (`ZONE_ID`) REFERENCES `zone` (`ZONE_ID`),
  CONSTRAINT `FK_q45avgtx0scd4e5m2m3k6i3rv` FOREIGN KEY (`TAX_CLASS_ID`) REFERENCES `tax_class` (`TAX_CLASS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tax_rate`
--

LOCK TABLES `tax_rate` WRITE;
/*!40000 ALTER TABLE `tax_rate` DISABLE KEYS */;
/*!40000 ALTER TABLE `tax_rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tax_rate_description`
--

DROP TABLE IF EXISTS `tax_rate_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tax_rate_description` (
  `DESCRIPTION_ID` bigint(20) NOT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_MODIFIED` datetime DEFAULT NULL,
  `UPDT_ID` varchar(20) DEFAULT NULL,
  `DESCRIPTION` longtext,
  `NAME` varchar(120) NOT NULL,
  `TITLE` varchar(100) DEFAULT NULL,
  `LANGUAGE_ID` int(11) NOT NULL,
  `TAX_RATE_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`DESCRIPTION_ID`),
  UNIQUE KEY `UK_t3xg8pl88yacdxg49nb46effg` (`TAX_RATE_ID`,`LANGUAGE_ID`),
  KEY `FK_5g26jyni5x8li9apet7eo5atg` (`LANGUAGE_ID`),
  CONSTRAINT `FK_5g26jyni5x8li9apet7eo5atg` FOREIGN KEY (`LANGUAGE_ID`) REFERENCES `language` (`LANGUAGE_ID`),
  CONSTRAINT `FK_ld9jwc8vxb7ftku6yxx2mkjbf` FOREIGN KEY (`TAX_RATE_ID`) REFERENCES `tax_rate` (`TAX_RATE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tax_rate_description`
--

LOCK TABLES `tax_rate_description` WRITE;
/*!40000 ALTER TABLE `tax_rate_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `tax_rate_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `USER_ID` bigint(20) NOT NULL,
  `ACTIVE` bit(1) DEFAULT NULL,
  `ADMIN_EMAIL` varchar(255) NOT NULL,
  `ADMIN_NAME` varchar(100) NOT NULL,
  `ADMIN_PASSWORD` varchar(60) NOT NULL,
  `ADMIN_A1` varchar(255) DEFAULT NULL,
  `ADMIN_A2` varchar(255) DEFAULT NULL,
  `ADMIN_A3` varchar(255) DEFAULT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_MODIFIED` datetime DEFAULT NULL,
  `UPDT_ID` varchar(20) DEFAULT NULL,
  `ADMIN_FIRST_NAME` varchar(255) DEFAULT NULL,
  `LAST_ACCESS` datetime DEFAULT NULL,
  `ADMIN_LAST_NAME` varchar(255) DEFAULT NULL,
  `LOGIN_ACCESS` datetime DEFAULT NULL,
  `ADMIN_Q1` varchar(255) DEFAULT NULL,
  `ADMIN_Q2` varchar(255) DEFAULT NULL,
  `ADMIN_Q3` varchar(255) DEFAULT NULL,
  `LANGUAGE_ID` int(11) DEFAULT NULL,
  `MERCHANT_ID` int(11) NOT NULL,
  PRIMARY KEY (`USER_ID`),
  UNIQUE KEY `UK_7rbcj0gstolij2mp5g3xc7xfu` (`ADMIN_NAME`),
  KEY `FK_k7sh5ke7r2tlfe6nllvpa7ynu` (`LANGUAGE_ID`),
  KEY `FK_650chnyaktynqq6ykvjp39h0v` (`MERCHANT_ID`),
  CONSTRAINT `FK_650chnyaktynqq6ykvjp39h0v` FOREIGN KEY (`MERCHANT_ID`) REFERENCES `merchant_store` (`MERCHANT_ID`),
  CONSTRAINT `FK_k7sh5ke7r2tlfe6nllvpa7ynu` FOREIGN KEY (`LANGUAGE_ID`) REFERENCES `language` (`LANGUAGE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'','admin@shopizer.com','admin','$2a$11$jGtKw2YQQ.pBdQRy/zBrgO9eeoryV1lE3WguaSDTS5Pdtgh8yaU6e',NULL,NULL,NULL,'2018-03-13 09:09:53','2018-05-17 03:24:55',NULL,'Administrator','2018-04-29 15:50:53','User','2018-05-17 03:24:55',NULL,NULL,NULL,NULL,1),(50,'','halima@example.com','halima','$2a$11$kJ1ZdCcRkE1md4h6WzYl.OPL5OkOYWNg.ZJKHWNOAk.ZSYPzIt2I.','Tunis','Emma','Turtle','2018-03-20 00:46:57','2018-03-20 08:11:52',NULL,'','2018-03-20 00:48:23','','2018-03-20 08:11:52','Dans quelle ville êtes-vous né ?','Quel surnom aviez-vous dans votre enfance ?','Quel était le nom de votre premier animal de compagnie ?',1,1);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_group`
--

DROP TABLE IF EXISTS `user_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_group` (
  `USER_ID` bigint(20) NOT NULL,
  `GROUP_ID` int(11) NOT NULL,
  KEY `FK_4ex9p3ihrxoysn8k46kh965sf` (`GROUP_ID`),
  KEY `FK_3at466hpmis1abruuh3x6nftg` (`USER_ID`),
  CONSTRAINT `FK_3at466hpmis1abruuh3x6nftg` FOREIGN KEY (`USER_ID`) REFERENCES `user` (`USER_ID`),
  CONSTRAINT `FK_4ex9p3ihrxoysn8k46kh965sf` FOREIGN KEY (`GROUP_ID`) REFERENCES `sm_group` (`GROUP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_group`
--

LOCK TABLES `user_group` WRITE;
/*!40000 ALTER TABLE `user_group` DISABLE KEYS */;
INSERT INTO `user_group` VALUES (1,1),(1,2),(50,7);
/*!40000 ALTER TABLE `user_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userconnection`
--

DROP TABLE IF EXISTS `userconnection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userconnection` (
  `providerId` varchar(255) NOT NULL,
  `providerUserId` varchar(255) NOT NULL,
  `userId` varchar(255) NOT NULL,
  `accessToken` varchar(255) DEFAULT NULL,
  `displayName` varchar(255) DEFAULT NULL,
  `expireTime` bigint(20) DEFAULT NULL,
  `imageUrl` varchar(255) DEFAULT NULL,
  `profileUrl` varchar(255) DEFAULT NULL,
  `rank` int(11) NOT NULL,
  `refreshToken` varchar(255) DEFAULT NULL,
  `secret` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`providerId`,`providerUserId`,`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userconnection`
--

LOCK TABLES `userconnection` WRITE;
/*!40000 ALTER TABLE `userconnection` DISABLE KEYS */;
/*!40000 ALTER TABLE `userconnection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zone`
--

DROP TABLE IF EXISTS `zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zone` (
  `ZONE_ID` bigint(20) NOT NULL,
  `ZONE_CODE` varchar(255) NOT NULL,
  `COUNTRY_ID` int(11) NOT NULL,
  PRIMARY KEY (`ZONE_ID`),
  UNIQUE KEY `UK_4tq3p5w8k4h4easyf5t3n1jdr` (`ZONE_CODE`),
  KEY `FK_7u7308kmafqhsvht9xwaba9h8` (`COUNTRY_ID`),
  CONSTRAINT `FK_7u7308kmafqhsvht9xwaba9h8` FOREIGN KEY (`COUNTRY_ID`) REFERENCES `country` (`COUNTRY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zone`
--

LOCK TABLES `zone` WRITE;
/*!40000 ALTER TABLE `zone` DISABLE KEYS */;
INSERT INTO `zone` VALUES (1,'Guipuzcoa',79),(2,'HI',91),(3,'PR',91),(4,'Zamora',79),(5,'Vizcaya',79),(6,'Albacete',79),(7,'Lleida',79),(8,'QC',13),(9,'NRW',30),(10,'IA',91),(11,'ID',91),(12,'YT',13),(13,'Leon',79),(14,'ACorua',79),(15,'Castellon',79),(16,'LasPalmas',79),(17,'Pontevedra',79),(18,'AA',91),(19,'Teruel',79),(20,'AB',13),(21,'AC',91),(22,'IL',91),(23,'AE',91),(24,'AF',91),(25,'IN',91),(26,'AG',82),(27,'A Corua',79),(28,'AI',82),(29,'AK',91),(30,'Caceres',79),(31,'Segovia',79),(32,'AL',91),(33,'AM',91),(34,'ZG',82),(35,'Malaga',79),(36,'ZH',82),(37,'LaRioja',79),(38,'AP',91),(39,'Melilla',79),(40,'AR',91),(41,'AS',91),(42,'NSW',4),(43,'Madrid',79),(44,'RI',91),(45,'AZ',91),(46,'Ceuta',79),(47,'BC',13),(48,'Huelva',79),(49,'BE',82),(50,'Huesca',79),(51,'ARCH',82),(52,'BL',82),(53,'JU',82),(54,'Asturias',79),(55,'SA',4),(56,'SB',5),(57,'TIAT',5),(58,'SC',91),(59,'THE',30),(60,'SD',91),(61,'BS',82),(62,'Cordoba',79),(63,'Tarragona',79),(64,'Valladolid',79),(65,'SG',82),(66,'SH',82),(67,'WAAU',4),(68,'SK',13),(69,'NDS',30),(70,'SO',82),(71,'CA',91),(72,'NTAU',4),(73,'ST',5),(74,'KN',5),(75,'Jaen',79),(76,'CiudadReal',79),(77,'SZ',82),(78,'Alava',79),(79,'KS',91),(80,'CO',91),(81,'KY',91),(82,'BER',30),(83,'CT',91),(84,'ACT',4),(85,'TG',82),(86,'LA',91),(87,'HAM',30),(88,'TI',82),(89,'Lugo',79),(90,'NECH',82),(91,'TN',91),(92,'Toledo',79),(93,'DC',91),(94,'Palencia',79),(95,'DE',91),(96,'TX',91),(97,'TAS',4),(98,'QLD',4),(99,'LU',82),(100,'Burgos',79),(101,'Cadiz',79),(102,'SantaCruzdeTenerife',79),(103,'MA',91),(104,'MB',13),(105,'MD',91),(106,'Girona',79),(107,'ME',91),(108,'Alicante',79),(109,'Guadalajara',79),(110,'Cantabria',79),(111,'MH',91),(112,'MI',91),(113,'UR',82),(114,'UT',91),(115,'MN',91),(116,'MO',91),(117,'MP',91),(118,'Barcelona',79),(119,'MS',91),(120,'MT',91),(121,'Badajoz',79),(122,'MEC',30),(123,'VA',91),(124,'VB',5),(125,'Cuenca',79),(126,'WIAT',5),(127,'VD',82),(128,'Sevilla',79),(129,'VI',91),(130,'Zaragoza',79),(131,'NB',13),(132,'SAC',30),(133,'NC',91),(134,'ND',91),(135,'NE',91),(136,'NF',13),(137,'NH',91),(138,'NJ',91),(139,'VS',82),(140,'VT',91),(141,'NM',91),(142,'NO',5),(143,'SAS',30),(144,'NS',13),(145,'SAR',30),(146,'FL',91),(147,'NT',13),(148,'FM',91),(149,'NU',13),(150,'NV',91),(151,'NW',82),(152,'WA',91),(153,'NY',91),(154,'Granada',79),(155,'Soria',79),(156,'FR',82),(157,'RHE',30),(158,'Ourense',79),(159,'WI',91),(160,'OH',91),(161,'GA',91),(162,'Murcia',79),(163,'OK',91),(164,'GE',82),(165,'WV',91),(166,'ON',13),(167,'OO',5),(168,'WY',91),(169,'BLAT',5),(170,'Avila',79),(171,'OR',91),(172,'Salamanca',79),(173,'GL',82),(174,'Baleares',79),(175,'OW',82),(176,'GR',82),(177,'GU',91),(178,'PA',91),(179,'VIC',4),(180,'BRE',30),(181,'PE',13),(182,'BRG',30),(183,'HES',30),(184,'Almeria',79),(185,'BAW',30),(186,'BAY',30),(187,'Navarra',79),(188,'Valencia',79),(189,'SCN',30);
/*!40000 ALTER TABLE `zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zone_description`
--

DROP TABLE IF EXISTS `zone_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zone_description` (
  `DESCRIPTION_ID` bigint(20) NOT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_MODIFIED` datetime DEFAULT NULL,
  `UPDT_ID` varchar(20) DEFAULT NULL,
  `DESCRIPTION` longtext,
  `NAME` varchar(120) NOT NULL,
  `TITLE` varchar(100) DEFAULT NULL,
  `LANGUAGE_ID` int(11) NOT NULL,
  `ZONE_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`DESCRIPTION_ID`),
  UNIQUE KEY `UK_m64laxgrv9fxm6io232ap4su9` (`ZONE_ID`,`LANGUAGE_ID`),
  KEY `FK_c0kdjwp4gdxe36vlu83qfvme5` (`LANGUAGE_ID`),
  CONSTRAINT `FK_11l2ifk07g04697nmb9arifnb` FOREIGN KEY (`ZONE_ID`) REFERENCES `zone` (`ZONE_ID`),
  CONSTRAINT `FK_c0kdjwp4gdxe36vlu83qfvme5` FOREIGN KEY (`LANGUAGE_ID`) REFERENCES `language` (`LANGUAGE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zone_description`
--

LOCK TABLES `zone_description` WRITE;
/*!40000 ALTER TABLE `zone_description` DISABLE KEYS */;
INSERT INTO `zone_description` VALUES (300,'2018-03-13 09:09:46','2018-03-13 09:09:46',NULL,NULL,'Guipuzcoa',NULL,1,1),(301,'2018-03-13 09:09:46','2018-03-13 09:09:46',NULL,NULL,'Guipuzcoa',NULL,2,1),(302,'2018-03-13 09:09:46','2018-03-13 09:09:46',NULL,NULL,'Hawaii',NULL,1,2),(303,'2018-03-13 09:09:46','2018-03-13 09:09:46',NULL,NULL,'Hawaii',NULL,2,2),(304,'2018-03-13 09:09:46','2018-03-13 09:09:46',NULL,NULL,'Puerto Rico',NULL,1,3),(305,'2018-03-13 09:09:46','2018-03-13 09:09:46',NULL,NULL,'Puerto Rico',NULL,2,3),(306,'2018-03-13 09:09:46','2018-03-13 09:09:46',NULL,NULL,'Zamora',NULL,1,4),(307,'2018-03-13 09:09:46','2018-03-13 09:09:46',NULL,NULL,'Zamora',NULL,2,4),(308,'2018-03-13 09:09:46','2018-03-13 09:09:46',NULL,NULL,'Vizcaya',NULL,1,5),(309,'2018-03-13 09:09:46','2018-03-13 09:09:46',NULL,NULL,'Vizcaya',NULL,2,5),(310,'2018-03-13 09:09:46','2018-03-13 09:09:46',NULL,NULL,'Albacete',NULL,1,6),(311,'2018-03-13 09:09:46','2018-03-13 09:09:46',NULL,NULL,'Albacete',NULL,2,6),(312,'2018-03-13 09:09:46','2018-03-13 09:09:46',NULL,NULL,'Lleida',NULL,1,7),(313,'2018-03-13 09:09:46','2018-03-13 09:09:46',NULL,NULL,'Lleida',NULL,2,7),(314,'2018-03-13 09:09:46','2018-03-13 09:09:46',NULL,NULL,'Quebec',NULL,1,8),(315,'2018-03-13 09:09:46','2018-03-13 09:09:46',NULL,NULL,'Québec',NULL,2,8),(316,'2018-03-13 09:09:46','2018-03-13 09:09:46',NULL,NULL,'Nordrhein-Westfalen',NULL,1,9),(317,'2018-03-13 09:09:46','2018-03-13 09:09:46',NULL,NULL,'Nordrhein-Westfalen',NULL,2,9),(318,'2018-03-13 09:09:46','2018-03-13 09:09:46',NULL,NULL,'Iowa',NULL,1,10),(319,'2018-03-13 09:09:46','2018-03-13 09:09:46',NULL,NULL,'Iowa',NULL,2,10),(320,'2018-03-13 09:09:46','2018-03-13 09:09:46',NULL,NULL,'Idaho',NULL,1,11),(321,'2018-03-13 09:09:46','2018-03-13 09:09:46',NULL,NULL,'Idaho',NULL,2,11),(322,'2018-03-13 09:09:46','2018-03-13 09:09:46',NULL,NULL,'Yukon Territory',NULL,1,12),(323,'2018-03-13 09:09:46','2018-03-13 09:09:46',NULL,NULL,'Yukon',NULL,2,12),(324,'2018-03-13 09:09:46','2018-03-13 09:09:46',NULL,NULL,'Leon',NULL,1,13),(325,'2018-03-13 09:09:46','2018-03-13 09:09:46',NULL,NULL,'Leon',NULL,2,13),(326,'2018-03-13 09:09:46','2018-03-13 09:09:46',NULL,NULL,'A Corua',NULL,1,14),(327,'2018-03-13 09:09:46','2018-03-13 09:09:46',NULL,NULL,'Castellon',NULL,1,15),(328,'2018-03-13 09:09:46','2018-03-13 09:09:46',NULL,NULL,'Castellon',NULL,2,15),(329,'2018-03-13 09:09:46','2018-03-13 09:09:46',NULL,NULL,'Las Palmas',NULL,1,16),(330,'2018-03-13 09:09:46','2018-03-13 09:09:46',NULL,NULL,'Las Palmas',NULL,2,16),(331,'2018-03-13 09:09:46','2018-03-13 09:09:46',NULL,NULL,'Pontevedra',NULL,1,17),(332,'2018-03-13 09:09:46','2018-03-13 09:09:46',NULL,NULL,'Pontevedra',NULL,2,17),(333,'2018-03-13 09:09:46','2018-03-13 09:09:46',NULL,NULL,'Armed Forces Americas',NULL,1,18),(334,'2018-03-13 09:09:46','2018-03-13 09:09:46',NULL,NULL,'Armed Forces Americas',NULL,2,18),(335,'2018-03-13 09:09:46','2018-03-13 09:09:46',NULL,NULL,'Teruel',NULL,1,19),(336,'2018-03-13 09:09:46','2018-03-13 09:09:46',NULL,NULL,'Teruel',NULL,2,19),(337,'2018-03-13 09:09:46','2018-03-13 09:09:46',NULL,NULL,'Alberta',NULL,1,20),(338,'2018-03-13 09:09:46','2018-03-13 09:09:46',NULL,NULL,'Alberta',NULL,2,20),(339,'2018-03-13 09:09:46','2018-03-13 09:09:46',NULL,NULL,'Armed Forces Canada',NULL,1,21),(340,'2018-03-13 09:09:46','2018-03-13 09:09:46',NULL,NULL,'Armed Forces Canada',NULL,2,21),(341,'2018-03-13 09:09:46','2018-03-13 09:09:46',NULL,NULL,'Illinois',NULL,1,22),(342,'2018-03-13 09:09:46','2018-03-13 09:09:46',NULL,NULL,'Illinois',NULL,2,22),(343,'2018-03-13 09:09:46','2018-03-13 09:09:46',NULL,NULL,'Armed Forces Europe',NULL,1,23),(344,'2018-03-13 09:09:46','2018-03-13 09:09:46',NULL,NULL,'Armed Forces Europe',NULL,2,23),(345,'2018-03-13 09:09:46','2018-03-13 09:09:46',NULL,NULL,'Armed Forces Africa',NULL,1,24),(346,'2018-03-13 09:09:46','2018-03-13 09:09:46',NULL,NULL,'Armed Forces Africa',NULL,2,24),(347,'2018-03-13 09:09:46','2018-03-13 09:09:46',NULL,NULL,'Indiana',NULL,1,25),(348,'2018-03-13 09:09:46','2018-03-13 09:09:46',NULL,NULL,'Indiana',NULL,2,25),(349,'2018-03-13 09:09:46','2018-03-13 09:09:46',NULL,NULL,'Aargau',NULL,1,26),(350,'2018-03-13 09:09:46','2018-03-13 09:09:46',NULL,NULL,'Aargau',NULL,2,26),(351,'2018-03-13 09:09:46','2018-03-13 09:09:46',NULL,NULL,'A Corua',NULL,2,27),(352,'2018-03-13 09:09:46','2018-03-13 09:09:46',NULL,NULL,'Appenzell Innerrhoden',NULL,1,28),(353,'2018-03-13 09:09:46','2018-03-13 09:09:46',NULL,NULL,'Appenzell Innerrhoden',NULL,2,28),(354,'2018-03-13 09:09:46','2018-03-13 09:09:46',NULL,NULL,'Alaska',NULL,1,29),(355,'2018-03-13 09:09:46','2018-03-13 09:09:46',NULL,NULL,'Alaska',NULL,2,29),(356,'2018-03-13 09:09:46','2018-03-13 09:09:46',NULL,NULL,'Caceres',NULL,1,30),(357,'2018-03-13 09:09:46','2018-03-13 09:09:46',NULL,NULL,'Caceres',NULL,2,30),(358,'2018-03-13 09:09:46','2018-03-13 09:09:46',NULL,NULL,'Segovia',NULL,1,31),(359,'2018-03-13 09:09:46','2018-03-13 09:09:46',NULL,NULL,'Segovia',NULL,2,31),(360,'2018-03-13 09:09:46','2018-03-13 09:09:46',NULL,NULL,'Alabama',NULL,1,32),(361,'2018-03-13 09:09:46','2018-03-13 09:09:46',NULL,NULL,'Alabama',NULL,2,32),(362,'2018-03-13 09:09:46','2018-03-13 09:09:46',NULL,NULL,'Armed Forces Middle East',NULL,1,33),(363,'2018-03-13 09:09:46','2018-03-13 09:09:46',NULL,NULL,'Armed Forces Middle East',NULL,2,33),(364,'2018-03-13 09:09:46','2018-03-13 09:09:46',NULL,NULL,'Zug',NULL,1,34),(365,'2018-03-13 09:09:46','2018-03-13 09:09:46',NULL,NULL,'Zug',NULL,2,34),(366,'2018-03-13 09:09:46','2018-03-13 09:09:46',NULL,NULL,'Malaga',NULL,1,35),(367,'2018-03-13 09:09:46','2018-03-13 09:09:46',NULL,NULL,'Malaga',NULL,2,35),(368,'2018-03-13 09:09:46','2018-03-13 09:09:46',NULL,NULL,'Zrich',NULL,1,36),(369,'2018-03-13 09:09:46','2018-03-13 09:09:46',NULL,NULL,'Zrich',NULL,2,36),(370,'2018-03-13 09:09:46','2018-03-13 09:09:46',NULL,NULL,'La Rioja',NULL,1,37),(371,'2018-03-13 09:09:46','2018-03-13 09:09:46',NULL,NULL,'La Rioja',NULL,2,37),(372,'2018-03-13 09:09:46','2018-03-13 09:09:46',NULL,NULL,'Armed Forces Pacific',NULL,1,38),(373,'2018-03-13 09:09:46','2018-03-13 09:09:46',NULL,NULL,'Armed Forces Pacific',NULL,2,38),(374,'2018-03-13 09:09:47','2018-03-13 09:09:47',NULL,NULL,'Melilla',NULL,1,39),(375,'2018-03-13 09:09:47','2018-03-13 09:09:47',NULL,NULL,'Melilla',NULL,2,39),(376,'2018-03-13 09:09:47','2018-03-13 09:09:47',NULL,NULL,'Arkansas',NULL,1,40),(377,'2018-03-13 09:09:47','2018-03-13 09:09:47',NULL,NULL,'Arkansas',NULL,2,40),(378,'2018-03-13 09:09:47','2018-03-13 09:09:47',NULL,NULL,'American Samoa',NULL,1,41),(379,'2018-03-13 09:09:47','2018-03-13 09:09:47',NULL,NULL,'American Samoa',NULL,2,41),(380,'2018-03-13 09:09:47','2018-03-13 09:09:47',NULL,NULL,'New South Wales',NULL,1,42),(381,'2018-03-13 09:09:47','2018-03-13 09:09:47',NULL,NULL,'Nouvelle-Galles du Sud',NULL,2,42),(382,'2018-03-13 09:09:47','2018-03-13 09:09:47',NULL,NULL,'Madrid',NULL,1,43),(383,'2018-03-13 09:09:47','2018-03-13 09:09:47',NULL,NULL,'Madrid',NULL,2,43),(384,'2018-03-13 09:09:47','2018-03-13 09:09:47',NULL,NULL,'Rhode Island',NULL,1,44),(385,'2018-03-13 09:09:47','2018-03-13 09:09:47',NULL,NULL,'Rhode Island',NULL,2,44),(386,'2018-03-13 09:09:47','2018-03-13 09:09:47',NULL,NULL,'Arizona',NULL,1,45),(387,'2018-03-13 09:09:47','2018-03-13 09:09:47',NULL,NULL,'Arizona',NULL,2,45),(388,'2018-03-13 09:09:47','2018-03-13 09:09:47',NULL,NULL,'Ceuta',NULL,1,46),(389,'2018-03-13 09:09:47','2018-03-13 09:09:47',NULL,NULL,'Ceuta',NULL,2,46),(390,'2018-03-13 09:09:47','2018-03-13 09:09:47',NULL,NULL,'British Columbia',NULL,1,47),(391,'2018-03-13 09:09:47','2018-03-13 09:09:47',NULL,NULL,'Columbie Britanique',NULL,2,47),(392,'2018-03-13 09:09:47','2018-03-13 09:09:47',NULL,NULL,'Huelva',NULL,1,48),(393,'2018-03-13 09:09:47','2018-03-13 09:09:47',NULL,NULL,'Huelva',NULL,2,48),(394,'2018-03-13 09:09:47','2018-03-13 09:09:47',NULL,NULL,'Bern',NULL,1,49),(395,'2018-03-13 09:09:47','2018-03-13 09:09:47',NULL,NULL,'Bern',NULL,2,49),(396,'2018-03-13 09:09:47','2018-03-13 09:09:47',NULL,NULL,'Huesca',NULL,1,50),(397,'2018-03-13 09:09:47','2018-03-13 09:09:47',NULL,NULL,'Huesca',NULL,2,50),(398,'2018-03-13 09:09:47','2018-03-13 09:09:47',NULL,NULL,'Appenzell Ausserrhoden',NULL,1,51),(399,'2018-03-13 09:09:47','2018-03-13 09:09:47',NULL,NULL,'Appenzell Ausserrhoden',NULL,2,51),(400,'2018-03-13 09:09:47','2018-03-13 09:09:47',NULL,NULL,'Basel-Landschaft',NULL,1,52),(401,'2018-03-13 09:09:47','2018-03-13 09:09:47',NULL,NULL,'Basel-Landschaft',NULL,2,52),(402,'2018-03-13 09:09:47','2018-03-13 09:09:47',NULL,NULL,'Jura',NULL,1,53),(403,'2018-03-13 09:09:47','2018-03-13 09:09:47',NULL,NULL,'Jura',NULL,2,53),(404,'2018-03-13 09:09:47','2018-03-13 09:09:47',NULL,NULL,'Asturias',NULL,1,54),(405,'2018-03-13 09:09:47','2018-03-13 09:09:47',NULL,NULL,'Asturias',NULL,2,54),(406,'2018-03-13 09:09:47','2018-03-13 09:09:47',NULL,NULL,'South Australia',NULL,1,55),(407,'2018-03-13 09:09:47','2018-03-13 09:09:47',NULL,NULL,'Australie-Mridionale',NULL,2,55),(408,'2018-03-13 09:09:47','2018-03-13 09:09:47',NULL,NULL,'Salzburg',NULL,1,56),(409,'2018-03-13 09:09:47','2018-03-13 09:09:47',NULL,NULL,'Salzburg',NULL,2,56),(410,'2018-03-13 09:09:47','2018-03-13 09:09:47',NULL,NULL,'Tirol',NULL,1,57),(411,'2018-03-13 09:09:47','2018-03-13 09:09:47',NULL,NULL,'Tirol',NULL,2,57),(412,'2018-03-13 09:09:47','2018-03-13 09:09:47',NULL,NULL,'South Carolina',NULL,1,58),(413,'2018-03-13 09:09:47','2018-03-13 09:09:47',NULL,NULL,'Caroline du Sud',NULL,2,58),(414,'2018-03-13 09:09:47','2018-03-13 09:09:47',NULL,NULL,'Thringen',NULL,1,59),(415,'2018-03-13 09:09:47','2018-03-13 09:09:47',NULL,NULL,'Thringen',NULL,2,59),(416,'2018-03-13 09:09:47','2018-03-13 09:09:47',NULL,NULL,'South Dakota',NULL,1,60),(417,'2018-03-13 09:09:47','2018-03-13 09:09:47',NULL,NULL,'Dakota du Sud',NULL,2,60),(418,'2018-03-13 09:09:47','2018-03-13 09:09:47',NULL,NULL,'Basel-Stadt',NULL,1,61),(419,'2018-03-13 09:09:47','2018-03-13 09:09:47',NULL,NULL,'Basel-Stadt',NULL,2,61),(420,'2018-03-13 09:09:47','2018-03-13 09:09:47',NULL,NULL,'Cordoba',NULL,1,62),(421,'2018-03-13 09:09:47','2018-03-13 09:09:47',NULL,NULL,'Cordoba',NULL,2,62),(422,'2018-03-13 09:09:47','2018-03-13 09:09:47',NULL,NULL,'Tarragona',NULL,1,63),(423,'2018-03-13 09:09:47','2018-03-13 09:09:47',NULL,NULL,'Tarragona',NULL,2,63),(424,'2018-03-13 09:09:47','2018-03-13 09:09:47',NULL,NULL,'Valladolid',NULL,1,64),(425,'2018-03-13 09:09:47','2018-03-13 09:09:47',NULL,NULL,'Valladolid',NULL,2,64),(426,'2018-03-13 09:09:47','2018-03-13 09:09:47',NULL,NULL,'St. Gallen',NULL,1,65),(427,'2018-03-13 09:09:47','2018-03-13 09:09:47',NULL,NULL,'St. Gallen',NULL,2,65),(428,'2018-03-13 09:09:47','2018-03-13 09:09:47',NULL,NULL,'Schaffhausen',NULL,1,66),(429,'2018-03-13 09:09:47','2018-03-13 09:09:47',NULL,NULL,'Schaffhausen',NULL,2,66),(430,'2018-03-13 09:09:47','2018-03-13 09:09:47',NULL,NULL,'Western Australia',NULL,1,67),(431,'2018-03-13 09:09:47','2018-03-13 09:09:47',NULL,NULL,'Australie-Occidentale',NULL,2,67),(432,'2018-03-13 09:09:47','2018-03-13 09:09:47',NULL,NULL,'Saskatchewan',NULL,1,68),(433,'2018-03-13 09:09:47','2018-03-13 09:09:47',NULL,NULL,'Saskatchewan',NULL,2,68),(434,'2018-03-13 09:09:47','2018-03-13 09:09:47',NULL,NULL,'Niedersachsen',NULL,1,69),(435,'2018-03-13 09:09:47','2018-03-13 09:09:47',NULL,NULL,'Niedersachsen',NULL,2,69),(436,'2018-03-13 09:09:47','2018-03-13 09:09:47',NULL,NULL,'Solothurn',NULL,1,70),(437,'2018-03-13 09:09:47','2018-03-13 09:09:47',NULL,NULL,'Solothurn',NULL,2,70),(438,'2018-03-13 09:09:47','2018-03-13 09:09:47',NULL,NULL,'California',NULL,1,71),(439,'2018-03-13 09:09:47','2018-03-13 09:09:47',NULL,NULL,'Californie',NULL,2,71),(440,'2018-03-13 09:09:47','2018-03-13 09:09:47',NULL,NULL,'Northern Territory',NULL,1,72),(441,'2018-03-13 09:09:47','2018-03-13 09:09:47',NULL,NULL,'Territoire du Nord',NULL,2,72),(442,'2018-03-13 09:09:47','2018-03-13 09:09:47',NULL,NULL,'Steiermark',NULL,1,73),(443,'2018-03-13 09:09:47','2018-03-13 09:09:47',NULL,NULL,'Steiermark',NULL,2,73),(444,'2018-03-13 09:09:47','2018-03-13 09:09:47',NULL,NULL,'Katen',NULL,1,74),(445,'2018-03-13 09:09:47','2018-03-13 09:09:47',NULL,NULL,'Karten',NULL,2,74),(446,'2018-03-13 09:09:47','2018-03-13 09:09:47',NULL,NULL,'Jaen',NULL,1,75),(447,'2018-03-13 09:09:47','2018-03-13 09:09:47',NULL,NULL,'Jaen',NULL,2,75),(448,'2018-03-13 09:09:47','2018-03-13 09:09:47',NULL,NULL,'Ciudad Real',NULL,1,76),(449,'2018-03-13 09:09:47','2018-03-13 09:09:47',NULL,NULL,'Ciudad Real',NULL,2,76),(450,'2018-03-13 09:09:47','2018-03-13 09:09:47',NULL,NULL,'Schwyz',NULL,1,77),(451,'2018-03-13 09:09:47','2018-03-13 09:09:47',NULL,NULL,'Schwyz',NULL,2,77),(452,'2018-03-13 09:09:47','2018-03-13 09:09:47',NULL,NULL,'Alava',NULL,1,78),(453,'2018-03-13 09:09:47','2018-03-13 09:09:47',NULL,NULL,'Alava',NULL,2,78),(454,'2018-03-13 09:09:47','2018-03-13 09:09:47',NULL,NULL,'Kansas',NULL,1,79),(455,'2018-03-13 09:09:47','2018-03-13 09:09:47',NULL,NULL,'Kansas',NULL,2,79),(456,'2018-03-13 09:09:47','2018-03-13 09:09:47',NULL,NULL,'Colorado',NULL,1,80),(457,'2018-03-13 09:09:47','2018-03-13 09:09:47',NULL,NULL,'Colorado',NULL,2,80),(458,'2018-03-13 09:09:47','2018-03-13 09:09:47',NULL,NULL,'Kentucky',NULL,1,81),(459,'2018-03-13 09:09:47','2018-03-13 09:09:47',NULL,NULL,'Kentucky',NULL,2,81),(460,'2018-03-13 09:09:47','2018-03-13 09:09:47',NULL,NULL,'Berlin',NULL,1,82),(461,'2018-03-13 09:09:47','2018-03-13 09:09:47',NULL,NULL,'Berlin',NULL,2,82),(462,'2018-03-13 09:09:47','2018-03-13 09:09:47',NULL,NULL,'Connecticut',NULL,1,83),(463,'2018-03-13 09:09:47','2018-03-13 09:09:47',NULL,NULL,'Connecticut',NULL,2,83),(464,'2018-03-13 09:09:47','2018-03-13 09:09:47',NULL,NULL,'Australian Capital Territory',NULL,1,84),(465,'2018-03-13 09:09:47','2018-03-13 09:09:47',NULL,NULL,'Territoire de la capitale australienne',NULL,2,84),(466,'2018-03-13 09:09:47','2018-03-13 09:09:47',NULL,NULL,'Thurgau',NULL,1,85),(467,'2018-03-13 09:09:47','2018-03-13 09:09:47',NULL,NULL,'Thurgau',NULL,2,85),(468,'2018-03-13 09:09:47','2018-03-13 09:09:47',NULL,NULL,'Louisiana',NULL,1,86),(469,'2018-03-13 09:09:47','2018-03-13 09:09:47',NULL,NULL,'Louisiane',NULL,2,86),(470,'2018-03-13 09:09:47','2018-03-13 09:09:47',NULL,NULL,'Hamburg',NULL,1,87),(471,'2018-03-13 09:09:47','2018-03-13 09:09:47',NULL,NULL,'Hamburg',NULL,2,87),(472,'2018-03-13 09:09:47','2018-03-13 09:09:47',NULL,NULL,'Tessin',NULL,1,88),(473,'2018-03-13 09:09:47','2018-03-13 09:09:47',NULL,NULL,'Tessin',NULL,2,88),(474,'2018-03-13 09:09:47','2018-03-13 09:09:47',NULL,NULL,'Lugo',NULL,1,89),(475,'2018-03-13 09:09:47','2018-03-13 09:09:47',NULL,NULL,'Lugo',NULL,2,89),(476,'2018-03-13 09:09:47','2018-03-13 09:09:47',NULL,NULL,'Neuenburg',NULL,1,90),(477,'2018-03-13 09:09:47','2018-03-13 09:09:47',NULL,NULL,'Neuenburg',NULL,2,90),(478,'2018-03-13 09:09:47','2018-03-13 09:09:47',NULL,NULL,'Tennessee',NULL,1,91),(479,'2018-03-13 09:09:47','2018-03-13 09:09:47',NULL,NULL,'Tennessee',NULL,2,91),(480,'2018-03-13 09:09:48','2018-03-13 09:09:48',NULL,NULL,'Toledo',NULL,1,92),(481,'2018-03-13 09:09:48','2018-03-13 09:09:48',NULL,NULL,'Toledo',NULL,2,92),(482,'2018-03-13 09:09:48','2018-03-13 09:09:48',NULL,NULL,'District of Columbia',NULL,1,93),(483,'2018-03-13 09:09:48','2018-03-13 09:09:48',NULL,NULL,'District de Columbia',NULL,2,93),(484,'2018-03-13 09:09:48','2018-03-13 09:09:48',NULL,NULL,'Palencia',NULL,1,94),(485,'2018-03-13 09:09:48','2018-03-13 09:09:48',NULL,NULL,'Palencia',NULL,2,94),(486,'2018-03-13 09:09:48','2018-03-13 09:09:48',NULL,NULL,'Delaware',NULL,1,95),(487,'2018-03-13 09:09:48','2018-03-13 09:09:48',NULL,NULL,'Delaware',NULL,2,95),(488,'2018-03-13 09:09:48','2018-03-13 09:09:48',NULL,NULL,'Texas',NULL,1,96),(489,'2018-03-13 09:09:48','2018-03-13 09:09:48',NULL,NULL,'Texas',NULL,2,96),(490,'2018-03-13 09:09:48','2018-03-13 09:09:48',NULL,NULL,'Tasmania',NULL,1,97),(491,'2018-03-13 09:09:48','2018-03-13 09:09:48',NULL,NULL,'Tasmanie',NULL,2,97),(492,'2018-03-13 09:09:48','2018-03-13 09:09:48',NULL,NULL,'Queensland',NULL,1,98),(493,'2018-03-13 09:09:48','2018-03-13 09:09:48',NULL,NULL,'Queensland',NULL,2,98),(494,'2018-03-13 09:09:48','2018-03-13 09:09:48',NULL,NULL,'Luzern',NULL,1,99),(495,'2018-03-13 09:09:48','2018-03-13 09:09:48',NULL,NULL,'Luzern',NULL,2,99),(496,'2018-03-13 09:09:48','2018-03-13 09:09:48',NULL,NULL,'Burgos',NULL,1,100),(497,'2018-03-13 09:09:48','2018-03-13 09:09:48',NULL,NULL,'Burgos',NULL,2,100),(498,'2018-03-13 09:09:48','2018-03-13 09:09:48',NULL,NULL,'Cadiz',NULL,1,101),(499,'2018-03-13 09:09:48','2018-03-13 09:09:48',NULL,NULL,'Cadiz',NULL,2,101),(500,'2018-03-13 09:09:48','2018-03-13 09:09:48',NULL,NULL,'Santa Cruz de Tenerife',NULL,1,102),(501,'2018-03-13 09:09:48','2018-03-13 09:09:48',NULL,NULL,'Santa Cruz de Tenerife',NULL,2,102),(502,'2018-03-13 09:09:48','2018-03-13 09:09:48',NULL,NULL,'Massachusetts',NULL,1,103),(503,'2018-03-13 09:09:48','2018-03-13 09:09:48',NULL,NULL,'Massachusetts',NULL,2,103),(504,'2018-03-13 09:09:48','2018-03-13 09:09:48',NULL,NULL,'Manitoba',NULL,1,104),(505,'2018-03-13 09:09:48','2018-03-13 09:09:48',NULL,NULL,'Manitoba',NULL,2,104),(506,'2018-03-13 09:09:48','2018-03-13 09:09:48',NULL,NULL,'Maryland',NULL,1,105),(507,'2018-03-13 09:09:48','2018-03-13 09:09:48',NULL,NULL,'Maryland',NULL,2,105),(508,'2018-03-13 09:09:48','2018-03-13 09:09:48',NULL,NULL,'Girona',NULL,1,106),(509,'2018-03-13 09:09:48','2018-03-13 09:09:48',NULL,NULL,'Girona',NULL,2,106),(510,'2018-03-13 09:09:48','2018-03-13 09:09:48',NULL,NULL,'Maine',NULL,1,107),(511,'2018-03-13 09:09:48','2018-03-13 09:09:48',NULL,NULL,'Maine',NULL,2,107),(512,'2018-03-13 09:09:48','2018-03-13 09:09:48',NULL,NULL,'Alicante',NULL,1,108),(513,'2018-03-13 09:09:48','2018-03-13 09:09:48',NULL,NULL,'Alicante',NULL,2,108),(514,'2018-03-13 09:09:48','2018-03-13 09:09:48',NULL,NULL,'Guadalajara',NULL,1,109),(515,'2018-03-13 09:09:48','2018-03-13 09:09:48',NULL,NULL,'Guadalajara',NULL,2,109),(516,'2018-03-13 09:09:48','2018-03-13 09:09:48',NULL,NULL,'Cantabria',NULL,1,110),(517,'2018-03-13 09:09:48','2018-03-13 09:09:48',NULL,NULL,'Cantabria',NULL,2,110),(518,'2018-03-13 09:09:48','2018-03-13 09:09:48',NULL,NULL,'Marshall Islands',NULL,1,111),(519,'2018-03-13 09:09:48','2018-03-13 09:09:48',NULL,NULL,'Marshall Islands',NULL,2,111),(520,'2018-03-13 09:09:48','2018-03-13 09:09:48',NULL,NULL,'Michigan',NULL,1,112),(521,'2018-03-13 09:09:48','2018-03-13 09:09:48',NULL,NULL,'Michigan',NULL,2,112),(522,'2018-03-13 09:09:48','2018-03-13 09:09:48',NULL,NULL,'Uri',NULL,1,113),(523,'2018-03-13 09:09:48','2018-03-13 09:09:48',NULL,NULL,'Uri',NULL,2,113),(524,'2018-03-13 09:09:48','2018-03-13 09:09:48',NULL,NULL,'Utah',NULL,1,114),(525,'2018-03-13 09:09:48','2018-03-13 09:09:48',NULL,NULL,'Utah',NULL,2,114),(526,'2018-03-13 09:09:48','2018-03-13 09:09:48',NULL,NULL,'Minnesota',NULL,1,115),(527,'2018-03-13 09:09:48','2018-03-13 09:09:48',NULL,NULL,'Minnesota',NULL,2,115),(528,'2018-03-13 09:09:48','2018-03-13 09:09:48',NULL,NULL,'Missouri',NULL,1,116),(529,'2018-03-13 09:09:48','2018-03-13 09:09:48',NULL,NULL,'Missouri',NULL,2,116),(530,'2018-03-13 09:09:48','2018-03-13 09:09:48',NULL,NULL,'Northern Mariana Islands',NULL,1,117),(531,'2018-03-13 09:09:48','2018-03-13 09:09:48',NULL,NULL,'Northern Mariana Islands',NULL,2,117),(532,'2018-03-13 09:09:48','2018-03-13 09:09:48',NULL,NULL,'Barcelona',NULL,1,118),(533,'2018-03-13 09:09:48','2018-03-13 09:09:48',NULL,NULL,'Barcelona',NULL,2,118),(534,'2018-03-13 09:09:48','2018-03-13 09:09:48',NULL,NULL,'Mississippi',NULL,1,119),(535,'2018-03-13 09:09:48','2018-03-13 09:09:48',NULL,NULL,'Mississippi',NULL,2,119),(536,'2018-03-13 09:09:48','2018-03-13 09:09:48',NULL,NULL,'Montana',NULL,1,120),(537,'2018-03-13 09:09:48','2018-03-13 09:09:48',NULL,NULL,'Montana',NULL,2,120),(538,'2018-03-13 09:09:48','2018-03-13 09:09:48',NULL,NULL,'Badajoz',NULL,1,121),(539,'2018-03-13 09:09:48','2018-03-13 09:09:48',NULL,NULL,'Badajoz',NULL,2,121),(540,'2018-03-13 09:09:48','2018-03-13 09:09:48',NULL,NULL,'Mecklenburg-Vorpommern',NULL,1,122),(541,'2018-03-13 09:09:48','2018-03-13 09:09:48',NULL,NULL,'Mecklenburg-Vorpommern',NULL,2,122),(542,'2018-03-13 09:09:48','2018-03-13 09:09:48',NULL,NULL,'Virginia',NULL,1,123),(543,'2018-03-13 09:09:48','2018-03-13 09:09:48',NULL,NULL,'Virginie',NULL,2,123),(544,'2018-03-13 09:09:48','2018-03-13 09:09:48',NULL,NULL,'Voralberg',NULL,1,124),(545,'2018-03-13 09:09:48','2018-03-13 09:09:48',NULL,NULL,'Voralberg',NULL,2,124),(546,'2018-03-13 09:09:48','2018-03-13 09:09:48',NULL,NULL,'Cuenca',NULL,1,125),(547,'2018-03-13 09:09:48','2018-03-13 09:09:48',NULL,NULL,'Cuenca',NULL,2,125),(548,'2018-03-13 09:09:48','2018-03-13 09:09:48',NULL,NULL,'Wien',NULL,1,126),(549,'2018-03-13 09:09:48','2018-03-13 09:09:48',NULL,NULL,'Wien',NULL,2,126),(550,'2018-03-13 09:09:48','2018-03-13 09:09:48',NULL,NULL,'Waadt',NULL,1,127),(551,'2018-03-13 09:09:48','2018-03-13 09:09:48',NULL,NULL,'Waadt',NULL,2,127),(552,'2018-03-13 09:09:48','2018-03-13 09:09:48',NULL,NULL,'Sevilla',NULL,1,128),(553,'2018-03-13 09:09:48','2018-03-13 09:09:48',NULL,NULL,'Sevilla',NULL,2,128),(554,'2018-03-13 09:09:48','2018-03-13 09:09:48',NULL,NULL,'Virgin Islands',NULL,1,129),(555,'2018-03-13 09:09:48','2018-03-13 09:09:48',NULL,NULL,'Virgin Islands',NULL,2,129),(556,'2018-03-13 09:09:48','2018-03-13 09:09:48',NULL,NULL,'Zaragoza',NULL,1,130),(557,'2018-03-13 09:09:48','2018-03-13 09:09:48',NULL,NULL,'Zaragoza',NULL,2,130),(558,'2018-03-13 09:09:48','2018-03-13 09:09:48',NULL,NULL,'New Brunswick',NULL,1,131),(559,'2018-03-13 09:09:48','2018-03-13 09:09:48',NULL,NULL,'Nouveau Brunswick',NULL,2,131),(560,'2018-03-13 09:09:48','2018-03-13 09:09:48',NULL,NULL,'Sachsen-Anhalt',NULL,1,132),(561,'2018-03-13 09:09:48','2018-03-13 09:09:48',NULL,NULL,'Sachsen-Anhalt',NULL,2,132),(562,'2018-03-13 09:09:48','2018-03-13 09:09:48',NULL,NULL,'North Carolina',NULL,1,133),(563,'2018-03-13 09:09:48','2018-03-13 09:09:48',NULL,NULL,'Caroline du Nord',NULL,2,133),(564,'2018-03-13 09:09:49','2018-03-13 09:09:49',NULL,NULL,'North Dakota',NULL,1,134),(565,'2018-03-13 09:09:49','2018-03-13 09:09:49',NULL,NULL,'Dakota du Nord',NULL,2,134),(566,'2018-03-13 09:09:49','2018-03-13 09:09:49',NULL,NULL,'Nebraska',NULL,1,135),(567,'2018-03-13 09:09:49','2018-03-13 09:09:49',NULL,NULL,'Nebraska',NULL,2,135),(568,'2018-03-13 09:09:49','2018-03-13 09:09:49',NULL,NULL,'Newfoundland - Labrador',NULL,1,136),(569,'2018-03-13 09:09:49','2018-03-13 09:09:49',NULL,NULL,'Terre-Neuve - Labrador',NULL,2,136),(570,'2018-03-13 09:09:49','2018-03-13 09:09:49',NULL,NULL,'New Hampshire',NULL,1,137),(571,'2018-03-13 09:09:49','2018-03-13 09:09:49',NULL,NULL,'Nouveau Hampshire',NULL,2,137),(572,'2018-03-13 09:09:49','2018-03-13 09:09:49',NULL,NULL,'New Jersey',NULL,1,138),(573,'2018-03-13 09:09:49','2018-03-13 09:09:49',NULL,NULL,'New Jersey',NULL,2,138),(574,'2018-03-13 09:09:49','2018-03-13 09:09:49',NULL,NULL,'Wallis',NULL,1,139),(575,'2018-03-13 09:09:49','2018-03-13 09:09:49',NULL,NULL,'Wallis',NULL,2,139),(576,'2018-03-13 09:09:49','2018-03-13 09:09:49',NULL,NULL,'Vermont',NULL,1,140),(577,'2018-03-13 09:09:49','2018-03-13 09:09:49',NULL,NULL,'Vermont',NULL,2,140),(578,'2018-03-13 09:09:49','2018-03-13 09:09:49',NULL,NULL,'New Mexico',NULL,1,141),(579,'2018-03-13 09:09:49','2018-03-13 09:09:49',NULL,NULL,'Nouveau Mexique',NULL,2,141),(580,'2018-03-13 09:09:49','2018-03-13 09:09:49',NULL,NULL,'Niederosterreich',NULL,1,142),(581,'2018-03-13 09:09:49','2018-03-13 09:09:49',NULL,NULL,'Niederosterreich',NULL,2,142),(582,'2018-03-13 09:09:49','2018-03-13 09:09:49',NULL,NULL,'Sachsen',NULL,1,143),(583,'2018-03-13 09:09:49','2018-03-13 09:09:49',NULL,NULL,'Sachsen',NULL,2,143),(584,'2018-03-13 09:09:49','2018-03-13 09:09:49',NULL,NULL,'Nova Scotia',NULL,1,144),(585,'2018-03-13 09:09:49','2018-03-13 09:09:49',NULL,NULL,'Nouvelle Écosse',NULL,2,144),(586,'2018-03-13 09:09:49','2018-03-13 09:09:49',NULL,NULL,'Saarland',NULL,1,145),(587,'2018-03-13 09:09:49','2018-03-13 09:09:49',NULL,NULL,'Saarland',NULL,2,145),(588,'2018-03-13 09:09:49','2018-03-13 09:09:49',NULL,NULL,'Florida',NULL,1,146),(589,'2018-03-13 09:09:49','2018-03-13 09:09:49',NULL,NULL,'Floride',NULL,2,146),(590,'2018-03-13 09:09:49','2018-03-13 09:09:49',NULL,NULL,'Northwest Territories',NULL,1,147),(591,'2018-03-13 09:09:49','2018-03-13 09:09:49',NULL,NULL,'Territores du Nord-Ouest',NULL,2,147),(592,'2018-03-13 09:09:49','2018-03-13 09:09:49',NULL,NULL,'Federated States Of Micronesia',NULL,1,148),(593,'2018-03-13 09:09:49','2018-03-13 09:09:49',NULL,NULL,'Federated States Of Micronesia',NULL,2,148),(594,'2018-03-13 09:09:49','2018-03-13 09:09:49',NULL,NULL,'Nunavut',NULL,1,149),(595,'2018-03-13 09:09:49','2018-03-13 09:09:49',NULL,NULL,'Nunavut',NULL,2,149),(596,'2018-03-13 09:09:49','2018-03-13 09:09:49',NULL,NULL,'Nevada',NULL,1,150),(597,'2018-03-13 09:09:49','2018-03-13 09:09:49',NULL,NULL,'Nevada',NULL,2,150),(598,'2018-03-13 09:09:49','2018-03-13 09:09:49',NULL,NULL,'Nidwalden',NULL,1,151),(599,'2018-03-13 09:09:49','2018-03-13 09:09:49',NULL,NULL,'Nidwalden',NULL,2,151),(600,'2018-03-13 09:09:49','2018-03-13 09:09:49',NULL,NULL,'Washington',NULL,1,152),(601,'2018-03-13 09:09:49','2018-03-13 09:09:49',NULL,NULL,'Washington',NULL,2,152),(602,'2018-03-13 09:09:49','2018-03-13 09:09:49',NULL,NULL,'New York',NULL,1,153),(603,'2018-03-13 09:09:49','2018-03-13 09:09:49',NULL,NULL,'New York',NULL,2,153),(604,'2018-03-13 09:09:49','2018-03-13 09:09:49',NULL,NULL,'Granada',NULL,1,154),(605,'2018-03-13 09:09:49','2018-03-13 09:09:49',NULL,NULL,'Granada',NULL,2,154),(606,'2018-03-13 09:09:49','2018-03-13 09:09:49',NULL,NULL,'Soria',NULL,1,155),(607,'2018-03-13 09:09:49','2018-03-13 09:09:49',NULL,NULL,'Soria',NULL,2,155),(608,'2018-03-13 09:09:49','2018-03-13 09:09:49',NULL,NULL,'Freiburg',NULL,1,156),(609,'2018-03-13 09:09:49','2018-03-13 09:09:49',NULL,NULL,'Freiburg',NULL,2,156),(610,'2018-03-13 09:09:49','2018-03-13 09:09:49',NULL,NULL,'Rheinland-Pfalz',NULL,1,157),(611,'2018-03-13 09:09:49','2018-03-13 09:09:49',NULL,NULL,'Rheinland-Pfalz',NULL,2,157),(612,'2018-03-13 09:09:49','2018-03-13 09:09:49',NULL,NULL,'Ourense',NULL,1,158),(613,'2018-03-13 09:09:49','2018-03-13 09:09:49',NULL,NULL,'Ourense',NULL,2,158),(614,'2018-03-13 09:09:49','2018-03-13 09:09:49',NULL,NULL,'Wisconsin',NULL,1,159),(615,'2018-03-13 09:09:49','2018-03-13 09:09:49',NULL,NULL,'Wisconsin',NULL,2,159),(616,'2018-03-13 09:09:49','2018-03-13 09:09:49',NULL,NULL,'Ohio',NULL,1,160),(617,'2018-03-13 09:09:49','2018-03-13 09:09:49',NULL,NULL,'Ohio',NULL,2,160),(618,'2018-03-13 09:09:49','2018-03-13 09:09:49',NULL,NULL,'Georgia',NULL,1,161),(619,'2018-03-13 09:09:49','2018-03-13 09:09:49',NULL,NULL,'Georgie',NULL,2,161),(620,'2018-03-13 09:09:49','2018-03-13 09:09:49',NULL,NULL,'Murcia',NULL,1,162),(621,'2018-03-13 09:09:49','2018-03-13 09:09:49',NULL,NULL,'Murcia',NULL,2,162),(622,'2018-03-13 09:09:49','2018-03-13 09:09:49',NULL,NULL,'Oklahoma',NULL,1,163),(623,'2018-03-13 09:09:49','2018-03-13 09:09:49',NULL,NULL,'Oklahoma',NULL,2,163),(624,'2018-03-13 09:09:49','2018-03-13 09:09:49',NULL,NULL,'Genf',NULL,1,164),(625,'2018-03-13 09:09:49','2018-03-13 09:09:49',NULL,NULL,'Genf',NULL,2,164),(626,'2018-03-13 09:09:49','2018-03-13 09:09:49',NULL,NULL,'West Virginia',NULL,1,165),(627,'2018-03-13 09:09:49','2018-03-13 09:09:49',NULL,NULL,'West Virginia',NULL,2,165),(628,'2018-03-13 09:09:49','2018-03-13 09:09:49',NULL,NULL,'Ontario',NULL,1,166),(629,'2018-03-13 09:09:49','2018-03-13 09:09:49',NULL,NULL,'Ontario',NULL,2,166),(630,'2018-03-13 09:09:49','2018-03-13 09:09:49',NULL,NULL,'Oberosterreich',NULL,1,167),(631,'2018-03-13 09:09:49','2018-03-13 09:09:49',NULL,NULL,'Oberosterreich',NULL,2,167),(632,'2018-03-13 09:09:49','2018-03-13 09:09:49',NULL,NULL,'Wyoming',NULL,1,168),(633,'2018-03-13 09:09:49','2018-03-13 09:09:49',NULL,NULL,'Wyoming',NULL,2,168),(634,'2018-03-13 09:09:49','2018-03-13 09:09:49',NULL,NULL,'Burgenland',NULL,1,169),(635,'2018-03-13 09:09:49','2018-03-13 09:09:49',NULL,NULL,'Burgenland',NULL,2,169),(636,'2018-03-13 09:09:49','2018-03-13 09:09:49',NULL,NULL,'Avila',NULL,1,170),(637,'2018-03-13 09:09:49','2018-03-13 09:09:49',NULL,NULL,'Avila',NULL,2,170),(638,'2018-03-13 09:09:49','2018-03-13 09:09:49',NULL,NULL,'Oregon',NULL,1,171),(639,'2018-03-13 09:09:49','2018-03-13 09:09:49',NULL,NULL,'Oregon',NULL,2,171),(640,'2018-03-13 09:09:49','2018-03-13 09:09:49',NULL,NULL,'Salamanca',NULL,1,172),(641,'2018-03-13 09:09:49','2018-03-13 09:09:49',NULL,NULL,'Salamanca',NULL,2,172),(642,'2018-03-13 09:09:49','2018-03-13 09:09:49',NULL,NULL,'Glarus',NULL,1,173),(643,'2018-03-13 09:09:49','2018-03-13 09:09:49',NULL,NULL,'Glarus',NULL,2,173),(644,'2018-03-13 09:09:49','2018-03-13 09:09:49',NULL,NULL,'Baleares',NULL,1,174),(645,'2018-03-13 09:09:50','2018-03-13 09:09:50',NULL,NULL,'Baleares',NULL,2,174),(646,'2018-03-13 09:09:50','2018-03-13 09:09:50',NULL,NULL,'Obwalden',NULL,1,175),(647,'2018-03-13 09:09:50','2018-03-13 09:09:50',NULL,NULL,'Obwalden',NULL,2,175),(648,'2018-03-13 09:09:50','2018-03-13 09:09:50',NULL,NULL,'Graubnden',NULL,1,176),(649,'2018-03-13 09:09:50','2018-03-13 09:09:50',NULL,NULL,'Graubnden',NULL,2,176),(650,'2018-03-13 09:09:50','2018-03-13 09:09:50',NULL,NULL,'Guam',NULL,1,177),(651,'2018-03-13 09:09:50','2018-03-13 09:09:50',NULL,NULL,'Guam',NULL,2,177),(652,'2018-03-13 09:09:50','2018-03-13 09:09:50',NULL,NULL,'Pennsylvania',NULL,1,178),(653,'2018-03-13 09:09:50','2018-03-13 09:09:50',NULL,NULL,'Pennsylvanie',NULL,2,178),(654,'2018-03-13 09:09:50','2018-03-13 09:09:50',NULL,NULL,'Victoria',NULL,1,179),(655,'2018-03-13 09:09:50','2018-03-13 09:09:50',NULL,NULL,'Victoria',NULL,2,179),(656,'2018-03-13 09:09:50','2018-03-13 09:09:50',NULL,NULL,'Bremen',NULL,1,180),(657,'2018-03-13 09:09:50','2018-03-13 09:09:50',NULL,NULL,'Bremen',NULL,2,180),(658,'2018-03-13 09:09:50','2018-03-13 09:09:50',NULL,NULL,'Prince Edward Island',NULL,1,181),(659,'2018-03-13 09:09:50','2018-03-13 09:09:50',NULL,NULL,'Île-du-Prince-Édouard',NULL,2,181),(660,'2018-03-13 09:09:50','2018-03-13 09:09:50',NULL,NULL,'Brandenburg',NULL,1,182),(661,'2018-03-13 09:09:50','2018-03-13 09:09:50',NULL,NULL,'Brandenburg',NULL,2,182),(662,'2018-03-13 09:09:50','2018-03-13 09:09:50',NULL,NULL,'Hessen',NULL,1,183),(663,'2018-03-13 09:09:50','2018-03-13 09:09:50',NULL,NULL,'Hessen',NULL,2,183),(664,'2018-03-13 09:09:50','2018-03-13 09:09:50',NULL,NULL,'Almeria',NULL,1,184),(665,'2018-03-13 09:09:50','2018-03-13 09:09:50',NULL,NULL,'Almeria',NULL,2,184),(666,'2018-03-13 09:09:50','2018-03-13 09:09:50',NULL,NULL,'Baden-Wrttemberg',NULL,1,185),(667,'2018-03-13 09:09:50','2018-03-13 09:09:50',NULL,NULL,'Baden-Wrttemberg',NULL,2,185),(668,'2018-03-13 09:09:50','2018-03-13 09:09:50',NULL,NULL,'Bayern',NULL,1,186),(669,'2018-03-13 09:09:50','2018-03-13 09:09:50',NULL,NULL,'Bayern',NULL,2,186),(670,'2018-03-13 09:09:50','2018-03-13 09:09:50',NULL,NULL,'Navarra',NULL,1,187),(671,'2018-03-13 09:09:50','2018-03-13 09:09:50',NULL,NULL,'Navarra',NULL,2,187),(672,'2018-03-13 09:09:50','2018-03-13 09:09:50',NULL,NULL,'Valencia',NULL,1,188),(673,'2018-03-13 09:09:50','2018-03-13 09:09:50',NULL,NULL,'Valencia',NULL,2,188),(674,'2018-03-13 09:09:50','2018-03-13 09:09:50',NULL,NULL,'Schleswig-Holstein',NULL,1,189),(675,'2018-03-13 09:09:50','2018-03-13 09:09:50',NULL,NULL,'Schleswig-Holstein',NULL,2,189);
/*!40000 ALTER TABLE `zone_description` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-16 21:40:22
