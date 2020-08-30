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
-- Dumping data for table `artist`
--

LOCK TABLES `artist` WRITE;
/*!40000 ALTER TABLE `artist` DISABLE KEYS */;
INSERT INTO `artist` (`name`) VALUES ('James Ray And The Performance'),('Depeche Mode'),('New Order');
/*!40000 ALTER TABLE `artist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `format`
--

LOCK TABLES `format` WRITE;
/*!40000 ALTER TABLE `format` DISABLE KEYS */;
INSERT INTO
    `format` (`release_id`, `format_name`, `quantity`, `notes`)
VALUES
    (1,'12\" Single',1,''),
    (2,'7\" Single',1,NULL),
    (3,'12\" Single',1,NULL),
    (4,'7\" Single',1,NULL);
/*!40000 ALTER TABLE `format` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `image`
--

LOCK TABLES `image` WRITE;
/*!40000 ALTER TABLE `image` DISABLE KEYS */;
INSERT INTO
    `image` (`release_id`, `image_url`, `is_primary`)
VALUES
    (1,'https://img.discogs.com/2oueXMGXrdlLntwqbPMop-nB8XE=/fit-in/300x300/filters:strip_icc():format(jpeg):mode_rgb():quality(90)/discogs-images/R-340667-1219682059.jpeg.jpg',1),
    (2,'https://img.discogs.com/a2ycmrRRXgQSOJerSQ2t6OYsUAA=/fit-in/596x600/filters:strip_icc():format(jpeg):mode_rgb():quality(90)/discogs-images/R-340667-1391378455-1538.jpeg.jpg',0),
    (3,'https://img.discogs.com/SiRq0g_iZaew-JHGC6xf9Q21M24=/fit-in/600x599/filters:strip_icc():format(jpeg):mode_rgb():quality(90)/discogs-images/R-632593-1176488027.jpeg.jpg',1),
    (4,'https://img.discogs.com/wg-Ns8lRoteX9KGowUujxHb7-nE=/fit-in/600x596/filters:strip_icc():format(jpeg):mode_rgb():quality(90)/discogs-images/R-53157-1251472792.jpeg.jpg',1);
/*!40000 ALTER TABLE `image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `master_release`
--

LOCK TABLES `master_release` WRITE;
/*!40000 ALTER TABLE `master_release` DISABLE KEYS */;
INSERT INTO
    `master_release` (`title`, `artist_id`)
VALUES
    ('Mexico Sundown Blues', 1),
    ('Dust Boat', 1),
    ('Never Let Me Down Again', 2);
/*!40000 ALTER TABLE `master_release` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `record_label`
--

LOCK TABLES `record_label` WRITE;
/*!40000 ALTER TABLE `record_label` DISABLE KEYS */;
INSERT INTO `record_label` (`name`) VALUES ('Merciful Release'),('Mute');
/*!40000 ALTER TABLE `record_label` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `release`
--

LOCK TABLES `release` WRITE;
/*!40000 ALTER TABLE `release` DISABLE KEYS */;
INSERT INTO
    `release` (
        `release_year`,
        `release_month`,
        `release_day`,
        `title`,
        `catalog_number`,
        `country_iso_code`,
        `record_label_id`,
        `is_key`,
        `master_release_id`
    )
VALUES
    (1986,8,5,'Mexico Sundown Blues','MRAY 52','GBR',1,1,1),
    (1986,9,8,'Mexico Sundown Blues','MRAY 52R','GBR',1,0,1),
    (1989,11,NULL,'Dust Boat','MRAY 11','GBR',1,1,2),
    (1987,8,NULL,'Never Let Me Down Again','BONG 14','GBR',2,1,3);
/*!40000 ALTER TABLE `release` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `track`
--

LOCK TABLES `track` WRITE;
/*!40000 ALTER TABLE `track` DISABLE KEYS */;
INSERT INTO
    `track` (`release_id`, `order`, `track_number`, `duration`, `title`)
VALUES
    (1,1,'A',544,'Mexico Sundown Blues'),
    (1,2,'AA',383,'Edie Sedgwick'),
    (2,1,'A',182,'Mexico Sundown Blues [Radio Edit]'),
    (2,2,'B',393,'Mexico Sundown Blues [Instrumental]'),
    (3,1,'A',271,'Dust Boat'),
    (3,2,'B1',402,'A New Kind Of Assassin'),
    (3,3,'B2',189,'Southern White Knight [Live]'),
    (4,1,'A',260,'Never Let Me Down Again'),
    (4,2,'B',171,'Pleasure, Little Treasure');
/*!40000 ALTER TABLE `track` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-09 21:19:37
