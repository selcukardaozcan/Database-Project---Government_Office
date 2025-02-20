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
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `person` (
  `SSN` int NOT NULL AUTO_INCREMENT,
  `firstName` varchar(50) DEFAULT NULL,
  `lastName` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `sex` char(1) DEFAULT NULL,
  PRIMARY KEY (`SSN`)
) ENGINE=InnoDB AUTO_INCREMENT=987654322 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
INSERT INTO `person` VALUES (100000001,'Mehmet','Yılmaz','Beşiktaş / İstanbul','1985-04-23','M'),(100000002,'Ayşe','Demir','Kadıköy / İstanbul','1990-07-14','F'),(100000003,'Ahmet','Kaya','Üsküdar / İstanbul','1980-02-10','M'),(100000004,'Elif','Şahin','Bakırköy / İstanbul','1975-12-30','F'),(100000005,'Fatma','Öztürk','Ataşehir / İstanbul','1983-11-11','F'),(100000006,'Kemal','Arslan','Beyoğlu / İstanbul','1979-08-18','M'),(100000007,'Hakan','Çelik','Şişli / İstanbul','1982-09-25','M'),(100000008,'Zeynep','Kara','Ümraniye / İstanbul','1987-03-05','F'),(100000009,'Emre','Yıldız','Maltepe / İstanbul','1991-07-19','M'),(100000010,'Ayşegül','Çetin','Sarıyer / İstanbul','1976-01-15','F'),(100000011,'Mert','Güler','Bahçelievler / İstanbul','1984-06-23','M'),(100000012,'Derya','Çakır','Kartal / İstanbul','1992-11-02','F'),(100000013,'Ali','Güven','Beylikdüzü / İstanbul','1986-10-17','M'),(100000014,'Sevil','Ak','Göztepe / İstanbul','1980-05-14','F'),(100000015,'Burak','Şahin','Zeytinburnu / İstanbul','1978-12-19','M'),(100000016,'Nazan','Deniz','Bostancı / İstanbul','1989-04-10','F'),(100000017,'Kadir','Demir','Kadıköy / İstanbul','1983-08-25','M'),(100000019,'Murat','Kaplan','Fatih / İstanbul','1981-03-20','M'),(100000020,'Emine','Kaya','Eyüp / İstanbul','1987-12-01','F');
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-21 15:15:28
