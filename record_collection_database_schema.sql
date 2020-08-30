-- MySQL dump 10.13  Distrib 5.7.20, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: record_collection_database
-- ------------------------------------------------------
-- Server version	5.7.20-0ubuntu0.16.04.1

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
-- Table structure for table `artist`
--

DROP TABLE IF EXISTS `artist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `artist` (
  `artist_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`artist_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `country` (
  `country_iso_code` varchar(3) NOT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`country_iso_code`),
  UNIQUE KEY `iso_code_UNIQUE` (`country_iso_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES ('ABW','Aruba'),('AFG','Afghanistan'),('AGO','Angola'),('AIA','Anguilla'),('ALB','Albania'),('AND','Andorra'),('ANT','Netherlands Antilles'),('ARE','United Arab Emirates'),('ARG','Argentina'),('ARM','Armenia'),('ASM','American Samoa'),('ATG','Antigua and Barbuda'),('AUS','Australia'),('AUT','Austria'),('AZE','Azerbaijan'),('BDI','Burundi'),('BEL','Belgium'),('BEN','Benin'),('BFA','Burkina Faso'),('BGD','Bangladesh'),('BGR','Bulgaria'),('BHR','Bahrain'),('BHS','Bahamas'),('BIH','Bosnia and Herzegovina'),('BLR','Belarus'),('BLZ','Belize'),('BMU','Bermuda'),('BOL','Bolivia'),('BRA','Brazil'),('BRB','Barbados'),('BRN','Brunei Darussalam'),('BTN','Bhutan'),('BWA','Botswana'),('CAF','Central African Republic'),('CAN','Canada'),('CHE','Switzerland'),('CHL','Chile'),('CHN','China'),('CIV','Cote D\'Ivoire'),('CMR','Cameroon'),('COD','Congo, the Democratic Republic of the'),('COG','Congo'),('COK','Cook Islands'),('COL','Colombia'),('COM','Comoros'),('CPV','Cape Verde'),('CRI','Costa Rica'),('CUB','Cuba'),('CYM','Cayman Islands'),('CYP','Cyprus'),('CZE','Czech Republic'),('DEU','Germany'),('DJI','Djibouti'),('DMA','Dominica'),('DNK','Denmark'),('DOM','Dominican Republic'),('DZA','Algeria'),('ECU','Ecuador'),('EGY','Egypt'),('ERI','Eritrea'),('ESH','Western Sahara'),('ESP','Spain'),('EST','Estonia'),('ETH','Ethiopia'),('FIN','Finland'),('FJI','Fiji'),('FLK','Falkland Islands (Malvinas)'),('FRA','France'),('FRO','Faroe Islands'),('FSM','Micronesia, Federated States of'),('GAB','Gabon'),('GBR','United Kingdom'),('GEO','Georgia'),('GHA','Ghana'),('GIB','Gibraltar'),('GIN','Guinea'),('GLP','Guadeloupe'),('GMB','Gambia'),('GNB','Guinea-Bissau'),('GNQ','Equatorial Guinea'),('GRC','Greece'),('GRD','Grenada'),('GRL','Greenland'),('GTM','Guatemala'),('GUF','French Guiana'),('GUM','Guam'),('GUY','Guyana'),('HKG','Hong Kong'),('HND','Honduras'),('HRV','Croatia'),('HTI','Haiti'),('HUN','Hungary'),('IDN','Indonesia'),('IND','India'),('IRL','Ireland'),('IRN','Iran, Islamic Republic of'),('IRQ','Iraq'),('ISL','Iceland'),('ISR','Israel'),('ITA','Italy'),('JAM','Jamaica'),('JOR','Jordan'),('JPN','Japan'),('KAZ','Kazakhstan'),('KEN','Kenya'),('KGZ','Kyrgyzstan'),('KHM','Cambodia'),('KIR','Kiribati'),('KNA','Saint Kitts and Nevis'),('KOR','Korea, Republic of'),('KWT','Kuwait'),('LAO','Lao People\'s Democratic Republic'),('LBN','Lebanon'),('LBR','Liberia'),('LBY','Libyan Arab Jamahiriya'),('LCA','Saint Lucia'),('LIE','Liechtenstein'),('LKA','Sri Lanka'),('LSO','Lesotho'),('LTU','Lithuania'),('LUX','Luxembourg'),('LVA','Latvia'),('MAC','Macao'),('MAR','Morocco'),('MCO','Monaco'),('MDA','Moldova, Republic of'),('MDG','Madagascar'),('MDV','Maldives'),('MEX','Mexico'),('MHL','Marshall Islands'),('MKD','Macedonia, the Former Yugoslav Republic of'),('MLI','Mali'),('MLT','Malta'),('MMR','Myanmar'),('MNG','Mongolia'),('MNP','Northern Mariana Islands'),('MOZ','Mozambique'),('MRT','Mauritania'),('MSR','Montserrat'),('MTQ','Martinique'),('MUS','Mauritius'),('MWI','Malawi'),('MYS','Malaysia'),('NAM','Namibia'),('NCL','New Caledonia'),('NER','Niger'),('NFK','Norfolk Island'),('NGA','Nigeria'),('NIC','Nicaragua'),('NIU','Niue'),('NLD','Netherlands'),('NOR','Norway'),('NPL','Nepal'),('NRU','Nauru'),('NZL','New Zealand'),('OMN','Oman'),('PAK','Pakistan'),('PAN','Panama'),('PCN','Pitcairn'),('PER','Peru'),('PHL','Philippines'),('PLW','Palau'),('PNG','Papua New Guinea'),('POL','Poland'),('PRI','Puerto Rico'),('PRK','Korea, Democratic People\'s Republic of'),('PRT','Portugal'),('PRY','Paraguay'),('PYF','French Polynesia'),('QAT','Qatar'),('REU','Reunion'),('ROM','Romania'),('RUS','Russian Federation'),('RWA','Rwanda'),('SAU','Saudi Arabia'),('SDN','Sudan'),('SEN','Senegal'),('SGP','Singapore'),('SHN','Saint Helena'),('SJM','Svalbard and Jan Mayen'),('SLB','Solomon Islands'),('SLE','Sierra Leone'),('SLV','El Salvador'),('SMR','San Marino'),('SOM','Somalia'),('SPM','Saint Pierre and Miquelon'),('STP','Sao Tome and Principe'),('SUR','Suriname'),('SVK','Slovakia'),('SVN','Slovenia'),('SWE','Sweden'),('SWZ','Swaziland'),('SYC','Seychelles'),('SYR','Syrian Arab Republic'),('TCA','Turks and Caicos Islands'),('TCD','Chad'),('TGO','Togo'),('THA','Thailand'),('TJK','Tajikistan'),('TKL','Tokelau'),('TKM','Turkmenistan'),('TON','Tonga'),('TTO','Trinidad and Tobago'),('TUN','Tunisia'),('TUR','Turkey'),('TUV','Tuvalu'),('TWN','Taiwan, Province of China'),('TZA','Tanzania, United Republic of'),('UGA','Uganda'),('UKR','Ukraine'),('URY','Uruguay'),('USA','United States'),('UZB','Uzbekistan'),('VAT','Holy See (Vatican City State)'),('VCT','Saint Vincent and the Grenadines'),('VEN','Venezuela'),('VGB','Virgin Islands, British'),('VIR','Virgin Islands, U.s.'),('VNM','Viet Nam'),('VUT','Vanuatu'),('WLF','Wallis and Futuna'),('WSM','Samoa'),('YEM','Yemen'),('ZAF','South Africa'),('ZMB','Zambia'),('ZWE','Zimbabwe');
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `format`
--

DROP TABLE IF EXISTS `format`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `format` (
  `release_id` int(10) unsigned NOT NULL,
  `format_name` varchar(30) NOT NULL,
  `quantity` tinyint(3) unsigned DEFAULT NULL,
  `notes` tinytext,
  PRIMARY KEY (`release_id`, `format_name`),
  KEY `fk_release_has_format_1_idx` (`release_id`),
  CONSTRAINT `fk_release_has_format_1` FOREIGN KEY (`release_id`) REFERENCES `release` (`release_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `image`
--

DROP TABLE IF EXISTS `image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `image` (
  `image_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `release_id` int(10) unsigned NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `is_primary` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`image_id`),
  KEY `fk_release_has_image_2` (`release_id`),
  CONSTRAINT `fk_release_has_image_2` FOREIGN KEY (`release_id`) REFERENCES `release` (`release_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `master_release`
--

DROP TABLE IF EXISTS `master_release`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_release` (
  `master_release_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `artist_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`master_release_id`),
  CONSTRAINT `fk_master release_1` FOREIGN KEY (`artist_id`) REFERENCES `artist` (`artist_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `record_label`
--

DROP TABLE IF EXISTS `record_label`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `record_label` (
  `record_label_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`record_label_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `release`
--

DROP TABLE IF EXISTS `release`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `release` (
  `release_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `release_year` smallint(4) unsigned DEFAULT NULL,
  `release_month` tinyint(2) unsigned DEFAULT NULL,
  `release_day` tinyint(2) unsigned DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `catalog_number` varchar(45) DEFAULT NULL,
  `country_iso_code` varchar(10) DEFAULT NULL,
  `record_label_id` int(10) unsigned DEFAULT NULL,
  `is_key` tinyint(1) unsigned NOT NULL,
  `master_release_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`release_id`),
  KEY `fk_release_2_idx` (`country_iso_code`),
  KEY `fk_release_3_idx` (`record_label_id`),
  CONSTRAINT `fk_release_1` FOREIGN KEY (`master_release_id`) REFERENCES `master_release` (`master_release_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_release_2` FOREIGN KEY (`country_iso_code`) REFERENCES `country` (`country_iso_code`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_release_3` FOREIGN KEY (`record_label_id`) REFERENCES `record_label` (`record_label_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `track`
--

DROP TABLE IF EXISTS `track`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `track` (
  `release_id` int(10) unsigned NOT NULL,
  `order` smallint(3) unsigned NOT NULL,
  `track_number` varchar(10) DEFAULT NULL,
  `duration` smallint(11) unsigned DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`release_id`,`order`),
  CONSTRAINT `fk_track_1` FOREIGN KEY (`release_id`) REFERENCES `release` (`release_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-09 21:11:53
