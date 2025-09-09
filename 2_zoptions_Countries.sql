-- MySQL dump 10.13  Distrib 8.0.43, for Linux (x86_64)
--
-- Host: localhost    Database: BIAD
-- ------------------------------------------------------
-- Server version	8.0.43-0ubuntu0.24.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `zoptions_Countries`
--

DROP TABLE IF EXISTS `zoptions_Countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zoptions_Countries` (
  `Country` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT 'Country name as provided by source, not necessarily matching the ISO-3166 designation. For example, ''Corsica'' is retained, despite being considered French territory.',
  `ignore` varchar(1) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL COMMENT 'DO NOT ENTER VALUES IN THIS COLUMN!! Auto updates to ensure dropdown menus in other tables are (approximately) alphabetical.',
  `ISO-3166-2` varchar(3) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'ISO 3166 international standard Alpha 2',
  PRIMARY KEY (`Country`),
  UNIQUE KEY `unique` (`Country`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_swedish_ci COMMENT='Modern geo-political boundaries';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zoptions_Countries`
--

LOCK TABLES `zoptions_Countries` WRITE;
/*!40000 ALTER TABLE `zoptions_Countries` DISABLE KEYS */;
INSERT INTO `zoptions_Countries` VALUES ('Afghanistan','A','AF'),('Albania','A','AL'),('Algeria','A','DZ'),('Andorra','A','AD'),('Armenia','A','AM'),('Austria','A','AT'),('Azerbaijan','A','AZ'),('Bangladesh','B','BD'),('Barbados','B','BB'),('Belarus','B','BY'),('Belgium','B','BE'),('Bosnia and Herzegovina','B','BA'),('Brazil','B','BR'),('Bulgaria','B','BG'),('Chile','C','CL'),('China','C','CN'),('Corfu','C','GR'),('Corsica','C','FR'),('Croatia','C','HR'),('Cyprus','C','CY'),('Czechia / Czech Republic','C','CZ'),('Denmark','D','DK'),('Ecuador','E','EC'),('Egypt','E','EG'),('Estonia','E','EE'),('Finland','F','FI'),('France','F','FR'),('Georgia','G','GE'),('Germany','G','DE'),('Great Britain','G','GB'),('Greece','G','GR'),('Guatemala','G','GT'),('Guernsey','G','GG'),('Honduras','H','HN'),('Hungary','H','HU'),('Iceland','I','IS'),('India','I','IN'),('Iran','I','IR'),('Iraq','I','IQ'),('Ireland','I','IE'),('Isle of Man','I','IM'),('Israel','I','IL'),('Italy','I','IT'),('Jordan','J','JO'),('Kazakhstan','K','KZ'),('Kosovo','K',NULL),('Kyrgyzstan','K','KY'),('Latvia','L','LV'),('Lebanon','L','LB'),('Liechtenstein','L','LI'),('Lithuania','L','LT'),('Luxembourg','L','LU'),('Malta','M','MT'),('Mexico','M','MEX'),('Moldova','M','MD'),('Mongolia','M','MN'),('Montenegro','M','ME'),('Morocco','M','MA'),('Nepal','N','NP'),('Netherlands','N','NL'),('Niger','N','NE'),('Nigeria','N','NG'),('North Macedonia','N','MK'),('Norway','N','NO'),('Oman','O','OM'),('Pakistan','P','PK'),('Palestine','P','PS'),('Papua New Guinea','P','PG'),('Peru','P','PE'),('Poland','P','PL'),('Portugal','P','PT'),('Romania','R','RO'),('Russia','R','RU'),('Serbia','S','RS'),('Slovakia','S','SK'),('Slovenia','S','SI'),('South Africa','S','RSA'),('Spain','S','ES'),('Sri Lanka','S','LK'),('Sudan','S','SD'),('Sweden','S','SE'),('Switzerland','S','CH'),('Syria','S','SY'),('Taiwan','T','TW'),('Tajikistan','T','TJ'),('Tunisia','T','TN'),('Türkiye','T','TR'),('Turkmenistan','T','TM'),('Ukraine','U','UA'),('United Arab Emirates','U','UAE'),('USA','U','UM'),('Uzbekistan','U','UZ'),('WORLD','W',NULL);
/*!40000 ALTER TABLE `zoptions_Countries` ENABLE KEYS */;
UNLOCK TABLES;
ALTER DATABASE `BIAD` CHARACTER SET latin1 COLLATE latin1_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`adrian_timpson`@`localhost`*/ /*!50003 TRIGGER `trigger_zoptions_Countries_insert` BEFORE INSERT ON `zoptions_Countries` FOR EACH ROW BEGIN 
set NEW.`ignore` = UPPER(LEFT(NEW.Country,1));
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `BIAD` CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`localhost`*/ /*!50003 TRIGGER `auto_pad_INSERT_zoptions_Countries` BEFORE INSERT ON `zoptions_Countries` FOR EACH ROW BEGIN SET NEW.`Country` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Country`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`ignore` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`ignore`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`ISO-3166-2` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`ISO-3166-2`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `BIAD` CHARACTER SET latin1 COLLATE latin1_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`adrian_timpson`@`localhost`*/ /*!50003 TRIGGER `trigger_zoptions_Countries_update` BEFORE UPDATE ON `zoptions_Countries` FOR EACH ROW BEGIN 
set NEW.`ignore` = UPPER(LEFT(NEW.Country,1));
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `BIAD` CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`localhost`*/ /*!50003 TRIGGER `auto_pad_UPDATE_zoptions_Countries` BEFORE UPDATE ON `zoptions_Countries` FOR EACH ROW BEGIN SET NEW.`Country` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Country`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`ignore` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`ignore`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`ISO-3166-2` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`ISO-3166-2`, '', ' '), '
', ' '), '	', ' ')); END */;;
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

-- Dump completed on 2025-09-09 19:40:11
