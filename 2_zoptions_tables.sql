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

--
-- Dumping data for table `zoptions_ABotAnatomy`
--

LOCK TABLES `zoptions_ABotAnatomy` WRITE;
/*!40000 ALTER TABLE `zoptions_ABotAnatomy` DISABLE KEYS */;
INSERT INTO `zoptions_ABotAnatomy` VALUES ('achene'),('berry: cone'),('cereal: ear'),('chaff: awn'),('chaff: culm'),('chaff: culm base'),('chaff: culm node'),('chaff: glume'),('chaff: glume base'),('chaff: glumes/fragments'),('chaff: husk'),('chaff: rachis'),('chaff: rachis internode'),('chaff: spikelet'),('chaff: spikelet fork'),('chaff: triplet'),('cone'),('fibres: textile'),('flower'),('flower: catkin'),('fruit'),('fruit: core'),('fruit: endocarp'),('fruit: flesh'),('fruit: fragment'),('fruit: pip'),('fruit: stone'),('fruit: whole'),('grain'),('grain: germinated grain'),('leaf'),('needle'),('nut'),('nut: nutlet'),('nut: nutshell'),('nut: whole'),('pollen'),('resin'),('root'),('seed'),('seed/grain'),('seed: coat'),('seed: cotyledon'),('seed: cupule'),('seed: endosperm'),('seed: internal anatomy'),('seed: pod'),('stem'),('storage organ: bulb'),('storage organ: fragment'),('storage organ: indet'),('storage organ: root'),('storage organ: swollen stem'),('storage organ: tuber'),('strobilus'),('wood'),('wood: bark'),('wood: branch'),('wood: brushwood'),('wood: heartwood'),('wood: sapwood'),('wood: twig');
/*!40000 ALTER TABLE `zoptions_ABotAnatomy` ENABLE KEYS */;
UNLOCK TABLES;
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

--
-- Dumping data for table `zoptions_ABotRecoveryMethods`
--

LOCK TABLES `zoptions_ABotRecoveryMethods` WRITE;
/*!40000 ALTER TABLE `zoptions_ABotRecoveryMethods` DISABLE KEYS */;
INSERT INTO `zoptions_ABotRecoveryMethods` VALUES ('flotation: bucket'),('flotation: froth'),('flotation: machine'),('flotation: undetermined'),('hand-picked'),('seiving: dry'),('seiving: undetermined'),('seiving: wet'),('wash-over');
/*!40000 ALTER TABLE `zoptions_ABotRecoveryMethods` ENABLE KEYS */;
UNLOCK TABLES;
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

--
-- Dumping data for table `zoptions_AgeCategorical`
--

LOCK TABLES `zoptions_AgeCategorical` WRITE;
/*!40000 ALTER TABLE `zoptions_AgeCategorical` DISABLE KEYS */;
INSERT INTO `zoptions_AgeCategorical` VALUES ('adult: elderly',NULL),('adult: mature',NULL),('adult: mature/elderly',NULL),('adult: young',NULL),('adult: young/mature',NULL),('adult: young/mature/elderly',NULL),('infant',NULL),('infant/neonate/subadult',NULL),('infant/subadult',NULL),('infant/subadult/adult: young',NULL),('Mainly adults',NULL),('Mainly juveniles (1-12 months)',NULL),('Mainly neo-natals/foetals',NULL),('Mainly sub-adults (1-2 years)',NULL),('Mainly sub-adults (2-3 years)',NULL),('Mainly young',NULL),('neonate',NULL),('neonate/infant',NULL),('No trend',NULL),('Not stated/recorded',NULL),('subadult',NULL),('subadult/adult: young',NULL),('subadult/adult: young/mature',NULL),('subadult/adult: young/mature/elderly',NULL);
/*!40000 ALTER TABLE `zoptions_AgeCategorical` ENABLE KEYS */;
UNLOCK TABLES;
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

--
-- Dumping data for table `zoptions_C14laboratories`
--

LOCK TABLES `zoptions_C14laboratories` WRITE;
/*!40000 ALTER TABLE `zoptions_C14laboratories` DISABLE KEYS */;
INSERT INTO `zoptions_C14laboratories` VALUES ('A','University of Arizona, USA',NULL),('AA','University of Arizona AMS Laboratory',NULL),('AAR','Aarhus AMS Centre, Aarhus University, Denmark',NULL),('ANSTO','ANTARES AMS Facility, Menai, Australia',NULL),('ANTW','Antwerp University, Belgium',NULL),('ARC',NULL,'Clearly there are a lot in the literature! Not on the official 14C lab list!'),('B','Bern, Switzerland',NULL),('BA','Radiocarbon Dating Laboratory, School of Archaeology and Museology, Peking University Beijing',NULL),('Ba','Comenius University, Bratislava, Slovakia',NULL),('BC','Brooklyn College, USA','No longer active'),('BE','University of Bern, Switzerland',NULL),('Beta','Beta Analytic, USA',NULL),('Birm','Birmingham, UK',NULL),('Bln','Berlin, Germany',NULL),('BM','British Museum, UK',NULL),('Bonn','Institut für Bodenkunde, Universität Bonn, Bonn, Germany',NULL),('BRAMS','Bristol, UK',NULL),('C','Chicago, USA',NULL),('CAMS','Center for Accelerator Mass Spectrometry, USA',NULL),('CAR','University College Cardiff, UK',NULL),('CDRC','Centre de Datation par le RadioCarbone, Villeurbanne Cedex, France',NULL),('CEZA','Curt-Engelhorn-Center Archaeometry, Mannheim, Germany',NULL),('CIRAM','CIRAM, Martillac, France',NULL),('CNA','Centro Nacional de Aceleradores, Seville, Spain',NULL),('CRG',NULL,'Clearly there are a lot in the literature! Not on the official 14C lab list!'),('CRL','Czech Radiocarbon Laboratory, Institute of Nuclear Physics & Institute of Archaeology, CAS, Prague',NULL),('CU','Charles University, Czech Republic',NULL),('D','Trinity College Dublin, Ireland',NULL),('DEM','Attiki, Greece',NULL),('DeA','Debrecen, Hungary',NULL),('Deb','Debrecen laboratory',NULL),('DIC','DICARB Laboratory Gainesville, Florida, USA','Previously Chagrin Falls, Ohio, USA'),('DSH',NULL,'Not on the official 14C lab list!'),('deb','Debrecen, Hungary',NULL),('Erl','Erlangen AMS Facility, Germany',NULL),('ETH','ETH/AMS Facility Zurich, Switzerland',NULL),('F','Florence, Italy',NULL),('Fra','Frankfurt, Germany',NULL),('FTMC','Center for Physical and Technological Sciences (FTMC) or Vilnius Radiocarbon',NULL),('GAK','Gakushuin University, Japan',NULL),('GD','Gdansk, Poland',NULL),('Gd','Gliwice, Poland',NULL),('GdA','Silesian University of Technology, Institute of Physics, Gliwice, Poland',NULL),('GdS','Silesian University of Technology, Institute of Physics, Gliwice, Poland',NULL),('GIFFG',NULL,'Not on the official 14C lab list!'),('GIFTAN',NULL,'Not on the official 14C lab list!'),('GIGAMS','Guangzhou Institute of Geocheminstry, AMS lab',NULL),('GIN','Geological Institute, Russian Academy of Sciences',NULL),('Gif','Gif-sur-Yvette, France',NULL),('GifA','Laboratoire de datation 14C, LSCE, Gif-sur-Yvette, France',NULL),('GL','Geochronological Lab., England',NULL),('Gr','Groningen, the Netherlands',NULL),('GrA','Groningen AMS, the Netherlands',NULL),('GrM','Groningen, the Netherlands',NULL),('GrN','Groningen, the Netherlands',NULL),('Gro','Groningen, the Netherlands',NULL),('GsY','The Labmatoire du Radiocurbone, Gif-sur-Yvette, France',NULL),('GU','Scottish Universities Research & Reactor Centre UK',NULL),('GX','Geochron Laboratories, USA',NULL),('H','Heidelberg, Germany',NULL),('HAM','Hamburg, Germany',NULL),('HAR','Harwell, England',NULL),('Hd','Heidelberg, Germany',NULL),('Hela','Laboratory of Chronology, Finnish Museum of Natural History',NULL),('Hv','Hannover, Germany',NULL),('I','Teledyne Isotopes, USA',NULL),('ICA','International Chemical Analysis Inc., Miami, Florida',NULL),('IFAO','Institut français d’archéologie orientale (IFAO), Cairo',NULL),('IGAN','Institute of Geography, Russian Academy of Sciences, Moscow',NULL),('IHME','Marzeev Inst. of Hygiene and Medical Ecology',NULL),('IRPA','Royal Institute for Cultural Heritage, Belgium',NULL),('ISGS','Illinois State Geological Survey, USA','No longer active'),('IV',NULL,'Not on the official 14C lab list!'),('K','Copenhagen Carbon-14 Dating Laboratory, Denmark','Radiometric dating, closed 2000/01. No collagen extraction before K-2127 onwards.'),('Ka','Copenhagen Carbon-14 Dating Laboratory/Aarhus AMS Centre, Denmark','Pretreatment by the Copenhagen lab (K-) and AMS dated by the Aarhus lab (AAR-).'),('KGM','Korea Institute of Geoscience and Mineral Resources (KIGAM)',NULL),('KI','Kiel, Leibniz Lab for Radiometric Dating & Stable Isotope Research, Kiel Univ., Germany','Radiometric measurements prior to 1996'),('KIA','Kiel AMS, Leibniz Lab for Radiometric Dating & Stable Isotope Research, Kiel Univ., Germany','AMS measurements from 1996 onwards'),('KIK','Royal Institute for Cultural Heritage, Belgium',NULL),('Ki','Institute of Radio Geochemistry of Environment, Kiev, Ukraine',NULL),('Kiev','Institute of Radio-Geochemistry of the Environment, Kiev, Ukraine','Also known as \'Ki\', which is not a preferred format, as easily muddled with \'KI\''),('KN','Köln, Germany',NULL),('L','Lamont-Doherty, USA',NULL),('LEMA','México D. F. 04510, México',NULL),('Le','St. Petersburg, Russia',NULL),('LGD',NULL,'Not on the official 14C lab list! Suspect this single 14C date should be removed.'),('LJ','Scripps (UCSD) La Jolla, USA',NULL),('LOD','Łódź, Poland',NULL),('LTL','University of Lecce (Italy)',NULL),('LU','Lund University Radiocarbon Dating Laboratory, Sweden',NULL),('Lu','Lund University Radiocarbon Dating Laboratory, Sweden',NULL),('LuA','AMS Lund University Radiocarbon Dating Laboratory, Sweden',NULL),('LuS','Lund University Radiocarbon Dating Laboratory, Sweden',NULL),('Lv','Louvain-la-Neuve, Belgium',NULL),('Ly','University of Lyon, France',NULL),('Lyon','University of Lyon, France',NULL),('M','University of Michigan, USA',NULL),('MAMS','Radiocarbon Lab, CEZA, Mannheim, Germany',NULL),('MC','Centre Scientifique,  Monaco',NULL),('MOC','Archaeological Institute, Czechoslovak Academy of Sciences, current Czech Republic','lab in Most'),('Mo','Verdanski Institute of Geochemistry, Moscow (USSR)',NULL),('N','Nishina Memorial, Japan',NULL),('NOSAMS',NULL,'Probably the National Ocean Sciences AMS Facility (abbreviation NOSAMS) correct lab code \'OS\'.'),('NOSAMSOS',NULL,'Probably the National Ocean Sciences AMS Facility (abbreviation NOSAMS) correct lab code \'OS\'.'),('NPL','National Physical Laboratory, Middlesex, England',NULL),('NZ','Rafter Radiocarbon Lab, New Zealand',NULL),('NZA','AMS Rafter Radiocarbon Lab, Lower Hutt, New Zealand',NULL),('ORSTOM','ORSTOM Bondy, France',NULL),('OS','National Ocean Science AMS Lab, Woods Hole, USA',NULL),('OWU','Ohio Wesleyan Univ. USA',NULL),('OxA','Oxford Radiocarbon Accelerator Unit, University of Oxford, UK',NULL),('OxA-X','Oxford?',NULL),('ozb','OZ – ANTARES Laboratory, Sydney, Australia',NULL),('ozc','OZ – ANTARES Laboratory, Sydney, Australia',NULL),('P','14C AMS Lab, Max-Planck Inst. für Biogeochemie, Jena, Germany',NULL),('PKUAMS','Peking Univ. AMS lab',NULL),('Poz','Poznań, Poland',NULL),('PSU','Penn State University, USA',NULL),('PSUAMS','Penn state University, USA. AMS',NULL),('Pta','Pretoria, South Africa',NULL),('Q','Cambridge, England',NULL),('R','Rome, Italy',NULL),('RCD','Radiocarbon Dating, England',NULL),('RICH','Royal Institute for Cultural Heritage, Belgium',NULL),('RoAMS','Horia Hulubei National Institute for Physics and Nuclear Engineering, Bucharest, Romania',NULL),('Rome','Rome, Italy',NULL),('RTD','D-REAMS Radiocarbon Laboratory, Weizmann Institute of Science',NULL),('SANU','ANU Radiocarbon Dating Laboratory, Canberra',NULL),('Sac','Laboratório de Datação pelo Radiocarbono, Portugal',NULL),('SacA','Laboratoire de Mesure du Carbone 14, Université Paris-Saclay, Gif sur Yvette, France',NULL),('SI','Smithsonian Institution',NULL),('SMU','Southern Methodist University, Dallas, Texas',NULL),('SOAN','Institute of Geology and Mineralogy, Russian Academy of Sciences, Sibrian Branch, Novosibirsk',NULL),('SPb','Herzen State University, St. Petersburg, Russia',NULL),('SRR','NERC Radiocarbon Laboratory, Scotland',NULL),('St','Stockholm, Sweden',NULL),('SUERC','Scottish Universities Environmental Research Centre',NULL),('T','Trondheim, Norway',NULL),('Ta','Radiocarbon Laboratory, Institute of Geology, University of Tartu',NULL),('TKA','Laboratory of Radiocarbon Dating, University Museum, University of Tokyo',NULL),('TO','IsoTrace Laboratory, University of Toronto',NULL),('TRa','Trondheim (AMS), Norway',NULL),('TUa','Trondheim (AMS), Norway',NULL),('Tucson','University of Arizona AMS Laboratory','Looks like the primary source incorectly used this for what should have been AA-'),('Tx','University of Texas, Austin, USA',NULL),('U','Uppsala University, Sweden',NULL),('UAAMSL','Accelerator Mass Spectrometry Laboratory, University of Arizona, USA',NULL),('Ua','Tandem Laboratory, University of Uppsala, Sweden',NULL),('UB','Belfast 14CHRONO Centre',NULL),('UBA','Belfast 14CHRONO Centre',NULL),('UCD','University College, Dublin, Ireland',NULL),('UCIAMS','Keck-CCAMS Group, Irvine, California, USA',NULL),('UCLA','Univ. of California, Los Angeles, USA',NULL),('UCR','Univ. of California, Riverside',NULL),('UGAMS','Center for Applied Isotope Studies,  University of Georgia (AMS), USA',NULL),('UGa','University of Georgia, USA','No longer active'),('UGCAIS','Center for Applied Isotope Studies, University of Georgia, USA',NULL),('UL','University of Laval, Canada',NULL),('ULA','Radiochronology Lab, Laval University, Quebec, Canada',NULL),('UOC','A.E. Lalonde AMS Lab, Ottawa, Canada',NULL),('UtC','Utrecht van de Graaff Laboratorium, the Netherlands',NULL),('UZ',NULL,'EUROVOL data. Could this be \'UZH\' University of Zurich, Switzerland?'),('VERA','Institut für Radiumforschung und Kernphysik, Austria',NULL),('VRI','Universität Wien, Austria',NULL),('Vs','Nature Research Centre Vilnius, Lithuania',NULL),('W','USGS, National Center, USA',NULL),('WG','NEC accelerator mass spectrometer in University of Georgia, Wisconsin','prefix given \'experimental\' dates before the AMS were officially running. Became UGAMS later.'),('Wk','University of Waikato, New Zealand',NULL),('XLLQ','Institute of Earth Environment, Shaanxi, China',NULL),('Y','Yale University, USA',NULL),('YU','AMS Center, Yamagata University',NULL),('Z','Ruđer Bošković Institute, Zagreb, Croatia',NULL);
/*!40000 ALTER TABLE `zoptions_C14laboratories` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_INSERT_zoptions_C14laboratories` BEFORE INSERT ON `zoptions_C14laboratories` FOR EACH ROW BEGIN SET NEW.`laboratory` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`laboratory`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`notes` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`notes`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`prefix` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`prefix`, '', ' '), '
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
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_UPDATE_zoptions_C14laboratories` BEFORE UPDATE ON `zoptions_C14laboratories` FOR EACH ROW BEGIN SET NEW.`laboratory` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`laboratory`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`notes` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`notes`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`prefix` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`prefix`, '', ' '), '
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

--
-- Dumping data for table `zoptions_Cultures`
--

LOCK TABLES `zoptions_Cultures` WRITE;
/*!40000 ALTER TABLE `zoptions_Cultures` DISABLE KEYS */;
INSERT INTO `zoptions_Cultures` VALUES ('Aichbuhl','AIC',NULL,NULL,NULL,NULL,NULL),('Alakul','ALA',NULL,NULL,NULL,NULL,NULL),('Alföld Linearbandkeramik','ALF',NULL,NULL,NULL,NULL,NULL),('Almería','ALM','aka Altentejo (P)',NULL,NULL,NULL,NULL),('Altheim','ALT',NULL,NULL,NULL,NULL,NULL),('Amzabegovo-Vršnik','AMZ','aka Anzabegovo-Vršnik aka Anzabegovo-Vrshnik',NULL,NULL,NULL,NULL),('Ancient Greek','ANC','or Ancient Greek colony',NULL,NULL,NULL,NULL),('Angleci-Zelenikovo 2','ANG',NULL,'2025-03-18 14:41:43','2025-03-18 14:41:43','jelena@127.0.0.1','jelena@127.0.0.1'),('Anglo-Saxon','ANG',NULL,NULL,NULL,NULL,NULL),('Aratashen-Shulaveri-Shomutepe','ARA',NULL,NULL,NULL,NULL,NULL),('Arbon','ARB',NULL,'2025-05-13 11:58:08','2025-05-13 11:58:08','jelena_bulatovic@127.0.0.1','jelena_bulatovic@127.0.0.1'),('Ardennes','ARD','EIA culture Belgian Ardennes',NULL,NULL,NULL,NULL),('Ariuşd-Cucuteni','ARI',NULL,NULL,NULL,NULL,NULL),('Árpád','ÁRP',NULL,NULL,NULL,NULL,NULL),('Artenac','ART',NULL,NULL,NULL,NULL,NULL),('Asbestos Ware','ASB',NULL,'2025-03-17 09:21:36','2025-03-17 09:21:36','jelena@127.0.0.1','jelena@127.0.0.1'),('Aukštaičiai','AUK',NULL,NULL,NULL,NULL,NULL),('Auvernier','AUV',NULL,NULL,NULL,NULL,NULL),('Avar','AVA',NULL,NULL,NULL,NULL,NULL),('Azilian','AZI',NULL,NULL,NULL,NULL,NULL),('Azov-Dnieper','AZO',NULL,NULL,NULL,NULL,NULL),('Baalberge','BAA','aka kultura balberska (PL) aka kultura baalberska (PL) aka Baalberg',NULL,'2025-01-21 12:06:19',NULL,'jelena@127.0.0.1'),('Babadag','BAB',NULL,NULL,NULL,NULL,NULL),('Babyno','BAB','aka Культура многоваликовой керамики (RU) aka Бабино (RU) aka Multi-cordoned Ware culture (ENG) aka Multiroller ceramics culture (ENG) aka Babino (ENG) aka Multiple-relief-band ware culture (ENG) aka Mnogovalikovaya kul\'tura (ENG) aka kultura ceramiki wielowałeczkowej (PL) aka kultura babińska (PL)',NULL,NULL,NULL,NULL),('Baden','BAD','aka kultura badeńska (PL) aka kultura ceramiki promienistej (PL) aka kultura kanelowana (PL) aka badenská kultura or kultura s kanelovanou keramikou (CZ)',NULL,NULL,NULL,NULL),('Baden-Coţofeni','BAD',NULL,'2024-02-08 09:31:49','2024-02-08 09:31:49','jelena@127.0.0.1','jelena@127.0.0.1'),('Baden-Kostolac','BAD','aka Badensko-kostolačka culture',NULL,NULL,NULL,NULL),('Bădeni III-Deva','BĂD',NULL,NULL,NULL,NULL,NULL),('Baierdorf-Velatice','BAI',NULL,NULL,NULL,NULL,NULL),('Balaton','BAL',NULL,NULL,NULL,NULL,NULL),('Balaton-Lasinja','BAL',NULL,NULL,NULL,NULL,NULL),('Barice-Gređani','BAR',NULL,NULL,NULL,NULL,NULL),('Basarabi','BAS',NULL,'2025-04-29 12:36:45','2025-04-29 12:36:45','jelena_bulatovic@127.0.0.1','jelena_bulatovic@127.0.0.1'),('Battle Axe','BAT',NULL,NULL,NULL,NULL,NULL),('Begleitkeramik','BEG',NULL,NULL,NULL,NULL,NULL),('Belegiš','BEL','aka Belegiška culture',NULL,NULL,NULL,NULL),('Belegiš II-Gáva','BEL',NULL,NULL,NULL,NULL,NULL),('Bell Beaker','BEL','kultura zvoncovitých pohárů (CZ) aka kultura pucharów dzwonowatych (PL) aka puchary dzwonowate (PL)',NULL,NULL,NULL,NULL),('Belogrudovo','BEL','aka Белогрудовская культура (RU)',NULL,NULL,NULL,NULL),('Belozerskaya','BEL','aka Belozerka',NULL,NULL,NULL,NULL),('Bernburg','BER','kultura bernburska (PL)',NULL,NULL,NULL,NULL),('Billendorf','BIL','aka billendorfská kultura (CZ)',NULL,NULL,NULL,NULL),('Bisamberg-Oberpullendorf Group','BIS','the last stage of the indigenous Lengyel phase, i.e., the Epilengyel cultural complex','2025-01-21 09:41:45','2025-01-21 09:50:32','jelena@127.0.0.1','jelena@127.0.0.1'),('Bischheim','BIS',NULL,NULL,NULL,NULL,NULL),('Blechkreis','BLE',NULL,NULL,NULL,NULL,NULL),('Blicquy','BLI',NULL,NULL,NULL,NULL,NULL),('Boat Axe','BOA',NULL,NULL,NULL,NULL,NULL),('Bodrogkeresztúr','BOD','aka Toarte Pastilate','2024-04-18 10:45:16','2024-04-18 10:45:16','jan@127.0.0.1','jan@127.0.0.1'),('Bodrogkeresztúr aka Toarte Pastilate','BOD',NULL,NULL,NULL,NULL,NULL),('Boian','BOI','aka Giulești–Marița culture aka Marița (Maritsa) culture (Boian in Romania, Maritsa (Марица) in Bulgaria)',NULL,'2025-03-18 08:50:27',NULL,'jelena@127.0.0.1'),('Boleráz','BOL',NULL,NULL,'2025-05-06 15:01:31',NULL,'jelena_bulatovic@127.0.0.1'),('Bondarikha','BON','aka Bondarikhinskaya culture - one of the post-Srubnaya culture',NULL,NULL,NULL,NULL),('Bošáca','BOŠ',NULL,NULL,NULL,NULL,NULL),('Bosut','BOS','aka Bosutska culture',NULL,NULL,NULL,NULL),('British EN','BRI',NULL,NULL,NULL,NULL,NULL),('British LN','BRI',NULL,NULL,NULL,NULL,NULL),('British MN','BRI',NULL,NULL,NULL,NULL,NULL),('Brnjica','BRN',NULL,NULL,NULL,NULL,NULL),('Bruebach-Oberbergen','BRU',NULL,NULL,NULL,NULL,NULL),('Bubanj-Hum II','BUB',NULL,NULL,NULL,NULL,NULL),('Bubanj-Hum III','BUB',NULL,NULL,NULL,NULL,NULL),('Bubanj-Sălcuța-Krivodol','BUB','aka Bubanj-Hum Ia (Serbia)',NULL,NULL,NULL,NULL),('Bug-Dniester','BUG',NULL,NULL,NULL,NULL,NULL),('Bükk','BÜK',NULL,NULL,NULL,NULL,NULL),('Butmir','BUT',NULL,NULL,NULL,NULL,NULL),('Bylany','BYL','aka bylanská kultura (CZ)',NULL,NULL,NULL,NULL),('Bystrianka','BYS',NULL,NULL,NULL,NULL,NULL),('Byzantine','BYZ',NULL,NULL,NULL,NULL,NULL),('Cardial','CAR',NULL,NULL,NULL,NULL,NULL),('Carn','CAR',NULL,NULL,NULL,NULL,NULL),('Caspian','CAS','aka Cis-Caspian',NULL,NULL,NULL,NULL),('Castelnovian','CAS',NULL,'2024-12-03 11:46:57','2024-12-03 11:46:57','jelena@127.0.0.1','jelena@127.0.0.1'),('Castelnovien','CAS',NULL,NULL,NULL,NULL,NULL),('Catacomb','CAT','aka Катакомбная культура (RU) aka Катакомбна культура (UA) aka kultura katakumbowa (PL)',NULL,NULL,NULL,NULL),('Cehăluţ- Hajdúbagos','CEH',NULL,'2024-04-17 16:20:30','2024-04-17 16:20:30','natalya@127.0.0.1','natalya@127.0.0.1'),('Celtic','CEL',NULL,NULL,NULL,NULL,NULL),('Central Bosnian culture-EIA','CEN','aka srednjobosanska group of the Early Iron Age',NULL,NULL,NULL,NULL),('Central Bosnian culture-LBA','CEN','aka srednjobosanska group of the Late Bronze Age',NULL,NULL,NULL,NULL),('Cernavodă','CER',NULL,NULL,NULL,NULL,NULL),('Cernavodă III-Boleráz-Baden','CER',NULL,NULL,NULL,NULL,NULL),('Cerny','CER',NULL,NULL,NULL,NULL,NULL),('Cetina','CET',NULL,NULL,NULL,NULL,NULL),('Chalcolithic','CHA','chalkolit (PL)',NULL,NULL,NULL,NULL),('Cham','CHA','aka chamská kultura (CZ)',NULL,NULL,NULL,NULL),('Chasséen','CHA',NULL,NULL,NULL,NULL,NULL),('Chernogorivka','CHE','aka Черногоровская культура (RU)',NULL,NULL,NULL,NULL),('Chernyakhovskaya','CHE','aka Черняховская культура',NULL,NULL,NULL,NULL),('Chłopice-Veselé','CHŁ',NULL,NULL,NULL,NULL,NULL),('Ciomortan-Costişa','CIO',NULL,NULL,NULL,NULL,NULL),('Clairvaux','CLA',NULL,NULL,NULL,NULL,NULL),('Cluj-Cheile Turzii-Lumea Nouă-Iclod (CCTLNI)','CLU',NULL,NULL,NULL,NULL,NULL),('Colchian','COL',NULL,NULL,NULL,NULL,NULL),('Combed Ware','COM','aka Comb Ware',NULL,'2025-03-17 11:49:35',NULL,'jelena@127.0.0.1'),('Corded Ware','COR','aka kultura ceramiki sznurowej (PL) aka kultura se šňůrovou keramikou (CZ)',NULL,NULL,NULL,NULL),('Cortaillod','COR',NULL,NULL,NULL,NULL,NULL),('Coslogeni','COS','aka Sabatinovka cultures, Sabatinovka and Coslogeni are one culture divided by the border of the USSR',NULL,NULL,NULL,NULL),('Coţofeni','COŢ',NULL,NULL,NULL,NULL,NULL),('Coţofeni-Kostolac','COŢ','aka Kostolac-Coţofeni',NULL,NULL,NULL,NULL),('Couronnien','COU',NULL,NULL,NULL,NULL,NULL),('Csöszhalom','CSÖ',NULL,'2024-10-02 14:41:53','2024-10-02 14:41:53','jan@127.0.0.1','jan@127.0.0.1'),('Cucuteni-Tripolye','CUC','kultura trypolska (PL), aka Cucuteni-Trypillia culture, aka Trypillia',NULL,NULL,NULL,NULL),('Dacian','DAC',NULL,NULL,NULL,NULL,NULL),('Dalj','DAL','local variant of Urnfield culture','2025-05-05 08:06:47','2025-05-05 08:06:47','jelena_bulatovic@127.0.0.1','jelena_bulatovic@127.0.0.1'),('Dalj-Doroslovo','DAL',NULL,NULL,NULL,NULL,NULL),('Dalmatian group-LBA','DAL','aka Dalmatinska group of the Late Bronze Age',NULL,NULL,NULL,NULL),('Danilo','DAN',NULL,NULL,NULL,NULL,NULL),('Danubian Urnfield','DAN',NULL,NULL,NULL,NULL,NULL),('Decea Mureșului','DEC','Decea Mureșului Culture (RO)',NULL,NULL,NULL,NULL),('Decorated Pottery complex','DEC','a regional variant of the late Urnfield culture',NULL,NULL,NULL,NULL),('Dereivskaya','DER','aka Sredny stog culture',NULL,NULL,NULL,NULL),('Deule Escaut','DEU','aka Deûle-Escaut (FR)',NULL,'2024-11-15 12:40:19',NULL,'adrian@127.0.0.1'),('Dikili Taş-Slatino','DIK',NULL,'2024-02-19 16:59:58','2024-02-19 16:59:58','jan@127.0.0.1','jan@127.0.0.1'),('Dimini','DIM',NULL,NULL,NULL,NULL,NULL),('Dissignac','DIS',NULL,NULL,NULL,NULL,NULL),('Dnieper-Donets','DNI',NULL,NULL,NULL,NULL,NULL),('Dobova-Velika Gorica','DOB',NULL,'2024-09-06 14:51:52','2024-09-06 14:51:52','robert@127.0.0.1','robert@127.0.0.1'),('Dolenjska','DOL',NULL,'2024-03-21 09:42:05','2024-03-21 09:42:05','jelena@127.0.0.1','jelena@127.0.0.1'),('Donetsk','DON','part of the Dnieper–Donets culture complex of the Neolithic',NULL,NULL,NULL,NULL),('Dubovac-Žutobrdo-Girla Mare','DUB',NULL,NULL,NULL,NULL,NULL),('Dudeşti','DUD',NULL,NULL,NULL,NULL,NULL),('Dyakovskaya','DYA',NULL,NULL,NULL,NULL,NULL),('Early Catacomb','EAR',NULL,NULL,NULL,NULL,NULL),('Early Koszider','EAR',NULL,NULL,NULL,NULL,NULL),('East/West Manych Catacomb','EAS',NULL,NULL,NULL,NULL,NULL),('Egolzwil','EGO',NULL,NULL,NULL,NULL,NULL),('El Argar','EL',NULL,'2024-02-14 09:33:27','2024-02-14 09:33:27','jelena@127.0.0.1','jelena@127.0.0.1'),('Elshanka','ELS',NULL,'2024-02-13 15:17:21','2024-02-13 15:17:21','robert@127.0.0.1','robert@127.0.0.1'),('Entzheim','ENT',NULL,NULL,NULL,NULL,NULL),('Epicardial','EPI',NULL,NULL,NULL,NULL,NULL),('Epigravettian','EPI',NULL,NULL,NULL,NULL,NULL),('Epilengyel','EPI',NULL,'2025-01-21 11:58:53','2025-01-21 11:58:53','jelena@127.0.0.1','jelena@127.0.0.1'),('Ertebølle','ERT',NULL,NULL,NULL,NULL,NULL),('Ezero','EZE','aka Karanovo VII','2024-01-30 17:15:32','2024-01-30 17:15:32','jan@127.0.0.1','jan@127.0.0.1'),('Ezerovo','EZE','not the same as Ezero!','2024-02-15 17:47:44','2024-02-15 17:47:44','jan@127.0.0.1','jan@127.0.0.1'),('Fatyanovo','FAT',NULL,NULL,NULL,NULL,NULL),('Fedorovka','FED',NULL,NULL,NULL,NULL,NULL),('Ferigile','FER','aka Feriđile (in Serbian) group',NULL,'2025-03-17 14:05:32',NULL,'jelena@127.0.0.1'),('Ferrieres','FER',NULL,NULL,NULL,NULL,NULL),('Figulina','FIG',NULL,'2024-02-13 16:24:53','2024-02-13 16:24:53','georgi_dankov@127.0.0.1','georgi_dankov@127.0.0.1'),('Flomborn','FLO',NULL,NULL,NULL,NULL,NULL),('Foeni','FOE',NULL,NULL,NULL,NULL,NULL),('Foeni‐Petreşti','FOE',NULL,NULL,NULL,NULL,NULL),('Folteşti','FOL',NULL,NULL,NULL,NULL,NULL),('Fontbouisse','FON',NULL,NULL,NULL,NULL,NULL),('Fritzens-Sanzeno','FRI',NULL,NULL,NULL,NULL,NULL),('Fuchsberg','FUC',NULL,NULL,NULL,NULL,NULL),('Funnel Beaker culture','FUN',NULL,'2025-07-31 12:47:00','2025-07-31 12:47:00','yuzhen_li@127.0.0.1','yuzhen_li@127.0.0.1'),('Furchenstichkeramik','FUR','aka Retz-Bajč aka skupina Retz-Křepice-Bajč (CZ)',NULL,'2025-01-21 12:01:39',NULL,'jelena@127.0.0.1'),('Füzesabony','FÜZ',NULL,NULL,NULL,NULL,NULL),('Gaban','GAB',NULL,'2024-02-13 16:21:37','2024-02-13 16:21:37','georgi_dankov@127.0.0.1','georgi_dankov@127.0.0.1'),('Gallic','GAL',NULL,NULL,NULL,NULL,NULL),('Gallo-Roman','GAL',NULL,NULL,NULL,NULL,NULL),('Gáta-Wieselburg','GÁT',NULL,'2024-10-18 09:34:06','2024-10-18 09:34:06','jan@127.0.0.1','jan@127.0.0.1'),('Gatersleben','GAT',NULL,NULL,NULL,NULL,NULL),('Gáva','GÁV','aka Gáva-Holigrady',NULL,NULL,NULL,NULL),('Gepid','GEP',NULL,NULL,NULL,NULL,NULL),('Germanic','GER',NULL,NULL,NULL,NULL,NULL),('Glasinac-EIA','GLA','aka Glasinačka culture of the Early Iron Age',NULL,NULL,NULL,NULL),('Glasinac-LBA','GLA','aka Glasinačka culture of the Late Bronze Age',NULL,NULL,NULL,NULL),('Glazkovo','GLA',NULL,'2024-05-23 08:37:17','2024-05-23 08:37:17','sam@127.0.0.1','sam@127.0.0.1'),('Glazkovsky','GLA','Глазковская культура (RU)',NULL,NULL,NULL,NULL),('Glina','GLI',NULL,NULL,NULL,NULL,NULL),('Globular Amphora','GLO','aka kultura amfor kulistych (PL) aka Kugelamphoren-Kultur (DE) aka kultura kulovitých amfor (CZ)',NULL,NULL,NULL,NULL),('Goldberg III','GOL',NULL,NULL,NULL,NULL,NULL),('Gord','GOR',NULL,NULL,NULL,NULL,NULL),('Gornea-  Orleşti','GOR',NULL,NULL,NULL,NULL,NULL),('Gradešnica','GRA',NULL,'2024-02-20 15:14:25','2024-02-20 15:14:25','jan@127.0.0.1','jan@127.0.0.1'),('Greek early Neolithic','GRE',NULL,'2024-03-11 21:59:19','2024-03-11 21:59:19','georgi_dankov@127.0.0.1','georgi_dankov@127.0.0.1'),('Grooved Ware','GRO',NULL,NULL,NULL,NULL,NULL),('Grossgartach','GRO',NULL,NULL,NULL,NULL,NULL),('Gruppo del Vhó','GRU',NULL,'2024-02-13 16:21:49','2024-02-13 16:21:49','georgi_dankov@127.0.0.1','georgi_dankov@127.0.0.1'),('Gumelniţa','GUM',NULL,NULL,NULL,NULL,NULL),('Gura Baciului-Cârcea','GUR','aka Precriş',NULL,NULL,NULL,NULL),('Gyulavarsánd','GYU',NULL,NULL,NULL,NULL,NULL),('Hallstatt','HAL','kultura halsztacka (PL)','2024-05-28 12:11:38','2024-05-28 12:11:38','robert@127.0.0.1','robert@127.0.0.1'),('Hamangia','HAM','aka Hamngia',NULL,NULL,NULL,NULL),('Hatvan','HAT',NULL,NULL,NULL,NULL,NULL),('Hatvan-Füzesabony','HAT',NULL,NULL,NULL,NULL,NULL),('Hazendonk','HAZ',NULL,NULL,NULL,NULL,NULL),('Hellenistic','HEL',NULL,NULL,NULL,NULL,NULL),('Herculane','HER',NULL,NULL,NULL,NULL,NULL),('Herpály','HER',NULL,NULL,NULL,NULL,NULL),('Hinkelstein','HIN',NULL,NULL,NULL,NULL,NULL),('Horákov','HOR','aka horákovská kultura (CZ)',NULL,NULL,NULL,NULL),('Horgen','HOR',NULL,NULL,NULL,NULL,NULL),('Horodiştea','HOR',NULL,NULL,NULL,NULL,NULL),('Horodiştea-Erbiceni','HOR',NULL,NULL,NULL,NULL,NULL),('Horodiştea-Gordineşti','HOR',NULL,NULL,NULL,NULL,NULL),('Hotnica','HOT',NULL,'2024-02-12 19:54:09','2024-02-12 19:54:09','jan@127.0.0.1','jan@127.0.0.1'),('Hungarian Conquest','HUN',NULL,NULL,NULL,NULL,NULL),('Hunyadihalom','HUN',NULL,NULL,NULL,NULL,NULL),('Hutberg','HUT',NULL,NULL,NULL,NULL,NULL),('Hvar','HVA',NULL,NULL,NULL,NULL,NULL),('Hyksos','HYK',NULL,NULL,NULL,NULL,NULL),('Iapodian','IAP','aka Japodska culture',NULL,NULL,NULL,NULL),('Iclod','ICL',NULL,NULL,NULL,NULL,NULL),('Iernut','IER',NULL,NULL,NULL,NULL,NULL),('Impresso','IMP','aka Impressa',NULL,NULL,NULL,NULL),('Inneralpine','INN',NULL,'2025-05-13 12:37:26','2025-05-13 12:37:26','jelena_bulatovic@127.0.0.1','jelena_bulatovic@127.0.0.1'),('Irish EN','IRI',NULL,NULL,NULL,NULL,NULL),('Irish MN','IRI',NULL,NULL,NULL,NULL,NULL),('Isakovo-Serovo','ISA',NULL,NULL,NULL,NULL,NULL),('Ivanovskaya','IVA','community of RollerPotteryCulture',NULL,NULL,NULL,NULL),('Iwno','IWN','aka kultura iwieńska (PL)',NULL,NULL,NULL,NULL),('Jangarskaya','JAN','aka Jangar',NULL,NULL,NULL,NULL),('Jastorf','JAS','aka kultura jastorfska (PL)',NULL,NULL,NULL,NULL),('Jevišovice','JEV','aka jevišovická kultura (CZ)',NULL,NULL,NULL,NULL),('Jigodin','JIG',NULL,NULL,NULL,NULL,NULL),('Jordansmühl','JOR','aka Jordansmühler Kultur (DE) aka kultura jordanowska (PL) aka jordanovská kultura (CZ)',NULL,NULL,NULL,NULL),('Junacite','JUN',NULL,'2024-02-16 15:00:49','2024-02-16 15:00:49','jan@127.0.0.1','jan@127.0.0.1'),('Kakanj','KAK',NULL,NULL,NULL,NULL,NULL),('Kalakača','KAL',NULL,NULL,NULL,NULL,NULL),('Kalakača-Gornea','KAL',NULL,NULL,NULL,NULL,NULL),('Kalenderberg','KAL',NULL,NULL,NULL,NULL,NULL),('Kara-Koba','KAR',NULL,NULL,NULL,NULL,NULL),('Karanovo','KAR',NULL,NULL,NULL,NULL,NULL),('Karanovo I','KAR',NULL,NULL,NULL,NULL,NULL),('Karanovo II','KAR',NULL,NULL,NULL,NULL,NULL),('Karanovo III','KAR','aka Veselinovo',NULL,NULL,NULL,NULL),('Karanovo IV','KAR',NULL,NULL,NULL,NULL,NULL),('Karanovo V','KAR','aka Maritsa aka Boian',NULL,'2025-03-18 09:59:32',NULL,'jelena@127.0.0.1'),('Karanovo VI','KAR',NULL,NULL,NULL,NULL,NULL),('Karanovo VII','KAR','aka Ezero','2024-01-25 15:05:20','2024-01-25 15:05:20','jan@127.0.0.1','jan@127.0.0.1'),('Karasuk','KAR','In Russian: Карасукская культура; aka Karasukskaya kul\'tura',NULL,NULL,NULL,NULL),('Kemi Oba','KEM',NULL,NULL,NULL,NULL,NULL),('Kerketo-Toret','KER','керкето-торетская культура (RU)',NULL,NULL,NULL,NULL),('Kerman','KER','Kerma, Sudan is type site; 2nd intermediate period',NULL,NULL,NULL,NULL),('Kerugou','KER',NULL,NULL,NULL,NULL,NULL),('Khorasan','KHO',NULL,NULL,NULL,NULL,NULL),('Khvalynskaya','KHV','aka Khvalinskiy',NULL,NULL,NULL,NULL),('Kievo-Cherkasy','KIE','part of the Dnieper–Donets culture complex of the Neolithic',NULL,NULL,NULL,NULL),('Kisapostag','KIS',NULL,NULL,NULL,NULL,NULL),('Kitoysky','KIT','китойская культура (RU)',NULL,NULL,NULL,NULL),('Kizil-Kobin','KIZ','Crimean pre-Taurian and Taurian periods; Kyzyl-Koba',NULL,NULL,NULL,NULL),('Knovíz','KNO','aka knovízská kultura (CZ)',NULL,NULL,NULL,NULL),('Koban','KOB',NULL,NULL,NULL,NULL,NULL),('Kobyakovo','KOB',NULL,NULL,NULL,NULL,NULL),('Kodžadermen-Gumelnița-Karanovo VI','KOD','aka Kodjadermen-Gumelnița-Karanovo VI aka Kodzhadermen-Gumelnița-Karanovo VI aka Kodžadermen',NULL,NULL,NULL,NULL),('Kokel','KOK','In Russian: кокэльской культуре; aka Syyn-Churek culture or Shurmak culture',NULL,NULL,NULL,NULL),('Kongemose','KON',NULL,NULL,NULL,NULL,NULL),('Koprivets','KOP','Koprivets cultural group','2025-03-18 10:02:46','2025-03-18 10:02:46','jelena@127.0.0.1','jelena@127.0.0.1'),('Kosihy-Čaka-Makó','KOS','aka Makó-Kosihy-Čaka aka Makó culture','2024-11-18 17:46:42','2024-11-18 17:48:54','jan@127.0.0.1','jan@127.0.0.1'),('Kostolac','KOS','aka Kostolačka culture',NULL,NULL,NULL,NULL),('Kostolac-Vučedol','KOS','a regional variant, aka Kostolačko-vučedolska culture',NULL,NULL,NULL,NULL),('Koszider','KOS',NULL,NULL,NULL,NULL,NULL),('Kozhumberdy','KOZ',NULL,NULL,NULL,NULL,NULL),('Krivodol-Sălcuţa','KRI',NULL,NULL,NULL,NULL,NULL),('Krotovo','KRO',NULL,'2024-02-14 13:22:29','2024-02-14 13:22:29','jelena@127.0.0.1','jelena@127.0.0.1'),('Kukrek','KUK',NULL,NULL,NULL,NULL,NULL),('Kunda','KUN','kultura kundajska (PL)',NULL,NULL,NULL,NULL),('Kura–Araxes','KUR',NULL,NULL,NULL,NULL,NULL),('Kuznetsk-Altai','KUZ',NULL,NULL,NULL,NULL,NULL),('Kyjatice','KYJ',NULL,'2024-11-13 13:05:12','2024-11-13 13:05:12','jan@127.0.0.1','jan@127.0.0.1'),('La Hoguette','LA',NULL,NULL,NULL,NULL,NULL),('La Tène','LA','aka La Tene',NULL,NULL,NULL,NULL),('Lagozza','LAG',NULL,'2024-01-22 16:46:14','2024-01-22 16:46:14','robert@127.0.0.1','robert@127.0.0.1'),('Lasinja','LAS',NULL,NULL,NULL,NULL,NULL),('Late Bandkeramik','LAT','aka kultura późnej ceramiki wstęgowej (PL)',NULL,NULL,NULL,NULL),('Late Koszider','LAT',NULL,NULL,NULL,NULL,NULL),('Lattringen','LAT',NULL,NULL,NULL,NULL,NULL),('Lažňany','LAŽ',NULL,NULL,NULL,NULL,NULL),('Lengyel','LEN','aka kultura lendzielska (PL) aka kultura lengyelská or kultura s moravskou malovanou keramikou (CZ)',NULL,NULL,NULL,NULL),('Lengyel I','LEN',NULL,NULL,NULL,NULL,NULL),('Lengyel II','LEN',NULL,NULL,NULL,NULL,NULL),('Lepenski Vir','LEP',NULL,NULL,NULL,NULL,NULL),('Liburnian','LIB',NULL,NULL,NULL,NULL,NULL),('Lihult','LIH',NULL,NULL,NULL,NULL,NULL),('Linearbandkeramik','LIN','LBK aka kultura ceramiki wstęgowej rytej (PL) aka kultura s lineární keramikou aka Культура линейно-ленточной керамики (RU)',NULL,NULL,NULL,NULL),('Lisogubovskaya','LIS','part of the Dnieper–Donets culture complex of the Neolithic',NULL,NULL,NULL,NULL),('Litzenkeramik','LIT','aka Pramenasta keramika (SI)',NULL,NULL,NULL,NULL),('Livezile','LIV',NULL,NULL,NULL,NULL,NULL),('Ljubljana','LJU',NULL,NULL,NULL,NULL,NULL),('Lola','LOL',NULL,NULL,NULL,NULL,NULL),('Lower Don','LOW',NULL,NULL,NULL,NULL,NULL),('Lublin Volhynian','LUB','aka kultura lubelsko-wołyńska (PL) aka Volynian (RU)',NULL,NULL,NULL,NULL),('Ludanice','LUD',NULL,NULL,NULL,NULL,NULL),('Lumea Nouă','LUM',NULL,NULL,NULL,NULL,NULL),('Lusatian','LUS','aka kultura łużycka (PL) aka łużyckie pola popielnicowe (PL) aka Lausitzer Kultur (DE) aka lužická kultura (CZ)',NULL,NULL,NULL,NULL),('Luscherz','LUS',NULL,NULL,NULL,NULL,NULL),('Lyalovo','LYA',NULL,NULL,NULL,NULL,NULL),('Mad\'arovce','MAD',NULL,NULL,NULL,NULL,NULL),('Maglemose','MAG',NULL,NULL,NULL,NULL,NULL),('Magyar','MAG',NULL,NULL,NULL,NULL,NULL),('Mailhac','MAI',NULL,NULL,NULL,NULL,NULL),('Malice','MAL',NULL,NULL,NULL,NULL,NULL),('Mariupol','MAR',NULL,NULL,NULL,NULL,NULL),('Maros','MAR','aka Mokrin or Mokrinska culture (Serbia); aka Mureș (Romania)',NULL,'2024-08-08 10:37:04',NULL,'robert@127.0.0.1'),('Martijanec-Kaptol','MAR','Vinski-Gasparini sensu',NULL,NULL,NULL,NULL),('Matignons','MAT',NULL,NULL,NULL,NULL,NULL),('Maykop','MAY','aka Majkop aka Maikop',NULL,NULL,NULL,NULL),('Medieval','MED',NULL,NULL,NULL,NULL,NULL),('Meotian','MEO',NULL,NULL,NULL,NULL,NULL),('Mesolithic','MES',NULL,NULL,NULL,NULL,NULL),('Mezőcsát','MEZ',NULL,'2024-07-23 16:55:25','2024-07-23 16:55:25','robert@127.0.0.1','robert@127.0.0.1'),('Michelsberg','MIC',NULL,NULL,NULL,NULL,NULL),('Middle Dnieper','MID','kultura środkowodnieprzańska (PL)','2024-05-28 12:09:57','2024-05-28 12:09:57','robert@127.0.0.1','robert@127.0.0.1'),('Middle Don','MID','eastern part of the Scythian world',NULL,NULL,NULL,NULL),('Middle Kingdom','MID','Egyptian dynasties XI, XII, XIII and XIV',NULL,NULL,NULL,NULL),('Middle-Provence Neolithic 1','MID',NULL,NULL,NULL,NULL,NULL),('Mierzanowice','MIE','aka kultura mierzanowicka (PL)',NULL,NULL,NULL,NULL),('Milavče','MIL','aka milavečská kultura (CZ)',NULL,NULL,NULL,NULL),('Mondsee','MON',NULL,NULL,NULL,NULL,NULL),('Mongolian','MON',NULL,NULL,NULL,NULL,NULL),('Montbolo','MON',NULL,NULL,NULL,NULL,NULL),('Monteoru','MON',NULL,NULL,NULL,NULL,NULL),('Mousterian','MOU',NULL,NULL,NULL,NULL,NULL),('Münchshöfener','MÜN','aka Münchshöfen',NULL,'2025-01-21 12:07:26',NULL,'jelena@127.0.0.1'),('Munzingen','MUN',NULL,NULL,NULL,NULL,NULL),('Murzak-Koba','MUR',NULL,'2025-03-17 10:08:20','2025-03-17 10:08:20','jelena@127.0.0.1','jelena@127.0.0.1'),('Nagyrév','NAG',NULL,NULL,NULL,NULL,NULL),('Nakovana','NAK',NULL,NULL,NULL,NULL,NULL),('Napatan','NAP','Ancient egypt and Nubia',NULL,NULL,NULL,NULL),('Narva','NAR',NULL,NULL,NULL,NULL,NULL),('Natapan','NAT','3rd intermediate period Egypt and northern Sudan',NULL,NULL,NULL,NULL),('Neolithiqe ancien rhodanien','NEO',NULL,NULL,NULL,NULL,NULL),('Néolithique ancien valaisan','NÉO',NULL,NULL,NULL,NULL,NULL),('Neolithique final','NEO',NULL,NULL,NULL,NULL,NULL),('Néolithique moyen','NÉO',NULL,NULL,NULL,NULL,NULL),('Neolithique moyen Bourguignon','NEO',NULL,NULL,NULL,NULL,NULL),('Neolithique moyen I','NEO',NULL,NULL,NULL,NULL,NULL),('Neolithique moyen II','NEO',NULL,NULL,NULL,NULL,NULL),('New Kingdom','NEW','Egyptian dynasties XVIII-XXIV',NULL,NULL,NULL,NULL),('Nitra','NIT','aka nitranská kultura aka kultura nitrzańska (PL)',NULL,NULL,NULL,NULL),('Nizhnemikhailovskaya','NIZ',NULL,NULL,NULL,NULL,NULL),('Nordic Bronze Age','NOR','kultura nordyjska (PL)',NULL,NULL,NULL,NULL),('Norse','NOR',NULL,NULL,NULL,NULL,NULL),('North Caucasian','NOR',NULL,NULL,NULL,NULL,NULL),('Nøstvet','NØS',NULL,NULL,NULL,NULL,NULL),('Noua','NOU',NULL,NULL,NULL,NULL,NULL),('Nova Zagora','NOV',NULL,'2024-02-06 16:51:01','2024-02-06 16:51:01','jan@127.0.0.1','jan@127.0.0.1'),('Novosvobodnenskaya','NOV',NULL,NULL,NULL,NULL,NULL),('Novotitarovskaya','NOV',NULL,NULL,NULL,NULL,NULL),('Novotitorovskaya','NOV',NULL,'2024-12-12 10:02:00','2024-12-12 10:02:00','yuzhen_li@127.0.0.1','yuzhen_li@127.0.0.1'),('Noyen','NOY',NULL,NULL,NULL,NULL,NULL),('Nubian','NUB','From Nubia (modern day southern Egypt north Sudan)',NULL,NULL,NULL,NULL),('Nyirség','NYI',NULL,NULL,NULL,NULL,NULL),('Obanian','OBA',NULL,NULL,NULL,NULL,NULL),('Oberlauterbach','OBE',NULL,NULL,NULL,NULL,NULL),('Ochre Grave','OCH','aka Ochre Grave culture aka Steppe Ochre','2024-11-18 14:29:17','2024-11-18 14:29:17','jan@127.0.0.1','jan@127.0.0.1'),('Older Únětice','OLD',NULL,NULL,NULL,NULL,NULL),('Orkney','ORK',NULL,NULL,NULL,NULL,NULL),('Orlovskaya','ORL','aka Orlov',NULL,NULL,NULL,NULL),('Otomani','OTO','kultura otomańska (PL) aka Ottomany-Füzesabony',NULL,NULL,NULL,NULL),('Otomani-Gyulavarsánd','OTO',NULL,NULL,NULL,NULL,NULL),('Ovčarovo','OVČ',NULL,'2024-02-02 11:40:31','2024-02-02 11:40:31','jan@127.0.0.1','jan@127.0.0.1'),('Paraćin','PAR','aka Paraćinska culture',NULL,NULL,NULL,NULL),('Passo di Corvo','PAS',NULL,'2024-02-13 16:24:17','2024-02-13 16:24:17','georgi_dankov@127.0.0.1','georgi_dankov@127.0.0.1'),('Pazyryk','PAZ',NULL,NULL,NULL,NULL,NULL),('Periam-Pecica','PER',NULL,NULL,NULL,NULL,NULL),('Petreşti','PET','Petresti Culture (RO)',NULL,NULL,NULL,NULL),('Peu Richard','PEU',NULL,NULL,NULL,NULL,NULL),('Pevec','PEV',NULL,'2024-02-02 19:40:28','2024-02-02 19:40:28','jan@127.0.0.1','jan@127.0.0.1'),('Pfyn','PFY',NULL,NULL,NULL,NULL,NULL),('Picts','PIC',NULL,NULL,NULL,NULL,NULL),('Pitted Ware','PIT',NULL,NULL,NULL,NULL,NULL),('Pivikhinskaya','PIV',NULL,NULL,NULL,NULL,NULL),('Planning-Friedberg','PLA',NULL,NULL,NULL,NULL,NULL),('Platěnice','PLA','aka platěnická kultura (CZ) aka slezsko-platěnická kultura, platěnická fáze (CZ)',NULL,NULL,NULL,NULL),('Pleszów-Modlnica','PLE',NULL,NULL,NULL,NULL,NULL),('Podolí','POD','aka podolská kultura (CZ)',NULL,NULL,NULL,NULL),('Pokrovska','POK','variant of the Late Srubnaya culture',NULL,NULL,NULL,NULL),('Polgar','POL',NULL,NULL,NULL,NULL,NULL),('Pöljä Ware','PÖL',NULL,NULL,NULL,NULL,NULL),('Poljanica','POL',NULL,'2024-02-02 18:02:37','2024-02-02 18:02:37','jan@127.0.0.1','jan@127.0.0.1'),('Poljanica III','POL',NULL,'2024-02-02 18:05:18','2024-02-02 18:05:18','jan@127.0.0.1','jan@127.0.0.1'),('Poljanica IV','POL',NULL,'2024-02-02 18:02:53','2024-02-02 18:02:53','jan@127.0.0.1','jan@127.0.0.1'),('Poltavka','POL',NULL,NULL,NULL,NULL,NULL),('Polyanitsa III','POL',NULL,NULL,NULL,NULL,NULL),('Post-Poltavka','POS',NULL,NULL,NULL,NULL,NULL),('Potapovka','POT',NULL,NULL,NULL,NULL,NULL),('PPNA','PPN','Pre-Pottery Neolithic A','2024-03-11 22:00:22','2024-03-11 22:00:22','georgi_dankov@127.0.0.1','georgi_dankov@127.0.0.1'),('PPNB','PPN','Pre-Pottery Neolithic B','2024-03-11 22:00:38','2024-03-11 22:00:38','georgi_dankov@127.0.0.1','georgi_dankov@127.0.0.1'),('Pre-Chasséen','PRE',NULL,NULL,NULL,NULL,NULL),('Pre-Criș','PRE',NULL,NULL,NULL,NULL,NULL),('Pre-Gáva','PRE',NULL,'2025-04-01 11:17:15','2025-04-06 12:40:24','jelena@127.0.0.1','biad@127.0.0.1'),('pre-Karanovo','PRE',NULL,'2025-03-18 10:00:16','2025-03-18 10:00:16','jelena@127.0.0.1','jelena@127.0.0.1'),('Pre-Scythian','PRE',NULL,NULL,NULL,NULL,NULL),('Pricked Pearls Pottery','PRI','aka культура Накольчатой Жемчужной Керамики (RU) aka Дарквети-Мешоковская (RU), pre-Maikop or parallel to the early Maikop',NULL,NULL,NULL,NULL),('Prochorovka','PRO',NULL,NULL,NULL,NULL,NULL),('Proto-Colchian','PRO',NULL,NULL,NULL,NULL,NULL),('Proto-Meotian','PRO',NULL,NULL,NULL,NULL,NULL),('Proto-Nagyrév','PRO',NULL,NULL,NULL,NULL,NULL),('Proto-Tiszapolgár','PRO',NULL,'2024-10-07 10:50:38','2024-10-07 10:50:38','jan@127.0.0.1','jan@127.0.0.1'),('Proto-Únětice','PRO','aka protoúnětická kultura (CZ)',NULL,NULL,NULL,NULL),('Rakushechny Yar','RAK',NULL,'2025-03-17 06:53:05','2025-03-17 06:53:05','jelena@127.0.0.1','jelena@127.0.0.1'),('Repin','REP',NULL,NULL,NULL,NULL,NULL),('Retz-Gajary','RET',NULL,NULL,NULL,NULL,NULL),('Rhomboid-pitted','RHO',NULL,NULL,NULL,NULL,NULL),('Ripoli','RIP',NULL,'2024-02-13 16:18:31','2024-02-13 16:18:31','georgi_dankov@127.0.0.1','georgi_dankov@127.0.0.1'),('Řivnáč','ŘIV','aka řivnáčská kultura (CZ)',NULL,NULL,NULL,NULL),('Roller Ceramic Cultures','ROL','Культуры валиковой керамики КВК (RU), undivided cultures of great community of RollerPotteryCulture of the late Bronze Age',NULL,NULL,NULL,NULL),('Roman','ROM',NULL,NULL,NULL,NULL,NULL),('Rössen','RÖS','aka kultura rösseńska (PL)',NULL,NULL,NULL,NULL),('Roucadourien','ROU',NULL,NULL,NULL,NULL,NULL),('Rzucewo','RZU','aka kultura rzucewska (PL)',NULL,NULL,NULL,NULL),('Sabatinovka','SAB','aka Coslogeni cultures, Sabatinovka and Coslogeni are one culture divided by the border of the USSR',NULL,NULL,NULL,NULL),('Saint Leonard','SAI',NULL,NULL,NULL,NULL,NULL),('Sălcuţa','SĂL',NULL,NULL,NULL,NULL,NULL),('Saltovo-Mayaki','SAL',NULL,NULL,NULL,NULL,NULL),('Salzmünde','SAL',NULL,NULL,NULL,NULL,NULL),('Samara','SAM',NULL,'2024-02-13 15:17:25','2024-02-13 15:17:25','robert@127.0.0.1','robert@127.0.0.1'),('Saône Rhône','SAÔ',NULL,NULL,NULL,NULL,NULL),('Šárec','ŠÁR','aka Šárec group or šárecká skupina (CZ)',NULL,NULL,NULL,NULL),('Sargary-Alekseevskoe','SAR',NULL,NULL,NULL,NULL,NULL),('Sarmatian','SAR',NULL,NULL,NULL,NULL,NULL),('Sauveterrian','SAU',NULL,NULL,NULL,NULL,NULL),('Sava','SAV',NULL,'2024-03-14 08:08:39','2024-03-14 08:08:39','jelena@127.0.0.1','jelena@127.0.0.1'),('Sava IV','SAV',NULL,'2024-02-13 10:14:46','2024-02-13 10:14:46','jan@127.0.0.1','jan@127.0.0.1'),('Scandinavian Late Neolithic','SCA',NULL,NULL,NULL,NULL,NULL),('Scandinavian Pre-Roman Iron Age','SCA',NULL,NULL,NULL,NULL,NULL),('Schela Cladovei','SCH','aka Schela Cladovei Culture (RO), Mesolithic',NULL,NULL,NULL,NULL),('Schneckenberg','SCH',NULL,NULL,NULL,NULL,NULL),('Schussenried','SCH',NULL,NULL,NULL,NULL,NULL),('Schwieberdingen','SCH',NULL,NULL,NULL,NULL,NULL),('Scythian','SCY','aka kultura scytyjska (PL)',NULL,NULL,NULL,NULL),('Seine Oise Marne','SEI',NULL,NULL,NULL,NULL,NULL),('Sengkofen/Jellenkofen','SEN',NULL,NULL,NULL,NULL,NULL),('Seroglazovskaya','SER','aka Seroglazov',NULL,NULL,NULL,NULL),('Sesklo','SES',NULL,NULL,NULL,NULL,NULL),('Shagara','SHA',NULL,'2024-02-15 12:15:31','2024-02-15 12:15:31','jelena@127.0.0.1','jelena@127.0.0.1'),('Shiversky','SHI','aka Шиверская культура (RU)',NULL,NULL,NULL,NULL),('Silesian-Platěnice','SIL','aka slezsko-platěnická kultura (CZ)',NULL,NULL,NULL,NULL),('Singen','SIN','aka Singener (German)','2025-05-13 11:50:53','2025-05-13 11:50:53','jelena_bulatovic@127.0.0.1','jelena_bulatovic@127.0.0.1'),('Single Grave','SIN','Einzelgrabkultur (DE) aka kultura grobów jednostkowych (PL)',NULL,NULL,NULL,NULL),('Sintashta-Petrovka','SIN',NULL,NULL,NULL,NULL,NULL),('Slavic','SLA','kultura słowiańska (PL)',NULL,NULL,NULL,NULL),('Şoimuş','ŞOI',NULL,NULL,NULL,NULL,NULL),('Somogyvár-Vinkovci','SOM',NULL,'2024-05-20 16:52:32','2024-05-20 16:52:32','jan@127.0.0.1','jan@127.0.0.1'),('Sopot','SOP','aka Sopotska culture',NULL,NULL,NULL,NULL),('Sopot-Lengyel','SOP',NULL,NULL,NULL,NULL,NULL),('Southern Dalmatian Polychrome','SOU','middle Neolithic Croatia',NULL,NULL,NULL,NULL),('Sredny Stog','SRE','aka Dereivskaya  culture (as one of the stages of Sredny Stog)',NULL,NULL,NULL,NULL),('Sredny Stog II','SRE',NULL,NULL,NULL,NULL,NULL),('Srem/Syrm','SRE',NULL,'2024-07-23 17:46:57','2024-07-23 17:46:57','robert@127.0.0.1','robert@127.0.0.1'),('Srubnaya','SRU','aka Srub aka Timber grave culture',NULL,NULL,NULL,NULL),('St Pons','ST',NULL,NULL,NULL,NULL,NULL),('Starčevo-Körös-Criş','STA',NULL,NULL,NULL,NULL,NULL),('Stare gmajne','STA',NULL,NULL,NULL,NULL,NULL),('Steppe North Caucasus','STE',NULL,NULL,NULL,NULL,NULL),('Stichbandkeramik','STI','aka Stroked Pottery (Stroke-ornamented ware culture) (ENG) aka kultura ceramiki wstęgowej kłutej (PL) aka kultura s vypíchanou keramikou (CZ)',NULL,'2025-01-21 11:56:47',NULL,'jelena@127.0.0.1'),('Štítary','ŠTÍ','aka štítarská kultura (CZ)',NULL,NULL,NULL,NULL),('Stoicani-Aldeni','STO',NULL,NULL,NULL,NULL,NULL),('Straubing','STR',NULL,NULL,NULL,NULL,NULL),('Struma','STR',NULL,NULL,NULL,NULL,NULL),('Surskoy','SUR','aka Сурская культура, Surska, Surskaya, Surskaja',NULL,NULL,NULL,NULL),('Suskanskaya','SUS','Andronoid culture circle',NULL,NULL,NULL,NULL),('Sv. Lucija','SV.',NULL,'2024-03-20 07:29:34','2024-03-20 07:29:34','jelena@127.0.0.1','jelena@127.0.0.1'),('Swifterbant','SWI',NULL,NULL,NULL,NULL,NULL),('Szakálhát','SZA','formerly Szilmeg',NULL,NULL,NULL,NULL),('Szatmár','SZA','Sub-culture of Hungarian ALP (LBK)',NULL,NULL,NULL,NULL),('Tagar','TAG','(RU) Тагарская культура',NULL,NULL,NULL,NULL),('Tamins-Carasso-Isera','TAM','Alpine culture strongly influenced by Remedello (Po Valley)',NULL,NULL,NULL,NULL),('Tardenoisian','TAR',NULL,NULL,NULL,NULL,NULL),('Tardigravettian','TAR',NULL,NULL,NULL,NULL,NULL),('Tei','TEI',NULL,NULL,NULL,NULL,NULL),('Terramare','TER','Middle and Late Bronze Age Po Valley, in Emilia, Italy','2025-01-31 09:48:39','2025-01-31 09:48:39','sam@127.0.0.1','sam@127.0.0.1'),('Thracian','THR',NULL,NULL,NULL,NULL,NULL),('Tisza','TIS','aka kultura cisańska (PL)',NULL,NULL,NULL,NULL),('Tiszadob','TIS',NULL,'2024-11-12 17:34:55','2024-11-12 17:34:55','jan@127.0.0.1','jan@127.0.0.1'),('Tiszapolgár','TIS',NULL,NULL,NULL,NULL,NULL),('Toarte Pastilate','TOA','aka Bodrogkeresztúr','2024-04-18 10:44:11','2024-04-18 10:44:11','jan@127.0.0.1','jan@127.0.0.1'),('Transdanubian Encrusted Pottery','TRA',NULL,NULL,NULL,NULL,NULL),('Transdanubian Linearbandkeramik','TRA',NULL,NULL,NULL,NULL,NULL),('Treilles','TRE',NULL,NULL,NULL,NULL,NULL),('Trichterbecher','TRI','aka Funnel Beaker (ENG) aka kultura pucharów lejkowatych (PL) aka kultura s nálevkovitými poháry (CZ) aka Культура воронковидных кубков, КВК (RU)',NULL,NULL,NULL,NULL),('Tripolye','TRI','aka Trypillia',NULL,NULL,NULL,NULL),('Tripolye CII, Kasperivtsy','TRI','C is the Late phase of the Tripolye (Trypillia) culture',NULL,NULL,NULL,NULL),('Tripolye CII, Koshilivtsy','TRI','C is the Late phase of the Tripolye (Trypillia) culture',NULL,NULL,NULL,NULL),('Trzciniec','TRZ','aka Trzciniec Cultural Circle aka TCC (ENG) aka Trzciniec-Komarów-Sośnica (PL) aka trzciniecki krąg kulturowy (PL)',NULL,NULL,NULL,NULL),('Tumulus','TUM','aka kultura mogiłowa (PL) aka Hügelgräberkultur (DE) aka mohylová kultura (CZ) aka mound grave culture aka Halomsíros (HU)',NULL,NULL,NULL,NULL),('Tumulus Bohemian-Palatinate','TUM','aka česko-falcká mohylová kultura (CZ)',NULL,NULL,NULL,NULL),('Tumulus Hallstatt','TUM','aka halštatská mohylová kultura (CZ); Tumulus Culture; Hallstatt',NULL,NULL,NULL,NULL),('Tumulus Middle Danube','TUM','aka středodunajská mohylová kultura (CZ)',NULL,NULL,NULL,NULL),('Únětice','ÚNĚ','aka Aunjetitz Kultur (DE) aka kultury unietycka (PL) aka únětická kultura (CZ)',NULL,NULL,NULL,NULL),('Upper Volga','UPP',NULL,NULL,NULL,NULL,NULL),('Urnfield','URN','aka kultura popelnicových polí (CZ) aka kultura pól popielnicowych (PL)',NULL,NULL,NULL,NULL),('Usatovskaya','USA','Usatove (ENG) aka Усатове (UA) aka Usatowo (PL)',NULL,NULL,NULL,NULL),('Vădastra','VĂD',NULL,NULL,NULL,NULL,NULL),('Varna','VAR',NULL,'2024-02-08 16:30:37','2024-02-08 16:30:37','jan@127.0.0.1','jan@127.0.0.1'),('Vasi a Bocca Quadrata','VAS','aka Square Mouth Pottery (ENG)',NULL,NULL,NULL,NULL),('Vatia','VAT',NULL,NULL,NULL,NULL,NULL),('Vatin','VAT','aka Vatinska culture aka Vattin culture aka Vatina (Romanian)',NULL,NULL,NULL,NULL),('Vatya','VAT',NULL,NULL,NULL,NULL,NULL),('Vatya I','VAT',NULL,NULL,NULL,NULL,NULL),('Vatya II','VAT',NULL,NULL,NULL,NULL,NULL),('Vatya III','VAT',NULL,NULL,NULL,NULL,NULL),('Vekerzug','VEK',NULL,'2024-07-16 16:57:18','2024-07-16 16:57:18','robert@127.0.0.1','robert@127.0.0.1'),('Vela Luka','VEL',NULL,'2024-07-23 08:24:30','2024-07-23 08:24:30','jelena@127.0.0.1','jelena@127.0.0.1'),('Velatice','VEL','aka velatická kultura (CZ)',NULL,NULL,NULL,NULL),('Velikent','VEL','late variant of Kura–Araxes in the northeastern Caucasus',NULL,NULL,NULL,NULL),('Velušina-Porodin','VEL',NULL,NULL,NULL,NULL,NULL),('Véraza','VÉR','Vérazien',NULL,NULL,NULL,NULL),('Verbicioara','VER',NULL,NULL,NULL,NULL,NULL),('Veretye','VER',NULL,NULL,NULL,NULL,NULL),('Věteřov','VĚT','aka věteřovská kultura (CZ)',NULL,NULL,NULL,NULL),('Viking','VIK',NULL,NULL,NULL,NULL,NULL),('Vila Nova de São Pedro','VIL','aka VNSP, los Millares (LM) and Bronce I',NULL,NULL,NULL,NULL),('Villeneuve-Saint-Germain','VIL',NULL,NULL,NULL,NULL,NULL),('Vinča','VIN','aka Vinčanska culture',NULL,NULL,NULL,NULL),('Vinča-Dudeşti','VIN',NULL,NULL,NULL,NULL,NULL),('Vinkovci','VIN','aka Vinkovačka culture',NULL,NULL,NULL,NULL),('Vis-Pivnica','VIS',NULL,NULL,NULL,NULL,NULL),('Viss','VIS','a late subculture of Baden in Hungary?','2024-11-18 17:36:56','2024-11-18 17:37:34','jan@127.0.0.1','jan@127.0.0.1'),('Vlaardingen','VLA',NULL,NULL,NULL,NULL,NULL),('Volosovo','VOL',NULL,NULL,NULL,NULL,NULL),('Vossa di Bocca Quadrata','VOS',NULL,NULL,NULL,NULL,NULL),('Vučedol','VUČ','aka Vučedolska culture',NULL,NULL,NULL,NULL),('Walternienburg','WAL',NULL,NULL,NULL,NULL,NULL),('Wartberg','WAR',NULL,NULL,NULL,NULL,NULL),('Wauwil','WAU',NULL,NULL,NULL,NULL,NULL),('West Bulgarian Painted Pottery','WES',NULL,'2024-02-07 14:44:25','2024-02-07 14:44:25','jan@127.0.0.1','jan@127.0.0.1'),('Wietenberg','WIE',NULL,NULL,NULL,NULL,NULL),('Yamnaya','YAM','aka Ямная культура (RU) aka Ямна культура (UA) aka kultura jamowa (PL) aka Pit Grave culture (ENG) aka Ochre Grave Culture (ENG)',NULL,NULL,NULL,NULL),('Younger Linearbandkeramik','YOU',NULL,NULL,NULL,NULL,NULL),('Zagreb','ZAG','aka Zagreb group aka zagrebačka skupina/grupa (local variant of the Urnfield culture)','2025-05-06 13:47:52','2025-05-06 13:47:52','jelena_bulatovic@127.0.0.1','jelena_bulatovic@127.0.0.1'),('Zau','ZAU','aka Zau culture (RO)',NULL,NULL,NULL,NULL),('Želiezovce','ŽEL','kultura żeliezowska (PL) aka želiezovská skupina (SK and CZ) aka Zseliz (ENG)',NULL,NULL,NULL,NULL),('Złota','ZŁO','aka kultura złocka (PL)',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `zoptions_Cultures` ENABLE KEYS */;
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

--
-- Dumping data for table `zoptions_DataCited`
--

LOCK TABLES `zoptions_DataCited` WRITE;
/*!40000 ALTER TABLE `zoptions_DataCited` DISABLE KEYS */;
INSERT INTO `zoptions_DataCited` VALUES ('ABotCharcoal'),('ABotIsotopes'),('ABotPhases'),('ABotSamples'),('ABotSamples_copyNR'),('C14Ghosts'),('C14Samples'),('FaunalBiometrics'),('FaunalIsotopes'),('FaunalIsotopeSequences'),('FaunalSpecies'),('GraveConstruction'),('GraveIndividuals'),('Graves'),('Health'),('HumanIsotopes'),('MaterialCulture'),('MaterialCulture_copySR'),('Metallurgy'),('Monuments'),('Phases'),('PhaseTypes'),('Rites'),('Strontium'),('StrontiumEnvironment'),('StrontiumSequences');
/*!40000 ALTER TABLE `zoptions_DataCited` ENABLE KEYS */;
UNLOCK TABLES;
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

--
-- Dumping data for table `zoptions_DecorStyle`
--

LOCK TABLES `zoptions_DecorStyle` WRITE;
/*!40000 ALTER TABLE `zoptions_DecorStyle` DISABLE KEYS */;
INSERT INTO `zoptions_DecorStyle` VALUES ('Bands','Delienated bands filled with unidentifiable motifs',NULL,NULL,NULL,NULL),('Bands: fishbone','Delienated bands filled with \'fishbone\' motifs (<<<<<<<)',NULL,NULL,NULL,NULL),('Bands: geometric','Delineated bands filled with geometric motifs (chequer, diamonds, criss-cross, zigzag, etc.)',NULL,NULL,NULL,NULL),('Bands: hatches','Delineated band filled with hatches oriented in the same direction (///////). Fragment too small to identify more than one band.',NULL,NULL,NULL,NULL),('Bands: hatches: alternating','Delineated bands filled with hatches (alternating direction between each band). This is usually described as \'Bell Beaker Maritime / International\'.',NULL,NULL,NULL,NULL),('Bands: hatches: unidirectional','Delineated bands filled with hatches oriented in the same direction',NULL,NULL,NULL,NULL),('Complex','Complex decoration that includes a variety of motifs and geometric patterns largely covering the object\'s surface',NULL,NULL,NULL,NULL),('Lines','Linear decoration that cannot be oriented. No filling motifs in between the lines.',NULL,NULL,NULL,NULL),('Lines: fishbone','Linear decoration that cannot be oriented with \'fishbone\' motifs (<<<<<<<)',NULL,NULL,NULL,NULL),('Lines: horizontal','Horizontal lines. No filling motifs in between.',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `zoptions_DecorStyle` ENABLE KEYS */;
UNLOCK TABLES;
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

--
-- Dumping data for table `zoptions_DecorTechn`
--

LOCK TABLES `zoptions_DecorTechn` WRITE;
/*!40000 ALTER TABLE `zoptions_DecorTechn` DISABLE KEYS */;
INSERT INTO `zoptions_DecorTechn` VALUES ('applied','Additional material was applied to the surface of the object, creating a protuberance (e.g., cordons or buttons on a vessel)',NULL,NULL,NULL,NULL),('engraved','The tool was dragged onto the hard surface of the object, removing material (e.g., stone, bone, ivory, fired pottery)',NULL,NULL,NULL,NULL),('impressed','The tool was pressed onto the surface of the object when it was still malleable (e.g., pottery that was yet to be fired)',NULL,NULL,NULL,NULL),('impressed: encrusted','The tool was pressed onto the surface of the object when it was still malleable (e.g., pottery that was yet to be fired);  and a different material was filled in the impression',NULL,NULL,NULL,NULL),('incised','The tool was dragged onto the surface of the object when it was still malleable (e.g., pottery that was yet to be fired)',NULL,NULL,NULL,NULL),('incised: encrusted','The tool was dragged onto the surface when it was still malleable, and a different material was filled in the incision',NULL,NULL,NULL,NULL),('mixed: applied and impressed','Additional material was applied to the surface of the object, creating a protuberance, and a tool was pressed onto this protuberance (e.g., finger-impressed cordons on a vessel)',NULL,NULL,NULL,NULL),('mixed: impressed and incised','The object was decorated using both the impression and incision techniques',NULL,NULL,NULL,NULL),('mixed: impressed, incised, and encrusted','The object was decorated using both the impression and incision techniques, and a different material was filled in the incision',NULL,NULL,NULL,NULL),('painted','A substance was applied as a colored coating to the surface of the object',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `zoptions_DecorTechn` ENABLE KEYS */;
UNLOCK TABLES;
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

--
-- Dumping data for table `zoptions_DecorTool`
--

LOCK TABLES `zoptions_DecorTool` WRITE;
/*!40000 ALTER TABLE `zoptions_DecorTool` DISABLE KEYS */;
INSERT INTO `zoptions_DecorTool` VALUES ('cord','Twisted cord (direction unknown) pressed onto the surface',NULL,NULL,NULL,NULL),('cord: S','S-twisted cord pressed onto the surface',NULL,NULL,NULL,NULL),('cord: Z','Z-twisted cord pressed onto the surface',NULL,NULL,NULL,NULL),('finger','Finger pressed onto the surface',NULL,NULL,NULL,NULL),('indented','Undetermined indented tool (comb or shell) leaving a set number of aligned marks when pressed onto the surface',NULL,NULL,NULL,NULL),('indented: comb','Man-made indented tool (e.g., in wood or bone) pressed onto the surface, leaving a set number of aligned marks',NULL,NULL,NULL,NULL),('indented: shell','Mollusc shell pressed onto the surface, leaving a set number of aligned marks, usually characterised by a slight curvature',NULL,NULL,NULL,NULL),('stamp','Tool leaving a single mark when pressed onto the surface',NULL,NULL,NULL,NULL),('stamp: circular','Tool leaving a single circular mark when pressed onto the surface',NULL,NULL,NULL,NULL),('stamp: quadrangular','Tool leaving a single quadrangular mark when pressed onto the surface',NULL,NULL,NULL,NULL),('stamp: triangular','Tool leaving a single triangular mark when pressed onto the surface',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `zoptions_DecorTool` ENABLE KEYS */;
UNLOCK TABLES;
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

--
-- Dumping data for table `zoptions_FaunalMeasurement`
--

LOCK TABLES `zoptions_FaunalMeasurement` WRITE;
/*!40000 ALTER TABLE `zoptions_FaunalMeasurement` DISABLE KEYS */;
INSERT INTO `zoptions_FaunalMeasurement` VALUES ('BA/4','Basicranial axis: Basion - Synsphenion (= Intersphenoid suture)'),('Ba/5','Basicranial axis: Synsphenion - Prosthion'),('BC/44',NULL),('Bca/36','Breadth at the canine alveoli'),('BD/24','Breadth dorsal to the external auditory meatus'),('Bd','(Greatest) breadth of the distal end'),('BF','Breadth of the Facies articularis'),('BFcd','(Greatest) breadth of the Facies terminalis caudalis (= caudal articular surface)'),('BFcr','(Greatest) breadth of the Facies terminalis cranialis (= cranial articular surface)'),('BFd','(Greatest) breadth of the Facies articularis distalis'),('BFp','(Greatest) breadth of the Facies articularis proximalis (proximal articular surface)'),('BG','Breadth of the glenoid cavity - Greatest breadth of the glenoid angle'),('BL/3','Basal length: Basion - Prosthion'),('BM2',NULL),('BM3','Breadth of the third molar (M3)'),('BPC','(Greatest) breadth across the coronoid process = greatest breadth of the proximal articular surface'),('BPd4',NULL),('Bp','(Greatest) breadth of the proximal end'),('BT','(Greatest) breadth of the trochlea'),('CL/2','Condylobasal length: aboral border of the occipital condyles - Prosthion'),('DC','(Greatest) depth of the Caput femoris'),('Dd','(Greatest) depth of the distal end'),('DLS','(Greatest) diagonal length of the sole'),('Dl','(Greatest) depth of the lateral half'),('Dm','(Greatest) depth of the medial half'),('DPA','Depth across the Processus anconaeus'),('Dp','Depth of the proximal end'),('FbEE/32','Ftontal breadth: Ectorbitale - Ectorbitale'),('FL/9','WARNING: is element specific'),('GB','Greatest breadth'),('GBbpp/26','Greatest breadth of the bases of the paraoccipital processes'),('GBc/18a','Greatest breadth of the carnassial'),('GBfm/27','Greatest breadth of the foramen magnum'),('GBoc/25','Greatest breadth of the occipital condyles'),('Gbs/41','Greatest breadth of skull'),('Gbs/45','Greatest breadth of snout'),('GD','Greatest depth'),('GD/45','Greatest (dorso-basal) diameter of the cornhore base'),('GH','Greatest height (= length)'),('GL','Greatest length'),('GLC','Greatest length from the caput femoris (head)'),('GLF','Greatest length from the Facies articularis cranialis to the Facies articularis caudalis'),('GLl','(Greatest) depth of the lateral half'),('GLm','(Greatest) depth of the medial half'),('GLn/10','Greatest length of the nasals: Nasion - Rhinion'),('GLP','Greatest length of the processus articularis (glenoid process)'),('GLpe','Greatest length of the peripheral (abaxial) half'),('GmB/23','Greatest mastoid breadth = greathest breadth of the occipital triangle: Otion - Otion'),('GNBEE/33','Greatest neurocranium breadth: euryon – euryon'),('Gnb/38','Greatest neurocranium breadth: Euryon - Euryon'),('GPB/34','Greatest palatal breadth: measured across the outer borders of the alveoli'),('H','(Greatest) Height'),('Hfm/28','Height of the foramen magnum: Basion - Opisthion'),('HoT/40','Height of the occipital trinagle: Akrokranion - basion'),('HP',NULL),('LA','Length of the acetabulum including the lip'),('LAR','Length of the acetabulum on the rim'),('LB/11','Length of braincase'),('LBM1/20','Length and breadth of M1, measured at the cingulum'),('LBM2/21','Length and breadth of M2, measured at the cingulum'),('LBS/31','Least breadth of skull = least breadth of the supraorbital processes'),('Lbb/42','Least breadth between the orbits'),('LC/18','Length of the carbasial, measured at the cingulum'),('LCA/19','Length of the carnassial alveolus'),('Lct/15','Length of the cheektooth raw (measured along the alveoli on the buccal side)'),('LD/46','Least (dorso-basal) diameter of the horncore base'),('Ld','Length of the dorsal surface'),('LeP','Length excepting the plantar projection'),('LF','Length of the Facies articularis (articular surface)'),('LG','Length of the glenoid cavity'),('LhP/14','Length of the horizontal part of the palatine: Staphylion - Palatinoorale'),('LhpM/14a','Length of the horizontal part of the palatine correcponding to M 13a'),('Ll','Lateral lenght of the outer side (only in horses)'),('LM2',NULL),('LM3','Length of the third molar (M3)'),('LMR','Length of the molar raw'),('LMr/16','Length of the molar raw (measured along the alveoli on the buccal side)'),('LmT','Length of the medial part of the Trochlea tali'),('LO','Length of the olecranon (only in ruminants)'),('Loc/47','Length of the outer curvature of the horncore'),('LPB/35','Least palatial breadth breadth: measured behind the canines'),('LPd4',NULL),('LPMR','Length of the premolar-molar raw'),('LPR','Length of the premolar raw'),('LPr/17','Lenght of the premolar raw (measured along the alveoli on the buccal side)'),('LZR',NULL),('MBS','Middle breadth of the sole = breadth in the middle of the sole'),('MpL/13','Median palatal length: Staphylion - Prosthion'),('NL/114',NULL),('PL','Physiological length'),('PlCP/13a','Palatal lenght: the median point of intersection of the line joining the deepest indentations'),('SD','Smallest breadth of diaphysis'),('SDO','Smallest depth of the olecranon'),('SLC','Smallest length of the Collum scapulae (neck of the scapula)'),('sL/12','\"Snout\" length: oral border of the orbits (median) - Prosthion'),('TL/1','Total length: Akrokranion - Prosthion'),('UB',NULL),('UnL/7','Upper neurocranium length: Akrokranion - Frontal midpoint'),('VL/8','Viscerocranium length: Nasion - Prosthion'),('ZB/30','Zygomatic breadth: Zygion - Zygion');
/*!40000 ALTER TABLE `zoptions_FaunalMeasurement` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_INSERT_zoptions_FaunalMeasurement` BEFORE INSERT ON `zoptions_FaunalMeasurement` FOR EACH ROW BEGIN SET NEW.`Description` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Description`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Measurement` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Measurement`, '', ' '), '
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
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_UPDATE_zoptions_FaunalMeasurement` BEFORE UPDATE ON `zoptions_FaunalMeasurement` FOR EACH ROW BEGIN SET NEW.`Description` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Description`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Measurement` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Measurement`, '', ' '), '
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

--
-- Dumping data for table `zoptions_GraveConstruction`
--

LOCK TABLES `zoptions_GraveConstruction` WRITE;
/*!40000 ALTER TABLE `zoptions_GraveConstruction` DISABLE KEYS */;
INSERT INTO `zoptions_GraveConstruction` VALUES ('altar','presence of an altar-like structure',NULL,'2023-12-12 13:44:51','robert@127.0.0.1','robert@127.0.0.1'),('barrow','presence of a mound',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('barrow: ditch','barrow subset; presence of a barrow ditch',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('barrow: ditch: discontinued','barrow subset; presence of a barrow ditch with entry points',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('barrow: dug in grave','barrow subset; grave dug into an existing barrow',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('barrow: mound: primary','barrow and mound subset; in case of complex barrow structures it designates the initial mound',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('barrow: mound: quaternary','barrow and mound subset; in case of complex barrow structures it designates the fourth mound',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('barrow: mound: secondary','barrow and mound subset; in case of complex barrow structures it designates the second mound',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('barrow: mound: tertiary','barrow and mound subset; in case of complex barrow structures it designates the third mound',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('barrow: niche grave','barrow  subset; presence of a niche grave',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('barrow: oval','barrow subset; shape oval',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('barrow: post ring','barrow subset; a ring of posts surrounding the barrow','2024-08-07 11:06:38','2024-08-07 11:06:38','robert@127.0.0.1','robert@127.0.0.1'),('barrow: primary grave','the grave for which the barrow/mound was constructed; not dug in',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('barrow: round','barrow subset; shape round',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('barrow: surrounding grave','barrow subset; grave dug outside of the barrow arranged in a way suggesting that the barrow was already in place','2024-08-07 11:05:27','2024-08-07 11:05:27','robert@127.0.0.1','robert@127.0.0.1'),('bog or wetlands deposition','human remains put in a bog or wetlands',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('bone concentration','displaced human remains forming a concentration',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('cave','human remains placed inside a cave',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('cave: entrance','cave subset; human remains placed in the entrance area of a cave',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('cave: scree: thermoclastic','cave and scree subset; thermoclastic cause',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('cave: tomb','cave subset; the architectural modifications of the of original cave show intentional work towards structuring the insides like a tomb',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('cenotaph','grave without human remains',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('clay','clay; presence of clay elements of indeterminate form or function',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('clay: seal','depositional context secured using a clay seal',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('collective grave','grave with more than 1 individual',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('construction: cairn: stone','stone and construction subset; a pile of stones',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('construction: chamber: stone','stone and construction subset; a chamber',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('construction: chamber: wood','wood and construction subset; a chamber',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('construction: circle: stone','stone and construction subset; grave construction of circularly arranged stone',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('construction: cist: stone','stone and construction subset; grave construction resembling a cube (roughly equal sides)',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('construction: cist: wood','wood and construction subset; grave construction resembling a cube (roughly equal sides)',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('construction: coffin','construction subset; coffin for human remains','2024-09-06 18:31:15','2024-09-06 18:31:15','robert@127.0.0.1','robert@127.0.0.1'),('construction: coffin: stone','stone and construction subset; grave construction resembling a rectangle (opposite sides are equal)',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('construction: coffin: wood','wood and construction subset; wooden coffin',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('construction: coffin: wood: linden','wood and construction subset; wooden coffin; linden',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('construction: coffin: wood: oak','wood and construction subset; wooden coffin; oak',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('construction: cover: stone','stone and construction subset; grave covered with stones',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('construction: dividing wall: stone','stone and construction subset; presence of a dividin wall',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('construction: door jambs: stone','stone and construction subset; presence of door jambs',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('construction: facade: wood','wood and construction subset; evidence of a facade',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('construction: frame: stone','stone and construction subset; a stone frame surrounding the human remains',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('construction: frame: wood','wood and construction subset; a wood frame surrounding human remains',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('construction: ledge','the grave included a ledge to possibly allow an easier access to the burying area',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('construction: linear: stone','stone and construction subset; a linear arrangement of stones in the vicinity of the grave',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('construction: oval: stone','stone and construction subset; grave construction resembling an oval',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('construction: packing: stone','stone and construction subset; a large area of stone packing',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('construction: platform',NULL,NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('construction: semi-circle: stone','stone and construction subset; grave construction of semi-circularly arranged stone',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('construction: slab: stone','stone and construction subset; slabs',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('construction: slab: wood','wood and construction subset; slabs',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('construction: stairs','remains placed at the stairs','2024-07-16 13:18:36','2024-07-16 13:18:36','robert@127.0.0.1','robert@127.0.0.1'),('construction: stake: wood','wood and construction subset; a stake used to mount a head',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('construction: stele: stone','stone subset; stele',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('construction: stone','stone subset; indeterminate grave construction made of stone',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('construction: stone: pavement','stone and construction subset; presence of a pavement',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('construction: wall: stone','construction and stone subset; presence of a wall','2024-05-28 13:43:06','2024-05-28 13:43:06','robert@127.0.0.1','robert@127.0.0.1'),('construction: wood','wood and construction subset; presence of a wooden construction',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('construction: wood: enclosure','construction and wood subset; presence of a wooden enclosure surrounding the grave','2024-05-28 13:44:59','2024-05-28 13:44:59','robert@127.0.0.1','robert@127.0.0.1'),('cremation','presence of cremated remains',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('cremation pit','human remains placed inside a cremation pit',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('cremation: scattered','cremation subset; cremated remains found scattered in the grave',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('cremation: urn','cremation subset; cremated remains found inside an urn',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('deposition: boat','body placed on a boat',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('destroyed barrow','barrow destroyed in later phases - anthropological descriptions and quantifications most likely incomplete',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('destroyed grave','grave destroyed in later phases - anthropological descriptions and quantifications most likely incomplete',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('destroyed tomb','tomb destroyed in later phases - anthropological descriptions and quantifications most likely incomplete',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('disturbed','grave disturbed in later phases - anthropological descriptions and quantification most likely incomplete',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('disturbed: animals','grave disturbed in later phases by animals - anthropological descriptions and quantification most likely incomplete',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('ditch','human remains placed inside a ditch',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('ditch: soil extraction','ditch subset; ditch created to extract soil for mound construction which was later re-purposed for burial activities',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('fill','human remains placed in a fill, not on the bottom of a structure',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('fill: refuse','fill subset; refused used',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('fire','evidence of non-cremation related burning in the grave',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('fire: pit','presence of a pit used for fire-involved practices',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('flat grave','grave without visible markers',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('grave: ditch','grave subset; encircled by a ditch',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('grave: primary','grave subset; in case of complex structures it designates the order of creation',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('grave: quaternary','grave subset; in case of complex structures it designates the order of creation',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('grave: quinary','grave subset; in case of complex structures it designates the order of creation',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('grave: robbed','evidence of grave robbing prior to archaeological discovery','2024-09-06 18:33:21','2024-09-06 18:33:21','robert@127.0.0.1','robert@127.0.0.1'),('grave: secondary','grave subset; in case of complex structures it designates the order of creation',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('grave: tertiary','grave subset; in case of complex structures it designates the order of creation',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('hearth','hearth re-used as a grave',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('house','unspecified location within a house',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('house: below','house subset; grave placed below a house',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('house: burnt','house subset; burnt house',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('house: inside','house subset; grave placed inside a house',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('house: mortuary: stone','house subset; house built specifically for funerary purposes',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('house: outside','house subset; grave placed outside a house',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('house: pit house grave','house subset; pit house used as a grave',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('inhumation: vessel','the body was placed inside a vessel',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('kurgan: grave','a grave within a kurgan','2025-03-21 14:30:12','2025-03-21 14:30:12','sam@127.0.0.1','sam@127.0.0.1'),('long barrow','presence of an elongated mound',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('long barrow: dug in grave','long barrow subset; grave dug into an existing long barrow',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('long pit','grave made by digging a long pit',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('marked grave','flat grave marked',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('megalith','megalithic structure comprising of at least one large rock',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('megalith: dolmen: wood','megalith subset; a grave construction in a type of megalith but made of wood (?)',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('megalith: menhir','megalith subset; a grave construction with an erected elognated rock',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('midden: dug through: shell','midden and shell subset; the human remains were dug in the midden',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('midden: shell','midden and shell subset; the human remains were found in the midden',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('midden: vicinity: shell','midden and shell subset; the human remains were found in the vicinity of the midden',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('niche grave','grave with a shaft with a single, branching pit',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('occupation horizon','human remains placed outside of a well-defined settlement structure',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('ossuary','large collection of redeposited human remains',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('oven','human remains placed inside an oven',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('pit grave','grave made by digging a pit',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('pit grave: boulder setting','pit grave subset; a pit accompanied by a foundation for a boulder',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('pit grave: circular','pit grave subset; a pit with a circular outline',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('pit grave: complex','pit grave subset; a pit complex (multiple re-cutting events) reused for burial purposes','2023-12-15 11:38:08','2023-12-15 11:38:08','robert@127.0.0.1','robert@127.0.0.1'),('pit grave: construction','pit grave with constructed internal architecture','2024-06-11 12:55:28','2024-06-11 12:56:16','sam@127.0.0.1','sam@127.0.0.1'),('pit grave: cremation remains','pit grave subset; pit where ashes were deposited together with cremated remains',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('pit grave: double pit','pit grave subset; a doubled pit',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('pit grave: dug into','pit grave subset; grave dug into a pit','2024-05-28 13:44:08','2024-05-28 13:44:16','robert@127.0.0.1','robert@127.0.0.1'),('pit grave: elliptical','pit grave subset; a pit with an elliptical outline','2023-12-15 11:37:17','2023-12-15 11:37:17','robert@127.0.0.1','robert@127.0.0.1'),('pit grave: elongated','pit grave subset; a pit with an elongated outline',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('pit grave: irregular','pit grave subset; a pit with an irregular outline',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('pit grave: long pit','pit grave subset; grave pit dug into a long pit',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('pit grave: oval','pit grave subset; a pit with an oval outline',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('pit grave: pit area','pit grave subset; pit palimpsest used for a grave',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('pit grave: post row','pit grave subset; pit grave with a row of posts',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('pit grave: posts','pit grave subset; presence of posts',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('pit grave: posts: five','pit grave subset; pit grave with 5 posts',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('pit grave: posts: four','pit grave subset; pit grave with 4 posts',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('pit grave: posts: six','pit grave subset; pit grave with 6 posts',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('pit grave: posts: three','pit grave subset; pit grave with 3 posts',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('pit grave: posts: two','pit grave subset; pit grave with 2 posts',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('pit grave: rectangular','pit grave subset; a pit with with a rectangular outline',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('pit grave: refuse pit','pit grave subset; existing refuse pit re-used a grave',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('pit grave: reused grave','pit grave subset; grave which was later re-opened to add another grave',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('pit grave: reused pit','pit grave subset; emptied pit used as a pit grave',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('pit grave: reused pit: storage','pit grave subset; emptied storage pit used as a pit grave',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('pit grave: rounded','pit grave subset; rounded pit outline',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('pit grave: shaft grave','pit grave subset; graves placed in a single pit one on top of another',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('pit grave: trapezoid','pit grave subset; a pit with a trapezoid cut',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('pottery: sherd cover','pottery used as a burial cover',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('rampart','human remains found on an rampart','2024-07-29 17:16:32','2024-07-29 17:16:32','robert@127.0.0.1','robert@127.0.0.1'),('rock cut grave','grave was carved into the underlying bedrock',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('shaft tomb',NULL,NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('shroud','evidence of a shroud for wrapping the deceased',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('shroud: birch bark','shroud subset; birch bark used to cover human remains',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('stone: cup marks','stone subset; stones with cup marks',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('stone: stones','stone subset; stones not identified as grave goods but found around the body',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('tarand','quadrangular sone encosures for burials in the ground; one grave can have several tarands. Main distribution from Estonia, Finland and eastern central Sweden, some in Latvia and NW Russia','2024-11-04 12:58:34','2024-11-04 12:59:23','sam@127.0.0.1','sam@127.0.0.1'),('tomb: megalith',NULL,NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('tomb: megalith: chamber tomb','tomb and megalith subset; a grave construction with at least 1 grave chamber',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('tomb: megalith: chamber tomb: chamber','tomb, megalith, and chamber tomb subset; human remains inside the grave chamber',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('tomb: megalith: chamber tomb: outside chamber','tomb, megalith, and chamber tomb subset; human remains ouside the grave chamber',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('tomb: megalith: dolmen: stone','tomb, megalith, and dolmen subset; a grave construction single-chamber megalithic tomb, usually consisting of two or more vertical megaliths supporting a large flat horizontal capstone or \"table\"',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('tomb: megalith: passage tomb','tomb and megalith subset; a grave construction with at least 1 grave chamberwith a narraow access passage',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('tomb: megalith: passage tomb: corridor','tomb, megalith, and passage tomb subset; a grave construction with at least 1 grave chamberwith a narraow access passage; human remains deposited in the corridor',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('tomb: megalith: passage tomb: entrance','tomb, megalith, and passage tomb subset; a grave construction with at least 1 grave chamberwith a narraow access passage; human remains deposited in the entrance area',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('tomb: megalith: tholos',NULL,NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('tomb: megaxylon','tomb subset; a wood-based, megalith-like funerary structure',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('tomb: Passy','tomb subset; earthworks are identified by a ditch or a linear sequence of pits outlining the form of a corridor, around ten metres wide at maximum with length varying from 10–20 m to more than 300 m (ghesq2019a)',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('wood','wood; presence of wood elements of indeterminate form or function',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1'),('wood: burnt','wood subset; evidence of burning (not cremation)',NULL,'2023-12-12 13:44:33','robert@127.0.0.1','robert@127.0.0.1');
/*!40000 ALTER TABLE `zoptions_GraveConstruction` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_INSERT_zoptions_GraveConstruction` BEFORE INSERT ON `zoptions_GraveConstruction` FOR EACH ROW BEGIN SET NEW.`Description` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Description`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Element` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Element`, '', ' '), '
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
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_UPDATE_zoptions_GraveConstruction` BEFORE UPDATE ON `zoptions_GraveConstruction` FOR EACH ROW BEGIN SET NEW.`Description` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Description`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Element` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Element`, '', ' '), '
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

--
-- Dumping data for table `zoptions_Health_Status`
--

LOCK TABLES `zoptions_Health_Status` WRITE;
/*!40000 ALTER TABLE `zoptions_Health_Status` DISABLE KEYS */;
INSERT INTO `zoptions_Health_Status` VALUES ('absent'),('present'),('present: antemortem'),('present: perimortem'),('present: postmortem');
/*!40000 ALTER TABLE `zoptions_Health_Status` ENABLE KEYS */;
UNLOCK TABLES;
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

--
-- Dumping data for table `zoptions_Health_Trait`
--

LOCK TABLES `zoptions_Health_Trait` WRITE;
/*!40000 ALTER TABLE `zoptions_Health_Trait` DISABLE KEYS */;
INSERT INTO `zoptions_Health_Trait` VALUES ('behaviour: atrophy'),('behaviour: bone crushing'),('behaviour: enthesopathy'),('behaviour: epicondylitis'),('behaviour: heavy deposits of calculus on teeth'),('behaviour: hip dysplasia'),('behaviour: multiple childbirths'),('behaviour: muscle marks'),('behaviour: osteochondritis dissecans'),('behaviour: osteophytosis'),('behaviour: Schmorl\'s node'),('behaviour: spondylolysis'),('behaviour: squatting facet'),('behaviour: strong muscle insertions at tuberositas deltoidea'),('behaviour: strong muscle insertions at tuberositas glutaea'),('behaviour: subacromial joint'),('behaviour: tooth cavities'),('behaviour: tooth loss'),('behaviour: tooth wear'),('behaviour: tooth wear: excessive attrition'),('development: rider\'s syndrome'),('developmental: benign cortical defect'),('developmental: blastemal desmocranium'),('developmental: foramen magnum variation'),('developmental: new bone structure'),('developmental: not grown sacrum'),('developmental: os acromiale'),('developmental: ossa Wormiana'),('developmental: paraxial mesoderm'),('developmental: persistent suture'),('developmental: proximal femoral focal deficiency'),('developmental: spina bifida oculta'),('developmental: synostosis'),('diet: apples'),('disease: abcess'),('disease: abcess: chronic'),('disease: ankylosis'),('disease: arthritis'),('disease: caries'),('disease: chronic anemia'),('disease: compression fracture'),('disease: cribra cranii'),('disease: cribra orbitalia'),('disease: deformation'),('disease: dental calculus'),('disease: dental enamel hypoplasia'),('disease: endocranial lesion'),('disease: hyperostosis frontalis interna'),('disease: hypervascularisation'),('disease: infection'),('disease: juvenile idiopathic arthiritis'),('disease: kyphosis'),('disease: lesions'),('disease: metabolic'),('disease: ossification of ligaments'),('disease: osteochondrosis'),('disease: osteoporosis'),('disease: periodontitis'),('disease: periostitis'),('disease: Pommer\'s knots'),('disease: posttraumatic arthritis'),('disease: Pott\'s disease'),('disease: pseudoartrosis'),('disease: rickets'),('disease: scoliosis'),('disease: scurvy'),('disease: spondylosis'),('disease: tartar'),('disease: tubercular spondylitis'),('disease: tuberculosis'),('disease: unspecified pathology'),('disease: vitamin D deficiency'),('disease: Yersinia pestis'),('genetic: lactase persistence'),('genetic: microdontia'),('protrusion'),('stress: ectocranial porosity'),('stress: Harris lines'),('stress: porosity'),('stress: porous hyperostosis'),('trauma'),('trauma: apples'),('trauma: avulsion injury'),('trauma: bite marks'),('trauma: blunt'),('trauma: broke in hole'),('trauma: carving'),('trauma: cord around the neck'),('trauma: cut mark'),('trauma: defleshing'),('trauma: disarticulation'),('trauma: fracture'),('trauma: indent'),('trauma: lesion'),('trauma: malunion fracture'),('trauma: missing limb'),('trauma: myositis ossificans'),('trauma: ossified hematoma'),('trauma: parry fracture'),('trauma: perforation'),('trauma: periostitic plate'),('trauma: scalping'),('trauma: scarring'),('trauma: stuck weapon'),('trauma: trimming'),('treatment: trepanation'),('vestigial: biradicular lower left mandibular canine'),('vestigial: double foramen mentale'),('vestigial: foramen entepicondyloideum'),('vestigial: fossa hypertrochanterica'),('vestigial: fossa pectoralis'),('vestigial: fossa solei'),('vestigial: ponticulus mylohyoideus'),('vestigial: supratrochlear foramen'),('vestigial: third trochanter');
/*!40000 ALTER TABLE `zoptions_Health_Trait` ENABLE KEYS */;
UNLOCK TABLES;
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

--
-- Dumping data for table `zoptions_Laboratory_Methods`
--

LOCK TABLES `zoptions_Laboratory_Methods` WRITE;
/*!40000 ALTER TABLE `zoptions_Laboratory_Methods` DISABLE KEYS */;
INSERT INTO `zoptions_Laboratory_Methods` VALUES ('AIR',NULL,NULL),('AMS','radiocarbon\r\n','Accelerator Mass Spectrometry measurement'),('AMS?','radiocarbon\r\n','Probably an Accelerator Mass Spectrometry measurement'),('Finnigan MAT 261',NULL,NULL),('Finnigan MAT 262RPQ',NULL,NULL),('GPC','radiocarbon\r\n','Gas Proportional Counting'),('IRMS','stable isotopes\r\n','Isotope Ratio Mass Spectrometry'),('LSC','radiocarbon\r\n','Liquid Scintillation Counting'),('LSC (HP)','radiocarbon\r\n','Liquid Scintillation Counting, High-Precision (large sample)'),('LSC/GPC','radiocarbon\r\n','Uncertain, either LSC or GPC'),('macroscopic examination',NULL,NULL),('MC-ICP-MS',NULL,NULL),('Nu Plasma 3 MC-ICP',NULL,NULL),('PCR test',NULL,NULL),('PIMMS',NULL,NULL),('Post treatment',NULL,NULL),('Pre treatment',NULL,NULL),('Quadrupole ICP-MS',NULL,NULL),('SEM-EDS',NULL,'Scanning Electron Microscopy with Energy Dispersive X-ray Spectroscopy, used in metallurgy.'),('Thermo Finnegan Triton TIMS',NULL,NULL),('Thermo Finnigan MAT252',NULL,NULL),('Thermo ScientificTM Triton PlusTM',NULL,NULL),('TIMS',NULL,NULL),('VPDB',NULL,NULL),('VSMOW',NULL,NULL);
/*!40000 ALTER TABLE `zoptions_Laboratory_Methods` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_INSERT_zoptions_Laboratory_Methods` BEFORE INSERT ON `zoptions_Laboratory_Methods` FOR EACH ROW BEGIN SET NEW.`Description` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Description`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Method` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Method`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`research` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`research`, '', ' '), '
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
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_UPDATE_zoptions_Laboratory_Methods` BEFORE UPDATE ON `zoptions_Laboratory_Methods` FOR EACH ROW BEGIN SET NEW.`Description` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Description`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Method` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Method`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`research` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`research`, '', ' '), '
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

--
-- Dumping data for table `zoptions_Material`
--

LOCK TABLES `zoptions_Material` WRITE;
/*!40000 ALTER TABLE `zoptions_Material` DISABLE KEYS */;
INSERT INTO `zoptions_Material` VALUES ('antler',NULL),('ashes',NULL),('bone',NULL),('bone / enamel',NULL),('bone / tooth',NULL),('bone bioapatite',NULL),('bone collagen',NULL),('charcoal',NULL),('charcoal: wood',NULL),('clay',NULL),('coprolite',NULL),('cortical bone',NULL),('dentine',NULL),('enamel',NULL),('enamel bioapatite',NULL),('enamel carbonate',NULL),('fur',NULL),('hair',NULL),('horn',NULL),('humic acid',NULL),('intestine contents',NULL),('intestine wall',NULL),('leather',NULL),('limebast',NULL),('mixed','bulk sample of several materials, see material notes'),('nail',NULL),('pigment','particulate material that provide colour; can be organic or inorganic'),('plant',NULL),('plant: seed',NULL),('primary dentine collagen',NULL),('residue',NULL),('residue: food',NULL),('residue: tar',NULL),('sediment',NULL),('sediment: dark earth',NULL),('sediment: gyttja',NULL),('sediment: humus',NULL),('sediment: organic',NULL),('sediment: peat',NULL),('sediment: travertine',NULL),('sediment: turf',NULL),('shell',NULL),('sherd',NULL),('sherd: temper: organic',NULL),('stone','rock'),('textile',NULL),('tooth',NULL),('trabecular bone',NULL),('wood',NULL);
/*!40000 ALTER TABLE `zoptions_Material` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_INSERT_zoptions_Material` BEFORE INSERT ON `zoptions_Material` FOR EACH ROW BEGIN SET NEW.`description` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`description`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Material` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Material`, '', ' '), '
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
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_UPDATE_zoptions_Material` BEFORE UPDATE ON `zoptions_Material` FOR EACH ROW BEGIN SET NEW.`description` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`description`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Material` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Material`, '', ' '), '
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

--
-- Dumping data for table `zoptions_MaterialCulture_Material`
--

LOCK TABLES `zoptions_MaterialCulture_Material` WRITE;
/*!40000 ALTER TABLE `zoptions_MaterialCulture_Material` DISABLE KEYS */;
INSERT INTO `zoptions_MaterialCulture_Material` VALUES ('antler'),('antler/bone'),('antler/horn'),('ash'),('bark'),('bone'),('bone/ivory/shell/stone'),('bone/shell'),('bone/stone'),('bone: calcaneus'),('bone: cannon'),('bone: carpalia'),('bone: coracoid'),('bone: costae'),('bone: femur'),('bone: fibula'),('bone: horn'),('bone: horn: core'),('bone: humerus'),('bone: hyoid'),('bone: long'),('bone: mandible'),('bone: maxilla'),('bone: metacarpal'),('bone: metacarpal: distal'),('bone: metacarpus/metatarsus'),('bone: metapodial'),('bone: metapodial: distal'),('bone: metatarsal'),('bone: metatarsal: distal'),('bone: paw'),('bone: pelvic'),('bone: phalange'),('bone: radius'),('bone: rib'),('bone: scapula'),('bone: shoulder blade'),('bone: skeleton'),('bone: skull'),('bone: talus'),('bone: tibia'),('bone: ulna'),('bone: vertebra'),('bone: vertebra: cervical'),('charcoal'),('clay'),('echinite'),('fungus'),('glass'),('graphite'),('ivory'),('metal'),('metal: bar'),('metal: sheet'),('metal: wire'),('organic'),('pigment'),('plant'),('resin'),('sediment'),('shell'),('shell/ivory'),('shell/stone'),('stone'),('tooth'),('tooth: canine'),('tooth: canine: upper'),('tooth: dentin'),('tooth: incisor'),('tooth: molar'),('wood');
/*!40000 ALTER TABLE `zoptions_MaterialCulture_Material` ENABLE KEYS */;
UNLOCK TABLES;
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

--
-- Dumping data for table `zoptions_MaterialCulture_MaterialType`
--

LOCK TABLES `zoptions_MaterialCulture_MaterialType` WRITE;
/*!40000 ALTER TABLE `zoptions_MaterialCulture_MaterialType` DISABLE KEYS */;
INSERT INTO `zoptions_MaterialCulture_MaterialType` VALUES ('amber'),('amphibolite'),('animal'),('animal: auroch'),('animal: bear'),('animal: beaver'),('animal: bird'),('animal: bovid'),('animal: carnivore'),('animal: carp'),('animal: catfish'),('animal: cattle'),('animal: cattle, sheep/goat'),('animal: cattle/auroch'),('animal: cattle/deer'),('animal: chicken'),('animal: cloven'),('animal: crane'),('animal: deer'),('animal: deer/cattle'),('animal: deer/sheep/goat'),('animal: dog'),('animal: dog/bear/fox/marten'),('animal: domesticated and bird'),('animal: elephant'),('animal: elk'),('animal: fish'),('animal: fox'),('animal: gerbil'),('animal: goat'),('animal: hare'),('animal: horse'),('animal: large mammal'),('animal: large ruminant'),('animal: marine'),('animal: marmot'),('animal: marten'),('animal: mollusca'),('animal: mollusca: bivalve'),('animal: mollusca: freshwater'),('animal: mollusca: freshwater: river'),('animal: mollusca: marine'),('animal: mollusca: oyster'),('animal: mollusca: snail'),('animal: moose'),('animal: pig'),('animal: pig/dog'),('animal: pig/mollusca'),('animal: predator'),('animal: rabbit'),('animal: red deer'),('animal: red deer/auroch'),('animal: reindeer'),('animal: rodent'),('animal: roe deer'),('animal: ruminant'),('animal: sea urchin'),('animal: sheep'),('animal: sheep/goat'),('animal: small'),('animal: small ruminant'),('animal: steppe bison'),('animal: sturgeon'),('animal: swan'),('animal: tortoise'),('animal: vyrezub'),('animal: weasel'),('animal: wild boar'),('animal: wolf'),('ash'),('basalt'),('blade'),('brass'),('bronze'),('calcite'),('calcium amphibolite'),('carnelian'),('chalcedony'),('chalk'),('charcoal'),('clay: daub'),('clay: pottery'),('copper'),('copper/bronze'),('copper: alloy'),('copper: arsenic'),('copper: oxide'),('crystalline limestone'),('daub'),('flint'),('flint/chert'),('flint: black'),('flint: calcareous'),('flint: Jurassic-Cracow'),('flint: Krumlovský les-Hornstein II'),('flint: Szentgál-radiolarite'),('flint: Volhynian'),('fungus: hoof fungus'),('gold'),('grain'),('granite'),('greenstone'),('haematite'),('Hornblendenschiefer'),('hornstone'),('human'),('iron'),('ironstone'),('jade/nephrite'),('jasper'),('jet'),('kaolin'),('lignite'),('limestone'),('limestone/marble/shell'),('limnic quartzite'),('lydite'),('manganite'),('marble'),('mauve'),('muscovite'),('obsidian'),('ochre'),('ochre: red'),('ochre: yellow'),('pigment'),('plaster'),('pumice'),('pyrite'),('quartz'),('quartzite'),('quartzite: amphibole'),('quartzite: amphibole: glauconite'),('quartzite: sandstone'),('radiolarite'),('sandstone'),('sandstone: feldspar: amphibole: glauconite'),('sandstone: red'),('sapropelite'),('schist'),('serpentine'),('serpentinite'),('silicite'),('silver'),('slate'),('slate: black'),('slate: gneiss'),('slate: siliceous'),('soapstone: aqua'),('ultrabasite: metamorphosed'),('vein quartz'),('volcanic'),('volcanic/amphibolite'),('wood: alder'),('wood: birch');
/*!40000 ALTER TABLE `zoptions_MaterialCulture_MaterialType` ENABLE KEYS */;
UNLOCK TABLES;
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

--
-- Dumping data for table `zoptions_MaterialCulture_Object`
--

LOCK TABLES `zoptions_MaterialCulture_Object` WRITE;
/*!40000 ALTER TABLE `zoptions_MaterialCulture_Object` DISABLE KEYS */;
INSERT INTO `zoptions_MaterialCulture_Object` VALUES ('adze',NULL),('altar',NULL),('amulet',NULL),('anklet',NULL),('application',NULL),('application: collar',NULL),('armlet',NULL),('armring',NULL),('arrowhead',NULL),('arrowhead/spearhead',NULL),('artefact','designates an object which was intentionally modified but could not be functionally identified'),('ash',NULL),('awl',NULL),('awl/pin',NULL),('awl: preform',NULL),('axe',NULL),('axe-sceptre',NULL),('axe: battle',NULL),('axe: flat',NULL),('axe: hammer',NULL),('ball',NULL),('bangle','ornamental band'),('bead',NULL),('bead/pendant',NULL),('belt',NULL),('belt: buckle',NULL),('belt: chain',NULL),('belt: ring',NULL),('blade',NULL),('blade-scraper',NULL),('blade: sickle',NULL),('bladelet',NULL),('boat',NULL),('bow',NULL),('bracelet',NULL),('bracer',NULL),('bracer/whetstone',NULL),('buckle',NULL),('burial',NULL),('burin',NULL),('burin: micro',NULL),('button',NULL),('ceramic: fragments',NULL),('cereal grains',NULL),('chain',NULL),('charcoal',NULL),('cheek piece',NULL),('chip',NULL),('chisel',NULL),('clasp',NULL),('collar',NULL),('comb',NULL),('container',NULL),('core',NULL),('cracks',NULL),('dagger',NULL),('debitage',NULL),('debitage: chip',NULL),('disc',NULL),('drill',NULL),('earring',NULL),('end-scraper',NULL),('face plastering',NULL),('fibula',NULL),('figurine',NULL),('figurine: anthropomorphic',NULL),('fishing weight',NULL),('fittings',NULL),('flake',NULL),('flake-knife',NULL),('flint',NULL),('frame',NULL),('gag',NULL),('gouge',NULL),('grattoir',NULL),('grinder',NULL),('grinding stone',NULL),('hammer',NULL),('harpoon',NULL),('harpoon: head',NULL),('headgear: antlers',NULL),('headstone',NULL),('hoe',NULL),('hook',NULL),('horse bit',NULL),('implement',NULL),('jewellry',NULL),('knife',NULL),('knife-scraper',NULL),('knob',NULL),('lamella',NULL),('leg tube',NULL),('lid',NULL),('loom weight',NULL),('mace',NULL),('mace: head',NULL),('mallet',NULL),('mat',NULL),('microlith',NULL),('mirror',NULL),('nail',NULL),('necklace',NULL),('necklace: chain',NULL),('needle',NULL),('node',NULL),('ornament',NULL),('ornament: hair',NULL),('pearl',NULL),('pebble',NULL),('pectoral',NULL),('pedestal',NULL),('pendant',NULL),('pendant/bracelet',NULL),('pestle',NULL),('phalera',NULL),('picker',NULL),('piercer',NULL),('pigment',NULL),('pigment: lump',NULL),('pin',NULL),('plaque',NULL),('plaster',NULL),('plate',NULL),('plug',NULL),('point',NULL),('polisher',NULL),('preproduct',NULL),('press',NULL),('purse',NULL),('quiver: fittings',NULL),('rectangle',NULL),('refuse',NULL),('remains: animal','animal remains within a grave'),('remains: human','additional human remains separate from the main grave individual'),('ring',NULL),('ring: chain',NULL),('ring: hair',NULL),('ring: spiral',NULL),('ring: temple',NULL),('ring: temple: spiral',NULL),('rivet',NULL),('scabbard',NULL),('scabbard: chape',NULL),('scissors',NULL),('scraper',NULL),('scraper: side',NULL),('sculpture',NULL),('seed',NULL),('segment',NULL),('shard',NULL),('shears',NULL),('sheath',NULL),('sheath: penis',NULL),('shield',NULL),('shield: boss',NULL),('shield: edge',NULL),('shield: fittings',NULL),('slab',NULL),('slag',NULL),('sliver',NULL),('smoother',NULL),('spatula',NULL),('spear: butt',NULL),('spearhead',NULL),('spearhead: point',NULL),('spike',NULL),('spindle whorl',NULL),('spiral',NULL),('splinter',NULL),('spoon',NULL),('squeezer',NULL),('staff',NULL),('strike-a-light',NULL),('string',NULL),('sword',NULL),('sword: hilt: rivet',NULL),('sword: knife',NULL),('sword: rapier',NULL),('tablet',NULL),('tinder',NULL),('tip',NULL),('tool',NULL),('tool: medical',NULL),('torque',NULL),('trapeze',NULL),('triangle',NULL),('tube',NULL),('tweezers',NULL),('vessel',NULL),('wedge',NULL),('weight',NULL),('wheel',NULL),('whetstone',NULL),('wristguard',NULL);
/*!40000 ALTER TABLE `zoptions_MaterialCulture_Object` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_INSERT_zoptions_MaterialCulture_Object` BEFORE INSERT ON `zoptions_MaterialCulture_Object` FOR EACH ROW BEGIN SET NEW.`Description` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Description`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Object` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Object`, '', ' '), '
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
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_UPDATE_zoptions_MaterialCulture_Object` BEFORE UPDATE ON `zoptions_MaterialCulture_Object` FOR EACH ROW BEGIN SET NEW.`Description` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Description`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Object` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Object`, '', ' '), '
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

--
-- Dumping data for table `zoptions_Periods`
--

LOCK TABLES `zoptions_Periods` WRITE;
/*!40000 ALTER TABLE `zoptions_Periods` DISABLE KEYS */;
INSERT INTO `zoptions_Periods` VALUES ('EAP','Palaeolithic (early)',NULL),('EBA','Bronze Age (early)',NULL),('EE','Eneolithic (early)','Equivalent to \'Early Copper Age\' and \'Early Chalcolithic\''),('EIA','Iron Age (early)','aka Hallstatt'),('ELE','Eneolithic (early-late)',NULL),('ELN','Neolithic (early/late)','Uncertain or transitional'),('EM','Mesolithic (early)',NULL),('EMBA','Bronze Age (early/middle)','Uncertain or transitional'),('EME','Eneolithic (early and middle)',NULL),('EMED','Medieval (early)',NULL),('EMIA','Early and Middle Iron Age',NULL),('EMM','Mesolithic (early/middle)','Uncertain or transitional'),('EMN','Neolithic (early/middle)','Uncertain or transitional'),('EMP','Modern Period (early)',NULL),('EMRP','Early/Middle Roman Period',NULL),('EN','Neolithic (early)',NULL),('EP','Epipalaeolithic',NULL),('EPEM','Epipalaeolithic/Mesolithic (early)','Uncertain or transitional'),('ERP','Early Roman Period',NULL),('FBA','Bronze Age (final)',NULL),('FBAEIA','Final Bronze Age and Early Iron Age',NULL),('FE','Eneolithic (final)','Equivalent to \'Final Copper Age\' and \'Final Chalcolithic\''),('FEEBA','Eneolithic (final) and Early Bronze Age','Uncertain or transitional'),('FM','Mesolithic (final)',NULL),('FN','Neolithic (final)',NULL),('FP','Palaeolithic (final)',NULL),('HOL','Holocene',NULL),('IA','Iron Age',NULL),('LBA','Bronze Age (late)',NULL),('LBAEIA','Late Bronze Age/Early Iron Age','Uncertain or transitional'),('LBAPRIA','Late Bronze Age/Pre-Roman Iron Age','Uncertain or transitional'),('LE','Eneolithic (late)','Equivalent to \'Late Copper Age\' and \'Late Chalcolithic\''),('LEEBA','Late Eneolithic/Early Bronze Age','Uncertain or transitional'),('LFBA','Bronze Age (late and final)',NULL),('LFE','Eneolithic (late and final)',NULL),('LIA','Iron Age (late)','contemporary with the Migration Period'),('LIAB','Iron Age (late)','aka La Tène (at the Balkans)'),('LIAEMED','Iron Age (late)/Medieval (early)',NULL),('LIAER','Late Iron Age/Early Roman Period','aka Late La Tène/ Early Roman period'),('LM','Mesolithic (late)',NULL),('LMED','Medieval (late)',NULL),('LMEN','Mesolithic/Early Neolithic','Uncertain or transitional'),('LMP','Modern Period (late)',NULL),('LN','Neolithic (late)',NULL),('LNEBA','Late Neolithic/Early Bronze Age','Uncertain or transitional'),('LNEE','Late Neolithic/Early Eneolithic','Uncertain or transitional'),('LNMBA','Late Neolithic/Middle Bronze Age','Uncertain or transitional'),('LNPE','Neolithic (late) - Eneolithic (proto)',NULL),('LP','Palaeolithic (late)',NULL),('LR','Late Roman Period',NULL),('LREMP','Late Roman/Early Medieval Period',NULL),('MA','Metal Ages','Post Neolithic but pre Roman Iron Age'),('MBA','Bronze Age (middle)',NULL),('ME','Eneolithic (middle)','Equivalent to \'Full Copper Age\' and \'Middle Copper Age\' and \'Middle Chalcolithic\''),('MIA','Iron Age (middle)','aka La Tène'),('MIP','Migration Period','mostly used in Central Europe'),('MLBA','Bronze Age (middle and/or late)','Uncertain or transitional'),('MLE','Eneolithic (middle and late)',NULL),('MLIA','Middle and Late Iron Age',NULL),('MLM','Mesolithic (middle/late)',NULL),('MLN','Neolithic (middle/late)','Uncertain or transitional'),('MLRP','Middle/Late Roman Period',NULL),('MM','Mesolithic (middle)',NULL),('MMED','Medieval (middle)',NULL),('MN','Neolithic (middle)',NULL),('MP','Palaeolithic (middle)',NULL),('MRP','Middle Roman Period',NULL),('NE','Neolithic and Eneolithic',NULL),('NEBA','Neolithic (undetermined) - Early Bronze Age','Unertain'),('PE','Eneolithic (proto)',NULL),('PEEE','Eneolithic (proto and early)',NULL),('PEEEME','Eneolithic (proto, early and middle)',NULL),('PPN','Pre-pottery Neolithic','Uncertain or transitional'),('PPNB','Pre-pottery Neolithic B',NULL),('PRE','General prehistory','Unspecified or transitional, multi-phase (e.g. in megaltihic tombs)'),('PRIA','Pre-Roman Iron Age',NULL),('RIA','Iron Age (Roman)','contemporary with the existence of the Roman Empire'),('RIP','Roman Imperial Period',NULL),('RMEM','Roman/Migration/Early Medieval','Uncertain'),('RP','Roman Period','mostly used in Central Europe'),('UBA','Bronze Age (undetermined)',NULL),('UE','Eneolithic (undetermined)','Equivalent to \'Copper Age\' and \'Chalcolithic\''),('UEUBA','Eneolithic/Bronze Age (undetermined)','Uncertain or transitional'),('UIA','Iron Age (undetermined)',NULL),('UIAR','Iron Age to Roman (undetermined)',NULL),('UM','Mesolithic (undetermined)',NULL),('UMED','Medieval (undetermined)',NULL),('UMEDMP','Medieval/Modern (undetermined)','uncertain or transitional'),('UMP','Modern Period (undetermined)',NULL),('UMUN','Mesolithic (undetermined) - Neolithic (undetermined)','uncertain'),('UN','Neolithic (undetermined)',NULL),('UP','Palaeolithic (undetermined)',NULL);
/*!40000 ALTER TABLE `zoptions_Periods` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_INSERT_zoptions_Periods` BEFORE INSERT ON `zoptions_Periods` FOR EACH ROW BEGIN SET NEW.`Notes` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Notes`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Period` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Period`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`PeriodID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`PeriodID`, '', ' '), '
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
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_UPDATE_zoptions_Periods` BEFORE UPDATE ON `zoptions_Periods` FOR EACH ROW BEGIN SET NEW.`Notes` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Notes`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Period` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Period`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`PeriodID` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`PeriodID`, '', ' '), '
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

--
-- Dumping data for table `zoptions_Position`
--

LOCK TABLES `zoptions_Position` WRITE;
/*!40000 ALTER TABLE `zoptions_Position` DISABLE KEYS */;
INSERT INTO `zoptions_Position` VALUES ('above'),('back'),('bum'),('front'),('left'),('lower'),('lower left'),('lower right'),('right'),('upper'),('upper left'),('upper right');
/*!40000 ALTER TABLE `zoptions_Position` ENABLE KEYS */;
UNLOCK TABLES;
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

--
-- Dumping data for table `zoptions_Preservation`
--

LOCK TABLES `zoptions_Preservation` WRITE;
/*!40000 ALTER TABLE `zoptions_Preservation` DISABLE KEYS */;
INSERT INTO `zoptions_Preservation` VALUES ('bent','the object was bent before deposition'),('burnt','the object was thermally altered'),('burnt: calcinated','burnt subset; the thermal alternation resulted in calcination of the material'),('burnt: charred','burnt subset; the thermal alternation led to charring; equivalent for carbonised in instances where plant remains are reported'),('burnt: cremated','burnt subset; the thermal alternation resulted in the destruction of organic components'),('complete','the object was preserved in its entirety'),('dissolved','the object has dissolved but these remains allowed identifying its presence'),('fragment','single fragment of an object'),('fragmented','single object broken into multiple fragments'),('impressed: pottery/plaster/daub','impressed subset; the object was disovered as an impression in a clay/plaster/daub material'),('lost','object only existing in the literature as the original has been lost'),('mineralized','some degree of conversion of organics into a mineral or inorganic material, an early form of fossilisation'),('reconstructed','the object was reconstructed'),('repaired','the object was found in a state indicating past repair'),('uncharred','the item did not undergo charring'),('waterlogged','object found in a wet environment');
/*!40000 ALTER TABLE `zoptions_Preservation` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_INSERT_zoptions_Preservation` BEFORE INSERT ON `zoptions_Preservation` FOR EACH ROW BEGIN SET NEW.`description` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`description`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`preservation` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`preservation`, '', ' '), '
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
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_UPDATE_zoptions_Preservation` BEFORE UPDATE ON `zoptions_Preservation` FOR EACH ROW BEGIN SET NEW.`description` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`description`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`preservation` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`preservation`, '', ' '), '
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

--
-- Dumping data for table `zoptions_Quantity`
--

LOCK TABLES `zoptions_Quantity` WRITE;
/*!40000 ALTER TABLE `zoptions_Quantity` DISABLE KEYS */;
INSERT INTO `zoptions_Quantity` VALUES ('bulk','multiple entities in a single sample'),('single','a single entity sample');
/*!40000 ALTER TABLE `zoptions_Quantity` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_INSERT_zoptions_Quantity` BEFORE INSERT ON `zoptions_Quantity` FOR EACH ROW BEGIN SET NEW.`description` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`description`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`quantity` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`quantity`, '', ' '), '
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
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_UPDATE_zoptions_Quantity` BEFORE UPDATE ON `zoptions_Quantity` FOR EACH ROW BEGIN SET NEW.`description` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`description`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`quantity` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`quantity`, '', ' '), '
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

--
-- Dumping data for table `zoptions_Shape`
--

LOCK TABLES `zoptions_Shape` WRITE;
/*!40000 ALTER TABLE `zoptions_Shape` DISABLE KEYS */;
INSERT INTO `zoptions_Shape` VALUES ('Adriatic',NULL),('amphora',NULL),('anthropomorphic',NULL),('anthropomorphic: face',NULL),('arch-shaped',NULL),('backed',NULL),('band-shaped',NULL),('barbed',NULL),('barbed and tanged',NULL),('barbed and tanged: triangular',NULL),('barrel-shaped',NULL),('base: concave',NULL),('base: flat',NULL),('base: rounded',NULL),('base: split',NULL),('basket-shaped',NULL),('beaker',NULL),('biconical',NULL),('bifacial',NULL),('binocular',NULL),('biserial',NULL),('blade',NULL),('blade: déjeté',NULL),('boat-shaped',NULL),('bottle',NULL),('boulder',NULL),('bowl',NULL),('bowl/cup',NULL),('broken with a transverse groove on the end part',NULL),('button-shaped',NULL),('calotte-shaped',NULL),('carinated',NULL),('circular',NULL),('closed ends, rectangular section',NULL),('coil',NULL),('concave',NULL),('conical',NULL),('convex',NULL),('cordiform',NULL),('cortical',NULL),('crescent',NULL),('crystal',NULL),('cup',NULL),('cup: handle: one',NULL),('curved',NULL),('cylindrical',NULL),('cylindrical/sliced',NULL),('Cypriot',NULL),('Dentalium badense-shaped',NULL),('diamond-shaped',NULL),('diamond-shaped biface',NULL),('disc-shaped',NULL),('dish',NULL),('disk-shaped',NULL),('double-sided',NULL),('double-spiral',NULL),('Duchcov',NULL),('ellipse',NULL),('eyelet',NULL),('fan-shaped',NULL),('fin-ray',NULL),('foot-shaped',NULL),('funnel-shaped',NULL),('globular',NULL),('globular head',NULL),('gravel',NULL),('hallmark',NULL),('handle',NULL),('handle: wood',NULL),('handle: zoomorphic: elk head',NULL),('hanging',NULL),('head: round',NULL),('hemispherical',NULL),('hollow-knobbed',NULL),('hoof-shaped',NULL),('irregular',NULL),('jar',NULL),('jug',NULL),('keeled',NULL),('knife-like',NULL),('leaf-formed',NULL),('leaf-shaped',NULL),('lenticular',NULL),('lid',NULL),('lid/foot',NULL),('lid: circular',NULL),('Lochhalsnadel',NULL),('lockable',NULL),('Lockenring',NULL),('Lomborg IIB',NULL),('macehead-shaped',NULL),('medial',NULL),('mesial',NULL),('microlith',NULL),('miniature',NULL),('mug',NULL),('Münsingen',NULL),('nail-headed',NULL),('nail-shaped',NULL),('oblong',NULL),('oval',NULL),('Ösenkopfnadel',NULL),('pedestalled',NULL),('plate',NULL),('pointed',NULL),('pot',NULL),('pyramidal',NULL),('rectangular',NULL),('rhomboidal',NULL),('ribbed',NULL),('ring-shaped',NULL),('riveted',NULL),('rounded',NULL),('rounded rectangular',NULL),('S-shaped',NULL),('Saint-Triphon',NULL),('segmented',NULL),('semicircular',NULL),('serrated',NULL),('serration: one-sided',NULL),('sheet',NULL),('sherd: reused',NULL),('shoulder blade',NULL),('sieve',NULL),('sliced',NULL),('sliced in half',NULL),('socket',NULL),('spectacle',NULL),('spherical',NULL),('spiked',NULL),('spiral',NULL),('spool-shaped',NULL),('square',NULL),('star-shaped',NULL),('storage vessel',NULL),('subrectangular',NULL),('terminal',NULL),('tetrahedral',NULL),('tetrapod',NULL),('thick-necked',NULL),('thin-bladed, thin-necked',NULL),('three-sided',NULL),('tip: rounded',NULL),('tortuous',NULL),('transverse',NULL),('trapezodial',NULL),('trapezoidal',NULL),('triangular',NULL),('tripod',NULL),('truncated',NULL),('truncated flake',NULL),('tubular',NULL),('tulip-shaped',NULL),('twisted',NULL),('type 3a',NULL),('type 4',NULL),('type 6',NULL),('type 7',NULL),('type A',NULL),('type A1',NULL),('type A2',NULL),('type A3',NULL),('type B',NULL),('type B1',NULL),('type D',NULL),('type IA',NULL),('type IA/B',NULL),('type IB',NULL),('type ID',NULL),('type IIA',NULL),('type IIB',NULL),('type Ix',NULL),('type VA',NULL),('type VIB',NULL),('U-shaped',NULL),('V&U-shaped',NULL),('V-shaped',NULL),('vase',NULL),('vase-shaped head',NULL),('vase: handle: one',NULL),('vase: handle: two',NULL),('vertical perforation',NULL),('wagon model',NULL),('willow leaf-shaped',NULL),('wire: flat',NULL),('wire: twisted',NULL),('with loop',NULL),('zoomorphic',NULL),('zoomorphic: bird',NULL),('zoomorphic: bovine',NULL),('zoomorphic: elk: head',NULL),('zoomorphic: water bird: two-headed',NULL);
/*!40000 ALTER TABLE `zoptions_Shape` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_INSERT_zoptions_Shape` BEFORE INSERT ON `zoptions_Shape` FOR EACH ROW BEGIN SET NEW.`description` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`description`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`shape` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`shape`, '', ' '), '
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
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_UPDATE_zoptions_Shape` BEFORE UPDATE ON `zoptions_Shape` FOR EACH ROW BEGIN SET NEW.`description` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`description`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`shape` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`shape`, '', ' '), '
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

--
-- Dumping data for table `zoptions_SkeletalElements`
--

LOCK TABLES `zoptions_SkeletalElements` WRITE;
/*!40000 ALTER TABLE `zoptions_SkeletalElements` DISABLE KEYS */;
INSERT INTO `zoptions_SkeletalElements` VALUES ('antler',NULL,NULL,NULL),('arms',NULL,'Y',NULL),('astragalus','aka talus',NULL,NULL),('atlas','the first cervical vertebra (C1)',NULL,NULL),('axis','aka epistropheus, the second cervical vertebra (C2)',NULL,NULL),('bone',NULL,NULL,NULL),('calcaneus','aka calcaneum',NULL,NULL),('carpal',NULL,NULL,NULL),('carpal/tarsal',NULL,'Y',NULL),('carpal: carpal 2+3',NULL,NULL,NULL),('carpal: os pyramidal',NULL,NULL,NULL),('carpal: pisiform',NULL,NULL,NULL),('clavicle',NULL,NULL,NULL),('cleitrum',NULL,NULL,NULL),('coracoid',NULL,NULL,NULL),('dentale',NULL,NULL,NULL),('femur',NULL,NULL,NULL),('fibula',NULL,NULL,NULL),('flat bone',NULL,NULL,NULL),('hair',NULL,'Y',NULL),('horncore',NULL,NULL,NULL),('humerus',NULL,NULL,NULL),('legs',NULL,'Y',NULL),('long bone',NULL,NULL,NULL),('mandible',NULL,NULL,NULL),('maxilla',NULL,NULL,NULL),('metacarpal','aka metacarpus',NULL,NULL),('metacarpal 2','aka metacarpus 2',NULL,NULL),('metacarpal 3','aka metacarpus 3',NULL,NULL),('metacarpal 4','aka metacarpus 4',NULL,NULL),('metacarpal 5','aka metacarpus 5',NULL,NULL),('metapodial',NULL,NULL,NULL),('metatarsal','aka metatarsus',NULL,NULL),('metatarsal 2','aka metatarsus 2',NULL,NULL),('metatarsal 3','aka metatarsus 3',NULL,NULL),('metatarsal 4','aka metatarsus 4',NULL,NULL),('metatarsal 5','aka metatarsus 5',NULL,NULL),('nail',NULL,'Y',NULL),('os centroquartale',NULL,'Y',NULL),('os centrotarsale',NULL,'Y',NULL),('os malleolare',NULL,NULL,NULL),('PH3',NULL,'Y','phalanx 3'),('PH3 anterior',NULL,'Y','phalanx 3: anterior'),('PH3 posterior',NULL,'Y','phalanx 3: posterior'),('patella',NULL,NULL,NULL),('pelvis','aka os coxae, coxal bone, innominate bone, hip bone (including pelvic parts - ichium, illium, and pubis)',NULL,NULL),('phalanx',NULL,NULL,NULL),('phalanx 1',NULL,NULL,NULL),('phalanx 1: anterior',NULL,NULL,NULL),('phalanx 1: posterior',NULL,NULL,NULL),('phalanx 2',NULL,NULL,NULL),('phalanx 2: anterior',NULL,NULL,NULL),('phalanx 2: posterior',NULL,NULL,NULL),('phalanx 3',NULL,NULL,NULL),('phalanx 3: anterior',NULL,NULL,NULL),('phalanx 3: posterior',NULL,NULL,NULL),('praemaxilla',NULL,NULL,NULL),('preopercular',NULL,NULL,NULL),('radius',NULL,NULL,NULL),('rib','(costa)',NULL,NULL),('sacrum','aka sacral vertebrae',NULL,NULL),('scapula',NULL,NULL,NULL),('sesamoid',NULL,NULL,NULL),('skeleton: entire',NULL,'Y',NULL),('skull','(cranium)',NULL,NULL),('skull: frontal','aka frontale',NULL,NULL),('skull: occipital','aka occipitale',NULL,NULL),('skull: parasphenoid',NULL,NULL,NULL),('skull: parietal','aka parietale',NULL,NULL),('skull: pars petrosa','aka petrosum, perioticum, petrous bone','Y',NULL),('skull: temporal','aka temporalis',NULL,NULL),('skull: zygomatic','aka zygomaticus',NULL,NULL),('tarsal',NULL,NULL,NULL),('tarsal 3','aka tarsale 3',NULL,NULL),('tarsal 4','aka tarsale 4','Y',NULL),('tarsal: naviculare',NULL,NULL,NULL),('tarsal: naviculocuboid',NULL,NULL,NULL),('tibia',NULL,NULL,NULL),('tooth',NULL,NULL,NULL),('tooth: C','permanent (adult) canine',NULL,NULL),('tooth: c','deciduous (milk) canine',NULL,NULL),('tooth: I','permanent (adult) incisor (I1 or I2 or I3)',NULL,NULL),('tooth: I1','permanent (adult)  incisor 1',NULL,NULL),('tooth: I2','permanent (adult)  incisor 2',NULL,NULL),('tooth: i','deciduous (milk) incisor (i1 or i2 or i3)',NULL,NULL),('tooth: i1','deciduous (milk) incisor 1',NULL,NULL),('tooth: i2','deciduous (milk) incisor 2',NULL,NULL),('tooth: M','permanent (adult) molar (M1 or M2 or M3)',NULL,NULL),('tooth: M1','permanent (adult) molar 1',NULL,NULL),('tooth: M2','permanent (adult) molar 2',NULL,NULL),('tooth: M3','permanent (adult) molar 3',NULL,NULL),('tooth: m','deciduous (milk) premolar (m1 or m2)','Y',NULL),('tooth: m1','deciduous (milk) preomar m1','Y',NULL),('tooth: m2','deciduous (milk) premolar m2','Y',NULL),('tooth: P','permanent (adult) premolar (P1 or P2 or P3 or P4)',NULL,NULL),('tooth: P1','permanent (adult) premolar 1',NULL,NULL),('tooth: P2','permanent (adult) premolar 2',NULL,NULL),('tooth: P3','permanent (adult) premolar 3',NULL,NULL),('tooth: P4','permanent (adult) premolar 4',NULL,NULL),('torso',NULL,'Y',NULL),('ulna',NULL,NULL,NULL),('vertebra',NULL,NULL,NULL),('vertebra: cervical',NULL,NULL,NULL),('vertebra: lumbar',NULL,NULL,NULL),('vertebra: thoracic',NULL,NULL,NULL);
/*!40000 ALTER TABLE `zoptions_SkeletalElements` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_INSERT_zoptions_SkeletalElements` BEFORE INSERT ON `zoptions_SkeletalElements` FOR EACH ROW BEGIN SET NEW.`check` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`check`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`description` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`description`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Element` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Element`, '', ' '), '
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
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_UPDATE_zoptions_SkeletalElements` BEFORE UPDATE ON `zoptions_SkeletalElements` FOR EACH ROW BEGIN SET NEW.`check` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`check`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`description` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`description`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Element` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Element`, '', ' '), '
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

--
-- Dumping data for table `zoptions_TaxaList`
--

LOCK TABLES `zoptions_TaxaList` WRITE;
/*!40000 ALTER TABLE `zoptions_TaxaList` DISABLE KEYS */;
INSERT INTO `zoptions_TaxaList` VALUES ('ABIEALB','Abies alba','alba','Abies','wild',NULL,NULL,'Pinaceae','Plant'),('ABIESPE','Abies spp.',NULL,'Abies','wild',NULL,NULL,'Pinaceae','Plant'),('ABIETAX','Abies alba/Taxus baccata',NULL,NULL,'wild',NULL,NULL,NULL,'Plant'),('ABUTTEO','Abutilon teophrasti','teophrasti','Abutilon','wild',NULL,NULL,'Malvaceae','Plant'),('ACERCAM','Acer campestre','campestre','Acer','wild',NULL,NULL,'Aceraceae','Plant'),('ACERPLA','Acer platanoides','platanoides','Acer','wild',NULL,NULL,'Aceraceae','Plant'),('ACERPSE','Acer pseudoplatanus','pseudoplatanus','Acer','wild',NULL,NULL,'Aceraceae','Plant'),('ACERSPE','Acer sp.',NULL,'Acer','wild',NULL,NULL,'Aceraceae','Plant'),('ACHIMIL','Achillea millefolium','millefolium','Achillea','wild',NULL,NULL,'Asteraceae (Compositae)','Plant'),('ACINARV','Acinos arvensis','arvensis','Acinos','wild',NULL,NULL,'Lamiaceae (Labiatae)','Plant'),('ACTASPI','Actaea spicata','spicata','Actaea','wild',NULL,NULL,'Ranunculaceae','Plant'),('ADONAES','Adonis aestivalis','aestivalis','Adonis','wild',NULL,NULL,'Ranunculaceae','Plant'),('ADONANN','Adonis annua','annua','Adonis','wild',NULL,NULL,'Ranunculaceae','Plant'),('ADONFLA','Adonis flammea','flammea','Adonis','wild',NULL,NULL,'Ranunculaceae','Plant'),('ADONSPE','Adonis spp.',NULL,'Adonis','wild',NULL,NULL,'Ranunculaceae','Plant'),('AEGISPE','Aegilops spp.',NULL,'Aegilops','wild',NULL,NULL,'Poaceae (Gramineae)','Plant'),('AEGISPL','Aegilops speltoides','speltoides','Aegilops','wild',NULL,NULL,'Poaceae (Gramineae)','Plant'),('AETHCYN','Aethusa cynapium','cynapium','Aethusa','wild',NULL,NULL,'Apiaceae(Umbelliferae)','Plant'),('AGRIEUP','Agrimonia eupatoria','eupatoria','Agrimonia','wild',NULL,NULL,'Rosaceae','Plant'),('AGROGIT','Agrostemma githago','githago','Agrostemma','wild',NULL,NULL,'Caryophyllaceae','Plant'),('AGROREP','Agropyon repens','repens','Agropyron','wild',NULL,NULL,'Poaceae (Gramineae)','Plant'),('AGROSPE','Agrostis spp.',NULL,'Agrostis','wild',NULL,NULL,'Poaceae (Gramineae)','Plant'),('AGROSTO','Agrostis stolonifera','stolonifera','Agrostis','wild',NULL,NULL,'Poaceae (Gramineae)','Plant'),('AGRPSPE','Agropyron spp.',NULL,'Agropyron','wild',NULL,NULL,'Poaceae (Gramineae)','Plant'),('AIRASPE','Aira spp.',NULL,'Aira','wild',NULL,NULL,'Poaceae (Gramineae)','Plant'),('AJUGCHA','Ajuga chamaepitys','chamaepitys','Ajuga','wild',NULL,NULL,'Lamiaceae (Labiatae)','Plant'),('AJUGGEN','Ajuga genevensis','genevensis','Ajuga','wild',NULL,NULL,'Lamiaceae (Labiatae)','Plant'),('AJUGREP','Ajuga reptans','reptans','Ajuga','wild',NULL,NULL,'Lamiaceae (Labiatae)','Plant'),('AJUGSPE','Ajuga spp.',NULL,'Ajuga','wild',NULL,NULL,'Lamiaceae (Labiatae)','Plant'),('AJUTEUC','Ajuga/Teucrium sp.',NULL,NULL,'wild',NULL,NULL,'Lamiaceae (Labiatae)','Plant'),('ALCHSPE','Alchemilla spp.',NULL,'Alchemilla','wild',NULL,NULL,'Rosaceae','Plant'),('ALIPLAQ','Alisma plantago-aquatica','plantago-aquatica','Alisma','wild',NULL,NULL,'Alismataceae','Plant'),('ALISSPE','Alisma spp.',NULL,'Alisma','wild',NULL,NULL,'Alismataceae','Plant'),('ALKASPE','Alkanna sp.',NULL,'Alkanna','wild',NULL,NULL,'Boraginaceae','Plant'),('ALLAOFF','Alliaria officinalis','officinalis','Alliaria','wild',NULL,NULL,'Brassicaceae (Cruciferae)','Plant'),('ALLISPE','Allium spp.',NULL,'Allium','wild',NULL,NULL,'Liliaceae','Plant'),('ALLIURS','Allium ursinum','ursinum','Allium','wild',NULL,NULL,'Liliaceae','Plant'),('ALNUGLU','Alnus glutinosa','glutinosa','Alnus','wild',NULL,NULL,'Betulaceae','Plant'),('ALNUSPE','Alnus spp.',NULL,'Alnus','wild',NULL,NULL,'Betulaceae','Plant'),('ALOPSPE','Alopecurus',NULL,'Aira','wild',NULL,NULL,'Poaceae (Gramineae)','Plant'),('ALTHMAL','Althaea/Malva spp.',NULL,NULL,'wild',NULL,NULL,'Malvaceae','Plant'),('ALTHOFF','Althaea officinalis','officinalis','Althaea','wild',NULL,NULL,'Malvaceae','Plant'),('ALYSSU','Alyssum spp.',NULL,'Alyssum','wild',NULL,NULL,'Brassicaceae (Cruciferae)','Plant'),('AMARGRA','Amaranthus graecizans','graecizans','Amaranthus','wild',NULL,NULL,'Amaranthaceae','Plant'),('AMARIND','Amaranthaceae indeterminate',NULL,NULL,'wild',NULL,NULL,'Amaranthaceae','Plant'),('AMARSPE','Amaranthus spp.',NULL,'Amaranthus','wild',NULL,NULL,'Amaranthaceae','Plant'),('AMMIMAJ','Ammi majus','majus','Ammi ','wild',NULL,NULL,'Apiaceae(Umbelliferae)','Plant'),('AMMOARE','Ammophila arenaria','arenaria','Ammophila','wild',NULL,NULL,'Poaceae (Gramineae)','Plant'),('ANAGARV','Anagallis arvensis','arvensis','Anagallis','wild',NULL,NULL,'Primulaceae','Plant'),('ANCHARV','Anchusa arvensis','arvensis','Anchusa','wild',NULL,NULL,'Boraginaceae','Plant'),('ANCHOFF','Anchusa officinalis','officinalis','Anchusa','wild',NULL,NULL,'Boraginaceae','Plant'),('ANDRSPE','Androsace spp.',NULL,'Androsace','wild',NULL,NULL,'Primulaceae','Plant'),('ANETGRA','Anethum graveolens','graveolens','Anethum','wild',NULL,NULL,'Apiaceae(Umbelliferae)','Plant'),('ANTHARV','Anthemis arvensis','arvensis','Anthemis','wild',NULL,NULL,'Asteraceae (Compositae)','Plant'),('ANTHSPE','Anthemis spp.',NULL,'Anthemis','wild',NULL,NULL,'Asteraceae (Compositae)','Plant'),('ANTHTIN','Anthemis tinctoria','tinctoria','Anthemis','wild',NULL,NULL,'Asteraceae (Compositae)','Plant'),('ANTXODO','Anthoxanthum odoratum','odoratum','Anthoxanthum','wild',NULL,NULL,'Poaceae (Gramineae)','Plant'),('APHAARV','Aphanes arvensis','arvensis','Aphanes','wild',NULL,NULL,'Rosaceae','Plant'),('APHAMIC','Aphanes microcarpa','microcarpa','Aphanes','wild',NULL,NULL,'Rosaceae','Plant'),('APHANSPE','Aphanopleura spp.',NULL,'Aphanopleura',NULL,NULL,NULL,'Apiaceae','Plant'),('APHASPE','Aphanes spp.',NULL,'Aphanes','wild',NULL,NULL,'Rosaceae','Plant'),('APIAIND','Apiaceae indeterminate',NULL,NULL,'wild/domestic',NULL,NULL,'Apiaceae(Umbelliferae)','Plant'),('APIUGRA','Apium graveolens','graveolens','Apium','wild',NULL,NULL,'Apiaceae(Umbelliferae)','Plant'),('APIUINU','Apium inondatum','inondatum','Apium','wild',NULL,NULL,'Apiaceae(Umbelliferae)','Plant'),('APIUNOD','Apium nodiflorum aka Helosciadium nodiflorum ','nodiflorum','Apium','wild',NULL,NULL,'Apiaceae(Umbelliferae)','Plant'),('AQUIVUL','Aquilegia vulgaris','vulgaris','Aquilegia','wild',NULL,NULL,'Ranunculaceae','Plant'),('ARBCONI','14C Arboribus Coniferous',NULL,NULL,'wild',NULL,NULL,NULL,'Plant'),('ARBDECI','14C Arboribus Deciduous',NULL,NULL,'wild',NULL,NULL,NULL,'Plant'),('ARBDECO','14C Arboribus Deciduous+Coniferous',NULL,NULL,'wild',NULL,NULL,NULL,'Plant'),('ARBUUNE','Arbutus unedo','unedo','Arbutus','wild',NULL,NULL,'Ericaceae','Plant'),('ARCOUVU','Arctostaphylus uva-ursi','uva-ursi','Arctostaphylus','wild',NULL,NULL,'Ericaceae','Plant'),('ARCTLAP','Arctium lappa','lappa','Arctium','wild',NULL,NULL,'Asteraceae (Compositae)','Plant'),('ARCTMIN','Arctium minus','minus','Arctium','wild',NULL,NULL,'Asteraceae (Compositae)','Plant'),('ARCTSPE','Arctium spp.',NULL,'Arctium','wild',NULL,NULL,'Asteraceae (Compositae)','Plant'),('ARENSER','Arenaria serpyllifolia','serpyllifolia','Arenaria','wild',NULL,NULL,'Caryophyllaceae','Plant'),('ARENSPE','Arenaria sp.',NULL,'Arenaria','wild',NULL,NULL,'Caryophyllaceae','Plant'),('ARNESPE','Arnebia sp.',NULL,NULL,'wild',NULL,NULL,'Boraginaceae','Plant'),('ARRHELA','Arrhenatherum elatius','elatius','Arrhenatherum','wild',NULL,NULL,'Poaceae (Gramineae)','Plant'),('ARTECAM','Artemisia campestris','campestris','Artemisia','wild',NULL,NULL,'Asteraceae (Compositae)','Plant'),('ARTESPE','Artemisia spp.',NULL,'Artemisia','wild',NULL,NULL,'Asteraceae (Compositae)','Plant'),('ARTEVUL','Artemisia vulgaris','vulgaris','Artemisia','wild',NULL,NULL,'Asteraceae (Compositae)','Plant'),('ARUNDIO','Aruncus dioicus','dioicus','Aruncus','wild',NULL,NULL,'Rosaceae','Plant'),('ARUNSPE','Arundo donax','donax','Arundo','wild',NULL,NULL,'Poaceae (Gramineae)','Plant'),('ASAREUR','Asarum europaeum','europaeum','Asarum','wild',NULL,NULL,'Aristolochiaceae','Plant'),('ASPEARV','Asperula arvensis','arvensis','Asperula','wild',NULL,NULL,'Rubiaceae','Plant'),('ASPEGAL','Asperula/Galium spp.',NULL,NULL,'wild',NULL,NULL,'Rubiaceae','Plant'),('ASPEPRO','Asperugo procumbens','procumbens','Asperugo',NULL,NULL,NULL,'Boraginaceae','Plant'),('ASPESPE','Asperula spp.',NULL,'Asperula','wild',NULL,NULL,'Rubiaceae','Plant'),('ASTEIND','Asteraceae indeterminate',NULL,NULL,'wild',NULL,NULL,NULL,'Plant'),('ASTETRI','Aster tripolium','tripolium','Aster','wild',NULL,NULL,'Asteraceae (Compositae)','Plant'),('ASTRGCI','Astragalus cicer','cicer','Astragalus','wild',NULL,NULL,'Fabaceae (Leguminosae)','Plant'),('ASTRGLY','Astragalus glycyphyllos','glycyphyllos','Astragalus','wild',NULL,NULL,'Fabaceae (Leguminosae)','Plant'),('ASTRSPE','Astragalus spp.',NULL,'Astragalus','wild',NULL,NULL,'Fabaceae (Leguminosae)','Plant'),('ATHNISY','Anthriscus nitida/sylvestris',NULL,'Anthriscus','wild',NULL,NULL,'Apiaceae(Umbelliferae)','Plant'),('ATRILIT','Atriplex littoralis','littoralis','Atriplex','wild',NULL,NULL,'Chenopodiaceae','Plant'),('ATRIPAT','Atriplex patula','patula','Atriplex','wild',NULL,NULL,'Chenopodiaceae','Plant'),('ATRISPE','Atriplex spp.',NULL,'Atriplex','wild',NULL,NULL,'Chenopodiaceae','Plant'),('ATRLIHA','Atriplex littoralis/hastata',NULL,'Atriplex','wild',NULL,NULL,'Chenopodiaceae','Plant'),('ATROBED','Atropa bella-donna','bella-donna','Atropa','wild',NULL,NULL,'Solanaceae','Plant'),('ATRPAHA','Atriplex patula/hastata',NULL,'Atriplex','wild',NULL,NULL,'Chenopodiaceae','Plant'),('ATRPAPR','Atriplex patula/prostrata',NULL,'Atriplex','wild',NULL,NULL,'Chenopodiaceae','Plant'),('AVEFAST','Avena fatua/sterilis',NULL,'Avena','wild',NULL,NULL,'Poaceae (Gramineae)','Plant'),('AVENBRO','Avena/Bromus spp.',NULL,NULL,'wild',NULL,NULL,'Poaceae (Gramineae)','Plant'),('AVENFAT','Avena fatua','fatua','Avena','wild',NULL,NULL,'Poaceae (Gramineae)','Plant'),('AVENHOR','Avena/Hordeum',NULL,NULL,'wild',NULL,NULL,'Poaceae (Gramineae)','Plant'),('AVENNUD','Avena sativa var. nuda','nuda','Avena','wild',NULL,NULL,'Poaceae (Gramineae)','Plant'),('AVENSAT','Avena sativa','sativa','Avena','domestic',NULL,NULL,'Poaceae (Gramineae)','Plant'),('AVENSPE','Avena spp.',NULL,'Avena','wild/domestic',NULL,NULL,'Poaceae (Gramineae)','Plant'),('AVENSTE','Avena sterilis','sterilis','Avena','wild',NULL,NULL,'Poaceae (Gramineae)','Plant'),('abrabjo','Abramis bjoerkna','bjoerkna','Abramis','wild','Fish','Actinopterygii','Cyprinidae','Animal'),('abrabra','Abramis brama','brama','Abramis','wild','Fish','Pisces','Cyprinidae','Animal'),('abraspe','Abramis sp.',NULL,'Abramis','wild','Fish','Actinopterygii','Cyprinidae','Animal'),('accigen','Accipiter gentilis','gentilis','Accipiter','wild','Bird','Aves','Accipitridae','Animal'),('acciind','Accipitriformes',NULL,NULL,'wild','Bird','Aves',NULL,'Animal'),('accinis','Accipiter nisus','nisus','Accipiter','wild','Bird','Aves','Accipitridae','Animal'),('accistu','Accipenser sturio','sturio','Acipenser','wild','Fish','Actinopterygii','Acipenseridae','Animal'),('acercer','Acerina cernua/Gymnocephalus cernuus','cernua','Acerina','wild','Fish','Actinopterygii','Percidae','Animal'),('acerspe','Acerina sp.',NULL,'Acerina','wild','Fish',NULL,NULL,'Animal'),('acipens','Acipenseridae',NULL,NULL,'wild','Fish',NULL,'Acipenseridae','Animal'),('acipgue','Acipenser gueldenstaedtii','gueldenstaedtii','Acipenser','wild','Fish','Pisces','Acipenseridae','Animal'),('aciprut','Acipenser ruthenus','ruthenus','Acipenser','wild','Fish',NULL,NULL,'Animal'),('acipspe','Acipenser sp.',NULL,'Acipenser','wild','Fish',NULL,NULL,'Animal'),('acipste','Acipenser stellatus','stellatus','Acipenser','wild','Fish',NULL,NULL,'Animal'),('acipstu','Acipenser sturio','sturio','Acipenser','wild','Fish','Actinopterygii','Acipenseridae','Animal'),('acropal','Acrocephalus palustris','palustris','Acrocephalus','wild','Bird','Aves','Acrocephalidae','Animal'),('actiind','Actinopterygii indeterminate',NULL,NULL,'wild','Fish','Actinopterygii',NULL,'Animal'),('alauarv','Alauda arvensis','arvensis','Alauda','wild','Bird','Aves','Alaudidae','Animal'),('albualb','Alburnus alburnus','alburnus','Alburnus','wild','Fish','Actinopterygii','Cyprinidae','Animal'),('alcaimp','Alca impennis','impennis','Alca','wild','Bird','Aves','Alcidae','Animal'),('alcator','Alca torda','torda','Alca','wild','Bird','Aves','Alcidae','Animal'),('alcealc','Alces alces','alces','Alces','wild','Land mammal','Mammalia','Cervidae','Animal'),('alcebos','Alces alces / Bos primigenius',NULL,NULL,'wild','Land mammal','Mammalia',NULL,'Animal'),('alciind','Alcidae',NULL,NULL,'wild','Bird','Aves','Alcidae','Animal'),('alecruf','Alectoris rufa','rufa','Alectoris','wild','Bird','Aves','Phasianidae','Animal'),('alecspe','Alectoris species',NULL,'Alectoris','wild','Bird','Aves','Phasianidae','Animal'),('alosalo','Alosa alosa','alosa','Alosa','wild','Fish','Actinopterygii','Clupeidae','Animal'),('alosfal','Alosa fallax','fallax','Alosa','wild','Fish','Actinopterygii','Clupeidae','Animal'),('alosspe','Alosa species',NULL,'Alosa','wild','Fish','Actinopterygii','Clupeidae','Animal'),('ammospe','Ammondytes species',NULL,'Ammondytes','wild','Fish','Actinopterygii','Ammodytidae','Animal'),('amphind','Amphibia',NULL,NULL,'wild','Amphibia','Amphibia',NULL,'Animal'),('anadspe','Anadara sp.',NULL,'Anadara','wild','Mollusc','Bivalvia','Arcidae','Animal'),('anasacu','Anas acuta','acuta','Anas','wild','Bird','Aves','Anatidae','Animal'),('anascly','Anas clypeata','clypeata','Anas','wild','Bird','Aves','Anatidae','Animal'),('anascre','Anas crecca','crecca','Anas','wild','Bird','Aves','Anatidae','Animal'),('anaspen','Anas penelope','penelope','Anas','wild','Bird','Aves','Anatidae','Animal'),('anaspla','Anas platyrhynchos','platyrhynchos','Anas','wild','Bird','Aves','Anatidae','Animal'),('anasque','Anas querquedula','querquedula','Anas','wild','Bird','Aves','Anatidae','Animal'),('anasspe','Anas species',NULL,'Anas','wild','Bird','Aves','Anatidae','Animal'),('anasstr','Anas strepera','strepera','Anas','wild','Bird','Aves','Anatidae','Animal'),('anatind','Anatidae',NULL,NULL,'wild','Bird','Aves','Anatidae','Animal'),('anguang','Anguilla anguilla','anguilla','Anguilla','wild','Fish','Actinopterygii','Anguillidae','Animal'),('anguind','Anguilliformes',NULL,NULL,'wild','Fish','Pisces',NULL,'Animal'),('animind','Animalia indeterminate (Animal indeterminate)',NULL,NULL,NULL,NULL,NULL,NULL,'Animal'),('anodana','Anodonta anatina','anatina','Anodonta','wild','Mollusc','Bivalvia',NULL,'Animal'),('anodcyg','Anodonta cygnaea','cygnaea','Anodonta','wild','Mollusc','Bivalvia',NULL,'Animal'),('anodspe','Anodonta sp.',NULL,'Anodonta','wild','Mollusc','Bivalvia','Unionidae','Animal'),('anomeph','Anomia ephippium','ephippium','Anomia','wild','Mollusc','Bivalvia','Anomiidae','Animal'),('ansealb','Anser albifrons','albifrons','Anser','wild','Bird','Aves','Anatidae','Animal'),('anseans','Anser anser','anser','Anser','wild','Bird','Aves','Anatidae','Animal'),('anseery','Anser erythropus','erythropus','Anser','wild','Bird','Aves',NULL,'Animal'),('ansefab','Anser fabalis','fabalis','Anser','wild','Bird','Aves','Anatidae','Animal'),('anseind','Anseriformes',NULL,NULL,'wild','Bird','Aves',NULL,'Animal'),('ansespe','Anser species',NULL,'Anser','wild','Bird','Aves','Anatidae','Animal'),('antaspe','Antalis species',NULL,'Antalis','wild','Mollusc','Scaphopoda','Dentaliidae','Animal'),('anthpra','Anthus pratensis','pratensis','Anthus','wild','Bird','Aves','Motacillidae','Animal'),('anthspe','Anthus species',NULL,'Anthus','wild','Bird','Aves','Motacillidae','Animal'),('anthtri','Anthus trivialis','trivialis','Anthus','wild','Bird','Aves','Motacillidae','Animal'),('anurind','Anures',NULL,NULL,'wild','Reptile','Amphibia',NULL,'Animal'),('anurspe','Anura species',NULL,'Anura','wild','Reptile','Amphibia',NULL,'Animal'),('apodfla','Apodemus flavicollis','flavicollis','Apodemus','wild','Rodent','Mammalia','Muridae','Animal'),('apodspe','Apodemus species',NULL,'Apodemus','wild','Rodent','Mammalia','Muridae','Animal'),('apodsyl','Apodemus sylvaticus','sylvaticus','Apodemus','wild','Rodent','Mammalia','Muridae','Animal'),('aquichr','Aquila chrysaetos','chrysaetos','Aquila','wild','Bird','Aves','Accipitridae','Animal'),('aquicla','Aquila clanga','clanga','Aquila','wild','Bird','Aves',NULL,'Animal'),('aquihel','Aquila heliaca','heliaca','Aquila','wild','Bird','Aves',NULL,'Animal'),('aquipom','Aquila pomarina','pomarina','Aquila','wild','Bird','Aves','Accipitridae','Animal'),('aquispe','Aquila species',NULL,'Aquila','wild','Bird','Aves','Accipitridae','Animal'),('ardecin','Ardea cinerea','cinerea','Ardea','wild','Bird','Aves','Ardeidae','Animal'),('ardeiin','Ardeiformes indet.',NULL,NULL,'wild','Bird','Aves',NULL,'Animal'),('ardeind','Ardeidae',NULL,NULL,'wild','Bird','Aves','Ardeidae','Animal'),('ardepur','Ardea purpurea','purpurea','Ardea','wild','Bird','Aves','Ardeidae','Animal'),('ardespe','Ardea species',NULL,'Ardea','wild','Bird','Aves','Ardeidae','Animal'),('arenint','Arenaria interpres','interpres','Arenaria','wild','Bird','Aves','Scolopacidae','Animal'),('ariaarb','Arianta arbustorum','arbustrorum','Arianta','wild','Mollusc','Gastropoda',NULL,'Animal'),('arviind','Arvicolinae',NULL,NULL,'wild','Rodent','Mammalia','Cricetidae','Animal'),('arvispe','Arvicola species',NULL,'Arvicola','wild','Rodent','Mammalia','Cricetidae','Animal'),('arviter','Arvicola terrestris','terrestris','Arvicola','wild','Rodent','Mammalia','Cricetidae','Animal'),('asinspe','Asinus species',NULL,'Asinus','wild','Land mammal','Mammalia','Equidae','Animal'),('asiofla','Asio flammeus','flammeus','Asio','wild','Bird','Aves','Strigidae','Animal'),('asiootu','Asio otus','otus','Asio','wild','Bird','Aves','Strigidae','Animal'),('asiospe','Asio sp.','(NULL)','Asio','wild','Bird','Aves','Strigidae','Animal'),('aspiasp','Aspius aspius','aspius','Aspius','wild','Fish','Actinopterygii','Cyprinidae','Animal'),('astaflu','Astacus fluviatilis','fluviatilis','Astacus','wild','Crustacean',NULL,NULL,'Animal'),('athenoc','Athene noctua','noctua','Athene','wild','Bird','Aves','Strigidae','Animal'),('avesind','Aves',NULL,NULL,'wild/domestic','Bird','Aves',NULL,'Animal'),('aythfer','Aythya ferina','ferina','Aythya','wild','Bird','Aves','Anatidae','Animal'),('aythful','Aythya fuligula','fuligula','Aythya','wild','Bird','Aves','Anatidae','Animal'),('aythmar','Aythya marila','marila','Aythya','wild','Bird','Aves','Anatidae','Animal'),('aythnyr','Aythya nyroca','nyroca','Aythya','wild','Bird','Aves','Anatidae','Animal'),('aythspe','Aythya species',NULL,'Aythya','wild','Bird','Aves','Anatidae','Animal'),('BARBVUL','Barbarea vulgaris','vulgaris','Barbarea','wild',NULL,NULL,'Brassicaceae (Cruciferae)','Plant'),('BERUERE','Berula erecta','erecta','Berula','wild',NULL,NULL,'Apiaceae(Umbelliferae)','Plant'),('BETAVUL','Beta vulgaris','vulgaris','Beta','wild/cultivated',NULL,NULL,'Chenopodiaceae','Plant'),('BETPEPU','Betula pendula/pubescens',NULL,'Betula','wild',NULL,NULL,'Betulaceae','Plant'),('BETUALB','Betula alba','alba','Betula','wild',NULL,NULL,'Betulaceae','Plant'),('BETUPEN','Betula pendula','pendula','Betula','wild',NULL,NULL,'Betulaceae','Plant'),('BETUSPE','Betula spp.',NULL,'Betula','wild',NULL,NULL,'Betulaceae','Plant'),('BISEPEL','Biserrula pelecinus','pelecinus','Biserrula','wild',NULL,NULL,'Fabaceae (Leguminosae)','Plant'),('BLITBON','Blitum bonus-henricus (Chenopodium bonus-henricus)','bonus-henricus','Blitum','wild',NULL,NULL,'Amaranthaceae','Plant'),('BLITVIR','Blitum virgatum (Chenopodium foliosum)','virgatum','Blitum','wild',NULL,NULL,'Amaranthaceae','Plant'),('BOLBSPE','Bolboschoenus sp.',NULL,'Bolboschoenus','wild',NULL,NULL,'Cyperaceae','Plant'),('BORAIND','Boraginaceae indeterminate',NULL,NULL,'wild',NULL,NULL,'Boraginaceae','Plant'),('BORAOFF','Borago officinalis','officinalis','Borago',NULL,NULL,NULL,'Boraginaceae','Plant'),('BRACSYL','Brachypodium sylvaticum','sylvaticum','Brachypodium','wild',NULL,NULL,'Poaceae (Gramineae)','Plant'),('BRASNIG','Brassica nigra','nigra','Brassica','wild/cultivated',NULL,NULL,'Brassicaceae (Cruciferae)','Plant'),('BRASRAP','Brassica rapa','rapa','Brassica','wild',NULL,NULL,'Brassicaceae (Cruciferae)','Plant'),('BRASSIN','Brassica/Sinapis spp.',NULL,NULL,'wild',NULL,NULL,'Brassicaceae (Cruciferae)','Plant'),('BRASSPE','Brassica spp.',NULL,'Brassica','wild',NULL,NULL,'Brassicaceae (Cruciferae)','Plant'),('BRIZMED','Briza media','media','Briza','wild',NULL,NULL,'Poaceae (Gramineae)','Plant'),('BROARHO','Bromus arvensis/hordeaceus',NULL,'Bromus','wild',NULL,NULL,'Poaceae (Gramineae)','Plant'),('BROINRA','Bromus inermis/ramosus',NULL,'Bromus','wild',NULL,NULL,'Poaceae (Gramineae)','Plant'),('BROMARV','Bromus arvensis','arvensis','Bromus','wild',NULL,NULL,'Poaceae (Gramineae)','Plant'),('BROMERE','Bromus erectus','erectus','Bromus','wild',NULL,NULL,'Poaceae (Gramineae)','Plant'),('BROMHOR','Bromus hordeaceus','hordeaceus','Bromus','wild',NULL,NULL,'Poaceae (Gramineae)','Plant'),('BROMOAR','Bromus mollis/arvensis',NULL,'Bromus','wild',NULL,NULL,'Poaceae (Gramineae)','Plant'),('BROMSEC','Bromus secalinus','secalinus','Bromus','wild',NULL,NULL,'Poaceae (Gramineae)','Plant'),('BROMSPE','Bromus spp.',NULL,'Bromus','wild',NULL,NULL,'Poaceae (Gramineae)','Plant'),('BROMSTE','Bromus sterilis','sterilis','Bromus','wild',NULL,NULL,'Poaceae (Gramineae)','Plant'),('BROMTEC','Bromus tectorum','tectorum','Bromus','wild',NULL,NULL,'Poaceae (Gramineae)','Plant'),('BRORAAR','Bromus racemosus/arvensis',NULL,'Bromus','wild',NULL,NULL,'Poaceae (Gramineae)','Plant'),('BROSEAR','Bromus secalinus/arvensis',NULL,'Bromus','wild',NULL,NULL,'Poaceae (Gramineae)','Plant'),('BROSEHO','Bromus secalinus/hordeaceus',NULL,'Bromus','wild',NULL,NULL,'Poaceae (Gramineae)','Plant'),('BROSEMO','Bromus secalinus/mollis',NULL,'Bromus','wild',NULL,NULL,'Poaceae (Gramineae)','Plant'),('BROSTAR','Bromus sterilis/arvensis',NULL,'Bromus','wild',NULL,NULL,'Poaceae (Gramineae)','Plant'),('BROSTTE','Bromus sterilis/tectorum',NULL,'Bromus','wild',NULL,NULL,'Poaceae (Gramineae)','Plant'),('BROTEER','Bromus tectorum/erectus',NULL,'Bromus','wild',NULL,NULL,'Poaceae (Gramineae)','Plant'),('BRYODIO','Bryonia dioica','dioica','Bryonia','wild',NULL,NULL,'Cucurbitaceae','Plant'),('BUGLARV','Buglossoides arvensis','arvensis','Buglossoides','wild',NULL,NULL,'Boraginaceae','Plant'),('BUNIBUL','Bunium bulbocastanum','bulbocastanum','Bunium','wild',NULL,NULL,'Apiaceae(Umbelliferae)','Plant'),('BUNIORI','Bunias orientalis','orientalis','Bunias','wild',NULL,NULL,'Brassicaceae (Cruciferae)','Plant'),('BUPLROT','Bupleurum rotundifolium','rotundifolium','Bupleurum','wild',NULL,NULL,'Apiaceae(Umbelliferae)','Plant'),('BUPLSPE','Bupleurum spp.',NULL,'Bupleurum','wild',NULL,NULL,'Apiaceae(Umbelliferae)','Plant'),('barbbar','Barbus barbus','barbus','Barbus','wild','Fish','Actinopterygii','Cyprinidae','Animal'),('belobel','Belone belone','belone','Belone','wild','Fish','Actinopterygii','Belonidae','Animal'),('beloind','Belonidae',NULL,NULL,'wild','Fish',NULL,'Belonidae','Animal'),('belospe','Belone sp.',NULL,'Belone','wild','Fish','Actinopterygii','Belonidae','Animal'),('bisobon','Bison bonasus','bonasus','Bison','wild','Land mammal','Mammalia','Bovidae','Animal'),('bisobos','Bison bonasus/Bos primigenius',NULL,NULL,'wild','Land mammal','Mammalia','Bovidae','Animal'),('bisopri','Bison priscus','priscus','Bison','wild','Land mammal','Mammalia','Bovidae','Animal'),('bithesp','Bithynia tentaculata','tentaculata','Bithynia','wild','Mollusc','Gastropoda',NULL,'Animal'),('bithlea','Bithynia leachi','leachi','Bithynia','wild','Mollusc','Gastropoda',NULL,'Animal'),('bivaspe','Shell unidentified',NULL,NULL,'wild','Mollusc','Bivalvia',NULL,'Animal'),('boscerv','Bos / Cervus',NULL,NULL,'wild/domestic','Land mammal','Mammalia',NULL,'Animal'),('bosprim','Bos primigenius','primigenius','Bos','wild','Land mammal','Mammalia','Bovidae','Animal'),('bosspec','Bos species',NULL,'Bos','wild/domestic','Land mammal','Mammalia','Bovidae','Animal'),('bostaur','Bos taurus','taurus','Bos','domestic','Land mammal','Mammalia','Bovidae','Animal'),('botaste','Botaurus stellaris','stellaris','Botaurus','wild','Bird','Aves','Ardeidae','Animal'),('boviind','Bovidae',NULL,NULL,'wild/domestic','Land mammal','Mammalia','Bovidae','Animal'),('branber','Branta bernicla','bernicla','Branta','wild','Bird','Aves','Anatidae','Animal'),('branleu','Branta leucopsis','leucopsis','Branta','wild','Bird','Aves','Anatidae','Animal'),('branspe','Branta species',NULL,'Branta','wild','Bird','Aves','Anatidae','Animal'),('bubobub','Bubo bubo','bubo','Bubo','wild','Bird','Aves','Strigidae','Animal'),('bucecla','Bucephala clangula','clangula','Bucephala','wild','Bird','Aves','Anatidae','Animal'),('bufobuf','Bufo bufo','bufo','Bufo','wild','Reptile','Amphibia','Bufonidae','Animal'),('bufospe','Bufo species',NULL,'Bufo','wild','Reptile','Amphibia','Bufonidae','Animal'),('bufovir','Bufo viridis','viridis','Bufo','wild','Reptile','Amphibia','Bufonidae','Animal'),('butebut','Buteo buteo','buteo','Buteo','wild','Bird','Aves','Accipitridae','Animal'),('butelag','Buteo lagopus','lagopus','Buteo','wild','Bird','Aves',NULL,'Animal'),('butespe','Buteo species',NULL,'Buteo','wild','Bird','Aves','Accipitridae','Animal'),('CAKIMAR','Cakile maritima','maritima','Cakile','wild',NULL,NULL,'Brassicaceae (Cruciferae)','Plant'),('CALANEP','Calamintha nepeta','nepeta','Calamintha','wild',NULL,NULL,'Lamiaceae (Labiatae)','Plant'),('CALASYL','Calamintha sylvatica','sylvatica','Calamintha','wild',NULL,NULL,'Lamiaceae (Labiatae)','Plant'),('CALEIRR','Calepina irregularis','irregularis','Calepina','wild',NULL,NULL,'Brassicaceae (Cruciferae)','Plant'),('CALLSPE','Calluna spp.',NULL,'Calluna','wild',NULL,NULL,'Ericaceae','Plant'),('CALLVUL','Calluna vulgaris','vulgaris','Calluna','wild',NULL,NULL,'Ericaceae','Plant'),('CALTPAL','Caltha palustris','palustris','Caltha','wild',NULL,NULL,'Ranunculaceae','Plant'),('CALYSEP','Calystegia sepium','sepium','Calystegia','wild',NULL,NULL,'Convolvulaceae','Plant'),('CAMASPE','Campanula spp.',NULL,'Campanula','wild',NULL,NULL,'Campanulaceae','Plant'),('CAMESAT','Camelina sativa','sativa','Camelina','wild',NULL,NULL,'Brassicaceae (Cruciferae)','Plant'),('CAMESPE','Camelina spp.',NULL,'Camelina','wild',NULL,NULL,'Brassicaceae (Cruciferae)','Plant'),('CAMPGLO','Campanula glomerata','glomerata','Campanula','wild',NULL,NULL,'Campanulaceae','Plant'),('CAMPRAP','Campanula rapunculoides','rapunculoides','Campanula','wild',NULL,NULL,'Campanulaceae','Plant'),('CAMPROT','Campanula rotundifolia','rotundifolia','Campanula','wild',NULL,NULL,'Campanulaceae','Plant'),('CAMPSPE','Camphorosma spp.',NULL,'Camphorosma','wild',NULL,NULL,'Chenopodiaceae','Plant'),('CAMPTRA','Campanula trachelium','trachelium','Campanula','wild',NULL,NULL,'Campanulaceae','Plant'),('CAMRATR','Campanula rapunculoides/trachelium',NULL,'Campanula','wild',NULL,NULL,'Campanulaceae','Plant'),('CAMSAMI','Camelina sativa/microcarpa',NULL,'Camelina','wild',NULL,NULL,'Brassicaceae (Cruciferae)','Plant'),('CANNSAT','Cannabis sativa','sativa','Cannabis','wild/domestic',NULL,NULL,'Cannabaceae','Plant'),('CANNSP','Cannabis spp.',NULL,'Cannabis','wild',NULL,NULL,'Cannabaceae','Plant'),('CAPPSPE','Capparis spp.',NULL,'Capparis','wild',NULL,NULL,'Capparaceae','Plant'),('CAPSBUP','Capsella bursa-pastoris','bursa-pastoris','Capsella','wild',NULL,NULL,'Brassicaceae (Cruciferae)','Plant'),('CARACEL','Carex acuta/elata',NULL,'Carex','wild',NULL,NULL,'Cyperaceae','Plant'),('CARDCRI','Carduus crispus','crispus','Carduus','wild',NULL,NULL,'Asteraceae (Compositae)','Plant'),('CARDIOV','Carex divisa/ovalis',NULL,'Carex','wild',NULL,NULL,'Cyperaceae','Plant'),('CARDMAR','Carduus marianus aka Silybum marianum','marianus','Carduus','wild',NULL,NULL,'Asteraceae (Compositae)','Plant'),('CARDSPE','Carduus spp.',NULL,'Carduus','wild',NULL,NULL,'Asteraceae (Compositae)','Plant'),('CAREACU','Carex acutiformis','acutiformis','Carex','wild',NULL,NULL,'Cyperaceae','Plant'),('CAREAPP','Carex appropinquata','appropinquata','Carex','wild',NULL,NULL,'Cyperaceae','Plant'),('CAREBIC','Carex bicarpellat','bicarpellat','Carex','wild',NULL,NULL,'Cyperaceae','Plant'),('CAREDIS','Carex distans','distans','Carex','wild',NULL,NULL,'Cyperaceae','Plant'),('CAREFLA','Carex flacca','flacca','Carex','wild',NULL,NULL,'Cyperaceae','Plant'),('CAREFLV','Carex flava','flava','Carex','wild',NULL,NULL,'Cyperaceae','Plant'),('CAREHIR','Carex hirta','hirta','Carex','wild',NULL,NULL,'Cyperaceae','Plant'),('CAREHOS','Carex hostiana','hostiana','Carex','wild',NULL,NULL,'Cyperaceae','Plant'),('CARELAS','Carex lasiocarpa','lasiocarpa','Carex','wild',NULL,NULL,'Cyperaceae','Plant'),('CAREMUR','Carex muricata','muricata','Carex','wild',NULL,NULL,'Cyperaceae','Plant'),('CARENIG','Carex nigra','nigra','Carex','wild',NULL,NULL,'Cyperaceae','Plant'),('CAREOBT','Carex obtrubae','obtrubae','Carex','wild',NULL,NULL,'Cyperaceae','Plant'),('CAREPAN','Carex paniculata','paniculata','Carex','wild',NULL,NULL,'Cyperaceae','Plant'),('CARERIP','Carex riparia','riparia','Carex','wild',NULL,NULL,'Cyperaceae','Plant'),('CAREROS','Carex rostrata','rostrata','Carex','wild',NULL,NULL,'Cyperaceae','Plant'),('CARESCI','Carex/Scirpus spp.',NULL,NULL,'wild',NULL,NULL,'Caryophyllaceae','Plant'),('CARESPE','Carex spp.',NULL,'Carex','wild',NULL,NULL,'Cyperaceae','Plant'),('CARESYL','Carex sylvatica','sylvatica','Carex','wild',NULL,NULL,'Cyperaceae','Plant'),('CARETRI','Carex tricarpellat','tricarpellat','Carex','wild',NULL,NULL,'Cyperaceae','Plant'),('CARMHIR','Cardamine hirsuta','hirsuta','Cardamine','wild',NULL,NULL,'Brassicaceae (Cruciferae)','Plant'),('CARPBET','Carpinus betulus','betulus','Carpinus','wild',NULL,NULL,'Betulaceae','Plant'),('CARPOST','Carpinus/Ostrya',NULL,'Carpinus','wild',NULL,NULL,'Betulaceae','Plant'),('CARPSPE','Carpinus spp.',NULL,'Carpinus','wild',NULL,NULL,'Betulaceae','Plant'),('CARTLAN','Carthamus lanatus','lanatus','Carthamus','wild',NULL,NULL,'Asteraceae (Compositae)','Plant'),('CARUCAR','Carum carvi','carvi','Carum','wild',NULL,NULL,'Apiaceae(Umbelliferae)','Plant'),('CARYIND','Caryophyllaceae indeterminate',NULL,NULL,'wild',NULL,NULL,'Caryophyllaceae','Plant'),('CARYPOR','Caryophyllaceae/Portulacaceae indeterminate',NULL,NULL,'wild',NULL,NULL,NULL,'Plant'),('CASTSPE','Castanea sp.',NULL,'Castanea','wild/cultivated',NULL,NULL,'Fagáceae','Plant'),('CELTAST','Celtis australis','australis','Celtis','wild',NULL,NULL,'Cannabaceae','Plant'),('CELTCAU','Celtis caucasica','caucasica','Celtis','wild',NULL,NULL,'Cannabaceae','Plant'),('CELTGRA','Celtis glabrata','glabrata','Celtis','wild',NULL,NULL,'Cannabaceae','Plant'),('CENTCYA','Centaurea cyanus','cyanus','Centaurea','wild',NULL,NULL,'Asteraceae (Compositae)','Plant'),('CENTJAC','Centaurea jacea','jacea','Centaurea','wild',NULL,NULL,'Asteraceae (Compositae)','Plant'),('CENTSPE','Centaurea spp.',NULL,'Centaurea','wild',NULL,NULL,'Asteraceae','Plant'),('CERACER','Cerastium cerastoides','cerastoides','Cerastium','wild',NULL,NULL,'Caryophyllaceae','Plant'),('CERAFON','Cerastium fontanum','fontanum','Cerastium','wild',NULL,NULL,'Caryophyllaceae','Plant'),('CERAHOL','Cerastium holosteoides','holosteoides','Cerastium','wild',NULL,NULL,'Caryophyllaceae','Plant'),('CERASPE','Cerastium spp.',NULL,'Cerastium','wild',NULL,NULL,'Caryophyllaceae','Plant'),('CERASTE','Cerastium/Stellaria spp.',NULL,NULL,'wild',NULL,NULL,'Caryophyllaceae','Plant'),('CEREIND','Cereal indeterminate',NULL,NULL,'wild/domestic',NULL,NULL,'Poaceae (Gramineae)','Plant'),('CERINDO','Cereals indeterminate domestic',NULL,NULL,'domestic',NULL,NULL,'Poaceae (Gramineae)','Plant'),('CERTDEM','Ceratophyllum demersum','demersum','Ceratophyllum','wild',NULL,NULL,'Ceratophyllaceae','Plant'),('CERTSUB','Ceratophyllum submersum','submersum','Ceratophyllum','wild',NULL,NULL,'Ceratophyllaceae','Plant'),('CHAETEM','Chaerophyllum temulum','temulum','Chaerophyllum','wild',NULL,NULL,'Apiaceae(Umbelliferae)','Plant'),('CHARIND','Characeae',NULL,NULL,'wild',NULL,NULL,'Characeae','Plant'),('CHARSPE','Chara spp.',NULL,'Chara','wild',NULL,NULL,'Characeae','Plant'),('CHEGLRU','Chenopodium glaucum/rubrum',NULL,'Chenopodium','wild',NULL,NULL,'Chenopodiaceae','Plant'),('CHENALB','Chenopodium album','album','Chenopodium','wild',NULL,NULL,'Chenopodiaceae','Plant'),('CHENATR','Chenopodium/Atriplex spp.',NULL,NULL,'wild',NULL,NULL,'Chenopodiaceae','Plant'),('CHENBOT','Chenopodium (Dysphania) botrys','botrys','Chenopodium','wild',NULL,NULL,'Chenopodiaceae','Plant'),('CHENCAR','Chenopodiaceae/Caryophyllaceae indeterminate',NULL,NULL,'wild',NULL,NULL,NULL,'Plant'),('CHENFIC','Chenopodium ficifolium','ficifolium','Chenopodium','wild',NULL,NULL,'Chenopodiaceae','Plant'),('CHENGLA','Chenopodium glaucum','glaucum','Chenopodium','wild',NULL,NULL,'Chenopodiaceae','Plant'),('CHENHYB','Chenopodium hybridum','hybridum','Chenopodium','wild',NULL,NULL,'Chenopodiaceae','Plant'),('CHENIND','Chenopodiaceae indeterminate',NULL,NULL,'wild',NULL,NULL,'Chenopodiaceae','Plant'),('CHENMUR','Chenopodium murale','murale','Chenopodium','wild',NULL,NULL,'Chenopodiaceae','Plant'),('CHENPOL','Chenopodium polyspermum','polyspermum','Chenopodium','wild',NULL,NULL,'Chenopodiaceae','Plant'),('CHENRUB','Chenopodium rubrum','rubrum','Chenopodium','wild',NULL,NULL,'Chenopodiaceae','Plant'),('CHENSPE','Chenopodium spp.',NULL,'Chenopodium','wild',NULL,NULL,'Chenopodiaceae','Plant'),('CHENURB','Chenopodium urbicum','urbicum','Chenopodium','wild',NULL,NULL,'Chenopodiaceae','Plant'),('CHRYLEU','Chrysanthemum leucanthemum','leucanthemum','Chrysanthemum','wild',NULL,NULL,'Asteraceae (Compositae)','Plant'),('CICEARI','Cicer arietinum','arietinum','Cicer','domestic',NULL,NULL,'Fabaceae (Leguminosae)','Plant'),('CICHIND','Cichorioideae indeterminate',NULL,'Cirsium','wild',NULL,NULL,'Asteraceae (Compositae)','Plant'),('CIRSARV','Cirsium arvense','arvense','Cirsium','wild',NULL,NULL,'Asteraceae (Compositae)','Plant'),('CIRSCAR','Cirsium/Carduus spp.',NULL,NULL,'wild',NULL,NULL,'Asteraceae (Compositae)','Plant'),('CIRSHET','Cirsium heterophyllum','heterophyllum','Cirsium','wild',NULL,NULL,'Asteraceae (Compositae)','Plant'),('CIRSSPE','Cirsium spp.',NULL,'Cirsium','wild',NULL,NULL,'Asteraceae (Compositae)','Plant'),('CIRSVUL','Cirsium vulgaris','vulgaris','Cirsium','wild',NULL,NULL,'Asteraceae (Compositae)','Plant'),('CLADMAR','Cladium mariscus','mariscus','Cladium','wild',NULL,NULL,'Cyperaceae','Plant'),('CLAVPUR','Claviceps purpurea','purpurea','Claviceps','wild',NULL,NULL,'Clavicipitaceae','Fungus'),('CLINVUL','Clinopodium vulgare','vulgare','Clinopodium','wild',NULL,NULL,'Lamiaceae (Labiatae)','Plant'),('COMPIND','Compositae (Asteraceae) indeterminate',NULL,NULL,'wild',NULL,NULL,'Asteraceae (Compositae)','Plant'),('CONIMAC','Conium maculatum','maculatum','Conium','wild',NULL,NULL,'Apiaceae(Umbelliferae)','Plant'),('CONOMAJ','Conopodium majus','majus','Conopodium','wild',NULL,NULL,'Apiaceae(Umbelliferae)','Plant'),('CONVARV','Convolvolus arvensis','Convolvolus arvensis','Convolvolus','wild',NULL,NULL,'Convolvulaceae','Plant'),('CONVIND','Convolvulaceae indeterminate',NULL,NULL,'wild',NULL,NULL,NULL,'Plant'),('CORISAT','Coriandrum sativum','sativum','Coriandrum','wild/domestic',NULL,NULL,'Apiaceae(Umbelliferae)','Plant'),('CORNMAS','Cornus mas','mas','Cornus','wild',NULL,NULL,'Cornaceae','Plant'),('CORNSAN','Cornus sanguinea','sanguinea','Cornus','wild',NULL,NULL,'Cornaceae','Plant'),('CORNSPE','Cornus sp.',NULL,'Cornus','wild',NULL,NULL,'Cornaceae','Plant'),('COROSCO','Coronilla scorpioides','scorpioides','Coronilla','wild',NULL,NULL,'Fabaceae (Leguminosae)','Plant'),('COROSPE','Coronilla spp.',NULL,'Coronilla','wild',NULL,NULL,'Fabaceae (Leguminosae)','Plant'),('COROVAR','Coronilla varia','varia','Coronilla','wild',NULL,NULL,'Fabaceae (Leguminosae)','Plant'),('CORYAVE','Corylus avellana','avellana','Corylus','wild',NULL,NULL,'Betulaceae','Plant'),('CORYSPE','Corylus spp.',NULL,'Corylus','wild',NULL,NULL,'Betulaceae','Plant'),('CRAMOLA','Crataegus monogyna/laevigata',NULL,'Crataegus','wild',NULL,NULL,'Rosaceae','Plant'),('CRATCOM','Cratoneuron communatum (Palustriella commutata)','communatum','Cratoneuron','wild',NULL,NULL,'Amblystegiaceae','Plant'),('CRATLAE','Crataegus laevigata','laevigata','Crataegus','wild',NULL,NULL,'Rosaceae','Plant'),('CRATMON','Crataegus monogyna','monogyna','Crataegus','wild',NULL,NULL,'Rosaceae','Plant'),('CRATSPE','Crataegus spp.',NULL,'Crataegus','wild',NULL,NULL,'Rosaceae','Plant'),('CREPSPE','Crepis sp.',NULL,'Crepis','wild',NULL,NULL,'Asteraceae (Compositae)','Plant'),('CRUCIND','Cruciferae (Brassicaceae) indeterminate',NULL,NULL,'wild',NULL,NULL,'Brassicaceae (Cruciferae)','Plant'),('CRUCSPE','Crucianella spp.',NULL,'Crucianella','wild',NULL,NULL,'Rubiaceae','Plant'),('CRUTLAE','Cruciata laevipes','laevipes','Cruciata','wild',NULL,NULL,'Rubiaceae','Plant'),('CUCUMEL','Cucumis melo/sativus',NULL,'Cucumis','domestic',NULL,NULL,'Cucurbitaceae','Plant'),('CUPRSPE','Cupressus spp.',NULL,'Cupressus','wild',NULL,NULL,'Cupressaceae','Plant'),('CUSCSPE','Cuscuta spp.',NULL,'Cuscuta','wild',NULL,NULL,'Cuscutaceae','Plant'),('CYNOSPE','Cynodon spp.',NULL,'Cynodon','wild',NULL,NULL,'Poaceae (Gramineae)','Plant'),('CYPEFUS','Cyperus fuscus','fuscus','Cyperus','wild',NULL,NULL,'Cyperaceae','Plant'),('CYPEIND','Cyperaceae indeterminate',NULL,NULL,'wild',NULL,NULL,'Cyperaceae','Plant'),('CYPESPE','Cyperus spp.',NULL,'Cyperus','wild',NULL,NULL,'Cyperaceae','Plant'),('calialp','Calidris alpina','alpina','Calidris','wild','Bird','Aves','Scolopacidae','Animal'),('calican','Calidris canutus','canutus','Calidris','wild','Bird','Aves','Scolopacidae','Animal'),('calispe','Calidris species',NULL,'Calidris','wild','Bird','Aves','Scolopacidae','Animal'),('calllyr','Callionymus lyra','lyra','Callionymus','wild','Fish','Actinopterygii','Callionymidae','Animal'),('campbal','Campilea balcanica','balcanica','Campilea','wild','Mollusc','Gastropoda',NULL,'Animal'),('campfau','Campilea faustina','faustina','Campilea','wild','Mollusc','Gastropoda',NULL,'Animal'),('canifam','Canis familiaris','familiaris','Canis','domestic','Land mammal','Mammalia','Canidae','Animal'),('caniind','Canidae',NULL,NULL,'wild/domestic','Land mammal','Mammalia','Canidae','Animal'),('canilup','Canis lupus','lupus','Canis','wild','Land mammal','Mammalia','Canidae','Animal'),('canispe','Canis species',NULL,'Canis','wild/domestic','Land mammal','Mammalia','Canidae','Animal'),('capraeg','Capra aegagrus','aegagrus','Capra','wild','Land mammal','Mammalia','Bovidae','Animal'),('caprcap','Capreolus capreolus','capreolus','Capreolus','wild','Land mammal','Mammalia','Cervidae','Animal'),('capreur','Caprimulgus europaeus','europaeus','Caprimulgus','wild','Bird','Aves','Caprimulgidae','Animal'),('caprhir','Capra hircus','hircus','Capra','domestic','Land mammal','Mammalia','Bovidae','Animal'),('capribe','Capra ibex','ibex','Capra','wild','Land mammal','Mammalia','Bovidae','Animal'),('caprpyg','Capreolus pygargus','pygargus','Capreolus','wild','Land mammal','Mammalia','Cervidae','Animal'),('caprpyr','Capra pyrenaica','pyrenaica','Capra','wild','Land mammal','Mammalia','Bovidae','Animal'),('caprspe','Capra species',NULL,'Capra','wild/domestic','Land mammal','Mammalia','Bovidae','Animal'),('carcara','Carassius carassius','carassius','Carassius','wild','Fish','Actinopterygii','Cyprinidae','Animal'),('cardcar','Carduelis carduelis','carduelis','Carduelis','wild','Bird','Aves','Fringillidae','Animal'),('cardspe','Cardium sp.',NULL,'Cardium','wild','Mollusc','Bivalvia',NULL,'Animal'),('carinds','Carnivore small',NULL,NULL,'wild','Land mammal','Mammalia',NULL,'Animal'),('carnind','Carnivora',NULL,NULL,'wild/domestic','Land mammal','Mammalia',NULL,'Animal'),('carssgry','Crassostrea gryphoides','gryphoides','Craossostrea','wild','Mollusc','Bivalvia','Ostreidae','Animal'),('casmalb','Casmerodius albus','albus','Casmerodus','wild','Bird','Aves','Ardeidae','Animal'),('castfib','Castor fiber','fiber','Castor','wild','Rodent','Mammalia','Castoridae','Animal'),('cepanem','Cepaea nemoralis','nemoralis','Cepaea','wild','Mollusc','Gastropoda',NULL,'Animal'),('cepaspe','Cepaea species',NULL,'Cepaea','wild','Mollusc','Gastropoda',NULL,'Animal'),('cepavin','Cepaea vindobonensis','vindobonensis','Cepaea','wild','Mollusc','Gastropoda',NULL,'Animal'),('ceppgry','Cepphus grylle','grylle','Cepphus','wild','Bird','Aves','Alcidae','Animal'),('ceraedu','Cerastoderma edule','edule','Cerastoderma','wild','Mollusc','Bivalvia','Cardiidae','Animal'),('ceraspe','Cerastoderma species',NULL,'Cerastoderma','wild','Mollusc','Bivalvia','Cardiidae','Animal'),('cervela','Cervus elaphus','elaphus','Cervus','wild','Land mammal','Mammalia','Cervidae','Animal'),('cervind','Cervidae',NULL,NULL,'wild','Land mammal','Mammalia','Cervidae','Animal'),('cervspe','Cervus species',NULL,'Cervus','wild','Land mammal','Mammalia','Cervidae','Animal'),('cetaind','Cetacea',NULL,NULL,'wild','Marine mammal','Mammalia',NULL,'Animal'),('charind','Charadriiformes',NULL,NULL,'wild','Bird','Aves',NULL,'Animal'),('chelmyd','Chelonia mydas','mydas',NULL,'wild','Reptile','Reptilia',NULL,'Animal'),('chelspe','Chelonia species',NULL,'Chelonia','wild','Reptile','Reptilia',NULL,'Animal'),('chirind','Chiroptera',NULL,NULL,'wild','Bat','Mammalia',NULL,'Animal'),('chonnas','Chondostroma nasus','nasus','Chondostroma','wild','Fish','Actinopterygii','Cyprinidae','Animal'),('cicocic','Ciconia ciconia','ciconia','Ciconia','wild','Bird','Aves','Ciconiidae','Animal'),('cicospe','Ciconia species',NULL,'Ciconia','wild','Bird','Aves','Ciconiidae','Animal'),('cinccin','Cinclus cinclus','cinclus','Cinclus','wild','Bird','Aves','Cinclidae','Animal'),('circaer','Circus aeruginosus','aeruginosus','Circus','wild','Bird','Aves','Accipitridae','Animal'),('circcya','Circus cyaneus','cyaneus','Circus','wild','Bird','Aves','Accipitridae','Animal'),('circgal','Circaetus gallicus','gallicus','Circaetus','wild','Bird','Aves','Accipitridae','Animal'),('circspe','Circus species',NULL,'Circus','wild','Bird','Aves','Accipitridae','Animal'),('citecit','Citellus citellus','citellus','Citellus','wild','Land mammal','Mammalia',NULL,'Animal'),('citesus','Citellus suslica','suslica','Citellus','wild','Land mammal','Mammalia','Sciuridae','Animal'),('clanhye','Clangula hyemalis','hyemalis','Clangula','wild','Bird','Aves','Anatidae','Animal'),('cletgla','Clethrionomys glareolus','glareolus','Clethrionomys','wild','Rodent','Mammalia','Muridae','Animal'),('cluphar','Clupea harengus','harengus','Clupea','wild','Fish','Actinopterygii','Clupeidae','Animal'),('clupind','Clupeidae',NULL,NULL,'wild','Fish','Actinopterygii','Clupeidae','Animal'),('cocccoc','Coccothraustes coccothraustes','coccothraustes','Coccothraustes','wild','Bird','Aves','Fringillidae','Animal'),('coelant','Coelodonta antiquitatis','antiquitatis','Coelodonta','wild','Land mammal','Mammalia','Rhinocerotidae','Animal'),('coluind','Columbiformes',NULL,NULL,'wild','Bird','Aves',NULL,'Animal'),('coluliv','Columba livia','livia','Columba','wild','Bird','Aves','Columbidae','Animal'),('columin','Columbidae',NULL,NULL,'wild','Bird','Aves','Columbidae','Animal'),('colupal','Columba palumbus','palumbus','Columba','wild','Bird','Aves','Columbidae','Animal'),('colurus','Columbella rustica','rustica','Columbella','wild','Mollusc','Gastropoda','Columbellidae','Animal'),('coluspe','Columba species',NULL,'Columba','wild','Bird','Aves','Columbidae','Animal'),('condtri','Condrula tridens','tridens','Condrula','wild','Mollusc','Gastropoda',NULL,'Animal'),('congcon','Conger conger','conger','Conger','wild','Fish','Actinopterygii','Congridae','Animal'),('corealb','Coregonus albula','albula','Coregonus','wild','Fish','Actinopterygii','Salmonidae','Animal'),('corelav','Coregonus lavaretus','lavaretus','Coregonus','wild','Fish','Actinopterygii','Salmonidae','Animal'),('coreoxy','Coregonus oxyrinchus','oxyrinchus','Coregonus','wild','Fish','Actinopterygii','Salmonidae','Animal'),('corespe','Coregonus species',NULL,'Coregonus','wild','Fish','Actinopterygii','Salmonidae','Animal'),('corvcon','Corvus cornix','cornix','Corvus','wild','Bird','Aves','Corvidae','Animal'),('corvcor','Corvus corone','corone','Corvus','wild','Bird','Aves','Corvidae','Animal'),('corvcox','Corvus corax','corax','Corvus','wild','Bird','Aves','Corvidae','Animal'),('corvfru','Corvus frugilegus','frugilegus','Corvus','wild','Bird','Aves','Corvidae','Animal'),('corvind','Corvidae',NULL,NULL,'wild','Bird','Aves','Corvidae','Animal'),('corvmon','Corvus monedula','monedula','Corvus','wild','Bird','Aves','Corvidae','Animal'),('corvspe','Corvus species',NULL,'Corvus','wild','Bird','Aves','Corvidae','Animal'),('cottind','Cottidae',NULL,NULL,'wild','Fish','Actinopterygii','Cottidae','Animal'),('cotucot','Coturnix coturnix','coturnix','Coturnix','wild','Bird','Aves','Phasianidae','Animal'),('crexcre','Crex crex','crex','Crex','wild','Bird','Aves','Rallidae','Animal'),('criccri','Cricetus cricetus','cricetus','Cricetus','wild','Rodent','Mammalia','Cricetidae','Animal'),('cricspe','Cricetus species',NULL,'Cricetus','wild','Rodent','Mammalia','Cricetidae','Animal'),('crocrus','Crocidura russula','russula','Crocidura','wild','Rodent','Mammalia','Soricidae','Animal'),('crocspe','Crocidura species',NULL,'Crocidura','wild','Rodent','Mammalia','Soricidae','Animal'),('cygnbew','Cygnus bewickii','bewickii','Cygnus','wild','Bird','Aves','Anatidae','Animal'),('cygncol','Cygnus columbianus','columbianus','Cygnus','wild','Bird','Aves','Anserinae','Animal'),('cygncyg','Cygnus cygnus','cygnus','Cygnus','wild','Bird','Aves','Anatidae','Animal'),('cygnolo','Cygnus olor','olor','Cygnus','wild','Bird','Aves','Anatidae','Animal'),('cygnspe','Cygnus species',NULL,'Cygnus','wild','Bird','Aves','Anatidae','Animal'),('cyprcar','Cyprinus carpio','carpio','Cyprinus','wild','Fish','Actinopterygii','Cyprinidae','Animal'),('cyprind','Cyprinidae',NULL,NULL,'wild','Fish','Pisces','Cyprinidae','Animal'),('cyprspe','Cypraea sp.',NULL,'Cypraea','wild','Mollusc','Gastropoda','Cypraeidae','Animal'),('DACTSPE','Dactylis spp.',NULL,'Dactylis','wild',NULL,NULL,'Poaceae (Gramineae)','Plant'),('DASYVIL','Dasypyrum villosum','villosum','Dasypyrum','wild',NULL,NULL,'Poaceae (Gramineae)','Plant'),('DAUCCAR','Daucus carota','carota','Daucus','wild',NULL,NULL,'Apiaceae(Umbelliferae)','Plant'),('DESCCES','Deschampsia cespitosa','cespitosa','Deschampsia','wild',NULL,NULL,'Poaceae (Gramineae)','Plant'),('DESCSOP','Descurainia sophia','sophia','Descurainia','wild',NULL,NULL,'Brassicaceae (Cruciferae)','Plant'),('DIAARDE','Dianthus armeria/deltoides',NULL,'Dianthus','wild',NULL,NULL,'Caryophyllaceae','Plant'),('DIANSPE','Dianthus spp.',NULL,'Dianthus','wild',NULL,NULL,'Caryophyllaceae','Plant'),('DICOIND','Dicotyledonous indeterminate',NULL,NULL,'wild',NULL,NULL,NULL,'Plant'),('DIGIISC','Digitaria ischaemum','ischaemum','Digitaria','wild',NULL,NULL,'Poaceae (Gramineae)','Plant'),('DIGISPE','Digitaria spp.',NULL,'Digitaria','wild',NULL,NULL,'Poaceae (Gramineae)','Plant'),('DIGISSA','Digitaria ischaemum/sanguinalis',NULL,'Digitaria','wild',NULL,NULL,'Poaceae (Gramineae)','Plant'),('DIPSFUL','Dipsacus fullonum','fullonum','Dipsacus','wild',NULL,NULL,'Dipsacaceae','Plant'),('DRACSPE','Dracocephalum spp.',NULL,'Dracocephalum','wild',NULL,NULL,'Lamiaceae','Plant'),('DREPADU','Drepanocladus aduncus','aduncus','Drepanocladus','wild',NULL,NULL,'Amblystegiaceae','Plant'),('damadam','Dama dama','dama','Dama','wild','Land mammal','Mammalia','Cervidae','Animal'),('dasypas','Dasyatis pastinaca','pastinaca','Dasyatis','wild','Fish','Chondrichthyes','Dasyatidae','Animal'),('delpdel','Delphinus delphis','delphis','Delphinus','wild','Marine mammal','Mammalia','Delphinidae','Animal'),('delpind','Delphinidae',NULL,NULL,'wild','Marine mammal','Mammalia','Delphinidae','Animal'),('dendmaj','Dendrocopos major','major','Dendrocopos','wild','Bird','Aves','Picidae','Animal'),('dentspe','Dentalium sp.',NULL,'Dentalium','wild','Mollusc',NULL,NULL,'Animal'),('dicelab','Dicentrarchus labrax','labrax','Dicentrarchus','wild','Fish','Actinopterygii','Moronidae','Animal'),('dreipol','Dreissena polymorpha','polymorpha','Dreissena','wild','Mollusc','Bivalvia',NULL,'Animal'),('ECHICRG','Echinochloa crus-galli','crus-galli','Echinochloa','wild',NULL,NULL,'Poaceae (Gramineae)','Plant'),('ECHICRU','Echinóchloa crus-gálli','speltoides','Aegilops','wild',NULL,NULL,'Poaceae (Gramineae)','Plant'),('ECHISPE','Echinochloa sp.',NULL,'Echinochloa','wild',NULL,NULL,'Poaceae (Gramineae)','Plant'),('ELEOPAL','Eleocharis palustris','palustris','Eleocharis','wild',NULL,NULL,'Cyperaceae','Plant'),('ELEOSPE','Eleocharis spp.',NULL,'Eleocharis','wild',NULL,NULL,'Cyperaceae','Plant'),('ELEPAUN','Eleocharis palustris/uniglumis',NULL,'Eleocharis','wild',NULL,NULL,'Cyperaceae','Plant'),('ELYTREP','Elytrigia (Elymus) repens','repens','Elytrigia','wild',NULL,NULL,'Poaceae (Gramineae)','Plant'),('EMPENIG','Empetrum nigrum','nigrum','Empetrum','wild',NULL,NULL,'Ericaceae','Plant'),('EMPESPE','Empetrum spp.',NULL,'Empetrum','wild',NULL,NULL,'Ericaceae','Plant'),('EPILAGU','Epilobium angustifolium','angustifolium','Epilobium','wild',NULL,NULL,'Onagraceae','Plant'),('EPILPAL','Epilobium palustre','palustre','Epilobium','wild',NULL,NULL,'Onagraceae','Plant'),('EPILSPE','Epilobium spp.',NULL,'Epilobium','wild',NULL,NULL,'Onagraceae','Plant'),('EQUIFLU','Equisetum fluviatile','fluviatile','Equisetum','wild',NULL,NULL,'Equisetaceae','Plant'),('EQUISPE','Equisetum spp.',NULL,'Equisetum','wild',NULL,NULL,'Equisetaceae','Plant'),('ERICCAL','Erica/Calluna spp.',NULL,NULL,'wild',NULL,NULL,'Ericaceae','Plant'),('ERICCIN','Erica cinerea','cinerea','Erica','wild',NULL,NULL,'Ericaceae','Plant'),('ERICIND','Ericaceae indeterminate',NULL,NULL,'wild',NULL,NULL,'Ericaceae','Plant'),('ERICSPE','Erica spp.',NULL,'Erica','wild',NULL,NULL,'Ericaceae','Plant'),('ERICTET','Erica tetralix','tetralix','Erica','wild',NULL,NULL,'Ericaceae','Plant'),('ERIGACR','Erigeron acris','acris','Erigeron','wild',NULL,NULL,'Asteraceae (Compositae)','Plant'),('ERIOANG','Eriophorum angustifolium','angustifolium','Eriophorum','wild',NULL,NULL,'Cyperaceae','Plant'),('ERODCIT','Erodium cicutarium','cicutarium','Erodium','wild',NULL,NULL,'Geraniaceae','Plant'),('ERODSPE','Erodium spp.',NULL,'Erodium','wild',NULL,NULL,'Geraniaceae','Plant'),('ERUSNAS','Erucastrum nasturtiifolium','nasturtiifolium','Erucastrum','wild',NULL,NULL,'Brassicaceae (Cruciferae)','Plant'),('ERYSCHE','Erysimum cheiranthoides','cheiranthoides','Erysimum','wild',NULL,NULL,'Brassicaceae (Cruciferae)','Plant'),('EUONEUR','Euonymus europaeus','europaeus','Euonymus','wild',NULL,NULL,'Celastraceae','Plant'),('EUONSPE','Euonymus sp.',NULL,'Euonymus','wild',NULL,NULL,'Celastraceae','Plant'),('EUPACAN','Eupatorium cannabinum','cannabinum','Eupatorium','wild',NULL,NULL,'Asteraceae (Compositae)','Plant'),('EUPHAMY','Euphorbia amygdaloides','amygdaloides','Euphorbia','wild',NULL,NULL,'Euphorbiaceae','Plant'),('EUPHEXI','Euphorbia exigua','exigua','Euphorbia','wild',NULL,NULL,'Euphorbiaceae','Plant'),('EUPHHEL','Euphorbia helioscopia','helioscopia','Euphorbia','wild',NULL,NULL,'Euphorbiaceae','Plant'),('EUPHIND','Euphorbiaceae indet',NULL,'Euphorbiaceae','wild',NULL,NULL,'Euphorbiaceae','Plant'),('EUPHPAL','Euphorbia palustris','palustris','Euphorbia','wild',NULL,NULL,'Euphorbiaceae','Plant'),('EUPHPEP','Euphorbia peplus','peplus','Euphorbia','wild',NULL,NULL,'Euphorbiaceae','Plant'),('EUPHSPE','Euphorbia spp.',NULL,'Euphorbia','wild',NULL,NULL,'Euphorbiaceae','Plant'),('echindt','Echinoidea',NULL,NULL,'wild','Echinoderm','Echinoidea',NULL,'Animal'),('egrealb','Egretta alba','alba','Egretta','wild','Bird','Aves',NULL,'Animal'),('elanind','Accipitridae',NULL,NULL,'wild','Bird','Aves','Accipitridae','Animal'),('elasind','Elasmobranchii',NULL,NULL,'wild','Fish','Chondrichthyes',NULL,'Animal'),('elepspe','Elephantidae species',NULL,NULL,'wild','Land mammal','Mammalia','Elephantidae','Animal'),('elioque','Eliomys quercinus','quercinus','Eliomys','wild','Rodent','Mammalia','Gliridae','Animal'),('embecit','Emberiza citrinella','citrinella','Emberiza','wild','Bird','Aves','Emberizidae','Animal'),('embespe','Emberiza species',NULL,'Emberiza','wild','Bird','Aves','Emberizidae','Animal'),('emysorb','Emys orbicularis','orbicularis','Emys','wild','Reptile','Reptilia','Emydidae','Animal'),('emysspe','Emys species',NULL,'Emys','wild','Reptile','Reptilia','Emydidae','Animal'),('epidcal','Epidalea calamita','calamita','Epidalea','wild','Reptile','Amphibia','Bufonidae','Animal'),('epinmarg','Epinephelus marginatus',NULL,NULL,'wild','Fish',NULL,NULL,'Animal'),('equuasi','Equus asinus','asinus','Equus','domestic','Land mammal','Mammalia','Equidae','Animal'),('equucab','Equus caballus','caballus','Equus','domestic','Land mammal','Mammalia','Equidae','Animal'),('equufer','Equus ferus','ferus','Equus','wild','Land mammal','Mammalia','Equidae','Animal'),('equuhem','Equus hemionus','hemionus','Equus','wild','Land mammal','Mammalia','Equidae','Animal'),('equuhyd','Equus hydruntinus','hydruntinus','Equus','wild','Land mammal','Mammalia','Equidae','Animal'),('equuspe','Equus species',NULL,'Equus','wild/domestic','Land mammal','Mammalia','Equidae','Animal'),('equuspl','Large equid',NULL,'Equus','wild','Land mammal','Mammalia','Equidae','Animal'),('erincon','Erinaceus concolor','concolor','Erinaceus','wild','Land mammal','Mammalia','Erinaceidae','Animal'),('erineur','Erinaceus europaeus','europaeus','Erinaceus','wild','Land mammal','Mammalia','Erinaceidae','Animal'),('erinrou','Erunaceus roumanicus','roumanicus','Erinaceus','wild','Land mammal','Mammalia',NULL,'Animal'),('erinspe','Erinaceus species',NULL,'Erinaceus','wild','Land mammal','Mammalia','Erinaceidae','Animal'),('eritrub','Erithacus rubecula','rubecula','Erithacus','wild','Bird','Aves','Muscicapidae','Animal'),('esoxluc','Esox lucius','lucius','Esox','wild','Fish','Actinopterygii','Esocidae','Animal'),('espeesp','Esperiana esperi','esperi','Esperiana','wild','Mollusc','Gastropoda',NULL,'Animal'),('espeper','Esperiana acicularis','acicularis','Esperiana','wild','Mollusc','Gastropoda',NULL,'Animal'),('euomstr','Euomphalia strigella','strigella','Euomphalia','wild','Mollusc','Gastropoda',NULL,'Animal'),('eutrgur','Eutrigla gurnardus','gurnardus','Eutrigla','wild','Fish','Actinopterygii','Triglidae','Animal'),('FAGUSPE','Fagus spp.',NULL,'Fagus','wild',NULL,NULL,'Fagaceae','Plant'),('FAGUSYL','Fagus sylvatica','sylvatica','Fagus','wild',NULL,NULL,'Fagaceae','Plant'),('FALLCON','Fallopia convolvulus','convolvulus','Fallopia','wild',NULL,NULL,'Polygonaceae','Plant'),('FESTLOL','Festuca/Lolium spp.',NULL,NULL,'wild',NULL,NULL,'Poaceae (Gramineae)','Plant'),('FESTPRA','Festuca pratensis','pratensis','Festuca','wild',NULL,NULL,'Poaceae (Gramineae)','Plant'),('FESTRUB','Festuca rubra','rubra','Festuca','wild',NULL,NULL,'Poaceae (Gramineae)','Plant'),('FESTSPE','Festuca spp.',NULL,'Festuca','wild',NULL,NULL,'Poaceae (Gramineae)','Plant'),('FICUCAR','Ficus carica','carica','Ficus','wild/cultivated',NULL,NULL,'Moraceae','Plant'),('FILIULM','Filipendula ulmaria','ulmaria','Filipendula','wild',NULL,NULL,'Rosaceae','Plant'),('FILIVUL','Filipendula vulgaris','vulgaris','Filipendula','wild/cultivated',NULL,NULL,'Rosaceae','Plant'),('FIMBSPE','Fimbristylis',NULL,'Fimbristylis','wild',NULL,NULL,'Cyperaceae','Plant'),('FOMEFOM','Fomes fomentarius','fomentarius','Fomes','wild',NULL,'Gastropoda','Polyporaceae','Plant'),('FRAGPOT','Fragaria/Potentilla spp.',NULL,NULL,'wild',NULL,NULL,'Rosaceae','Plant'),('FRAGSPE','Fragaria spp.',NULL,'Fragaria','wild',NULL,NULL,'Rosaceae','Plant'),('FRAGVES','Fragaria vesca','vesca','Fragaria','wild',NULL,NULL,'Rosaceae','Plant'),('FRAXELC','Fraxinus excelsior','excelsior','Fraxinus','wild',NULL,NULL,'Oleaceae','Plant'),('FRAXSPE','Fraxinus spp.',NULL,'Fraxinus','wild',NULL,NULL,'Oleaceae','Plant'),('FUMAOFF','Fumaria officinalis','officinalis','Fumaria','wild',NULL,NULL,'Papaveraceae','Plant'),('FUMASCH','Fumaria schleicherii','schleicherii','Fumaria','wild',NULL,NULL,'Papaveraceae','Plant'),('FUMASPE','Fumaria spp.',NULL,'Fumaria','wild',NULL,NULL,'Papaveraceae','Plant'),('falcind','Falconiformes',NULL,NULL,'wild','Bird','Aves',NULL,'Animal'),('falcper','Falco peregrinus','peregrinus','Falco','wild','Bird','Aves','Falconidae','Animal'),('falcspe','Falco species',NULL,'Falco','wild','Bird','Aves','Falconidae','Animal'),('falctin','Falco tinnunculus','tinnunculus','Falco','wild','Bird','Aves','Falconidae','Animal'),('felicat','Felis silvestris catus','silvestris catus','Felis','domestic','Land mammal','Mammalia','Felidae','Animal'),('felinds','Felidae small',NULL,NULL,'wild','Land mammal','Mammalia','Felidae','Animal'),('felisil','Felis silvestris','silvestris','Felis','wild','Land mammal','Mammalia','Felidae','Animal'),('felispe','Felis species',NULL,'Felis','wild/domestic','Land mammal','Mammalia','Felidae','Animal'),('fissbad','Fissidentalium badense','badense','Fissidentalium','wild','Mollusc','Scaphopoda','Dentaliidae','Animal'),('fratarc','Fratercula arctica','arctica','Fratercula','wild','Bird','Aves','Alcidae','Animal'),('frincoe','Fringilla coelebs','coelebs','Fringilla','wild','Bird','Aves','Fringillidae','Animal'),('frinmon','Fringilla montifringilla','montifringilla','Fringilla','wild','Bird','Aves','Fringillidae','Animal'),('frutfru','Fruticicola fruticum','fruticicola fruticum','Fruticicola','wild','Mollusc','Gastropoda','Camaenidae','Animal'),('fuliatr','Fulica atra','atra','Fulica','wild','Bird','Aves','Rallidae','Animal'),('fulmgla','Fulmarus glacialis','glacialis','Fulmarus','wild','Bird','Aves','Procellariidae','Animal'),('GALAPSP','Galium aparine/spurium',NULL,'Galium','wild',NULL,NULL,'Rubiaceae','Plant'),('GALAPTR','Galium aparine/tricornutum',NULL,'Galium','wild',NULL,NULL,'Rubiaceae','Plant'),('GALEBIF','Galeopsis bifida','bifida','Galeopsis','wild',NULL,NULL,'Lamiaceae (Labiatae)','Plant'),('GALELAD','Galeopsis ladanum','ladanum','Galeopsis','wild',NULL,NULL,'Lamiaceae (Labiatae)','Plant'),('GALEOFF','Galega officinalis','officinalis','Galega','wild',NULL,NULL,'Fabaceae (Leguminosae)','Plant'),('GALESEG','Galeopsis segetum','segetum','Galeopsis','wild',NULL,NULL,'Lamiaceae (Labiatae)','Plant'),('GALESPE','Galeopsis spp.',NULL,'Galeopsis','wild',NULL,NULL,'Lamiaceae (Labiatae)','Plant'),('GALESTA','Galeopsis/Stachys spp.',NULL,NULL,'wild',NULL,NULL,'Lamiaceae (Labiatae)','Plant'),('GALETET','Galeopsis tetrahit','tetrahit','Galeopsis','wild',NULL,NULL,'Lamiaceae (Labiatae)','Plant'),('GALIAPA','Galium aparine','aparine','Galium','wild',NULL,NULL,'Rubiaceae','Plant'),('GALIBOR','Galium boreale','boreale','Galium','wild',NULL,NULL,'Rubiaceae','Plant'),('GALIMOL','Galium mollugo','mollugo','Galium','wild',NULL,NULL,'Rubiaceae','Plant'),('GALIPAL','Galium palustre','palustre','Galium','wild',NULL,NULL,'Rubiaceae','Plant'),('GALIRIV','Galium rivale','rivale','Galium','wild',NULL,NULL,'Rubiaceae','Plant'),('GALISAX','Galium saxatile','saxatile','Galium','wild',NULL,NULL,'Rubiaceae','Plant'),('GALISPE','Galium spp.',NULL,'Galium','wild',NULL,NULL,'Rubiaceae','Plant'),('GALISPU','Galium spurium','spurium','Galium','wild',NULL,NULL,'Rubiaceae','Plant'),('GALITRI','Galium tricornutum','tricornutum','Galium','wild',NULL,NULL,'Rubiaceae','Plant'),('GALIVER','Galium verum','verum','Galium','wild',NULL,NULL,'Rubiaceae','Plant'),('GALLAAN','Galeopsis ladanum/angustifolia',NULL,'Galeopsis','wild',NULL,NULL,'Lamiaceae (Labiatae)','Plant'),('GALLASE','Galeopsis ladanum/segetum',NULL,'Galeopsis','wild',NULL,NULL,'Lamiaceae (Labiatae)','Plant'),('GALMOVE','Galium mollugo/verum',NULL,'Galium','wild',NULL,NULL,'Rubiaceae','Plant'),('GALTEBI','Galeopsis tetrahit/bifida',NULL,'Galium','wild',NULL,NULL,'Lamiaceae (Labiatae)','Plant'),('GALTESP','Galeopsis tetrahit/speciosa',NULL,'Galium','wild',NULL,NULL,'Lamiaceae (Labiatae)','Plant'),('GALVERO','Galium/Veronica spp.',NULL,NULL,'wild',NULL,NULL,'Lamiaceae (Labiatae)','Plant'),('GAUDSPE','Gaudinopsis spp.',NULL,'Gaudenopsis','wild',NULL,NULL,'Poaceae (Graminae)','Plant'),('GENTSPE','Gentianella spp.',NULL,'Gentianella','wild',NULL,NULL,'Gentianaceae','Plant'),('GERALUC','Geranium lucidum','lucidum','Geranium','wild',NULL,NULL,'Geraniaceae','Plant'),('GEUMSPE','Geum spp.',NULL,'Geum','wild',NULL,NULL,'Rosaceae','Plant'),('GIPSOSP','Gypsophila spp.',NULL,'Gypsophila','wild',NULL,NULL,'Caryophyllaceae','Plant'),('GLAUMAR','Glaux maritima','maritima','Glaux','wild',NULL,NULL,'Primulaceae','Plant'),('GLECHED','Glechoma hederacea','hederacea','Glechoma','wild',NULL,NULL,'Lamiaceae (Labiatae)','Plant'),('GLYCFLU','Glyceria fluitans','fluitans','Glyceria','wild',NULL,NULL,'Poaceae (Gramineae)','Plant'),('GLYCPLI','Glyceria plicata','plicata','Glyceria','wild',NULL,NULL,'Poaceae (Gramineae)','Plant'),('GLYCSPE','Glyceria spp.',NULL,'Glyceria','wild',NULL,NULL,'Poaceae (Gramineae)','Plant'),('GRAMIND','Gramineae (Poaceae) indeterminate',NULL,NULL,'wild',NULL,NULL,'Poaceae (Gramineae)','Plant'),('gadiind','Gadidae',NULL,NULL,'wild','Fish','Actinopterygii','Gadidae','Animal'),('gadumor','Gadus morhua','morhua','Gadus','wild','Fish','Actinopterygii','Gadidae','Animal'),('gaduspe','Gadus species',NULL,'Gadus','wild','Fish','Actinopterygii','Gadidae','Animal'),('galegal','Galeorhinus galeus','galeus','Galeorhinus','wild','Fish','Chondrichthyes','Triakidae','Animal'),('gallchl','Gallinula chloropus','chloropus','Gallinula','wild','Bird','Aves','Rallidae','Animal'),('galldom','Gallus domesticus','domesticus','Gallus','domestic','Bird','Aves',NULL,'Animal'),('gallgal','Gallinago gallinago','gallinago','Gallinago','wild','Bird','Aves','Scolopacidae','Animal'),('gallind','Galliformes',NULL,NULL,'wild','Bird','Aves',NULL,'Animal'),('gallmed','Gallinago media','media','Gallinago','wild','Bird','Aves','Scolopacidae','Animal'),('gallspe','Gallinago species',NULL,'Gallinago','wild','Bird','Aves','Scolopacidae','Animal'),('galluspe','Gallus species',NULL,'Gallus','wild/domestic','Bird','Aves',NULL,'Animal'),('garrgla','Garrulus glandarius','glandarius','Garrulus','wild','Bird','Aves','Corvidae','Animal'),('gasinl','Gastropoda indeterminate land (land snails)',NULL,NULL,'wild','Mollusc','Gastropoda',NULL,'Animal'),('gastacu','Gasterosteus aculeatus','aculeatus','Gasterosteus','wild','Fish','Actinopterygii','Gasterosteidae','Animal'),('gastind','Gasterosteidae',NULL,NULL,'wild','Fish','Actinopterygii','Gasterosteidae','Animal'),('gastrop','Gastropoda',NULL,NULL,NULL,'Mollusc','Gastropoda',NULL,'Animal'),('gaviarc','Gavia arctica','arctica','Gavia','wild','Bird','Aves','Gaviidae','Animal'),('gaviimm','Gavia immer','immer','Gavia','wild','Bird','Aves','Gaviidae','Animal'),('gaviind','Gaviiformes',NULL,NULL,'wild','Bird','Aves',NULL,'Animal'),('gavispe','Gavia species',NULL,'Gavia','wild','Bird','Aves','Gaviidae','Animal'),('gaviste','Gavia stellata','stellata','Gavia','wild','Bird','Aves','Gaviidae','Animal'),('gazegaz','Gazella gazella','gazella','Gazella','wild','Land mammal','Mammalia',NULL,'Animal'),('gazespe','Gazella species',NULL,'Gazella','wild','Land mammal','Mammalia',NULL,'Animal'),('gazesub','Gazella subgutturosa','subgutturosa','Gazella','wild','Land mammal','Mammalia',NULL,'Animal'),('gerbspe','Gerbillinae',NULL,NULL,'wild','Rodent','Mammalia','Muridae','Animal'),('glirind','Gliridae',NULL,NULL,'wild','Rodent','Mammalia','Gliridae','Animal'),('glisgli','Glis glis','glis','Glis','wild','Rodent','Mammalia','Gliridae','Animal'),('gobigob','Gobio gobio','gobio','Gobio','wild','Fish','Actinopterygii','Cyprinidae','Animal'),('gobiind','Gobiidae',NULL,NULL,'wild','Fish','Actinopterygii','Gobiidae','Animal'),('gobispe','Gobius species',NULL,'Gobius','wild','Fish','Pisces',NULL,'Animal'),('gruiind','Gruiformes',NULL,NULL,'wild','Bird','Aves',NULL,'Animal'),('grusgru','Grus grus','grus','Grus','wild','Bird','Aves','Gruidae','Animal'),('grusspe','Grus sp.',NULL,'Grus','wild','Bird','Aves',NULL,'Animal'),('gulogul','Gulo gulo','gulo','Gulo','wild','Land mammal','Mammalia',NULL,'Animal'),('gymncer','Gymnocephalus cernuus','cernuus','Gymnocephalus','wild','Fish','Actinopterygii','Percidae','Animal'),('gymnspe','Gymnocephalus (Acerina) sp.',NULL,'Gymnocephalus (Acerina)','wild','Fish','Pisces',NULL,'Animal'),('gypabar','Gypaetus barbatus','barbatus','Gypaetus','wild','Bird','Aves',NULL,'Animal'),('HEDEHEL','Hedera helix','helix','Hedera','wild',NULL,NULL,'Araliaceae','Plant'),('HEDESPE','Hedera spp.',NULL,'Hedera','wild',NULL,NULL,'Araliaceae','Plant'),('HELIEUR','Heliotropium europaeum','europaeum','Heliotropium','wild',NULL,NULL,'Boraginaceae','Plant'),('HELISPE','Heliotropium sp.',NULL,'Heliotropium','wild',NULL,NULL,'Boraginaceae','Plant'),('HIERSPE','Hieracium spp.',NULL,'Hieraceum','wild',NULL,NULL,'Asteraceae (Compositae)','Plant'),('HIPPSPE','Hippocrepis sp.',NULL,'Hippocrepis','wild',NULL,NULL,'Fabaceae (Leguminosae)','Plant'),('HORDBUL','Hordeum bulbosum','bulbosum','Hordeum','wild/cultivated',NULL,NULL,'Poaceae (Graminae)','Plant'),('HORDDIN','Hordeum vulgare (sativum) ssp. distichon var nudum (2 row naked)','distichum','Hordeum','domestic',NULL,NULL,'Poaceae (Gramineae)','Plant'),('HORDDIS','Hordeum vulgare (sativum) ssp. distichon (2 row naked or hulled)','distichum','Hordeum','domestic',NULL,NULL,'Poaceae (Gramineae)','Plant'),('HORDHEX','Hordeum hexastichum (6 row naked or hulled)','vulgare','Hordeum','domestic',NULL,NULL,'Poaceae (Gramineae)','Plant'),('HORDLAG','Hordeum lagunculiforme aka H.spontaneum var. lagunculiforme',NULL,'Hordeum','wild/cultivated',NULL,NULL,'Poaceae (Gramineae)','Plant'),('HORDMAR','Hordeum marinum','marinum','Hordeum','wild',NULL,NULL,'Poaceae (Gramineae)','Plant'),('HORDMUR','Hordeum murinum','murinum','Hordeum','wild',NULL,NULL,'Poaceae (Gramineae)','Plant'),('HORDSPE','Hordeum spp.',NULL,'Hordeum','wild/domestic',NULL,NULL,'Poaceae (Gramineae)','Plant'),('HORDSPO','Hordeum spontaneum','spontaneum','Hordeum','wild',NULL,NULL,'Poaceae (Gramineae)','Plant'),('HORDSRT','Hordeum vulgare (sativum) 2-row hulled','vulgare','Hordeum','domestic',NULL,NULL,'Poaceae (Graminae)','Plant'),('HORSHUL','Hordeum vulgare (sativum) spp. vulgare aka H. hulled','vulgare','Hordeum','domestic',NULL,NULL,'Poaceae (Gramineae)','Plant'),('HORSHUN','Hordeum vulgare (sativum) hulled or naked','vulgare','Hordeum','domestic',NULL,NULL,'Poaceae (Gramineae)','Plant'),('HORSHUS','Hordeum vulgare (sativum) 6 row hulled','vulgare','Hordeum','domestic',NULL,NULL,'Poaceae (Gramineae)','Plant'),('HORSNAK','Hordeum vulgare (sativum) var. nudum aka H. naked','vulgare','Hordeum','domestic',NULL,NULL,'Poaceae (Gramineae)','Plant'),('HORSNAS','Hordeum vulgare (sativum) 6 row naked','vulgare','Hordeum','domestic',NULL,NULL,'Poaceae (Gramineae)','Plant'),('HORSPSA','Hordeum spontaneum/ vulgare (sativum)',NULL,'Hordeum','wild/domestic',NULL,NULL,'Poaceae (Gramineae)','Plant'),('HUMULUP','Humulus lupulus','lupulus','Humulus','wild',NULL,NULL,'Cannabaceae','Plant'),('HYOSNIG','Hyoscyamus niger','niger','Hyoscyamus','wild',NULL,NULL,'Solanaceae','Plant'),('HYOSSPE','Hyoscyamus spp.',NULL,'Hyoscyamus','wild',NULL,NULL,'Solanaceae','Plant'),('HYPEHIR','Hypericum hirsutum','hirsutum','Hypericum','wild',NULL,NULL,'Hypericaceae','Plant'),('HYPEPER','Hypericum perforatum','perforatum','Hypericum','wild',NULL,NULL,'Hypericaceae','Plant'),('HYPEPUL','Hypericum pulchrum','pulchrum','Hypericum','wild',NULL,NULL,'Hypericaceae','Plant'),('HYPESPE','Hypericum spp.',NULL,'Hypericum','wild',NULL,NULL,'Hypericaceae','Plant'),('HYPOCHO','Hypochoeris radicata','radicata','Hypochoeris','wild',NULL,NULL,'Asteraceae (Compositae)','Plant'),('haemost','Haematopus ostralegus','ostralegus','Haematopus','wild','Bird','Aves','Haematopodidae','Animal'),('halialb','Haliaeetos albicilla','albicilla','Haliaeetus','wild','Bird','Aves','Accipitridae','Animal'),('haligry','Halichoerus grypus','grypus','Halichoerus','wild','Marine mammal','Mammalia','Phocidae','Animal'),('helilut','Helix lutescens','lutescens','Helix','wild','Mollusc','Gastropoda',NULL,'Animal'),('heliobv','Helicella obvia','obvia','Helicella','wild','Mollusc','Gastropoda',NULL,'Animal'),('helipom','Helix pomatia','pomatia','Helix','wild','Mollusc','Gastropoda',NULL,'Animal'),('helispe','Helix species',NULL,'Helix','wild','Mollusc','Gastropoda',NULL,'Animal'),('hierpen','Hieraetus pennatus','pennatus','Hieraetus','wild','Bird','Aves',NULL,'Animal'),('hipphip','Hippoglossus hippoglossus','hippoglossus','Hippoglossus','wild','Fish','Actinopterygii','Pleuronectidae','Animal'),('hirurus','Hirundo rustica','rustica','Hirundo','wild','Bird','Aves','Hirundinidae','Animal'),('homosap','Homo sapiens','Homo sapiens','Homo','wild/domestic','Land mammal','Mammalia','Hominidae','Animal'),('huchhuc','Hucho hucho','hucho','Hucho','wild','Fish',NULL,NULL,'Animal'),('husohus','Huso huso','huso','Huso','wild','Fish',NULL,NULL,'Animal'),('ILEXAQU','Ilex aquifolium','aquifolium','Ilex','wild',NULL,NULL,'Aquifoliaceae','Plant'),('ILEXSPE','Ilex spp.',NULL,'Ilex','wild',NULL,NULL,'Aquifoliaceae','Plant'),('IRISPSE','Iris pseudacorus','pseudacorus','Iris','wild',NULL,NULL,'Irideae','Plant'),('ISOLSET','Isolepis setacea','setacea','Isolepis','wild',NULL,NULL,'Cyperaceae','Plant'),('inseind','Insectivora indet',NULL,NULL,'wild','Land mammal','Mammalia',NULL,'Animal'),('JUGLREG','Juglans regia','regia','Juglans','wild/cultivated',NULL,NULL,'Juglandaceae','Plant'),('JUNCONA','Juniperus communis/nana',NULL,'Juniperus','wild',NULL,NULL,'Cupressaceae','Plant'),('JUNCSPE','Juncus spp.',NULL,'Juncus','wild',NULL,NULL,'Juncaceae','Plant'),('JUNCSQU','Juncus squarrosa',NULL,'Juncus','wild',NULL,NULL,'Juncaceae','Plant'),('JUNICOM','Juniperus communis','communis','Juniperus','wild',NULL,NULL,'Cupressaceae','Plant'),('JUNIPHO','Juniperus phoenicea','phoenicea','Juniperus','wild',NULL,NULL,'Cupressaceae','Plant'),('JUNISPE','Juniperus spp.',NULL,'Juniperus','wild',NULL,NULL,'Cupressaceae','Plant'),('KNAUARV','Knautia arvensis','arvensis','Knautia','wild',NULL,NULL,'Dipsacaceae','Plant'),('KOENSPE','Koenigia',NULL,'Koenigia','wild',NULL,NULL,'Polygonaceae','Plant'),('LABIIND','Labiatae (Lamiaceae) indeterminate',NULL,NULL,'wild',NULL,NULL,'Lamiaceae (Labiatae)','Plant'),('LACTSER','Lactuca serriola','serriola','Lactuca','wild',NULL,NULL,'Asteraceae','Plant'),('LALLIBE','Lallemantia iberica','iberica','Lallemantia','wild',NULL,NULL,'Lamiaceae (Labiatae)','Plant'),('LAMIALB','Lamium album','album','Lamium','wild',NULL,NULL,'Lamiaceae (Labiatae)','Plant'),('LAMIAMP','Lamium amplexicaule','amplexicaule','Lamium','wild',NULL,NULL,'Lamiaceae (Labiatae)','Plant'),('LAMIIND','Lamiaceae indeterminate',NULL,NULL,'wild',NULL,NULL,'Lamiaceae','Plant'),('LAMISPE','Lamium spp.',NULL,'Lamium','wild',NULL,NULL,'Lamiaceae (Labiatae)','Plant'),('LAPPSPE','Lappula spp.',NULL,'Lappula',NULL,NULL,NULL,'Boraginaceae','Plant'),('LAPSCOM','Lapsana communis','communis','Lapsana','wild',NULL,NULL,'Asteraceae (Compositae)','Plant'),('LARISPE','Larix spp.',NULL,'Larix','wild',NULL,NULL,'Pinaceae','Plant'),('LATCISA','Lathyrus cicera/sativus',NULL,'Lathyrus','wild/domestic',NULL,NULL,'Fabaceae (Leguminosae)','Plant'),('LATHAPH','Lathyrus aphaca','aphaca','Lathyrus','wild/domestic',NULL,NULL,'Fabaceae (Leguminosae)','Plant'),('LATHCIC','Lathyrus cicera','cicera','Lathyrus','wild',NULL,NULL,'Fabaceae (Leguminosae)','Plant'),('LATHHIR','Lathyrus hirsuta aka L.hirsutus','hirsuta','Lathyrus','wild',NULL,NULL,'Fabaceae (Leguminosae)','Plant'),('LATHNIS','Lathyrus nissolia','nissolia','Lathyrus','wild',NULL,NULL,'Fabaceae (Leguminosae)','Plant'),('LATHPIS','Lathyrus/Pisum spp.',NULL,NULL,'wild/domestic',NULL,NULL,'Fabaceae (Leguminosae)','Plant'),('LATHPRA','Lathyrus pratensis','pratensis','Lathyrus','wild',NULL,NULL,'Fabaceae (Leguminosae)','Plant'),('LATHSAT','Lathyrus sativus','sativus','Lathyrus','domestic',NULL,NULL,'Fabaceae (Leguminosae)','Plant'),('LATHSPE','Lathyrus spp.',NULL,'Lathyrus','wild/domestic',NULL,NULL,'Fabaceae (Leguminosae)','Plant'),('LATHTUB','Lathyrus tuberosus','tuberosus','Lathyrus','wild',NULL,NULL,'Fabaceae (Leguminosae)','Plant'),('LEGUIND','Leguminosae (Fabaceae) indeterminate',NULL,NULL,'wild/domestic',NULL,NULL,'Fabaceae (Leguminosae)','Plant'),('LEGUINL','Leguminosae (Fabaceae) indeterminate large',NULL,NULL,'domestic',NULL,NULL,'Fabaceae (Leguminosae)','Plant'),('LEGUINS','Leguminosae (Fabaceae) indeterminate small',NULL,NULL,'wild',NULL,NULL,'Fabaceae (Leguminosae)','Plant'),('LEMNSPE','Lemna spp.',NULL,'Lemna','wild',NULL,NULL,'Araceae','Plant'),('LENSCUL','Lens culinaris','culinaris','Lens','domestic',NULL,NULL,'Fabaceae (Leguminosae)','Plant'),('LENSSPE','Lens spp.',NULL,'Lens','wild/domestic',NULL,NULL,'Fabaceae (Leguminosae)','Plant'),('LENSVIC','Lens/Vicia spp.',NULL,NULL,'wild/domestic',NULL,NULL,'Fabaceae (Leguminosae)','Plant'),('LEONAUT','Leontodon autumnalis','autumnalis','Leontodon','wild',NULL,NULL,'Asteraceae (Compositae)','Plant'),('LEPISPE','Lepidium spp.',NULL,'Lepidium','wild',NULL,NULL,'Brassicaceae (Cruciferae)','Plant'),('LILIIND','Liliaceae indeterminate',NULL,NULL,'wild',NULL,NULL,'Liliaceae','Plant'),('LINALUS','Linum alpinum/usitatissimum',NULL,'Linum','wild/domestic',NULL,NULL,'Linaceae','Plant'),('LINUBIE','Linum bienne','bienne','Linum','wild/domestic',NULL,NULL,'Linaceae','Plant'),('LINUCAT','Linum catharticum','catharticum','Linum','wild',NULL,NULL,'Linaceae','Plant'),('LINUSIC','Linum usitatissimum capsules/fragments',NULL,'Linum','domestic',NULL,NULL,'Linaceae','Plant'),('LINUSPC','Linum spp. capsules/fragments',NULL,'Linum','wild/domestic',NULL,NULL,'Linaceae','Plant'),('LINUSPE','Linum spp.',NULL,'Linum','wild/domestic',NULL,NULL,'Linaceae','Plant'),('LINUUSI','Linum usitatissimum','usitatissimum','Linum','domestic',NULL,NULL,'Linaceae','Plant'),('LITHARV','Lithospermum arvense','arvense','Lithospermum','wild',NULL,NULL,'Boraginaceae','Plant'),('LITHOFF','Lithospermum officinalis','officinalis','Lithospermum','wild',NULL,NULL,'Boraginaceae','Plant'),('LITHOPU','Lithospermum purpurocaeruleum','purpurocaeruleum','Lithospermum','wild',NULL,NULL,'Boraginaceae','Plant'),('LOLIPER','Lolium perenne','perenne','Lolium','wild',NULL,NULL,'Poaceae (Gramineae)','Plant'),('LOLIREM','Lolium remotum','remotum','Lolium','wild',NULL,NULL,'Poaceae (Gramineae)','Plant'),('LOLISPE','Lolium spp.',NULL,'Lolium','wild',NULL,NULL,'Poaceae (Gramineae)','Plant'),('LOLITEM','Lolium temulentum','temulentum','Lolium','wild',NULL,NULL,'Poaceae (Gramineae)','Plant'),('LOLRIPE','Lolium rigidum/perenne',NULL,'Lolium','wild',NULL,NULL,'Poaceae (Gramineae)','Plant'),('LONIXYL','Lonicera xylosteum','xylosteum','Lonicera','wild',NULL,NULL,'Caprifoliaceae','Plant'),('LOTUPED','Lotus pedunculatus','pedunculatus','Lotus','wild',NULL,NULL,'Fabaceae (Leguminosae)','Plant'),('LUPIALB','Lupinus albus','albus','Lupinus','cultivated',NULL,NULL,'Fabaceae (Leguminosae)','Plant'),('LUZCAMU','Luzula campestris/multiflora',NULL,'Luzula','wild',NULL,NULL,'Juncaceae','Plant'),('LUZUCAM','Luzula campestris','campestris','Luzula','wild',NULL,NULL,'Juncaceae','Plant'),('LUZULUZ','Luzula luzuloides','luzuloides','Luzula','wild',NULL,NULL,'Juncaceae','Plant'),('LUZUMUL','Luzula multiflora','multiflora','Luzula','wild',NULL,NULL,'Juncaceae','Plant'),('LUZUSPE','Luzula spp.',NULL,'Luzula','wild',NULL,NULL,'Juncaceae','Plant'),('LYCHFLC','Lychnis flos-cuculi','flos-cuculi','Lychnis','wild',NULL,NULL,'Caryophyllaceae','Plant'),('LYCHSPE','Lychnis spp.',NULL,'Lychnis','wild',NULL,NULL,'Caryophyllaceae','Plant'),('LYCOEUR','Lycopus europaeus','europaeus','Lycopus','wild',NULL,NULL,'Lamiaceae (Labiatae)','Plant'),('LYTHSAL','Lythrum salicaria','salicaria','Lythrum','wild',NULL,NULL,'Lythraceae','Plant'),('labrber','Labrus bergylta','bergylta','Labrus','wild','Fish','Actinopterygii','Labridae','Animal'),('labrind','Labridae',NULL,NULL,'wild','Fish','Actinopterygii','Labridae','Animal'),('labrspe','Labrus sp.',NULL,'Labrus','wild','Fish','Actinopterygii','Labridae','Animal'),('lacespe','Lacerta species',NULL,'Lacerta','wild','Reptile','Reptilia','Lacertidae','Animal'),('lacevir','Lacerta viridis','viridis','Lacerta','wild','Reptile','Reptilia',NULL,'Animal'),('lagoind','Lagomorpha',NULL,NULL,'wild','Land mammal','Mammalia',NULL,'Animal'),('lagolag','Lagopus lagopus','lagopus','Lagopus','wild','Bird','Aves',NULL,'Animal'),('lagospe','Lagopus species',NULL,'Lagopus','wild','Bird','Aves',NULL,'Animal'),('lamnind','Lamniformes',NULL,NULL,'wild','Fish','Pisces',NULL,'Animal'),('lariind','Laridae',NULL,NULL,'wild','Bird','Aves','Laridae','Animal'),('laruarg','Larus argentatus','argentatus','Larus','wild','Bird','Aves','Laridae','Animal'),('larucan','Larus canus','canus','Larus','wild','Bird','Aves','Laridae','Animal'),('larumar','Larus marinus','marinus','Larus','wild','Bird','Aves','Laridae','Animal'),('larurid','Larus ridibundus','ridibundud','Larus','wild','Bird','Aves','Laridae','Animal'),('laruspe','Larus species',NULL,'Larus','wild','Bird','Aves','Laridae','Animal'),('leicidu','Leiciscus idus','idus','Leiciscus','wild','Fish','Pisces',NULL,'Animal'),('lepiind','Lepisosteidae',NULL,NULL,'wild','Fish','Pisces','Lepisosteidae','Animal'),('lepucap','Lepus capensis','capensis','Lepus','wild','Land mammal','Mammalia','Leporidae','Animal'),('lepueur','Lepus europaeus','europaeus','Lepus','wild','Land mammal','Mammalia','Leporidae','Animal'),('lepuspe','Lepus species',NULL,'Lepus','wild','Land mammal','Mammalia','Leporidae','Animal'),('leputim','Lepus timidus','timidus','Lepus','wild','Land mammal','Mammalia','Leporidae','Animal'),('leputol','Lepus tolai','tolai','Lepus','wild','Land mammal','Mammalia','Leporidae','Animal'),('leuccep','Leuciscus cephalus','cephalus','Leuciscus','wild','Fish','Actinopterygii','Cyprinidae','Animal'),('leucidu','Leuciscus idus','idus','Leuciscus','wild','Fish','Actinopterygii','Cyprinidae','Animal'),('leucleu','Leuciscus leuciscus','leuciscus','Leuciscus','wild','Fish','Actinopterygii','Cyprinidae','Animal'),('leucspe','Leuciscus species',NULL,'Leuciscus','wild','Fish','Actinopterygii','Cyprinidae','Animal'),('limolap','Limosa lapponica','lapponica','Limosa','wild','Bird','Aves','Scolopacidae','Animal'),('limolim','Limosa limosa','limosa','Limosa','wild','Bird','Aves','Scolopacidae','Animal'),('limospe','Limosa species',NULL,'Limosa','wild','Bird','Aves','Scolopacidae','Animal'),('lindcor','Lindholmiola corcryensis','corcryensis','Lindholmiola','wild','Mollusc','Gastropoda',NULL,'Animal'),('lithnat','Lithoglyphus naticoides','naticoides','Lithoglyphus','wild','Mollusc','Gastropoda',NULL,'Animal'),('lizaram','Liza ramada','ramada','Liza','wild','Fish','Actinopterygii','Mugilidae','Animal'),('lizaspe','Liza species',NULL,'Liza','wild','Fish','Actinopterygii','Mugilidae','Animal'),('lotalot','Lota lota','lota','Lota','wild','Fish','Actinopterygii','Lotidae','Animal'),('lotiind','Lotidae',NULL,NULL,'wild','Fish','Actinopterygii','Lotidae','Animal'),('loxipyt','Loxia pytyopsittacus','pytyopsittacus','Loxia','wild','Bird','Aves','Fringillidae','Animal'),('luciluc','Lucioperca lucioperca','lucioperca','Lucioperca','wild','Fish','Actinopterygii','Percidae','Animal'),('lutrlut','Lutra lutra','lutra','Lutra','wild','Land mammal','Mammalia','Mustelidae','Animal'),('lymnmin','Lymnocryptes minimus','minimus','Lymnocryptes','wild','Bird','Aves','Scolopacidae','Animal'),('lymnsta','Lymnea stagnalis','stagnalis','Limnea','wild','Mollusc','Gastropoda',NULL,'Animal'),('lynxlyn','Lynx lynx','lynx','Lynx','wild','Land mammal','Mammalia','Felidae','Animal'),('lynxpar','Lynx pardina','pardina','Lynx','wild','Land mammal','Mammalia','Felidae','Animal'),('lynxspe','Lynx species',NULL,'Lynx','wild','Land mammal','Mammalia','Felidae','Animal'),('lyrutet','Lyrurus tetrix','tetrix','Lyrurus','wild','Bird','Aves','Phasianidae','Animal'),('MALDOSY','Malus domestica/sylvestris',NULL,'Malus','wild/domestic',NULL,NULL,'Rosaceae','Plant'),('MALOIDE','Maloideae (e.g., incl. Malus, Pyrus, Sorbus, Cydonia, etc.)',NULL,NULL,'wild/cultivated',NULL,NULL,'Rosaceae','Plant'),('MALUPUM','Malus pumila','pumila','Malus','domestic',NULL,NULL,'Maloideae','Plant'),('MALUSOR','Malus sylvestris/Sorbus spp.',NULL,NULL,'wild',NULL,NULL,'Rosaceae','Plant'),('MALUSPE','Malus spp.',NULL,'Malus','wild',NULL,NULL,'Rosaceae','Plant'),('MALUSYL','Malus sylvestris','sylvestris','Malus','wild',NULL,NULL,'Rosaceae','Plant'),('MALVIND','Malvaceae indeterminate',NULL,NULL,'wild',NULL,NULL,'Malvaceae','Plant'),('MALVNEG','Malva neglecta','neglecta','Malva','wild',NULL,NULL,'Malvaceae','Plant'),('MALVSPE','Malva spp.',NULL,'Malva','wild',NULL,NULL,'Malvaceae','Plant'),('MALVSYL','Malva sylvestris','sylvestris','Malva','wild',NULL,NULL,'Malvaceae','Plant'),('MASYPYC','Malus sylvestris/Pyrus communis',NULL,NULL,'wild/domestic',NULL,NULL,'Rosaceae','Plant'),('MATRCHA','Matricaria chamomilla','chamomilla','Matricaria','wild',NULL,NULL,'Asteraceae (Compositae)','Plant'),('MATRSPE','Matricaria spp.',NULL,'Matricaria','wild',NULL,NULL,'Asteraceae','Plant'),('MEDIFAL','Medicago falcata','falcata','Medicago','wild/domestic',NULL,NULL,'Fabaceae (Leguminosae)','Plant'),('MEDILUP','Medicago lupulina','lupulina','Medicago','wild',NULL,NULL,'Fabaceae (Leguminosae)','Plant'),('MEDIMIN','Medicago minima','minima','Medicago','wild',NULL,NULL,'Fabaceae (Leguminosae)','Plant'),('MEDISAT','Medicago sativa','sativa','Medicago','wild',NULL,NULL,'Fabaceae (Leguminosae)','Plant'),('MEDISPE','Medicago spp.',NULL,'Medicago','wild',NULL,NULL,'Fabaceae (Leguminosae)','Plant'),('MELAPRA','Melampyrum pratense','pratense','Melampyrum','wild',NULL,NULL,'Scrophulariaceae','Plant'),('MELASPE','Melampyrum spp.',NULL,'Melampyrum','wild',NULL,NULL,'Scrophulariaceae','Plant'),('MELIAFA','Melilotus officinalis/albus',NULL,'Melilotus','wild',NULL,NULL,'Fabaceae (Leguminosae)','Plant'),('MELIALB','Melilotus albus (alba)','albus','Melilotus','wild',NULL,NULL,'Fabaceae (Leguminosae)','Plant'),('MELIALT','Melilotus altissima','altissima','Melilotus','wild',NULL,NULL,'Fabaceae (Leguminosae)','Plant'),('MELISPE','Melilotus spp.',NULL,'Melilotus','wild',NULL,NULL,'Fabaceae (Leguminosae)','Plant'),('MELITRI','Melilotus/Trifolium sp.',NULL,NULL,'wild',NULL,NULL,'Fabaceae (Leguminosae)','Plant'),('MELIUNI','Melica uniflora','uniflora','Melica','wild',NULL,NULL,'Poaceae (Gramineae)','Plant'),('MENAQAR','Mentha aquatica/arvensis',NULL,'Mentha','wild',NULL,NULL,'Lamiaceae (Labiatae)','Plant'),('MENTAQU','Mentha aquatica','aquatica','Mentha','wild',NULL,NULL,'Lamiaceae (Labiatae)','Plant'),('MENTARV','Mentha arvensis','arvensis','Mentha','wild',NULL,NULL,'Lamiaceae (Labiatae)','Plant'),('MENTORI','Mentha/Origanum spp.',NULL,NULL,'wild',NULL,NULL,'Lamiaceae (Labiatae)','Plant'),('MENTSPE','Mentha spp.',NULL,'Mentha','wild',NULL,NULL,'Lamiaceae (Labiatae)','Plant'),('MENYSPE','Menyanthes spp.',NULL,'Menyanthese','wild',NULL,NULL,'Menyanthaceae','Plant'),('MENYTRI','Menyanthes trifoliata','trifoliata','Menyanthese','wild',NULL,NULL,'Menyanthaceae','Plant'),('MERCANN','Mercurialis annua','annuis','Mercuralis','wild',NULL,NULL,'Euphorbiaceae','Plant'),('MINUHYB','Minuartia hybrida','hybrida','Minuartia','wild',NULL,NULL,'Caryophyllaceae','Plant'),('MOEHSPE','Moehringia spp.',NULL,'Moehringia','wild',NULL,NULL,'Caryophyllaceae','Plant'),('MOEHTRI','Moehringia trinervia','trinervia','Moehringia','wild',NULL,NULL,'Caryophyllaceae','Plant'),('MOLICAA','Molinia arundinacea','arundinacea','Molinia','wild',NULL,NULL,'Poaceae (Gramineae)','Plant'),('MOLICAE','Molinia caerulea','caerulea','Molinia','wild',NULL,NULL,'Poaceae (Gramineae)','Plant'),('MOLISIE','Molinia/Sieglingia spp.',NULL,NULL,'wild',NULL,NULL,'Poaceae (Gramineae)','Plant'),('MONODIC','Monocotyledonous/Dicotyledonous',NULL,NULL,'wild',NULL,NULL,NULL,'Plant'),('MONOIND','Monocotyledonous indeterminate',NULL,NULL,'wild',NULL,NULL,NULL,'Plant'),('MONTFON','Montia fontana','fontana','Montia','wild',NULL,NULL,'Portulacaceae','Plant'),('MONTSPE','Montia spp.',NULL,'Montia','wild',NULL,NULL,'Portulacaceae','Plant'),('MYONAQU','Myosoton aquaticum','aquaticum','Myosoton','wild',NULL,NULL,'Caryophyllaceae','Plant'),('MYOSARV','Myosotis arvensis','arvensis','Myosotis','wild',NULL,NULL,'Boraginaceae','Plant'),('MYOSSCO','Myosotis scorpioides','scorpioides','Myosotis','wild',NULL,NULL,'Boraginaceae','Plant'),('MYOSSPE','Myosotis spp.',NULL,'Myosotis','wild',NULL,NULL,'Boraginaceae','Plant'),('majasqu','Maja squinado','squinado','Maia','wild','Crustacean','Malacostraca','Majidae','Animal'),('malindf','Malacostraca freshwater',NULL,NULL,'wild','Mollusc','Malacostraca',NULL,'Animal'),('malindm','Malacostraca marine',NULL,NULL,'wild','Crustacean','Malacostraca',NULL,'Animal'),('mamindl','Mammalia large',NULL,NULL,'wild/domestic','Land mammal','Mammalia',NULL,'Animal'),('mamindm','Mammalia medium','medium',NULL,'wild/domestic','Land mammal','Mammalia',NULL,'Animal'),('maminds','Mammalia small',NULL,NULL,'wild/domestic','Land mammal','Mammalia',NULL,'Animal'),('mammind','Mammalia',NULL,NULL,'wild/domestic','Land mammal','Mammalia',NULL,'Animal'),('mammpri','Mammuthus primigenius','primigenius','Mammuthus','wild','Land mammal','Mammalia',NULL,'Animal'),('margmar','Margaritifera margaritifera','margaritifera','Margaritifera','wild','Mollusc','Bivalvia','Margaritiferidae','Animal'),('marmmar','Marmota marmota','marmota','Marmota','wild','Rodent','Mammalia','Sciuridae','Animal'),('marmspe','Marmota species',NULL,'Marmota','wild','Rodent','Mammalia',NULL,'Animal'),('martfoi','Martes foina','foina','Martes','wild','Land mammal','Mammalia','Mustelidae','Animal'),('martmar','Martes martes','martes','Martes','wild','Land mammal','Mammalia','Mustelidae','Animal'),('martspe','Martes species',NULL,'Martes','wild','Land mammal','Mammalia','Mustelidae','Animal'),('martzib','Martes zibellina','zibellina','Martes','wild','Land mammal','Mammalia','Mustelidae','Animal'),('melaaeg','Melanogrammus aeglefinus','aeglefinus','Melanogrammus','wild','Fish','Actinopterygii','Gadidae','Animal'),('melafus','Melanitta fusca','fusca','Melanitta','wild','Bird','Aves','Anatidae','Animal'),('melanig','Melanitta nigra','nigra','Melanitta','wild','Bird','Aves','Anatidae','Animal'),('melemel','Meles meles','meles','Meles','wild','Land mammal','Mammalia','Mustelidae','Animal'),('mergalb','Mergus albellus','albellus','Mergus','wild','Bird','Aves','Anatidae','Animal'),('mergmer','Mergus merganser','merganser','Mergus','wild','Bird','Aves','Anatidae','Animal'),('mergser','Mergus serrator','serrator','Mergus','wild','Bird','Aves','Anatidae','Animal'),('merlmer','Merlangius merlangus','merlangus','Merlangius','wild','Fish','Actinopterygii','Gadidae','Animal'),('micragr','Microtus agrestis','agrestis','Microtus','wild','Rodent','Mammalia','Cricetidae','Animal'),('micrarv','Microtus arvalis','arvalis','Microtus','wild','Rodent','Mammalia','Cricetidae','Animal'),('micrind','Microtidae',NULL,NULL,'wild','Rodent','Mammalia','Microtidae','Animal'),('micrmin','Micromys minutus','minutus','Micromys','wild','Rodent','Mammalia','Muridae','Animal'),('microec','Microtus oeconomus','oeconomus','Microtus','wild','Rodent','Mammalia','Cricetidae','Animal'),('micrspe','Microtus species',NULL,'Microtus','wild','Rodent','Mammalia','Cricetidae','Animal'),('micrsub','Microtus subterraneus','subterraneus','Microtus','wild','Rodent','Mammalia','Cricetidae','Animal'),('milvmig','Milvus migrans','migrans','Milvus','wild','Bird','Aves','Accipitridae','Animal'),('milvmil','Milvus milvus','milvus','Milvus','wild','Bird','Aves','Accipitridae','Animal'),('molindf','Mollusca freshwater',NULL,NULL,'wild','Mollusc',NULL,NULL,'Animal'),('molindm','Mollusca marine',NULL,NULL,'wild','Mollusc',NULL,NULL,'Animal'),('molindt','Mollusca terrestrial',NULL,NULL,'wild','Mollusc',NULL,NULL,'Animal'),('mollind','Mollusca',NULL,NULL,'wild','Mollusc',NULL,NULL,'Animal'),('molvmol','Molva molva','molva','Molva','wild','Fish','Actinopterygii','Lotidae','Animal'),('monamon','Monachus monachus','monachus','Monachus','wild','Marine mammal','Mammalia',NULL,'Animal'),('moruspe','Morus species',NULL,'Morus','wild','Bird','Aves','Sulidae','Animal'),('motaalb','Motacilla alba','alba','Motacilla','wild','Bird','Aves','Motacillidae','Animal'),('motafla','Motacilla flava','flava','Motacilla','wild','Bird','Aves','Motacillidae','Animal'),('mugicur','Mugil curema','curema','Mugil','wild','Fish','Actinopterygii','Mugilidae','Animal'),('mugiind','Mugilidae',NULL,NULL,'wild','Fish','Actinopterygii','Mugilidae','Animal'),('murahel','Muraena helena','helena','Muraena','wild','Fish','Actinopterygii','Muraenidae','Animal'),('muriind','Muridae',NULL,NULL,'wild','Rodent','Mammalia','Muridae','Animal'),('musmusc','Mus musculus','musculus','Mus','wild','Rodent','Mammalia','Muridae','Animal'),('musspec','Mus species',NULL,'Mus','wild/domestic','Rodent','Mammalia','Muridae','Animal'),('mustelu','Mustela species',NULL,'Mustela','wild','Fish','Chondrichthyes','Triakidae','Animal'),('musterm','Mustela erminea','erminea','Mustela','wild','Land mammal','Mammalia','Mustelidae','Animal'),('musteve','Mustela eversmannii','eversmannii','Mustela','wild','Land mammal','Mammalia','Mustelidae','Animal'),('mustind','Mustelidae',NULL,NULL,'wild','Land mammal','Mammalia','Mustelidae','Animal'),('mustlut','Mustela lutreola','lutreola','Mustela','wild','Land mammal','Mammalia','Mustelidae','Animal'),('mustniv','Mustela nivalis','nivalis','Mustela','wild','Land mammal','Mammalia','Mustelidae','Animal'),('mustput','Mustela putorius','putorius','Mustela','wild','Land mammal','Mammalia','Mustelidae','Animal'),('mustspe','Mustela species',NULL,'Mustela','wild','Land mammal','Mammalia','Mustelidae','Animal'),('myodgla','Myodes glareolus','glareolus','Myodes','wild','Rodent','Mammalia','Cricetidae','Animal'),('myotmyo','Myotis myotis','myotis','Myotis','wild','Bat','Mammalia','Vespertilionidae','Animal'),('myoxqua','Myoxocephalus quadricornis','quadricornis','Myoxocephalus','wild','Fish',NULL,NULL,'Animal'),('myoxsco','Myoxocephalus scorpius','scorpius','Myoxocephalus','wild','Fish','Actinopterygii','Cottidae','Animal'),('mytigal','Mytilus galoprovincialis','galoprovincialis','Mytilus','wild','Mollusc','Bivalvia',NULL,'Animal'),('mytispe','Mytilus sp.',NULL,'Mytilus','wild','Mollusc','Bivalvia',NULL,'Animal'),('NAJAMAR','Najas marina','marina','Najas','wild',NULL,NULL,'Najadaceae','Plant'),('NAJFLEX','Najas flexilis','flexilis','Najas','wild',NULL,NULL,'Najadaceae','Plant'),('NARDSTR','Nardus stricta','stricta','Nardus','wild',NULL,NULL,'Poaceae (Gramineae)','Plant'),('NEPECAT','Nepeta cataria','cataria','Nepeta','wild',NULL,NULL,'Lamiaceae (Labiatae)','Plant'),('NEPESPE','Nepeta spp.',NULL,'Nepeta','wild',NULL,NULL,'Lamiaceae (Labiatae)','Plant'),('NESLIPA','Neslia paniculata','paniculata','Neslia','wild',NULL,NULL,'Brassicaceae (Cruciferae)','Plant'),('NUPHLUT','Nuphar lutea','lutea','Nuphar','wild',NULL,NULL,'Nymphaeaceae','Plant'),('NUPHPUM','Nuphar pumilum','pumilum','Nuphar','wild',NULL,NULL,'Nymphaeaceae','Plant'),('NUPHSPE','Nuphar spp.',NULL,'Nuphar','wild',NULL,NULL,'Nymphaeaceae','Plant'),('NYMPALB','Nymphaea alba','alba','Nymphaea','wild',NULL,NULL,'Nymphaeaceae','Plant'),('NYMPSPE','Nymphaea spp.',NULL,'Nymphaea','wild',NULL,NULL,'Nymphaeaceae','Plant'),('nannleu','Nannospalax leucodon','leucodon','Nannospalax','wild','Rodent',NULL,NULL,'Animal'),('natrnat','Natrix natrix','natrix','Natrix','wild','Reptile','Reptilia','Colubridae','Animal'),('natrspe','Natrix species',NULL,'Natrix','wild','Reptile','Reptilia','Colubridae','Animal'),('neogspe','Neogastropoda sp.',NULL,'Neogastropoda','wild','Mollusc',NULL,NULL,'Animal'),('neomano','Neomys anomalus','anomalus','Neomys','wild','Rodent','Mammalia','Soricidae','Animal'),('neomfod','Neomys fodiens','fodiens','Neomys','wild','Rodent','Mammalia','Soricidae','Animal'),('nucelap','Nucella lapillus','lapillus','Nucella','wild','Mollusc','Gastropoda','Muricidae','Animal'),('numearq','Numenius arquata','arquata','Numenius','wild','Bird','Aves','Scolopacidae','Animal'),('numespe','Numenius species',NULL,'Numenius','wild','Bird','Aves','Scolopacidae','Animal'),('nyctnyc','Nycticorax nycticorax','nycticorax','Nycticorax','wild','Bird','Aves',NULL,'Animal'),('nyrofer','Nyroca ferina','ferina','Nyroca','wild','Bird','Aves','Anatidae','Animal'),('ODONEUP','Odontites/Euphrasia spp.',NULL,NULL,'wild',NULL,NULL,'Scrophulariaceae','Plant'),('OENAAQU','Oenanthe aquatica','aquatica','Oenanthe','wild',NULL,NULL,'Apiaceae(Umbelliferae)','Plant'),('OENAFIS','Oenanthe fistulosa','fistulosa','Oenanthe','wild',NULL,NULL,'Apiaceae(Umbelliferae)','Plant'),('OLEAEV','Olea europaea','europaea','Olea','domestic',NULL,NULL,'Oleaceae','Plant'),('ONOBSPE','Onobrychis sp.',NULL,'Onobrychis','wild/cultivated',NULL,NULL,'Fabaceae (Leguminosae)','Plant'),('ONOPACA','Onopordum acanthium','acanthium','Onopordum','wild',NULL,NULL,'Asteraceae','Plant'),('ONOPSPE','Onopordum spp.','acanthium','Onopordum','wild',NULL,NULL,'Asteraceae','Plant'),('ORIGVUL','Origanum vulgare','vulgare','Origanum','wild',NULL,NULL,'Lamiaceae (Labiatae)','Plant'),('OSTRCAR','Ostrya carpinifolia','carpinifolia','Ostrya','wild',NULL,NULL,'Betulaceae','Plant'),('OXALACE','Oxalis acetosella','acetosella','Oxalis','wild',NULL,NULL,'Oxalidaceae','Plant'),('ophidia','Ophidia',NULL,NULL,'wild','Reptile','Reptilia',NULL,'Animal'),('orciorc','Orcinus orca','orca','Orcinus','wild','Marine mammal','Malacostraca','Delphinidae','Animal'),('oryccun','Oryctolagus cuniculus','cuniculus','Oryctolagus','wild','Land mammal','Mammalia','Leporidae','Animal'),('osmeepe','Osmerus eperlanus','eperlanus','Osmerus','wild','Fish','Actinopterygii','Osmeridae','Animal'),('ostredu','Ostrea edulis','edulis','Ostrea','wild','Mollusc','Bivalvia','Ostreidae','Animal'),('ostrind','Ostreidae indeterminate',NULL,NULL,'wild','Mollusc','Bivalvia','Osteridae','Animal'),('otistar','Otis tarda','tarda','Otis','wild','Bird','Aves','Otidae','Animal'),('ovcapcap','Ovis / Capra / Capreolus',NULL,NULL,'wild/domestic','Land mammal','Mammalia',NULL,'Animal'),('ovicapwd','Ovis sp. / Capra sp.',NULL,NULL,'wild/domestic','Land mammal','Mammalia','Bovidae','Animal'),('ovimcapa','Ovis musimon / Capra aegagrus',NULL,'Ovis/Capra','wild','Land mammal','Mammalia','Bovidae','Animal'),('ovisamm','Ovis ammon','ammon','Ovis','wild','Land mammal','Mammalia','Bovidae','Animal'),('ovisari','Ovis aries','aries','Ovis','domestic','Land mammal','Mammalia','Bovidae','Animal'),('oviscap','Ovis aries / Capra hircus',NULL,'Ovis/Capra','domestic','Land mammal','Mammalia','Bovidae','Animal'),('ovismus','Ovis musimon','musimon','Ovis','wild','Land mammal','Mammalia','Bovidae','Animal'),('ovisspe','Ovis species',NULL,'Ovis','wild/domestic','Land mammal','Mammalia','Bovidae','Animal'),('oxycino','Oxychilus inopinatus','inopinatus','Oxychilus','wild','Mollusc','Gastropoda',NULL,'Animal'),('PANIIND','Panicoideae indeterminate',NULL,NULL,'wild',NULL,NULL,'Poaceae (Gramineae)','Plant'),('PANIMIL','Panicum miliaceum','miliaceum','Panicum','domestic',NULL,NULL,'Poaceae (Gramineae)','Plant'),('PANISPE','Panicum spp.',NULL,'Panicum','wild/cultivated',NULL,NULL,'Poaceae (Gramineae)','Plant'),('PAPAARG','Papaver argemone','argemone','Papaver','wild',NULL,NULL,'Papaveraceae','Plant'),('PAPARHO','Papaver rhoeas','rhoeas','Papaver','wild',NULL,NULL,'Papaveraceae','Plant'),('PAPASOM','Papaver somniferum','somniferum','Papaver','domestic',NULL,NULL,'Papaveraceae','Plant'),('PAPASPE','Papaver spp.',NULL,'Papaver','wild',NULL,NULL,'Papaveraceae','Plant'),('PAPDURH','Papaver dubium/rhoeas',NULL,'Papaver','wild',NULL,NULL,'Papaveraceae','Plant'),('PASTSAT','Pastinaca sativa','sativa','Pastinaca','wild',NULL,NULL,'Apiaceae(Umbelliferae)','Plant'),('PEDISPE','Pedicularis spp.',NULL,'Pedicularis','wild',NULL,NULL,'Orobanchaceae','Plant'),('PEDISYL','Pedicularis sylvatica','sylvatica','Pedicularis','wild',NULL,NULL,'Orobanchaceae','Plant'),('PETRCRI','Petroselinum crispum','crispum','Petroselinum','wild',NULL,NULL,'Apiaceae(Umbelliferae)','Plant'),('PETRPRO','Petrorhagia prolifera','prolifera','Petrorhagia','wild',NULL,NULL,'Caryophyllaceae','Plant'),('PHALSPE','Phalaris spp.',NULL,'Phalaris','wild',NULL,NULL,'Poaceae (Gramineae)','Plant'),('PHILSPE','Phillyrea spp.',NULL,'Phillyrea','wild',NULL,NULL,'Oleaceae','Plant'),('PHLEARE','Phleum arenarium','arenarium','Phleum','wild',NULL,NULL,'Poaceae (Gramineae)','Plant'),('PHLEPHL','Phleum phleoides','phleoides','Phleum','wild',NULL,NULL,'Poaceae (Gramineae)','Plant'),('PHLEPOA','Phleum/Poa spp.',NULL,NULL,'wild',NULL,NULL,'Poaceae (Gramineae)','Plant'),('PHLEPRA','Phleum pratense','pratense','Phleum','wild',NULL,NULL,'Poaceae (Gramineae)','Plant'),('PHLESPE','Phleum spp.',NULL,'Phleum','wild',NULL,NULL,'Poaceae (Gramineae)','Plant'),('PHRAAUS','Phragmites australis','australis','Phragmites','wild',NULL,NULL,'Poaceae (Gramineae)','Plant'),('PHRACOM','Phragmites communis','communis','Phragmites','wild',NULL,NULL,'Poaceae (Gramineae)','Plant'),('PHRASPE','Phragmites spp.',NULL,'Phragmites','wild',NULL,NULL,'Poaceae (Gramineae)','Plant'),('PHYSALK','Physalis alkekengi','alkekengi','Physalis','wild',NULL,NULL,'Solanaceae','Plant'),('PICEABI','Picea abies','abies','Picea','wild',NULL,NULL,'Pinaceae','Plant'),('PICESPE','Picea spp.',NULL,'Picea','wild',NULL,NULL,'Pinaceae','Plant'),('PICRHIE','Picris hieracioides','hieracioides','Picris','wild',NULL,NULL,'Asteraceae (Compositae)','Plant'),('PIMMASA','Pimpinella major/saxifraga',NULL,'Pimpinella','wild',NULL,NULL,'Apiaceae(Umbelliferae)','Plant'),('PINAIND','Pinaceae indeterminate',NULL,NULL,'wild',NULL,NULL,'Pinaceae','Plant'),('PINUCEM','Pinus cembra','cembra','Pinus','wild',NULL,NULL,'Pinaceae','Plant'),('PINUMUG','Pinus mugo','mugo','Pinus','wild',NULL,NULL,'Pinaceae','Plant'),('PINUNIG','Pinus nigra','nigra','Pinus','wild',NULL,NULL,'Pinaceae','Plant'),('PINUSPE','Pinus spp.',NULL,'Pinus','wild',NULL,NULL,'Pinaceae','Plant'),('PINUSYL','Pinus sylvestris','sylvestris','Pinus','wild',NULL,NULL,'Pinaceae','Plant'),('PISTLEN','Pistacia lentiscus','lentiscus','Pistacia','wild',NULL,NULL,'Anacardiaceae','Plant'),('PISTSPE','Pistacia spp.',NULL,'Pistacia','wild',NULL,NULL,'Anacardiaceae','Plant'),('PISTTER','Pistacia terebinthus','terebinthus','Pistacia','wild',NULL,NULL,'Anacardiaceae','Plant'),('PISUSAA','Pisum sativum L. var. arvense','sativum','Pisum','domestic',NULL,NULL,'Fabaceae (Leguminosae)','Plant'),('PISUSAT','Pisum sativum','sativum','Pisum','domestic',NULL,NULL,'Fabaceae (Leguminosae)','Plant'),('PISUSPE','Pisum spp.',NULL,'Pisum','wild/domestic',NULL,NULL,'Fabaceae (Leguminosae)','Plant'),('PISUVIC','Pisum/Vicia spp.',NULL,NULL,'wild/domestic',NULL,NULL,'Fabaceae (Leguminosae)','Plant'),('PLALAMA','Plantago lanceolata/maritima',NULL,'Plantago','wild',NULL,NULL,'Plantaginaceae','Plant'),('PLANLAN','Plantago lanceolata','lanceolata','Plantago','wild',NULL,NULL,'Plantaginaceae','Plant'),('PLANMAJ','Plantago major','major','Plantago','wild',NULL,NULL,'Plantaginaceae','Plant'),('PLANMAR','Plantago maritima','maritima','Plantago','wild',NULL,NULL,'Plantaginaceae','Plant'),('PLANMED','Plantago media','media','Plantago','wild',NULL,NULL,'Plantaginaceae','Plant'),('PLANSPE','Plantago spp.',NULL,'Plantago','wild',NULL,NULL,'Plantaginaceae','Plant'),('POAAGRO','Poa/Agrostis spp.',NULL,NULL,'wild',NULL,NULL,'Poaceae (Gramineae)','Plant'),('POAANNU','Poa annua','annua','Poa','wild',NULL,NULL,'Poaceae (Gramineae)','Plant'),('POACIND','Poaceae indeterminate',NULL,NULL,'wild',NULL,NULL,'Poaceae (Gramineae)','Plant'),('POANEMO','Poa nemoralis','nemoralis','Poa','wild',NULL,NULL,'Poaceae (Gramineae)','Plant'),('POAPRAT','Poa pratensis','pratensis','Poa','wild',NULL,NULL,'Poaceae (Gramineae)','Plant'),('POAPRTR','Poa pratensis/trivialis',NULL,'Poa','wild',NULL,NULL,'Poaceae (Gramineae)','Plant'),('POASPEC','Poa spp.',NULL,'Poa','wild',NULL,NULL,'Poaceae (Gramineae)','Plant'),('POATRIV','Poa trivialis','trivialis','Poa','wild',NULL,NULL,'Poaceae (Gramineae)','Plant'),('POLAVCO','Polygonum aviculare/convolvulus',NULL,'Polygonum','wild',NULL,NULL,'Polygonaceae','Plant'),('POLCARV','Polycnemum arvense','arvense','Polycnemum','wild',NULL,NULL,'Chenopodiaceae','Plant'),('POLGSPE','Polygala spp.',NULL,'Polygala','wild',NULL,NULL,'Polygalaceae','Plant'),('POLLAMI','Polygonum lapathifolium/mitis',NULL,'Polygonum','wild',NULL,NULL,'Polygonaceae','Plant'),('POLLAPE','Polygonum lapathifolium/persicaria',NULL,'Polygonum','wild',NULL,NULL,'Polygonaceae','Plant'),('POLTMUL','Polygonatum multiflorum','multiflorum','Polygonatum','wild',NULL,NULL,'Asparagaceae','Plant'),('POLTSPE','Polygonatum spp.',NULL,'Polygonatum','wild',NULL,NULL,'Asparagaceae','Plant'),('POLYAMP','Polygonum amphibia','amphibia','Polygonum','wild',NULL,NULL,'Polygonaceae','Plant'),('POLYARE','Polygonum arenastrum','arenastrum','Polygonum','wild',NULL,NULL,'Polygonaceae','Plant'),('POLYAVI','Polygonum aviculare','aviculare','Polygonum','wild',NULL,NULL,'Polygonaceae','Plant'),('POLYCON','Polygonum convolvulus','convolvulus','Polygonum','wild',NULL,NULL,'Polygonaceae','Plant'),('POLYCYP','Polygonaceae/Cyperaceae indeterminate',NULL,NULL,'wild',NULL,NULL,NULL,'Plant'),('POLYDUM','Polygonum (Fallopia) dumetorum','dumetorum','Polygonum','wild',NULL,NULL,'Polygonaceae','Plant'),('POLYHYD','Polygonum (Persicaria) hydropiper','hydropiper','Polygonum (Persicaria)','wild',NULL,NULL,'Polygonaceae','Plant'),('POLYIND','Polygonaceae indeterminate',NULL,NULL,'wild',NULL,NULL,'Polygonaceae','Plant'),('POLYLAP','Polygonum lapathifolium (Persicaria lapathifolia)','lapathifolium','Polygonum','wild',NULL,NULL,'Polygonaceae','Plant'),('POLYMIN','Polygonum minus','minus','Polygonum','wild',NULL,NULL,'Polygonaceae','Plant'),('POLYMIT','Polygonum mite','mite','Polygonum','wild',NULL,NULL,'Polygonaceae','Plant'),('POLYPER','Polygonum persicaria (Persicaria maculosa)','persicaria','Polygonum','wild',NULL,NULL,'Polygonaceae','Plant'),('POLYRUM','Polygonum/Rumex spp.',NULL,NULL,'wild',NULL,NULL,'Polygonaceae','Plant'),('POLYSPE','Polygonum spp.',NULL,'Polygonum','wild',NULL,NULL,'Polygonaceae','Plant'),('POPUSPE','Populus spp.',NULL,NULL,'wild',NULL,NULL,'Salicaceae','Plant'),('PORTIND','Portulacaceae (Portulacaoleraceae)',NULL,NULL,'wild',NULL,NULL,'Portulacaceae','Plant'),('PORTOLE','Portulaca oleracea','oleracea','Portulaca','wild',NULL,NULL,'Portulacaceae','Plant'),('POTANAT','Potamogeton natans','natans','Potamogeton','wild',NULL,NULL,'Potamogetonaceae','Plant'),('POTAPUS','Potamogeton pusillus','pusillus','Potamogeton','wild',NULL,NULL,'Potamogetonaceae','Plant'),('POTASPE','Potamogeton spp.',NULL,'Potamogeton','wild',NULL,NULL,'Potamogetonaceae','Plant'),('POTEANS','Potentilla anserina','anserina','Potentilla','wild',NULL,NULL,'Rosaceae','Plant'),('POTEARE','Potentilla arenaria','arenaria','Potentilla','wild',NULL,NULL,'Rosaceae','Plant'),('POTEARG','Potentilla argentea','argentea','Potentilla','wild',NULL,NULL,'Rosaceae','Plant'),('POTEERE','Potentilla erecta','erecta','Potentilla','wild',NULL,NULL,'Rosaceae','Plant'),('POTEPAL','Potentilla palustris','palustris','Potentilla','wild',NULL,NULL,'Rosaceae','Plant'),('POTEREP','Potentilla reptans','reptans','Potentilla','wild',NULL,NULL,'Rosaceae','Plant'),('POTERRE','Potentilla erecta/repens',NULL,'Potentilla','wild',NULL,NULL,'Rosaceae','Plant'),('POTESPE','Potentilla spp.',NULL,'Potentilla','wild',NULL,NULL,'Rosaceae','Plant'),('PRUAVPA','Prunus avium/padus',NULL,'Prunus','wild',NULL,NULL,'Rosaceae','Plant'),('PRUCER','Prunus cerasus','cerasus','Prunus','wild/domestic',NULL,NULL,'Rosaceae','Plant'),('PRULVUL','Prunella vulgaris','vulgaris','Prunella','wild',NULL,NULL,'Lamiaceae (Labiatae)','Plant'),('PRUNAMY','Prunus amygdalus','amygdalus','Prunus','wild/domestic',NULL,NULL,'Rosaceae','Plant'),('PRUNARM','Prunus armeniaca','armeniaca','Prunus','wild/domestic',NULL,NULL,'Rosaceae','Plant'),('PRUNAVI','Prunus avium','amygdalus','Prunus','wild',NULL,NULL,'Rosaceae','Plant'),('PRUNAVM','Prunus avium/mahaleb',NULL,'Prunus','wild',NULL,NULL,'Rosaceae','Plant'),('PRUNCER','Prunus cerasifera','cerasifera','Prunus','wild/domestic',NULL,NULL,'Rosaceae','Plant'),('PRUNDOM','Prunus domestica','domestica','Prunus','domestic',NULL,NULL,'Rosaceae','Plant'),('PRUNIDE','Prunoideae/Amygdaloideae (Prunus, Armeniaca, Cerasus, Amygdalus, Padus ...)',NULL,NULL,'wild/domestic',NULL,NULL,'Rosaceae','Plant'),('PRUNINS','Prunus insititia','insititia','Prunus','wild/domestic',NULL,NULL,'Rosaceae','Plant'),('PRUNMAH','Prunus mahaleb','mahaleb','Prunus','wild',NULL,NULL,'Rosaceae','Plant'),('PRUNPAD','Prunus padus','padus','Prunus','wild',NULL,NULL,'Rosaceae','Plant'),('PRUNPER','Prunus persica','persica','Prunus','wild',NULL,NULL,'Rosaceae','Plant'),('PRUNSPE','Prunus spp.',NULL,'Prunus','wild',NULL,NULL,'Rosaceae','Plant'),('PRUNSPI','Prunus spinosa','spinosa','Prunus','wild',NULL,NULL,'Rosaceae','Plant'),('PTERAQU','Pteridium aquilinum','aquilinum','Pteridium','wild',NULL,NULL,'Polypodiaceae','Plant'),('PTERSPE','Pteridium spp.',NULL,'Pteridium','wild',NULL,NULL,'Polypodiaceae','Plant'),('PUCCDIS','Puccinellia distans','distans','Puccinellia','wild',NULL,NULL,'Poaceae (Gramineae)','Plant'),('PUCCMAR','Puccinellia maritima','maritima','Puccinellia','wild',NULL,NULL,'Poaceae (Gramineae)','Plant'),('PUCCSPE','Puccinellia spp.',NULL,'Puccinellia','wild',NULL,NULL,'Poaceae (Gramineae)','Plant'),('PYRUCOM','Pyrus communis','communis','Pyrus','domestic',NULL,NULL,'Rosaceae','Plant'),('PYRUMAL','Pyrus spp./Malus spp. or mixed MALUSPE; PYRUSPE',NULL,NULL,'wild/domestic',NULL,NULL,'Rosaceae','Plant'),('PYRUSPE','Pyrus spp.',NULL,NULL,'wild/domestic',NULL,NULL,'Rosaceae','Plant'),('pandhal','Pandion haliaetus','haliaetus','Pandion','wild','Bird','Aves','Pandionidae','Animal'),('pantleo','Panthera leo','leo','Panthera','wild','Land mammal','Mammalia',NULL,'Animal'),('pantpar','Panthera pardus','pardus','Panthera','wild','Land mammal','Mammalia',NULL,'Animal'),('pantspe','Panthera species',NULL,'Panthera','wild','Land mammal','Mammalia',NULL,'Animal'),('parumaj','Parus major','major','Parus','wild','Bird','Aves','Paridae','Animal'),('passdom','Passer domesticus','domesticus','Passer','wild','Bird','Aves','Passeridae','Animal'),('passind','Passeriformes',NULL,NULL,'wild','Bird','Aves',NULL,'Animal'),('pectjac','Pecten jacobaeus','jacobaeus','Pecten','wild','Mollusc','Bivalvia','Pectinidae','Animal'),('pectspe','Pecten sp.',NULL,'Pecten','wild','Mollusc','Bivalvia','Pectinidae','Animal'),('pelecri','Pelecanus crispus','crispus','Pelecanus','wild','Bird','Aves','Pelecanidae','Animal'),('pelecul','Pelecus cultratus','cultratus','Pelecus','wild','Fish','Pisces',NULL,'Animal'),('peleind','Pelecaniformes',NULL,NULL,'wild','Bird','Aves',NULL,'Animal'),('peleono','Pelecanus onocrotalus','onocrotalus','Pelecanus','wild','Bird','Aves',NULL,'Animal'),('pelespe','Pelecanus species',NULL,'Pelecanus','wild','Bird','Aves',NULL,'Animal'),('pelospe','Pelobates sp.',NULL,'Pelobates','wild','Reptile','Amphibia',NULL,'Animal'),('pengimp','Penguinis impennis','impennis','Penguinis','wild','Bird','Aves',NULL,'Animal'),('percflu','Perca fluviatilis','fluviatilis','Perca','wild','Fish','Pisces','Percidae','Animal'),('percind','Percidae',NULL,NULL,'wild','Fish','Actinopterygii','Percidae','Animal'),('perdper','Perdix perdix','perdix','Perdix','wild','Bird','Aves','Phasianidae','Animal'),('perfind','Perciformes indeterminate',NULL,NULL,'wild','Fish','Actinopterygii','Perciformes','Animal'),('pernapi','Pernis apivorus','apivorus','Pernis','wild','Bird','Aves','Accipitridae','Animal'),('phalari','Phalacrocorax aristotelis','aristotelis','Phalacrocorax','wild','Bird','Aves','Phalacrocoracidae','Animal'),('phalcar','Phalacrocorax carbo','carbo','Phalacrocorax','wild','Bird','Aves','Phalacrocoracidae','Animal'),('phalpyg','Phalacrocorax pygmaeus','pygmaeus','Phalacrocorax','wild','Bird','Aves',NULL,'Animal'),('phalspe','Phalacrocorax species',NULL,'Phalacrocorax','wild','Bird','Aves','Phalacrocoracidae','Animal'),('phascol','Phasianus colchicus','colchicus','Phasianus','wild','Bird','Aves','Phasianidae','Animal'),('phasspe','Phasianus species',NULL,'Phasianinae','wild','Bird','Aves','Phasianidae','Animal'),('philpug','Philomachus pugnax','pugnax','Philomachus','wild','Bird','Aves','Scolopacidae','Animal'),('phocgro','Phoca groenlandica','groenlandica','Phoca','wild','Marine mammal','Mammalia','Phocidae','Animal'),('phochis','Phoca hispida',NULL,NULL,'wild','Marine mammal','Mammalia',NULL,'Animal'),('phocind','Phocidae',NULL,NULL,'wild','Marine mammal','Mammalia','Phocidae','Animal'),('phocoin','Phocoenidae',NULL,NULL,'wild','Marine mammal','Mammalia','Phocoenidae','Animal'),('phocpho','Phocoena phocoena','phocoena','Phocoena','wild','Marine mammal','Mammalia','Phocoenidae','Animal'),('phocspe','Phoca species',NULL,'Phoca','wild','Marine mammal','Mammalia','Phocidae','Animal'),('phocvit','Phoca vitulina','vitulina','Phoca','wild','Marine mammal','Mammalia','Phocidae','Animal'),('phoepho','Phoenicurus phoenicurus','phoenicurus','Phoenicurus','wild','Bird','Aves','Muscicapidae','Animal'),('physmac','Physeter macrocephalus','macrocephalus','Physeter','wild','Marine mammal','Mammalia','Physeteridae','Animal'),('picapic','Pica pica','pica','Pica','wild','Bird','Aves','Corvidae','Animal'),('piciind','Piciformes',NULL,NULL,'wild','Bird','Aves',NULL,'Animal'),('pingimp','Pinguinus impennis','impennis','Pinguinus','wild','Bird','Aves','Alcidae','Animal'),('pinnind','Pinnipedia',NULL,NULL,'wild','Marine mammal','Mammalia',NULL,'Animal'),('piscind','Pisces',NULL,NULL,'wild','Fish','Pisces',NULL,'Animal'),('pisindf','Pisces freshwater',NULL,NULL,'wild','Fish','Pisces',NULL,'Animal'),('pisindm','Pisces marine',NULL,NULL,'wild','Fish','Pisces',NULL,'Animal'),('pityspe','Pitymys species',NULL,'Pitymys','wild','Rodent','Mammalia','Cricetidae','Animal'),('pitysub','Pitymys subterraneus','subterraneus','Pitymys','wild','Rodent','Mammalia','Cricetidae','Animal'),('plancor','Planorbarius corneus','corneus','Planorbarius','wild','Mollusc','Gastropoda',NULL,'Animal'),('planpla','Planorbis planorbis','planorbis','Planorbis','wild','Mollusc','Gastropoda',NULL,'Animal'),('platfle','Platichthyus flesus','flesus','Platichthyus','wild','Fish','Actinopterygii','Pleuronectidae','Animal'),('platleu','Platalea leucorodia','leucorodia','Platalea','wild','Bird','Aves',NULL,'Animal'),('pleind','Pleuronectiformes',NULL,NULL,'wild','Fish','Actinopterygii',NULL,'Animal'),('pleufle','Pleuronectes flesus','flesus','Pleuronectes','wild','Fish','Actinopterygii','Pleuronectidae','Animal'),('pleuind','Pleuronectidae',NULL,NULL,'wild','Fish','Actinopterygii','Pleuronectidae','Animal'),('pleupla','Pleuronectes platessa','platessa','Pleuronectes','wild','Fish','Actinopterygii','Pleuronectidae','Animal'),('pleuspe','Pleuronectes species',NULL,'Pleuronectes','wild','Fish','Actinopterygii','Pleuronectidae','Animal'),('pluvspe','Pluvialis species',NULL,'Pluvialis','wild','Bird',NULL,'Charadriidae','Animal'),('pluvsqu','Pluvialis squatarola','squatarola','Pluvialis','wild','Bird','Aves','Charadriidae','Animal'),('podicri','Podiceps cristatus','cristatus','Podiceps','wild','Bird','Aves','Podicipedidae','Animal'),('podigri','Podiceps grisegena','grisegena','Podiceps','wild','Bird','Aves','Podicipedidae','Animal'),('podinig','Podiceps nigricollis','nigricollis','Podiceps','wild','Bird','Aves',NULL,'Animal'),('podiruf','Podiceps ruficollis','ruficollis','Podiceps','wild','Bird','Aves','Podicipedidae','Animal'),('podispe','Podiceps species',NULL,'Podiceps','wild','Bird','Aves','Podicipedidae','Animal'),('pollpol','Pollachius pollachius','pollachius','Pollachius','wild','Fish','Actinopterygii','Gadidae','Animal'),('pollspe','Pollachius species',NULL,'Pollachius','wild','Fish','Actinopterygii','Gadidae','Animal'),('pollvir','Pollachius virens','virens','Pollachius','wild','Fish','Actinopterygii','Gadidae','Animal'),('pomamic','Pomatoschistus microps','microps','Pomatoschistus','wild','Fish','Actinopterygii','Gobiidae','Animal'),('pomaspe','Pomatoschistus species',NULL,'Pomatoschistus','wild','Fish','Actinopterygii','Gobiidae','Animal'),('porzpar','Porzana parva','parva','Porzana','wild','Bird','Aves','Rallidae','Animal'),('porzpor','Porzana porzana','porzana','Porzana','wild','Bird','Aves','Rallidae','Animal'),('porzspe','Porzana species',NULL,'Porzana','wild','Bird','Aves','Rallidae','Animal'),('prottub','Protula tubularia','tubularia','protula','wild',NULL,NULL,'Serpulidae','Animal'),('pseuado','Pseudopus adopus','adopus','Pseudopus','wild','Reptile','Reptilia',NULL,'Animal'),('pseucom','Pseudanodonta complanata','complanata','Pseudanodonta','wild','Mollusc','Bivalvia',NULL,'Animal'),('puffpuf','Puffinus puffinus','puffinus','Puffinus','wild','Bird','Aves','Procellariidae','Animal'),('puffspe','Puffinus species',NULL,'Puffinus','wild','Bird','Aves','Procellariidae','Animal'),('pyrpyrr','Pyrrhula pyrrhula','pyrrhula','Pyrrhula','wild','Bird','Aves','Fringillidae','Animal'),('pyrrspe','Pyrrhocorax species',NULL,'Pyrrhocorax','wild','Bird','Aves','Corvidae','Animal'),('QUERILE','Quercus ilex','ilex','Quercus','wild',NULL,NULL,'Fagaceae','Plant'),('QUEROPE','Quercus robur/petraea',NULL,'Quercus','wild',NULL,NULL,'Fagaceae','Plant'),('QUERPET','Quercus petraea','petraea','Quercus','wild',NULL,NULL,'Fagaceae','Plant'),('QUERPUB','Quercus pubescens','pubescens','Quercus','wild',NULL,NULL,'Fagaceae','Plant'),('QUERROB','Quercus robur','robur','Quercus','wild',NULL,NULL,'Fagaceae','Plant'),('QUERSPE','Quercus spp.',NULL,'Quercus','wild',NULL,NULL,'Fagaceae','Plant'),('RANFLRE','Ranunculus flammula/reptans',NULL,'Ranunculus','wild',NULL,NULL,'Ranunculaceae','Plant'),('RANREAC','Ranunculus repens/acris',NULL,'Ranunculus','wild',NULL,NULL,'Ranunculaceae','Plant'),('RANUACR','Ranunculus acris','acris','Ranunculus','wild',NULL,NULL,'Ranunculaceae','Plant'),('RANUAQU','Ranunculus aquatilis\r\n','aquatilis','Ranunculus','wild',NULL,NULL,'Ranunculaceae','Plant'),('RANUARB','Ranunculus acris/repens/bulbosus',NULL,'Ranunculus','wild',NULL,NULL,'Ranunculaceae','Plant'),('RANUARV','Ranunculus arvensis','arvensis','Ranunculus','wild',NULL,NULL,'Ranunculaceae','Plant'),('RANUFIC','Ranunculus ficaria','ficaria','Ranunculus','wild',NULL,NULL,'Ranunculaceae','Plant'),('RANUFLA','Ranunculus flammula','flammula','Ranunculus','wild',NULL,NULL,'Ranunculaceae','Plant'),('RANUIND','Ranunculaceae indeterminate',NULL,NULL,'wild',NULL,NULL,'Ranunculaceae','Plant'),('RANULIN','Ranunculus lingua','lingua','Ranunculus','wild',NULL,NULL,'Ranunculaceae','Plant'),('RANUREP','Ranunculus repens','repens','Ranunculus','wild',NULL,NULL,'Ranunculaceae','Plant'),('RANUSCE','Ranunculus sceleratus','sceleratus','Ranunculus','wild',NULL,NULL,'Ranunculaceae','Plant'),('RANUSPE','Ranunculus spp.',NULL,'Ranunculus','wild',NULL,NULL,'Ranunculaceae','Plant'),('RAPHRAN','Raphanus raphanistrum','raphanistrum','Raphanus','wild',NULL,NULL,'Brassicaceae (Cruciferae)','Plant'),('RAPIRUG','Rapistrum rugosum','rugosum','Rapistrum','wild',NULL,NULL,'Brassicaceae','Plant'),('RESELUT','Reseda luteola',NULL,'Reseda','wild',NULL,NULL,'Resedaceae',NULL),('RESEPHY','Reseda phyteuma','phyteuma','Reseda','wild',NULL,NULL,'Resedaceae',NULL),('RESESPE','Reseda spp.',NULL,'Reseda','wild',NULL,NULL,'Resedaceae',NULL),('RHINMIN','Rhinanthus minor','minor','Rhinanthus','wild',NULL,NULL,'Scrophulariaceae','Plant'),('RHINSPE','Rhinanthus spp.',NULL,'Rhinanthus','wild',NULL,NULL,'Scrophulariaceae','Plant'),('RHUMCAT','Rhamnus cathartica','cathartica','Rhamnus','wild',NULL,NULL,'Rhamnaceae','Plant'),('RHUNSPE','Rhamnus spp.',NULL,'Rhamnus','wild',NULL,NULL,'Rhamnaceae','Plant'),('RHYTSPE','Rhytidiadelphus spp.',NULL,'Rhytidiadelphus','wild',NULL,NULL,'Hylocomiaceae','Plant'),('RORISPE','Rorippa spp.',NULL,'Rorippa','wild',NULL,NULL,'Brassicaceae (Cruciferae)','Plant'),('ROSACAN','Rosa canina','canina','Rosa','wild',NULL,NULL,'Rosaceae','Plant'),('ROSAIND','Rosaceae indeterminate',NULL,NULL,'wild',NULL,NULL,'Rosaceae','Plant'),('ROSASPE','Rosa spp.',NULL,'Rosa','wild',NULL,NULL,'Rosaceae','Plant'),('RUBIDCA','Rubus idaeus/caesius',NULL,'Rubus','wild',NULL,NULL,'Rosaceae','Plant'),('RUBIDFR','Rubus idaeus/fruticosus',NULL,'Rubus','wild',NULL,NULL,'Rosaceae','Plant'),('RUBIIND','Rubiaceae indeterminate',NULL,NULL,'wild',NULL,NULL,'Rubiaceae','Plant'),('RUBITIN','Rubia tinctorum','tinctorum','Rubia','wild',NULL,NULL,'Rubiaceae','Plant'),('RUBUCAE','Rubus caesius','caesius','Rubus','wild',NULL,NULL,'Rosaceae','Plant'),('RUBUFRU','Rubus fruticosus','fruticosus','Rubus','wild',NULL,NULL,'Rosaceae','Plant'),('RUBUIDA','Rubus idaeus','idaeus','Rubus','wild',NULL,NULL,'Rosaceae','Plant'),('RUBUSPE','Rubus spp.',NULL,'Rubus','wild',NULL,NULL,'Rosaceae','Plant'),('RUMACSA','Rumex acetosa/sanguineus',NULL,'Rumex','wild',NULL,NULL,'Polygonaceae','Plant'),('RUMCONF','Rumex confertus','confertus','Rumex','wild',NULL,NULL,'Polygonaceae','Plant'),('RUMCOSA','Rumex conglomeratus/sanguineus',NULL,'Rumex','wild',NULL,NULL,'Polygonaceae','Plant'),('RUMCROB','Rumex crispus/obtusifolius',NULL,'Rumex','wild',NULL,NULL,'Polygonaceae','Plant'),('RUMEACE','Rumex acetosella','acetosella','Rumex','wild',NULL,NULL,'Polygonaceae','Plant'),('RUMEACT','Rumex acetosa','acetosa','Rumex','wild',NULL,NULL,'Polygonaceae','Plant'),('RUMECON','Rumex conglomeratus','conglomeratus','Rumex','wild',NULL,NULL,'Polygonaceae','Plant'),('RUMECRI','Rumex crispus','crispus','Rumex','wild',NULL,NULL,'Polygonaceae','Plant'),('RUMEOBT','Rumex obtusifolius','obtusifolius','Rumex','wild',NULL,NULL,'Polygonaceae','Plant'),('RUMEPOL','Rumex/Polygonum spp.',NULL,NULL,'wild',NULL,NULL,'Polygonaceae','Plant'),('RUMESAN','Rumex sanguineus','sanguineus','Rumex','wild',NULL,NULL,'Polygonaceae','Plant'),('RUMESPE','Rumex spp.',NULL,'Rumex','wild',NULL,NULL,'Polygonaceae','Plant'),('RUMETHY','Rumex thyrsiflorus','thyrsiflorus','Rumex','wild',NULL,NULL,'Polygonaceae','Plant'),('RUMLOOB','Rumex longifolius/obtosifolius',NULL,'Rumex','wild',NULL,NULL,'Polygonaceae','Plant'),('RUPPMAR','Ruppia maritima','maritima','Ruppia','wild',NULL,NULL,'Ruppiaceae','Plant'),('radiova','Radix ovata','ovata','Radix','wild','Mollusc','Gastropoda',NULL,'Animal'),('radiper','Radix peregra','peregra','Radix','wild','Mollusc','Gastropoda',NULL,'Animal'),('rajacla','Raja clavata','clavata','Raja','wild','Fish','Chondrichthyes','Rajidae','Animal'),('rallaqu','Rallus aquaticus','aquaticus','Rallus','wild','Bird','Aves','Rallidae','Animal'),('rallind','Rallidae',NULL,NULL,'wild','Bird','Aves','Rallidae','Animal'),('ranadal','Rana dalmatina','dalmatina','Rana','wild','Reptile','Amphibia','Ranidae','Animal'),('ranaesc','Rana esculenta','esculenta','Rana','wild','Reptile','Amphibia',NULL,'Animal'),('ranaspe','Rana species',NULL,'Rana','wild','Reptile','Amphibia','Ranidae','Animal'),('ranatem','Rana temporaria','temporaria','Rana','wild','Reptile','Amphibia','Ranidae','Animal'),('rangtar','Rangifer tarandus','tarandus','Rangifer','wild','Land mammal','Mammalia','Cervidae','Animal'),('rattnor','Rattus norvegicus','norvegicus','Rattus','wild','Rodent','Mammalia',NULL,'Animal'),('rattrat','Rattus rattus','rattus','Rattus','wild','Rodent','Mammalia',NULL,'Animal'),('rattspe','Rattus sp.',NULL,'Rattus','wild','Rodent','Mammalia',NULL,'Animal'),('repindt','Reptilia terrestrial',NULL,NULL,'wild','Reptile','Sauropsida',NULL,'Animal'),('reptind','Reptilia',NULL,NULL,'wild','Reptile','Sauropsida',NULL,'Animal'),('rhinspe','Rhinolophus species',NULL,'Rhinolophus','wild','Bat','Mammalia','Rhinolophidae','Animal'),('risstri','Rissa tridactyla','tridactyla','Rissa','wild','Bird','Aves','Laridae','Animal'),('rodeind','Rodentia',NULL,NULL,'wild/domestic','Rodent','Mammalia',NULL,'Animal'),('rumindb','Ruminantia big',NULL,NULL,'wild/domestic','Land mammal','Mammalia',NULL,'Animal'),('ruminde','Ruminantia',NULL,NULL,'wild/domestic','Land mammal','Mammalia',NULL,'Animal'),('rumindm','Ruminantia medium','medium',NULL,'wild/domestic','Land mammal','Mammalia',NULL,'Animal'),('ruminds','Ruminantia small',NULL,NULL,'wild/domestic','Land mammal','Mammalia',NULL,'Animal'),('rupirup','Rupicapra rupicapra','rupicapra','Rupicapra','wild','Land mammal','Mammalia','Bovidae','Animal'),('rutifri','Rutilus frisii meidingeri','frisii meidingeri','Rutilus','wild','Fish','Actinopterygii','Cyprinidae','Animal'),('rutirut','Rutilus rutilus','rutilis','Rutilus','wild','Fish','Actinopterygii','Cyprinidae','Animal'),('rutispe','Rutilus species',NULL,'Rutilus','wild','Fish','Actinopterygii','Cyprinidae','Animal'),('SAGISAG','Sagittaria sagittifolia','sagittifolia','Sagittaria','wild',NULL,NULL,'Alismataceae','Plant'),('SALCEUR','Salicornia europaea','europaea','Salicornia','wild',NULL,NULL,'Amaranthaceae','Plant'),('SALCSPE','Salicornia spp.',NULL,'Salicornia','wild',NULL,NULL,'Amaranthaceae','Plant'),('SALIFRA','Salix fragilis','fragilis','Salix','wild',NULL,NULL,'Salicaceae','Plant'),('SALIIND','Salicaceae indeterminate',NULL,NULL,'wild',NULL,NULL,'Salicaceae','Plant'),('SALISPE','Salix spp.',NULL,'Salix','wild',NULL,NULL,'Salicaceae','Plant'),('SALPOP','Salix/Populus',NULL,NULL,'wild',NULL,NULL,'Salicaceae','Plant'),('SALSOLA','Salsola spp.',NULL,'Salsona','wild',NULL,NULL,'Chenopodiaceae','Plant'),('SALVSPE','Salvia sp.',NULL,'Salvia','wild',NULL,NULL,'Lamiaceae (Labiatae)','Plant'),('SAMBEBU','Sambucus ebulus','ebulus','Sambucus','wild',NULL,NULL,'Caprifoliaceae','Plant'),('SAMBNIG','Sambucus nigra','nigra','Sambucus','wild',NULL,NULL,'Caprifoliaceae','Plant'),('SAMBRAC','Sambucus racemosa','racemosa','Sambucus','wild',NULL,NULL,'Caprifoliaceae','Plant'),('SAMBSPE','Sambucus spp.',NULL,'Sambucus','wild',NULL,NULL,'Caprifoliaceae','Plant'),('SAMEBRA','Sambucus ebulus/racemosa',NULL,'Sambucus','wild',NULL,NULL,'Caprifoliaceae','Plant'),('SAMNIRA','Sambucus nigra/racemosa',NULL,'Sambucus','wild',NULL,NULL,'Caprifoliaceae','Plant'),('SANGMIN','Sanguisorba minor','minor','Sanguisorba','wild',NULL,NULL,'Rosaceae','Plant'),('SANGOFF','Sanguisorba officinalis','officinalis','Sanguisorba','wild',NULL,NULL,'Rosaceae','Plant'),('SAPOOFF','Saponaria officinalis','officinalis','Saponaria','wild',NULL,NULL,'Caryophyllaceae','Plant'),('SAPOSPE','Saponaria sp.',NULL,'Saponaria','wild',NULL,NULL,'Caryophyllaceae','Plant'),('SATUTHY','Satureja thymbra','thymbra','Satureja','wild',NULL,NULL,'Lamiaceae (Labiatae','Plant'),('SCANPEC','Scandix pecten-veneris','pecten-veneris','Scandix ','wild',NULL,NULL,'Apiaceae(Umbelliferae)','Plant'),('SCHOLAC','Schoenoplectus lacustris','lacustris','Schoenoplectus','wild',NULL,NULL,'Cyperaceae','Plant'),('SCHOMUC','Schoenoplectus muconatus','muconatus','Schoenoplectus','wild',NULL,NULL,'Cyperaceae','Plant'),('SCHONIG','Schoenus nigricans','nigricans','Schoenus','wild',NULL,NULL,'Cyperaceae','Plant'),('SCHOSPE','Schoenoplectus spp.',NULL,'Schoenoplectus','wild',NULL,NULL,'Cyperaceae','Plant'),('SCIMALA','Scirpus maritimus/lacustris',NULL,'Scirpus','wild',NULL,NULL,'Cyperaceae','Plant'),('SCIRLAC','Scirpus lacustris','lacustris','Scirpus','wild',NULL,NULL,'Cyperaceae','Plant'),('SCIRMAR','Scirpus maritimus','maritimus','Scirpus','wild',NULL,NULL,'Cyperaceae','Plant'),('SCIRSCH','Scirpus/Schoenoplectus spp.',NULL,NULL,'wild',NULL,NULL,'Cyperaceae','Plant'),('SCIRSPE','Scirpus spp.',NULL,'Scirpus','wild',NULL,NULL,'Cyperaceae','Plant'),('SCIRSYL','Scirpus sylvaticus','sylvaticus','Scirpus','wild',NULL,NULL,'Cyperaceae','Plant'),('SCIRTAB','Scirpus tabernaemontani (Schoenoplectus tabernaemontani)','tabernaemontani','Scirpus','wild',NULL,NULL,'Cyperaceae','Plant'),('SCLEANN','Scleranthus annuus','annuus','Scleranthus','wild',NULL,NULL,'Caryophyllaceae','Plant'),('SCLESPE','Scleranthus spp.',NULL,'Scleranthus','wild',NULL,NULL,'Caryophyllaceae','Plant'),('SCRNOUM','Scrophularia nodosa/umbrosa',NULL,'Scrophularia','wild',NULL,NULL,'Scrophulariaceae','Plant'),('SCROIND','Scrophulariaceae indeterminate',NULL,NULL,'wild',NULL,NULL,'Scrophulariaceae','Plant'),('SCROSPE','Scrophularia spp.',NULL,'Scrophularia','wild',NULL,NULL,'Scrophulariaceae','Plant'),('SCROVER','Scrophularia/Verbascum spp.',NULL,NULL,'wild',NULL,NULL,'Scrophulariaceae','Plant'),('SECACER','Secale cereale','cereale','Secale','domestic',NULL,NULL,'Poaceae (Gramineae)','Plant'),('SECASPE','Secale spp.',NULL,'Secale','domestic',NULL,NULL,'Poaceae (Gramineae)','Plant'),('SENESPE','Senecio spp.',NULL,'Senecio','wild',NULL,NULL,'Asteraceae (Compositae)','Plant'),('SENEVUL','Senecio vulgaris','vulgaris','Senecio','wild',NULL,NULL,'Asteraceae (Compositae)','Plant'),('SETAECH','Setaria pumila/Echinochloa crus-galli',NULL,NULL,'wild',NULL,NULL,'Poaceae (Gramineae)','Plant'),('SETAGLA','Setaria glauca','glauca','Setaria','wild',NULL,NULL,'Poaceae (Gramineae)','Plant'),('SETAITA','Setaria italica','italica','Setaria','domestic',NULL,NULL,'Poaceae (Gramineae)','Plant'),('SETAPAN','Setaria/Panicum spp.',NULL,NULL,'wild',NULL,NULL,'Poaceae (Gramineae)','Plant'),('SETAPUM','Setaria pumila','pumila','Setaria','wild',NULL,NULL,'Poaceae (Gramineae)','Plant'),('SETASPE','Setaria spp.',NULL,'Setaria','wild',NULL,NULL,'Poaceae (Gramineae)','Plant'),('SETAVER','Setaria verticillata','verticillata','Setaria','wild',NULL,NULL,'Poaceae (Gramineae)','Plant'),('SETAVIR','Setaria viridis','viridis','Setaria','wild',NULL,NULL,'Poaceae (Gramineae)','Plant'),('SETVIVE','Setaria viridis/verticillata',NULL,'Setaria','wild',NULL,NULL,'Poaceae (Gramineae)','Plant'),('SHERARV','Sherardia arvensis','arvensis','Sherardia','wild',NULL,NULL,'Rubiaceae','Plant'),('SIEGDEC','Sieglingia decumbens','decumbens','Sieglingia','wild',NULL,NULL,'Poaceae (Gramineae)','Plant'),('SIEGSPE','Sieglingia spp.',NULL,'Sieglingia','wild',NULL,NULL,'Poaceae (Gramineae)','Plant'),('SILEACA','Silene acaulis','acaulis','Silene','wild',NULL,NULL,'Caryophyllaceae','Plant'),('SILEALB','Silene alba','alba','Silene','wild',NULL,NULL,'Caryophyllaceae','Plant'),('SILECRE','Silene cretica','cretica','Silene','wild',NULL,NULL,'Caryophyllaceae','Plant'),('SILEDIO','Silene dioica','dioica','Silene','wild',NULL,NULL,'Caryophyllaceae','Plant'),('SILEGAL','Silene gallica','gallica','Silene','wild',NULL,NULL,'Caryophyllaceae','Plant'),('SILENOC','Silene noctiflora','noctiflora','Silene','wild',NULL,NULL,'Caryophyllaceae','Plant'),('SILENUT','Silene nutans','nutans','Silene','wild',NULL,NULL,'Caryophyllaceae','Plant'),('SILESPE','Silene spp.',NULL,'Silene','wild',NULL,NULL,'Caryophyllaceae','Plant'),('SILEVUL','Silene vulgaris','vulgaris','Silene','wild',NULL,NULL,'Caryophyllaceae','Plant'),('SILNUVU','Silene nutans/vulgaris',NULL,'Silene','wild',NULL,NULL,'Caryophyllaceae','Plant'),('SILVUDI','Silene vulgaris/dioica',NULL,'Silene','wild',NULL,NULL,'Caryophyllaceae','Plant'),('SINAALB','Sinapis alba','alba','Sinapis','wild',NULL,NULL,'Brassicaceae (Cruciferae)','Plant'),('SINAARV','Sinapis arvensis','arvensis','Sinapis','wild',NULL,NULL,'Brassicaceae (Cruciferae)','Plant'),('SINADIS','Sinapis dissecta','dissecta','Sinapis','wild',NULL,NULL,'Brassicaceae (Cruciferae)','Plant'),('SINASPE','Sinapis sp.',NULL,'Sinapis','wild',NULL,NULL,'Brassicaceae (Cruciferae)','Plant'),('SISYOFF','Sisymbrium officinale','officinale','Sisymbrium','wild',NULL,NULL,'Brassicaceae (Cruciferae)','Plant'),('SISYSPE','Sisymbrium spp.',NULL,'Sisymbrium','wild',NULL,NULL,'Brassicaceae (Cruciferae)','Plant'),('SIUMLAT','Sium latifolium','latifolium','Sium','wild',NULL,NULL,'Apiaceae(Umbelliferae)','Plant'),('SOLADUL','Solanum dulcamara','dulcamara','Solanum','wild',NULL,NULL,'Solanaceae','Plant'),('SOLAIND','Solanaceae indeterminate',NULL,NULL,'wild',NULL,NULL,'Solanaceae','Plant'),('SOLANIG','Solanum nigrum','nigrum','Solanum','wild',NULL,NULL,'Solanaceae','Plant'),('SOLAPHY','Solanum/Physalis',NULL,NULL,'wild',NULL,NULL,'Solanaceae','Plant'),('SOLASPE','Solanum spp.',NULL,'Solanum','wild',NULL,NULL,'Solanaceae','Plant'),('SOLDUNI','Solanum dulcamara/nigrum',NULL,'Solanum','wild',NULL,NULL,'Solanaceae','Plant'),('SONCARV','Sonchus arvensis','arvensis','Sonchus','wild',NULL,NULL,'Asteraceae (Compositae)','Plant'),('SONCASP','Sonchus asper','asper','Sonchus','wild',NULL,NULL,'Asteraceae (Compositae)','Plant'),('SONCOLE','Sonchus oleraceus','oleraceus','Sonchus','wild',NULL,NULL,'Asteraceae (Compositae)','Plant'),('SONCSPE','Sonchus spp.',NULL,'Sonchus','wild',NULL,NULL,'Asteraceae (Compositae)','Plant'),('SORBARI','Sorbus aria','aria','Sorbus','wild',NULL,NULL,'Rosaceae','Plant'),('SORBAUC','Sorbus aucuparia','aucuparia','Sorbus','wild',NULL,NULL,'Rosaceae','Plant'),('SORBDOM','Sorbus domestica','domestica','Sorbus','wild/domestic',NULL,NULL,'Rosaceae','Plant'),('SORBINT','Sorbus intermedia','intermedia','Sorbus','wild',NULL,NULL,'Rosaceae','Plant'),('SORBSPE','Sorbus spp.',NULL,'Sorbus','wild',NULL,NULL,'Rosaceae','Plant'),('SORBTOR','Sorbus torminalis','torminalis','Sorbus','wild',NULL,NULL,'Rosaceae','Plant'),('SPAEMNA','Sparganium emersum/natans',NULL,'Sparganium','wild',NULL,NULL,'Typhaceae','Plant'),('SPARERE','Sparganium erectum','erectum','Sparganium','wild',NULL,NULL,'Typhaceae','Plant'),('SPARSPE','Sparganium spp.',NULL,'Sparganium','wild',NULL,NULL,'Typhaceae','Plant'),('SPERARV','Spergularia arvensis','arvensis','Spergularia','wild',NULL,NULL,'Caryophyllaceae','Plant'),('SPERMAR','Spergularia marina','marina','Spergularia','wild',NULL,NULL,'Caryophyllaceae','Plant'),('SPERMED','Spergularia media','media','Spergularia','wild',NULL,NULL,'Caryophyllaceae','Plant'),('SPERSPE','Spergularia spp.',NULL,'Spergularia','wild',NULL,NULL,'Caryophyllaceae','Plant'),('SPHASPE','Sphagnum spp.',NULL,'Sphagnum','wild',NULL,NULL,'Sphagnaceae','Plant'),('STAALSY','Stachys alpina/sylvestris',NULL,'Stachys','wild',NULL,NULL,'Lamiaceae (Labiatae)','Plant'),('STAARSY','Stachys arvensis/sylvatica',NULL,'Stachys','wild',NULL,NULL,'Lamiaceae (Labiatae)','Plant'),('STACANN','Stachys annua','annua','Stachys','wild',NULL,NULL,'Lamiaceae (Labiatae)','Plant'),('STACARV','Stachys arvensis','arvensis','Stachys','wild',NULL,NULL,'Lamiaceae (Labiatae)','Plant'),('STACPAL','Stachys palustris','palustris','Stachys','wild',NULL,NULL,'Lamiaceae (Labiatae)','Plant'),('STACSPE','Stachys spp.',NULL,'Stachys','wild',NULL,NULL,'Lamiaceae (Labiatae)','Plant'),('STACSYL','Stachys sylvatica','sylvatica','Stachys','wild',NULL,NULL,'Lamiaceae (Labiatae)','Plant'),('STEAQME','Stellaria aquatica/media',NULL,'Stellaria','wild',NULL,NULL,'Caryophyllaceae','Plant'),('STELALS','Stellaria alsine','alsine','Stellaria','wild',NULL,NULL,'Caryophyllaceae','Plant'),('STELGRA','Stellaria graminea','graminea','Stellaria','wild',NULL,NULL,'Caryophyllaceae','Plant'),('STELMED','Stellaria media','media','Stellaria','wild',NULL,NULL,'Caryophyllaceae','Plant'),('STELPAL','Stellaria palustris','palustris','Stellaria','wild',NULL,NULL,'Caryophyllaceae','Plant'),('STELSPE','Stellaria spp.',NULL,'Stellaria','wild',NULL,NULL,'Caryophyllaceae','Plant'),('STEMENE','Stellaria media/nemorum',NULL,'Stellaria','wild',NULL,NULL,'Caryophyllaceae','Plant'),('STENEAQ','Stellaria nemorum/aquatica',NULL,'Stellaria','wild',NULL,NULL,'Caryophyllaceae','Plant'),('STENEME','Stellaria neglecta/media',NULL,'Stellaria','wild',NULL,NULL,'Caryophyllaceae','Plant'),('STIPPEN','Stipa pennata','pennata','Stipa','wild',NULL,NULL,'Poaceae (Gramineae)','Plant'),('STIPSPE','Stipa spp.',NULL,'Stipa','wild',NULL,NULL,'Poaceae (Gramineae)','Plant'),('SUAEMAR','Suaeda maritima','maritima','Suaeda','wild',NULL,NULL,'Chenopodiaceae','Plant'),('saigtat','Saiga tatarica','tatarica','Saiga','wild','Land mammal','Mammalia',NULL,'Animal'),('salmind','Salmonidae',NULL,NULL,'wild','Fish','Actinopterygii','Salmonidae','Animal'),('salmsal','Salmo salar','salar','Salmo','wild','Fish','Actinopterygii','Salmonidae','Animal'),('salmspe','Salmo species',NULL,'Salmo','wild','Fish','Actinopterygii','Salmonidae','Animal'),('salmtru','Salmo trutta','trutta','Salmo','wild','Fish','Actinopterygii','Salmonidae','Animal'),('salvalp','Salvelinus alpinus','alpinus','Salvelinus','wild','Fish','Actinopterygii','Salmonidae','Animal'),('sandluc','Sander lucioperca','lucioperca','Sander','wild','Fish','Actinopterygii','Percidae','Animal'),('sauria','Sauria',NULL,NULL,'wild','Reptile','Reptilia',NULL,'Animal'),('scarery','Scardinius erythrophthalmus','erythrophthalmus','Scardinius','wild','Fish','Actinopterygii','Cyprinidae','Animal'),('sciaind','Sciaenidae',NULL,NULL,'wild','Fish','Pisces','Sciaenidae','Animal'),('sciuvul','Sciurus vulgaris','vulgaris','Sciurus','wild','Rodent','Mammalia','Sciuridae','Animal'),('scolrus','Scolopax rusticola','rusticola','Scolopax','wild','Bird','Aves','Scolopacidae','Animal'),('scomind','Scombridae',NULL,NULL,'wild','Fish',NULL,'Scombridae','Animal'),('scomjap','Scomber japanicus','japanicus','Scomber','wild','Fish','Actinopterygii','Scombridae','Animal'),('scomsco','Scomber sombrus','scombrus','Scomber','wild','Fish','Actinopterygii','Scombridae','Animal'),('scopind','Scophthalmidae',NULL,NULL,'wild','Fish','Actinopterygii','Scophthalmidae','Animal'),('scopmax','Scophthalmus maximus','maximus','Scophthalmus','wild','Fish','Actinopterygii','Scophthalmidae','Animal'),('scopspe','Scophthalmus',NULL,'Scophthalmus','wild','Fish','Actinopterygii','Scophthalmidae','Animal'),('scorspe','Scorpaena sp.',NULL,'Scorpaena','wild','Fish','Actinopterygii','Scorpaenidae','Animal'),('semiund','Semicassis undulata','undulata','Semicassis','wild','Mollusc','Gastropoda','Cassidae','Animal'),('seriser','Serinus serinus','serinus','Serinus','wild','Bird','Aves','Fringillidae','Animal'),('serpind','Serpentes indeterminate',NULL,NULL,'wild','Reptile','Reptilia',NULL,'Animal'),('silugla','Silurus glanis','glanis','Silurus','wild','Fish','Pisces','Siluridae','Animal'),('siluind','Siluridae',NULL,NULL,'wild','Fish','Actinopterygii','Siluridae','Animal'),('solesol','Solea solea','solea','Solea','wild','Fish','Actinopterygii','Soleidae','Animal'),('somamol','Somateria mollissima','mollissima','Somateria','wild','Bird','Aves','Anatidae','Animal'),('soreara','Sorex araneus','araneus','Sorex','wild','Rodent','Mammalia','Soricidae','Animal'),('soremin','Sorex minutus','minutus','Sorex','wild','Rodent','Mammalia','Soricidae','Animal'),('sorespe','Sorex species',NULL,'Sorex','wild','Rodent','Mammalia','Soricidae','Animal'),('soriind','Soricidae',NULL,NULL,'wild','Rodent','Mammalia','Soricidae','Animal'),('spalleu','Spalax leucodon','leucodon','Spalax','wild','Rodent','Mammalia','Spalacidae','Animal'),('spalnan','Spalax/Nannospalax',NULL,NULL,'wild','Rodent','Mammalia',NULL,'Animal'),('spalspe','Spalax sp.',NULL,'Soalax','wild','Rodent','Mammalia','Spalacidae','Animal'),('sparaur','Sparus aurata','aurata','Sparus','wild','Fish','Pisces',NULL,'Animal'),('sparind','Sparidae indeterminate',NULL,NULL,'wild','Fish','Actinopterygii','Sparidae','Animal'),('spatcly','Spatula clypeata','clypeata','Sparula','wild','Bird','Aves',NULL,'Animal'),('spercit','Spermophilus citellus','citellus','Spermophilus','wild','Rodent','Mammalia',NULL,'Animal'),('sperspe','Spermophilus sp.',NULL,'Spermophilus','wild','Rodent','Mammalia',NULL,'Animal'),('sphalac','Sphaerium lacustre','lacustre','Sphaerium','wild','Mollusc','Bivalvia',NULL,'Animal'),('sphasol','Sphaerium solidum','solidum','Sphaerium','wild','Mollusc','Bivalvia',NULL,'Animal'),('spongae','Spondylus gaederopus','gaederopus','Spondylus','wild','Mollusc','Bivalvia',NULL,'Animal'),('sponspe','Spondylus species',NULL,'Spondylus','wild','Mollusc','Bivalvia','Spondylidae','Animal'),('squaaca','Squalus acanthias','acanthias','Squalus','wild','Fish','Chondrichthyes','Squalidae','Animal'),('squacep','Squalius cephalus','cephalus','Squalius','wild','Fish','Actinopterygii','Cyprinidae','Animal'),('squaind','Squamata',NULL,NULL,'wild','Reptile','Reptilia',NULL,'Animal'),('stersan','Sterna sandvicensis','sandvicensis','Sterna','wild','Bird','Aves','Sternidae','Animal'),('stersku','Stercorarius skua','skua','Stercorarius','wild','Bird','Aves','Stercorariidae','Animal'),('sterspe','Stercorarius species',NULL,'Stercorarius','wild','Bird','Aves','Stercorariidae','Animal'),('stespec','Sterna species',NULL,'Sterna','wild','Bird','Aves','Sternidae','Animal'),('stizluc','Stizostedion lucioperca','lucioperca','Stizostedion','wild','Fish','Actinopterygii','Percidae','Animal'),('strialu','Strix aluco','aluco','Strix','wild','Bird','Aves','Strigidae','Animal'),('striind','Strigiformes',NULL,NULL,'wild','Bird','Aves',NULL,'Animal'),('strispe','Strix species',NULL,'Strix','wild','Bird','Aves','Strigidae','Animal'),('striura','Strix uralensis','uralensis','Strix','wild','Bird','Aves','Strigidae','Animal'),('sturvul','Sturnus vulgaris','vulgaris','Sturnus','wild','Bird','Aves','Sturnidae','Animal'),('succobl','Succinea oblonga','oblonga','Succinea','wild','Mollusc',NULL,NULL,'Animal'),('sulabas','Sula bassana','bassana','Sula','wild','Bird','Aves','Sulidae','Animal'),('susscrd','Sus scrofa domesticus','scrofa domesticus','Sus','domestic','Land mammal','Mammalia','Suidae','Animal'),('susscrf','Sus scrofa ferus','scrofa ferus','Sus','wild','Land mammal','Mammalia','Suidae','Animal'),('susspec','Sus species',NULL,'Sus','wild/domestic','Land mammal','Mammalia','Suidae','Animal'),('sylvind','Sylviidae',NULL,NULL,'wild','Bird','Aves','Sylviidae','Animal'),('syngind','Syngnathidae',NULL,NULL,'wild','Fish','Actinopterygii','Syngnathidae','Animal'),('TAENSPE','Taeniatherum sp.',NULL,'Agropyron','wild',NULL,NULL,'Poaceae (Gramineae)','Plant'),('TARAOFF','Taraxacum officinale','officinale','Taraxacum','wild',NULL,NULL,'Asteraceae (Compositae)','Plant'),('TAXUBAC','Taxus baccata','baccata','Taxus','wild',NULL,NULL,'Taxaceae','Plant'),('TAXUSPE','Taxus spp.',NULL,'Taxus','wild',NULL,NULL,'Taxaceae','Plant'),('TECUCHA','Tecurium chamaedrys','chamaedrys','Tecurium','wild',NULL,NULL,'Lamiaceae (Labiatae)','Plant'),('TECUSPE','Tecurium sp.',NULL,'Tecurium','wild',NULL,NULL,'Lamiaceae (Labiatae)','Plant'),('TEUCCHA','Teucrium chamaedrys','chamaedrys','Teucrium','wild',NULL,NULL,'Lamiaceae (Labiatae)','Plant'),('TEUCHSC','Teucrium chamaedrys/scorodonia',NULL,'Teucrium','wild',NULL,NULL,'Lamiaceae (Labiatae)','Plant'),('TEUCSCO','Teucrium scorodonia','scorodonia','Teucrium','wild',NULL,NULL,'Lamiaceae (Labiatae)','Plant'),('TEUCSPE','Teucrium spp.',NULL,'Teucrium','wild',NULL,NULL,'Lamiaceae (Labiatae)','Plant'),('THALFLA','Thalictrum flavum','flavum','Thalictrum','wild',NULL,NULL,'Ranunculaceae','Plant'),('THALMIN','Thalictrum minus','minus','Thalictrum','wild',NULL,NULL,'Ranunculaceae','Plant'),('THLAARV','Thlaspi arvense','arvense','Thlaspi','wild',NULL,NULL,'Brassicaceae (Cruciferae)','Plant'),('THYMHIR','Thymelaea hirsuta','hirsuta','Thymelaea','wild',NULL,NULL,'Thymelaeaceae',NULL),('THYMPAS','Thymellaea passerina','passerina','Thymus','wild',NULL,NULL,'Lamiaceae (Labiatae)','Plant'),('THYMPUL','Thymus pulegioides','pulegioides','Thymus','wild',NULL,NULL,'Lamiaceae (Labiatae)','Plant'),('THYMSPE','Thymelaea sp.',NULL,'Thymelaea','wild',NULL,NULL,'Thymelaeaceae','Plant'),('THYSSER','Thymus serpyllum','serpyllum','Thymus','wild',NULL,NULL,'Lamiaceae (Labiatae)','Plant'),('THYSSPE','Thymus spp.',NULL,'Thymus','wild',NULL,NULL,'Lamiaceae (Labiatae)','Plant'),('TILICOR','Tilia cordata','cordata','Tilia','wild',NULL,NULL,'Tiliaceae','Plant'),('TILIPLA','Tilia platyphyllos','platyphyllos','Tilia','wild',NULL,NULL,'Tiliaceae','Plant'),('TILISPE','Tilia spp.',NULL,'Tilia','wild',NULL,NULL,'Tiliaceae','Plant'),('TORIJAP','Torilis japonica','japonica','Torilis','wild',NULL,NULL,'Apiaceae(Umbelliferae)','Plant'),('TORISPE','Torilis sp.',NULL,'Torilis','wild',NULL,NULL,'Apiaceae(Umbelliferae)','Plant'),('TRANSPE','Tragopogon spp.',NULL,'Tragopogon','wild',NULL,NULL,'Asteraceae (Compositae)','Plant'),('TRAPNAT','Trapa natans','natans','Trapa','wild',NULL,NULL,'Trapaceae','Plant'),('TRDIDUA','Triticum dicoccum/durum/aestivum',NULL,'Triticum','domestic',NULL,NULL,'Poaceae (Gramineae)','Plant'),('TRDINGW','Triticum dicoccum/NGW',NULL,'Triticum','domestic',NULL,NULL,'Poaceae (Gramineae)','Plant'),('TRIAEST','Triticum aestivum','aestivum','Triticum','domestic',NULL,NULL,'Poaceae (Gramineae)','Plant'),('TRIAETU','Triticum aestivum/turgidum',NULL,'Triticum','domestic',NULL,NULL,'Poaceae (Gramineae)','Plant'),('TRIANPA','Triticum antiquorum Heer / Triticum parvicoccum Kislev (small-grained, free-threshing)',NULL,'Triticum','domestic',NULL,NULL,'Poaceae (Gramineae)','Plant'),('TRICCES','Tricophorum cespitosum','cespitosum','Tricophorum','wild',NULL,NULL,'Cyperaceae','Plant'),('TRIDISP','Triticum dicoccum/spelta',NULL,'Triticum','domestic',NULL,NULL,'Poaceae (Gramineae)','Plant'),('TRIDITI','Triticum dicoccum/timopheevi',NULL,'Triticum','domestic',NULL,NULL,'Poaceae (Gramineae)','Plant'),('TRIFARV','Trifolium arvense','arvense','Trifolium','wild',NULL,NULL,'Fabaceae (Leguminosae)','Plant'),('TRIFCAM','Trifolium campestre','campestre','Trifolium','wild',NULL,NULL,'Fabaceae (Leguminosae)','Plant'),('TRIFDUB','Trifolium dubium','dubium','Trifolium','wild',NULL,NULL,'Fabaceae (Leguminosae)','Plant'),('TRIFHSP','Triticum aestivum/spelta',NULL,'Triticum','domestic',NULL,NULL,'Poaceae (Gramineae)','Plant'),('TRIFIND','Trifolieae (Medicago, Melilotus, Ononis, Parochetus, Trifolium, Trigonella)',NULL,'Trifolium','wild',NULL,NULL,'Fabaceae (Leguminosae)','Plant'),('TRIFLOT','Trifolium/Lotus spp.',NULL,NULL,'wild',NULL,NULL,'Fabaceae (Leguminosae)','Plant'),('TRIFMED','Trifolium/Medicago spp.',NULL,NULL,'wild',NULL,NULL,'Fabaceae (Leguminosae)','Plant'),('TRIFPRA','Trifolium pratense','pratense','Trifolium','wild',NULL,NULL,'Fabaceae (Leguminosae)','Plant'),('TRIFREP','Trifolium repens','repens','Trifolium','wild',NULL,NULL,'Fabaceae (Leguminosae)','Plant'),('TRIFSPE','Trifolium spp.',NULL,'Trifolium','wild',NULL,NULL,'Fabaceae (Leguminosae)','Plant'),('TRIFTWH','Triticum species free threshing wheat hexaploid',NULL,'Triticum','domestic',NULL,NULL,'Poaceae (Gramineae)','Plant'),('TRIFTWT','Triticum species free threshing wheat tetraploid',NULL,'Triticum','domestic',NULL,NULL,'Poaceae (Gramineae)','Plant'),('TRIGAST','Trigonella/Astragalus',NULL,NULL,'wild',NULL,NULL,'Fabaceae (Leguminosae)','Plant'),('TRIGMAR','Triglochin maritima','maritima','Triglochin','wild',NULL,NULL,'Juncaginaceae','Plant'),('TRIHYRE','Trifolium hybridum/repens',NULL,'Trifolium','wild',NULL,NULL,'Fabaceae (Leguminosae)','Plant'),('TRIMODI','Triticum monococcum/dicoccum',NULL,'Triticum','domestic',NULL,NULL,'Poaceae (Gramineae)','Plant'),('TRIMOTI','Triticum monococcum/timopheevii',NULL,'Triticum','domestic',NULL,NULL,'Poaceae (Gramineae)','Plant'),('TRIPMAR','Tripleurospermum maritimum','maritimum','Tripleurospermum','wild',NULL,NULL,'Asteraceae (Compositae)','Plant'),('TRITACO','Triticum aestivo-compactum aka aestivum/compactum',NULL,'Triticum','domestic',NULL,NULL,'Poaceae (Gramineae)','Plant'),('TRITCOM','Triticum compactum','compactum','Triticum','domestic',NULL,NULL,'Poaceae (Gramineae)','Plant'),('TRITDIC','Triticum dicoccum','dicoccum','Triticum','domestic',NULL,NULL,'Poaceae (Gramineae)','Plant'),('TRITDIO','Triticum dicoccum (1g)','dicoccum','Triticum','domestic',NULL,NULL,'Poaceae (Gramineae)','Plant'),('TRITDUR','Triticum durum aka Triticum aestivum var. durum aka T.turgidum',NULL,'Triticum','domestic',NULL,NULL,'Poaceae (Gramineae)','Plant'),('TRITDUT','Triticum durum/turgidum',NULL,'Triticum','domestic',NULL,NULL,'Poaceae (Gramineae)','Plant'),('TRITFGW','Triticum species free threshing/glume wheat',NULL,'Triticum','domestic',NULL,NULL,'Poaceae (Gramineae)','Plant'),('TRITFTW','Triticum species free threshing wheat',NULL,'Triticum','domestic',NULL,NULL,'Poaceae (Gramineae)','Plant'),('TRITGLW','Triticum species glume wheat',NULL,'Triticum','domestic',NULL,NULL,'Poaceae (Gramineae)','Plant'),('TRITHOR','Triticum spp./Hordeum vulgare',NULL,NULL,'domestic',NULL,NULL,'Poaceae (Gramineae)','Plant'),('TRITMON','Triticum monococcum','monococcum','Triticum','domestic',NULL,NULL,'Poaceae (Gramineae)','Plant'),('TRITMOO','Triticum monococcum (1g)','monococcum','Triticum','domestic',NULL,NULL,'Poaceae (Gramineae)','Plant'),('TRITMOT','Triticum monococcum (2g)','monococcum','Triticum','domestic',NULL,NULL,'Poaceae (Gramineae)','Plant'),('TRITNGW','Triticum NGW (NGW = New Glume Wheat = T. timopheevii based on aDNA evidence)','timopheevii','Triticum','domestic',NULL,NULL,'Poaceae (Gramineae)','Plant'),('TRITPAR','Triticum parvicoccum Kislev (small, tetraploid )',NULL,'Triticum','domestic',NULL,NULL,'Poaceae (Gramineae)','Plant'),('TRITSEC','Triticum/Secale spp.',NULL,NULL,'domestic',NULL,NULL,'Poaceae (Gramineae)','Plant'),('TRITSPE','Triticum spp.',NULL,'Triticum','domestic',NULL,NULL,'Poaceae (Gramineae)','Plant'),('TRITSPH','Triticum sphaerococcum','sphaerococcum','Triticum','domestic',NULL,NULL,'Poaceae (Gramineae)','Plant'),('TRITSPL','Triticum spelta','spelta','Triticum','domestic',NULL,NULL,'Poaceae (Gramineae)','Plant'),('TRITTIM','Triticum timopheevii','timopheevii','Triticum','wild/domestic',NULL,NULL,'Poaceae (Gramineae)','Plant'),('TRMODIS','Triticum monococcum/dicoccum/spelta',NULL,'Triticum','domestic',NULL,NULL,'Poaceae (Gramineae)','Plant'),('TRMODIT','Triticum monococcum/dicoccum/timopheevii',NULL,'Triticum','domestic',NULL,NULL,'Poaceae (Gramineae)','Plant'),('TRMONGW','Triticum monococcum/NGW',NULL,'Triticum','domestic',NULL,NULL,'Poaceae (Gramineae)','Plant'),('TYPHANG','Typha angustifolia','angustifolia','Typha','wild',NULL,NULL,'Typhaceae','Plant'),('TYPHLAT','Typha latifolia','latifolia','Typha','wild',NULL,NULL,'Typhaceae','Plant'),('TYPHSPE','Typha spp.',NULL,'Typha','wild',NULL,NULL,'Typhaceae','Plant'),('tachruf','Tachybaptus ruficollis','ruficollis','Tachybaptus','wild','Bird','Aves','Podicipedidae','Animal'),('tadotad','Tadorna tadorna','tadorna','Tadorna','wild','Bird','Aves','Anatidae','Animal'),('talpcae','Talpa caeca','caeca','Talpa','wild','Rodent','Mammalia','Talpidae','Animal'),('talpeur','Talpa europaea','europaea','Talpa','wild','Rodent','Mammalia','Talpidae','Animal'),('talpspe','Talpa species',NULL,'Talpa','wild','Rodent','Mammalia','Talpidae','Animal'),('teleind','Teleostei',NULL,NULL,'wild','Fish','Pisces',NULL,'Animal'),('testgra','Testudo graeca ibera','graeca','Testudo','wild','Reptile','Reptilia',NULL,'Animal'),('testind','Testudines',NULL,NULL,'wild','Reptile','Sauropsida',NULL,'Animal'),('testspe','Testudo species',NULL,'Testudo','wild','Reptile','Sauropsida','Testudinidae','Animal'),('tetrbon','Tetrastes bonasia','bonasia','Tetrastes','wild','Bird','Aves','Phasianidae','Animal'),('tetrtet','Tetrao tetrix','tetrix','Tetrao','wild','Bird','Aves','Tetraonidae','Animal'),('tetruro','Tetrao urogallus','urogallus','Tetrao','wild','Bird','Aves','Tetraonidae','Animal'),('theodan','Theodoxus danubialis','danubialis','Theodoxus','wild','Mollusc','Gastropoda',NULL,'Animal'),('theoflu','Theodoxus fluviatilis','fluviatilis','Theodoxus','wild','Mollusc','Gastropoda',NULL,'Animal'),('thunspe','Thunnus sp.',NULL,'Thunnus','wild','Fish','Actinopterygii','Scombridae','Animal'),('thunthu','Thunnus thunnus',NULL,NULL,'wild','Fish',NULL,NULL,'Animal'),('thunthy','Thunnus thynnus','thynnus','Thunnus','wild','Fish',NULL,NULL,'Animal'),('thymthy','Thymallus thymallus','thymallus','Thymallus','wild','Fish','Actinopterygii','Salmonidae','Animal'),('tinctin','Tinca tinca','tinca','Tinca','wild','Fish','Actinopterygii','Cyprinidae','Animal'),('tinetin','Tinea tinea','tinea','Tinea','wild','Fish','Pisces',NULL,'Animal'),('tracdra','Trachinus draco','draco','Trachinus','wild','Fish','Actinopterygii','Trachinidae','Animal'),('tractra','Trachurus trachurus','trachurus','Trachurus','wild','Fish','Actinopterygii','Carangidae','Animal'),('trigind','Triglidae',NULL,NULL,'wild','Fish','Actinopterygii','Triglidae','Animal'),('trigluc','Trigla lucerna','lucerna','Trigla','wild','Fish','Actinopterygii','Triglidae','Animal'),('trinery','Tringa erythropus','erythropus','Tringa','wild','Bird','Aves','Scolopacidae','Animal'),('trinspe','Tringa species',NULL,'Tringa','wild','Bird','Aves','Scolopacidae','Animal'),('trisspe','Trisopterus species',NULL,'Trisopterus','wild','Fish','Actinopterygii','Gadidae','Animal'),('trogtro','Troglodytes troglodytes','troglodytes','Troglodytes','wild','Bird','Aves','Troglodytidae','Animal'),('turdili','Turdus iliacus','iliacus','Turdus','wild','Bird','Aves','Turdidae','Animal'),('turdmer','Turdus merula','merula','Turdus','wild','Bird','Aves','Turdidae','Animal'),('turdphi','Turdus philomelos','philomelos','Turdus','wild','Bird','Aves','Turdidae','Animal'),('turdpil','Turdus pilaris','pilaris','Turdus','wild','Bird','Aves','Turdidae','Animal'),('turdspe','Turdus species',NULL,'Turdus','wild','Bird','Aves','Turdidae','Animal'),('turdvis','Turdus viscivorus','viscivorus','Turdus','wild','Bird','Aves','Turdidae','Animal'),('turrspe','Turritella sp.',NULL,'Turritella','wild','Mollusc','Gastropoda','Turritellidae','Animal'),('turstru','Tursiops truncatus','truncatus','Tursiops','wild','Marine mammal','Mammalia','Delphinidae','Animal'),('tytoalb','Tyto alba','alba','Tyto','wild','Bird','Aves','Tytonidae','Animal'),('tytospe','Tytonidae species',NULL,NULL,'wild','Bird','Aves','Tytonidae','Animal'),('ULEXSPE','Ulex spp.',NULL,'Ulex',NULL,NULL,NULL,'Fabaceae (Leguminosae)','Plant'),('ULMUGRA','Ulmus glabra','glabra','Ulmus','wild',NULL,NULL,'Ulmaceae','Plant'),('ULMUSPE','Ulmus spp.',NULL,'Ulmus','wild',NULL,NULL,'Ulmaceae','Plant'),('UMBEIND','Umbelliferae indeterminate',NULL,NULL,'wild',NULL,NULL,'Apiaceae(Umbelliferae)','Plant'),('URTIDIO','Urtica dioica','dioica','Urtica','wild',NULL,NULL,'Urticaceae','Plant'),('URTISPE','Urtica spp.',NULL,'Urtica','wild',NULL,NULL,'Urticaceae','Plant'),('URTIURE','Urtica urens','urens','Urtica','wild',NULL,NULL,'Urticaceae','Plant'),('UTRIVUL','Utricularia vulgaris','vulgaris','Utricularia','wild',NULL,NULL,'Lentibulariaceae','Plant'),('unguind','Ungulata indet.',NULL,NULL,'wild/domestic','Land mammal','Mammalia',NULL,'Animal'),('uniocra','Unio crassus','crassus','Unio','wild','Mollusc','Bivalvia','Unionidae','Animal'),('unioind','Unionidae',NULL,NULL,'wild','Mollusc','Bivalvia','Unionidae','Animal'),('uniopic','Unio pictorum','pictorum','Unio','wild','Mollusc','Bivalvia','Unionidae','Animal'),('uniospe','Unio species',NULL,'Unio','wild','Mollusc','Bivalvia','Unionidae','Animal'),('uniotim','Unio timidus','timidus','Unio','wild','Mollusc','Bivalvia','Unionidae','Animal'),('upupepo','Upupa epops','epops','Upupa','wild','Bird','Aves',NULL,'Animal'),('uriaaal','Uria aalge','aalge','Uria','wild','Bird','Aves','Alcidae','Animal'),('ursuarc','Ursus arctos','arctos','Ursus','wild','Land mammal','Mammalia','Ursidae','Animal'),('ursuspe','Ursus species',NULL,'Ursus','wild','Land mammal','Mammalia','Ursidae','Animal'),('VACCPYR','Vaccaria (hispanica) pyramidata','pyramidata','Vaccaria','wild',NULL,NULL,'Caryophyllaceae','Plant'),('VACCSPE','Vaccaria spp.',NULL,NULL,'wild',NULL,NULL,'Caryophyllaceae','Plant'),('VACCVII','Vaccinium vitis-idaea','vitis-idaea','Vaccinium','wild',NULL,NULL,'Ericaceae','Plant'),('VACMYVI','Vaccinium myrtillus/vitis-idaea',NULL,'Vaccinium','wild',NULL,NULL,'Ericaceae','Plant'),('VACNMYR','Vaccinium myrtillus','myrtillus','Vaccinium','wild',NULL,NULL,'Ericaceae','Plant'),('VACNSPE','Vaccinium spp.',NULL,'Vaccinium','wild',NULL,NULL,'Ericaceae','Plant'),('VALEDEN','Valerianella dentata','dentata','Valerianella','wild',NULL,NULL,'Valerianaceae','Plant'),('VALELOC','Valerianella locusta','locusta','Valerianella','wild',NULL,NULL,'Valerianaceae','Plant'),('VALERIM','Valerianella rimosa','rimosa','Valerianella','wild',NULL,NULL,'Valerianaceae','Plant'),('VALESPE','Valerianella spp.',NULL,'Valerianella','wild',NULL,NULL,'Valerianaceae','Plant'),('VENTMAC','Ventenata macra','macra','Ventenata','wild',NULL,NULL,'Poaceae (Gramineae)','Plant'),('VERBHED','Veronica hederifolia','hederifolia','Verbena','wild',NULL,NULL,'Verbenaceae','Plant'),('VERBOFF','Verbena officinalis','officinalis','Verbena','wild',NULL,NULL,'Verbenaceae','Plant'),('VERBSPE','Verbascum spp.',NULL,'Verbascum','wild',NULL,NULL,'Scrophulariaceae','Plant'),('VERESPE','Verbena spp.',NULL,'Verbena','wild',NULL,NULL,'Verbenaceae','Plant'),('VEROARV','Veronica arvensis','arvensis','Veronica','wild',NULL,NULL,'Scrophulariaceae','Plant'),('VEROCHA','Veronica chamaedrys','chamaedrys','Veronica','wild',NULL,NULL,'Scrophulariaceae','Plant'),('VEROHED','Veronica hederifolia','hederifolia','Veronica','wild',NULL,NULL,'Scrophulariaceae','Plant'),('VEROOFF','Veronica officinalis','officinalis','Veronica','wild',NULL,NULL,'Scrophulariaceae','Plant'),('VEROPER','Veronica persica','persica','Veronica','wild',NULL,NULL,'Scrophulariaceae','Plant'),('VEROSER','Veronica serphyllifolia','serphyllifolia','Veronica','wild',NULL,NULL,'Scrophulariaceae','Plant'),('VEROSPE','Veronica spp.',NULL,'Veronica','wild',NULL,NULL,'Scrophulariaceae','Plant'),('VEROTEU','Veronica teucrium','teucrium','Veronica','wild',NULL,NULL,'Scrophulariaceae','Plant'),('VERTECH','Veronica teucrium/chamaedrys',NULL,'Veronica','wild',NULL,NULL,'Scrophulariaceae','Plant'),('VIBULAN','Viburnum lantana','lantana','Viburnum','wild',NULL,NULL,'Caprifoliaceae','Plant'),('VIBUOPU','Viburnum opulus','opulus','Viburnum','wild',NULL,NULL,'Caprifoliaceae','Plant'),('VIBUSPE','Viburnum sp.',NULL,NULL,'wild',NULL,NULL,'Caprifoliaceae','Plant'),('VICICRA','Vicia cracca','cracca','Vicia','wild',NULL,NULL,'Fabaceae (Leguminosae)','Plant'),('VICIERV','Vicia ervilia','ervilia','Vicia','domestic',NULL,NULL,'Fabaceae (Leguminosae)','Plant'),('VICIFAB','Vicia faba','faba','Vicia','domestic',NULL,NULL,'Fabaceae (Leguminosae)','Plant'),('VICIHIR','Vicia hirsuta','hirsuta','Vicia','wild',NULL,NULL,'Fabaceae (Leguminosae)','Plant'),('VICIIND','Vicieae indeterminate aka tribe Fabeae indeterminate',NULL,'Vicia','wild/domestic',NULL,NULL,'Fabaceae (Leguminosae)','Plant'),('VICIKLE','Vicia klein-früchtig','klein-früchtig','Vicia','wild/domestic',NULL,NULL,'Fabaceae (Leguminosae)','Plant'),('VICILAT','Vicia/Lathyrus spp.',NULL,NULL,'wild',NULL,NULL,'Fabaceae (Leguminosae)','Plant'),('VICILAY','Vicia lathyroides','lathyroides','Vicia','wild',NULL,NULL,'Fabaceae (Leguminosae)','Plant'),('VICISAT','Vicia sativa','sativa','Vicia','domestic',NULL,NULL,'Fabaceae (Leguminosae)','Plant'),('VICISEP','Vicia sepium','sepium','Vicia','wild',NULL,NULL,'Fabaceae (Leguminosae)','Plant'),('VICISPE','Vicia spp.',NULL,'Vicia','wild',NULL,NULL,'Fabaceae (Leguminosae)','Plant'),('VICITET','Vicia tetrasperma','tetrasperma','Vicia','wild',NULL,NULL,'Fabaceae (Leguminosae)','Plant'),('VICIVIL','Vicia villosa','villosa','Vicia','wild',NULL,NULL,'Fabaceae (Leguminosae)','Plant'),('VICSAVI','Vicia sativa/villosa',NULL,'Vicia','wild/domestic',NULL,NULL,'Fabaceae (Leguminosae)','Plant'),('VICSYFA','Vicia sylvatica/faba',NULL,'Vicia','domestic',NULL,NULL,'Fabaceae (Leguminosae)','Plant'),('VICTEHI','Vicia tetrasperma/hirsuta',NULL,'Vicia','wild',NULL,NULL,'Fabaceae (Leguminosae)','Plant'),('VIOARTR','Viola arvensis/tricolor',NULL,'Viola','wild',NULL,NULL,'Violaceae','Plant'),('VIOLALB','Viola alba','alba','Viola','wild',NULL,NULL,'Violaceae','Plant'),('VIOLHIR','Viola hirsuta','hirsuta','Viola','wild',NULL,NULL,'Violaceae','Plant'),('VIOLHIT','Viola hirta','hirta','Viola','wild',NULL,NULL,'Violaceae','Plant'),('VIOLPAL','Viola palustris','palustris','Viola','wild',NULL,NULL,'Violaceae','Plant'),('VIOLSPE','Viola spp.',NULL,'Viola','wild',NULL,NULL,'Violaceae','Plant'),('VIOLTRI','Viola tricolor','tricolor','Viola','wild',NULL,NULL,'Violaceae','Plant'),('VISCALB','Viscum album','album','Viscum','wild',NULL,NULL,'Loranthaceae','Plant'),('VITEAGN','Vitex agnus-castus','agnus-castus','Vitex','wild',NULL,NULL,'Lamiaceae (Labiatae)','Plant'),('VITISPE','Vitis spp.',NULL,'Vitis','wild',NULL,NULL,'Vitaceae','Plant'),('VITISYL','Vitis sylvestris','sylvestris','Vitis','wild',NULL,NULL,'Vitaceae','Plant'),('VITIVIN','Vitis vinifera',NULL,'Vitis','wild/cultivated',NULL,NULL,'Vitaceae','Plant'),('valvpis','Valvata piscinalis','piscinalis','Valvata','wild','Mollusc','Gastropoda',NULL,'Animal'),('valvpul','Valvata pulchella','pulchella','Valvata','wild','Mollusc','Gastropoda',NULL,'Animal'),('vanevan','Vanellus vanellus','vanellus','Vanellus','wild','Bird','Aves','Charadriidae','Animal'),('veneind','Veneroidea',NULL,NULL,'wild','Mollusc','Bivalvia',NULL,'Animal'),('venugal','Venus galinae','galinae','Venus','wild','Mollusc','Bivalvia',NULL,'Animal'),('vermspe','Vermetus species',NULL,'Vermetus','wild','Mollusc','Gastropoda','Vermetidae','Animal'),('vespmur','Vespertilio murinus','murinus','Vespertilio','wild','Bat','Mammalia','Vespertilionidae','Animal'),('vimbvim','Vimba vimba','vimba','Vimba','wild','Fish','Actinopterygii','Cyprinidae','Animal'),('vipeasp','Vipera aspis','aspis','Vipera','wild','Reptile','Reptilia','Viperidae','Animal'),('viviace','Viviparus acerosus','acerosus','Viviparus','wild','Mollusc','Gastropoda',NULL,'Animal'),('vivicon','Viviparus contectus','contectus','Viviparus','wild','Mollusc','Gastropoda',NULL,'Animal'),('vividan','Viviparus danubialis','danubialis','Viviparus','wild','Mollusc','Gastropoda',NULL,'Animal'),('vivispe','Viviparus species',NULL,'Viviparus','wild','Mollusc',NULL,NULL,'Animal'),('vormper','Vormela peregusna','peregusna','Vormela','wild','Land mammal','Mammalia','Mustelidae','Animal'),('vulpcor','Vulpes corsac','corsac','Vulpes','wild','Land mammal','Mammalia',NULL,'Animal'),('vulpspe','Vulpes species',NULL,'Vulpes','wild','Land mammal','Mammalia','Canidae','Animal'),('vulpvul','Vulpes vulpes','vulpes','Vulpes','wild','Land mammal','Mammalia','Canidae','Animal'),('XANTSTR','Xanthium strumarium','strumarium','Xanthium','wild',NULL,NULL,'Asteraceae (Compositae)','Plant'),('zamelon','Zamenis longissimus','longissimus','Zamenis','wild','Reptile','Reptilia','Colubridae','Animal'),('zoarind','Zoarcidae',NULL,NULL,'wild','Fish','Pisces',NULL,'Animal'),('zoarviv','Zoarces viviparus','viviparus','Zoarces','wild','Fish','Actinopterygii','Zoarcidae','Animal');
/*!40000 ALTER TABLE `zoptions_TaxaList` ENABLE KEYS */;
UNLOCK TABLES;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_INSERT_zoptions_TaxaList` BEFORE INSERT ON `zoptions_TaxaList` FOR EACH ROW BEGIN SET NEW.`Class` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Class`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Family` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Family`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`FullNameOfTaxon` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`FullNameOfTaxon`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Genus` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Genus`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Kingdom` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Kingdom`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Species` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Species`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`TaxonCategory` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`TaxonCategory`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`TaxonCode` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`TaxonCode`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`WildDomesticStatus` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`WildDomesticStatus`, '', ' '), '
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
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_UPDATE_zoptions_TaxaList` BEFORE UPDATE ON `zoptions_TaxaList` FOR EACH ROW BEGIN SET NEW.`Class` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Class`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Family` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Family`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`FullNameOfTaxon` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`FullNameOfTaxon`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Genus` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Genus`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Kingdom` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Kingdom`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Species` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Species`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`TaxonCategory` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`TaxonCategory`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`TaxonCode` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`TaxonCode`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`WildDomesticStatus` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`WildDomesticStatus`, '', ' '), '
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

--
-- Dumping data for table `zoptions_Types`
--

LOCK TABLES `zoptions_Types` WRITE;
/*!40000 ALTER TABLE `zoptions_Types` DISABLE KEYS */;
INSERT INTO `zoptions_Types` VALUES ('agrarian part of trade centre','AGR',NULL),('cave','CAV',NULL),('cave/rockshelter','CAV',NULL),('cave/rockshelter: cave painting','CAV',NULL),('cave/rockshelter: ceremonial area','CAV',NULL),('cave/rockshelter: crevice','CAV',NULL),('cave/rockshelter: cultural layer','CAV',NULL),('cave/rockshelter: funerary','CAV',NULL),('cave/rockshelter: hearth','CAV',NULL),('ceremonial area','CER','open space associated with unusual activities'),('construction: watch tower','CON',NULL),('cult house','CUL',NULL),('cultural layer','CUL',NULL),('cultural layer: ground','CUL',NULL),('cultural layer: midden','CUL',NULL),('cultural layer: storage context','CUL',NULL),('deposit: freshwater','DEP','deposition of artefacts and bodies in a freshwater context'),('deposit: marine','DEP','deposition of artefacts and bodies in a marine context'),('ditch','DIT',NULL),('ditch: double ditch','DIT',NULL),('ditch: foundation or bedding','DIT',NULL),('ditch: gulley','DIT',NULL),('ditch: ring','DIT',NULL),('ditch: with bank','DIT',NULL),('dud','DUD',NULL),('enclosure','ENC',NULL),('enclosure circular: ditch','ENC','A type of enclosure called Neolithic circular ditch systems, aka rondels / roundels / rondelles (aka Kreisgrabenanlagen - DE)'),('enclosure circular: ditch fill','ENC','A type of enclosure called Neolithic circular ditch systems, aka rondels / roundels / rondelles (aka Kreisgrabenanlagen - DE)'),('enclosure circular: ditch fill: secondary find','ENC','A type of enclosure called Neolithic circular ditch systems, aka rondels / roundels / rondelles (aka Kreisgrabenanlagen - DE)'),('enclosure circular: pit','ENC','A type of enclosure called Neolithic circular ditch systems, aka rondels / roundels / rondelles (aka Kreisgrabenanlagen - DE)'),('enclosure circular: storage pit','ENC','A type of enclosure called Neolithic circular ditch systems, aka rondels / roundels / rondelles (aka Kreisgrabenanlagen - DE)'),('enclosure without settlement','ENC',NULL),('enclosure: causewayed','ENC',NULL),('enclosure: ditch','ENC',NULL),('enclosure: ditch fill','ENC',NULL),('enclosure: palisade','ENC',NULL),('enclosure: pit','ENC',NULL),('enclosure: rampart','ENC',NULL),('extraction site: salt','EXT',NULL),('fen/marshland/mire','FEN','wetland discovery context'),('fire: ashy layer','FIR',NULL),('fire: burnt area','FIR',NULL),('fire: ditch','FIR',NULL),('fire: fireplace','FIR',NULL),('fire: furnace','FIR',NULL),('fire: furnace: iron','FIR',NULL),('fire: hearth','FIR',NULL),('fire: hearth: stone packing','FIR',NULL),('fire: oven','FIR',NULL),('fire: pit','FIR',NULL),('flint scatter','FLI',NULL),('funerary','FUN',NULL),('funerary: barrow','FUN',NULL),('funerary: barrow: cenotaph','FUN',NULL),('funerary: barrow: cist','FUN',NULL),('funerary: barrow: conjoined','FUN',NULL),('funerary: barrow: long','FUN',NULL),('funerary: barrow: mound','FUN',NULL),('funerary: barrow: round','FUN',NULL),('funerary: barrow: secondary grave','FUN',NULL),('funerary: boat: log','FUN','funerary subset; boat subset; a boat made of a carved log'),('funerary: bog','FUN','funerary subset; body discovered in a bog'),('funerary: cairn','FUN',NULL),('funerary: cairn: chambered','FUN',NULL),('funerary: cairn: transepted long','FUN',NULL),('funerary: cave/rockshelter','FUN',NULL),('funerary: cemetery','FUN',NULL),('funerary: cemetery: cremations','FUN',NULL),('funerary: cemetery: row','FUN','funerary subset; cemetery subset; the graves on the cemetery were arranged in rows'),('funerary: cemetery: tumulus','FUN',NULL),('funerary: cemetery: with mounds','FUN',NULL),('funerary: cist','FUN',NULL),('funerary: coffin burial','FUN',NULL),('funerary: complex','FUN',NULL),('funerary: cultural layer','FUN',NULL),('funerary: dispersed','FUN',NULL),('funerary: ditch','FUN',NULL),('funerary: grave','FUN',NULL),('funerary: grave: gallery','FUN',NULL),('funerary: grave: passage','FUN',NULL),('funerary: grave: with mound','FUN',NULL),('funerary: house floor','FUN',NULL),('funerary: mass grave','FUN',NULL),('funerary: mine: shaft','FUN',NULL),('funerary: mortuary house','FUN',NULL),('funerary: pit','FUN',NULL),('funerary: pit: cremation','FUN',NULL),('funerary: pyre','FUN','funerary subset; remains of a funeral pyre used for the cremation of the decased'),('funerary: reused pit','FUN',NULL),('funerary: secondary inhumation','FUN',NULL),('funerary: settlement pit','FUN',NULL),('funerary: soil burial','FUN',NULL),('funerary: tomb','FUN',NULL),('funerary: tomb: chambered','FUN',NULL),('funerary: tomb: dolmen','FUN',NULL),('funerary: tomb: hypogeum','FUN','funerary and tomb subset; rock-cut and chambered tomb'),('funerary: tomb: megalith','FUN',NULL),('funerary: tomb: megaxylon','FUN','funerary and tomb subset; a megalith-type tomb made of wood; also reported as \"Niedźwiedź type tomb\"'),('funerary: tomb: shaft','FUN',NULL),('funerary: tomb: wedge','FUN',NULL),('funerary: trench fill','FUN',NULL),('funerary: tumulus','FUN',NULL),('funerary: urn','FUN',NULL),('habitation','HAB','unspecified but not funerary human presence in an area'),('habitation: floor','HAB',NULL),('habitation: foundation','HAB',NULL),('habitation: house','HAB',NULL),('habitation: house: stone','HAB','habitation and house subset; the primary material for house construction was rocks'),('habitation: house: villa','HAB','habitation and house subset; a villa'),('habitation: hut','HAB',NULL),('habitation: long pit','HAB',NULL),('habitation: longhouse','HAB',NULL),('habitation: room','HAB',NULL),('habitation: semi-sunken hut','HAB',NULL),('habitation: street','HAB',NULL),('habitation: terrace','HAB','habitation subset; artifical, external, raised, open, flat area used by the inhabitants'),('habitation: wall','HAB',NULL),('high status','HIG',NULL),('hoard','HOA',NULL),('infrastructure: sewage','INF',NULL),('kettle hole','KET',NULL),('kiln','KIL',NULL),('landscape: natural amphitheater','LAN',NULL),('military','MIL',NULL),('military camp: ditch','MIL',NULL),('military camp: ditch fill','MIL',NULL),('military camp: oven','MIL',NULL),('mine','MIN',NULL),('mine: copper: shaft','MIN',NULL),('mine: copper: shaft: hoard','MIN',NULL),('mine: cultural layer','MIN',NULL),('mine: flint','MIN','mine subset; flint mine'),('mine: flint: heap','MIN',NULL),('mine: flint: hearth','MIN',NULL),('mine: flint: mining terrace','MIN',NULL),('mine: flint: pit','MIN',NULL),('mine: flint: shaft','MIN',NULL),('mine: hearth','MIN',NULL),('mine: pit','MIN',NULL),('modern fortifications','MOD',NULL),('monastery','MON',NULL),('monument: cursus','MON',NULL),('monument: hairpin-shaped','MON',NULL),('monument: henge','MON',NULL),('monument: hillfort','MON',NULL),('monument: mound','MON',NULL),('monument: Passy','MON',NULL),('monument: standing stone','MON',NULL),('not castellum','NOT',NULL),('occupation deposit: external','OCC',NULL),('occupation deposit: internal','OCC',NULL),('offering bog','OFF',NULL),('palisade','PAL',NULL),('pen: elongated','PEN',NULL),('pit','PIT',NULL),('pit: carrion','PIT',NULL),('pit: cesspit','PIT',NULL),('pit: cistern','PIT',NULL),('pit: clay extraction','PIT',NULL),('pit: cremation','PIT',NULL),('pit: long pit','PIT',NULL),('pit: refuse','PIT',NULL),('pit: sacrificial','PIT',NULL),('pit: Schlitzgrube','PIT','a specific type of a pit characterized by a sharp angle; V-shaped'),('pit: storage','PIT',NULL),('pit: well','PIT',NULL),('pit: well shaft','PIT',NULL),('plot','PLO',NULL),('posthole','POS',NULL),('posthole: wall/roof','POS',NULL),('ring fortress','RIN',NULL),('ritual context','RIT','clearly used for ritual purposes (other than funerary)'),('road','ROA',NULL),('rockshelter','ROC',NULL),('sanctuary','SAN',NULL),('secondary find','SEC',NULL),('secondary find: cultural layer','SEC',NULL),('secondary find: mine','SEC',NULL),('secondary find: trench fill','SEC',NULL),('sediment: palaeochannel','SED',NULL),('sediment: river','SED',NULL),('sediment: sand shore','SED',NULL),('sediment: underwater deposits','SED',NULL),('sediment: wetland','SED',NULL),('settlement','SET','settlement context, equivalent to an open-air settlement where human occcupation was not located in a specifically obstructed area, e.g. cave'),('settlement: acropolis','SET','settlement subset; fortified subsection of a large settlement on a hill'),('settlement: castle','SET','settlement subset; a fortified construction designed for defense typical of Medieval Europe'),('settlement: cultural layer','SET',NULL),('settlement: debris','SET',NULL),('settlement: ditch','SET',NULL),('settlement: enclosure','SET',NULL),('settlement: enclosure: entrenched','SET',NULL),('settlement: enclosure: stone wall','SET','settlement and enclosure subset; the enclosure is a stone wall'),('settlement: fortified','SET',NULL),('settlement: fortified: fort','SET','settlement and fortified subset; a regular defensive structure with evidence of habitation'),('settlement: fortified: house','SET',NULL),('settlement: hearth','SET',NULL),('settlement: hillfort','SET',NULL),('settlement: hillfort: cultural layer','SET',NULL),('settlement: hillfort: ditch','SET',NULL),('settlement: hillfort: pit','SET',NULL),('settlement: hillfort: post hole','SET',NULL),('settlement: hillfort: rampart construction','SET',NULL),('settlement: hillfort: riverbed','SET','finds from riverbed surrounding a hillfort; the river was clearly part of the fortification system'),('settlement: hillfort: water reservoir','SET',NULL),('settlement: hunting camp','SET',NULL),('settlement: hunting camp: seal','SET',NULL),('settlement: mega-structure','SET',NULL),('settlement: mine','SET',NULL),('settlement: oppidum','SET',NULL),('settlement: pile dwelling','SET',NULL),('settlement: pit','SET',NULL),('settlement: pit house','SET',NULL),('settlement: ploughed field','SET',NULL),('settlement: posthole','SET',NULL),('settlement: silo area','SET',NULL),('settlement: storage pit','SET',NULL),('settlement: tell','SET',NULL),('settlement: village','SET','aka rural settlement'),('settlement: village: vicus','SET','settlement and village subset; variety of small settlements typical for Roman occupation'),('settlement: village: villa','SET','aka rural settlement: villa'),('shell midden','SHE',NULL),('single find','SIN','finds without context'),('temple','TEM',NULL),('trade centre','TRA',NULL),('trench: WWI','TRE',NULL),('undetermined','UND',NULL),('urban','URB',NULL),('urban/military','URB',NULL),('vessel: content','VES',NULL),('workshop','WOR',NULL),('workshop: metal','WOR',NULL),('workshop: metal: smelting','WOR',NULL),('workshop: metal: smelting: copper','WOR',NULL),('workshop: metal: smelting: iron','WOR',NULL);
/*!40000 ALTER TABLE `zoptions_Types` ENABLE KEYS */;
UNLOCK TABLES;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`admin`@`127.0.0.1`*/ /*!50003 TRIGGER `trigger_zoptions_Types_insert` BEFORE INSERT ON `zoptions_Types` FOR EACH ROW BEGIN 
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
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_INSERT_zoptions_Types` BEFORE INSERT ON `zoptions_Types` FOR EACH ROW BEGIN SET NEW.`Description` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Description`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`ignore` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`ignore`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Type` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Type`, '', ' '), '
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
/*!50003 CREATE*/ /*!50017 DEFINER=`admin`@`127.0.0.1`*/ /*!50003 TRIGGER `trigger_zoptions_Types_update` BEFORE UPDATE ON `zoptions_Types` FOR EACH ROW BEGIN 
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
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_UPDATE_zoptions_Types` BEFORE UPDATE ON `zoptions_Types` FOR EACH ROW BEGIN SET NEW.`Description` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Description`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`ignore` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`ignore`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`Type` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`Type`, '', ' '), '
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

--
-- Dumping data for table `zoptions_balasse_models`
--

LOCK TABLES `zoptions_balasse_models` WRITE;
/*!40000 ALTER TABLE `zoptions_balasse_models` DISABLE KEYS */;
INSERT INTO `zoptions_balasse_models` VALUES ('model-balasse2012'),('model-balasse2019');
/*!40000 ALTER TABLE `zoptions_balasse_models` ENABLE KEYS */;
UNLOCK TABLES;
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

--
-- Dumping data for table `zoptions_pathology_location`
--

LOCK TABLES `zoptions_pathology_location` WRITE;
/*!40000 ALTER TABLE `zoptions_pathology_location` DISABLE KEYS */;
INSERT INTO `zoptions_pathology_location` VALUES ('arms',NULL),('legs',NULL),('long bone',NULL),('skeleton: entire',NULL),('skull',NULL),('torso',NULL);
/*!40000 ALTER TABLE `zoptions_pathology_location` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_INSERT_zoptions_pathology_location` BEFORE INSERT ON `zoptions_pathology_location` FOR EACH ROW BEGIN SET NEW.`description` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`description`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`location` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`location`, '', ' '), '
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
/*!50003 CREATE*/ /*!50017 DEFINER=`Rscripts`@`127.0.0.1`*/ /*!50003 TRIGGER `auto_pad_UPDATE_zoptions_pathology_location` BEFORE UPDATE ON `zoptions_pathology_location` FOR EACH ROW BEGIN SET NEW.`description` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`description`, '', ' '), '
', ' '), '	', ' ')); SET NEW.`location` = TRIM(REPLACE(REPLACE(REPLACE(NEW.`location`, '', ' '), '
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

--
-- Dumping data for table `zoptions_yes_no`
--

LOCK TABLES `zoptions_yes_no` WRITE;
/*!40000 ALTER TABLE `zoptions_yes_no` DISABLE KEYS */;
INSERT INTO `zoptions_yes_no` VALUES ('no'),('yes'),('yes, added completely'),('yes, added partially'),('yes, not added'),('yes, see notes');
/*!40000 ALTER TABLE `zoptions_yes_no` ENABLE KEYS */;
UNLOCK TABLES;
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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-10 10:40:33
