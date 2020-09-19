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
-- Table structure for table `films`
--

DROP TABLE IF EXISTS `films`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `films` (
  `idFilms` int(11) NOT NULL AUTO_INCREMENT,
  `année` smallint(6) DEFAULT NULL,
  `titre` varchar(45) DEFAULT NULL,
  `lien` varchar(255) DEFAULT NULL,
  `note` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`idFilms`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `films`
--

LOCK TABLES `films` WRITE;
/*!40000 ALTER TABLE `films` DISABLE KEYS */;
INSERT INTO `films` VALUES (1,2008,'Iron Man','https://fr.wikipedia.org/wiki/Iron_Man_(film)',7),(2,2008,'L\'Incroyable Hulk','https://fr.wikipedia.org/wiki/L%27Incroyable_Hulk_(film)',5),(3,2010,'Iron Man 2','https://fr.wikipedia.org/wiki/Iron_Man_2',6),(4,2011,'Thor','https://fr.wikipedia.org/wiki/Thor_(film)',6),(5,2011,'Captain America: First Avenger','https://fr.wikipedia.org/wiki/Captain_America:_First_Avenger',6),(6,2012,'Avengers','https://fr.wikipedia.org/wiki/Avengers_(film)',9),(7,2013,'Iron Man 3','https://fr.wikipedia.org/wiki/Iron_Man_3',7),(8,2013,'Thor : Le Monde des ténèbres','https://fr.wikipedia.org/wiki/Thor_:_Le_Monde_des_t%C3%A9n%C3%A8bres',6),(9,2014,'Captain America : Le Soldat de l\'hiver','https://fr.wikipedia.org/wiki/Captain_America_:_Le_Soldat_de_l%27hiver',6),(10,2014,'Les Gardiens de la Galaxie','https://fr.wikipedia.org/wiki/Les_Gardiens_de_la_Galaxie_(film)',8),(11,2015,'Avengers : L\'Ère d\'Ultron','https://fr.wikipedia.org/wiki/Avengers_:_L%27%C3%88re_d%27Ultron',9),(12,2015,'Ant-Man','https://fr.wikipedia.org/wiki/Ant-Man_(film)',8),(13,2016,'Captain America: Civil War','https://fr.wikipedia.org/wiki/Captain_America:_Civil_War',6),(14,2016,'Doctor Strange','https://fr.wikipedia.org/wiki/Doctor_Strange_(film)',9),(15,2017,'Les Gardiens de la Galaxie Vol. 2','https://fr.wikipedia.org/wiki/Les_Gardiens_de_la_Galaxie_Vol._2',8),(16,2017,'Spider-Man: Homecoming','https://fr.wikipedia.org/wiki/Spider-Man:_Homecoming',7),(17,2017,'Thor : Ragnarok','https://fr.wikipedia.org/wiki/Thor_:_Ragnarok',10),(18,2018,'Black Panther',NULL,NULL),(19,2018,'Avengers: Infinity War',NULL,10),(20,2018,'Ant-Man et la Guêpe',NULL,NULL),(21,2019,'Captain Marvel',NULL,10),(22,2019,'Avengers: Endgame',NULL,10),(23,2019,'Spider-Man: Far From Home',NULL,NULL),(24,2020,'Black Widow','https://fr.wikipedia.org/wiki/Black_Widow_(film)',10),(25,2020,'Eternals','https://fr.wikipedia.org/wiki/Eternals',9),(26,2015,'Les Quatre Fantastiques',NULL,NULL),(27,2007,'Les Quatre Fantastiques et le Surfer d\'argent',NULL,NULL),(28,2017,'Wonder Woman','https://fr.wikipedia.org/wiki/Wonder_Woman_(film,_2017)',8),(29,2016,' Batman v Superman : L\'Aube de la Justice','https://fr.wikipedia.org/wiki/Batman_v_Superman_:_L%27Aube_de_la_justice',6),(30,2017,' Justice League','https://fr.wikipedia.org/wiki/Justice_League_(film)',6),(31,2005,'Elektra ','https://fr.wikipedia.org/wiki/Elektra_(film,_2005)',2),(32,2020,'WONDER WOMAN 1984','https://fr.wikipedia.org/wiki/Wonder_Woman_1984',10),(33,2021,'Doctor Strange 2',NULL,NULL),(34,2021,'Wanda Vision',NULL,NULL),(35,2021,'Loki',NULL,NULL);
/*!40000 ALTER TABLE `films` ENABLE KEYS */;
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
