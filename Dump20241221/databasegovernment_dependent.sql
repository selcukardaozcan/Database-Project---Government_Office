-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: databasegovernment
-- ------------------------------------------------------
-- Server version	8.0.39

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `dependent`
--

DROP TABLE IF EXISTS `dependent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dependent` (
  `dependent_id` int NOT NULL AUTO_INCREMENT,
  `SSN` int NOT NULL,
  `DependentName` varchar(100) DEFAULT NULL,
  `relationship` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`dependent_id`,`SSN`),
  KEY `SSN` (`SSN`),
  CONSTRAINT `dependent_ibfk_1` FOREIGN KEY (`SSN`) REFERENCES `person` (`SSN`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dependent`
--

LOCK TABLES `dependent` WRITE;
/*!40000 ALTER TABLE `dependent` DISABLE KEYS */;
INSERT INTO `dependent` VALUES (1,100000001,'Feyyaz Yılmaz','Brother'),(2,100000002,'Ali Oya','Husband'),(3,100000003,'Elif Kaya','Daughter'),(4,100000004,'Selçuk Şahin','Son'),(5,100000005,'Kemal Öztürk','Husband'),(6,100000006,'Ana de Armas','Wife'),(7,100000007,'Can Çelik','Brother'),(8,100000008,'Mehmet Kara','Father'),(9,100000009,'Ayşe Yıldız','Mother'),(10,100000010,'Kadir Çetin','Brother'),(11,100000011,'Elif Güler','Sister'),(12,100000012,'Osman Çakır','Father'),(13,100000013,'Zeynep Güven','Sister'),(14,100000014,'Ahmet Ak','Brother'),(15,100000015,'Furkan Şahin','Brother'),(16,100000016,'Nazan Deniz','Sister'),(17,100000017,'Burcu Demir','Mother'),(19,100000019,'Yusuf Kaplan','Father'),(20,100000020,'Melek Kaya','Mother');
/*!40000 ALTER TABLE `dependent` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-21 15:15:29
