-- MySQL dump 10.13  Distrib 8.0.43, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: BIAD
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
-- Current Database: `BIAD`
--

/*!40000 DROP DATABASE IF EXISTS `BIAD`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `BIAD` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `BIAD`;

--
-- Table structure for table `ABotCharcoal`
--

DROP TABLE IF EXISTS `ABotCharcoal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ABotCharcoal` (
  `SampleID` int NOT NULL COMMENT 'Unique identification number for each taxon record',
  `roundness` varchar(3) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `max_size_mm` tinyint unsigned DEFAULT NULL,
  `vitrification` varchar(3) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `cracks` varchar(3) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `insect_damage` varchar(3) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `fungal_hyphae` varchar(3) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `reaction_wood` varchar(3) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `mineral_coat` varchar(3) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `working_traces` varchar(3) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `time_added` timestamp NULL DEFAULT NULL COMMENT 'When first added to the database. Do not manually add values. This is automatically added by the database.',
  `user_added` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'Who first added to the database. Do not manually add values. This is automatically added by the database.',
  `time_last_update` timestamp NULL DEFAULT NULL COMMENT 'When last updated. Do not manually add values. This is automatically added by the database.',
  `user_last_update` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'Who last updated.  Do not manually add values. This is automatically added by the database.',
  UNIQUE KEY `unique` (`SampleID`),
  KEY `FK_ABotCharcoal_zoptions_yes_no` (`roundness`),
  KEY `FK_ABotCharcoal_zoptions_yes_no_2` (`vitrification`),
  KEY `FK_ABotCharcoal_zoptions_yes_no_3` (`cracks`),
  KEY `FK_ABotCharcoal_zoptions_yes_no_4` (`insect_damage`),
  KEY `FK_ABotCharcoal_zoptions_yes_no_5` (`fungal_hyphae`),
  KEY `FK_ABotCharcoal_zoptions_yes_no_6` (`reaction_wood`),
  KEY `FK_ABotCharcoal_zoptions_yes_no_7` (`mineral_coat`),
  KEY `FK_ABotCharcoal_zoptions_yes_no_8` (`working_traces`),
  CONSTRAINT `FK_ABotCharcoal_zoptions_yes_no` FOREIGN KEY (`roundness`) REFERENCES `zoptions_yes_no` (`present`) ON UPDATE CASCADE,
  CONSTRAINT `FK_ABotCharcoal_zoptions_yes_no_2` FOREIGN KEY (`vitrification`) REFERENCES `zoptions_yes_no` (`present`) ON UPDATE CASCADE,
  CONSTRAINT `FK_ABotCharcoal_zoptions_yes_no_3` FOREIGN KEY (`cracks`) REFERENCES `zoptions_yes_no` (`present`) ON UPDATE CASCADE,
  CONSTRAINT `FK_ABotCharcoal_zoptions_yes_no_4` FOREIGN KEY (`insect_damage`) REFERENCES `zoptions_yes_no` (`present`) ON UPDATE CASCADE,
  CONSTRAINT `FK_ABotCharcoal_zoptions_yes_no_5` FOREIGN KEY (`fungal_hyphae`) REFERENCES `zoptions_yes_no` (`present`) ON UPDATE CASCADE,
  CONSTRAINT `FK_ABotCharcoal_zoptions_yes_no_6` FOREIGN KEY (`reaction_wood`) REFERENCES `zoptions_yes_no` (`present`) ON UPDATE CASCADE,
  CONSTRAINT `FK_ABotCharcoal_zoptions_yes_no_7` FOREIGN KEY (`mineral_coat`) REFERENCES `zoptions_yes_no` (`present`) ON UPDATE CASCADE,
  CONSTRAINT `FK_ABotCharcoal_zoptions_yes_no_8` FOREIGN KEY (`working_traces`) REFERENCES `zoptions_yes_no` (`present`) ON UPDATE CASCADE,
  CONSTRAINT `FK_z_adrian_charcoal_ABotSamples` FOREIGN KEY (`SampleID`) REFERENCES `ABotSamples` (`SampleID`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Charcoal / Anthraco specific information for samples already stored in ABotSamples table.';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_INSERT_ABotCharcoal` BEFORE INSERT ON `ABotCharcoal` FOR EACH ROW BEGIN SET NEW.`SampleID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`SampleID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`roundness` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`roundness`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`max_size_mm` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`max_size_mm`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`vitrification` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`vitrification`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`cracks` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`cracks`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`insect_damage` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`insect_damage`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`fungal_hyphae` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`fungal_hyphae`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`reaction_wood` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`reaction_wood`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`mineral_coat` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`mineral_coat`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`working_traces` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`working_traces`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_last_update`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_last_update`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `trigger_stamp_INSERT_ABotCharcoal` BEFORE INSERT ON `ABotCharcoal` FOR EACH ROW BEGIN SET NEW.user_added = SYSTEM_USER(); SET NEW.time_added = CURRENT_TIMESTAMP; SET NEW.user_last_update = SYSTEM_USER(); SET NEW.time_last_update = CURRENT_TIMESTAMP; END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_UPDATE_ABotCharcoal` BEFORE UPDATE ON `ABotCharcoal` FOR EACH ROW BEGIN SET NEW.`SampleID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`SampleID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`roundness` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`roundness`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`max_size_mm` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`max_size_mm`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`vitrification` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`vitrification`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`cracks` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`cracks`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`insect_damage` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`insect_damage`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`fungal_hyphae` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`fungal_hyphae`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`reaction_wood` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`reaction_wood`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`mineral_coat` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`mineral_coat`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`working_traces` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`working_traces`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_last_update`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_last_update`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `trigger_stamp_UPDATE_ABotCharcoal` BEFORE UPDATE ON `ABotCharcoal` FOR EACH ROW BEGIN SET NEW.user_last_update = SYSTEM_USER(); SET NEW.time_last_update = CURRENT_TIMESTAMP; END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `ABotIsotopes`
--

DROP TABLE IF EXISTS `ABotIsotopes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ABotIsotopes` (
  `ABotIsoID` varchar(9) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '' COMMENT 'Primary key',
  `PhaseID` varchar(9) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '' COMMENT 'Please see the detailed description of the ''Phases'' table.',
  `SampleID` varchar(30) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'The sample code used in the primary source literature for each plant/s part/s that have isotope values',
  `ItemID` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `TaxonCode` varchar(8) CHARACTER SET latin1 COLLATE latin1_general_cs DEFAULT NULL COMMENT 'Code to identify the species, drawn from the zoptions_TaxaList',
  `anatomy` varchar(30) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'Anatomical component of the plant, look up from zoptions_AbotAnatomy.',
  `preservation` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'Description of type of preservation, e.g., charring, waterlogging, mineralisation, impressions, etc. ',
  `preservation_score` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'Preservation score of grains following Hubbard and al-Azm 1990, JAS 17.',
  `number_of_samples` int DEFAULT NULL COMMENT 'Typically isotope measurements are done bulk of several seeds or samples.',
  `sample_notes` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `δ13C(‰)` decimal(4,2) DEFAULT NULL COMMENT 'Calibrated using the Vienna PeeDee Belemnite (VPDB) convention. ',
  `δ13C_corrected(‰)` decimal(4,2) DEFAULT NULL COMMENT 'Corrected for charring offset, which is the shift in the original plant carbon isotope composition, due to carbonisation.',
  `δ15N(‰)` decimal(4,2) DEFAULT NULL COMMENT 'Absolute Isotope Ratio (AIR) convention. ',
  `δ15N_corrected(‰)` decimal(4,2) DEFAULT NULL COMMENT 'Corrected for charring offset, which is the shift in the original plant carbon isotope composition, due to carbonisation.',
  `Δ13C_difference(‰)` decimal(4,2) DEFAULT NULL COMMENT 'The published difference between δ13C of the sample, and δ13C of independently estimated atmospheric δ13C from carbon dioxide. ',
  `C(%)` decimal(5,2) DEFAULT NULL COMMENT 'Percentage Carbon',
  `N(%)` decimal(4,2) DEFAULT NULL COMMENT 'Percentage Nitrogen',
  `C/N` decimal(4,2) DEFAULT NULL COMMENT 'Carbon:Nitrogen atomic ratio calculated using %C from the d13 C measurement and %N from the d15 N measurement. A lack of correlation between the two suggests that the original isotopic composition was not altered through diagenesis.',
  `CitationID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `time_added` timestamp NULL DEFAULT NULL COMMENT 'When first added to the database. Do not manually add values. This is automatically added by the database.',
  `user_added` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'Who first added to the database. Do not manually add values. This is automatically added by the database.',
  `time_last_update` timestamp NULL DEFAULT NULL COMMENT 'When last updated. Do not manually add values. This is automatically added by the database.',
  `user_last_update` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'Who last updated.  Do not manually add values. This is automatically added by the database.',
  PRIMARY KEY (`ABotIsoID`),
  UNIQUE KEY `unique` (`ABotIsoID`),
  KEY `FK_ABotIsotopes_ABotPhases` (`PhaseID`),
  KEY `FK_ABotIsotopes_Items` (`ItemID`),
  KEY `FK_ABotIsotopes_Citations` (`CitationID`),
  KEY `FK_ABotIsotopes_zoptions_TaxaList` (`TaxonCode`),
  KEY `FK_ABotIsotopes_zoptions_ABotAnatomy` (`anatomy`) USING BTREE,
  KEY `FK_ABotIsotopes_zoptions_Preservation` (`preservation`),
  CONSTRAINT `FK_ABotIsotopes_ABotPhases` FOREIGN KEY (`PhaseID`) REFERENCES `ABotPhases` (`PhaseID`) ON UPDATE CASCADE,
  CONSTRAINT `FK_ABotIsotopes_Citations` FOREIGN KEY (`CitationID`) REFERENCES `Citations` (`CitationID`) ON UPDATE CASCADE,
  CONSTRAINT `FK_ABotIsotopes_Items` FOREIGN KEY (`ItemID`) REFERENCES `Items` (`ItemID`) ON UPDATE CASCADE,
  CONSTRAINT `FK_ABotIsotopes_zoptions_ABotAnatomy` FOREIGN KEY (`anatomy`) REFERENCES `zoptions_ABotAnatomy` (`Anatomy`) ON UPDATE CASCADE,
  CONSTRAINT `FK_ABotIsotopes_zoptions_Preservation` FOREIGN KEY (`preservation`) REFERENCES `zoptions_Preservation` (`preservation`) ON UPDATE CASCADE,
  CONSTRAINT `FK_ABotIsotopes_zoptions_TaxaList` FOREIGN KEY (`TaxonCode`) REFERENCES `zoptions_TaxaList` (`TaxonCode`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_swedish_ci COMMENT='Isotopic values of specific archaeolbotanical plant remains. Typically these are done on a small aggregation of several seeds or samples, so all values are a mean estimate, and the sample size is important to estimate the accuracy and precision of this mean estimate. In contrast, some primary sources instead provide the standard deviations of these values, which is arguably even more important.';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_INSERT_ABotIsotopes` BEFORE INSERT ON `ABotIsotopes` FOR EACH ROW BEGIN SET NEW.`ABotIsoID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`ABotIsoID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`PhaseID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`PhaseID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`SampleID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`SampleID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`ItemID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`ItemID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`TaxonCode` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`TaxonCode`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`anatomy` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`anatomy`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`preservation` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`preservation`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`preservation_score` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`preservation_score`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`number_of_samples` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`number_of_samples`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`sample_notes` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`sample_notes`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`δ13C(‰)` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`δ13C(‰)`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`δ13C_corrected(‰)` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`δ13C_corrected(‰)`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`δ15N(‰)` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`δ15N(‰)`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`δ15N_corrected(‰)` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`δ15N_corrected(‰)`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Δ13C_difference(‰)` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Δ13C_difference(‰)`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`C(%)` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`C(%)`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`N(%)` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`N(%)`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`C/N` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`C/N`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`CitationID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`CitationID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_last_update`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_last_update`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `trigger_stamp_INSERT_ABotIsotopes` BEFORE INSERT ON `ABotIsotopes` FOR EACH ROW BEGIN SET NEW.user_added = SYSTEM_USER(); SET NEW.time_added = CURRENT_TIMESTAMP; SET NEW.user_last_update = SYSTEM_USER(); SET NEW.time_last_update = CURRENT_TIMESTAMP; END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_UPDATE_ABotIsotopes` BEFORE UPDATE ON `ABotIsotopes` FOR EACH ROW BEGIN SET NEW.`ABotIsoID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`ABotIsoID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`PhaseID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`PhaseID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`SampleID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`SampleID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`ItemID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`ItemID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`TaxonCode` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`TaxonCode`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`anatomy` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`anatomy`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`preservation` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`preservation`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`preservation_score` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`preservation_score`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`number_of_samples` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`number_of_samples`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`sample_notes` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`sample_notes`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`δ13C(‰)` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`δ13C(‰)`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`δ13C_corrected(‰)` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`δ13C_corrected(‰)`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`δ15N(‰)` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`δ15N(‰)`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`δ15N_corrected(‰)` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`δ15N_corrected(‰)`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Δ13C_difference(‰)` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Δ13C_difference(‰)`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`C(%)` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`C(%)`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`N(%)` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`N(%)`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`C/N` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`C/N`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`CitationID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`CitationID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_last_update`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_last_update`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `trigger_stamp_UPDATE_ABotIsotopes` BEFORE UPDATE ON `ABotIsotopes` FOR EACH ROW BEGIN SET NEW.user_last_update = SYSTEM_USER(); SET NEW.time_last_update = CURRENT_TIMESTAMP; END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `ABotPhases`
--

DROP TABLE IF EXISTS `ABotPhases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ABotPhases` (
  `PhaseID` varchar(9) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL COMMENT 'Please see the detailed description of the ''Phases'' table.',
  `ABotNumberOfContexts` smallint unsigned DEFAULT NULL COMMENT 'Number of distinct ''pits'' or ''contexts'' from which ABot data has been counted. Used to calculate unbiquity. Surface scatter would count as a single pit.',
  `AbotMeshSizeMin` decimal(4,2) DEFAULT NULL COMMENT 'Minimum Mesh size (mm) used in archaeobotanical recovery',
  `Notes` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `RecoveryMethod1` varchar(25) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `RecoveryMethod2` varchar(25) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `RecoveryMethod3` varchar(25) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `RecoveryMethod4` varchar(25) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Volume` smallint unsigned DEFAULT NULL COMMENT 'Volume (litres) of the soil extracted for sampling.',
  `CitationID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `time_added` timestamp NULL DEFAULT NULL COMMENT 'When first added to the database. Do not manually add values. This is automatically added by the database.',
  `user_added` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'Who first added to the database. Do not manually add values. This is automatically added by the database.',
  `time_last_update` timestamp NULL DEFAULT NULL COMMENT 'When last updated. Do not manually add values. This is automatically added by the database.',
  `user_last_update` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'Who last updated.  Do not manually add values. This is automatically added by the database.',
  PRIMARY KEY (`PhaseID`),
  UNIQUE KEY `unique` (`PhaseID`),
  KEY `FK_ABotPhases_zoptions_ABotRecoveryMethods_2` (`RecoveryMethod2`),
  KEY `FK_ABotPhases_zoptions_ABotRecoveryMethods_1` (`RecoveryMethod1`),
  KEY `FK_ABotPhases_zoptions_ABotRecoveryMethods` (`RecoveryMethod3`),
  KEY `FK_ABotPhases_zoptions_ABotRecoveryMethods_3` (`RecoveryMethod4`),
  KEY `FK_ABotPhases_Citations` (`CitationID`),
  CONSTRAINT `FK_ABotPhases_Citations` FOREIGN KEY (`CitationID`) REFERENCES `Citations` (`CitationID`) ON UPDATE CASCADE,
  CONSTRAINT `FK_ABotPhases_Phases` FOREIGN KEY (`PhaseID`) REFERENCES `Phases` (`PhaseID`) ON UPDATE CASCADE,
  CONSTRAINT `FK_ABotPhases_zoptions_ABotRecoveryMethods` FOREIGN KEY (`RecoveryMethod3`) REFERENCES `zoptions_ABotRecoveryMethods` (`Method`) ON UPDATE CASCADE,
  CONSTRAINT `FK_ABotPhases_zoptions_ABotRecoveryMethods_1` FOREIGN KEY (`RecoveryMethod1`) REFERENCES `zoptions_ABotRecoveryMethods` (`Method`) ON UPDATE CASCADE,
  CONSTRAINT `FK_ABotPhases_zoptions_ABotRecoveryMethods_2` FOREIGN KEY (`RecoveryMethod2`) REFERENCES `zoptions_ABotRecoveryMethods` (`Method`) ON UPDATE CASCADE,
  CONSTRAINT `FK_ABotPhases_zoptions_ABotRecoveryMethods_3` FOREIGN KEY (`RecoveryMethod4`) REFERENCES `zoptions_ABotRecoveryMethods` (`Method`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_swedish_ci COMMENT='Archaeobotanical data at the phase level, therefore only for phases that have this type of data.\r\nRecoveryMethod1, 2, 3 etc have no intrinsic differences, and the order is irrelevant. This is simply to allow for multiple recovery methods at a single phase.\r\n';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_INSERT_ABotPhases` BEFORE INSERT ON `ABotPhases` FOR EACH ROW BEGIN SET NEW.`PhaseID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`PhaseID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`ABotNumberOfContexts` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`ABotNumberOfContexts`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`AbotMeshSizeMin` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`AbotMeshSizeMin`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Notes` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Notes`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`RecoveryMethod1` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`RecoveryMethod1`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`RecoveryMethod2` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`RecoveryMethod2`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`RecoveryMethod3` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`RecoveryMethod3`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`RecoveryMethod4` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`RecoveryMethod4`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Volume` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Volume`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`CitationID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`CitationID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_last_update`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_last_update`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `trigger_stamp_INSERT_ABotPhases` BEFORE INSERT ON `ABotPhases` FOR EACH ROW BEGIN SET NEW.user_added = SYSTEM_USER(); SET NEW.time_added = CURRENT_TIMESTAMP; SET NEW.user_last_update = SYSTEM_USER(); SET NEW.time_last_update = CURRENT_TIMESTAMP; END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_UPDATE_ABotPhases` BEFORE UPDATE ON `ABotPhases` FOR EACH ROW BEGIN SET NEW.`PhaseID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`PhaseID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`ABotNumberOfContexts` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`ABotNumberOfContexts`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`AbotMeshSizeMin` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`AbotMeshSizeMin`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Notes` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Notes`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`RecoveryMethod1` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`RecoveryMethod1`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`RecoveryMethod2` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`RecoveryMethod2`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`RecoveryMethod3` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`RecoveryMethod3`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`RecoveryMethod4` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`RecoveryMethod4`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Volume` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Volume`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`CitationID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`CitationID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_last_update`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_last_update`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `trigger_stamp_UPDATE_ABotPhases` BEFORE UPDATE ON `ABotPhases` FOR EACH ROW BEGIN SET NEW.user_last_update = SYSTEM_USER(); SET NEW.time_last_update = CURRENT_TIMESTAMP; END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `ABotSamples`
--

DROP TABLE IF EXISTS `ABotSamples`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ABotSamples` (
  `SampleID` int NOT NULL AUTO_INCREMENT COMMENT 'Unique identification number for each taxon record',
  `PhaseID` varchar(9) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL COMMENT 'Please see the detailed description of the ''Phases'' table.',
  `TaxonCode` varchar(8) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL COMMENT 'Unique code to identify the full taxonomic name; this usually consists of the first four letters of the genus and first three letters of the species',
  `TaxonCodeConfidence` varchar(3) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL COMMENT 'Either ''yes'' the researcher was confident in the identification (to the level of species, genus or family), or ''no'' there is some uncertainty (identification as cf. (confer), or genus/genus or species/species)',
  `Anatomy1` varchar(30) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'Anatomical component of the plant, look up from zoptions_AbotAnatomy.',
  `Anatomy2` varchar(30) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Anatomy3` varchar(30) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Anatomy4` varchar(30) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `preservation_type_1` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'Description of type of preservation, e.g., charring, waterlogging, mineralisation, impressions, etc. ',
  `preservation_type_2` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `TotalCount` int DEFAULT NULL COMMENT 'Number of taxon records per phase/cultural unit',
  `NumberOfContexts` int DEFAULT NULL COMMENT 'Number of contexts the taxon was found in, out of the total number archaeobotanical contexts at the phase (see ABotNumberOfContexts in the ABotPhases table).',
  `Ubiquity` decimal(6,3) DEFAULT NULL COMMENT 'Percentage of the total number of contexts (ABotTotalNumberOfContexts). Do not manually add value. This entry is triggered by the value in ''NumberOfContexts'' and ''ABotPhases: ABotNumberOfContexts''',
  `time_added` timestamp NULL DEFAULT NULL COMMENT 'When first added to the database. Do not manually add values. This is automatically added by the database.',
  `user_added` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'Who first added to the database. Do not manually add values. This is automatically added by the database.',
  `time_last_update` timestamp NULL DEFAULT NULL COMMENT 'When last updated. Do not manually add values. This is automatically added by the database.',
  `user_last_update` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'Who last updated.  Do not manually add values. This is automatically added by the database.',
  PRIMARY KEY (`SampleID`),
  UNIQUE KEY `unique` (`SampleID`),
  KEY `FK_ABotSamples_zoptions_ABotTaxaList` (`TaxonCode`),
  KEY `FK_ABotSamples_ABotPhases` (`PhaseID`),
  KEY `FK_ABotSamples_zoptions_ABotAnatomy` (`Anatomy1`) USING BTREE,
  KEY `FK_ABotSamples_zoptions_ABotAnatomy_2` (`Anatomy2`) USING BTREE,
  KEY `FK_ABotSamples_zoptions_ABotAnatomy_3` (`Anatomy3`) USING BTREE,
  KEY `FK_ABotSamples_zoptions_ABotAnatomy_4` (`Anatomy4`) USING BTREE,
  KEY `FK_ABotSamples_zoptions_Preservation` (`preservation_type_1`),
  KEY `FK_ABotSamples_zoptions_Preservation_2` (`preservation_type_2`),
  KEY `FK_ABotSamples_zoptions_yes_no` (`TaxonCodeConfidence`),
  CONSTRAINT `FK_ABotSamples_ABotPhases` FOREIGN KEY (`PhaseID`) REFERENCES `ABotPhases` (`PhaseID`) ON UPDATE CASCADE,
  CONSTRAINT `FK_ABotSamples_zoptions_ABotAnatomy` FOREIGN KEY (`Anatomy1`) REFERENCES `zoptions_ABotAnatomy` (`Anatomy`) ON UPDATE CASCADE,
  CONSTRAINT `FK_ABotSamples_zoptions_ABotAnatomy_2` FOREIGN KEY (`Anatomy2`) REFERENCES `zoptions_ABotAnatomy` (`Anatomy`) ON UPDATE CASCADE,
  CONSTRAINT `FK_ABotSamples_zoptions_ABotAnatomy_3` FOREIGN KEY (`Anatomy3`) REFERENCES `zoptions_ABotAnatomy` (`Anatomy`) ON UPDATE CASCADE,
  CONSTRAINT `FK_ABotSamples_zoptions_ABotAnatomy_4` FOREIGN KEY (`Anatomy4`) REFERENCES `zoptions_ABotAnatomy` (`Anatomy`) ON UPDATE CASCADE,
  CONSTRAINT `FK_ABotSamples_zoptions_Preservation` FOREIGN KEY (`preservation_type_1`) REFERENCES `zoptions_Preservation` (`preservation`) ON UPDATE CASCADE,
  CONSTRAINT `FK_ABotSamples_zoptions_Preservation_2` FOREIGN KEY (`preservation_type_2`) REFERENCES `zoptions_Preservation` (`preservation`) ON UPDATE CASCADE,
  CONSTRAINT `FK_ABotSamples_zoptions_TaxaList` FOREIGN KEY (`TaxonCode`) REFERENCES `zoptions_TaxaList` (`TaxonCode`) ON UPDATE CASCADE,
  CONSTRAINT `FK_ABotSamples_zoptions_yes_no` FOREIGN KEY (`TaxonCodeConfidence`) REFERENCES `zoptions_yes_no` (`present`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=932728 DEFAULT CHARSET=utf8mb3 COMMENT='Records of all taxa. \r\nFour columns of Anatomy (1,2,3,4) exist as a convenience for rare occasions where more than one plant part is identified. Overwhelmingly only a single ANatomy is required (in Anatomy1) therefore the other three are ussually left blank.\r\nSimilarly, two columns of TypeOfPreservation are available for the occasions where a sample falls into more than one category, such as ''charred'' and ''waterlogged''.\r\nThere are several ways the data are quantified: \r\n1) ''TotalCount'' is simply the total count of specimens. This cannot be zero. \r\n2) NULL values in ''TotalCount'' signify the presence of the taxon code.\r\n3) Ubiquity is a statistic giving the percentage of contexts in which the taxa was present. \r\nIt is possible to have a value for TotalCount, but not for ubiquity, since ubiquity is sometimes not available.\r\nIt is possble to have a ubiquity of zero (since it was not present in any of the contexts) but still have a TotalCount (some number at the sitephase, outside the specific contexts).\r\nIt is also posstible to have a ubiquity of zero, and a NULL TotalCount, signifying it was present at the sitephase, outside the specific contexts.\r\n';
/*!40101 SET character_set_client = @saved_cs_client */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`admin`@`127.0.0.1`*/ /*!50003 TRIGGER `ubiquity_insert` BEFORE INSERT ON `ABotSamples` FOR EACH ROW BEGIN

SET @total = (SELECT  `ABotPhases`.`ABotNumberOfContexts`
FROM `ABotPhases`
WHERE `ABotPhases`.`PhaseID` = NEW.`PhaseID`);


SET NEW.Ubiquity = NEW.NumberOfContexts/@total;
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
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`admin`@`127.0.0.1`*/ /*!50003 TRIGGER `trigger_ABot_badcount_insert` BEFORE INSERT ON `ABotSamples` FOR EACH ROW BEGIN
IF (NEW.`TotalCount` =0) THEN
SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Trigger Error: TotalCount cannot be zero. Use NULL if presence only';
END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_INSERT_ABotSamples` BEFORE INSERT ON `ABotSamples` FOR EACH ROW BEGIN SET NEW.`SampleID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`SampleID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`PhaseID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`PhaseID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`TaxonCode` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`TaxonCode`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`TaxonCodeConfidence` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`TaxonCodeConfidence`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Anatomy1` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Anatomy1`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Anatomy2` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Anatomy2`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Anatomy3` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Anatomy3`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Anatomy4` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Anatomy4`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`preservation_type_1` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`preservation_type_1`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`preservation_type_2` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`preservation_type_2`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`TotalCount` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`TotalCount`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`NumberOfContexts` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`NumberOfContexts`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Ubiquity` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Ubiquity`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_last_update`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_last_update`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `trigger_stamp_INSERT_ABotSamples` BEFORE INSERT ON `ABotSamples` FOR EACH ROW BEGIN SET NEW.user_added = SYSTEM_USER(); SET NEW.time_added = CURRENT_TIMESTAMP; SET NEW.user_last_update = SYSTEM_USER(); SET NEW.time_last_update = CURRENT_TIMESTAMP; END */;;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`admin`@`127.0.0.1`*/ /*!50003 TRIGGER `ubiquity_update` BEFORE UPDATE ON `ABotSamples` FOR EACH ROW BEGIN

SET @total = (SELECT  `ABotPhases`.`ABotNumberOfContexts`
FROM `ABotPhases`
INNER JOIN `ABotSamples`
ON `ABotPhases`.`PhaseID` = `ABotSamples`.`PhaseID`
WHERE `ABotSamples`.`SampleID` = NEW.`SampleID`);


SET NEW.Ubiquity = NEW.NumberOfContexts/@total;
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
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`admin`@`127.0.0.1`*/ /*!50003 TRIGGER `trigger_ABot_badcount_update` BEFORE UPDATE ON `ABotSamples` FOR EACH ROW BEGIN
IF (NEW.`TotalCount` =0) THEN
SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Trigger Error: TotalCount cannot be zero. Use NULL if presence only';
END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_UPDATE_ABotSamples` BEFORE UPDATE ON `ABotSamples` FOR EACH ROW BEGIN SET NEW.`SampleID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`SampleID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`PhaseID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`PhaseID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`TaxonCode` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`TaxonCode`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`TaxonCodeConfidence` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`TaxonCodeConfidence`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Anatomy1` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Anatomy1`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Anatomy2` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Anatomy2`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Anatomy3` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Anatomy3`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Anatomy4` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Anatomy4`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`preservation_type_1` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`preservation_type_1`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`preservation_type_2` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`preservation_type_2`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`TotalCount` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`TotalCount`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`NumberOfContexts` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`NumberOfContexts`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Ubiquity` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Ubiquity`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_last_update`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_last_update`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `trigger_stamp_UPDATE_ABotSamples` BEFORE UPDATE ON `ABotSamples` FOR EACH ROW BEGIN SET NEW.user_last_update = SYSTEM_USER(); SET NEW.time_last_update = CURRENT_TIMESTAMP; END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `C14Ghosts`
--

DROP TABLE IF EXISTS `C14Ghosts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `C14Ghosts` (
  `C14ID` int NOT NULL AUTO_INCREMENT COMMENT 'Unique identification code for each C14 sample',
  `PhaseID` varchar(9) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'Please see the detailed description of the ''Phases'' table.',
  `SiteID` varchar(6) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '' COMMENT 'Unique site identification number',
  `ItemID` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Period` varchar(7) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'Broad chronological period e.g. Early Neolithic (EN), Middle Neolithic (MN)',
  `C14.Age` int unsigned DEFAULT NULL COMMENT 'Uncalibrated years BP',
  `C14.SD` int DEFAULT NULL COMMENT 'Standard deviation',
  `δ13C` decimal(6,1) DEFAULT NULL COMMENT 'C13 value with respect to the radiocarbon date.',
  `δ13C.SD` decimal(6,1) DEFAULT NULL COMMENT 'C13 error (standard deviation) with respect to the radiocarbon date.',
  `LabID` varchar(30) CHARACTER SET latin1 COLLATE latin1_general_cs DEFAULT NULL COMMENT 'Unique Laboratory identification number. Lab suffixes must be in the C14laboratories table, which end with a hyphen. This is important as labcodes are automatically checked by string splitting on the first hyphen. Note, there are cases where multiple hyphen legitimately exist in a labcode (e.g. OxA-X-2135-46). Other non-standard characters are also permitted, such as ‘.’ or ‘/’. Case sensitivity is important, for example, prefix GD- and Gd- are two different laboratories. Spaces are NOT permitted, therefore rare occasions such as ''GIF FG 39a'' will be automatically assigned ''GIFFG-39a''',
  `Prefix` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_cs DEFAULT NULL COMMENT 'Laboratory prefix generated automatically (DO NOT ADD VALUES) by MySQL trigger, which automatically strips this from the LabID, as a sanity check that it is valid.',
  `TaxonCode` varchar(8) CHARACTER SET latin1 COLLATE latin1_general_cs DEFAULT NULL,
  `Material` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'Material of the sample',
  `MaterialNotes` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Flag` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'Published issues or problems with the date.',
  `ContextType` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'Specification of the feature dated directly by the 14C sample.',
  `Context` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `CitationID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'See citation table for the strict character code.',
  `time_added` timestamp NULL DEFAULT NULL COMMENT 'When first added to the database. Do not manually add values. This is automatically added by the database.',
  `user_added` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'Who first added to the database. Do not manually add values. This is automatically added by the database.',
  `time_last_update` timestamp NULL DEFAULT NULL COMMENT 'When last updated. Do not manually add values. This is automatically added by the database.',
  `user_last_update` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'Who last updated. Do not manually add values. This is automatically added by the database.',
  PRIMARY KEY (`C14ID`) USING BTREE,
  UNIQUE KEY `unique` (`C14ID`) USING BTREE,
  UNIQUE KEY `LabID` (`LabID`) USING BTREE,
  KEY `FK_C14Samples_Periods` (`Period`) USING BTREE,
  KEY `FK_C14Samples_C14laboratories` (`Prefix`) USING BTREE,
  KEY `FK_C14Samples_Phases` (`PhaseID`,`SiteID`,`Period`) USING BTREE,
  KEY `FK_C14Samples_Items` (`ItemID`) USING BTREE,
  KEY `FK_C14Samples_Citations` (`CitationID`) USING BTREE,
  KEY `FK_C14Samples_zoptions_Types` (`ContextType`) USING BTREE,
  KEY `FK_C14Ghosts_zoptions_TaxaList_2` (`TaxonCode`),
  KEY `FK_C14Ghosts_zoptions_Material` (`Material`),
  CONSTRAINT `c14ghosts_ibfk_1` FOREIGN KEY (`CitationID`) REFERENCES `Citations` (`CitationID`) ON UPDATE CASCADE,
  CONSTRAINT `c14ghosts_ibfk_2` FOREIGN KEY (`ItemID`) REFERENCES `Items` (`ItemID`) ON UPDATE CASCADE,
  CONSTRAINT `c14ghosts_ibfk_3` FOREIGN KEY (`PhaseID`, `SiteID`, `Period`) REFERENCES `Phases` (`PhaseID`, `SiteID`, `Period`) ON UPDATE CASCADE,
  CONSTRAINT `c14ghosts_ibfk_4` FOREIGN KEY (`Prefix`) REFERENCES `zoptions_C14laboratories` (`prefix`) ON UPDATE CASCADE,
  CONSTRAINT `c14ghosts_ibfk_6` FOREIGN KEY (`ContextType`) REFERENCES `zoptions_Types` (`Type`) ON UPDATE CASCADE,
  CONSTRAINT `FK_C14Ghosts_zoptions_Material` FOREIGN KEY (`Material`) REFERENCES `zoptions_Material` (`Material`) ON UPDATE CASCADE,
  CONSTRAINT `FK_C14Ghosts_zoptions_TaxaList` FOREIGN KEY (`TaxonCode`) REFERENCES `zoptions_TaxaList` (`TaxonCode`) ON UPDATE CASCADE,
  CONSTRAINT `FK_C14Ghosts_zoptions_TaxaList_2` FOREIGN KEY (`TaxonCode`) REFERENCES `zoptions_TaxaList` (`TaxonCode`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=32979 DEFAULT CHARSET=utf8mb3 COMMENT='C14 dates in the literature that are missing the minimum required information to be accepted into the C14 table. Their provenance is highly suspicous, yet can be found in some big 14C databases. This includes dates which can only be traced back to large C14 databases and not a single published source (book, article, report, etc.).\r\n\r\n';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_INSERT_C14Ghosts` BEFORE INSERT ON `C14Ghosts` FOR EACH ROW BEGIN SET NEW.`C14ID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`C14ID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`PhaseID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`PhaseID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`SiteID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`SiteID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`ItemID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`ItemID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Period` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Period`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`C14.Age` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`C14.Age`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`C14.SD` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`C14.SD`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`δ13C` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`δ13C`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`δ13C.SD` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`δ13C.SD`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`LabID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`LabID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Prefix` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Prefix`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`TaxonCode` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`TaxonCode`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Material` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Material`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`MaterialNotes` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`MaterialNotes`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Flag` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Flag`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`ContextType` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`ContextType`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Context` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Context`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`CitationID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`CitationID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_last_update`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_last_update`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `trigger_stamp_INSERT_C14Ghosts` BEFORE INSERT ON `C14Ghosts` FOR EACH ROW BEGIN SET NEW.user_added = SYSTEM_USER(); SET NEW.time_added = CURRENT_TIMESTAMP; SET NEW.user_last_update = SYSTEM_USER(); SET NEW.time_last_update = CURRENT_TIMESTAMP; END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_UPDATE_C14Ghosts` BEFORE UPDATE ON `C14Ghosts` FOR EACH ROW BEGIN SET NEW.`C14ID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`C14ID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`PhaseID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`PhaseID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`SiteID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`SiteID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`ItemID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`ItemID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Period` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Period`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`C14.Age` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`C14.Age`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`C14.SD` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`C14.SD`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`δ13C` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`δ13C`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`δ13C.SD` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`δ13C.SD`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`LabID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`LabID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Prefix` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Prefix`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`TaxonCode` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`TaxonCode`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Material` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Material`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`MaterialNotes` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`MaterialNotes`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Flag` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Flag`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`ContextType` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`ContextType`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Context` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Context`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`CitationID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`CitationID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_last_update`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_last_update`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `trigger_stamp_UPDATE_C14Ghosts` BEFORE UPDATE ON `C14Ghosts` FOR EACH ROW BEGIN SET NEW.user_last_update = SYSTEM_USER(); SET NEW.time_last_update = CURRENT_TIMESTAMP; END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `C14Samples`
--

DROP TABLE IF EXISTS `C14Samples`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `C14Samples` (
  `C14ID` int NOT NULL AUTO_INCREMENT COMMENT 'Unique identification code for each C14 sample',
  `PhaseID` varchar(9) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'Please see the detailed description of the ''Phases'' table.',
  `SiteID` varchar(6) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '' COMMENT 'Unique site identification number',
  `ItemID` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Period` varchar(7) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'Broad chronological period e.g. Early Neolithic (EN), Middle Neolithic (MN)',
  `Method` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'Method for obtaing the radiocarbon date',
  `C14.Age` int unsigned NOT NULL COMMENT 'Uncalibrated years BP',
  `C14.SD` int unsigned NOT NULL COMMENT 'Standard deviation',
  `δ13C` decimal(6,1) DEFAULT NULL COMMENT 'C13 value with respect to the radiocarbon date.',
  `δ13C.SD` decimal(6,1) DEFAULT NULL COMMENT 'C13 error (standard deviation) with respect to the radiocarbon date.',
  `C/N_collagen` decimal(2,1) DEFAULT NULL COMMENT 'Carbon / Nitrogen Atomic ratio (C:N) of carbon and nitrogen in the collagen sample.',
  `LabID` varchar(30) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL COMMENT 'Unique Laboratory identification number. Lab suffixes must be in the C14laboratories table, which end with a hyphen. This is important as labcodes are automatically checked by string splitting on the first hyphen. Note, there are cases where multiple hyphen legitimately exist in a labcode (e.g. OxA-X-2135-46). Other non-standard characters are also permitted, such as ‘.’ or ‘/’. Case sensitivity is important, for example, prefix GD- and Gd- are two different laboratories. Spaces are NOT permitted, therefore rare occasions such as ''GIF FG 39a'' will be automatically assigned ''GIFFG-39a''',
  `Prefix` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_cs DEFAULT NULL COMMENT 'Laboratory prefix generated automatically (DO NOT ADD VALUES) by MySQL trigger, which automatically strips this from the LabID, as a sanity check that it is valid.',
  `AltLabID` varchar(30) CHARACTER SET latin1 COLLATE latin1_general_cs DEFAULT NULL COMMENT 'Alternative lab code such as where the sample first went to one lab for treatment but was eventually measured at another. In such situations the first lab code is considered the primary one and stored in LabID with the second code stored here. But it is true that sometimes the order is unknown or confusing.',
  `AltPrefix` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_cs DEFAULT NULL COMMENT 'Laboratory prefix generated automatically (DO NOT ADD VALUES) by MySQL trigger, which automatically strips this from the AltLabID, as a sanity check that it is valid.',
  `TaxonCode` varchar(8) CHARACTER SET latin1 COLLATE latin1_general_cs DEFAULT NULL,
  `Material` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'Material of the sample. See zoptions_Material for available options.',
  `Preservation` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'Please see the detailed description of the ''zoptions_Preservation'' table.',
  `ABotAnatomy` varchar(30) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'Please see the detialed description of the ''zoptions_ABotAnatomy'' table.',
  `SkeletalElement` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_cs DEFAULT NULL COMMENT 'Please see the detailed description of the ''zoptions_SkeletalElement'' table.',
  `Quantity` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'Please see the detailed description of the ''zoptions_Quantity'' table.',
  `MaterialNotes` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'Additional information about the sample. If Citation specifies whether the sampled bone or tooth comes from the left or right side of the body, structure information as ''sin'' (corresponding to sinestra = left) or ''dex'' (corresponding to dexter = right)',
  `Flag` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'Published issues or problems with the date.',
  `ContextType` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'Specification of the feature dated directly by the 14C sample. Check the zoptions PhaseType table for categories.',
  `Context` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `CitationID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'See citation table for the strict character code.',
  `time_added` timestamp NULL DEFAULT NULL COMMENT 'When first added to the database. Do not manually add values. This is automatically added by the database.',
  `user_added` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'Who first added to the database. Do not manually add values. This is automatically added by the database.',
  `time_last_update` timestamp NULL DEFAULT NULL COMMENT 'When last updated. Do not manually add values. This is automatically added by the database.',
  `user_last_update` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'Who last updated. Do not manually add values. This is automatically added by the database.',
  PRIMARY KEY (`C14ID`),
  UNIQUE KEY `unique` (`C14ID`) USING BTREE,
  UNIQUE KEY `LabID` (`LabID`),
  UNIQUE KEY `uniqueAlt` (`AltLabID`),
  KEY `FK_C14Samples_Periods` (`Period`),
  KEY `FK_C14Samples_C14laboratories` (`Prefix`) USING BTREE,
  KEY `FK_C14Samples_Phases` (`PhaseID`,`SiteID`,`Period`),
  KEY `FK_C14Samples_Items` (`ItemID`),
  KEY `FK_C14Samples_zoptions_C14laboratories_2` (`AltPrefix`),
  KEY `FK_C14Samples_Citations` (`CitationID`),
  KEY `FK_C14Samples_zoptions_Types` (`ContextType`),
  KEY `FK_C14Samples_zoptions_TaxaList` (`TaxonCode`),
  KEY `FK_C14Samples_Sites` (`SiteID`),
  KEY `FK_C14Samples_zoptions_Quantity` (`Quantity`),
  KEY `SkeletalElement` (`SkeletalElement`),
  KEY `ABotAnatomy` (`ABotAnatomy`),
  KEY `Preservation` (`Preservation`),
  KEY `FK_C14Samples_zoptions_Material` (`Material`),
  KEY `FK_C14Samples_zoptions_Laboratory_Methods` (`Method`),
  CONSTRAINT `FK_C14Samples_Citations` FOREIGN KEY (`CitationID`) REFERENCES `Citations` (`CitationID`) ON UPDATE CASCADE,
  CONSTRAINT `FK_C14Samples_Items` FOREIGN KEY (`ItemID`) REFERENCES `Items` (`ItemID`) ON UPDATE CASCADE,
  CONSTRAINT `FK_C14Samples_Phases` FOREIGN KEY (`PhaseID`, `SiteID`, `Period`) REFERENCES `Phases` (`PhaseID`, `SiteID`, `Period`) ON UPDATE CASCADE,
  CONSTRAINT `FK_C14Samples_Sites` FOREIGN KEY (`SiteID`) REFERENCES `Sites` (`SiteID`) ON UPDATE CASCADE,
  CONSTRAINT `FK_C14Samples_zoptions_ABotAnatomy` FOREIGN KEY (`ABotAnatomy`) REFERENCES `zoptions_ABotAnatomy` (`Anatomy`) ON UPDATE CASCADE,
  CONSTRAINT `FK_C14Samples_zoptions_C14laboratories` FOREIGN KEY (`Prefix`) REFERENCES `zoptions_C14laboratories` (`prefix`) ON UPDATE CASCADE,
  CONSTRAINT `FK_C14Samples_zoptions_C14laboratories_2` FOREIGN KEY (`AltPrefix`) REFERENCES `zoptions_C14laboratories` (`prefix`) ON UPDATE CASCADE,
  CONSTRAINT `FK_C14Samples_zoptions_Laboratory_Methods` FOREIGN KEY (`Method`) REFERENCES `zoptions_Laboratory_Methods` (`Method`) ON UPDATE CASCADE,
  CONSTRAINT `FK_C14Samples_zoptions_Material` FOREIGN KEY (`Material`) REFERENCES `zoptions_Material` (`Material`) ON UPDATE CASCADE,
  CONSTRAINT `FK_C14Samples_zoptions_Preservation` FOREIGN KEY (`Preservation`) REFERENCES `zoptions_Preservation` (`preservation`) ON UPDATE CASCADE,
  CONSTRAINT `FK_C14Samples_zoptions_Quantity` FOREIGN KEY (`Quantity`) REFERENCES `zoptions_Quantity` (`quantity`) ON UPDATE CASCADE,
  CONSTRAINT `FK_C14Samples_zoptions_SkeletalElement` FOREIGN KEY (`SkeletalElement`) REFERENCES `zoptions_SkeletalElements` (`Element`) ON UPDATE CASCADE,
  CONSTRAINT `FK_C14Samples_zoptions_TaxaList` FOREIGN KEY (`TaxonCode`) REFERENCES `zoptions_TaxaList` (`TaxonCode`) ON UPDATE CASCADE,
  CONSTRAINT `FK_C14Samples_zoptions_Types` FOREIGN KEY (`ContextType`) REFERENCES `zoptions_Types` (`Type`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=38947 DEFAULT CHARSET=utf8mb3 COMMENT='Ideally 14C dates should be associated with a specific PhaseID which allows them to be directly connected to a multitude of other data. However, most 14C dates can only be secured to a SiteID. The current table 14Cdeadhead will be gradually amalgamated into this table, as data are cleaned and harmonised.\r\n\r\nSome C14 samples are assigned to only a SiteID, and others assigned to a PhaseID AND its repective SiteID. Therefore the 14CSamples table uses a composite foreign key to connect to the Phases table.\r\n';
/*!40101 SET character_set_client = @saved_cs_client */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`admin`@`127.0.0.1`*/ /*!50003 TRIGGER `trigger_LabID_prefix_insert` BEFORE INSERT ON `C14Samples` FOR EACH ROW BEGIN 
set new.Prefix = SUBSTRING_INDEX(NEW.LabID,'-',1);
SET NEW.AltPrefix = SUBSTRING_INDEX(NEW.AltLabID,'-',1);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `BIAD` CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci ;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`admin`@`127.0.0.1`*/ /*!50003 TRIGGER `trigger_LabID_whitespace_insert` BEFORE INSERT ON `C14Samples` FOR EACH ROW BEGIN
set new.LabID = REPLACE(NEW.LabID, ' ', '');
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
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_INSERT_C14Samples` BEFORE INSERT ON `C14Samples` FOR EACH ROW BEGIN SET NEW.`C14ID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`C14ID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`PhaseID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`PhaseID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`SiteID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`SiteID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`ItemID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`ItemID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Period` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Period`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Method` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Method`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`C14.Age` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`C14.Age`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`C14.SD` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`C14.SD`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`δ13C` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`δ13C`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`δ13C.SD` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`δ13C.SD`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`C/N_collagen` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`C/N_collagen`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`LabID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`LabID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Prefix` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Prefix`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`AltLabID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`AltLabID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`AltPrefix` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`AltPrefix`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`TaxonCode` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`TaxonCode`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Material` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Material`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Preservation` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Preservation`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`ABotAnatomy` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`ABotAnatomy`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`SkeletalElement` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`SkeletalElement`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Quantity` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Quantity`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`MaterialNotes` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`MaterialNotes`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Flag` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Flag`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`ContextType` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`ContextType`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Context` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Context`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`CitationID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`CitationID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_last_update`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_last_update`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `trigger_stamp_INSERT_C14Samples` BEFORE INSERT ON `C14Samples` FOR EACH ROW BEGIN SET NEW.user_added = SYSTEM_USER(); SET NEW.time_added = CURRENT_TIMESTAMP; SET NEW.user_last_update = SYSTEM_USER(); SET NEW.time_last_update = CURRENT_TIMESTAMP; END */;;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`admin`@`127.0.0.1`*/ /*!50003 TRIGGER `trigger_LabID_prefix_update` BEFORE UPDATE ON `C14Samples` FOR EACH ROW BEGIN 
set new.Prefix = SUBSTRING_INDEX(NEW.LabID,'-',1);
SET NEW.AltPrefix = SUBSTRING_INDEX(NEW.AltLabID,'-',1);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `BIAD` CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci ;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`admin`@`127.0.0.1`*/ /*!50003 TRIGGER `trigger_LabID_whitespace_update` BEFORE UPDATE ON `C14Samples` FOR EACH ROW BEGIN
set new.LabID = REPLACE(NEW.LabID, ' ', '');
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
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_UPDATE_C14Samples` BEFORE UPDATE ON `C14Samples` FOR EACH ROW BEGIN SET NEW.`C14ID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`C14ID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`PhaseID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`PhaseID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`SiteID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`SiteID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`ItemID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`ItemID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Period` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Period`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Method` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Method`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`C14.Age` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`C14.Age`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`C14.SD` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`C14.SD`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`δ13C` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`δ13C`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`δ13C.SD` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`δ13C.SD`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`C/N_collagen` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`C/N_collagen`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`LabID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`LabID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Prefix` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Prefix`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`AltLabID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`AltLabID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`AltPrefix` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`AltPrefix`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`TaxonCode` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`TaxonCode`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Material` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Material`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Preservation` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Preservation`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`ABotAnatomy` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`ABotAnatomy`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`SkeletalElement` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`SkeletalElement`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Quantity` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Quantity`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`MaterialNotes` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`MaterialNotes`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Flag` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Flag`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`ContextType` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`ContextType`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Context` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Context`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`CitationID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`CitationID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_last_update`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_last_update`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `trigger_stamp_UPDATE_C14Samples` BEFORE UPDATE ON `C14Samples` FOR EACH ROW BEGIN SET NEW.user_last_update = SYSTEM_USER(); SET NEW.time_last_update = CURRENT_TIMESTAMP; END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `Citations`
--

DROP TABLE IF EXISTS `Citations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Citations` (
  `CitationID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'Unique identifier of a reference publication, constructed from first five characters of first author''s surname in lowercase (or less if the surname is shorter), year of publication, and a single lowercase letter (a for the first reference, b for the second etc)',
  `Authors` varchar(4000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'Surnames first. Authors separated semicolons. Any formatting of first names is acceptable. E.g., initials, full first names, initials separated by fullstop etc.',
  `Title` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Publication` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'Journal',
  `Volume` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Number` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'Issue',
  `Pages` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Year` int NOT NULL,
  `Publisher` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `DOI` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'Digital Object Identifier of the source',
  `material_culture` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'If this data type is present in the paper, also specify how much (if any) of the data was added. Leave NULL if unsure or haven''t checked.',
  `radiocarbon` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'If this data type is present in the paper, also specify how much (if any) of the data was added. Leave NULL if unsure or haven''t checked.',
  `faunal` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'If this data type is present in the paper, also specify how much (if any) of the data was added. Leave NULL if unsure or haven''t checked.',
  `botanical` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'If this data type is present in the paper, also specify how much (if any) of the data was added. Leave NULL if unsure or haven''t checked.',
  `isotopes` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'If this data type is present in the paper, also specify how much (if any) of the data was added. Leave NULL if unsure or haven''t checked.',
  `isotopes_animal` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'If this data type is present in the paper, also specify how much (if any) of the data was added. Leave NULL if unsure or haven''t checked.',
  `isotopes_botanical` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'If this data type is present in the paper, also specify how much (if any) of the data was added. Leave NULL if unsure or haven''t checked.',
  `isotopes_human` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'If this data type is present in the paper, also specify how much (if any) of the data was added. Leave NULL if unsure or haven''t checked.',
  `isotopes_c/n` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'If this data type is present in the paper, also specify how much (if any) of the data was added. Leave NULL if unsure or haven''t checked.',
  `strontium` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'If this data type is present in the paper, also specify how much (if any) of the data was added. Leave NULL if unsure or haven''t checked.',
  `notes` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `country` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'All countries included in the publication, semi-colon separated.',
  `iso3166` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'All country iso3166 codes included in the publication, semi-colon separated.',
  `time_added` timestamp NULL DEFAULT NULL COMMENT 'When first added to the database. Do not manually add values. This is automatically added by the database.',
  `user_added` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'Who first added to the database. Do not manually add values. This is automatically added by the database.',
  `time_last_update` timestamp NULL DEFAULT NULL COMMENT 'When last updated. Do not manually add values. This is automatically added by the database.',
  `user_last_update` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'Who last updated. Do not manually add values. This is automatically added by the database.',
  PRIMARY KEY (`CitationID`),
  UNIQUE KEY `unique` (`CitationID`),
  KEY `FK_Citations_zoptions_yes_no` (`material_culture`),
  KEY `FK_Citations_zoptions_yes_no_2` (`radiocarbon`),
  KEY `FK_Citations_zoptions_yes_no_3` (`faunal`),
  KEY `FK_Citations_zoptions_yes_no_4` (`botanical`),
  KEY `FK_Citations_zoptions_yes_no_5` (`isotopes`),
  KEY `FK_Citations_zoptions_yes_no_6` (`isotopes_animal`),
  KEY `FK_Citations_zoptions_yes_no_7` (`isotopes_botanical`),
  KEY `FK_Citations_zoptions_yes_no_8` (`isotopes_c/n`),
  KEY `FK_Citations_zoptions_yes_no_9` (`strontium`),
  KEY `FK_Citations_zoptions_yes_no_10` (`isotopes_human`),
  CONSTRAINT `FK_Citations_zoptions_yes_no` FOREIGN KEY (`material_culture`) REFERENCES `zoptions_yes_no` (`present`) ON UPDATE CASCADE,
  CONSTRAINT `FK_Citations_zoptions_yes_no_10` FOREIGN KEY (`isotopes_human`) REFERENCES `zoptions_yes_no` (`present`) ON UPDATE CASCADE,
  CONSTRAINT `FK_Citations_zoptions_yes_no_2` FOREIGN KEY (`radiocarbon`) REFERENCES `zoptions_yes_no` (`present`) ON UPDATE CASCADE,
  CONSTRAINT `FK_Citations_zoptions_yes_no_3` FOREIGN KEY (`faunal`) REFERENCES `zoptions_yes_no` (`present`) ON UPDATE CASCADE,
  CONSTRAINT `FK_Citations_zoptions_yes_no_4` FOREIGN KEY (`botanical`) REFERENCES `zoptions_yes_no` (`present`) ON UPDATE CASCADE,
  CONSTRAINT `FK_Citations_zoptions_yes_no_5` FOREIGN KEY (`isotopes`) REFERENCES `zoptions_yes_no` (`present`) ON UPDATE CASCADE,
  CONSTRAINT `FK_Citations_zoptions_yes_no_6` FOREIGN KEY (`isotopes_animal`) REFERENCES `zoptions_yes_no` (`present`) ON UPDATE CASCADE,
  CONSTRAINT `FK_Citations_zoptions_yes_no_7` FOREIGN KEY (`isotopes_botanical`) REFERENCES `zoptions_yes_no` (`present`) ON UPDATE CASCADE,
  CONSTRAINT `FK_Citations_zoptions_yes_no_8` FOREIGN KEY (`isotopes_c/n`) REFERENCES `zoptions_yes_no` (`present`) ON UPDATE CASCADE,
  CONSTRAINT `FK_Citations_zoptions_yes_no_9` FOREIGN KEY (`strontium`) REFERENCES `zoptions_yes_no` (`present`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_swedish_ci COMMENT='Column 1: CitationID is a specific amalgamation of name and year. If Bulatović published as as first author in 2019, this would be designated "bulat2019a". If another different paper also satisfies this, it is assigned "bulat2019b". The order of a and b is irrelevant, they are merely to ensure identifiers are unique. Special characters are permitted, to preperly reflect the author''s surname. However, spaces are not permitted, and if absolutely necessary should be replaced with a hyphen (''-''), for example the author ''Van Neer, Wim'' publishing in 1995  becomes ''van-n1995a'', and the author ''Bar-El, Theodora'' publishing in 2000 becomes ''bar-e2000a''\r\nColumns 2 to 9: match the standard csv output of google scholar. \r\nColumns 10 to 14: information about the type of data in the publication.\r\nThere are deliberately no notes fields. If some data needs to reference some specific part of the citation (for example particular pages) this should be done as reference notes in the relevant table. Therefore a citation in this table can be used for multiple data sources.\r\n\r\nDatabases:\r\nThese are not primary sources. Error propagation is a problem when data are harvested by combining existing databases. For example, radiocarbon databases have a ratcheting error problem. This can be combated by ensuring only primary sources are stored.\r\n\r\nTheses: \r\nCiting data that has only been published in a thesis should be included in this table. ''CitationID'' and ''Author'' and ''Year'' and ''Title'' should be specified in the usual way, and ''Thesis'' can be specified in the ''Publisher'' field. \r\n\r\nUnpublished: \r\nCitations for unpublished sources should be included, since these can be future updated once accepted by journal. Even if the source is in a very preliminary stage, its pre-published ''ownership should be assigned to an individual, therefore the ''CitationID'' and ''Author'' and ''Year'' should be specified in the usual way, and the title  can be used as an optional notes field to provide further details.\r\n\r\n\r\n';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_INSERT_Citations` BEFORE INSERT ON `Citations` FOR EACH ROW BEGIN SET NEW.`CitationID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`CitationID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Authors` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Authors`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Title` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Title`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Publication` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Publication`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Volume` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Volume`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Number` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Number`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Pages` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Pages`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Year` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Year`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Publisher` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Publisher`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`DOI` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`DOI`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`material_culture` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`material_culture`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`radiocarbon` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`radiocarbon`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`faunal` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`faunal`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`botanical` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`botanical`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`isotopes` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`isotopes`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`isotopes_animal` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`isotopes_animal`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`isotopes_botanical` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`isotopes_botanical`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`isotopes_human` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`isotopes_human`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`isotopes_c/n` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`isotopes_c/n`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`strontium` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`strontium`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`notes` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`notes`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`country` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`country`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`iso3166` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`iso3166`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_last_update`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_last_update`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `trigger_stamp_INSERT_Citations` BEFORE INSERT ON `Citations` FOR EACH ROW BEGIN SET NEW.user_added = SYSTEM_USER(); SET NEW.time_added = CURRENT_TIMESTAMP; SET NEW.user_last_update = SYSTEM_USER(); SET NEW.time_last_update = CURRENT_TIMESTAMP; END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_UPDATE_Citations` BEFORE UPDATE ON `Citations` FOR EACH ROW BEGIN SET NEW.`CitationID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`CitationID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Authors` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Authors`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Title` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Title`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Publication` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Publication`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Volume` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Volume`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Number` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Number`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Pages` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Pages`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Year` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Year`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Publisher` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Publisher`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`DOI` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`DOI`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`material_culture` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`material_culture`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`radiocarbon` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`radiocarbon`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`faunal` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`faunal`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`botanical` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`botanical`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`isotopes` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`isotopes`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`isotopes_animal` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`isotopes_animal`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`isotopes_botanical` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`isotopes_botanical`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`isotopes_human` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`isotopes_human`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`isotopes_c/n` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`isotopes_c/n`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`strontium` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`strontium`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`notes` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`notes`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`country` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`country`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`iso3166` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`iso3166`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_last_update`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_last_update`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `trigger_stamp_UPDATE_Citations` BEFORE UPDATE ON `Citations` FOR EACH ROW BEGIN SET NEW.user_last_update = SYSTEM_USER(); SET NEW.time_last_update = CURRENT_TIMESTAMP; END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `Citations_copyNR`
--

DROP TABLE IF EXISTS `Citations_copyNR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Citations_copyNR` (
  `CitationID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'Unique identifier of a reference publication, constructed from first five characters of first author''s surname in lowercase (or less if the surname is shorter), year of publication, and a single lowercase letter (a for the first reference, b for the second etc)',
  `Authors` varchar(4000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'Surnames first. Authors separated semicolons. Any formatting of first names is acceptable. E.g., initials, full first names, initials separated by fullstop etc.',
  `Title` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Publication` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'Journal',
  `Volume` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Number` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'Issue',
  `Pages` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Year` int NOT NULL,
  `Publisher` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `DOI` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'Digital Object Identifier of the source',
  `material_culture` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'If this data type is present in the paper, also specify how much (if any) of the data was added. Leave NULL if unsure or haven''t checked.',
  `radiocarbon` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'If this data type is present in the paper, also specify how much (if any) of the data was added. Leave NULL if unsure or haven''t checked.',
  `faunal` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'If this data type is present in the paper, also specify how much (if any) of the data was added. Leave NULL if unsure or haven''t checked.',
  `botanical` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'If this data type is present in the paper, also specify how much (if any) of the data was added. Leave NULL if unsure or haven''t checked.',
  `isotopes` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'If this data type is present in the paper, also specify how much (if any) of the data was added. Leave NULL if unsure or haven''t checked.',
  `isotopes_animal` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'If this data type is present in the paper, also specify how much (if any) of the data was added. Leave NULL if unsure or haven''t checked.',
  `isotopes_botanical` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'If this data type is present in the paper, also specify how much (if any) of the data was added. Leave NULL if unsure or haven''t checked.',
  `isotopes_human` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'If this data type is present in the paper, also specify how much (if any) of the data was added. Leave NULL if unsure or haven''t checked.',
  `isotopes_c/n` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'If this data type is present in the paper, also specify how much (if any) of the data was added. Leave NULL if unsure or haven''t checked.',
  `strontium` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'If this data type is present in the paper, also specify how much (if any) of the data was added. Leave NULL if unsure or haven''t checked.',
  `notes` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `country` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'All countries included in the publication, semi-colon separated.',
  `iso3166` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'All country iso3166 codes included in the publication, semi-colon separated.',
  `time_added` timestamp NULL DEFAULT NULL COMMENT 'When first added to the database. Do not manually add values. This is automatically added by the database.',
  `user_added` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'Who first added to the database. Do not manually add values. This is automatically added by the database.',
  `time_last_update` timestamp NULL DEFAULT NULL COMMENT 'When last updated. Do not manually add values. This is automatically added by the database.',
  `user_last_update` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'Who last updated. Do not manually add values. This is automatically added by the database.',
  PRIMARY KEY (`CitationID`) USING BTREE,
  UNIQUE KEY `unique` (`CitationID`) USING BTREE,
  KEY `FK_Citations_zoptions_yes_no` (`material_culture`) USING BTREE,
  KEY `FK_Citations_zoptions_yes_no_2` (`radiocarbon`) USING BTREE,
  KEY `FK_Citations_zoptions_yes_no_3` (`faunal`) USING BTREE,
  KEY `FK_Citations_zoptions_yes_no_4` (`botanical`) USING BTREE,
  KEY `FK_Citations_zoptions_yes_no_5` (`isotopes`) USING BTREE,
  KEY `FK_Citations_zoptions_yes_no_6` (`isotopes_animal`) USING BTREE,
  KEY `FK_Citations_zoptions_yes_no_7` (`isotopes_botanical`) USING BTREE,
  KEY `FK_Citations_zoptions_yes_no_8` (`isotopes_c/n`) USING BTREE,
  KEY `FK_Citations_zoptions_yes_no_9` (`strontium`) USING BTREE,
  KEY `FK_Citations_zoptions_yes_no_10` (`isotopes_human`) USING BTREE,
  CONSTRAINT `Citations_copyNR_ibfk_1` FOREIGN KEY (`material_culture`) REFERENCES `zoptions_yes_no` (`present`) ON UPDATE CASCADE,
  CONSTRAINT `Citations_copyNR_ibfk_10` FOREIGN KEY (`strontium`) REFERENCES `zoptions_yes_no` (`present`) ON UPDATE CASCADE,
  CONSTRAINT `Citations_copyNR_ibfk_2` FOREIGN KEY (`isotopes_human`) REFERENCES `zoptions_yes_no` (`present`) ON UPDATE CASCADE,
  CONSTRAINT `Citations_copyNR_ibfk_3` FOREIGN KEY (`radiocarbon`) REFERENCES `zoptions_yes_no` (`present`) ON UPDATE CASCADE,
  CONSTRAINT `Citations_copyNR_ibfk_4` FOREIGN KEY (`faunal`) REFERENCES `zoptions_yes_no` (`present`) ON UPDATE CASCADE,
  CONSTRAINT `Citations_copyNR_ibfk_5` FOREIGN KEY (`botanical`) REFERENCES `zoptions_yes_no` (`present`) ON UPDATE CASCADE,
  CONSTRAINT `Citations_copyNR_ibfk_6` FOREIGN KEY (`isotopes`) REFERENCES `zoptions_yes_no` (`present`) ON UPDATE CASCADE,
  CONSTRAINT `Citations_copyNR_ibfk_7` FOREIGN KEY (`isotopes_animal`) REFERENCES `zoptions_yes_no` (`present`) ON UPDATE CASCADE,
  CONSTRAINT `Citations_copyNR_ibfk_8` FOREIGN KEY (`isotopes_botanical`) REFERENCES `zoptions_yes_no` (`present`) ON UPDATE CASCADE,
  CONSTRAINT `Citations_copyNR_ibfk_9` FOREIGN KEY (`isotopes_c/n`) REFERENCES `zoptions_yes_no` (`present`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_swedish_ci COMMENT='Column 1: CitationID is a specific amalgamation of name and year. If Bulatović published as as first author in 2019, this would be designated "bulat2019a". If another different paper also satisfies this, it is assigned "bulat2019b". The order of a and b is irrelevant, they are merely to ensure identifiers are unique. Special characters are permitted, to preperly reflect the author''s surname. However, spaces are not permitted, and if absolutely necessary should be replaced with a hyphen (''-''), for example the author ''Van Neer, Wim'' publishing in 1995  becomes ''van-n1995a'', and the author ''Bar-El, Theodora'' publishing in 2000 becomes ''bar-e2000a''\r\nColumns 2 to 9: match the standard csv output of google scholar. \r\nColumns 10 to 14: information about the type of data in the publication.\r\nThere are deliberately no notes fields. If some data needs to reference some specific part of the citation (for example particular pages) this should be done as reference notes in the relevant table. Therefore a citation in this table can be used for multiple data sources.\r\n\r\nDatabases:\r\nThese are not primary sources. Error propagation is a problem when data are harvested by combining existing databases. For example, radiocarbon databases have a ratcheting error problem. This can be combated by ensuring only primary sources are stored.\r\n\r\nTheses: \r\nCiting data that has only been published in a thesis should be included in this table. ''CitationID'' and ''Author'' and ''Year'' and ''Title'' should be specified in the usual way, and ''Thesis'' can be specified in the ''Publisher'' field. \r\n\r\nUnpublished: \r\nCitations for unpublished sources should be included, since these can be future updated once accepted by journal. Even if the source is in a very preliminary stage, its pre-published ''ownership should be assigned to an individual, therefore the ''CitationID'' and ''Author'' and ''Year'' should be specified in the usual way, and the title  can be used as an optional notes field to provide further details.\r\n\r\n\r\n';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_INSERT_Citations_copyNR` BEFORE INSERT ON `Citations_copyNR` FOR EACH ROW BEGIN SET NEW.`CitationID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`CitationID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Authors` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Authors`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Title` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Title`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Publication` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Publication`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Volume` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Volume`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Number` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Number`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Pages` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Pages`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Year` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Year`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Publisher` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Publisher`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`DOI` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`DOI`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`material_culture` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`material_culture`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`radiocarbon` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`radiocarbon`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`faunal` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`faunal`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`botanical` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`botanical`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`isotopes` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`isotopes`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`isotopes_animal` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`isotopes_animal`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`isotopes_botanical` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`isotopes_botanical`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`isotopes_human` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`isotopes_human`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`isotopes_c/n` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`isotopes_c/n`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`strontium` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`strontium`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`notes` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`notes`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`country` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`country`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`iso3166` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`iso3166`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_last_update`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_last_update`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `trigger_stamp_INSERT_Citations_copyNR` BEFORE INSERT ON `Citations_copyNR` FOR EACH ROW BEGIN SET NEW.user_added = SYSTEM_USER(); SET NEW.time_added = CURRENT_TIMESTAMP; SET NEW.user_last_update = SYSTEM_USER(); SET NEW.time_last_update = CURRENT_TIMESTAMP; END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_UPDATE_Citations_copyNR` BEFORE UPDATE ON `Citations_copyNR` FOR EACH ROW BEGIN SET NEW.`CitationID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`CitationID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Authors` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Authors`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Title` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Title`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Publication` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Publication`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Volume` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Volume`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Number` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Number`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Pages` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Pages`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Year` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Year`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Publisher` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Publisher`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`DOI` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`DOI`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`material_culture` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`material_culture`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`radiocarbon` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`radiocarbon`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`faunal` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`faunal`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`botanical` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`botanical`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`isotopes` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`isotopes`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`isotopes_animal` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`isotopes_animal`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`isotopes_botanical` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`isotopes_botanical`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`isotopes_human` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`isotopes_human`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`isotopes_c/n` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`isotopes_c/n`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`strontium` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`strontium`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`notes` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`notes`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`country` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`country`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`iso3166` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`iso3166`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_last_update`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_last_update`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `trigger_stamp_UPDATE_Citations_copyNR` BEFORE UPDATE ON `Citations_copyNR` FOR EACH ROW BEGIN SET NEW.user_last_update = SYSTEM_USER(); SET NEW.time_last_update = CURRENT_TIMESTAMP; END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `FaunalBiometrics`
--

DROP TABLE IF EXISTS `FaunalBiometrics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `FaunalBiometrics` (
  `MetricID` varchar(7) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL COMMENT 'Unique metric identification number',
  `BoneID` varchar(7) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL COMMENT 'Bone identification number, since many metrics can be measured from the same bone.',
  `Measurement` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL COMMENT 'Von den Driesch abbreviation of the metric.',
  `PhaseID` varchar(9) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL COMMENT 'Please see the detailed description of the ''Phases'' table.',
  `TaxonCode` varchar(8) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL COMMENT 'Unique code to identify the full taxonomic name. This usually consists of the first four letters of the genus and first three letters of the species.',
  `SkeletalElement` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL COMMENT 'Name of bone or tooth. Case sensitive, as adult and milk teeth are defined by upper and lower case.',
  `Sex` decimal(4,3) DEFAULT NULL COMMENT 'Probability of being female. A value of 1 indicates female with certainty, a value of 0 indicates male with certainty, and a value of 0.5 indicates an equal probability of male or female.',
  `Castrate` decimal(4,3) DEFAULT NULL COMMENT 'Probability of being a castrate. A value of 1 indicates castrate with certainty. A value of 0.5 indicates an equal probability of being castrated or not.  A value of 0 indicates certainly not a castrate. NULL indicates unknown.',
  `Value` decimal(5,2) NOT NULL COMMENT 'Measurement value in mm.',
  `time_added` timestamp NULL DEFAULT NULL COMMENT 'When first added to the database. Do not manually add values. This is automatically added by the database.',
  `user_added` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'Who first added to the database. Do not manually add values. This is automatically added by the database.',
  `time_last_update` timestamp NULL DEFAULT NULL COMMENT 'When last updated. Do not manually add values. This is automatically added by the database.',
  `user_last_update` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'Who last updated. Do not manually add values. This is automatically added by the database.',
  PRIMARY KEY (`MetricID`) USING BTREE,
  UNIQUE KEY `unique` (`MetricID`) USING BTREE,
  KEY `FK_FaunalBiometrics_Phases` (`PhaseID`),
  KEY `FK_FaunalBiometrics_zoptions_FaunalMeasurement` (`Measurement`),
  KEY `FK_FaunalBiometrics_zoptions_TaxaList` (`TaxonCode`),
  KEY `FK_FaunalBiometrics_zoptions_SkeletalElements` (`SkeletalElement`) USING BTREE,
  CONSTRAINT `FK_FaunalBiometrics_Phases` FOREIGN KEY (`PhaseID`) REFERENCES `Phases` (`PhaseID`) ON UPDATE CASCADE,
  CONSTRAINT `FK_FaunalBiometrics_zoptions_FaunalMeasurement` FOREIGN KEY (`Measurement`) REFERENCES `zoptions_FaunalMeasurement` (`Measurement`) ON UPDATE CASCADE,
  CONSTRAINT `FK_FaunalBiometrics_zoptions_SkeletalElements` FOREIGN KEY (`SkeletalElement`) REFERENCES `zoptions_SkeletalElements` (`Element`) ON UPDATE CASCADE,
  CONSTRAINT `FK_FaunalBiometrics_zoptions_TaxaList` FOREIGN KEY (`TaxonCode`) REFERENCES `zoptions_TaxaList` (`TaxonCode`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs COMMENT='The interaction between the ''Castrate'' probability and ''Sex'' probability (of being female) is tricky. In cases where the sex determination was originally published as ''castrate?'' there was uncertainty in the archaeologist''s mind, which we interpret as an equal probability of being castrated or not. However, it is unclear if the archaeologist was confident that it was a male (either castrated or not), or if there was also the possibility that it was female. Therefore, in all cases where the castrate probability is between 0 and 1 we make no judgment on th castrate status and leave null. Likewise where there is no judgement on the sex probability where the castrate status is uncertain.';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_INSERT_FaunalBiometrics` BEFORE INSERT ON `FaunalBiometrics` FOR EACH ROW BEGIN SET NEW.`MetricID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`MetricID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`BoneID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`BoneID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Measurement` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Measurement`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`PhaseID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`PhaseID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`TaxonCode` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`TaxonCode`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`SkeletalElement` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`SkeletalElement`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Sex` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Sex`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Castrate` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Castrate`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Value` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Value`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_last_update`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_last_update`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `trigger_stamp_INSERT_FaunalBiometrics` BEFORE INSERT ON `FaunalBiometrics` FOR EACH ROW BEGIN SET NEW.user_added = SYSTEM_USER(); SET NEW.time_added = CURRENT_TIMESTAMP; SET NEW.user_last_update = SYSTEM_USER(); SET NEW.time_last_update = CURRENT_TIMESTAMP; END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_UPDATE_FaunalBiometrics` BEFORE UPDATE ON `FaunalBiometrics` FOR EACH ROW BEGIN SET NEW.`MetricID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`MetricID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`BoneID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`BoneID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Measurement` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Measurement`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`PhaseID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`PhaseID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`TaxonCode` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`TaxonCode`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`SkeletalElement` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`SkeletalElement`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Sex` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Sex`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Castrate` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Castrate`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Value` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Value`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_last_update`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_last_update`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `trigger_stamp_UPDATE_FaunalBiometrics` BEFORE UPDATE ON `FaunalBiometrics` FOR EACH ROW BEGIN SET NEW.user_last_update = SYSTEM_USER(); SET NEW.time_last_update = CURRENT_TIMESTAMP; END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `FaunalIsotopeSequences`
--

DROP TABLE IF EXISTS `FaunalIsotopeSequences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `FaunalIsotopeSequences` (
  `FaunSliceID` varchar(8) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL COMMENT 'Primary key ',
  `FaunIsoID` varchar(8) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `SampleID` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'Sample number or ID in the primary source specifying this particualar sequential sample',
  `SequenceOrder` tinyint unsigned DEFAULT NULL COMMENT 'Rank order of the sequence (i.e closest to the root is 1)',
  `ERJdistance(mm)` decimal(3,1) DEFAULT NULL COMMENT 'Distance from Enamel Root Junction (mm)',
  ` δ13C_bioapatite(‰)` decimal(5,3) DEFAULT NULL,
  ` δ18O_bioapatite(‰)` decimal(5,3) DEFAULT NULL,
  `CitationID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `time_added` timestamp NULL DEFAULT NULL COMMENT 'When first added to the database. Do not manually add values. This is automatically added by the database.',
  `user_added` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'Who first added to the database. Do not manually add values. This is automatically added by the database.',
  `time_last_update` timestamp NULL DEFAULT NULL COMMENT 'When last updated. Do not manually add values. This is automatically added by the database.',
  `user_last_update` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'Who last updated. Do not manually add values. This is automatically added by the database.',
  PRIMARY KEY (`FaunSliceID`) USING BTREE,
  UNIQUE KEY `unique` (`FaunSliceID`) USING BTREE,
  KEY `FK_FaunalIsotopeSlices_FaunalIsotopes` (`FaunIsoID`) USING BTREE,
  KEY `FK_FaunalIsotopeSequences_Citations` (`CitationID`),
  CONSTRAINT `faunalisotopesequences_ibfk_1` FOREIGN KEY (`FaunIsoID`) REFERENCES `FaunalIsotopes` (`FaunIsoID`) ON UPDATE CASCADE,
  CONSTRAINT `FK_FaunalIsotopeSequences_Citations` FOREIGN KEY (`CitationID`) REFERENCES `Citations` (`CitationID`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_swedish_ci COMMENT='Where sequential sampling data are available, raw δ13C(‰) and δ18O(‰) and potentially other sequential data should be stored here.';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_INSERT_FaunalIsotopeSequences` BEFORE INSERT ON `FaunalIsotopeSequences` FOR EACH ROW BEGIN SET NEW.`FaunSliceID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`FaunSliceID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`FaunIsoID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`FaunIsoID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`SampleID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`SampleID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`SequenceOrder` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`SequenceOrder`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`ERJdistance(mm)` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`ERJdistance(mm)`, '', ' '), '
', ' '), '	', ' ')); SET NEW.` δ13C_bioapatite(‰)` = TRIM(REPLACE(REPLACE(REPLACE(NEW.` δ13C_bioapatite(‰)`, '', ' '), '
', ' '), '	', ' ')); SET NEW.` δ18O_bioapatite(‰)` = TRIM(REPLACE(REPLACE(REPLACE(NEW.` δ18O_bioapatite(‰)`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`CitationID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`CitationID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_last_update`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_last_update`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `trigger_stamp_INSERT_FaunalIsotopeSequences` BEFORE INSERT ON `FaunalIsotopeSequences` FOR EACH ROW BEGIN SET NEW.user_added = SYSTEM_USER(); SET NEW.time_added = CURRENT_TIMESTAMP; SET NEW.user_last_update = SYSTEM_USER(); SET NEW.time_last_update = CURRENT_TIMESTAMP; END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_UPDATE_FaunalIsotopeSequences` BEFORE UPDATE ON `FaunalIsotopeSequences` FOR EACH ROW BEGIN SET NEW.`FaunSliceID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`FaunSliceID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`FaunIsoID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`FaunIsoID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`SampleID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`SampleID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`SequenceOrder` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`SequenceOrder`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`ERJdistance(mm)` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`ERJdistance(mm)`, '', ' '), '
', ' '), '	', ' ')); SET NEW.` δ13C_bioapatite(‰)` = TRIM(REPLACE(REPLACE(REPLACE(NEW.` δ13C_bioapatite(‰)`, '', ' '), '
', ' '), '	', ' ')); SET NEW.` δ18O_bioapatite(‰)` = TRIM(REPLACE(REPLACE(REPLACE(NEW.` δ18O_bioapatite(‰)`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`CitationID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`CitationID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_last_update`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_last_update`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `trigger_stamp_UPDATE_FaunalIsotopeSequences` BEFORE UPDATE ON `FaunalIsotopeSequences` FOR EACH ROW BEGIN SET NEW.user_last_update = SYSTEM_USER(); SET NEW.time_last_update = CURRENT_TIMESTAMP; END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `FaunalIsotopes`
--

DROP TABLE IF EXISTS `FaunalIsotopes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `FaunalIsotopes` (
  `FaunIsoID` varchar(8) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL COMMENT 'Primary key',
  `PhaseID` varchar(9) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL COMMENT 'Please see the detailed description of the ''Phases'' table.',
  `SampleID` varchar(30) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'ID provided by primary source',
  `SampleIDother` varchar(30) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'Sometimes additional sample IDs are available, for example one from the archaeologist, another by the isotopic analyst',
  `ItemID` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'Use SiteID as prefix, and suffix with a number starting at 101.',
  `TaxonCode` varchar(8) CHARACTER SET latin1 COLLATE latin1_general_cs DEFAULT NULL,
  `SkeletalElement` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_cs DEFAULT NULL COMMENT 'Name of bone or tooth. Case sensitive, as adult and milk teeth are defined by upper and lower case.',
  `SkeletalPosition` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'Side of the skeleton, and/or upper vs lower for teeth.',
  `Material` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Age` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT ' Age at Death.',
  `Notes` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `CitationID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Collagen(%)` decimal(3,1) DEFAULT NULL COMMENT 'Percentage of collagen in the sample.',
  `C_collagen(%)` decimal(3,1) DEFAULT NULL COMMENT 'Percentage of carbon in the collagen sample.',
  `N_collagen(%)` decimal(4,1) DEFAULT NULL COMMENT 'Percentage of nitrogen in the collagen sample.',
  `S_collagen(%)` decimal(3,1) DEFAULT NULL COMMENT 'Percentage of Sulfur in the collagen sample.',
  `C/N_collagen` decimal(2,1) DEFAULT NULL COMMENT 'Carbon / Nitrogen Atomic ratio (C:N) of carbon and nitrogen in the collagen sample.',
  `C/S_collagen` decimal(4,1) DEFAULT NULL COMMENT 'Carbon / Sulfur Atomic ratio (C:S) of carbon and sulfur in the collagen sample.',
  `N/S_collagen` decimal(4,1) DEFAULT NULL COMMENT 'Nitrogen / Sulfur Atomic ratio (N:S) of the nitrogen and sulfur in the collagen sample.',
  `δ13C_collagen(‰)` decimal(3,1) DEFAULT NULL COMMENT 'δ13C of the carbon in the collagen sample, ‰.',
  `δ15N_collagen(‰)` decimal(3,1) DEFAULT NULL COMMENT 'δ15N of the nitrogen in the collagen sample, ‰.',
  `δ34S_collagen(‰)` decimal(3,1) DEFAULT NULL COMMENT 'δ34S of the sulfur in the collagen sample, ‰.',
  `SequenceCount` int DEFAULT NULL COMMENT 'If sequential sampling was done, this is the number (count) of sequences through the sample (such as the tooth enamel).',
  `minδ13C_bioapatite(‰)` decimal(4,2) DEFAULT NULL COMMENT 'Minimum value from sequential sampling (e.g. tooth enamel) where individual sequence data are unavailable. ',
  `maxδ13C_bioapatite(‰)` decimal(4,2) DEFAULT NULL COMMENT 'Maximum value from sequential sampling (e.g. tooth enamel) where individual sequence data are unavailable. ',
  `meanδ13C_bioapatite(‰)` decimal(4,2) DEFAULT NULL COMMENT 'Mean value from sequential sampling (e.g. tooth enamel) where individual sequence data are unavailable. ',
  `minδ18O_bioapatite(‰)` decimal(4,2) DEFAULT NULL COMMENT 'Minimum value from sequential sampling (e.g. tooth enamel) where individual sequence data are unavailable. ',
  `maxδ18O_bioapatite(‰)` decimal(4,2) DEFAULT NULL COMMENT 'Maximum value from sequential sampling (e.g. tooth enamel) where individual sequence data are unavailable. ',
  `meanδ18O_bioapatite(‰)` decimal(4,2) DEFAULT NULL COMMENT 'Mean value from sequential sampling (e.g. tooth enamel) where individual sequence data are unavailable. Not to be confused with the model parameter (M).',
  `model` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'Specifies the model used, since several models use parameters in different ways.',
  `Amplitude(‰)δ13C_bioapatite(‰)` decimal(4,2) DEFAULT NULL COMMENT 'Model parameter: ''amplitude'' (‰) for δ13C (usually ''A'').',
  `Period(mm)δ13C_bioapatite(‰)` decimal(4,2) DEFAULT NULL COMMENT 'Model parameter: ''period'' (mm) for δ13C (usually ''D'' or ''X''). ',
  `Mean(‰)δ13C_bioapatite(‰)` decimal(4,2) DEFAULT NULL COMMENT 'Model parameter: ''mean'' (‰) for δ13C (usually ''M''). Not to be confused with the mean value of the sequential sampling.',
  `Delayδ13C_bioapatite(‰)` decimal(4,2) DEFAULT NULL COMMENT 'Model parameter: ''delay'' for δ13C. Depending on the model, this might be degrees (φ) or millimetres (x0 or d0). ',
  `Amplitude(‰)δ18O_bioapatite(‰)` decimal(4,2) DEFAULT NULL COMMENT 'Model parameter: ''amplitude'' (‰) for δ18O (usually ''A'').',
  `Period(mm)δ18O_bioapatite(‰)` decimal(4,2) DEFAULT NULL COMMENT 'Model parameter: ''period'' (mm) for δ18O (usually ''D'' or ''X''). ',
  `Mean(‰)δ18O_bioapatite(‰)` decimal(4,2) DEFAULT NULL COMMENT 'Model parameter: ''mean'' (‰) for δ18O (usually ''M''). Not to be confused with the mean value of the sequential sampling.',
  `Delayδ18O_bioapatite(‰)` decimal(4,2) DEFAULT NULL COMMENT 'Model parameter: ''delay'' for δ18O. Depending on the model, this might be degrees (φ) or millimetres (x0 or d0). ',
  `time_added` timestamp NULL DEFAULT NULL COMMENT 'When first added to the database. Do not manually add values. This is automatically added by the database.',
  `user_added` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'Who first added to the database. Do not manually add values. This is automatically added by the database.',
  `time_last_update` timestamp NULL DEFAULT NULL COMMENT 'When last updated. Do not manually add values. This is automatically added by the database.',
  `user_last_update` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'Who last updated. Do not manually add values. This is automatically added by the database.',
  PRIMARY KEY (`FaunIsoID`),
  UNIQUE KEY `unique` (`FaunIsoID`),
  KEY `FK_FaunalIsotopes_Items` (`ItemID`),
  KEY `FK_FaunalIsotopes_Phases` (`PhaseID`),
  KEY `FK_FaunalIsotopes_zoptions_FaunalTaxaList` (`TaxonCode`),
  KEY `FK_FaunalIsotopes_Citations` (`CitationID`),
  KEY `FK_FaunalIsotopes_zoptions_Material` (`Material`),
  KEY `FK_FaunalIsotopes_zoptions_balasse_models` (`model`),
  KEY `FK_FaunalIsotopes_zoptions_SkeletalElements` (`SkeletalElement`) USING BTREE,
  CONSTRAINT `FK_FaunalIsotopes_Citations` FOREIGN KEY (`CitationID`) REFERENCES `Citations` (`CitationID`) ON UPDATE CASCADE,
  CONSTRAINT `FK_FaunalIsotopes_Items` FOREIGN KEY (`ItemID`) REFERENCES `Items` (`ItemID`) ON UPDATE CASCADE,
  CONSTRAINT `FK_FaunalIsotopes_Phases` FOREIGN KEY (`PhaseID`) REFERENCES `Phases` (`PhaseID`) ON UPDATE CASCADE,
  CONSTRAINT `FK_FaunalIsotopes_zoptions_balasse_models` FOREIGN KEY (`model`) REFERENCES `zoptions_balasse_models` (`model`) ON UPDATE CASCADE,
  CONSTRAINT `FK_FaunalIsotopes_zoptions_Material` FOREIGN KEY (`Material`) REFERENCES `zoptions_Material` (`Material`) ON UPDATE CASCADE,
  CONSTRAINT `FK_FaunalIsotopes_zoptions_SkeletalElements` FOREIGN KEY (`SkeletalElement`) REFERENCES `zoptions_SkeletalElements` (`Element`) ON UPDATE CASCADE,
  CONSTRAINT `FK_FaunalIsotopes_zoptions_TaxaList` FOREIGN KEY (`TaxonCode`) REFERENCES `zoptions_TaxaList` (`TaxonCode`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_swedish_ci COMMENT='Direct isotope values and model parameters from faunal bones and teeth, including Carbon, Nitrogen, Oxygen and Sulfur.\r\nData for individual slices are stored separately in the FaunalIsotopeSequences table. Sometimes only a summary of these data (mean, min max) are available and stored in this table.\r\nIntra-tooth sequential analysis of bioapatite are used to investigate birth seasonality in past animal populations, using a sinusoidal model. Where published, these sinusoidal model parameters are stored in this table. \r\nA sinusoidal model requires four parameters: amplitude (A); period (D); mean (M); delay (φ), such that the output as a function of the distance (d) from the enamel-root junction (ERJ) is: d = A sin(2πd/D + φ) + M.  However, the exact formulation can vary in several ways: 1) It can use either a  sine function or cosine function (with a delay difference of 180 degrees). 2) It can use degrees or radians.  3) The delay can be described in terms of degrees or a proportion of 360 degrees.\r\nFor example, Balasse et al 2019 use: A sin(2πd/D + φ) + M, which we hereby describe as ''model-balasse2019''.\r\nIn contrast, Balasse et al 2012 use: A cos(2π (x-x0)/X) + M, where x is identical to d above and where X is identical to D above. Therefore this is equivalent to: A cos(2πd/D + 2πd0/D) + M, from which it can be seen that the delay parameter (d0) in millimetres is used in the term  [ 2 x π x d0/D ] to become radians, doing the equivalent job as φ in the previous formulation. We decribe this model as ''model-blasse2012''. It is possible for many other formulations to be constructed, therefore it is necessary to specify the model, so that it is clear if the sine or cosine is used, and most importantly, if the delay parameter refers to degrees (φ in model-balasse2019) or millimetres (d0 in model-balasse2012).';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_INSERT_FaunalIsotopes` BEFORE INSERT ON `FaunalIsotopes` FOR EACH ROW BEGIN SET NEW.`FaunIsoID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`FaunIsoID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`PhaseID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`PhaseID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`SampleID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`SampleID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`SampleIDother` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`SampleIDother`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`ItemID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`ItemID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`TaxonCode` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`TaxonCode`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`SkeletalElement` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`SkeletalElement`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`SkeletalPosition` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`SkeletalPosition`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Material` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Material`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Age` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Age`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Notes` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Notes`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`CitationID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`CitationID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Collagen(%)` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Collagen(%)`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`C_collagen(%)` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`C_collagen(%)`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`N_collagen(%)` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`N_collagen(%)`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`S_collagen(%)` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`S_collagen(%)`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`C/N_collagen` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`C/N_collagen`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`C/S_collagen` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`C/S_collagen`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`N/S_collagen` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`N/S_collagen`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`δ13C_collagen(‰)` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`δ13C_collagen(‰)`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`δ15N_collagen(‰)` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`δ15N_collagen(‰)`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`δ34S_collagen(‰)` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`δ34S_collagen(‰)`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`SequenceCount` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`SequenceCount`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`minδ13C_bioapatite(‰)` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`minδ13C_bioapatite(‰)`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`maxδ13C_bioapatite(‰)` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`maxδ13C_bioapatite(‰)`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`meanδ13C_bioapatite(‰)` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`meanδ13C_bioapatite(‰)`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`minδ18O_bioapatite(‰)` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`minδ18O_bioapatite(‰)`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`maxδ18O_bioapatite(‰)` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`maxδ18O_bioapatite(‰)`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`meanδ18O_bioapatite(‰)` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`meanδ18O_bioapatite(‰)`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`model` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`model`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Amplitude(‰)δ13C_bioapatite(‰)` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Amplitude(‰)δ13C_bioapatite(‰)`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Period(mm)δ13C_bioapatite(‰)` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Period(mm)δ13C_bioapatite(‰)`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Mean(‰)δ13C_bioapatite(‰)` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Mean(‰)δ13C_bioapatite(‰)`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Delayδ13C_bioapatite(‰)` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Delayδ13C_bioapatite(‰)`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Amplitude(‰)δ18O_bioapatite(‰)` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Amplitude(‰)δ18O_bioapatite(‰)`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Period(mm)δ18O_bioapatite(‰)` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Period(mm)δ18O_bioapatite(‰)`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Mean(‰)δ18O_bioapatite(‰)` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Mean(‰)δ18O_bioapatite(‰)`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Delayδ18O_bioapatite(‰)` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Delayδ18O_bioapatite(‰)`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_last_update`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_last_update`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `trigger_stamp_INSERT_FaunalIsotopes` BEFORE INSERT ON `FaunalIsotopes` FOR EACH ROW BEGIN SET NEW.user_added = SYSTEM_USER(); SET NEW.time_added = CURRENT_TIMESTAMP; SET NEW.user_last_update = SYSTEM_USER(); SET NEW.time_last_update = CURRENT_TIMESTAMP; END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_UPDATE_FaunalIsotopes` BEFORE UPDATE ON `FaunalIsotopes` FOR EACH ROW BEGIN SET NEW.`FaunIsoID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`FaunIsoID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`PhaseID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`PhaseID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`SampleID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`SampleID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`SampleIDother` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`SampleIDother`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`ItemID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`ItemID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`TaxonCode` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`TaxonCode`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`SkeletalElement` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`SkeletalElement`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`SkeletalPosition` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`SkeletalPosition`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Material` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Material`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Age` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Age`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Notes` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Notes`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`CitationID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`CitationID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Collagen(%)` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Collagen(%)`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`C_collagen(%)` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`C_collagen(%)`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`N_collagen(%)` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`N_collagen(%)`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`S_collagen(%)` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`S_collagen(%)`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`C/N_collagen` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`C/N_collagen`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`C/S_collagen` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`C/S_collagen`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`N/S_collagen` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`N/S_collagen`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`δ13C_collagen(‰)` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`δ13C_collagen(‰)`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`δ15N_collagen(‰)` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`δ15N_collagen(‰)`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`δ34S_collagen(‰)` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`δ34S_collagen(‰)`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`SequenceCount` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`SequenceCount`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`minδ13C_bioapatite(‰)` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`minδ13C_bioapatite(‰)`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`maxδ13C_bioapatite(‰)` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`maxδ13C_bioapatite(‰)`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`meanδ13C_bioapatite(‰)` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`meanδ13C_bioapatite(‰)`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`minδ18O_bioapatite(‰)` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`minδ18O_bioapatite(‰)`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`maxδ18O_bioapatite(‰)` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`maxδ18O_bioapatite(‰)`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`meanδ18O_bioapatite(‰)` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`meanδ18O_bioapatite(‰)`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`model` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`model`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Amplitude(‰)δ13C_bioapatite(‰)` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Amplitude(‰)δ13C_bioapatite(‰)`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Period(mm)δ13C_bioapatite(‰)` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Period(mm)δ13C_bioapatite(‰)`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Mean(‰)δ13C_bioapatite(‰)` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Mean(‰)δ13C_bioapatite(‰)`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Delayδ13C_bioapatite(‰)` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Delayδ13C_bioapatite(‰)`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Amplitude(‰)δ18O_bioapatite(‰)` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Amplitude(‰)δ18O_bioapatite(‰)`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Period(mm)δ18O_bioapatite(‰)` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Period(mm)δ18O_bioapatite(‰)`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Mean(‰)δ18O_bioapatite(‰)` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Mean(‰)δ18O_bioapatite(‰)`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Delayδ18O_bioapatite(‰)` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Delayδ18O_bioapatite(‰)`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_last_update`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_last_update`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `trigger_stamp_UPDATE_FaunalIsotopes` BEFORE UPDATE ON `FaunalIsotopes` FOR EACH ROW BEGIN SET NEW.user_last_update = SYSTEM_USER(); SET NEW.time_last_update = CURRENT_TIMESTAMP; END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `FaunalSpecies`
--

DROP TABLE IF EXISTS `FaunalSpecies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `FaunalSpecies` (
  `FaunalSpeciesID` varchar(9) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL COMMENT 'Unique identification number for each species record',
  `PhaseID` varchar(9) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL COMMENT 'Please see the detailed description of the ''Phases'' table.',
  `TaxonCode` varchar(8) CHARACTER SET latin1 COLLATE latin1_general_cs DEFAULT NULL COMMENT 'Unique code to identify the full taxonomic name. This usually consists of the first four letters of the genus and first three letters of the species.',
  `NISP` int DEFAULT NULL COMMENT 'Number of Identified Specimens',
  `SpeciesNote` varchar(1000) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'General notes field for additional information about the species',
  `AgeCriteriaBF` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'Binary distinction between species that have been aged based on epiphyseal fusion (yes) and those that have not (no)',
  `AgeCriteriaDA` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'Binary distinction between species that have been aged based on dental abrasion (yes) and those that have not (no)',
  `AgeCriteriaDE` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'Binary distinction between species that have been aged based on dental eruption (yes) and those that have not (no)',
  `AgeNote` varchar(1000) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'Age trend evidence notes',
  `AgeTrend` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'Bulk sample of many bones, therefore referring to the majority (mainly). Description of the age trend e.g. ''mostly juvenile'', ''mostly adult''',
  `HorncoreNote` varchar(1000) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'Horncore shape notes',
  `HorncoreShape` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'Interpretation of wild/domestic status based on the horncore shape e.g. ''Both wild and domestic'', ''majority wild'' etc.',
  `Pathology` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'Binary distinction between species that show evidence of pathology (1) and those that do not (0)',
  `PathologyNote` varchar(1000) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'Pathology evidence notes',
  `PresenceOfFoetals` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'Binary distinction between species that include foetal remains (1) and those that do not (0)',
  `PresenceOnly` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'Binary distinction between species that have been recorded as presence only (1) and those that have not (0)',
  `SexCriteriaME` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'Binary distinction between species that have been sexed based on metric criteria (1) and those that have not (0)',
  `SexCriteriaMO` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'Binary distinction between species that have been sexed based on morphology (1) and those that have not (0)',
  `SexNote` varchar(1000) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'Sex trend evidence notes',
  `SexTrend` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'Description of the sex trend e.g. ''majority male, ''majority female'' etc.',
  `CitationID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `time_added` timestamp NULL DEFAULT NULL COMMENT 'When first added to the database. Do not manually add values. This is automatically added by the database.',
  `user_added` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'Who first added to the database. Do not manually add values. This is automatically added by the database.',
  `time_last_update` timestamp NULL DEFAULT NULL COMMENT 'When last updated. Do not manually add values. This is automatically added by the database.',
  `user_last_update` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'Who last updated. Do not manually add values. This is automatically added by the database.',
  PRIMARY KEY (`FaunalSpeciesID`),
  UNIQUE KEY `unique` (`FaunalSpeciesID`),
  KEY `FK_FaunalSpecies_Phases` (`PhaseID`),
  KEY `FK_FaunalSpecies_zoptions_FaunalTaxaList` (`TaxonCode`),
  KEY `FK_FaunalSpecies_Citations` (`CitationID`),
  KEY `FK_FaunalSpecies_zoptions_AgeCategorical` (`AgeTrend`),
  KEY `FK_FaunalSpecies_zoptions_yes_no` (`PresenceOfFoetals`),
  KEY `FK_FaunalSpecies_zoptions_yes_no_2` (`PresenceOnly`),
  KEY `FK_FaunalSpecies_zoptions_yes_no_3` (`AgeCriteriaBF`),
  KEY `FK_FaunalSpecies_zoptions_yes_no_4` (`AgeCriteriaDA`),
  KEY `FK_FaunalSpecies_zoptions_yes_no_5` (`AgeCriteriaDE`),
  KEY `FK_FaunalSpecies_zoptions_yes_no_7` (`Pathology`),
  KEY `FK_FaunalSpecies_zoptions_yes_no_8` (`SexCriteriaME`),
  KEY `FK_FaunalSpecies_zoptions_yes_no_9` (`SexCriteriaMO`),
  CONSTRAINT `FK_FaunalSpecies_Citations` FOREIGN KEY (`CitationID`) REFERENCES `Citations` (`CitationID`) ON UPDATE CASCADE,
  CONSTRAINT `FK_FaunalSpecies_Phases` FOREIGN KEY (`PhaseID`) REFERENCES `Phases` (`PhaseID`) ON UPDATE CASCADE,
  CONSTRAINT `FK_FaunalSpecies_zoptions_AgeCategorical` FOREIGN KEY (`AgeTrend`) REFERENCES `zoptions_AgeCategorical` (`Age`) ON UPDATE CASCADE,
  CONSTRAINT `FK_FaunalSpecies_zoptions_TaxaList` FOREIGN KEY (`TaxonCode`) REFERENCES `zoptions_TaxaList` (`TaxonCode`) ON UPDATE CASCADE,
  CONSTRAINT `FK_FaunalSpecies_zoptions_yes_no` FOREIGN KEY (`PresenceOfFoetals`) REFERENCES `zoptions_yes_no` (`present`) ON UPDATE CASCADE,
  CONSTRAINT `FK_FaunalSpecies_zoptions_yes_no_2` FOREIGN KEY (`PresenceOnly`) REFERENCES `zoptions_yes_no` (`present`) ON UPDATE CASCADE,
  CONSTRAINT `FK_FaunalSpecies_zoptions_yes_no_3` FOREIGN KEY (`AgeCriteriaBF`) REFERENCES `zoptions_yes_no` (`present`) ON UPDATE CASCADE,
  CONSTRAINT `FK_FaunalSpecies_zoptions_yes_no_4` FOREIGN KEY (`AgeCriteriaDA`) REFERENCES `zoptions_yes_no` (`present`) ON UPDATE CASCADE,
  CONSTRAINT `FK_FaunalSpecies_zoptions_yes_no_5` FOREIGN KEY (`AgeCriteriaDE`) REFERENCES `zoptions_yes_no` (`present`) ON UPDATE CASCADE,
  CONSTRAINT `FK_FaunalSpecies_zoptions_yes_no_7` FOREIGN KEY (`Pathology`) REFERENCES `zoptions_yes_no` (`present`) ON UPDATE CASCADE,
  CONSTRAINT `FK_FaunalSpecies_zoptions_yes_no_8` FOREIGN KEY (`SexCriteriaME`) REFERENCES `zoptions_yes_no` (`present`) ON UPDATE CASCADE,
  CONSTRAINT `FK_FaunalSpecies_zoptions_yes_no_9` FOREIGN KEY (`SexCriteriaMO`) REFERENCES `zoptions_yes_no` (`present`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Records of all species identified at the phase level for each site, with their associated age and sex trends, pathologies, and body part representation.\r\nAge identification methods (BF, DA and DE) are impotant because ? repliability?? How does an analyst potentially use this?';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_INSERT_FaunalSpecies` BEFORE INSERT ON `FaunalSpecies` FOR EACH ROW BEGIN SET NEW.`FaunalSpeciesID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`FaunalSpeciesID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`PhaseID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`PhaseID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`TaxonCode` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`TaxonCode`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`NISP` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`NISP`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`SpeciesNote` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`SpeciesNote`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`AgeCriteriaBF` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`AgeCriteriaBF`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`AgeCriteriaDA` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`AgeCriteriaDA`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`AgeCriteriaDE` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`AgeCriteriaDE`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`AgeNote` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`AgeNote`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`AgeTrend` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`AgeTrend`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`HorncoreNote` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`HorncoreNote`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`HorncoreShape` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`HorncoreShape`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Pathology` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Pathology`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`PathologyNote` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`PathologyNote`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`PresenceOfFoetals` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`PresenceOfFoetals`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`PresenceOnly` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`PresenceOnly`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`SexCriteriaME` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`SexCriteriaME`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`SexCriteriaMO` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`SexCriteriaMO`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`SexNote` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`SexNote`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`SexTrend` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`SexTrend`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`CitationID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`CitationID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_last_update`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_last_update`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `trigger_stamp_INSERT_FaunalSpecies` BEFORE INSERT ON `FaunalSpecies` FOR EACH ROW BEGIN SET NEW.user_added = SYSTEM_USER(); SET NEW.time_added = CURRENT_TIMESTAMP; SET NEW.user_last_update = SYSTEM_USER(); SET NEW.time_last_update = CURRENT_TIMESTAMP; END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_UPDATE_FaunalSpecies` BEFORE UPDATE ON `FaunalSpecies` FOR EACH ROW BEGIN SET NEW.`FaunalSpeciesID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`FaunalSpeciesID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`PhaseID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`PhaseID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`TaxonCode` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`TaxonCode`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`NISP` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`NISP`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`SpeciesNote` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`SpeciesNote`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`AgeCriteriaBF` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`AgeCriteriaBF`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`AgeCriteriaDA` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`AgeCriteriaDA`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`AgeCriteriaDE` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`AgeCriteriaDE`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`AgeNote` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`AgeNote`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`AgeTrend` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`AgeTrend`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`HorncoreNote` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`HorncoreNote`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`HorncoreShape` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`HorncoreShape`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Pathology` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Pathology`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`PathologyNote` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`PathologyNote`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`PresenceOfFoetals` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`PresenceOfFoetals`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`PresenceOnly` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`PresenceOnly`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`SexCriteriaME` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`SexCriteriaME`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`SexCriteriaMO` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`SexCriteriaMO`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`SexNote` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`SexNote`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`SexTrend` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`SexTrend`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`CitationID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`CitationID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_last_update`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_last_update`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `trigger_stamp_UPDATE_FaunalSpecies` BEFORE UPDATE ON `FaunalSpecies` FOR EACH ROW BEGIN SET NEW.user_last_update = SYSTEM_USER(); SET NEW.time_last_update = CURRENT_TIMESTAMP; END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `GraveConstruction`
--

DROP TABLE IF EXISTS `GraveConstruction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `GraveConstruction` (
  `GraveID` varchar(6) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `Element` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  KEY `FK_GraveConstruction_Graves` (`GraveID`),
  KEY `FK_GraveConstruction_zoptions_GraveConstruction` (`Element`),
  CONSTRAINT `FK_GraveConstruction_Graves` FOREIGN KEY (`GraveID`) REFERENCES `Graves` (`GraveID`) ON UPDATE CASCADE,
  CONSTRAINT `FK_GraveConstruction_zoptions_GraveConstruction` FOREIGN KEY (`Element`) REFERENCES `zoptions_GraveConstruction` (`Element`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_swedish_ci COMMENT='A single grave can have any number of elements, including:\r\n- visible exterior components such as a cave or barrow or monument;\r\n- different excavation types such as a niche or pit, or no excavation at all;\r\n- interior construction components, such as  a cist, coffin, stones etc.\r\n';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_INSERT_GraveConstruction` BEFORE INSERT ON `GraveConstruction` FOR EACH ROW BEGIN SET NEW.`GraveID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`GraveID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Element` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Element`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_UPDATE_GraveConstruction` BEFORE UPDATE ON `GraveConstruction` FOR EACH ROW BEGIN SET NEW.`GraveID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`GraveID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Element` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Element`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `GraveIndividuals`
--

DROP TABLE IF EXISTS `GraveIndividuals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `GraveIndividuals` (
  `IndividualID` varchar(6) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL COMMENT 'Unique ID for each human specimen',
  `GraveID` varchar(6) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL COMMENT 'References the Graves table',
  `IndividualName` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'Published name or code that identifies the specific human specimen',
  `Culture` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'The culture of the human specimen. Not necessarily the culture of the phase, since occasional specimens may be immigrants from another area.',
  `AgeMin` decimal(5,2) unsigned DEFAULT NULL COMMENT 'Minimum age at death (years)',
  `AgeMax` decimal(5,2) unsigned DEFAULT NULL COMMENT 'Maximum age at death (years)',
  `AgeCategorical` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'Categorical description of age at death',
  `AgeNote` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'Specific age description such as ''new born'', ''child'', ''juvenile'', ''adolescent'', ''senile'' etc.',
  `Sex` decimal(4,3) unsigned DEFAULT NULL COMMENT 'Probability of being female based purely on the anthropoplogical (or biological) evidence, but NOT considering material culture. Therefore a value of 1 indicates female with certainty, a value of 0 indicates male with certainty, and a value of 0.5 indicates an equal probability of male or female. NA indicates that the individual has not been osteometrically assessed. For analysis purposes we can assume a prior of 0.5 for these.',
  `DepositionType` varchar(500) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'The mortuary ritual or rite representing information about decisions made by those who disposed of the dead specimen',
  `CitationID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `ItemID` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `aDNAID` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_cs DEFAULT NULL COMMENT 'Unique aDNA ID for each individual. The ID references the original publication of the individual, not the current state of its availability in large databases (e.g. Allen Ancient DNA Resource).',
  `aDNACitationID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'Unique Citation ID for the primary litertature publishing the result of aDNA analysis.',
  `Flag` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT 'Published issues or problems with the aDNA sample.',
  `notes` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `time_added` timestamp NULL DEFAULT NULL COMMENT 'When first added to the database. Do not manually add values. This is automatically added by the database.',
  `user_added` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'Who first added to the database. Do not manually add values. This is automatically added by the database.',
  `time_last_update` timestamp NULL DEFAULT NULL COMMENT 'When last updated. Do not manually add values. This is automatically added by the database.',
  `user_last_update` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'Who last updated. Do not manually add values. This is automatically added by the database.',
  PRIMARY KEY (`IndividualID`) USING BTREE,
  UNIQUE KEY `unique` (`IndividualID`) USING BTREE,
  UNIQUE KEY `ItemID` (`ItemID`),
  KEY `FK_GraveIndividuals_Graves` (`GraveID`),
  KEY `FK_GraveIndividuals_zoptions_Cultures` (`Culture`),
  KEY `FK_GraveIndividuals_zoptions_AgeCategorical` (`AgeCategorical`),
  KEY `FK_GraveIndividuals_Citations` (`CitationID`),
  KEY `aDNACitationID` (`aDNACitationID`) USING BTREE,
  CONSTRAINT `FK_GraveIndividuals_Citations` FOREIGN KEY (`CitationID`) REFERENCES `Citations` (`CitationID`) ON UPDATE CASCADE,
  CONSTRAINT `FK_GraveIndividuals_Graves` FOREIGN KEY (`GraveID`) REFERENCES `Graves` (`GraveID`) ON UPDATE CASCADE,
  CONSTRAINT `FK_GraveIndividuals_Items` FOREIGN KEY (`ItemID`) REFERENCES `Items` (`ItemID`) ON UPDATE CASCADE,
  CONSTRAINT `FK_GraveIndividuals_zoptions_aDNACitationID` FOREIGN KEY (`aDNACitationID`) REFERENCES `Citations` (`CitationID`) ON UPDATE CASCADE,
  CONSTRAINT `FK_GraveIndividuals_zoptions_AgeCategorical` FOREIGN KEY (`AgeCategorical`) REFERENCES `zoptions_AgeCategorical` (`Age`) ON UPDATE CASCADE,
  CONSTRAINT `FK_GraveIndividuals_zoptions_Cultures` FOREIGN KEY (`Culture`) REFERENCES `zoptions_Cultures` (`Culture`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_swedish_ci COMMENT='Individual humans in the graves.';
/*!40101 SET character_set_client = @saved_cs_client */;
ALTER DATABASE `BIAD` CHARACTER SET latin1 COLLATE latin1_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`admin`@`127.0.0.1`*/ /*!50003 TRIGGER `GraveIndividualsWarnings_insert` BEFORE INSERT ON `GraveIndividuals` FOR EACH ROW BEGIN
IF (NEW.`IndividualID` NOT REGEXP '^C{1}[0-9]{5}$') THEN 
SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Trigger Error: IndividualID must be C followed by 5 digits';
END IF;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_INSERT_GraveIndividuals` BEFORE INSERT ON `GraveIndividuals` FOR EACH ROW BEGIN SET NEW.`IndividualID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`IndividualID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`GraveID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`GraveID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`IndividualName` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`IndividualName`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Culture` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Culture`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`AgeMin` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`AgeMin`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`AgeMax` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`AgeMax`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`AgeCategorical` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`AgeCategorical`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`AgeNote` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`AgeNote`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Sex` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Sex`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`DepositionType` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`DepositionType`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`CitationID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`CitationID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`ItemID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`ItemID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`aDNAID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`aDNAID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`aDNACitationID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`aDNACitationID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Flag` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Flag`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`notes` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`notes`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_last_update`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_last_update`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `trigger_stamp_INSERT_GraveIndividuals` BEFORE INSERT ON `GraveIndividuals` FOR EACH ROW BEGIN SET NEW.user_added = SYSTEM_USER(); SET NEW.time_added = CURRENT_TIMESTAMP; SET NEW.user_last_update = SYSTEM_USER(); SET NEW.time_last_update = CURRENT_TIMESTAMP; END */;;
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
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`admin`@`127.0.0.1`*/ /*!50003 TRIGGER `GraveIndividualsWarnings_update` BEFORE UPDATE ON `GraveIndividuals` FOR EACH ROW BEGIN
IF (NEW.`IndividualID` NOT REGEXP '^C{1}[0-9]{5}$') THEN 
SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Trigger Error: IndividualID must be C followed by 5 digits';
END IF;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_UPDATE_GraveIndividuals` BEFORE UPDATE ON `GraveIndividuals` FOR EACH ROW BEGIN SET NEW.`IndividualID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`IndividualID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`GraveID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`GraveID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`IndividualName` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`IndividualName`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Culture` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Culture`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`AgeMin` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`AgeMin`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`AgeMax` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`AgeMax`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`AgeCategorical` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`AgeCategorical`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`AgeNote` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`AgeNote`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Sex` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Sex`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`DepositionType` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`DepositionType`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`CitationID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`CitationID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`ItemID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`ItemID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`aDNAID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`aDNAID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`aDNACitationID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`aDNACitationID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Flag` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Flag`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`notes` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`notes`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_last_update`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_last_update`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `trigger_stamp_UPDATE_GraveIndividuals` BEFORE UPDATE ON `GraveIndividuals` FOR EACH ROW BEGIN SET NEW.user_last_update = SYSTEM_USER(); SET NEW.time_last_update = CURRENT_TIMESTAMP; END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `Graves`
--

DROP TABLE IF EXISTS `Graves`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Graves` (
  `GraveID` varchar(6) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `GraveName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'Not a unique field. For example,  many phases may contain the name ''Grave 1'')',
  `PhaseID` varchar(9) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL COMMENT 'Please see the detailed description of the ''Phases'' table.',
  `GraveDepth` decimal(3,0) unsigned zerofill DEFAULT NULL COMMENT 'Depth in cm',
  `HumanMNI` smallint unsigned DEFAULT NULL COMMENT 'Minimum number of human individuals',
  `CitationID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `ItemID` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'Use SiteID as prefix, and suffix with a number starting at 101.',
  `notes` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `time_added` timestamp NULL DEFAULT NULL COMMENT 'When first added to the database. Do not manually add values. This is automatically added by the database.',
  `user_added` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'Who first added to the database. Do not manually add values. This is automatically added by the database.',
  `time_last_update` timestamp NULL DEFAULT NULL COMMENT 'When last udpated. Do not manually add values. This is automatically added by the database.',
  `user_last_update` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'Who last udpated. Do not manually add values. This is automatically added by the database.',
  PRIMARY KEY (`GraveID`),
  UNIQUE KEY `unique` (`GraveID`),
  KEY `FK_Graves_Phases` (`PhaseID`),
  KEY `FK_Graves_Citations` (`CitationID`),
  KEY `FK_Graves_Items` (`ItemID`),
  CONSTRAINT `FK_Graves_Citations` FOREIGN KEY (`CitationID`) REFERENCES `Citations` (`CitationID`) ON UPDATE CASCADE,
  CONSTRAINT `FK_Graves_Items` FOREIGN KEY (`ItemID`) REFERENCES `Items` (`ItemID`) ON UPDATE CASCADE,
  CONSTRAINT `FK_Graves_Phases` FOREIGN KEY (`PhaseID`) REFERENCES `Phases` (`PhaseID`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_swedish_ci COMMENT='Each grave must be assigned to a single phase. A grave may contain many GraveIndividuals.\r\nGrave construction is separated into three components: VisibleComponent, SoilExcavationType, and Construction. In each case, ''None'' is clear evidence of absence, rather than NULL which is unknown.';
/*!40101 SET character_set_client = @saved_cs_client */;
ALTER DATABASE `BIAD` CHARACTER SET latin1 COLLATE latin1_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`admin`@`127.0.0.1`*/ /*!50003 TRIGGER `GravesWarnings_insert` BEFORE INSERT ON `Graves` FOR EACH ROW BEGIN
IF (NEW.`GraveID` NOT REGEXP '^G{1}[0-9]{5}$') THEN 
SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Trigger Error: GraveID must be G followed by 5 digits';
END IF;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_INSERT_Graves` BEFORE INSERT ON `Graves` FOR EACH ROW BEGIN SET NEW.`GraveID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`GraveID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`GraveName` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`GraveName`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`PhaseID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`PhaseID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`GraveDepth` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`GraveDepth`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`HumanMNI` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`HumanMNI`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`CitationID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`CitationID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`ItemID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`ItemID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`notes` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`notes`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_last_update`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_last_update`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `trigger_stamp_INSERT_Graves` BEFORE INSERT ON `Graves` FOR EACH ROW BEGIN SET NEW.user_added = SYSTEM_USER(); SET NEW.time_added = CURRENT_TIMESTAMP; SET NEW.user_last_update = SYSTEM_USER(); SET NEW.time_last_update = CURRENT_TIMESTAMP; END */;;
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
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`admin`@`127.0.0.1`*/ /*!50003 TRIGGER `GravesWarnings_update` BEFORE UPDATE ON `Graves` FOR EACH ROW BEGIN
IF (NEW.`GraveID` NOT REGEXP '^G{1}[0-9]{5}$') THEN 
SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Trigger Error: GraveID must be G followed by 5 digits';
END IF;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_UPDATE_Graves` BEFORE UPDATE ON `Graves` FOR EACH ROW BEGIN SET NEW.`GraveID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`GraveID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`GraveName` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`GraveName`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`PhaseID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`PhaseID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`GraveDepth` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`GraveDepth`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`HumanMNI` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`HumanMNI`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`CitationID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`CitationID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`ItemID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`ItemID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`notes` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`notes`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_last_update`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_last_update`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `trigger_stamp_UPDATE_Graves` BEFORE UPDATE ON `Graves` FOR EACH ROW BEGIN SET NEW.user_last_update = SYSTEM_USER(); SET NEW.time_last_update = CURRENT_TIMESTAMP; END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `Health`
--

DROP TABLE IF EXISTS `Health`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Health` (
  `IndividualID` varchar(6) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'Unique ID for each human specimen',
  `Trait` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'Any pathology, health indicator, or genetic allele.',
  `Status` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'Status of the trait.',
  `Location` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `LaboratoryMethod` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'Method of identifying the trait',
  `trauma_cause` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'Specific cause of skeletal trauma',
  `trauma_direction` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'Direction of skeletal trauma, e.g. arrow to head or a backstab',
  `Notes` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `CitationID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `time_added` timestamp NULL DEFAULT NULL COMMENT 'When first added to the database. Do not manually add values. This is automatically added by the database.',
  `user_added` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'Who first added to the database. Do not manually add values. This is automatically added by the database.',
  `time_last_update` timestamp NULL DEFAULT NULL COMMENT 'When last udpated. Do not manually add values. This is automatically added by the database.',
  `user_last_update` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'Who last udpated. Do not manually add values. This is automatically added by the database.',
  KEY `FK_Health_GraveIndividuals` (`IndividualID`),
  KEY `FK_Health_Citations` (`CitationID`),
  KEY `FK_Health_zoptions_Health_Trait` (`Trait`),
  KEY `FK_Health_zoptions_Health_Status` (`Status`),
  KEY `FK_Health_zoptions_Position` (`trauma_direction`),
  KEY `FK_Health_zoptions_SkeletalElements` (`Location`) USING BTREE,
  KEY `FK_Health_zoptions_Laboratory_Methods` (`LaboratoryMethod`),
  CONSTRAINT `FK_Health_Citations` FOREIGN KEY (`CitationID`) REFERENCES `Citations` (`CitationID`) ON UPDATE CASCADE,
  CONSTRAINT `FK_Health_GraveIndividuals` FOREIGN KEY (`IndividualID`) REFERENCES `GraveIndividuals` (`IndividualID`) ON UPDATE CASCADE,
  CONSTRAINT `FK_Health_zoptions_Health_Status` FOREIGN KEY (`Status`) REFERENCES `zoptions_Health_Status` (`Status`) ON UPDATE CASCADE,
  CONSTRAINT `FK_Health_zoptions_Health_Trait` FOREIGN KEY (`Trait`) REFERENCES `zoptions_Health_Trait` (`Trait`) ON UPDATE CASCADE,
  CONSTRAINT `FK_Health_zoptions_Laboratory_Methods` FOREIGN KEY (`LaboratoryMethod`) REFERENCES `zoptions_Laboratory_Methods` (`Method`) ON UPDATE CASCADE,
  CONSTRAINT `FK_Health_zoptions_pathology_location` FOREIGN KEY (`Location`) REFERENCES `zoptions_pathology_location` (`location`) ON UPDATE CASCADE,
  CONSTRAINT `FK_Health_zoptions_Position` FOREIGN KEY (`trauma_direction`) REFERENCES `zoptions_Position` (`position`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_swedish_ci COMMENT='Various biological markers of the health and biological markers of human remains.\r\nEach individual may have multiple markers, therefore IndividualID may occur in multiple rows.';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_INSERT_Health` BEFORE INSERT ON `Health` FOR EACH ROW BEGIN SET NEW.`IndividualID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`IndividualID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Trait` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Trait`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Status` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Status`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Location` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Location`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`LaboratoryMethod` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`LaboratoryMethod`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`trauma_cause` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`trauma_cause`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`trauma_direction` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`trauma_direction`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Notes` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Notes`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`CitationID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`CitationID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_last_update`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_last_update`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `trigger_stamp_INSERT_Health` BEFORE INSERT ON `Health` FOR EACH ROW BEGIN SET NEW.user_added = SYSTEM_USER(); SET NEW.time_added = CURRENT_TIMESTAMP; SET NEW.user_last_update = SYSTEM_USER(); SET NEW.time_last_update = CURRENT_TIMESTAMP; END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_UPDATE_Health` BEFORE UPDATE ON `Health` FOR EACH ROW BEGIN SET NEW.`IndividualID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`IndividualID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Trait` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Trait`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Status` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Status`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Location` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Location`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`LaboratoryMethod` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`LaboratoryMethod`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`trauma_cause` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`trauma_cause`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`trauma_direction` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`trauma_direction`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Notes` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Notes`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`CitationID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`CitationID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_last_update`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_last_update`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `trigger_stamp_UPDATE_Health` BEFORE UPDATE ON `Health` FOR EACH ROW BEGIN SET NEW.user_last_update = SYSTEM_USER(); SET NEW.time_last_update = CURRENT_TIMESTAMP; END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `HumanIsotopes`
--

DROP TABLE IF EXISTS `HumanIsotopes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `HumanIsotopes` (
  `HumanIsoID` varchar(8) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL COMMENT 'Primary key.',
  `IndividualID` varchar(6) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL COMMENT 'Unique ID for each human specimen.',
  `SampleID` varchar(30) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'ID provided by primary source',
  `SampleIDother` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'Sometimes additional sample IDs are available, for example one from the archaeologist, another by the isotopic analyst',
  `ItemID` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'Use SiteID as prefix, and suffix with a number starting at 101.',
  `SkeletalElement` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_cs DEFAULT NULL COMMENT 'Name of bone or tooth. Case sensitive, as adult and milk teeth are defined by upper and lower case.',
  `Position` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'Side of the skeleton, and/or upper vs lower for teeth.',
  `SkeletalNote` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'Specific note regarding e.g. which teeth may have been sampled',
  `Material` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `SequenceOrder` tinyint DEFAULT NULL COMMENT 'Rank order of the sequence (i.e closest to the root is 1) if sequential sampling was done. NULL means there was no sequential sampling.',
  `Collagen(%)` decimal(3,1) DEFAULT NULL COMMENT 'Percentage of collagen in the sample.',
  `C_collagen(%)` decimal(3,1) DEFAULT NULL COMMENT 'Percentage of carbon in the collagen sample.',
  `N_collagen(%)` decimal(3,1) DEFAULT NULL COMMENT 'Percentage of nitrogen in the collagen sample.',
  `S_collagen(%)` decimal(3,1) DEFAULT NULL COMMENT 'Percentage of Sulfur in the collagen sample.',
  `C/N_collagen` decimal(2,1) DEFAULT NULL COMMENT 'Carbon / Nitrogen Atomic ratio (C:N) of carbon and nitrogen in the collagen sample.',
  `C/S_collagen` decimal(2,1) DEFAULT NULL COMMENT 'Carbon / Sulfur Atomic ratio (C:S) of carbon and sulfur in the collagen sample.',
  `N/S_collagen` decimal(2,1) DEFAULT NULL COMMENT 'Nitrogen / Sulfur Atomic ratio (N:S) of the nitrogen and sulfur in the collagen sample.',
  `δ13C_collagen(‰)` decimal(3,1) DEFAULT NULL COMMENT 'δ13C of the carbon in the collagen sample, ‰.',
  `δ13C_collagenStandard` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'The standard against which 13C is measured.',
  `δ15N_collagen(‰)` decimal(3,1) DEFAULT NULL COMMENT 'δ15N of the nitrogen in the collagen sample, ‰.',
  `δ15N_collagenStandard` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'The standard against which 15N is measured.',
  `δ34S_collagen(‰)` decimal(3,1) DEFAULT NULL COMMENT 'δ34S of the sulfur in the collagen sample, ‰.',
  `δ13C_carbonate(‰)` decimal(4,2) DEFAULT NULL COMMENT 'δ13C of the carbon in the carbonate sample, ‰.',
  `δ18O_carbonate(‰)` decimal(4,2) DEFAULT NULL COMMENT 'δ18O of the carbon in the carbonate sample, ‰.',
  `δ18O_carbonate(‰)_Standard` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'The standard against which d18O values are reported',
  `δ18O_phosphate(‰)` decimal(4,2) DEFAULT NULL COMMENT 'δ18O of the carbon in the phosphate sample, ‰.',
  `δ18O_phosphate(‰)_Standard` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'The stardard againt which d18O reported',
  `207Pb/206Pb` decimal(6,5) DEFAULT NULL COMMENT 'The ratio of 207Pb to 206Pb',
  `Error 207Pb/206Pb` decimal(5,4) DEFAULT NULL,
  `207Pb/204Pb` decimal(6,4) DEFAULT NULL COMMENT 'The ratio of 207Pb to 204Pb',
  `Error 207Pb tp 204Pb` decimal(6,4) DEFAULT NULL,
  `208Pb/206Pb` decimal(5,4) DEFAULT NULL COMMENT 'The ratio of 208Pb to 206Pb',
  `Error 208Pb/206Pb` decimal(5,4) DEFAULT NULL,
  `208Pb/207Pb` decimal(5,4) DEFAULT NULL COMMENT 'The ratio of 208Pb to 207Pb',
  `Error 208Pb/ 207Pb` decimal(5,4) DEFAULT NULL,
  `208Pb/204Pb` decimal(6,4) DEFAULT NULL COMMENT 'The ratio of 208Pb to 204Pb',
  `Error 208Pb/204Pb` decimal(5,4) DEFAULT NULL,
  `206Pb/204Pb` decimal(6,4) DEFAULT NULL COMMENT 'The ratio of 206Pb/204Pb',
  `Error 206Pb/204Pb` decimal(6,4) DEFAULT NULL,
  `206Pb/207Pb` decimal(5,4) DEFAULT NULL COMMENT 'The ratio of 206Pb to 207Pb',
  `Error 206Pb/207Pb` decimal(5,4) DEFAULT NULL,
  `IRSF` decimal(4,2) unsigned DEFAULT NULL COMMENT 'Infrared Splitting factor.',
  `C/P_FTIR` decimal(4,2) DEFAULT NULL COMMENT 'C/P index of Fourier transform infrared spectroscopy.',
  `BPI_FTIR` decimal(4,2) DEFAULT NULL COMMENT 'BPI index of Fourier transform infrared spectroscopy.',
  `API_FTIR` decimal(4,2) DEFAULT NULL COMMENT 'API index of Fourier transform infrared spectroscopy.',
  `C/C_FTIR` decimal(4,2) DEFAULT NULL COMMENT 'C/C index of Fourier transform infrared spectroscopy.',
  `FTIR_pre_or_post` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'Was the FTIR done pre or post treatment.',
  `notes` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `CitationID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `time_added` timestamp NULL DEFAULT NULL COMMENT 'When first added to the database. Do not manually add values. This is automatically added by the database.',
  `user_added` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'Who first added to the database. Do not manually add values. This is automatically added by the database.',
  `time_last_update` timestamp NULL DEFAULT NULL COMMENT 'When last updated. Do not manually add values. This is automatically added by the database.',
  `user_last_update` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'Who last updated. Do not manually add values. This is automatically added by the database.',
  PRIMARY KEY (`HumanIsoID`) USING BTREE,
  UNIQUE KEY `Unique` (`HumanIsoID`) USING BTREE,
  KEY `FK_HumanIsotopes_GraveIndividuals` (`IndividualID`) USING BTREE,
  KEY `FK_HumanIsotopes_Items` (`ItemID`) USING BTREE,
  KEY `FK_HumanIsotopes_zoptions_SkeletalElements` (`SkeletalElement`),
  KEY `FK_HumanIsotopes_Citations` (`CitationID`),
  KEY `FK_HumanIsotopes_zoptions_Material` (`Material`),
  KEY `FK_HumanIsotopes_zoptions_Position` (`Position`),
  KEY `FK_HumanIsotopes_zoptions_Laboratory_Methods` (`δ13C_collagenStandard`),
  KEY `FK_HumanIsotopes_zoptions_Laboratory_Methods_2` (`δ15N_collagenStandard`),
  KEY `FK_HumanIsotopes_zoptions_Laboratory_Methods_3` (`δ18O_carbonate(‰)_Standard`),
  KEY `FK_HumanIsotopes_zoptions_Laboratory_Methods_4` (`δ18O_phosphate(‰)_Standard`),
  KEY `FK_HumanIsotopes_zoptions_Laboratory_Methods_5` (`FTIR_pre_or_post`),
  CONSTRAINT `FK_HumanIsotopes_Citations` FOREIGN KEY (`CitationID`) REFERENCES `Citations` (`CitationID`) ON UPDATE CASCADE,
  CONSTRAINT `FK_HumanIsotopes_GraveIndividuals` FOREIGN KEY (`IndividualID`) REFERENCES `GraveIndividuals` (`IndividualID`) ON UPDATE CASCADE,
  CONSTRAINT `FK_HumanIsotopes_Items` FOREIGN KEY (`ItemID`) REFERENCES `Items` (`ItemID`) ON UPDATE CASCADE,
  CONSTRAINT `FK_HumanIsotopes_zoptions_Laboratory_Methods` FOREIGN KEY (`δ13C_collagenStandard`) REFERENCES `zoptions_Laboratory_Methods` (`Method`) ON UPDATE CASCADE,
  CONSTRAINT `FK_HumanIsotopes_zoptions_Laboratory_Methods_2` FOREIGN KEY (`δ15N_collagenStandard`) REFERENCES `zoptions_Laboratory_Methods` (`Method`) ON UPDATE CASCADE,
  CONSTRAINT `FK_HumanIsotopes_zoptions_Laboratory_Methods_3` FOREIGN KEY (`δ18O_carbonate(‰)_Standard`) REFERENCES `zoptions_Laboratory_Methods` (`Method`) ON UPDATE CASCADE,
  CONSTRAINT `FK_HumanIsotopes_zoptions_Laboratory_Methods_4` FOREIGN KEY (`δ18O_phosphate(‰)_Standard`) REFERENCES `zoptions_Laboratory_Methods` (`Method`) ON UPDATE CASCADE,
  CONSTRAINT `FK_HumanIsotopes_zoptions_Laboratory_Methods_5` FOREIGN KEY (`FTIR_pre_or_post`) REFERENCES `zoptions_Laboratory_Methods` (`Method`) ON UPDATE CASCADE,
  CONSTRAINT `FK_HumanIsotopes_zoptions_Material` FOREIGN KEY (`Material`) REFERENCES `zoptions_Material` (`Material`) ON UPDATE CASCADE,
  CONSTRAINT `FK_HumanIsotopes_zoptions_Position` FOREIGN KEY (`Position`) REFERENCES `zoptions_Position` (`position`) ON UPDATE CASCADE,
  CONSTRAINT `FK_HumanIsotopes_zoptions_SkeletalElements` FOREIGN KEY (`SkeletalElement`) REFERENCES `zoptions_SkeletalElements` (`Element`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_swedish_ci COMMENT='Direct isotope values  from human bones and teeth, including Carbon, Nitrogen and Oxygen, including sequential slices.\r\n\n\nNote on standards used to express stable isotope values: \n\nCarbon ratios from collagen are all expressed relative to the Vienna Pee-Dee Belemnite (VPDB) standard. \n\nNitrogen ratios from collagen are all expressed relative to atmospheric N2 (Air N2).\n\nCarbon ratios from the carbonate fraction of enamel or bone bioapatite are all expressed realtive to the Vienna Pee-Dee Belemnite (VPDB) standard.\n\n Oxygen ratios from the carbonate fraction bioapatite or enamel are most commonly expressed realtive to Vienna Pee-Dee Belemnite (VPDB) standard, but can be expressed relative to the Vienna Standard Mean Ocean (VSMOW). Becuase of this possibility, the standard used in the source publication should always be recorded. \n\nOxygen ratios from the phosphate fraction bioapatite or enamel are most commonly expressed realtive to the Vienna Standard Mean Ocean (VSMOW), but can be expressed relative to the Vienna Pee-Dee Belemnite (VPDB) standard. Becuase of this possibility, the standard used in the source publication should always be recorded. \n\nThere are several conversions that can be done to increase the comparability of stable isotope measurements. BIAD does not record these conversions and only records original values.';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_INSERT_HumanIsotopes` BEFORE INSERT ON `HumanIsotopes` FOR EACH ROW BEGIN SET NEW.`HumanIsoID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`HumanIsoID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`IndividualID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`IndividualID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`SampleID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`SampleID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`SampleIDother` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`SampleIDother`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`ItemID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`ItemID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`SkeletalElement` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`SkeletalElement`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Position` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Position`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`SkeletalNote` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`SkeletalNote`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Material` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Material`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`SequenceOrder` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`SequenceOrder`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Collagen(%)` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Collagen(%)`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`C_collagen(%)` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`C_collagen(%)`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`N_collagen(%)` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`N_collagen(%)`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`S_collagen(%)` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`S_collagen(%)`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`C/N_collagen` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`C/N_collagen`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`C/S_collagen` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`C/S_collagen`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`N/S_collagen` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`N/S_collagen`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`δ13C_collagen(‰)` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`δ13C_collagen(‰)`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`δ13C_collagenStandard` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`δ13C_collagenStandard`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`δ15N_collagen(‰)` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`δ15N_collagen(‰)`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`δ15N_collagenStandard` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`δ15N_collagenStandard`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`δ34S_collagen(‰)` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`δ34S_collagen(‰)`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`δ13C_carbonate(‰)` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`δ13C_carbonate(‰)`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`δ18O_carbonate(‰)` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`δ18O_carbonate(‰)`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`δ18O_carbonate(‰)_Standard` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`δ18O_carbonate(‰)_Standard`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`δ18O_phosphate(‰)` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`δ18O_phosphate(‰)`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`δ18O_phosphate(‰)_Standard` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`δ18O_phosphate(‰)_Standard`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`207Pb/206Pb` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`207Pb/206Pb`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Error 207Pb/206Pb` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Error 207Pb/206Pb`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`207Pb/204Pb` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`207Pb/204Pb`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Error 207Pb tp 204Pb` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Error 207Pb tp 204Pb`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`208Pb/206Pb` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`208Pb/206Pb`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Error 208Pb/206Pb` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Error 208Pb/206Pb`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`208Pb/207Pb` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`208Pb/207Pb`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Error 208Pb/ 207Pb` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Error 208Pb/ 207Pb`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`208Pb/204Pb` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`208Pb/204Pb`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Error 208Pb/204Pb` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Error 208Pb/204Pb`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`206Pb/204Pb` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`206Pb/204Pb`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Error 206Pb/204Pb` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Error 206Pb/204Pb`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`206Pb/207Pb` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`206Pb/207Pb`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Error 206Pb/207Pb` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Error 206Pb/207Pb`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`IRSF` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`IRSF`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`C/P_FTIR` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`C/P_FTIR`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`BPI_FTIR` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`BPI_FTIR`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`API_FTIR` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`API_FTIR`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`C/C_FTIR` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`C/C_FTIR`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`FTIR_pre_or_post` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`FTIR_pre_or_post`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`notes` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`notes`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`CitationID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`CitationID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_last_update`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_last_update`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `trigger_stamp_INSERT_HumanIsotopes` BEFORE INSERT ON `HumanIsotopes` FOR EACH ROW BEGIN SET NEW.user_added = SYSTEM_USER(); SET NEW.time_added = CURRENT_TIMESTAMP; SET NEW.user_last_update = SYSTEM_USER(); SET NEW.time_last_update = CURRENT_TIMESTAMP; END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_UPDATE_HumanIsotopes` BEFORE UPDATE ON `HumanIsotopes` FOR EACH ROW BEGIN SET NEW.`HumanIsoID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`HumanIsoID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`IndividualID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`IndividualID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`SampleID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`SampleID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`SampleIDother` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`SampleIDother`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`ItemID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`ItemID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`SkeletalElement` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`SkeletalElement`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Position` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Position`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`SkeletalNote` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`SkeletalNote`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Material` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Material`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`SequenceOrder` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`SequenceOrder`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Collagen(%)` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Collagen(%)`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`C_collagen(%)` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`C_collagen(%)`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`N_collagen(%)` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`N_collagen(%)`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`S_collagen(%)` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`S_collagen(%)`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`C/N_collagen` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`C/N_collagen`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`C/S_collagen` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`C/S_collagen`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`N/S_collagen` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`N/S_collagen`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`δ13C_collagen(‰)` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`δ13C_collagen(‰)`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`δ13C_collagenStandard` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`δ13C_collagenStandard`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`δ15N_collagen(‰)` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`δ15N_collagen(‰)`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`δ15N_collagenStandard` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`δ15N_collagenStandard`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`δ34S_collagen(‰)` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`δ34S_collagen(‰)`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`δ13C_carbonate(‰)` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`δ13C_carbonate(‰)`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`δ18O_carbonate(‰)` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`δ18O_carbonate(‰)`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`δ18O_carbonate(‰)_Standard` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`δ18O_carbonate(‰)_Standard`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`δ18O_phosphate(‰)` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`δ18O_phosphate(‰)`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`δ18O_phosphate(‰)_Standard` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`δ18O_phosphate(‰)_Standard`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`207Pb/206Pb` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`207Pb/206Pb`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Error 207Pb/206Pb` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Error 207Pb/206Pb`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`207Pb/204Pb` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`207Pb/204Pb`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Error 207Pb tp 204Pb` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Error 207Pb tp 204Pb`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`208Pb/206Pb` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`208Pb/206Pb`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Error 208Pb/206Pb` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Error 208Pb/206Pb`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`208Pb/207Pb` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`208Pb/207Pb`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Error 208Pb/ 207Pb` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Error 208Pb/ 207Pb`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`208Pb/204Pb` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`208Pb/204Pb`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Error 208Pb/204Pb` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Error 208Pb/204Pb`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`206Pb/204Pb` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`206Pb/204Pb`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Error 206Pb/204Pb` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Error 206Pb/204Pb`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`206Pb/207Pb` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`206Pb/207Pb`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Error 206Pb/207Pb` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Error 206Pb/207Pb`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`IRSF` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`IRSF`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`C/P_FTIR` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`C/P_FTIR`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`BPI_FTIR` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`BPI_FTIR`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`API_FTIR` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`API_FTIR`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`C/C_FTIR` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`C/C_FTIR`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`FTIR_pre_or_post` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`FTIR_pre_or_post`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`notes` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`notes`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`CitationID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`CitationID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_last_update`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_last_update`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `trigger_stamp_UPDATE_HumanIsotopes` BEFORE UPDATE ON `HumanIsotopes` FOR EACH ROW BEGIN SET NEW.user_last_update = SYSTEM_USER(); SET NEW.time_last_update = CURRENT_TIMESTAMP; END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `Items`
--

DROP TABLE IF EXISTS `Items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Items` (
  `ItemID` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL COMMENT 'Use SiteID as prefix, and suffix with a number starting at 101.',
  `Notes` varchar(200) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'Table in which the item is present',
  `time_added` timestamp NULL DEFAULT NULL COMMENT 'When first added to the database. Do not manually add values. This is automatically added by the database.',
  `user_added` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'Who first added to the database. Do not manually add values. This is automatically added by the database.',
  `time_last_update` timestamp NULL DEFAULT NULL COMMENT 'When last updated. Do not manually add values. This is automatically added by the database.',
  `user_last_update` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'Who last updated. Do not manually add values. This is automatically added by the database.',
  PRIMARY KEY (`ItemID`),
  UNIQUE KEY `unique` (`ItemID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_swedish_ci COMMENT='This table connects data across more than one table that comes from the same ''item''. For example, both a radiocarbon date and isotopic values from a single skeleton. An ''item'' can therefore be at an level of aggregation, such as a bone, artifact or entire context.\r\nAll items must by definition be assigned to a site (and may also be assigned to a site-phase) therefore all item IDs should use the SiteID as a prefix, with a three-digit suffix (starting at 101).';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_INSERT_Items` BEFORE INSERT ON `Items` FOR EACH ROW BEGIN SET NEW.`ItemID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`ItemID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Notes` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Notes`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_last_update`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_last_update`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `trigger_stamp_INSERT_Items` BEFORE INSERT ON `Items` FOR EACH ROW BEGIN SET NEW.user_added = SYSTEM_USER(); SET NEW.time_added = CURRENT_TIMESTAMP; SET NEW.user_last_update = SYSTEM_USER(); SET NEW.time_last_update = CURRENT_TIMESTAMP; END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_UPDATE_Items` BEFORE UPDATE ON `Items` FOR EACH ROW BEGIN SET NEW.`ItemID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`ItemID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Notes` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Notes`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_last_update`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_last_update`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `trigger_stamp_UPDATE_Items` BEFORE UPDATE ON `Items` FOR EACH ROW BEGIN SET NEW.user_last_update = SYSTEM_USER(); SET NEW.time_last_update = CURRENT_TIMESTAMP; END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `MaterialCulture`
--

DROP TABLE IF EXISTS `MaterialCulture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MaterialCulture` (
  `MaterialCultureID` varchar(7) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL COMMENT 'Starts with M000001',
  `PhaseID` varchar(9) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `ItemID` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'Link between datasets which integrate data of common origins.',
  `Object` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'Functional category assigned in the primary literature. Currently a VARCHAR but in the future will be dependent on a zoptions table.',
  `Material` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'Basic category of the material the object is made of.',
  `MaterialType` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'A more detailed description of the resource used in the production of the object if provided in the primary literature.',
  `TaxonCode` varchar(8) CHARACTER SET latin1 COLLATE latin1_general_cs DEFAULT NULL COMMENT 'Unique code to identify the full taxonomic name extracted from zoptions_FaunalTaxaList (PROBLEM - SHOULD ALSO ALLOW THE USE OF BOTANICAL TAXA!)',
  `ShapeFace` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'Basic morphological description of the object if available.',
  `ShapeSection` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'Basic description of the object''s morphology when observed in section e.g., two buttons could have a circular morphology when looked at from the top, but one could actually form a half-sphere and the other a cone when looked at from the side. Morphology would be ''circular'' in both cases, but Morphology (section) would be ''half-sphere'' in one case and ''conical'' in the other. In the case of a blade, morphology in section could be ''oval'', ''diamond-shaped'', etc.',
  `Preservation` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'Basic information about the state the artefact was reported in.',
  `Decorated` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'Binary distinction between objects with presence of decoration (yes) and those without (no).',
  `Retouched` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'Binary distinction between objects with presence of retouche (yes) and those without (no).',
  `Polished` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'Binary distinction between objects with polished surface (yes) and those without (no).',
  `Perforated` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'Binary distinction between objects with presence of perforations (yes) and those without (no).',
  `Flat` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'Binary distinction between objects with a flat shape (yes) and those without (no).',
  `DecorStyle` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'A more detailed description of the decorative style of the object if provided in the primary literature. See zoptions table.',
  `DecorTechn` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'Basic information on the technique used to decorate the artefact. See zoptions table.',
  `DecorTool1` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'A more detailed description of the tool used to decorate the object if provided in the primary literature. See zoptions table.',
  `DecorTool2` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'A more detailed description of a second tool used to decorate the object if provided in the primary literature. See zoptions table.',
  `DecorTool3` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'A more detailed description of third tool used to decorate the object if provided in the primary literature. See zoptions table.',
  `DecorToolTaxonCode` varchar(8) CHARACTER SET latin1 COLLATE latin1_general_cs DEFAULT NULL COMMENT 'Unique code to identify the full taxonomic name for the species corresponding to the decoration tool (extracted from zoptions_TaxaList). This is mostly intended for pottery decorative styles created through the impression of mollusc shells (e.g., Cerastoderma edule, Cardium sp., etc.).',
  `PerforationsNumber` int DEFAULT NULL COMMENT 'Number of perforations through the object (original number of perforations if the object is fragmented but clearly presented additional perforations in the missing part (e.g., quadrangular plaque with perforations near each of the angles, but one angle is chipped so the perforation is no longer visible).',
  `PerforationMorphology` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'A more detailed description of the perforations if provided in the primary literature, e.g., tubular, V-shaped (enters and resurfaces on the same plane), or hourglass-shaped.',
  `Height/Length` int DEFAULT NULL COMMENT 'Reported in mm. Usually the longest of the three dimensions; or in the case of pottery always the height (even if the pottery is wider than higher). ',
  `Width` int DEFAULT NULL COMMENT 'Reported in mm.',
  `Quantity` int DEFAULT NULL COMMENT 'Number of objects with IDENTICAL characteristics.',
  `CitationID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'Unique identifier of a reference publication extracted from Citations table.',
  `notes` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'Any detail to identify the specific object, such as museum collection number, inventory number, or the figure in a publication. ',
  `morphometrics` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'Information whether an artefact was digitalized for morphometric analysis',
  `time_added` timestamp NULL DEFAULT NULL COMMENT 'When first added to the database. Do not manually add values. This is automatically added by the database.',
  `user_added` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'Who first added to the database. Do not manually add values. This is automatically added by the database.',
  `time_last_update` timestamp NULL DEFAULT NULL COMMENT 'When last added. Do not manually add values. This is automatically added by the database.',
  `user_last_update` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'Who last added. Do not manually add values. This is automatically added by the database.',
  PRIMARY KEY (`MaterialCultureID`),
  UNIQUE KEY `unique` (`MaterialCultureID`) USING BTREE,
  KEY `FK_MaterialCulture_Items` (`ItemID`),
  KEY `FK_MaterialCulture_Citations` (`CitationID`),
  KEY `FK_MaterialCulture_zoptions_TaxaList` (`TaxonCode`),
  KEY `DecorTechn` (`DecorTechn`),
  KEY `DecorTool1` (`DecorTool1`),
  KEY `DecorTool2` (`DecorTool2`),
  KEY `DecorTool3` (`DecorTool3`),
  KEY `DecorToolTaxonCode` (`DecorToolTaxonCode`),
  KEY `FK_MaterialCulture_Phases_2` (`PhaseID`),
  KEY `Object` (`Object`) USING BTREE,
  KEY `FK_zoptions_MaterialCulture_Material` (`Material`),
  KEY `FK_zoptions_MaterialCulture_MaterialType` (`MaterialType`),
  KEY `materialculture_ibfk_1` (`DecorStyle`),
  KEY `FK_zoptions_Preservation` (`Preservation`),
  KEY `FK_MaterialCulture_zoptions_yes_no` (`Decorated`),
  KEY `FK_MaterialCulture_zoptions_yes_no_2` (`Retouched`),
  KEY `FK_MaterialCulture_zoptions_yes_no_3` (`Polished`),
  KEY `FK_MaterialCulture_zoptions_yes_no_4` (`Perforated`),
  KEY `FK_MaterialCulture_zoptions_yes_no_5` (`Flat`),
  KEY `FK_MaterialCulture_zoptions_yes_no_6` (`morphometrics`),
  KEY `FK_zoptions_MaterialCulture_Morphology` (`ShapeFace`) USING BTREE,
  KEY `FK_zoptions_MaterialCulture_MorphologySection` (`ShapeSection`) USING BTREE,
  CONSTRAINT `FK_MaterialCulture_Citations` FOREIGN KEY (`CitationID`) REFERENCES `Citations` (`CitationID`) ON UPDATE CASCADE,
  CONSTRAINT `FK_MaterialCulture_Items` FOREIGN KEY (`ItemID`) REFERENCES `Items` (`ItemID`) ON UPDATE CASCADE,
  CONSTRAINT `FK_MaterialCulture_Phases` FOREIGN KEY (`PhaseID`) REFERENCES `Phases` (`PhaseID`) ON UPDATE CASCADE,
  CONSTRAINT `FK_MaterialCulture_Phases_2` FOREIGN KEY (`PhaseID`) REFERENCES `Phases` (`PhaseID`) ON UPDATE CASCADE,
  CONSTRAINT `FK_MaterialCulture_zoptions_Shape` FOREIGN KEY (`ShapeFace`) REFERENCES `zoptions_Shape` (`shape`) ON UPDATE CASCADE,
  CONSTRAINT `FK_MaterialCulture_zoptions_Shape_2` FOREIGN KEY (`ShapeSection`) REFERENCES `zoptions_Shape` (`shape`) ON UPDATE CASCADE,
  CONSTRAINT `FK_MaterialCulture_zoptions_TaxaList` FOREIGN KEY (`TaxonCode`) REFERENCES `zoptions_TaxaList` (`TaxonCode`) ON UPDATE CASCADE,
  CONSTRAINT `FK_MaterialCulture_zoptions_yes_no` FOREIGN KEY (`Decorated`) REFERENCES `zoptions_yes_no` (`present`) ON UPDATE CASCADE,
  CONSTRAINT `FK_MaterialCulture_zoptions_yes_no_2` FOREIGN KEY (`Retouched`) REFERENCES `zoptions_yes_no` (`present`) ON UPDATE CASCADE,
  CONSTRAINT `FK_MaterialCulture_zoptions_yes_no_3` FOREIGN KEY (`Polished`) REFERENCES `zoptions_yes_no` (`present`) ON UPDATE CASCADE,
  CONSTRAINT `FK_MaterialCulture_zoptions_yes_no_4` FOREIGN KEY (`Perforated`) REFERENCES `zoptions_yes_no` (`present`) ON UPDATE CASCADE,
  CONSTRAINT `FK_MaterialCulture_zoptions_yes_no_5` FOREIGN KEY (`Flat`) REFERENCES `zoptions_yes_no` (`present`) ON UPDATE CASCADE,
  CONSTRAINT `FK_MaterialCulture_zoptions_yes_no_6` FOREIGN KEY (`morphometrics`) REFERENCES `zoptions_yes_no` (`present`) ON UPDATE CASCADE,
  CONSTRAINT `FK_zoptions_MaterialCulture_Material` FOREIGN KEY (`Material`) REFERENCES `zoptions_MaterialCulture_Material` (`Material`) ON UPDATE CASCADE,
  CONSTRAINT `FK_zoptions_MaterialCulture_MaterialType` FOREIGN KEY (`MaterialType`) REFERENCES `zoptions_MaterialCulture_MaterialType` (`MaterialType`) ON UPDATE CASCADE,
  CONSTRAINT `FK_zoptions_MaterialCulture_Object` FOREIGN KEY (`Object`) REFERENCES `zoptions_MaterialCulture_Object` (`Object`) ON UPDATE CASCADE,
  CONSTRAINT `FK_zoptions_Preservation` FOREIGN KEY (`Preservation`) REFERENCES `zoptions_Preservation` (`preservation`) ON UPDATE CASCADE,
  CONSTRAINT `materialculture_ibfk_1` FOREIGN KEY (`DecorStyle`) REFERENCES `zoptions_DecorStyle` (`DecorStyle`) ON UPDATE CASCADE,
  CONSTRAINT `materialculture_ibfk_2` FOREIGN KEY (`DecorTechn`) REFERENCES `zoptions_DecorTechn` (`DecorTechn`) ON UPDATE CASCADE,
  CONSTRAINT `materialculture_ibfk_3` FOREIGN KEY (`DecorTool1`) REFERENCES `zoptions_DecorTool` (`DecorTool`) ON UPDATE CASCADE,
  CONSTRAINT `materialculture_ibfk_4` FOREIGN KEY (`DecorTool2`) REFERENCES `zoptions_DecorTool` (`DecorTool`) ON UPDATE CASCADE,
  CONSTRAINT `materialculture_ibfk_5` FOREIGN KEY (`DecorTool3`) REFERENCES `zoptions_DecorTool` (`DecorTool`) ON UPDATE CASCADE,
  CONSTRAINT `materialculture_ibfk_6` FOREIGN KEY (`DecorToolTaxonCode`) REFERENCES `zoptions_TaxaList` (`TaxonCode`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_INSERT_MaterialCulture` BEFORE INSERT ON `MaterialCulture` FOR EACH ROW BEGIN SET NEW.`MaterialCultureID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`MaterialCultureID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`PhaseID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`PhaseID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`ItemID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`ItemID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Object` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Object`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Material` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Material`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`MaterialType` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`MaterialType`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`TaxonCode` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`TaxonCode`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`ShapeFace` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`ShapeFace`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`ShapeSection` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`ShapeSection`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Preservation` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Preservation`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Decorated` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Decorated`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Retouched` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Retouched`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Polished` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Polished`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Perforated` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Perforated`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Flat` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Flat`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`DecorStyle` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`DecorStyle`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`DecorTechn` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`DecorTechn`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`DecorTool1` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`DecorTool1`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`DecorTool2` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`DecorTool2`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`DecorTool3` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`DecorTool3`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`DecorToolTaxonCode` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`DecorToolTaxonCode`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`PerforationsNumber` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`PerforationsNumber`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`PerforationMorphology` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`PerforationMorphology`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Height/Length` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Height/Length`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Width` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Width`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Quantity` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Quantity`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`CitationID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`CitationID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`notes` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`notes`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`morphometrics` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`morphometrics`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_last_update`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_last_update`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `trigger_stamp_INSERT_MaterialCulture` BEFORE INSERT ON `MaterialCulture` FOR EACH ROW BEGIN SET NEW.user_added = SYSTEM_USER(); SET NEW.time_added = CURRENT_TIMESTAMP; SET NEW.user_last_update = SYSTEM_USER(); SET NEW.time_last_update = CURRENT_TIMESTAMP; END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_UPDATE_MaterialCulture` BEFORE UPDATE ON `MaterialCulture` FOR EACH ROW BEGIN SET NEW.`MaterialCultureID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`MaterialCultureID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`PhaseID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`PhaseID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`ItemID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`ItemID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Object` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Object`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Material` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Material`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`MaterialType` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`MaterialType`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`TaxonCode` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`TaxonCode`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`ShapeFace` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`ShapeFace`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`ShapeSection` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`ShapeSection`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Preservation` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Preservation`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Decorated` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Decorated`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Retouched` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Retouched`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Polished` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Polished`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Perforated` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Perforated`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Flat` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Flat`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`DecorStyle` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`DecorStyle`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`DecorTechn` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`DecorTechn`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`DecorTool1` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`DecorTool1`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`DecorTool2` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`DecorTool2`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`DecorTool3` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`DecorTool3`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`DecorToolTaxonCode` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`DecorToolTaxonCode`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`PerforationsNumber` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`PerforationsNumber`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`PerforationMorphology` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`PerforationMorphology`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Height/Length` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Height/Length`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Width` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Width`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Quantity` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Quantity`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`CitationID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`CitationID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`notes` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`notes`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`morphometrics` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`morphometrics`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_last_update`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_last_update`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `trigger_stamp_UPDATE_MaterialCulture` BEFORE UPDATE ON `MaterialCulture` FOR EACH ROW BEGIN SET NEW.user_last_update = SYSTEM_USER(); SET NEW.time_last_update = CURRENT_TIMESTAMP; END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `Metallurgy`
--

DROP TABLE IF EXISTS `Metallurgy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Metallurgy` (
  `MetallurgyID` varchar(7) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL COMMENT 'Starts with ''ME'' specifying the unique row in this table.',
  `MaterialCultureID` varchar(7) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL COMMENT 'Starts with ''M'' specifying the unique object that is stored in the MaterialCulture table. It is possible for multiple rows to belong to the same object.',
  `Label` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_cs DEFAULT NULL COMMENT 'Analysis label provided in the promary literature.',
  `LaboratoryMethod` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Structure` enum('bulk analysis','sulphide inclusion','Pb inclusion') CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `S` decimal(4,2) DEFAULT NULL COMMENT 'Sulphur.',
  `Fe` decimal(4,2) DEFAULT NULL COMMENT 'Iron.',
  `Cu` decimal(4,2) DEFAULT NULL COMMENT 'Copper.',
  `Ag` decimal(4,2) DEFAULT NULL COMMENT 'Silver.',
  `Sn` decimal(4,2) DEFAULT NULL COMMENT 'Tin.',
  `Pb` decimal(4,2) DEFAULT NULL COMMENT 'Lead.',
  `Ba` decimal(4,2) DEFAULT NULL COMMENT 'Barium.',
  `O` decimal(4,2) DEFAULT NULL,
  `Mg` decimal(4,2) DEFAULT NULL,
  `Al` decimal(4,2) DEFAULT NULL,
  `Cr` decimal(4,2) DEFAULT NULL,
  `FeO` decimal(4,2) DEFAULT NULL COMMENT 'Iron(II) oxide or ferrous oxide.',
  `Al₂O₃` decimal(4,2) DEFAULT NULL COMMENT 'Aluminium oxide.',
  `SiO₂` decimal(4,2) DEFAULT NULL COMMENT 'Silicon dioxide.',
  `CaO` decimal(4,2) DEFAULT NULL COMMENT 'Calcium oxide.',
  `MgO` decimal(4,2) DEFAULT NULL COMMENT 'Magnesium oxide.',
  `BaO` decimal(4,2) DEFAULT NULL COMMENT 'Barium oxide.',
  `K₂O` decimal(4,2) DEFAULT NULL COMMENT 'Potassium oxide.',
  `TiO₂` decimal(4,2) DEFAULT NULL COMMENT 'Titanium dioxide.',
  `CrO` decimal(4,2) DEFAULT NULL COMMENT 'Chromium(II) oxide.',
  `CuO` decimal(4,2) DEFAULT NULL COMMENT 'Copper(II) oxide.',
  `SO` decimal(4,2) DEFAULT NULL COMMENT 'Sulfur monoxide.',
  `time_added` timestamp NULL DEFAULT NULL COMMENT 'When first added to the database. Do not manually add values. This is automatically added by the database.',
  `user_added` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'Who first added to the database. Do not manually add values. This is automatically added by the database.',
  `time_last_update` timestamp NULL DEFAULT NULL COMMENT 'When last added. Do not manually add values. This is automatically added by the database.',
  `user_last_update` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'Who last added. Do not manually add values. This is automatically added by the database.',
  PRIMARY KEY (`MetallurgyID`),
  UNIQUE KEY `unique` (`MetallurgyID`),
  KEY `FK_Metallurgy_zoptions_Laboratory_Methods` (`LaboratoryMethod`),
  KEY `FK_Metallurgy_MaterialCulture` (`MaterialCultureID`),
  CONSTRAINT `FK_Metallurgy_MaterialCulture` FOREIGN KEY (`MaterialCultureID`) REFERENCES `MaterialCulture` (`MaterialCultureID`) ON UPDATE CASCADE,
  CONSTRAINT `FK_Metallurgy_zoptions_Laboratory_Methods` FOREIGN KEY (`LaboratoryMethod`) REFERENCES `zoptions_Laboratory_Methods` (`Method`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_INSERT_Metallurgy` BEFORE INSERT ON `Metallurgy` FOR EACH ROW BEGIN SET NEW.`MetallurgyID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`MetallurgyID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`MaterialCultureID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`MaterialCultureID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Label` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Label`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`LaboratoryMethod` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`LaboratoryMethod`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Structure` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Structure`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`S` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`S`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Fe` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Fe`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Cu` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Cu`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Ag` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Ag`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Sn` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Sn`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Pb` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Pb`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Ba` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Ba`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`O` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`O`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Mg` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Mg`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Al` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Al`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Cr` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Cr`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`FeO` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`FeO`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Al₂O₃` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Al₂O₃`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`SiO₂` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`SiO₂`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`CaO` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`CaO`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`MgO` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`MgO`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`BaO` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`BaO`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`K₂O` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`K₂O`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`TiO₂` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`TiO₂`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`CrO` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`CrO`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`CuO` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`CuO`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`SO` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`SO`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_last_update`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_last_update`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `trigger_stamp_INSERT_Metallurgy` BEFORE INSERT ON `Metallurgy` FOR EACH ROW BEGIN SET NEW.user_added = SYSTEM_USER(); SET NEW.time_added = CURRENT_TIMESTAMP; SET NEW.user_last_update = SYSTEM_USER(); SET NEW.time_last_update = CURRENT_TIMESTAMP; END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_UPDATE_Metallurgy` BEFORE UPDATE ON `Metallurgy` FOR EACH ROW BEGIN SET NEW.`MetallurgyID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`MetallurgyID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`MaterialCultureID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`MaterialCultureID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Label` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Label`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`LaboratoryMethod` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`LaboratoryMethod`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Structure` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Structure`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`S` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`S`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Fe` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Fe`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Cu` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Cu`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Ag` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Ag`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Sn` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Sn`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Pb` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Pb`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Ba` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Ba`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`O` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`O`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Mg` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Mg`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Al` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Al`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Cr` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Cr`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`FeO` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`FeO`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Al₂O₃` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Al₂O₃`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`SiO₂` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`SiO₂`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`CaO` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`CaO`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`MgO` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`MgO`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`BaO` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`BaO`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`K₂O` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`K₂O`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`TiO₂` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`TiO₂`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`CrO` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`CrO`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`CuO` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`CuO`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`SO` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`SO`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_last_update`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_last_update`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `trigger_stamp_UPDATE_Metallurgy` BEFORE UPDATE ON `Metallurgy` FOR EACH ROW BEGIN SET NEW.user_last_update = SYSTEM_USER(); SET NEW.time_last_update = CURRENT_TIMESTAMP; END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `Monuments`
--

DROP TABLE IF EXISTS `Monuments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Monuments` (
  `PhaseID` varchar(9) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL COMMENT 'Please see the detailed description of the ''Phases'' table.',
  `shape` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'General overal shape.',
  `length` smallint unsigned DEFAULT NULL COMMENT 'Length in metres, to the nearest metre.',
  `width` smallint unsigned DEFAULT NULL COMMENT 'Width in metres, to the nearest metre.',
  `area` decimal(6,2) unsigned DEFAULT NULL COMMENT 'Reported area in hectares (ha).',
  `percentage_enclosed` tinyint unsigned DEFAULT NULL COMMENT 'Percentage (0 to 100) of the perimeter that was deliberately enclosed. Some parts may be open, or utilise natural features for part of the perimeter, such as river or ravine',
  `causeway` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'Presence or absence of causeway. A causeway refers to the un-dug areas separating the ditches of an enclosure. An enclosure with multiple causeways is referred to as a causewayed enclosure. ',
  `ditch_circuits` tinyint unsigned DEFAULT NULL COMMENT 'The number (count) of concentric ditch circuits. The number of ditch rows that form the overall shape of the enclosure.',
  `ditch_segments` tinyint unsigned DEFAULT NULL COMMENT 'The number (count) of ditch segments. Each ditch circuit may be broken up into multiple ditch segments.',
  `ditch_length_average` decimal(4,2) unsigned DEFAULT NULL COMMENT 'The mean average ditch length in metres (m).',
  `ditch_width_average` decimal(3,2) unsigned DEFAULT NULL COMMENT 'The mean average ditch width in metres (m).',
  `ditch_depth_average` decimal(3,2) unsigned DEFAULT NULL COMMENT 'The mean average ditch depth in metres (m).',
  `ditch_profile` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'The cut profile shape of the ditch. V&U-shaped means there is a mix of U-shaped and V-shaped ditch profiles.',
  `palisades` tinyint unsigned DEFAULT NULL COMMENT 'The number of concentric palisades (basically fences).',
  `interior_pits` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'Presence or absence of pits within the interior of the monument.',
  `interior_postholes` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'Presence or absence of post holes within the interior of the monument.',
  `interior_settlement_remains` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'Presence or absence of any remains that suggest some human settlement within the interior of the monument, such as habitation, toilets, etc.',
  `notes` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `time_added` timestamp NULL DEFAULT NULL COMMENT 'When first added to the database. Do not manually add values. This is automatically added by the database.',
  `user_added` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'Who first added to the database. Do not manually add values. This is automatically added by the database.',
  `time_last_update` timestamp NULL DEFAULT NULL COMMENT 'When last added. Do not manually add values. This is automatically added by the database.',
  `user_last_update` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'Who last added. Do not manually add values. This is automatically added by the database.',
  UNIQUE KEY `unique` (`PhaseID`),
  KEY `FK_Monuments_zoptions_yes_no_2` (`causeway`),
  KEY `FK_Monuments_zoptions_yes_no_3` (`interior_pits`),
  KEY `FK_Monuments_zoptions_yes_no_4` (`interior_postholes`),
  KEY `FK_Monuments_zoptions_yes_no_5` (`interior_settlement_remains`),
  KEY `FK_Monuments_zoptions_Shape` (`ditch_profile`),
  KEY `FK_Monuments_zoptions_Shape_2` (`shape`),
  CONSTRAINT `FK_Monuments_Phases` FOREIGN KEY (`PhaseID`) REFERENCES `Phases` (`PhaseID`) ON UPDATE CASCADE,
  CONSTRAINT `FK_Monuments_zoptions_Shape` FOREIGN KEY (`ditch_profile`) REFERENCES `zoptions_Shape` (`shape`) ON UPDATE CASCADE,
  CONSTRAINT `FK_Monuments_zoptions_Shape_2` FOREIGN KEY (`shape`) REFERENCES `zoptions_Shape` (`shape`) ON UPDATE CASCADE,
  CONSTRAINT `FK_Monuments_zoptions_yes_no_2` FOREIGN KEY (`causeway`) REFERENCES `zoptions_yes_no` (`present`) ON UPDATE CASCADE,
  CONSTRAINT `FK_Monuments_zoptions_yes_no_3` FOREIGN KEY (`interior_pits`) REFERENCES `zoptions_yes_no` (`present`) ON UPDATE CASCADE,
  CONSTRAINT `FK_Monuments_zoptions_yes_no_4` FOREIGN KEY (`interior_postholes`) REFERENCES `zoptions_yes_no` (`present`) ON UPDATE CASCADE,
  CONSTRAINT `FK_Monuments_zoptions_yes_no_5` FOREIGN KEY (`interior_settlement_remains`) REFERENCES `zoptions_yes_no` (`present`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='A hard to define concept. Archaeological monuments are typically large bounded sites, sometimes megathic structures, sometimes fenced or with trenches. Sometimes natural features such as rivers or ravines formed part of the boundary. \r\nAll monuments are a type of phase. \r\nIn all cases NULL values mean unknown.';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_INSERT_Monuments` BEFORE INSERT ON `Monuments` FOR EACH ROW BEGIN SET NEW.`PhaseID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`PhaseID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`shape` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`shape`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`length` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`length`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`width` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`width`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`area` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`area`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`percentage_enclosed` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`percentage_enclosed`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`causeway` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`causeway`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`ditch_circuits` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`ditch_circuits`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`ditch_segments` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`ditch_segments`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`ditch_length_average` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`ditch_length_average`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`ditch_width_average` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`ditch_width_average`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`ditch_depth_average` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`ditch_depth_average`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`ditch_profile` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`ditch_profile`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`palisades` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`palisades`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`interior_pits` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`interior_pits`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`interior_postholes` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`interior_postholes`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`interior_settlement_remains` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`interior_settlement_remains`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`notes` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`notes`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_last_update`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_last_update`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `trigger_stamp_INSERT_Monuments` BEFORE INSERT ON `Monuments` FOR EACH ROW BEGIN SET NEW.user_added = SYSTEM_USER(); SET NEW.time_added = CURRENT_TIMESTAMP; SET NEW.user_last_update = SYSTEM_USER(); SET NEW.time_last_update = CURRENT_TIMESTAMP; END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_UPDATE_Monuments` BEFORE UPDATE ON `Monuments` FOR EACH ROW BEGIN SET NEW.`PhaseID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`PhaseID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`shape` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`shape`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`length` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`length`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`width` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`width`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`area` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`area`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`percentage_enclosed` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`percentage_enclosed`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`causeway` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`causeway`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`ditch_circuits` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`ditch_circuits`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`ditch_segments` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`ditch_segments`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`ditch_length_average` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`ditch_length_average`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`ditch_width_average` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`ditch_width_average`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`ditch_depth_average` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`ditch_depth_average`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`ditch_profile` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`ditch_profile`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`palisades` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`palisades`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`interior_pits` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`interior_pits`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`interior_postholes` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`interior_postholes`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`interior_settlement_remains` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`interior_settlement_remains`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`notes` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`notes`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_last_update`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_last_update`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `trigger_stamp_UPDATE_Monuments` BEFORE UPDATE ON `Monuments` FOR EACH ROW BEGIN SET NEW.user_last_update = SYSTEM_USER(); SET NEW.time_last_update = CURRENT_TIMESTAMP; END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `PhaseCitation`
--

DROP TABLE IF EXISTS `PhaseCitation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PhaseCitation` (
  `PhaseID` varchar(9) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL COMMENT 'Please see the detailed description of the ''Phases'' table.',
  `CitationID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `DataCited` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'Which data table is this citation relevant to?',
  `time_added` timestamp NULL DEFAULT NULL COMMENT 'When first added to the database. Do not manually add values. This is automatically added by the database.',
  `user_added` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'Who first added to the database. Do not manually add values. This is automatically added by the database.',
  `time_last_update` timestamp NULL DEFAULT NULL COMMENT 'When last updated. Do not manually add values. This is automatically added by the database.',
  `user_last_update` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'Who last updated. Do not manually add values. This is automatically added by the database.',
  UNIQUE KEY `unique_triplet` (`PhaseID`,`CitationID`,`DataCited`),
  KEY `FK_PhaseCitation_Phases` (`PhaseID`),
  KEY `FK_PhaseCitation_Citations` (`CitationID`),
  KEY `FK_PhaseCitation_zoptions_DataCited` (`DataCited`),
  CONSTRAINT `FK_PhaseCitation_Citations` FOREIGN KEY (`CitationID`) REFERENCES `Citations` (`CitationID`) ON UPDATE CASCADE,
  CONSTRAINT `FK_PhaseCitation_Phases` FOREIGN KEY (`PhaseID`) REFERENCES `Phases` (`PhaseID`) ON UPDATE CASCADE,
  CONSTRAINT `FK_PhaseCitation_zoptions_DataCited` FOREIGN KEY (`DataCited`) REFERENCES `zoptions_DataCited` (`Tablename`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_swedish_ci COMMENT='Citations for each phase. \r\nA phase can have multiple citations, for example for each data type (14C, faunal, botanical etc). Furthermore, each data type could have multiple citations. ';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_INSERT_PhaseCitation` BEFORE INSERT ON `PhaseCitation` FOR EACH ROW BEGIN SET NEW.`PhaseID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`PhaseID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`CitationID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`CitationID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`DataCited` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`DataCited`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_last_update`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_last_update`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `trigger_stamp_INSERT_PhaseCitation` BEFORE INSERT ON `PhaseCitation` FOR EACH ROW BEGIN SET NEW.user_added = SYSTEM_USER(); SET NEW.time_added = CURRENT_TIMESTAMP; SET NEW.user_last_update = SYSTEM_USER(); SET NEW.time_last_update = CURRENT_TIMESTAMP; END */;;
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
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`admin`@`127.0.0.1`*/ /*!50003 TRIGGER `trigger_citation_insert` AFTER INSERT ON `PhaseCitation` FOR EACH ROW BEGIN
SET @Citations = (SELECT GROUP_CONCAT(`CitationID` SEPARATOR '; ') FROM `PhaseCitation` WHERE `PhaseID` = NEW.PhaseID);
UPDATE `Phases` SET `Citations` = @Citations WHERE `PhaseID` = NEW.PhaseID;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_UPDATE_PhaseCitation` BEFORE UPDATE ON `PhaseCitation` FOR EACH ROW BEGIN SET NEW.`PhaseID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`PhaseID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`CitationID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`CitationID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`DataCited` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`DataCited`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_last_update`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_last_update`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `trigger_stamp_UPDATE_PhaseCitation` BEFORE UPDATE ON `PhaseCitation` FOR EACH ROW BEGIN SET NEW.user_last_update = SYSTEM_USER(); SET NEW.time_last_update = CURRENT_TIMESTAMP; END */;;
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
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`admin`@`127.0.0.1`*/ /*!50003 TRIGGER `trigger_citation_update` AFTER UPDATE ON `PhaseCitation` FOR EACH ROW BEGIN
SET @Citations = (SELECT GROUP_CONCAT(`CitationID` SEPARATOR '; ') FROM `PhaseCitation` WHERE `PhaseID` = NEW.PhaseID);
UPDATE `Phases` SET `Citations` = @Citations WHERE `PhaseID` = NEW.PhaseID;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `BIAD` CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci ;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`admin`@`127.0.0.1`*/ /*!50003 TRIGGER `trigger_citation_delete` AFTER DELETE ON `PhaseCitation` FOR EACH ROW BEGIN
SET @Citations = (SELECT GROUP_CONCAT(`CitationID` SEPARATOR '; ') FROM `PhaseCitation` WHERE `PhaseID` = OLD.PhaseID);
UPDATE `Phases` SET `Citations` = @Citations WHERE `PhaseID` = OLD.PhaseID;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `BIAD` CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci ;

--
-- Table structure for table `PhaseOrder`
--

DROP TABLE IF EXISTS `PhaseOrder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PhaseOrder` (
  `SiteID` varchar(6) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `PhaseID_before` varchar(9) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `PhaseID_after` varchar(9) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  KEY `FK_PhaseOrder_Phases` (`PhaseID_before`),
  KEY `FK_PhaseOrder_Phases_2` (`PhaseID_after`),
  KEY `FK_PhaseOrder_multiple` (`SiteID`,`PhaseID_before`),
  KEY `FK_PhaseOrder_multiple_2` (`SiteID`,`PhaseID_after`),
  CONSTRAINT `FK_PhaseOrder_multiple` FOREIGN KEY (`SiteID`, `PhaseID_before`) REFERENCES `Phases` (`SiteID`, `PhaseID`) ON UPDATE CASCADE,
  CONSTRAINT `FK_PhaseOrder_multiple_2` FOREIGN KEY (`SiteID`, `PhaseID_after`) REFERENCES `Phases` (`SiteID`, `PhaseID`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci COMMENT='Temporal ordering of phases. Knowledge of the ordering of phases at a site can be stored here. These can be used as constraints in OxCal input files. For example, if four phases are known at a site, such that p1, p2, p3 are all stratographically ordered (p1 is oldest), and p4 is only known to be older than p3 (but the relationship with p1 and p2 is unknown), we can state the following: p1<p2; p2<p3; p4<p3.';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_INSERT_PhaseOrder` BEFORE INSERT ON `PhaseOrder` FOR EACH ROW BEGIN SET NEW.`SiteID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`SiteID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`PhaseID_before` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`PhaseID_before`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`PhaseID_after` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`PhaseID_after`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_UPDATE_PhaseOrder` BEFORE UPDATE ON `PhaseOrder` FOR EACH ROW BEGIN SET NEW.`SiteID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`SiteID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`PhaseID_before` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`PhaseID_before`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`PhaseID_after` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`PhaseID_after`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `PhaseTypes`
--

DROP TABLE IF EXISTS `PhaseTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PhaseTypes` (
  `PhaseID` varchar(9) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL COMMENT 'Please see the detailed description of the ''Phases'' table.',
  `Type` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `time_added` timestamp NULL DEFAULT NULL COMMENT 'When first added to the database. Do not manually add values. This is automatically added by the database.',
  `user_added` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'Who first added to the database. Do not manually add values. This is automatically added by the database.',
  `time_last_update` timestamp NULL DEFAULT NULL COMMENT 'When last updated. Do not manually add values. This is automatically added by the database.',
  `user_last_update` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'Who last updated. Do not manually add values. This is automatically added by the database.',
  KEY `FK_PhaseTypes_Phases` (`PhaseID`),
  KEY `FK_PhaseTypes_zoptions_Types` (`Type`),
  CONSTRAINT `FK_PhaseTypes_Phases` FOREIGN KEY (`PhaseID`) REFERENCES `Phases` (`PhaseID`) ON UPDATE CASCADE,
  CONSTRAINT `FK_PhaseTypes_zoptions_Types` FOREIGN KEY (`Type`) REFERENCES `zoptions_Types` (`Type`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_swedish_ci COMMENT='A dificult term to define, but is intuitively recognised as a broad description of the main architectural function or intended purpose of the site.  ';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_INSERT_PhaseTypes` BEFORE INSERT ON `PhaseTypes` FOR EACH ROW BEGIN SET NEW.`PhaseID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`PhaseID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Type` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Type`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_last_update`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_last_update`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `trigger_stamp_INSERT_PhaseTypes` BEFORE INSERT ON `PhaseTypes` FOR EACH ROW BEGIN SET NEW.user_added = SYSTEM_USER(); SET NEW.time_added = CURRENT_TIMESTAMP; SET NEW.user_last_update = SYSTEM_USER(); SET NEW.time_last_update = CURRENT_TIMESTAMP; END */;;
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
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`admin`@`127.0.0.1`*/ /*!50003 TRIGGER `trigger_PhasesType_insert` AFTER INSERT ON `PhaseTypes` FOR EACH ROW BEGIN
SET @X = (SELECT GROUP_CONCAT(`Type` SEPARATOR '; ') FROM `PhaseTypes` WHERE `PhaseID` = NEW.PhaseID);
UPDATE `Phases` SET `Type` = @X WHERE `PhaseID` = NEW.PhaseID;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_UPDATE_PhaseTypes` BEFORE UPDATE ON `PhaseTypes` FOR EACH ROW BEGIN SET NEW.`PhaseID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`PhaseID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Type` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Type`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_last_update`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_last_update`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `trigger_stamp_UPDATE_PhaseTypes` BEFORE UPDATE ON `PhaseTypes` FOR EACH ROW BEGIN SET NEW.user_last_update = SYSTEM_USER(); SET NEW.time_last_update = CURRENT_TIMESTAMP; END */;;
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
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`admin`@`127.0.0.1`*/ /*!50003 TRIGGER `trigger_PhasesType_update` AFTER UPDATE ON `PhaseTypes` FOR EACH ROW BEGIN
SET @X = (SELECT GROUP_CONCAT(`Type` SEPARATOR '; ') FROM `PhaseTypes` WHERE `PhaseID` = NEW.PhaseID);
UPDATE `Phases` SET `Type` = @X WHERE `PhaseID` = NEW.PhaseID;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `BIAD` CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci ;
ALTER DATABASE `BIAD` CHARACTER SET latin1 COLLATE latin1_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`admin`@`127.0.0.1`*/ /*!50003 TRIGGER `trigger_PhasesType_delete` AFTER DELETE ON `PhaseTypes` FOR EACH ROW BEGIN
SET @X = (SELECT GROUP_CONCAT(`Type` SEPARATOR '; ') FROM `PhaseTypes` WHERE `PhaseID` = OLD.PhaseID);
UPDATE `Phases` SET `Type` = @X WHERE `PhaseID` = OLD.PhaseID;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `BIAD` CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci ;

--
-- Table structure for table `Phases`
--

DROP TABLE IF EXISTS `Phases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Phases` (
  `PhaseID` varchar(9) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '' COMMENT 'Please see the detailed description of the ''Phases'' table.',
  `SiteID` varchar(6) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Culture1` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'Cultural assignment of the phase',
  `Culture2` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'Alternative cultural assignment, in rare cases where (for example) the phase is transitional between two cultures',
  `Culture3` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'Alternative cultural assignment, in rare cases where (for example) the phase is transitional between two cultures',
  `Subculture` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'Subcultural assignment',
  `Period` varchar(7) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '' COMMENT 'Broad chronological period e.g. Early Neolithic (EN), Middle Neolithic (MN). Required as a primary key, so NULL is not permitted. Instead use a blank string.',
  `PeriodNotes` varchar(1500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'More detailed information about relative chronology',
  `Citations` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'DO NOT MANUALLY ENTER VALUES !!  Automatically updated from the PhaseCitation table to allow multiple values semicolon separated.',
  `Type` varchar(500) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'DO NOT MANUALLY ENTER VALUES !!  Automatically updated from the PhaseTypes table to allow multiple values semicolon separated.',
  `StartBCEreported` int DEFAULT NULL COMMENT 'Excavator reported start date, which incorporates various evidential sources and archaeological expertise',
  `EndBCEreported` int DEFAULT NULL COMMENT 'Excavator reported end date, which incorporates various evidential sources and archaeological expertise',
  `GMM` int DEFAULT NULL COMMENT 'DO NOT MANUALLY ENTER VALUES !!  Gaussian Model Mu. Mean date of the phase, modelled as a Gaussian, using ADMUR. Reported as years BP',
  `GMS` int DEFAULT NULL COMMENT 'DO NOT MANUALLY ENTER VALUES !!  Gaussian Model Sigma. Standard deviation of the phase, modelled as a Gaussian, using ADMUR.',
  `time_added` timestamp NULL DEFAULT NULL COMMENT 'When first added to the database. Do not manually add values. This is automatically added by the database.',
  `user_added` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'Who first added to the database. Do not manually add values. This is automatically added by the database.',
  `time_last_update` timestamp NULL DEFAULT NULL COMMENT 'When last updated. Do not manually add values. This is automatically added by the database.',
  `user_last_update` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'Who last updated. Do not manually add values. This is automatically added by the database.',
  PRIMARY KEY (`SiteID`,`PhaseID`,`Period`),
  UNIQUE KEY `unique` (`PhaseID`),
  KEY `FK_Phases_zoptions_Periods` (`Period`),
  KEY `FK_Phases_zoptions_Cultures` (`Culture1`),
  KEY `FK_Phases_zoptions_Cultures_2` (`Culture2`),
  KEY `FK_Phases_zoptions_Cultures_3` (`Culture3`),
  CONSTRAINT `FK_Phases_Sites` FOREIGN KEY (`SiteID`) REFERENCES `Sites` (`SiteID`) ON UPDATE CASCADE,
  CONSTRAINT `FK_Phases_zoptions_Cultures` FOREIGN KEY (`Culture1`) REFERENCES `zoptions_Cultures` (`Culture`) ON UPDATE CASCADE,
  CONSTRAINT `FK_Phases_zoptions_Cultures_2` FOREIGN KEY (`Culture2`) REFERENCES `zoptions_Cultures` (`Culture`) ON UPDATE CASCADE,
  CONSTRAINT `FK_Phases_zoptions_Cultures_3` FOREIGN KEY (`Culture3`) REFERENCES `zoptions_Cultures` (`Culture`) ON UPDATE CASCADE,
  CONSTRAINT `FK_Phases_zoptions_Periods` FOREIGN KEY (`Period`) REFERENCES `zoptions_Periods` (`PeriodID`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='The phase is the most useful level of aggregation, representing discrete archaeological phases at a site. This is hard to define precisely, but is usually a straightforward matter of defining phases in terms of distinct cultural periods identified in the site reports. Therefore a single phase will typically aggregate data from several ''contexts''. Sometimes several different site reports exist, and the phasing inconsistencies between them will require the archaeologists inputting the data to make decisions about useful aggregations. \r\n\r\nPhaseIDs can be a maximum 9 characters. Do not use special characters or lowercase. Hyphens are OK. Typically the first few refer to the sitename. The last characters (or suffix) therefore specify the phase. Usually this is in terms of a number (1,2,3 etc), letter (A, B, C, etc), period (EN, MN, LN, etc), or culture.\r\n\r\nIdeally therefore, all phases should have a cultural assignment. In rare cases, the excavator has assigned two (and in very rare cases three) cultures, perhaps where the phase is considered transitional.  Therefore ''Culture1'' should always be completed. In the vast maority of cases ''Culture2'' and ''Culture3'' should remain NULL, but can accomodate ''additional'' cultures if required (e.g. transitional between two cultures).  These are not hierarchical - one should not be considered any more likely than another.\r\n\r\nThe best phase chronology is ''StartBCEreported'' and EndBCEreported'' which comes from the site report. This will incorporate various sources evidence including subjective expert knowledge of the excavator. However, these are rarely available, so additionally ''StartBCEestimated'' and ''EndBCEestimated'' are generated by modelling assoicated radicarbon dates in a phase model. This is an ongoing process that incorporates as priors chronological information from other (local) phases e.g. with the same culture or period.\r\n\r\nDates are reported as BCE, therefore negative values mean AD.\r\n\r\n';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`admin`@`127.0.0.1`*/ /*!50003 TRIGGER `trigger_phases_date_order_insert` BEFORE INSERT ON `Phases` FOR EACH ROW BEGIN
IF (NEW.`StartBCEreported` < NEW.`EndBCEreported`) THEN 
SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Trigger Error: StartBCEreported should be before EndBCEreported';
END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_INSERT_Phases` BEFORE INSERT ON `Phases` FOR EACH ROW BEGIN SET NEW.`PhaseID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`PhaseID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`SiteID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`SiteID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Culture1` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Culture1`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Culture2` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Culture2`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Culture3` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Culture3`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Subculture` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Subculture`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Period` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Period`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`PeriodNotes` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`PeriodNotes`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Citations` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Citations`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Type` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Type`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`StartBCEreported` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`StartBCEreported`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`EndBCEreported` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`EndBCEreported`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`GMM` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`GMM`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`GMS` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`GMS`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_last_update`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_last_update`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `trigger_stamp_INSERT_Phases` BEFORE INSERT ON `Phases` FOR EACH ROW BEGIN SET NEW.user_added = SYSTEM_USER(); SET NEW.time_added = CURRENT_TIMESTAMP; SET NEW.user_last_update = SYSTEM_USER(); SET NEW.time_last_update = CURRENT_TIMESTAMP; END */;;
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
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`admin`@`127.0.0.1`*/ /*!50003 TRIGGER `trigger_phase_update` BEFORE UPDATE ON `Phases` FOR EACH ROW BEGIN
SET NEW.`Citations` = (SELECT GROUP_CONCAT(`CitationID` SEPARATOR '; ') FROM `PhaseCitation` WHERE `PhaseID` = NEW.PhaseID);
SET NEW.`Type` = (SELECT GROUP_CONCAT(`Type` SEPARATOR '; ') FROM `PhaseTypes` WHERE `PhaseID` = NEW.PhaseID);
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
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`admin`@`127.0.0.1`*/ /*!50003 TRIGGER `trigger_phases_date_order_update` BEFORE UPDATE ON `Phases` FOR EACH ROW BEGIN
IF (NEW.`StartBCEreported` < NEW.`EndBCEreported`) THEN 
SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Trigger Error: StartBCEreported should be before EndBCEreported';
END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_UPDATE_Phases` BEFORE UPDATE ON `Phases` FOR EACH ROW BEGIN SET NEW.`PhaseID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`PhaseID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`SiteID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`SiteID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Culture1` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Culture1`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Culture2` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Culture2`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Culture3` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Culture3`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Subculture` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Subculture`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Period` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Period`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`PeriodNotes` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`PeriodNotes`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Citations` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Citations`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Type` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Type`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`StartBCEreported` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`StartBCEreported`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`EndBCEreported` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`EndBCEreported`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`GMM` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`GMM`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`GMS` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`GMS`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_last_update`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_last_update`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `trigger_stamp_UPDATE_Phases` BEFORE UPDATE ON `Phases` FOR EACH ROW BEGIN SET NEW.user_last_update = SYSTEM_USER(); SET NEW.time_last_update = CURRENT_TIMESTAMP; END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `Rites`
--

DROP TABLE IF EXISTS `Rites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Rites` (
  `RiteID` varchar(6) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '' COMMENT 'Unique ID for each rite record.',
  `IndividualID` varchar(6) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'Unique ID for each human specimen.',
  `Dismembered` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'Reported dismemberment of the body. ''no'' corresponds to absence, ''yes'' corresponds to presence.',
  `Head` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'Reported presence of the head. ''no'' corresponds to absence, ''yes'' corresponds to presence.',
  `BodyPositioning` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'Reported body positioning.',
  `BurialSide` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'Reported side the body was placed on.',
  `BurialOrientationMin` int DEFAULT NULL COMMENT 'Minimum angle of the body positioning.',
  `BurialOrientationMax` int DEFAULT NULL COMMENT 'Maximum angle of the body positioning.',
  `GraveGoods` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'Presence of grave goods. ''no'' corresponds to absence, ''yes''corresponds to presence.',
  `Ochre` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'Presence of ochre. ''no'' corresponds to absence, ''yes''.',
  `CitationID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `time_added` timestamp NULL DEFAULT NULL COMMENT 'When first added to the database. Do not manually add values. This is automatically added by the database.',
  `user_added` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'Who first added to the database. Do not manually add values. This is automatically added by the database.',
  `time_last_update` timestamp NULL DEFAULT NULL COMMENT 'When last updated. Do not manually add values. This is automatically added to the database.',
  `user_last_update` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'Who last updated. Do not manually add values. This is automatically added to the database.',
  PRIMARY KEY (`RiteID`) USING BTREE,
  UNIQUE KEY `unique` (`RiteID`,`IndividualID`) USING BTREE,
  KEY `FK_Rites_Citations` (`CitationID`) USING BTREE,
  KEY `FK_Rites_IndividualID` (`IndividualID`) USING BTREE,
  KEY `FK_Rites_zoptions_yes_no` (`Dismembered`),
  KEY `FK_Rites_zoptions_yes_no_2` (`Head`),
  KEY `FK_Rites_zoptions_yes_no_3` (`GraveGoods`),
  KEY `FK_Rites_zoptions_yes_no_4` (`Ochre`),
  CONSTRAINT `FK_Rites_Citations` FOREIGN KEY (`CitationID`) REFERENCES `Citations` (`CitationID`) ON UPDATE CASCADE,
  CONSTRAINT `FK_Rites_GraveIndividuals` FOREIGN KEY (`IndividualID`) REFERENCES `GraveIndividuals` (`IndividualID`) ON UPDATE CASCADE,
  CONSTRAINT `FK_Rites_zoptions_yes_no` FOREIGN KEY (`Dismembered`) REFERENCES `zoptions_yes_no` (`present`) ON UPDATE CASCADE,
  CONSTRAINT `FK_Rites_zoptions_yes_no_2` FOREIGN KEY (`Head`) REFERENCES `zoptions_yes_no` (`present`) ON UPDATE CASCADE,
  CONSTRAINT `FK_Rites_zoptions_yes_no_3` FOREIGN KEY (`GraveGoods`) REFERENCES `zoptions_yes_no` (`present`) ON UPDATE CASCADE,
  CONSTRAINT `FK_Rites_zoptions_yes_no_4` FOREIGN KEY (`Ochre`) REFERENCES `zoptions_yes_no` (`present`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_INSERT_Rites` BEFORE INSERT ON `Rites` FOR EACH ROW BEGIN SET NEW.`RiteID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`RiteID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`IndividualID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`IndividualID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Dismembered` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Dismembered`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Head` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Head`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`BodyPositioning` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`BodyPositioning`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`BurialSide` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`BurialSide`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`BurialOrientationMin` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`BurialOrientationMin`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`BurialOrientationMax` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`BurialOrientationMax`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`GraveGoods` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`GraveGoods`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Ochre` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Ochre`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`CitationID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`CitationID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_last_update`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_last_update`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `trigger_stamp_INSERT_Rites` BEFORE INSERT ON `Rites` FOR EACH ROW BEGIN SET NEW.user_added = SYSTEM_USER(); SET NEW.time_added = CURRENT_TIMESTAMP; SET NEW.user_last_update = SYSTEM_USER(); SET NEW.time_last_update = CURRENT_TIMESTAMP; END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_UPDATE_Rites` BEFORE UPDATE ON `Rites` FOR EACH ROW BEGIN SET NEW.`RiteID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`RiteID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`IndividualID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`IndividualID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Dismembered` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Dismembered`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Head` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Head`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`BodyPositioning` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`BodyPositioning`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`BurialSide` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`BurialSide`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`BurialOrientationMin` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`BurialOrientationMin`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`BurialOrientationMax` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`BurialOrientationMax`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`GraveGoods` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`GraveGoods`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Ochre` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Ochre`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`CitationID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`CitationID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_last_update`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_last_update`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `trigger_stamp_UPDATE_Rites` BEFORE UPDATE ON `Rites` FOR EACH ROW BEGIN SET NEW.user_last_update = SYSTEM_USER(); SET NEW.time_last_update = CURRENT_TIMESTAMP; END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `Sites`
--

DROP TABLE IF EXISTS `Sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Sites` (
  `SiteID` varchar(6) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL COMMENT 'Unique Site identification number. Numeric of five digits prefix with "S".',
  `SiteName` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'Sitename',
  `Region` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'Administrative or geographic region. Purely for distinguishing sites with same names. Optional.',
  `Latitude` decimal(5,3) NOT NULL COMMENT 'Decimal degrees to 3 dp',
  `Longitude` decimal(6,3) NOT NULL COMMENT 'Decimal degrees to 3 dp. Negative values are west of Greenwich meridian',
  `Country` varchar(25) NOT NULL COMMENT 'Modern geo-political country',
  `Notes` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `time_added` timestamp NULL DEFAULT NULL COMMENT 'When first added to the database. Do not manually add values. This is automatically added by the database.',
  `user_added` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'Who first added to the database. Do not manually add values. This is automatically added by the database.',
  `time_last_update` timestamp NULL DEFAULT NULL COMMENT 'When last updated. Do not manually add values. This is automatically added by the database.',
  `user_last_update` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'Who last updated. Do not manually add values. This is automatically added by the database.',
  PRIMARY KEY (`SiteID`),
  UNIQUE KEY `unique` (`SiteID`),
  KEY `FK_Sites_zoptions_Countries` (`Country`),
  CONSTRAINT `FK1_zoptions_Countries` FOREIGN KEY (`Country`) REFERENCES `zoptions_Countries` (`Country`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='The  Sites table represents the highest level in the relationships since all data must be associated with a site.';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_INSERT_Sites` BEFORE INSERT ON `Sites` FOR EACH ROW BEGIN SET NEW.`SiteID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`SiteID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`SiteName` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`SiteName`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Region` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Region`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Latitude` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Latitude`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Longitude` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Longitude`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Country` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Country`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Notes` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Notes`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_last_update`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_last_update`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `trigger_stamp_INSERT_Sites` BEFORE INSERT ON `Sites` FOR EACH ROW BEGIN SET NEW.user_added = SYSTEM_USER(); SET NEW.time_added = CURRENT_TIMESTAMP; SET NEW.user_last_update = SYSTEM_USER(); SET NEW.time_last_update = CURRENT_TIMESTAMP; END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_UPDATE_Sites` BEFORE UPDATE ON `Sites` FOR EACH ROW BEGIN SET NEW.`SiteID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`SiteID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`SiteName` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`SiteName`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Region` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Region`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Latitude` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Latitude`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Longitude` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Longitude`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Country` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Country`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Notes` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Notes`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_last_update`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_last_update`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `trigger_stamp_UPDATE_Sites` BEFORE UPDATE ON `Sites` FOR EACH ROW BEGIN SET NEW.user_last_update = SYSTEM_USER(); SET NEW.time_last_update = CURRENT_TIMESTAMP; END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `Strontium`
--

DROP TABLE IF EXISTS `Strontium`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Strontium` (
  `StrontiumID` smallint(5) unsigned zerofill NOT NULL COMMENT 'Unique primary key',
  `IndividualID` varchar(6) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL COMMENT 'Unique ID for each human specimen',
  `ItemID` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'Must exist in the Items table.',
  `Species` varchar(8) CHARACTER SET latin1 COLLATE latin1_general_cs DEFAULT NULL COMMENT 'Must exist in the TaxonCode table',
  `Material` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'The material on which the analyses are based.',
  `SkeletalElement` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_cs DEFAULT NULL COMMENT 'Skeletal element (case sensitive); lower case letters correspond to deciduous dentition and upper case correspond to adult dentition.',
  `SkeletalPosition` varchar(50) COLLATE utf8mb3_swedish_ci DEFAULT NULL,
  `Leachate` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'Whether strontium measurements were extracted from leachate from the sample element.',
  `Position` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `SegmentLength` decimal(3,1) DEFAULT NULL COMMENT 'Segment length (cm) amalgamates the isotopic signal of the months of growth within that sample. Hair grows circa 1 cm per month, so a 5 cm segment includes isotopic information for 5 months.',
  `SegmentMass` decimal(4,2) DEFAULT NULL COMMENT 'Mass of segment (mg).',
  `LabCode` varchar(22) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'Original labcode provided by the lab that generated the strontium values.',
  `Mean_87Sr/86Sr` decimal(7,6) unsigned NOT NULL COMMENT 'Strontium isotopic ratio.',
  `Error` decimal(7,6) unsigned DEFAULT NULL COMMENT 'Measurement error on the strontium ratio; equivalent to 2SE',
  `ppm` int DEFAULT NULL,
  `MassSpecType` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'Type of Mass Spectrometry. ',
  `notes` varchar(115) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `CitationID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `time_added` timestamp NULL DEFAULT NULL COMMENT 'When first added to the database. Do not manually add values. This is automatically added by the database.',
  `user_added` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'Who first added to the database. Do not manually add values. This is automatically added by the database.',
  `time_last_update` timestamp NULL DEFAULT NULL COMMENT 'When last updated. Do not manually add values. This is automatically added by the database.',
  `user_last_update` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'Who last updated. Do not manually add values. This is automatically added by the database.',
  PRIMARY KEY (`StrontiumID`) USING BTREE,
  UNIQUE KEY `unique` (`StrontiumID`) USING BTREE,
  KEY `FK_Strontium_GraveIndividuals` (`IndividualID`) USING BTREE,
  KEY `FK_Strontium_Items` (`ItemID`) USING BTREE,
  KEY `FK_Strontium_Citations` (`CitationID`) USING BTREE,
  KEY `FK_Strontium_zoptions_TaxaList` (`Species`),
  KEY `FK_Strontium_zoptions_Material` (`Material`),
  KEY `FK_Strontium_zoptions_yes_no` (`Leachate`),
  KEY `FK_Strontium_zoptions_Position_3` (`Position`),
  KEY `FK_Strontium_zoptions_SkeletalElements` (`SkeletalElement`) USING BTREE,
  KEY `FK_Strontium_zoptions_Laboratory_Methods` (`MassSpecType`),
  CONSTRAINT `FK_Strontium_zoptions_Laboratory_Methods` FOREIGN KEY (`MassSpecType`) REFERENCES `zoptions_Laboratory_Methods` (`Method`) ON UPDATE CASCADE,
  CONSTRAINT `FK_Strontium_zoptions_Material` FOREIGN KEY (`Material`) REFERENCES `zoptions_Material` (`Material`) ON UPDATE CASCADE,
  CONSTRAINT `FK_Strontium_zoptions_Position_3` FOREIGN KEY (`Position`) REFERENCES `zoptions_Position` (`position`) ON UPDATE CASCADE,
  CONSTRAINT `FK_Strontium_zoptions_TaxaList` FOREIGN KEY (`Species`) REFERENCES `zoptions_TaxaList` (`TaxonCode`) ON UPDATE CASCADE,
  CONSTRAINT `FK_Strontium_zoptions_yes_no` FOREIGN KEY (`Leachate`) REFERENCES `zoptions_yes_no` (`present`) ON UPDATE CASCADE,
  CONSTRAINT `strontium_ibfk_1` FOREIGN KEY (`CitationID`) REFERENCES `Citations` (`CitationID`) ON UPDATE CASCADE,
  CONSTRAINT `strontium_ibfk_2` FOREIGN KEY (`IndividualID`) REFERENCES `GraveIndividuals` (`IndividualID`) ON UPDATE CASCADE,
  CONSTRAINT `strontium_ibfk_3` FOREIGN KEY (`ItemID`) REFERENCES `Items` (`ItemID`) ON UPDATE CASCADE,
  CONSTRAINT `strontium_ibfk_4` FOREIGN KEY (`SkeletalElement`) REFERENCES `zoptions_SkeletalElements` (`Element`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_swedish_ci ROW_FORMAT=DYNAMIC COMMENT='Strontium isotopic data from human remains\r\n\r\n';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_INSERT_Strontium` BEFORE INSERT ON `Strontium` FOR EACH ROW BEGIN SET NEW.`StrontiumID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`StrontiumID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`IndividualID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`IndividualID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`ItemID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`ItemID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Species` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Species`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Material` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Material`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`SkeletalElement` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`SkeletalElement`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`SkeletalPosition` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`SkeletalPosition`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Leachate` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Leachate`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Position` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Position`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`SegmentLength` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`SegmentLength`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`SegmentMass` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`SegmentMass`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`LabCode` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`LabCode`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Mean_87Sr/86Sr` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Mean_87Sr/86Sr`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Error` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Error`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`ppm` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`ppm`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`MassSpecType` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`MassSpecType`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`notes` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`notes`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`CitationID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`CitationID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_last_update`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_last_update`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `trigger_stamp_INSERT_Strontium` BEFORE INSERT ON `Strontium` FOR EACH ROW BEGIN SET NEW.user_added = SYSTEM_USER(); SET NEW.time_added = CURRENT_TIMESTAMP; SET NEW.user_last_update = SYSTEM_USER(); SET NEW.time_last_update = CURRENT_TIMESTAMP; END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_UPDATE_Strontium` BEFORE UPDATE ON `Strontium` FOR EACH ROW BEGIN SET NEW.`StrontiumID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`StrontiumID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`IndividualID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`IndividualID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`ItemID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`ItemID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Species` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Species`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Material` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Material`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`SkeletalElement` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`SkeletalElement`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`SkeletalPosition` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`SkeletalPosition`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Leachate` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Leachate`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Position` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Position`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`SegmentLength` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`SegmentLength`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`SegmentMass` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`SegmentMass`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`LabCode` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`LabCode`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Mean_87Sr/86Sr` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Mean_87Sr/86Sr`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Error` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Error`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`ppm` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`ppm`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`MassSpecType` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`MassSpecType`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`notes` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`notes`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`CitationID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`CitationID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_last_update`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_last_update`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `trigger_stamp_UPDATE_Strontium` BEFORE UPDATE ON `Strontium` FOR EACH ROW BEGIN SET NEW.user_last_update = SYSTEM_USER(); SET NEW.time_last_update = CURRENT_TIMESTAMP; END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `StrontiumEnvironment`
--

DROP TABLE IF EXISTS `StrontiumEnvironment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `StrontiumEnvironment` (
  `SiteID` varchar(6) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `Soil` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'The environmental source. NULL and no are equivalent. ',
  `Plants` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'The environmental source. NULL and no are equivalent. ',
  `SurfaceWater` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'The environmental source. NULL and no are equivalent. ',
  `GroundWater` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'The environmental source. NULL and no are equivalent. ',
  `Fauna` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'The environmental source. NULL and no are equivalent. ',
  `dentine` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'The environmental source. NULL and no are equivalent. ',
  `ice core` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'The environmental source. NULL and no are equivalent. ',
  `min87Sr/86Sr` decimal(7,6) NOT NULL COMMENT 'Minimum strontium isotope ratio.',
  `max87Sr/86Sr` decimal(7,6) NOT NULL COMMENT 'Maximum strontium isotope ratio.',
  `CitationID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `notes` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'flags and/or notes',
  `time_added` timestamp NULL DEFAULT NULL COMMENT 'When first added to the database. Do not manually add values. This is automatically added by the database.',
  `user_added` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'Who first added to the database. Do not manually add values. This is automatically added by the database.',
  `time_last_update` timestamp NULL DEFAULT NULL COMMENT 'When last updated. Do not manually add values. This is automatically added by the database.',
  `user_last_update` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'Who last updated. Do not manually add values. This is automatically added by the database.',
  KEY `FK_StrontiumEnvironment_Sites` (`SiteID`),
  KEY `FK_StrontiumEnvironment_Citations` (`CitationID`),
  KEY `FK_StrontiumEnvironment_zoptions_yes_no` (`Soil`),
  KEY `FK_StrontiumEnvironment_zoptions_yes_no_2` (`Plants`),
  KEY `FK_StrontiumEnvironment_zoptions_yes_no_3` (`SurfaceWater`),
  KEY `FK_StrontiumEnvironment_zoptions_yes_no_4` (`GroundWater`),
  KEY `FK_StrontiumEnvironment_zoptions_yes_no_5` (`Fauna`),
  KEY `FK_StrontiumEnvironment_zoptions_yes_no_6` (`dentine`),
  KEY `FK_StrontiumEnvironment_zoptions_yes_no_7` (`ice core`),
  CONSTRAINT `FK_StrontiumEnvironment_Citations` FOREIGN KEY (`CitationID`) REFERENCES `Citations` (`CitationID`) ON UPDATE CASCADE,
  CONSTRAINT `FK_StrontiumEnvironment_Sites` FOREIGN KEY (`SiteID`) REFERENCES `Sites` (`SiteID`) ON UPDATE CASCADE,
  CONSTRAINT `FK_StrontiumEnvironment_zoptions_yes_no` FOREIGN KEY (`Soil`) REFERENCES `zoptions_yes_no` (`present`) ON UPDATE CASCADE,
  CONSTRAINT `FK_StrontiumEnvironment_zoptions_yes_no_2` FOREIGN KEY (`Plants`) REFERENCES `zoptions_yes_no` (`present`) ON UPDATE CASCADE,
  CONSTRAINT `FK_StrontiumEnvironment_zoptions_yes_no_3` FOREIGN KEY (`SurfaceWater`) REFERENCES `zoptions_yes_no` (`present`) ON UPDATE CASCADE,
  CONSTRAINT `FK_StrontiumEnvironment_zoptions_yes_no_4` FOREIGN KEY (`GroundWater`) REFERENCES `zoptions_yes_no` (`present`) ON UPDATE CASCADE,
  CONSTRAINT `FK_StrontiumEnvironment_zoptions_yes_no_5` FOREIGN KEY (`Fauna`) REFERENCES `zoptions_yes_no` (`present`) ON UPDATE CASCADE,
  CONSTRAINT `FK_StrontiumEnvironment_zoptions_yes_no_6` FOREIGN KEY (`dentine`) REFERENCES `zoptions_yes_no` (`present`) ON UPDATE CASCADE,
  CONSTRAINT `FK_StrontiumEnvironment_zoptions_yes_no_7` FOREIGN KEY (`ice core`) REFERENCES `zoptions_yes_no` (`present`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_swedish_ci COMMENT='Some publications provide locally relevant estimates of the baseline environmental strontium isotope ratios.\r\nSiteIDs need not be unique, therefore more multiple environmental baseline estimates can be recorded for a single site.';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_INSERT_StrontiumEnvironment` BEFORE INSERT ON `StrontiumEnvironment` FOR EACH ROW BEGIN SET NEW.`SiteID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`SiteID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Soil` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Soil`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Plants` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Plants`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`SurfaceWater` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`SurfaceWater`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`GroundWater` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`GroundWater`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Fauna` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Fauna`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`dentine` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`dentine`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`ice core` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`ice core`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`min87Sr/86Sr` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`min87Sr/86Sr`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`max87Sr/86Sr` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`max87Sr/86Sr`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`CitationID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`CitationID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`notes` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`notes`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_last_update`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_last_update`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `trigger_stamp_INSERT_StrontiumEnvironment` BEFORE INSERT ON `StrontiumEnvironment` FOR EACH ROW BEGIN SET NEW.user_added = SYSTEM_USER(); SET NEW.time_added = CURRENT_TIMESTAMP; SET NEW.user_last_update = SYSTEM_USER(); SET NEW.time_last_update = CURRENT_TIMESTAMP; END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_UPDATE_StrontiumEnvironment` BEFORE UPDATE ON `StrontiumEnvironment` FOR EACH ROW BEGIN SET NEW.`SiteID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`SiteID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Soil` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Soil`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Plants` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Plants`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`SurfaceWater` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`SurfaceWater`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`GroundWater` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`GroundWater`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Fauna` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Fauna`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`dentine` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`dentine`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`ice core` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`ice core`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`min87Sr/86Sr` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`min87Sr/86Sr`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`max87Sr/86Sr` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`max87Sr/86Sr`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`CitationID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`CitationID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`notes` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`notes`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_last_update`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_last_update`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `trigger_stamp_UPDATE_StrontiumEnvironment` BEFORE UPDATE ON `StrontiumEnvironment` FOR EACH ROW BEGIN SET NEW.user_last_update = SYSTEM_USER(); SET NEW.time_last_update = CURRENT_TIMESTAMP; END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `StrontiumSequences`
--

DROP TABLE IF EXISTS `StrontiumSequences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `StrontiumSequences` (
  `StrontSliceID` varchar(8) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL COMMENT 'Primary key',
  `StrontiumID` smallint(5) unsigned zerofill NOT NULL COMMENT 'References the strontium table for sample that has been sequencesd (such as a tooth) ',
  `SequenceOrder` tinyint unsigned DEFAULT NULL COMMENT 'Rank order of sequence (lower numbers are closer to root)',
  `Datapoints/slice` tinyint unsigned DEFAULT NULL COMMENT 'Number of datapoints per slice',
  `SequenceTime` tinyint(3) unsigned zerofill DEFAULT NULL COMMENT 'Duration of reading in seconds',
  `Material` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'Material on which analysis completed; e.g. dentine, enamel',
  `TaxonCode` varchar(8) CHARACTER SET latin1 COLLATE latin1_general_cs DEFAULT NULL COMMENT 'Species of the animal on which the analysis was completed',
  `87Sr/86Sr` decimal(7,6) unsigned DEFAULT NULL COMMENT 'Strontium isotopic ratio (87Sr/86Sr)',
  `2SE_87Sr/86Sr` decimal(6,5) unsigned zerofill DEFAULT NULL COMMENT 'Within-run precision of each analyses (2SE) (Iolite Version 2.5)',
  `2SD_87Sr/86Sr` decimal(7,6) unsigned DEFAULT NULL COMMENT 'Propagated from external reproducibility (2SD) obtained from primary standard during the analytical session combined with the within-run precision of each analyses (2SE) (Iolite Version 2.5)',
  `87Rb/86Sr` decimal(7,6) unsigned DEFAULT NULL COMMENT 'Ratio of 87Rb to 86Sr',
  `2SE_87Rb/86Sr` decimal(6,5) unsigned DEFAULT NULL COMMENT 'Within-run precision of each analyses (2SE) (Iolite Version 2.5)',
  `Mean_SrBeam` decimal(3,2) unsigned DEFAULT NULL COMMENT 'Average of total Sr beam intensity in V (sum of 84Sr, 86Sr, 87Sr, 88Sr)',
  `84Sr/86Sr` decimal(7,6) unsigned DEFAULT NULL COMMENT 'Ratio of 84Sr/86Sr',
  `2SE_84Sr/86Sr` decimal(6,5) DEFAULT NULL COMMENT 'Within-run precision of each analyses (2SE) (Iolite Version 2.5)',
  `ppm` tinyint unsigned DEFAULT NULL COMMENT 'Estimated Sr concentration',
  `notes` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `time_added` timestamp NULL DEFAULT NULL COMMENT 'When first added to the database. Do not manually add values. This is automatically added by the database.',
  `user_added` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'Who first added to the database. Do not manually add values. This is automatically added by the database.',
  `time_last_update` timestamp NULL DEFAULT NULL COMMENT 'When last updated. Do not manually add values. This is automatically added by the database.',
  `user_last_update` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'Who last updated. Do not manually add values. This is automatically added by the database.',
  PRIMARY KEY (`StrontSliceID`),
  UNIQUE KEY `unique` (`StrontSliceID`) USING BTREE,
  KEY `FK_StrontiumSequences_Strontium` (`StrontiumID`),
  KEY `FK_StrontiumSequences_zoptions_Material` (`Material`),
  KEY `FK_StrontiumSequences_zoptions_TaxaList` (`TaxonCode`),
  CONSTRAINT `FK_StrontiumSequences_Strontium` FOREIGN KEY (`StrontiumID`) REFERENCES `Strontium` (`StrontiumID`) ON UPDATE CASCADE,
  CONSTRAINT `FK_StrontiumSequences_zoptions_Material` FOREIGN KEY (`Material`) REFERENCES `zoptions_Material` (`Material`) ON UPDATE CASCADE,
  CONSTRAINT `FK_StrontiumSequences_zoptions_TaxaList` FOREIGN KEY (`TaxonCode`) REFERENCES `zoptions_TaxaList` (`TaxonCode`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci COMMENT='Where sequential sampling data are available, e.g. from laser ablation data on single teeth or sequential sampling (which may sometimes overlap) of hair or nails. ';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_INSERT_StrontiumSequences` BEFORE INSERT ON `StrontiumSequences` FOR EACH ROW BEGIN SET NEW.`StrontSliceID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`StrontSliceID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`StrontiumID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`StrontiumID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`SequenceOrder` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`SequenceOrder`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Datapoints/slice` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Datapoints/slice`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`SequenceTime` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`SequenceTime`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Material` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Material`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`TaxonCode` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`TaxonCode`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`87Sr/86Sr` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`87Sr/86Sr`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`2SE_87Sr/86Sr` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`2SE_87Sr/86Sr`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`2SD_87Sr/86Sr` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`2SD_87Sr/86Sr`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`87Rb/86Sr` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`87Rb/86Sr`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`2SE_87Rb/86Sr` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`2SE_87Rb/86Sr`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Mean_SrBeam` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Mean_SrBeam`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`84Sr/86Sr` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`84Sr/86Sr`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`2SE_84Sr/86Sr` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`2SE_84Sr/86Sr`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`ppm` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`ppm`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`notes` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`notes`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_last_update`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_last_update`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `trigger_stamp_INSERT_StrontiumSequences` BEFORE INSERT ON `StrontiumSequences` FOR EACH ROW BEGIN SET NEW.user_added = SYSTEM_USER(); SET NEW.time_added = CURRENT_TIMESTAMP; SET NEW.user_last_update = SYSTEM_USER(); SET NEW.time_last_update = CURRENT_TIMESTAMP; END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_UPDATE_StrontiumSequences` BEFORE UPDATE ON `StrontiumSequences` FOR EACH ROW BEGIN SET NEW.`StrontSliceID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`StrontSliceID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`StrontiumID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`StrontiumID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`SequenceOrder` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`SequenceOrder`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Datapoints/slice` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Datapoints/slice`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`SequenceTime` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`SequenceTime`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Material` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Material`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`TaxonCode` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`TaxonCode`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`87Sr/86Sr` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`87Sr/86Sr`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`2SE_87Sr/86Sr` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`2SE_87Sr/86Sr`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`2SD_87Sr/86Sr` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`2SD_87Sr/86Sr`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`87Rb/86Sr` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`87Rb/86Sr`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`2SE_87Rb/86Sr` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`2SE_87Rb/86Sr`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Mean_SrBeam` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Mean_SrBeam`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`84Sr/86Sr` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`84Sr/86Sr`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`2SE_84Sr/86Sr` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`2SE_84Sr/86Sr`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`ppm` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`ppm`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`notes` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`notes`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_last_update`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_last_update`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `trigger_stamp_UPDATE_StrontiumSequences` BEFORE UPDATE ON `StrontiumSequences` FOR EACH ROW BEGIN SET NEW.user_last_update = SYSTEM_USER(); SET NEW.time_last_update = CURRENT_TIMESTAMP; END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `zoptions_ABotAnatomy`
--

DROP TABLE IF EXISTS `zoptions_ABotAnatomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zoptions_ABotAnatomy` (
  `Anatomy` varchar(30) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`Anatomy`) USING BTREE,
  UNIQUE KEY `unique` (`Anatomy`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_swedish_ci COMMENT='Generic archaeobotanical plant components for the ABotSamples table ';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_INSERT_zoptions_ABotAnatomy` BEFORE INSERT ON `zoptions_ABotAnatomy` FOR EACH ROW BEGIN SET NEW.`Anatomy` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Anatomy`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_UPDATE_zoptions_ABotAnatomy` BEFORE UPDATE ON `zoptions_ABotAnatomy` FOR EACH ROW BEGIN SET NEW.`Anatomy` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Anatomy`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `zoptions_ABotRecoveryMethods`
--

DROP TABLE IF EXISTS `zoptions_ABotRecoveryMethods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zoptions_ABotRecoveryMethods` (
  `Method` varchar(25) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`Method`),
  UNIQUE KEY `unique` (`Method`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_swedish_ci COMMENT='Choice of recovery methods specifically for ABot, such as seiving etc.';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_INSERT_zoptions_ABotRecoveryMethods` BEFORE INSERT ON `zoptions_ABotRecoveryMethods` FOR EACH ROW BEGIN SET NEW.`Method` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Method`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_UPDATE_zoptions_ABotRecoveryMethods` BEFORE UPDATE ON `zoptions_ABotRecoveryMethods` FOR EACH ROW BEGIN SET NEW.`Method` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Method`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `zoptions_AgeCategorical`
--

DROP TABLE IF EXISTS `zoptions_AgeCategorical`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zoptions_AgeCategorical` (
  `Age` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL COMMENT 'Categorical age options',
  `description` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`Age`),
  UNIQUE KEY `unique` (`Age`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_swedish_ci COMMENT='Categorical age options';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_INSERT_zoptions_AgeCategorical` BEFORE INSERT ON `zoptions_AgeCategorical` FOR EACH ROW BEGIN SET NEW.`Age` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Age`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`description` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`description`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_UPDATE_zoptions_AgeCategorical` BEFORE UPDATE ON `zoptions_AgeCategorical` FOR EACH ROW BEGIN SET NEW.`Age` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Age`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`description` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`description`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `zoptions_C14laboratories`
--

DROP TABLE IF EXISTS `zoptions_C14laboratories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zoptions_C14laboratories` (
  `prefix` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL COMMENT 'Case sensitivity is important, for example, prefix GD- and Gd- are two different laboratories. No spaces are permitted. All must end with a hyphen.',
  `laboratory` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `notes` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`prefix`),
  UNIQUE KEY `Index 2` (`prefix`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_swedish_ci COMMENT='List of radiocarbon laboratory agreed suffixes. \r\nLabcodes entered into the C14Samples table should adhere to these protocols\r\n\r\nhttps://radiocarbon.webhost.uits.arizona.edu/laboratories\r\nhttps://journals.uair.arizona.edu/index.php/radiocarbon/article/download/17780/17496\r\nhttps://gist.github.com/steko/e6d43c2881a65237ce0f\r\nhttps://github.com/people3k/p3k14c-data-scrubbing/blob/main/Labs.csv\r\n\r\n';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_INSERT_zoptions_C14laboratories` BEFORE INSERT ON `zoptions_C14laboratories` FOR EACH ROW BEGIN SET NEW.`prefix` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`prefix`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`laboratory` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`laboratory`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`notes` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`notes`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_UPDATE_zoptions_C14laboratories` BEFORE UPDATE ON `zoptions_C14laboratories` FOR EACH ROW BEGIN SET NEW.`prefix` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`prefix`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`laboratory` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`laboratory`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`notes` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`notes`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

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
/*!50003 CREATE*/ /*!50017 DEFINER=`admin`@`127.0.0.1`*/ /*!50003 TRIGGER `trigger_zoptions_Countries_insert` BEFORE INSERT ON `zoptions_Countries` FOR EACH ROW BEGIN 
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
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_INSERT_zoptions_Countries` BEFORE INSERT ON `zoptions_Countries` FOR EACH ROW BEGIN SET NEW.`Country` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Country`, '', ' '), '
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
/*!50003 CREATE*/ /*!50017 DEFINER=`admin`@`127.0.0.1`*/ /*!50003 TRIGGER `trigger_zoptions_Countries_update` BEFORE UPDATE ON `zoptions_Countries` FOR EACH ROW BEGIN 
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
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_UPDATE_zoptions_Countries` BEFORE UPDATE ON `zoptions_Countries` FOR EACH ROW BEGIN SET NEW.`Country` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Country`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`ignore` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`ignore`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`ISO-3166-2` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`ISO-3166-2`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `zoptions_Cultures`
--

DROP TABLE IF EXISTS `zoptions_Cultures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zoptions_Cultures` (
  `Culture` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ignore` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'DO NOT ENTER VALUES IN THIS COLUMN!! Auto updates to ensure dropdown menus in other tables are (approximately) alphabetical.',
  `notes` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `time_added` timestamp NULL DEFAULT NULL,
  `time_last_update` timestamp NULL DEFAULT NULL,
  `user_added` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_swedish_ci DEFAULT NULL,
  `user_last_update` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_swedish_ci DEFAULT NULL,
  UNIQUE KEY `unique` (`Culture`) USING BTREE,
  KEY `key` (`Culture`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_swedish_ci COMMENT='The fundamental unit of aggregation in the database is the sitephase which is determined as a unique cultural ''block'' at a particular site.\r\n\r\n';
/*!40101 SET character_set_client = @saved_cs_client */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`admin`@`127.0.0.1`*/ /*!50003 TRIGGER `trigger_zoptions_Cultures_insert` BEFORE INSERT ON `zoptions_Cultures` FOR EACH ROW BEGIN 
set NEW.`ignore` = UPPER(LEFT(NEW.Culture,3));
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
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_INSERT_zoptions_Cultures` BEFORE INSERT ON `zoptions_Cultures` FOR EACH ROW BEGIN SET NEW.`Culture` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Culture`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`ignore` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`ignore`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`notes` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`notes`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_last_update`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_last_update`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `trigger_stamp_INSERT_zoptions_Cultures` BEFORE INSERT ON `zoptions_Cultures` FOR EACH ROW BEGIN SET NEW.user_added = SYSTEM_USER(); SET NEW.time_added = CURRENT_TIMESTAMP; SET NEW.user_last_update = SYSTEM_USER(); SET NEW.time_last_update = CURRENT_TIMESTAMP; END */;;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`admin`@`127.0.0.1`*/ /*!50003 TRIGGER `trigger_zoptions_Cultures_update` BEFORE UPDATE ON `zoptions_Cultures` FOR EACH ROW BEGIN 
set NEW.`ignore` = UPPER(LEFT(NEW.Culture,3));
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
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_UPDATE_zoptions_Cultures` BEFORE UPDATE ON `zoptions_Cultures` FOR EACH ROW BEGIN SET NEW.`Culture` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Culture`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`ignore` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`ignore`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`notes` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`notes`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_last_update`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_last_update`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `trigger_stamp_UPDATE_zoptions_Cultures` BEFORE UPDATE ON `zoptions_Cultures` FOR EACH ROW BEGIN SET NEW.user_last_update = SYSTEM_USER(); SET NEW.time_last_update = CURRENT_TIMESTAMP; END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `zoptions_DataCited`
--

DROP TABLE IF EXISTS `zoptions_DataCited`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zoptions_DataCited` (
  `Tablename` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`Tablename`) USING BTREE,
  UNIQUE KEY `unique` (`Tablename`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_INSERT_zoptions_DataCited` BEFORE INSERT ON `zoptions_DataCited` FOR EACH ROW BEGIN SET NEW.`Tablename` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Tablename`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_UPDATE_zoptions_DataCited` BEFORE UPDATE ON `zoptions_DataCited` FOR EACH ROW BEGIN SET NEW.`Tablename` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Tablename`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `zoptions_DecorStyle`
--

DROP TABLE IF EXISTS `zoptions_DecorStyle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zoptions_DecorStyle` (
  `DecorStyle` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT 'Short hierarchical code helping describe the decorative style.',
  `Description` varchar(500) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL COMMENT 'Full description of the decorative style.',
  `time_added` timestamp NULL DEFAULT NULL,
  `time_last_update` timestamp NULL DEFAULT NULL,
  `user_added` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `user_last_update` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`DecorStyle`),
  UNIQUE KEY `unique` (`DecorStyle`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_INSERT_zoptions_DecorStyle` BEFORE INSERT ON `zoptions_DecorStyle` FOR EACH ROW BEGIN SET NEW.`DecorStyle` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`DecorStyle`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Description` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Description`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_last_update`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_last_update`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `trigger_stamp_INSERT_zoptions_DecorStyle` BEFORE INSERT ON `zoptions_DecorStyle` FOR EACH ROW BEGIN SET NEW.user_added = SYSTEM_USER(); SET NEW.time_added = CURRENT_TIMESTAMP; SET NEW.user_last_update = SYSTEM_USER(); SET NEW.time_last_update = CURRENT_TIMESTAMP; END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_UPDATE_zoptions_DecorStyle` BEFORE UPDATE ON `zoptions_DecorStyle` FOR EACH ROW BEGIN SET NEW.`DecorStyle` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`DecorStyle`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Description` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Description`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_last_update`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_last_update`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `trigger_stamp_UPDATE_zoptions_DecorStyle` BEFORE UPDATE ON `zoptions_DecorStyle` FOR EACH ROW BEGIN SET NEW.user_last_update = SYSTEM_USER(); SET NEW.time_last_update = CURRENT_TIMESTAMP; END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `zoptions_DecorTechn`
--

DROP TABLE IF EXISTS `zoptions_DecorTechn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zoptions_DecorTechn` (
  `DecorTechn` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Description` varchar(500) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `time_added` timestamp NULL DEFAULT NULL,
  `time_last_update` timestamp NULL DEFAULT NULL,
  `user_added` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `user_last_update` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`DecorTechn`),
  UNIQUE KEY `unique` (`DecorTechn`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_INSERT_zoptions_DecorTechn` BEFORE INSERT ON `zoptions_DecorTechn` FOR EACH ROW BEGIN SET NEW.`DecorTechn` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`DecorTechn`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Description` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Description`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_last_update`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_last_update`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `trigger_stamp_INSERT_zoptions_DecorTechn` BEFORE INSERT ON `zoptions_DecorTechn` FOR EACH ROW BEGIN SET NEW.user_added = SYSTEM_USER(); SET NEW.time_added = CURRENT_TIMESTAMP; SET NEW.user_last_update = SYSTEM_USER(); SET NEW.time_last_update = CURRENT_TIMESTAMP; END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_UPDATE_zoptions_DecorTechn` BEFORE UPDATE ON `zoptions_DecorTechn` FOR EACH ROW BEGIN SET NEW.`DecorTechn` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`DecorTechn`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Description` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Description`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_last_update`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_last_update`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `trigger_stamp_UPDATE_zoptions_DecorTechn` BEFORE UPDATE ON `zoptions_DecorTechn` FOR EACH ROW BEGIN SET NEW.user_last_update = SYSTEM_USER(); SET NEW.time_last_update = CURRENT_TIMESTAMP; END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `zoptions_DecorTool`
--

DROP TABLE IF EXISTS `zoptions_DecorTool`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zoptions_DecorTool` (
  `DecorTool` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Description` varchar(500) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `time_added` timestamp NULL DEFAULT NULL,
  `time_last_update` timestamp NULL DEFAULT NULL,
  `user_added` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `user_last_update` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`DecorTool`),
  UNIQUE KEY `unique` (`DecorTool`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_INSERT_zoptions_DecorTool` BEFORE INSERT ON `zoptions_DecorTool` FOR EACH ROW BEGIN SET NEW.`DecorTool` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`DecorTool`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Description` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Description`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_last_update`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_last_update`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `trigger_stamp_INSERT_zoptions_DecorTool` BEFORE INSERT ON `zoptions_DecorTool` FOR EACH ROW BEGIN SET NEW.user_added = SYSTEM_USER(); SET NEW.time_added = CURRENT_TIMESTAMP; SET NEW.user_last_update = SYSTEM_USER(); SET NEW.time_last_update = CURRENT_TIMESTAMP; END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_UPDATE_zoptions_DecorTool` BEFORE UPDATE ON `zoptions_DecorTool` FOR EACH ROW BEGIN SET NEW.`DecorTool` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`DecorTool`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Description` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Description`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_last_update`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_last_update`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `trigger_stamp_UPDATE_zoptions_DecorTool` BEFORE UPDATE ON `zoptions_DecorTool` FOR EACH ROW BEGIN SET NEW.user_last_update = SYSTEM_USER(); SET NEW.time_last_update = CURRENT_TIMESTAMP; END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `zoptions_FaunalMeasurement`
--

DROP TABLE IF EXISTS `zoptions_FaunalMeasurement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zoptions_FaunalMeasurement` (
  `Measurement` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL COMMENT 'Von den Driesch abbreviation of the measurement',
  `Description` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'Full description of the Von den Driesch abbreviation',
  PRIMARY KEY (`Measurement`),
  UNIQUE KEY `unique` (`Measurement`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_swedish_ci COMMENT='Von den Driesch abbreviation of the measurement, and a description.\r\nWARNING: many measurement codes can be used for different elements such as GL (Greatest Length obviously is a property of any bone), however, some codes actually differ in their meaning for different elements. For example, FL/9 indicates a specific part of a mandible that is different to its meaning when applied to a cranium.';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_INSERT_zoptions_FaunalMeasurement` BEFORE INSERT ON `zoptions_FaunalMeasurement` FOR EACH ROW BEGIN SET NEW.`Measurement` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Measurement`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Description` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Description`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_UPDATE_zoptions_FaunalMeasurement` BEFORE UPDATE ON `zoptions_FaunalMeasurement` FOR EACH ROW BEGIN SET NEW.`Measurement` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Measurement`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Description` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Description`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `zoptions_GraveConstruction`
--

DROP TABLE IF EXISTS `zoptions_GraveConstruction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zoptions_GraveConstruction` (
  `Element` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `Description` varchar(500) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `time_added` timestamp NULL DEFAULT NULL,
  `time_last_update` timestamp NULL DEFAULT NULL,
  `user_added` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_swedish_ci DEFAULT NULL,
  `user_last_update` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`Element`),
  UNIQUE KEY `unique` (`Element`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_INSERT_zoptions_GraveConstruction` BEFORE INSERT ON `zoptions_GraveConstruction` FOR EACH ROW BEGIN SET NEW.`Element` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Element`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Description` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Description`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_last_update`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_last_update`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `trigger_stamp_INSERT_zoptions_GraveConstruction` BEFORE INSERT ON `zoptions_GraveConstruction` FOR EACH ROW BEGIN SET NEW.user_added = SYSTEM_USER(); SET NEW.time_added = CURRENT_TIMESTAMP; SET NEW.user_last_update = SYSTEM_USER(); SET NEW.time_last_update = CURRENT_TIMESTAMP; END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_UPDATE_zoptions_GraveConstruction` BEFORE UPDATE ON `zoptions_GraveConstruction` FOR EACH ROW BEGIN SET NEW.`Element` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Element`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Description` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Description`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`time_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`time_last_update`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_added` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_added`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`user_last_update` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user_last_update`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `trigger_stamp_UPDATE_zoptions_GraveConstruction` BEFORE UPDATE ON `zoptions_GraveConstruction` FOR EACH ROW BEGIN SET NEW.user_last_update = SYSTEM_USER(); SET NEW.time_last_update = CURRENT_TIMESTAMP; END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `zoptions_Health_Status`
--

DROP TABLE IF EXISTS `zoptions_Health_Status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zoptions_Health_Status` (
  `Status` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`Status`),
  UNIQUE KEY `unique` (`Status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_INSERT_zoptions_Health_Status` BEFORE INSERT ON `zoptions_Health_Status` FOR EACH ROW BEGIN SET NEW.`Status` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Status`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_UPDATE_zoptions_Health_Status` BEFORE UPDATE ON `zoptions_Health_Status` FOR EACH ROW BEGIN SET NEW.`Status` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Status`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `zoptions_Health_Trait`
--

DROP TABLE IF EXISTS `zoptions_Health_Trait`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zoptions_Health_Trait` (
  `Trait` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`Trait`),
  UNIQUE KEY `unique` (`Trait`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_swedish_ci COMMENT='Options for the Health table, covering all possible genetic traits, diseases, trauma etc.';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_INSERT_zoptions_Health_Trait` BEFORE INSERT ON `zoptions_Health_Trait` FOR EACH ROW BEGIN SET NEW.`Trait` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Trait`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_UPDATE_zoptions_Health_Trait` BEFORE UPDATE ON `zoptions_Health_Trait` FOR EACH ROW BEGIN SET NEW.`Trait` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Trait`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `zoptions_Laboratory_Methods`
--

DROP TABLE IF EXISTS `zoptions_Laboratory_Methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zoptions_Laboratory_Methods` (
  `Method` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `research` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Description` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`Method`),
  UNIQUE KEY `unique` (`Method`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Various Laboratory methods for various data types.\r\n';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_INSERT_zoptions_Laboratory_Methods` BEFORE INSERT ON `zoptions_Laboratory_Methods` FOR EACH ROW BEGIN SET NEW.`Method` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Method`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`research` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`research`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Description` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Description`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_UPDATE_zoptions_Laboratory_Methods` BEFORE UPDATE ON `zoptions_Laboratory_Methods` FOR EACH ROW BEGIN SET NEW.`Method` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Method`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`research` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`research`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Description` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Description`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `zoptions_Material`
--

DROP TABLE IF EXISTS `zoptions_Material`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zoptions_Material` (
  `Material` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `description` varchar(500) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`Material`),
  UNIQUE KEY `Material` (`Material`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_INSERT_zoptions_Material` BEFORE INSERT ON `zoptions_Material` FOR EACH ROW BEGIN SET NEW.`Material` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Material`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`description` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`description`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_UPDATE_zoptions_Material` BEFORE UPDATE ON `zoptions_Material` FOR EACH ROW BEGIN SET NEW.`Material` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Material`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`description` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`description`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `zoptions_MaterialCulture_Material`
--

DROP TABLE IF EXISTS `zoptions_MaterialCulture_Material`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zoptions_MaterialCulture_Material` (
  `Material` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL COMMENT 'Basic category of the material the object is made of.',
  PRIMARY KEY (`Material`) USING BTREE,
  UNIQUE KEY `unique` (`Material`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_INSERT_zoptions_MaterialCulture_Material` BEFORE INSERT ON `zoptions_MaterialCulture_Material` FOR EACH ROW BEGIN SET NEW.`Material` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Material`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_UPDATE_zoptions_MaterialCulture_Material` BEFORE UPDATE ON `zoptions_MaterialCulture_Material` FOR EACH ROW BEGIN SET NEW.`Material` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Material`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `zoptions_MaterialCulture_MaterialType`
--

DROP TABLE IF EXISTS `zoptions_MaterialCulture_MaterialType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zoptions_MaterialCulture_MaterialType` (
  `MaterialType` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL COMMENT 'A more detailed description of the resource used in the production of the object if provided in the primary literature.',
  PRIMARY KEY (`MaterialType`) USING BTREE,
  UNIQUE KEY `unique` (`MaterialType`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_INSERT_zoptions_MaterialCulture_MaterialType` BEFORE INSERT ON `zoptions_MaterialCulture_MaterialType` FOR EACH ROW BEGIN SET NEW.`MaterialType` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`MaterialType`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_UPDATE_zoptions_MaterialCulture_MaterialType` BEFORE UPDATE ON `zoptions_MaterialCulture_MaterialType` FOR EACH ROW BEGIN SET NEW.`MaterialType` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`MaterialType`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `zoptions_MaterialCulture_Object`
--

DROP TABLE IF EXISTS `zoptions_MaterialCulture_Object`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zoptions_MaterialCulture_Object` (
  `Object` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL COMMENT 'Functional category assigned in the primary literature. Currently a VARCHAR but in the future will be dependent on a zoptions table.',
  `Description` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'Description of the functional category',
  PRIMARY KEY (`Object`) USING BTREE,
  UNIQUE KEY `unique` (`Object`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_INSERT_zoptions_MaterialCulture_Object` BEFORE INSERT ON `zoptions_MaterialCulture_Object` FOR EACH ROW BEGIN SET NEW.`Object` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Object`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Description` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Description`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_UPDATE_zoptions_MaterialCulture_Object` BEFORE UPDATE ON `zoptions_MaterialCulture_Object` FOR EACH ROW BEGIN SET NEW.`Object` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Object`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Description` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Description`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `zoptions_Periods`
--

DROP TABLE IF EXISTS `zoptions_Periods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zoptions_Periods` (
  `PeriodID` varchar(7) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Period` varchar(75) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `Notes` varchar(200) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`PeriodID`),
  UNIQUE KEY `unique` (`PeriodID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_swedish_ci COMMENT='Main broad chronological periods that a sitephase may also be assigned.\r\n''unknown'' is specified with a string of length zero, rather than a NULL, since PeriodID is required as a primary key in the Phases table.';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_INSERT_zoptions_Periods` BEFORE INSERT ON `zoptions_Periods` FOR EACH ROW BEGIN SET NEW.`PeriodID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`PeriodID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Period` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Period`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Notes` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Notes`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_UPDATE_zoptions_Periods` BEFORE UPDATE ON `zoptions_Periods` FOR EACH ROW BEGIN SET NEW.`PeriodID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`PeriodID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Period` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Period`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Notes` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Notes`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `zoptions_Position`
--

DROP TABLE IF EXISTS `zoptions_Position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zoptions_Position` (
  `position` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`position`),
  UNIQUE KEY `unique` (`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Various tables have variables requiring some sort of poition description';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_INSERT_zoptions_Position` BEFORE INSERT ON `zoptions_Position` FOR EACH ROW BEGIN SET NEW.`position` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`position`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_UPDATE_zoptions_Position` BEFORE UPDATE ON `zoptions_Position` FOR EACH ROW BEGIN SET NEW.`position` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`position`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `zoptions_Preservation`
--

DROP TABLE IF EXISTS `zoptions_Preservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zoptions_Preservation` (
  `preservation` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '' COMMENT 'Basic information about the state the artefact was reported in.',
  `description` varchar(500) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'Short description of the variable',
  PRIMARY KEY (`preservation`) USING BTREE,
  UNIQUE KEY `unique` (`preservation`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_INSERT_zoptions_Preservation` BEFORE INSERT ON `zoptions_Preservation` FOR EACH ROW BEGIN SET NEW.`preservation` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`preservation`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`description` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`description`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_UPDATE_zoptions_Preservation` BEFORE UPDATE ON `zoptions_Preservation` FOR EACH ROW BEGIN SET NEW.`preservation` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`preservation`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`description` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`description`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `zoptions_Quantity`
--

DROP TABLE IF EXISTS `zoptions_Quantity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zoptions_Quantity` (
  `quantity` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `description` varchar(500) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`quantity`),
  UNIQUE KEY `quantity` (`quantity`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci COMMENT='Quantity of sampled material used for archaeometric analysis.';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_INSERT_zoptions_Quantity` BEFORE INSERT ON `zoptions_Quantity` FOR EACH ROW BEGIN SET NEW.`quantity` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`quantity`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`description` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`description`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_UPDATE_zoptions_Quantity` BEFORE UPDATE ON `zoptions_Quantity` FOR EACH ROW BEGIN SET NEW.`quantity` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`quantity`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`description` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`description`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `zoptions_Shape`
--

DROP TABLE IF EXISTS `zoptions_Shape`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zoptions_Shape` (
  `shape` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `description` varchar(500) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`shape`) USING BTREE,
  UNIQUE KEY `unique` (`shape`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_INSERT_zoptions_Shape` BEFORE INSERT ON `zoptions_Shape` FOR EACH ROW BEGIN SET NEW.`shape` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`shape`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`description` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`description`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_UPDATE_zoptions_Shape` BEFORE UPDATE ON `zoptions_Shape` FOR EACH ROW BEGIN SET NEW.`shape` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`shape`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`description` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`description`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `zoptions_SkeletalElements`
--

DROP TABLE IF EXISTS `zoptions_SkeletalElements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zoptions_SkeletalElements` (
  `Element` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL COMMENT 'Name of bone or tooth. Case sensitive, as adult and milk teeth are defined by upper and lower case.',
  `description` varchar(500) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `check` enum('Y','N') COLLATE latin1_general_ci DEFAULT NULL,
  `new` varchar(200) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`Element`),
  UNIQUE KEY `UNIQUE` (`Element`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci COMMENT='Look-up table for skeletal components for all species including human.';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_INSERT_zoptions_SkeletalElements` BEFORE INSERT ON `zoptions_SkeletalElements` FOR EACH ROW BEGIN SET NEW.`Element` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Element`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`description` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`description`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`check` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`check`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`new` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`new`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_UPDATE_zoptions_SkeletalElements` BEFORE UPDATE ON `zoptions_SkeletalElements` FOR EACH ROW BEGIN SET NEW.`Element` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Element`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`description` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`description`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`check` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`check`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`new` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`new`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `zoptions_TaxaList`
--

DROP TABLE IF EXISTS `zoptions_TaxaList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zoptions_TaxaList` (
  `TaxonCode` varchar(8) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL COMMENT 'Unique code to identify the full taxonomic name. This usually consists of the first four letters of the genus and first three letters of the species. Case sensitive - animals are lowercase, plants are uppercase.',
  `FullNameOfTaxon` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'Full taxonomic name',
  `Species` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'Taxonomic rank of species ',
  `Genus` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'Taxonomic rank of genus ',
  `WildDomesticStatus` enum('cultivated','domestic','wild','wild/cultivated','wild/domestic','wild & domestic') CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'Description of the wild/domestic status, including combination categories (wild & domestic) as well as inderterminate categories (wild/domestic); for plants: "domestic/wild" is an uncertain status; "domestic" is a taxon that is for sure domesticated; "wild" is a taxon that is for sure not domesticated; "cultivated" is a taxon that is wild but cultivated by humans ',
  `TaxonCategory` enum('Amphibia','Bat','Bird','Crustacean','Echinoderm','Fish','Land mammal','Marine mammal','Mollusc','Reptile','Rodent') CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'Higher level common taxonomic classification e.g. ''amphibia'', ''bat'', ''bird''. Useful in analysis where only land mammals, for example, want to be included.',
  `Class` enum('Actinopterygii','Amphibia','Aves','Bivalvia','Chondrichthyes','Echinoidea','Gastropoda','Malacostraca','Mammalia','Pisces','Reptilia','Sauropsida','Scaphopoda') CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'Taxonomic rank of class ',
  `Family` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'Taxonomic rank of family ',
  `Kingdom` enum('Animal','Fungus','Plant') CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'Taxonomic rank of phylum ',
  PRIMARY KEY (`TaxonCode`) USING BTREE,
  UNIQUE KEY `unique` (`TaxonCode`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='The full taxonomic description of all species represented in the database with its associated Taxoncode \r\n14C marked for mixed samples and aggregated taxon codes';
/*!40101 SET character_set_client = @saved_cs_client */;
ALTER DATABASE `BIAD` CHARACTER SET latin1 COLLATE latin1_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`admin`@`127.0.0.1`*/ /*!50003 TRIGGER `TaxaListWarnings_insert` BEFORE INSERT ON `zoptions_TaxaList` FOR EACH ROW BEGIN
IF (NEW.Kingdom ='Plant' AND NEW.`TaxonCode` != UPPER(NEW.`TaxonCode`)) THEN 
SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Trigger Error: Plants must have uppercase TaxonCode';
END IF;

IF (NEW.Kingdom ='Animal' AND NEW.`TaxonCode` != LOWER(NEW.`TaxonCode`)) THEN 
SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Trigger Error: Animals must have lowercase TaxonCode';
END IF;

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
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_INSERT_zoptions_TaxaList` BEFORE INSERT ON `zoptions_TaxaList` FOR EACH ROW BEGIN SET NEW.`TaxonCode` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`TaxonCode`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`FullNameOfTaxon` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`FullNameOfTaxon`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Species` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Species`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Genus` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Genus`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`WildDomesticStatus` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`WildDomesticStatus`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`TaxonCategory` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`TaxonCategory`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Class` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Class`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Family` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Family`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Kingdom` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Kingdom`, '', ' '), '
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
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`admin`@`127.0.0.1`*/ /*!50003 TRIGGER `TaxaListWarnings_update` BEFORE UPDATE ON `zoptions_TaxaList` FOR EACH ROW BEGIN
IF (NEW.Kingdom ='Plant' AND NEW.`TaxonCode` != UPPER(NEW.`TaxonCode`)) THEN 
SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Trigger Error: Plants must have uppercase TaxonCode';
END IF;

IF (NEW.Kingdom ='Animal' AND NEW.`TaxonCode` != LOWER(NEW.`TaxonCode`)) THEN 
SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Trigger Error: Animals must have lowercase TaxonCode';
END IF;

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
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_UPDATE_zoptions_TaxaList` BEFORE UPDATE ON `zoptions_TaxaList` FOR EACH ROW BEGIN SET NEW.`TaxonCode` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`TaxonCode`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`FullNameOfTaxon` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`FullNameOfTaxon`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Species` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Species`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Genus` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Genus`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`WildDomesticStatus` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`WildDomesticStatus`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`TaxonCategory` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`TaxonCategory`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Class` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Class`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Family` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Family`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Kingdom` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Kingdom`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `zoptions_Types`
--

DROP TABLE IF EXISTS `zoptions_Types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zoptions_Types` (
  `Type` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `ignore` varchar(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'DO NOT ENTER VALUES IN THIS COLUMN!! Auto updates to ensure dropdown menus in other tables are (approximately) alphabetical.',
  `Description` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`Type`),
  UNIQUE KEY `unique` (`Type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_swedish_ci COMMENT='A difficult term to define, but is intuitively recognised as a broad description of the type  of the site, context or deposit.\r\n';
/*!40101 SET character_set_client = @saved_cs_client */;
ALTER DATABASE `BIAD` CHARACTER SET latin1 COLLATE latin1_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`robert_staniuk`@`127.0.0.1`*/ /*!50003 TRIGGER `trigger_zoptions_Types_insert` BEFORE INSERT ON `zoptions_Types` FOR EACH ROW BEGIN 
set NEW.`ignore` = UPPER(LEFT(NEW.Type,3));
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
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_INSERT_zoptions_Types` BEFORE INSERT ON `zoptions_Types` FOR EACH ROW BEGIN SET NEW.`Type` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Type`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`ignore` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`ignore`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Description` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Description`, '', ' '), '
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
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`robert_staniuk`@`127.0.0.1`*/ /*!50003 TRIGGER `trigger_zoptions_Types_update` BEFORE UPDATE ON `zoptions_Types` FOR EACH ROW BEGIN 
set NEW.`ignore` = UPPER(LEFT(NEW.Type,3));
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
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_UPDATE_zoptions_Types` BEFORE UPDATE ON `zoptions_Types` FOR EACH ROW BEGIN SET NEW.`Type` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Type`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`ignore` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`ignore`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Description` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Description`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `zoptions_balasse_models`
--

DROP TABLE IF EXISTS `zoptions_balasse_models`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zoptions_balasse_models` (
  `model` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`model`),
  UNIQUE KEY `unique` (`model`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Choice of models created by Balasse for the seasonal isotope fluctuations in sequential faunal isotope data.\r\nTemporary table to assist with migration from MySQL 5.7 to MySQL 8.0\r\nA better solution in table ''FaunalIsotope'' should be found.';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_INSERT_zoptions_balasse_models` BEFORE INSERT ON `zoptions_balasse_models` FOR EACH ROW BEGIN SET NEW.`model` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`model`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_UPDATE_zoptions_balasse_models` BEFORE UPDATE ON `zoptions_balasse_models` FOR EACH ROW BEGIN SET NEW.`model` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`model`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `zoptions_pathology_location`
--

DROP TABLE IF EXISTS `zoptions_pathology_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zoptions_pathology_location` (
  `location` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `description` varchar(500) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`location`) USING BTREE,
  UNIQUE KEY `unique` (`location`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_INSERT_zoptions_pathology_location` BEFORE INSERT ON `zoptions_pathology_location` FOR EACH ROW BEGIN SET NEW.`location` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`location`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`description` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`description`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_UPDATE_zoptions_pathology_location` BEFORE UPDATE ON `zoptions_pathology_location` FOR EACH ROW BEGIN SET NEW.`location` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`location`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`description` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`description`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `zoptions_yes_no`
--

DROP TABLE IF EXISTS `zoptions_yes_no`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zoptions_yes_no` (
  `present` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`present`),
  UNIQUE KEY `unique` (`present`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Simple look up table to replace many enumeration cases of yes or no, or other common options acoss many unrelated tables.';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_INSERT_zoptions_yes_no` BEFORE INSERT ON `zoptions_yes_no` FOR EACH ROW BEGIN SET NEW.`present` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`present`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_UPDATE_zoptions_yes_no` BEFORE UPDATE ON `zoptions_yes_no` FOR EACH ROW BEGIN SET NEW.`present` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`present`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `zprivate_deadhead`
--

DROP TABLE IF EXISTS `zprivate_deadhead`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zprivate_deadhead` (
  `DateID` int NOT NULL COMMENT 'A unique integer identifier for each date, allowing for better disambiguation when, for example, there are two or more dates with duplicate laboratory codes.',
  `EuroEvolID` varchar(11) CHARACTER SET utf8mb3 COLLATE utf8mb3_swedish_ci DEFAULT NULL COMMENT 'If sourced from the EUROEVOL project, the sample identifier used for each date.  Some radiocarbon samples have been attributed to more than one site, which are semicolon separated.',
  `MineID` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_swedish_ci DEFAULT NULL COMMENT 'If sourced from the NEOMINE project, the sampel identifier used for each date. Some radiocarbon samples have been attributed to more than one site, which are semicolon separated.',
  `LabID` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_swedish_ci DEFAULT NULL COMMENT 'The code given to the dated sample by the laboratory. The lab prefix is followed by a hyphen and then the lab''s running number series (e.g. Beta-102907). Suffixes on the end of such lab codes (such as ''a'', ''b'' or ''R'', e.g. BM-2020R) are to be retained where it appears that these were assigned by the lab, but are to be removed if they were assigned ad hoc by later date-list compilers to disambiguate uncertain duplicate dates. The latter are instead indicated by "DuplicateID" in the Problems field and disambiguated via the unique DateID field.  A minority of entries contain multiple IDs and additional notes. ',
  `OthLabID` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_swedish_ci DEFAULT NULL COMMENT 'Any other lab code such as where the sample first went to one lab for treatment but was eventually measured at another. In such situations the first lab code is considered the primary one and stored in LabID with the second code stored here. But it is true that sometimes the order is unknown or confusing.',
  `SampleID` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_swedish_ci DEFAULT NULL,
  `Flags` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_swedish_ci DEFAULT NULL COMMENT 'Provides a set of standardized terms to indicate any problems associated with a particular date (with further explanation placed in the Comments field). So far these terms include: ''LowYield'' where the lab struggled to get enough material for dating. ''NoLabID'' where there is a missing laboratory code. ''DateConflict'' where there is a discrepancy in published versions of the CRA or Error AND it appears that only one date is being referred to. ''DuplicateID'' where the laboratory code is duplicated AND where the discrepancy in dates suggest that two or more distinct dates are meant rather than simply a discrepancy in the publication of the same sample. ''MatConflict'' where there is a discrepancy in published identifications of sample material or species. ''ResolvedConflict'' where there is a discrepancy of some kind for the date, but the current version can be assumed to be the correct one in all respects.',
  `CRA` decimal(6,1) DEFAULT NULL COMMENT 'The uncalibrated radiocarbon date or ''conventional radiocarbon age'' (after correction for DC13). Most are integer values, a few are decimal with 1.dp',
  `Error` int DEFAULT NULL COMMENT 'The estimated standard error of the uncalibrated radiocarbon date.',
  `DC13` decimal(12,6) DEFAULT NULL COMMENT 'The isotopic composition of the dated sample, expressed as the parts-per-thousand (per mille, ‰) difference between the sample''s carbon 13 content and that found in an internationally agreed reference carbonate ( sometimes written δ13C in publications).',
  `OthMeasures` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_swedish_ci DEFAULT NULL COMMENT 'A semi-colon separated list of any other instrumental information such as the raw radiocarbon fraction (e.g. "F14C:0.654") or any other isotopic information measured for the sample (e.g. "DN15:10.7" )',
  `DateMethod` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_swedish_ci DEFAULT NULL COMMENT 'Whether the date was estimated via AMS or conventional methods (e.g. "LSC")',
  `Material` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_swedish_ci DEFAULT NULL COMMENT 'The basic material of the dated sample (e.g. "charcoal", "bone"). Further distinctions are to be put in brackets in a semi-standardised way (e.g. "nutshell (charred)" or "wood (waterlogged,sapwood)").',
  `Species` varchar(300) CHARACTER SET utf8mb3 COLLATE utf8mb3_swedish_ci DEFAULT NULL COMMENT 'Any genus or species-level information about the sample (e.g "Quercus", "Homo sapiens"). In cases, where there is uncertainty (e.g. "cf Triticum") or a mixed sample (e.g. "Quercus,Alnus,Corylus"), this is indicated.',
  `SiteID` int DEFAULT NULL COMMENT 'A unique identifier for each site, allowing for easy binning of dates by site and potentially allowing for relational table joins to further site information (although not currently provided). All dates for a given verbose site name (e.g. "Stannon, Bodmin Moor") should have the same SiteID.',
  `OthSiteID` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_swedish_ci DEFAULT NULL COMMENT 'A composite field potentially allowing for multiple semi-colon separated references to the site in other lists. Typically such alternative identifiers might refer to the site''s entry in a national sites and monuments register or a major research project (e.g. EUROEVOL S3974).',
  `SiteName` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_swedish_ci DEFAULT NULL COMMENT 'The most common name for the site from which the sample comes., sometimes with a wider regional name also (e.g. "Stannon, Bodmin Moor"). SiteName should be identical where the same site is referrred to and should have a correpsondingly consistent SiteID. Any other site names can be provided in Comments if necessary, whislt OthSiteID can be used if there is any useful additional identifier for this site (e.g. referring to its entry in a national sites and monuments register).',
  `SiteContext` varchar(1500) CHARACTER SET utf8mb3 COLLATE utf8mb3_swedish_ci DEFAULT NULL COMMENT 'Contextual information about the archaeological feature and deposit within a site from which the the dated sample comes (e.g. pit 232, upper fill). At present, this field is only partial and not carefully standardised.',
  `SiteType` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_swedish_ci DEFAULT NULL COMMENT 'The archaeological ascribed type of site from which the sample comes (e.g. settlement or cemetery). At present, this field is only partial and not carefully standardised.',
  `CulturalPeriod` varchar(600) CHARACTER SET utf8mb3 COLLATE utf8mb3_swedish_ci DEFAULT NULL COMMENT 'The archaeological ascribed cultural period suggested by a given date (e.g. Roman, Anglo-Saxon, early Iron Age). Not very standardized at present, so use your judgment and we will try to standardize more later. At present, this field is only partial and not carefully standardised. If the date is anomalous compared what was anticipated from associated stratigraphy or material cutlture types, the period suggested by the date (rather than the context) is retained here and a conflict indciated by "ContextDateConflict" in the Problems column).',
  `AdminRegion` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_swedish_ci DEFAULT NULL COMMENT 'The province, county or other first-level modern administrative region (within a given country) where the sample was taken (e.g. "Cornwall").',
  `Country` varchar(7) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'The country where the sample was taken, expressed as an ISO2 code (e.g. "GB"). Currently contains some semicolon separated multiples and strings, so cannot yet be connected to the ISO-3166 codes in the table ''Countries''.',
  `Longitude` decimal(6,4) DEFAULT NULL COMMENT 'The longitude of the estimated sampling location in decimal degrees (rounded to 4 decimal places).',
  `Latitude` decimal(6,4) DEFAULT NULL COMMENT 'The latitude of the estimated sampling location in decimal degrees (rounded to 4 decimal places).',
  `LocQual` enum('A','B','C','D','E','F') CHARACTER SET utf8mb3 COLLATE utf8mb3_swedish_ci DEFAULT NULL COMMENT 'Codes for the quality of the geographic coordinates, as follows: A -- sub-site accuracy of coordinates probably +-10m of where sample was taken” (exceedingly rare). Note that sometimes different such locations can exist within the same site (i.e. same SiteName and SiteID). B — coordinates that are probably within +-1km the sampling location and have been checked by someone associated with current database to make sure they are plausible. Note that sometimes different such locations can exist within the same site (i.e. same SiteName and SiteID). C — coordinates quoted in another publication or someone else’s database, without further checking and of uncertain quality. D — coordinates that are very rough and typically come from automatic placename look-up (aka ‘geocoding’). To be treated with great caution and replaced where possible.',
  `Source` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_swedish_ci COMMENT 'One or more key sources for the date. Sufficient detail is provided to allow for the source to be recognised without cross-checking a bibliography.',
  `Comments` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_swedish_ci COMMENT 'Any other comments, including repeat information about context, additional bibliography or elaboration on any problems with the date, or mention of date identifiers from other databases (e.g. EUROEVOL-Sample:3906) or fieldwork numbers.',
  PRIMARY KEY (`DateID`),
  UNIQUE KEY `unique` (`DateID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_swedish_ci COMMENT='Initial raw transfer of EurMed14C database straight into COREX schema, before any attempt to clean it. Therefore this table is a dead-head as it is not connected to the other COREX tables yet. This process will require careful checking and moving of the data into a clean table that is connected. Preparation for this will first require sites to be added to the CommonSites table, and phases to be added to CommonPhases.';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_INSERT_zprivate_deadhead` BEFORE INSERT ON `zprivate_deadhead` FOR EACH ROW BEGIN SET NEW.`DateID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`DateID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`EuroEvolID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`EuroEvolID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`MineID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`MineID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`LabID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`LabID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`OthLabID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`OthLabID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`SampleID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`SampleID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Flags` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Flags`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`CRA` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`CRA`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Error` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Error`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`DC13` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`DC13`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`OthMeasures` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`OthMeasures`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`DateMethod` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`DateMethod`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Material` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Material`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Species` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Species`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`SiteID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`SiteID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`OthSiteID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`OthSiteID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`SiteName` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`SiteName`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`SiteContext` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`SiteContext`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`SiteType` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`SiteType`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`CulturalPeriod` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`CulturalPeriod`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`AdminRegion` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`AdminRegion`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Country` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Country`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Longitude` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Longitude`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Latitude` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Latitude`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`LocQual` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`LocQual`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Source` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Source`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Comments` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Comments`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_UPDATE_zprivate_deadhead` BEFORE UPDATE ON `zprivate_deadhead` FOR EACH ROW BEGIN SET NEW.`DateID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`DateID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`EuroEvolID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`EuroEvolID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`MineID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`MineID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`LabID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`LabID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`OthLabID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`OthLabID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`SampleID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`SampleID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Flags` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Flags`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`CRA` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`CRA`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Error` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Error`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`DC13` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`DC13`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`OthMeasures` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`OthMeasures`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`DateMethod` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`DateMethod`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Material` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Material`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Species` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Species`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`SiteID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`SiteID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`OthSiteID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`OthSiteID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`SiteName` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`SiteName`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`SiteContext` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`SiteContext`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`SiteType` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`SiteType`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`CulturalPeriod` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`CulturalPeriod`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`AdminRegion` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`AdminRegion`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Country` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Country`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Longitude` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Longitude`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Latitude` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Latitude`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`LocQual` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`LocQual`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Source` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Source`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Comments` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Comments`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `zprivate_encoding`
--

DROP TABLE IF EXISTS `zprivate_encoding`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zprivate_encoding` (
  `ID` smallint NOT NULL,
  `characters` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Country` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `notes` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_swedish_ci DEFAULT NULL,
  `case` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT NULL,
  `БвгГд` enum('y','i''m') CHARACTER SET utf8mb3 COLLATE utf8mb3_swedish_ci DEFAULT NULL,
  `UserName` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_swedish_ci DEFAULT NULL,
  `aegaiefuaibvoavtawiovtuawioveyabshiaewntinauistbuisbtuoending` int DEFAULT NULL,
  UNIQUE KEY `Index 1` (`ID`) USING BTREE,
  UNIQUE KEY `unique_index` (`notes`,`case`),
  KEY `FK_zprivate_encoding_zoptions_Countries` (`Country`),
  CONSTRAINT `FK_zprivate_encoding_zoptions_Countries` FOREIGN KEY (`Country`) REFERENCES `zoptions_Countries` (`Country`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_swedish_ci ROW_FORMAT=DYNAMIC COMMENT='Sandpit for testing encoding and any weird behaviours';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_INSERT_zprivate_encoding` BEFORE INSERT ON `zprivate_encoding` FOR EACH ROW BEGIN SET NEW.`ID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`ID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`characters` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`characters`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Country` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Country`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`notes` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`notes`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`case` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`case`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`timestamp` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`timestamp`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`БвгГд` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`БвгГд`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`UserName` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`UserName`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`aegaiefuaibvoavtawiovtuawioveyabshiaewntinauistbuisbtuoending` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`aegaiefuaibvoavtawiovtuawioveyabshiaewntinauistbuisbtuoending`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_UPDATE_zprivate_encoding` BEFORE UPDATE ON `zprivate_encoding` FOR EACH ROW BEGIN SET NEW.`ID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`ID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`characters` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`characters`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Country` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Country`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`notes` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`notes`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`case` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`case`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`timestamp` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`timestamp`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`БвгГд` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`БвгГд`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`UserName` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`UserName`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`aegaiefuaibvoavtawiovtuawioveyabshiaewntinauistbuisbtuoending` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`aegaiefuaibvoavtawiovtuawioveyabshiaewntinauistbuisbtuoending`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `zprivate_euroevol_citation_notes`
--

DROP TABLE IF EXISTS `zprivate_euroevol_citation_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zprivate_euroevol_citation_notes` (
  `SiteID` varchar(6) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `sitename.euroevol` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `notes.1` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes.2` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes.3` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Potentially helpful meta';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_INSERT_zprivate_euroevol_citation_notes` BEFORE INSERT ON `zprivate_euroevol_citation_notes` FOR EACH ROW BEGIN SET NEW.`SiteID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`SiteID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`sitename.euroevol` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`sitename.euroevol`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`notes.1` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`notes.1`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`notes.2` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`notes.2`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`notes.3` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`notes.3`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_UPDATE_zprivate_euroevol_citation_notes` BEFORE UPDATE ON `zprivate_euroevol_citation_notes` FOR EACH ROW BEGIN SET NEW.`SiteID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`SiteID`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`sitename.euroevol` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`sitename.euroevol`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`notes.1` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`notes.1`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`notes.2` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`notes.2`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`notes.3` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`notes.3`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `zprivate_testing`
--

DROP TABLE IF EXISTS `zprivate_testing`;
/*!50001 DROP VIEW IF EXISTS `zprivate_testing`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `zprivate_testing` AS SELECT 
 1 AS `ID`,
 1 AS `characters`,
 1 AS `Country`,
 1 AS `notes`,
 1 AS `case`,
 1 AS `timestamp`,
 1 AS `БвгГд`,
 1 AS `UserName`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `zprivate_users`
--

DROP TABLE IF EXISTS `zprivate_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zprivate_users` (
  `user` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '' COMMENT 'User name as used in the login profile.',
  `email` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '' COMMENT 'Email address.',
  `team` enum('YES','NO') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL COMMENT 'Status of user.',
  `committee` enum('YES','NO') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL COMMENT 'Status of user.',
  `administrator` enum('YES','NO') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL COMMENT 'Status of user.',
  UNIQUE KEY `unique` (`email`,`user`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_swedish_ci COMMENT='User emails to assist with auto-emailing scripts';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_INSERT_zprivate_users` BEFORE INSERT ON `zprivate_users` FOR EACH ROW BEGIN SET NEW.`user` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`email` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`email`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`team` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`team`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`committee` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`committee`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`administrator` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`administrator`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_UPDATE_zprivate_users` BEFORE UPDATE ON `zprivate_users` FOR EACH ROW BEGIN SET NEW.`user` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`user`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`email` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`email`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`team` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`team`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`committee` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`committee`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`administrator` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`administrator`, '', ' '), '
', ' '), '	', ' ')); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Dumping events for database 'BIAD'
--

--
-- Dumping routines for database 'BIAD'
--
/*!50003 DROP PROCEDURE IF EXISTS `check_nearby_sites` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`127.0.0.1` PROCEDURE `check_nearby_sites`(
	IN `lat` DECIMAL(5,3),
	IN `long` DECIMAL(5,3)
)
BEGIN
SET @extra = 0.5; 
SELECT * FROM Sites
WHERE Latitude > (`lat` - @extra) 
AND Latitude < (`lat` + @extra)
AND Longitude > (`long` - @extra)
AND Longitude < (`long` + @extra);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Current Database: `BIAD`
--

USE `BIAD`;

--
-- Final view structure for view `zprivate_testing`
--

/*!50001 DROP VIEW IF EXISTS `zprivate_testing`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`127.0.0.1` SQL SECURITY DEFINER */
/*!50001 VIEW `zprivate_testing` AS select `zprivate_encoding`.`ID` AS `ID`,`zprivate_encoding`.`characters` AS `characters`,`zprivate_encoding`.`Country` AS `Country`,`zprivate_encoding`.`notes` AS `notes`,`zprivate_encoding`.`case` AS `case`,`zprivate_encoding`.`timestamp` AS `timestamp`,`zprivate_encoding`.`БвгГд` AS `БвгГд`,`zprivate_encoding`.`UserName` AS `UserName` from `zprivate_encoding` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-08 22:18:33

CREATE USER 'admin'@'127.0.0.1' IDENTIFIED BY 'your_admin_password';
GRANT ALL PRIVILEGES ON `BIAD`.* TO 'admin'@'127.0.0.1';
FLUSH PRIVILEGES;

-- Create the Rscript user with almost all permissions like admin
CREATE USER 'Rscripts'@'127.0.0.1' IDENTIFIED BY 'your_rscript_password';
GRANT ALL PRIVILEGES ON `BIAD`.* TO 'Rscripts'@'127.0.0.1';
FLUSH PRIVILEGES;

-- Create the test_user with only read permissions
CREATE USER 'test_user'@'127.0.0.1' IDENTIFIED BY 'your_test_user_password';
GRANT SELECT ON `BIAD`.* TO 'test_user'@'127.0.0.1';
FLUSH PRIVILEGES;
