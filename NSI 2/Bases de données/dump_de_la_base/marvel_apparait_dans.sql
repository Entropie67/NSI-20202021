-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: marvel
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `apparait_dans`
--

DROP TABLE IF EXISTS `apparait_dans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `apparait_dans` (
  `personnage_idpersonnage` int(11) NOT NULL,
  `idFilms` int(11) NOT NULL,
  KEY `fk_apparait_personnage1_idx` (`personnage_idpersonnage`),
  KEY `fk_apparait_Films1_idx` (`idFilms`),
  CONSTRAINT `fk_apparait_Films1` FOREIGN KEY (`idFilms`) REFERENCES `films` (`idFilms`),
  CONSTRAINT `fk_apparait_personnage1` FOREIGN KEY (`personnage_idpersonnage`) REFERENCES `personnage` (`idpersonnage`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apparait_dans`
--

LOCK TABLES `apparait_dans` WRITE;
/*!40000 ALTER TABLE `apparait_dans` DISABLE KEYS */;
INSERT INTO `apparait_dans` VALUES (8,28),(8,29),(8,30),(6,1),(2,2),(1,4),(1,6),(1,8),(1,11),(1,17),(1,19),(1,22),(3,3),(6,3),(24,4),(7,5),(49,5),(2,6),(3,6),(6,6),(24,6),(7,6),(52,6),(41,7),(56,7),(6,7),(24,8),(57,9),(3,9),(7,9),(58,9),(34,10),(35,10),(59,10),(25,10),(60,10),(61,10),(62,10),(7,11),(2,11),(3,11),(4,11),(6,11),(23,11),(48,11),(52,11),(18,31),(53,12),(58,12),(8,32);
/*!40000 ALTER TABLE `apparait_dans` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-29  0:38:40
