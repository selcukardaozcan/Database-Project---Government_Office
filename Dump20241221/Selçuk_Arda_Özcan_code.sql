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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `c_id` int NOT NULL AUTO_INCREMENT,
  `SSN` int DEFAULT NULL,
  PRIMARY KEY (`c_id`),
  UNIQUE KEY `SSN` (`SSN`),
  UNIQUE KEY `SSN_2` (`SSN`),
  CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`SSN`) REFERENCES `person` (`SSN`),
  CONSTRAINT `fk_customer_person` FOREIGN KEY (`SSN`) REFERENCES `person` (`SSN`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,100000001),(2,100000002),(3,100000007),(4,100000008),(5,100000009),(6,100000010),(7,100000011),(8,100000012);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `e_id` int NOT NULL,
  `SSN` int NOT NULL,
  `firstName` varchar(50) DEFAULT NULL,
  `lastName` varchar(50) DEFAULT NULL,
  `salary` double DEFAULT NULL,
  PRIMARY KEY (`e_id`,`SSN`),
  UNIQUE KEY `SSN` (`SSN`),
  CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`SSN`) REFERENCES `person` (`SSN`),
  CONSTRAINT `fk_employee_person` FOREIGN KEY (`SSN`) REFERENCES `person` (`SSN`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,100000003,NULL,NULL,58000),(2,100000004,NULL,NULL,62000),(3,100000005,NULL,NULL,60000),(4,100000006,NULL,NULL,55000),(5,100000013,NULL,NULL,38000),(6,100000014,NULL,NULL,42000),(7,100000015,NULL,NULL,20000),(8,100000016,NULL,NULL,35000);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manager`
--

DROP TABLE IF EXISTS `manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manager` (
  `m_id` int NOT NULL AUTO_INCREMENT,
  `SSN` int DEFAULT NULL,
  PRIMARY KEY (`m_id`),
  UNIQUE KEY `SSN` (`SSN`),
  CONSTRAINT `manager_ibfk_1` FOREIGN KEY (`SSN`) REFERENCES `employee` (`SSN`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manager`
--

LOCK TABLES `manager` WRITE;
/*!40000 ALTER TABLE `manager` DISABLE KEYS */;
INSERT INTO `manager` VALUES (1,100000004),(2,100000005),(3,100000006),(4,100000015),(5,100000016);
/*!40000 ALTER TABLE `manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `managesthe`
--

DROP TABLE IF EXISTS `managesthe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `managesthe` (
  `m_id` int NOT NULL,
  `o_id` int NOT NULL,
  PRIMARY KEY (`m_id`,`o_id`),
  KEY `o_id` (`o_id`),
  CONSTRAINT `managesthe_ibfk_1` FOREIGN KEY (`m_id`) REFERENCES `manager` (`m_id`),
  CONSTRAINT `managesthe_ibfk_2` FOREIGN KEY (`o_id`) REFERENCES `office` (`o_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `managesthe`
--

LOCK TABLES `managesthe` WRITE;
/*!40000 ALTER TABLE `managesthe` DISABLE KEYS */;
INSERT INTO `managesthe` VALUES (1,1),(2,2),(5,3),(3,4),(4,5);
/*!40000 ALTER TABLE `managesthe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `office`
--

DROP TABLE IF EXISTS `office`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `office` (
  `o_id` int NOT NULL AUTO_INCREMENT,
  `o_name` varchar(250) DEFAULT NULL,
  `o_location` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`o_id`),
  UNIQUE KEY `unique_o_location` (`o_location`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `office`
--

LOCK TABLES `office` WRITE;
/*!40000 ALTER TABLE `office` DISABLE KEYS */;
INSERT INTO `office` VALUES (1,'Police Department','Eyüp / İstanbul'),(2,'Tax Office ','Üsküdar / İstanbul'),(3,'Federal Bureau of Investigation and Taxes','Fatih / İstanbul'),(4,'Forest Department','Yeşilköy / İstanbul'),(5,'Social Services','Beşiktaş / İstanbul'),(6,'Tax Office for Business People','Nişantaşı / İstanbul');
/*!40000 ALTER TABLE `office` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payingtaxes`
--

DROP TABLE IF EXISTS `payingtaxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payingtaxes` (
  `c_id` int NOT NULL,
  `t_id` int NOT NULL,
  `paymentDate` date DEFAULT NULL,
  `o_location` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`c_id`,`t_id`),
  KEY `t_id` (`t_id`),
  KEY `o_location` (`o_location`),
  CONSTRAINT `payingtaxes_ibfk_1` FOREIGN KEY (`t_id`) REFERENCES `tax` (`t_id`),
  CONSTRAINT `payingtaxes_ibfk_2` FOREIGN KEY (`c_id`) REFERENCES `customer` (`c_id`),
  CONSTRAINT `payingtaxes_ibfk_3` FOREIGN KEY (`o_location`) REFERENCES `office` (`o_location`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payingtaxes`
--

LOCK TABLES `payingtaxes` WRITE;
/*!40000 ALTER TABLE `payingtaxes` DISABLE KEYS */;
INSERT INTO `payingtaxes` VALUES (1,7,'2024-12-21','Üsküdar / İstanbul'),(1,44,'2024-12-20','Fatih / İstanbul'),(2,33,'2024-09-06','Üsküdar / İstanbul'),(2,44,'2024-09-10','Fatih / İstanbul'),(7,12,'2024-12-21','Eyüp / İstanbul');
/*!40000 ALTER TABLE `payingtaxes` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `supervise`
--

DROP TABLE IF EXISTS `supervise`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supervise` (
  `supervisor_id` int NOT NULL,
  `supervisee_id` int NOT NULL,
  PRIMARY KEY (`supervisor_id`,`supervisee_id`),
  KEY `supervisee_id` (`supervisee_id`),
  CONSTRAINT `supervise_ibfk_1` FOREIGN KEY (`supervisor_id`) REFERENCES `employee` (`e_id`),
  CONSTRAINT `supervise_ibfk_2` FOREIGN KEY (`supervisee_id`) REFERENCES `employee` (`e_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supervise`
--

LOCK TABLES `supervise` WRITE;
/*!40000 ALTER TABLE `supervise` DISABLE KEYS */;
INSERT INTO `supervise` VALUES (1,2),(1,3),(2,4),(2,5),(3,6),(4,7),(5,8);
/*!40000 ALTER TABLE `supervise` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tax`
--

DROP TABLE IF EXISTS `tax`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tax` (
  `t_id` int NOT NULL,
  `TaxPayment` decimal(15,2) DEFAULT NULL,
  `typeOfTax` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`t_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tax`
--

LOCK TABLES `tax` WRITE;
/*!40000 ALTER TABLE `tax` DISABLE KEYS */;
INSERT INTO `tax` VALUES (7,2500.16,'Tax of breathing'),(12,122000.41,'Tax of nothing'),(33,15000.34,'Tax of having a car'),(44,56732.69,'high consumption');
/*!40000 ALTER TABLE `tax` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telephone`
--

DROP TABLE IF EXISTS `telephone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `telephone` (
  `SSN` int DEFAULT NULL,
  `tel_no` varchar(15) DEFAULT NULL,
  KEY `SSN` (`SSN`),
  CONSTRAINT `telephone_ibfk_1` FOREIGN KEY (`SSN`) REFERENCES `person` (`SSN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telephone`
--

LOCK TABLES `telephone` WRITE;
/*!40000 ALTER TABLE `telephone` DISABLE KEYS */;
INSERT INTO `telephone` VALUES (100000001,'+905338999988'),(100000001,'+809987766655'),(100000002,'+145678776540'),(100000002,'+488452416288'),(100000002,'+665664664646'),(100000003,'+707878937198'),(100000004,'+931243154531'),(100000005,'+390536949713'),(100000005,'+220000007312'),(100000006,'+444029572122'),(100000007,'+905368888777'),(100000008,'+809912345678'),(100000009,'+145678776541'),(100000010,'+488452416289'),(100000011,'+665664664647'),(100000012,'+707878937199'),(100000013,'+931243154532'),(100000014,'+390536949714'),(100000015,'+220000007313'),(100000016,'+444029572123'),(100000017,'+805123456789'),(100000019,'+320123456789'),(100000020,'+110000000002'),(100000020,'+610000000004');
/*!40000 ALTER TABLE `telephone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `worksfor`
--

DROP TABLE IF EXISTS `worksfor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `worksfor` (
  `e_id` int NOT NULL,
  `o_id` int NOT NULL,
  PRIMARY KEY (`e_id`,`o_id`),
  KEY `o_id` (`o_id`),
  CONSTRAINT `worksfor_ibfk_1` FOREIGN KEY (`e_id`) REFERENCES `employee` (`e_id`),
  CONSTRAINT `worksfor_ibfk_2` FOREIGN KEY (`o_id`) REFERENCES `office` (`o_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `worksfor`
--

LOCK TABLES `worksfor` WRITE;
/*!40000 ALTER TABLE `worksfor` DISABLE KEYS */;
INSERT INTO `worksfor` VALUES (1,1),(2,1),(3,2),(4,3),(8,3),(7,4),(6,5),(5,6);
/*!40000 ALTER TABLE `worksfor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-21 15:14:18
