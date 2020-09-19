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
-- Table structure for table `pouvoirs`
--

DROP TABLE IF EXISTS `pouvoirs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `pouvoirs` (
  `idpouvoirs` int(11) NOT NULL,
  `nom` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idpouvoirs`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pouvoirs`
--

LOCK TABLES `pouvoirs` WRITE;
/*!40000 ALTER TABLE `pouvoirs` DISABLE KEYS */;
INSERT INTO `pouvoirs` VALUES (1,'Vieillissement ralenti'),(2,'système immunitaire renforcé'),(3,'Maitrise des arts martiaux'),(4,'Force surhumaine'),(5,'Cicatrisation (régénération)'),(6,'Bonds dans les airs'),(7,'Résistance surhumaine'),(8,'Contrôle de la foudre'),(9,'projection astrale'),(10,'Vol'),(11,'Rapidité surhumaines'),(12,'Résistance à la magie'),(13,'Résistance au contrôle mental'),(14,'Télépathie animale'),(15,'Génie intelectuel'),(16,'Télépathie'),(17,'Psioniques'),(18,'Pouvoir cosmique'),(19,'omniscient'),(20,'omnipotent'),(21,'projection astrale'),(22,'métamorphisme'),(23,'Génie scientifique'),(24,'Stratège et tacticien.'),(25,'modification de la réalité'),(26,'Magie, sorcellerie'),(27,'projection d\'energie'),(28,'changement de taille');
/*!40000 ALTER TABLE `pouvoirs` ENABLE KEYS */;
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
