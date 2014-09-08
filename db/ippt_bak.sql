-- MySQL dump 10.13  Distrib 5.6.20, for osx10.7 (x86_64)
--
-- Host: localhost    Database: ippt
-- ------------------------------------------------------
-- Server version	5.6.20

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
-- Table structure for table `tbl_agegroup`
--

DROP TABLE IF EXISTS `tbl_agegroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_agegroup` (
  `age_id` int(11) NOT NULL AUTO_INCREMENT,
  `age_from` int(11) NOT NULL,
  `age_to` int(11) NOT NULL,
  PRIMARY KEY (`age_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_agegroup`
--

LOCK TABLES `tbl_agegroup` WRITE;
/*!40000 ALTER TABLE `tbl_agegroup` DISABLE KEYS */;
INSERT INTO `tbl_agegroup` VALUES (1,18,21),(2,22,24),(3,25,27),(4,28,30),(5,31,33),(6,34,36),(7,37,39),(8,40,42),(9,43,45),(10,46,48),(11,49,51),(12,52,54),(13,55,57),(14,58,60);
/*!40000 ALTER TABLE `tbl_agegroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_kmrun`
--

DROP TABLE IF EXISTS `tbl_kmrun`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_kmrun` (
  `timing` int(11) NOT NULL,
  `band_1` int(11) NOT NULL,
  `band_2` int(11) NOT NULL,
  `band_3` int(11) NOT NULL,
  `band_4` int(11) NOT NULL,
  `band_5` int(11) NOT NULL,
  `band_6` int(11) NOT NULL,
  `band_7` int(11) NOT NULL,
  `band_8` int(11) NOT NULL,
  `band_9` int(11) NOT NULL,
  `band_10` int(11) NOT NULL,
  `band_11` int(11) NOT NULL,
  `band_12` int(11) NOT NULL,
  `band_13` int(11) NOT NULL,
  `band_14` int(11) NOT NULL,
  PRIMARY KEY (`timing`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_kmrun`
--

LOCK TABLES `tbl_kmrun` WRITE;
/*!40000 ALTER TABLE `tbl_kmrun` DISABLE KEYS */;
INSERT INTO `tbl_kmrun` VALUES (480,50,50,50,50,50,50,50,50,50,50,50,50,50,50),(490,50,50,50,50,50,50,50,50,50,50,50,50,50,50),(500,50,50,50,50,50,50,50,50,50,50,50,50,50,50),(510,50,50,50,50,50,50,50,50,50,50,50,50,50,50),(520,49,50,50,50,50,50,50,50,50,50,50,50,50,50),(530,48,49,50,50,50,50,50,50,50,50,50,50,50,50),(540,46,48,49,50,50,50,50,50,50,50,50,50,50,50),(550,44,46,48,49,50,50,50,50,50,50,50,50,50,50),(560,43,44,46,48,49,50,50,50,50,50,50,50,50,50),(570,42,43,44,46,48,49,50,50,50,50,50,50,50,50),(580,41,42,43,45,46,48,49,50,50,50,50,50,50,50),(590,40,41,42,44,45,46,48,49,50,50,50,50,50,50),(600,40,40,41,43,44,45,46,48,49,50,50,50,50,50),(610,39,40,40,42,43,44,45,46,48,49,50,50,50,50),(620,39,39,40,41,42,43,44,45,47,48,49,50,50,50),(630,38,39,39,40,41,42,43,44,46,47,48,49,50,50),(640,38,38,39,39,40,41,42,43,45,46,47,48,49,50),(650,37,38,38,39,39,40,41,42,44,45,46,47,48,49),(660,37,37,38,38,39,40,40,41,43,44,45,46,47,48),(670,36,37,37,38,38,39,40,40,42,43,44,45,46,47),(680,36,36,37,37,38,39,39,40,41,42,43,44,45,46),(690,35,36,36,37,37,38,39,39,40,41,42,43,44,45),(700,35,35,36,36,37,38,38,39,40,40,41,42,43,44),(710,34,35,35,36,36,37,38,38,39,40,40,41,42,43),(720,33,34,35,35,36,37,37,38,39,39,40,40,41,42),(730,32,33,34,35,35,36,37,37,38,39,39,40,40,41),(740,31,32,33,34,35,36,36,37,38,38,39,39,40,40),(750,30,31,32,33,34,35,36,36,37,38,38,39,39,40),(760,29,30,31,32,33,35,35,36,37,37,38,38,39,39),(770,28,29,30,31,32,34,35,35,36,37,37,38,38,39),(780,27,28,29,30,31,33,35,35,36,36,37,37,38,38),(790,26,27,28,29,30,32,34,35,35,36,36,37,37,38),(800,25,26,27,28,29,31,33,34,35,35,36,36,37,37),(810,24,25,26,27,28,30,32,33,35,35,35,36,36,37),(820,23,24,25,26,27,29,31,32,34,35,35,35,36,36),(830,22,23,24,25,26,28,30,31,33,34,35,35,35,36),(840,21,22,23,24,25,27,29,30,32,33,34,35,35,35),(850,20,21,22,23,24,26,28,29,31,32,33,34,35,35),(860,19,20,21,22,23,25,27,28,30,31,32,33,34,35),(870,18,19,20,21,22,24,26,27,29,30,31,32,33,34),(880,16,18,19,20,21,23,25,26,28,29,30,31,32,33),(890,14,16,18,19,20,22,24,25,27,28,29,30,31,32),(900,12,14,16,18,19,21,23,24,26,27,28,29,30,31),(910,10,12,14,16,18,20,22,23,25,26,27,28,29,30),(920,8,10,12,14,16,18,20,22,24,25,26,27,28,29),(930,6,8,10,12,14,16,18,20,22,24,25,26,27,28),(940,4,6,8,10,12,14,16,18,20,22,24,25,26,27),(950,2,4,6,8,10,12,14,16,18,20,22,24,25,26),(960,1,2,4,6,8,10,12,14,16,18,20,22,24,25),(970,0,1,2,4,6,8,10,12,14,16,18,20,22,24),(980,0,0,1,2,4,6,8,10,12,14,16,18,20,22),(990,0,0,0,1,2,4,6,8,10,12,14,16,18,20),(1000,0,0,0,0,1,2,4,6,8,10,12,14,16,18),(1010,0,0,0,0,0,1,2,4,6,8,10,12,14,16),(1020,0,0,0,0,0,0,1,2,4,6,8,10,12,14),(1030,0,0,0,0,0,0,0,1,2,4,6,8,10,12),(1040,0,0,0,0,0,0,0,0,1,2,4,6,8,10),(1050,0,0,0,0,0,0,0,0,0,1,2,4,6,8),(1060,0,0,0,0,0,0,0,0,0,0,1,2,4,6),(1070,0,0,0,0,0,0,0,0,0,0,0,1,2,4),(1080,0,0,0,0,0,0,0,0,0,0,0,0,1,2),(1090,0,0,0,0,0,0,0,0,0,0,0,0,0,1),(1100,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(1110,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(1120,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(1130,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `tbl_kmrun` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_pushup`
--

DROP TABLE IF EXISTS `tbl_pushup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_pushup` (
  `rep_num` int(11) NOT NULL,
  `band_1` int(11) NOT NULL,
  `band_2` int(11) NOT NULL,
  `band_3` int(11) NOT NULL,
  `band_4` int(11) NOT NULL,
  `band_5` int(11) NOT NULL,
  `band_6` int(11) NOT NULL,
  `band_7` int(11) NOT NULL,
  `band_8` int(11) NOT NULL,
  `band_9` int(11) NOT NULL,
  `band_10` int(11) NOT NULL,
  `band_11` int(11) NOT NULL,
  `band_12` int(11) NOT NULL,
  `band_13` int(11) NOT NULL,
  `band_14` int(11) NOT NULL,
  PRIMARY KEY (`rep_num`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_pushup`
--

LOCK TABLES `tbl_pushup` WRITE;
/*!40000 ALTER TABLE `tbl_pushup` DISABLE KEYS */;
INSERT INTO `tbl_pushup` VALUES (1,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(2,0,0,0,0,0,0,0,0,0,0,0,0,0,1),(3,0,0,0,0,0,0,0,0,0,0,0,0,1,2),(4,0,0,0,0,0,0,0,0,0,0,0,1,2,4),(5,0,0,0,0,0,0,0,0,0,0,1,2,4,6),(6,0,0,0,0,0,0,0,0,0,1,2,4,6,8),(7,0,0,0,0,0,0,0,0,1,2,4,6,8,9),(8,0,0,0,0,0,0,0,1,2,4,6,8,9,10),(9,0,0,0,0,0,0,1,2,4,6,8,9,10,11),(10,0,0,0,0,0,1,2,4,6,8,9,10,11,12),(11,0,0,0,0,1,2,4,6,8,9,10,11,12,13),(12,0,0,0,1,2,4,6,8,9,10,11,12,13,14),(13,0,0,1,2,4,6,8,9,10,11,12,13,14,15),(14,0,1,2,4,6,8,9,10,11,12,13,14,15,15),(15,1,2,4,6,8,9,10,11,12,13,14,15,15,15),(16,2,4,6,8,9,10,11,12,13,14,15,15,15,16),(17,4,6,8,9,10,11,12,13,14,15,15,15,16,16),(18,6,8,9,10,11,12,13,14,15,15,15,16,16,16),(19,8,9,10,11,12,13,14,15,15,15,16,16,16,17),(20,9,10,11,12,13,14,15,15,15,16,16,16,17,17),(21,10,11,12,13,14,15,15,15,16,16,16,17,17,17),(22,11,12,13,14,15,15,15,16,16,16,17,17,17,18),(23,12,13,14,15,15,15,16,16,16,17,17,17,18,18),(24,13,14,15,15,15,16,16,16,17,17,17,18,18,18),(25,14,15,15,15,16,16,16,17,17,17,18,18,18,19),(26,15,15,15,16,16,16,17,17,17,18,18,18,19,19),(27,15,15,16,16,16,17,17,17,18,18,18,19,19,20),(28,15,16,16,16,17,17,17,18,18,18,19,19,20,20),(29,16,16,16,17,17,17,18,18,18,19,19,20,20,20),(30,16,16,17,17,17,18,18,18,19,19,20,20,20,21),(31,16,17,17,17,18,18,18,19,19,20,20,20,21,21),(32,17,17,17,18,18,18,19,19,20,20,20,21,21,21),(33,17,17,18,18,18,19,19,20,20,20,21,21,21,22),(34,17,18,18,18,19,19,20,20,20,21,21,21,22,22),(35,18,18,18,19,19,20,20,20,21,21,21,21,22,22),(36,18,18,19,19,20,20,20,20,21,21,21,22,22,23),(37,18,19,19,20,20,20,20,20,21,21,22,22,23,23),(38,19,19,20,20,20,20,20,20,21,22,22,22,23,24),(39,19,20,20,20,20,20,20,20,22,22,22,22,23,24),(40,20,20,20,20,20,20,21,21,22,22,22,23,24,25),(41,20,20,20,20,20,21,21,21,22,22,23,23,24,25),(42,20,20,20,21,21,21,21,21,22,23,23,23,25,25),(43,20,20,20,21,21,21,21,21,23,23,23,24,25,25),(44,20,21,21,21,21,21,22,22,23,23,24,24,25,25),(45,21,21,21,21,21,22,22,22,23,23,24,25,25,25),(46,21,21,21,22,22,22,22,22,23,24,24,25,25,25),(47,21,21,21,22,22,22,22,22,24,24,25,25,25,25),(48,21,22,22,22,22,22,23,23,24,24,25,25,25,25),(49,22,22,22,22,22,23,23,23,24,25,25,25,25,25),(50,22,22,22,23,23,23,23,23,24,25,25,25,25,25),(51,22,22,23,23,23,23,23,23,25,25,25,25,25,25),(52,22,23,23,23,23,23,24,24,25,25,25,25,25,25),(53,23,23,23,23,23,24,24,25,25,25,25,25,25,25),(54,23,23,23,24,24,24,25,25,25,25,25,25,25,25),(55,23,23,24,24,24,25,25,25,25,25,25,25,25,25),(56,23,24,24,24,25,25,25,25,25,25,25,25,25,25),(57,24,24,24,25,25,25,25,25,25,25,25,25,25,25),(58,24,24,25,25,25,25,25,25,25,25,25,25,25,25),(59,24,25,25,25,25,25,25,25,25,25,25,25,25,25),(60,25,25,25,25,25,25,25,25,25,25,25,25,25,25);
/*!40000 ALTER TABLE `tbl_pushup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_situp`
--

DROP TABLE IF EXISTS `tbl_situp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_situp` (
  `rep_num` int(11) NOT NULL,
  `band_1` int(11) NOT NULL,
  `band_2` int(11) NOT NULL,
  `band_3` int(11) NOT NULL,
  `band_4` int(11) NOT NULL,
  `band_5` int(11) NOT NULL,
  `band_6` int(11) NOT NULL,
  `band_7` int(11) NOT NULL,
  `band_8` int(11) NOT NULL,
  `band_9` int(11) NOT NULL,
  `band_10` int(11) NOT NULL,
  `band_11` int(11) NOT NULL,
  `band_12` int(11) NOT NULL,
  `band_13` int(11) NOT NULL,
  `band_14` int(11) NOT NULL,
  PRIMARY KEY (`rep_num`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_situp`
--

LOCK TABLES `tbl_situp` WRITE;
/*!40000 ALTER TABLE `tbl_situp` DISABLE KEYS */;
INSERT INTO `tbl_situp` VALUES (1,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(2,0,0,0,0,0,0,0,0,0,0,0,0,0,1),(3,0,0,0,0,0,0,0,0,0,0,0,0,1,2),(4,0,0,0,0,0,0,0,0,0,0,0,1,2,3),(5,0,0,0,0,0,0,0,0,0,0,1,2,3,4),(6,0,0,0,0,0,0,0,0,0,1,2,3,4,5),(7,0,0,0,0,0,0,0,0,1,2,3,4,5,6),(8,0,0,0,0,0,0,0,1,2,3,4,5,6,6),(9,0,0,0,0,0,0,1,2,3,4,5,6,6,7),(10,0,0,0,0,0,1,2,3,4,5,6,6,7,7),(11,0,0,0,0,1,2,3,4,5,6,6,7,7,8),(12,0,0,0,1,2,3,4,5,6,6,7,7,8,9),(13,0,0,1,2,3,4,5,6,6,7,7,8,9,10),(14,0,1,2,3,4,5,6,6,7,7,8,9,10,11),(15,1,2,3,4,5,6,6,7,7,8,9,10,11,12),(16,2,3,4,5,6,6,7,7,8,9,10,11,12,13),(17,3,4,5,6,6,7,7,8,9,10,11,12,13,14),(18,4,5,6,6,7,7,8,9,10,11,12,13,14,14),(19,5,6,6,7,7,8,9,10,11,12,13,14,14,15),(20,6,6,7,7,8,9,10,11,12,13,14,14,15,16),(21,6,7,7,8,9,10,11,12,13,14,14,15,16,16),(22,7,7,8,9,10,11,12,13,14,14,15,16,16,17),(23,7,8,9,10,11,12,13,14,14,15,16,16,17,18),(24,8,9,10,11,12,13,14,14,15,16,16,17,18,18),(25,9,10,11,12,13,14,14,15,16,16,17,18,18,19),(26,10,11,12,13,14,14,15,16,16,17,18,18,19,19),(27,11,12,13,13,14,15,16,16,17,18,18,19,19,20),(28,12,13,13,14,15,16,16,17,18,18,19,19,20,20),(29,13,13,14,14,16,16,17,18,18,19,19,20,20,20),(30,13,14,14,15,16,17,18,18,19,19,20,20,20,21),(31,14,14,15,16,17,18,18,19,19,20,20,20,20,21),(32,14,15,16,17,18,18,19,19,20,20,20,20,21,21),(33,15,16,17,18,18,19,19,20,20,20,20,21,21,22),(34,16,17,18,18,19,19,20,20,20,20,20,21,21,22),(35,17,18,18,19,19,20,20,20,20,20,21,21,22,22),(36,18,18,19,19,20,20,20,20,21,21,21,21,22,23),(37,18,19,19,20,20,20,20,20,21,21,21,22,22,23),(38,19,19,20,20,20,20,21,21,21,21,21,22,23,23),(39,19,20,20,20,20,20,21,21,21,21,22,22,23,24),(40,20,20,20,20,21,21,21,21,22,22,22,23,23,24),(41,20,20,20,20,21,21,21,21,22,22,22,23,24,24),(42,20,20,21,21,21,21,22,22,22,22,23,23,24,25),(43,20,20,21,21,21,21,22,22,22,23,23,24,24,25),(44,21,21,21,21,22,22,22,22,23,23,23,24,25,25),(45,21,21,21,21,22,22,22,22,23,23,24,24,25,25),(46,21,21,22,22,22,22,23,23,23,24,24,25,25,25),(47,21,21,22,22,22,22,23,23,23,24,24,25,25,25),(48,21,22,22,22,23,23,23,23,24,24,25,25,25,25),(49,22,22,22,22,23,23,23,23,24,25,25,25,25,25),(50,22,22,23,23,23,23,24,24,24,25,25,25,25,25),(51,22,22,23,23,23,23,24,24,25,25,25,25,25,25),(52,22,23,23,23,24,24,24,24,25,25,25,25,25,25),(53,23,23,23,23,24,24,24,25,25,25,25,25,25,25),(54,23,23,24,24,24,24,25,25,25,25,25,25,25,25),(55,23,23,24,24,24,25,25,25,25,25,25,25,25,25),(56,23,24,24,24,25,25,25,25,25,25,25,25,25,25),(57,24,24,24,25,25,25,25,25,25,25,25,25,25,25),(58,24,24,25,25,25,25,25,25,25,25,25,25,25,25),(59,24,25,25,25,25,25,25,25,25,25,25,25,25,25),(60,25,25,25,25,25,25,25,25,25,25,25,25,25,25);
/*!40000 ALTER TABLE `tbl_situp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'ippt'
--
/*!50003 DROP PROCEDURE IF EXISTS `SP_GetAgeGroup` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_GetAgeGroup`(IN age INT)
BEGIN

SELECT age_id 
FROM ippt.tbl_agegroup 
WHERE age 
BETWEEN age_from AND age_to;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_GetKmRunPoint` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_GetKmRunPoint`(IN agegrp INT, IN timing INT)
BEGIN

SET @s = CONCAT('SELECT band_',agegrp,' FROM ippt.tbl_kmrun WHERE timing=',timing);
    PREPARE stmt FROM @s;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_GetPushUpPoint` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_GetPushUpPoint`(IN agegrp INT, IN reps INT)
BEGIN

SET @s = CONCAT('SELECT band_',agegrp,' FROM ippt.tbl_pushup WHERE rep_num=',reps);
    PREPARE stmt FROM @s;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_GetSitUpPoint` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_GetSitUpPoint`(IN agegrp INT, IN reps INT)
BEGIN

SET @s = CONCAT('SELECT band_',agegrp,' FROM ippt.tbl_situp WHERE rep_num=',reps);
    PREPARE stmt FROM @s;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-08-11 23:26:16
