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
-- Table structure for table `pouvoir_possede`
--

DROP TABLE IF EXISTS `pouvoir_possede`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `pouvoir_possede` (
  `idpersonnage` int(11) NOT NULL,
  `idpouvoirs` int(11) NOT NULL,
  `intensite` varchar(45) DEFAULT NULL,
  `commentaire` varchar(45) DEFAULT NULL,
  `arme_idarme` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idpersonnage`,`idpouvoirs`,`arme_idarme`),
  KEY `fk_pouvoir_possede_personnage1_idx` (`idpersonnage`),
  KEY `fk_pouvoir_possede_pouvoirs1_idx` (`idpouvoirs`),
  KEY `fk_pouvoir_possede_arme1_idx` (`arme_idarme`),
  CONSTRAINT `fk_pouvoir_possede_arme1` FOREIGN KEY (`arme_idarme`) REFERENCES `arme` (`idarme`),
  CONSTRAINT `fk_pouvoir_possede_personnage1` FOREIGN KEY (`idpersonnage`) REFERENCES `personnage` (`idpersonnage`),
  CONSTRAINT `fk_pouvoir_possede_pouvoirs1` FOREIGN KEY (`idpouvoirs`) REFERENCES `pouvoirs` (`idpouvoirs`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pouvoir_possede`
--

LOCK TABLES `pouvoir_possede` WRITE;
/*!40000 ALTER TABLE `pouvoir_possede` DISABLE KEYS */;
INSERT INTO `pouvoir_possede` VALUES (1,4,'95',NULL,0),(1,7,'95',NULL,0),(1,8,'100',NULL,0),(1,10,'40',NULL,1),(1,10,'40',NULL,2),(2,4,'100','Sous la forme Hulk',0),(2,5,'100','Sous la forme Hulk',0),(2,6,'80','Sous la forme Hulk',0),(2,7,'100','Sous la forme Hulk',0),(2,15,'100','Sous la forme Banner',0),(2,23,'100','Sous la forme Banner',0),(3,1,'20',NULL,0),(3,2,'20',NULL,0),(3,3,'100',NULL,0),(4,25,NULL,NULL,0),(4,26,NULL,NULL,0),(5,14,NULL,NULL,0),(5,27,NULL,NULL,0),(5,28,NULL,NULL,0),(6,4,'80',NULL,11),(6,7,'80',NULL,11),(6,10,'50',NULL,11),(6,16,'120',NULL,0),(6,23,'100',NULL,0),(6,27,'50',NULL,11),(7,5,'30',NULL,0),(7,7,'20',NULL,0),(7,7,'70',NULL,3),(8,9,NULL,NULL,0),(8,10,NULL,NULL,0),(8,11,NULL,NULL,0),(8,12,NULL,NULL,0),(8,13,NULL,NULL,0),(8,14,NULL,NULL,0),(10,18,'100',NULL,0),(11,3,NULL,NULL,0),(11,4,NULL,NULL,0),(11,7,NULL,NULL,0),(13,15,'110',NULL,0),(13,23,'110',NULL,0),(17,15,'100',NULL,0),(17,23,'100',NULL,0),(24,1,NULL,NULL,0),(24,4,NULL,NULL,0),(24,5,NULL,NULL,0),(24,7,NULL,NULL,0),(24,16,NULL,NULL,0),(24,21,NULL,NULL,0),(24,22,NULL,NULL,0),(26,15,'100',NULL,0),(26,21,'40',NULL,0),(26,26,'100',NULL,0),(31,4,'70',NULL,0),(31,15,'100',NULL,0),(31,23,'110',NULL,0),(48,4,'80',NULL,0),(48,15,'150',NULL,0),(48,23,'150',NULL,0),(65,15,'120',NULL,0);
/*!40000 ALTER TABLE `pouvoir_possede` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-29  0:38:41
