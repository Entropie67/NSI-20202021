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
-- Table structure for table `personnage`
--

DROP TABLE IF EXISTS `personnage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `personnage` (
  `idpersonnage` int(11) NOT NULL,
  `nom` varchar(75) NOT NULL,
  `surnom` varchar(45) DEFAULT NULL,
  `nom_civil` varchar(45) DEFAULT NULL,
  `idalignement` int(11) NOT NULL,
  `idunivers` int(11) NOT NULL,
  `sexe` varchar(45) DEFAULT NULL,
  `puissance` int(11) DEFAULT NULL,
  `idequipe` int(11) NOT NULL DEFAULT '0',
  `idrace` int(11) NOT NULL DEFAULT '0',
  `lien` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idpersonnage`),
  UNIQUE KEY `nom_UNIQUE` (`nom`),
  KEY `fk_personnage_alignement_idx` (`idalignement`),
  KEY `fk_personnage_univers1_idx` (`idunivers`),
  KEY `fk_personnage_equipe1_idx` (`idequipe`),
  KEY `fk_personnage_race1_idx` (`idrace`),
  CONSTRAINT `fk_personnage_alignement` FOREIGN KEY (`idalignement`) REFERENCES `alignement` (`idalignement`),
  CONSTRAINT `fk_personnage_equipe1` FOREIGN KEY (`idequipe`) REFERENCES `equipes` (`idequipe`),
  CONSTRAINT `fk_personnage_race1` FOREIGN KEY (`idrace`) REFERENCES `race` (`idrace`),
  CONSTRAINT `fk_personnage_univers1` FOREIGN KEY (`idunivers`) REFERENCES `univers` (`idunivers`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personnage`
--

LOCK TABLES `personnage` WRITE;
/*!40000 ALTER TABLE `personnage` DISABLE KEYS */;
INSERT INTO `personnage` VALUES (1,'Thor','Le dieu du tonnerre','Eric Masterson',1,1,'M',100,1,1,'https://fr.wikipedia.org/wiki/Thor_(comics)'),(2,'Hulk','Le Colosse de jade','Bruce Banner',1,1,'M',100,1,3,'https://fr.wikipedia.org/wiki/Hulk'),(3,'Black Widow','La veuve noire','Natasha Romanoff',1,1,'F',40,1,3,'https://fr.wikipedia.org/wiki/Veuve_noire_(comics)'),(4,'Scarlet Witch','La Sorcière rouge','Wanda Maximoff',1,1,'F',80,1,3,'https://fr.wikipedia.org/wiki/Sorci%C3%A8re_rouge'),(5,'The Wasp','La Guêpe','Janet Van Dyne',1,1,'F',40,1,3,'https://fr.wikipedia.org/wiki/Gu%C3%AApe_(Comics)'),(6,'Iron Man','Tête de fer','Tony Stark',1,1,'M',50,1,3,'https://fr.wikipedia.org/wiki/Iron_Man_(comics)'),(7,'Captain America','Cap','Steve  Rogers',1,1,'M',40,1,3,'https://fr.wikipedia.org/wiki/Captain_America'),(8,'Wonder Woman','Diana Prince','Princesse Diana',1,2,'F',60,7,3,'https://fr.wikipedia.org/wiki/Wonder_Woman'),(9,'Professeur Xavier','Professeur X','Charles Xavier',1,1,'M',80,2,3,'https://fr.wikipedia.org/wiki/Professeur_Xavier'),(10,'Galactus','Le Dévoreur de Mondes','Galan',3,1,'M',500,0,5,'https://fr.wikipedia.org/wiki/Galactus'),(11,'Thanos','Le Titan fou',NULL,2,1,'M',200,0,4,'https://fr.wikipedia.org/wiki/Thanos_(Marvel_Comics)'),(12,'Adam Warlock','Magus',NULL,4,1,'M',150,0,5,'https://fr.wikipedia.org/wiki/Adam_Warlock'),(13,'Docteur Fatalis','Doctor Doom','Victor Von Fatalis',2,1,'M',100,0,3,'https://fr.wikipedia.org/wiki/Docteur_Fatalis'),(14,'Captain Marvel','Vers','Carol Danvers',1,1,'F',150,0,3,'https://fr.wikipedia.org/wiki/Carol_Danvers'),(15,'Valkyrie','Val','Brunhilde',1,1,'F',90,0,1,'https://fr.wikipedia.org/wiki/Valkyrie_(Marvel_Comics)'),(16,'Batman','La Chauves-souris','Bruce Wayne',1,2,'M',30,7,3,'https://fr.wikipedia.org/wiki/Batman'),(17,'Mr Fantastique','L\'Homme élastique','Red Richards',1,1,'M',40,3,3,'https://fr.wikipedia.org/wiki/Rachel_Summers'),(18,'Elektra',NULL,'Elektra Natchios',1,1,'F',60,0,3,'https://fr.wikipedia.org/wiki/Elektra_(comics)'),(19,'La Femme invisible',NULL,'Jane Storm-Richards',1,1,'F',40,3,3,'https://fr.wikipedia.org/wiki/Femme_invisible_(comics)'),(20,'Emma Frost','la Reine Blanche','Emma Grace Frost',2,1,'F',70,0,3,'https://fr.wikipedia.org/wiki/Emma_Frost'),(21,'Jean Grey',NULL,NULL,1,1,'F',100,2,3,'https://fr.wikipedia.org/wiki/Jean_Grey'),(22,'Psylocke','Lady Mandarin','Elisabeth Glorianna « Betsy » Braddock',1,1,'F',60,0,3,'https://fr.wikipedia.org/wiki/Psylocke'),(23,'La Vision',NULL,'Victor Shade',1,1,'M',80,0,6,'https://fr.wikipedia.org/wiki/Vision_(comics)'),(24,'Loki','Le dieu de la malice','Loki Laufeyson',2,1,'M',70,0,1,'https://fr.wikipedia.org/wiki/Loki_(Marvel_Comics)'),(25,'Star-Lord','Boyo ','Peter Jason Quill',1,1,'M',40,4,3,'https://fr.wikipedia.org/wiki/Star-Lord'),(26,'Docteur Strange','le Sorcier suprême','Stephen Vincent Strange',1,1,'M',90,0,3,'https://fr.wikipedia.org/wiki/Docteur_Strange'),(27,'Cléa','Princesse de la Dimension noire','Cleook ',1,1,'F',60,0,7,'https://fr.wikipedia.org/wiki/Cl%C3%A9a_(comics)'),(28,'Black Panther','The King of Wakanda','T\'Challa',1,1,'M',40,1,3,'https://fr.wikipedia.org/wiki/Panth%C3%A8re_noire_(comics)'),(29,'Wolverine','L\'Arme X','Logan',1,1,'M',60,2,3,'https://fr.wikipedia.org/wiki/Wolverine'),(30,'Jessica Jones','Power Woman','Jessica Campbell Jones',1,1,'F',60,9,3,'https://fr.wikipedia.org/wiki/Jessica_Jones'),(31,'Le Fauve','Beast','Hank ',1,1,'M',60,2,3,'https://fr.wikipedia.org/wiki/Fauve_(comics)'),(32,'Spider-Man','L\'araignée','Peter Benjamin Parker',1,1,'M',60,1,3,'https://fr.wikipedia.org/wiki/Spider-Man'),(33,'Luke Cage','Power Man','Carl Lucas',1,1,'M',50,9,3,'https://fr.wikipedia.org/wiki/Luke_Cage'),(34,'Drax','le Destructeur','Arthur Sampson Douglas',1,1,'M',50,4,0,'https://fr.wikipedia.org/wiki/Drax_le_Destructeur'),(35,'Groot','Le monstre de la planète X',NULL,1,1,'M',40,4,0,'https://fr.wikipedia.org/wiki/Groot'),(36,'Malicia','Irene Adler','Anna Marie',1,1,'F',100,2,3,'https://fr.wikipedia.org/wiki/Malicia_(comics)'),(37,'La Chose','Benji','Benjamin « Ben » Jacob Grimm',1,1,'M',80,3,3,'https://fr.wikipedia.org/wiki/Chose_(comics)'),(38,'Nova','Centurion Nova','Richard Rider',1,1,'F',90,9,3,'https://fr.wikipedia.org/wiki/Nova_(Richard_Rider)'),(39,'Mystique','Raven ','Raven Darkhölme',1,1,'F',40,0,3,'https://fr.wikipedia.org/wiki/Mystique_(comics)'),(40,'Baron Zémo','Le Phénix','Heinrich Zemo',2,1,'M',50,0,3,'https://fr.wikipedia.org/wiki/Baron_Zemo'),(41,'Le Mandarin','Gene Khan',NULL,2,1,'M',40,0,3,'https://fr.wikipedia.org/wiki/Mandarin_(comics)'),(42,'Dormammu','Le Seigneur de la Dimension noire',NULL,2,1,'M',70,0,0,'https://fr.wikipedia.org/wiki/Dormammu'),(43,'Mephisto','Satan',' Lucifer',2,1,'M',100,0,0,'https://fr.wikipedia.org/wiki/Mephisto_(comics)v'),(44,'Kang','Le Centurion rouge','Nathaniel Richards',1,1,'M',80,0,3,'https://fr.wikipedia.org/wiki/Kang_le_conqu%C3%A9rant'),(45,'Venom','Le Spider-Man noir',NULL,2,1,'M',50,0,0,'https://fr.wikipedia.org/wiki/Venom_(comics)'),(46,'Docteur Octopus','Superior Spider-Man','Otto Gunther Octavius',2,1,'M',80,0,3,'https://fr.wikipedia.org/wiki/Docteur_Octopus'),(47,'Apocalypse','The First One','En Sabah Nur',2,1,'M',150,0,3,'https://fr.wikipedia.org/wiki/Apocalypse_(comics)'),(48,'Ultron',NULL,NULL,2,1,'M',200,0,6,'https://fr.wikipedia.org/wiki/Ultron'),(49,'Crâne Rouge','The Red Skull','Johann Schmidt',2,1,'M',30,0,0,'https://fr.wikipedia.org/wiki/Cr%C3%A2ne_rouge'),(50,'Magneto','Erik Lehnsherr','Max Eisenhardt',4,1,'M',80,2,3,'https://fr.wikipedia.org/wiki/Magn%C3%A9to_(comics)'),(51,'Tornade','Storm','Ororo Munroe',4,1,'F',50,2,3,'https://fr.wikipedia.org/wiki/Tornade_(comics)'),(52,'Hawkeye','Œil-de-faucon','Clint Barton',1,1,'M',30,1,3,'https://fr.wikipedia.org/wiki/Clint_Barton'),(53,'Ant-Man',' l\'Homme-fourmi','Scott Lang',1,1,'M',50,1,3,'https://fr.wikipedia.org/wiki/Ant-Man'),(54,'Daredevil','DD ','Matthew « Matt » Michael Murdock',1,2,'M',30,9,3,'https://fr.wikipedia.org/wiki/Daredevil'),(55,'Ghost Rider','Spirit of Vengeance','Johnny Blaze',1,1,'M',30,9,0,'https://fr.wikipedia.org/wiki/Ghost_Rider_(comics)'),(56,'War Machine',' Iron Patriot','Jim  Rhodes',1,1,'M',30,1,3,'https://fr.wikipedia.org/wiki/War_Machine_(comics)'),(57,'James Barnes','Le Soldat de l’hiver','James Buchanan Barnes',1,1,'M',40,0,3,'https://fr.wikipedia.org/wiki/James_Barnes'),(58,'Le Faucon',NULL,'Samuel Thomas Wilson',1,1,'M',40,1,3,'https://fr.wikipedia.org/wiki/Faucon_(comics)'),(59,'Gamora','La femme la plus dangereuse de l\'univers',NULL,1,1,'F',70,4,0,'https://fr.wikipedia.org/wiki/Gamora'),(60,'Ronan',' l\'Accusateur',NULL,2,1,'M',100,0,2,'https://fr.wikipedia.org/wiki/Ronan_l%27Accusateur'),(61,'Nébula','Commandant Nébula',NULL,4,1,'F',40,0,6,'https://fr.wikipedia.org/wiki/N%C3%A9bula_(Marvel_Comics)'),(62,'Rocket',NULL,NULL,1,1,'M',40,4,6,'https://fr.wikipedia.org/wiki/Rocket_Raccoon'),(63,'Graviton',NULL,'Franklin Hall',2,1,'M',100,0,3,'https://fr.wikipedia.org/wiki/Graviton_(comics)'),(64,'Mister Hyde',NULL,'Calvin Zabo',2,1,'M',80,0,3,'https://fr.wikipedia.org/wiki/Mister_Hyde_(comics)'),(65,'Amadeus Cho','Mastermind Excello',NULL,1,1,'M',70,0,3,'https://fr.wikipedia.org/wiki/Amadeus_Cho');
/*!40000 ALTER TABLE `personnage` ENABLE KEYS */;
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
