-- MySQL dump 10.13  Distrib 8.0.25, for macos11 (x86_64)
--
-- Host: localhost    Database: demosql
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `langue`
--

DROP TABLE IF EXISTS `langue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `langue` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `langue`
--

LOCK TABLES `langue` WRITE;
/*!40000 ALTER TABLE `langue` DISABLE KEYS */;
INSERT INTO `langue` VALUES (1,'français'),(2,'anglais');
/*!40000 ALTER TABLE `langue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mobile`
--

DROP TABLE IF EXISTS `mobile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mobile` (
  `id` int NOT NULL AUTO_INCREMENT,
  `model` varchar(100) NOT NULL,
  `marque` varchar(100) DEFAULT NULL,
  `prix` float NOT NULL,
  `description` text,
  `actif` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mobile`
--

LOCK TABLES `mobile` WRITE;
/*!40000 ALTER TABLE `mobile` DISABLE KEYS */;
INSERT INTO `mobile` VALUES (1,'Iphone 7','Apple',550,'Super produit',1),(2,'Iphone 12','Apple',1120,'Excellent',1),(3,'Iphone 4s','Apple',120,'Bien mais démodé',0),(4,'Fold','Samsung',950,'Top',1),(5,'Iphone Xs','Apple',750,'Bien',1),(6,'Iphone 13','Apple',1350,'Bien mais cher',1),(7,'Iphone 13 plus','Apple',1550,'Faut être blindé',0);
/*!40000 ALTER TABLE `mobile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `utilisateur` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) DEFAULT NULL,
  `prenom` varchar(100) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `langue_id` int DEFAULT (1),
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `langue_id` (`langue_id`),
  CONSTRAINT `utilisateur_ibfk_1` FOREIGN KEY (`langue_id`) REFERENCES `langue` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utilisateur`
--

LOCK TABLES `utilisateur` WRITE;
/*!40000 ALTER TABLE `utilisateur` DISABLE KEYS */;
INSERT INTO `utilisateur` VALUES (1,'Bertrand','Pierre','pierre@gmail.com',1),(2,'Durand','Paul','paul@test.com',2),(3,'Dupont','Jacques','jacques@test.com',1),(4,'Charmand','Michel','michel@test.com',1),(5,'Bauvais','José','jose@test.com',1),(6,'Montana','Tony','scarface@test.com',1),(8,'Bobo','Caume','bobo@test.com',1),(9,'Foo','Bar','foo@test.com',1),(11,'Star','Beyonce','b@test.com',1),(12,'Pique','Shakira','shakira@test.com',1),(13,'Roulet','René','rene@gmail.com',1);
/*!40000 ALTER TABLE `utilisateur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `utilisateur_gmail_vw`
--

DROP TABLE IF EXISTS `utilisateur_gmail_vw`;
/*!50001 DROP VIEW IF EXISTS `utilisateur_gmail_vw`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `utilisateur_gmail_vw` AS SELECT 
 1 AS `id`,
 1 AS `nom`,
 1 AS `prenom`,
 1 AS `email`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `utilisateur_mobile`
--

DROP TABLE IF EXISTS `utilisateur_mobile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `utilisateur_mobile` (
  `utilisateur_id` int NOT NULL,
  `mobile_id` int NOT NULL,
  KEY `utilisateur_id` (`utilisateur_id`),
  KEY `mobile_id` (`mobile_id`),
  CONSTRAINT `utilisateur_mobile_ibfk_1` FOREIGN KEY (`utilisateur_id`) REFERENCES `utilisateur` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `utilisateur_mobile_ibfk_2` FOREIGN KEY (`mobile_id`) REFERENCES `mobile` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utilisateur_mobile`
--

LOCK TABLES `utilisateur_mobile` WRITE;
/*!40000 ALTER TABLE `utilisateur_mobile` DISABLE KEYS */;
INSERT INTO `utilisateur_mobile` VALUES (1,1),(1,2),(1,3),(2,4),(2,7),(13,4),(12,5);
/*!40000 ALTER TABLE `utilisateur_mobile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `utilisateur_gmail_vw`
--

/*!50001 DROP VIEW IF EXISTS `utilisateur_gmail_vw`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `utilisateur_gmail_vw` AS select `utilisateur`.`id` AS `id`,`utilisateur`.`nom` AS `nom`,`utilisateur`.`prenom` AS `prenom`,`utilisateur`.`email` AS `email` from `utilisateur` where (`utilisateur`.`email` like '%gmail.com') */;
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

-- Dump completed on 2022-02-14 13:40:58
