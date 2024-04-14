-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: hospital
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `contact_information`
--

DROP TABLE IF EXISTS `contact_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_information` (
  `address_id` int NOT NULL,
  `street_address` varchar(30) NOT NULL,
  `city` varchar(10) NOT NULL,
  `postal_code` int NOT NULL,
  `state` varchar(20) NOT NULL,
  PRIMARY KEY (`address_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_information`
--

LOCK TABLES `contact_information` WRITE;
/*!40000 ALTER TABLE `contact_information` DISABLE KEYS */;
INSERT INTO `contact_information` VALUES (3,'dskfdksdfks','cscsdc',1999,'fff'),(4,'dsfdfssd','efe',1111,'fefef'),(5,'efefef','fefe',2332,'grg'),(6,'afdfdad','dafdaf',2323,'dsds'),(7,'sdfsdffsd','effsfeesf',434,'fefef'),(8,'fdafda','fdafad',3443,'dfafd'),(9,'asdfasdf','fdasfads',3434,'fdasafsd'),(10,'adsddasd','asdad',3443,'fdf'),(11,'sfdsfd','fsdfs',3434,'effe'),(12,'efafae','efafae',4334,'fefe'),(13,'daffad','adfadf',3434,'fdafda'),(14,'afdsafd','afdfda',32322,'fda');
/*!40000 ALTER TABLE `contact_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departments` (
  `department_id` int NOT NULL AUTO_INCREMENT,
  `DP_NAME` varchar(30) NOT NULL,
  `DP_LOCATION` varchar(25) NOT NULL,
  PRIMARY KEY (`department_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` VALUES (1,'cimputer science','AMR'),(2,'CYPER SECUTRITY','EG');
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `emp_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `salary` int NOT NULL,
  `commition_pct` decimal(3,2) DEFAULT NULL,
  `job_id` int DEFAULT NULL,
  `department_id` int DEFAULT NULL,
  `manager_id` int DEFAULT NULL,
  PRIMARY KEY (`emp_id`),
  KEY `job_id` (`job_id`),
  KEY `department_id` (`department_id`),
  KEY `manager_id` (`manager_id`),
  CONSTRAINT `department_id` FOREIGN KEY (`department_id`) REFERENCES `departments` (`department_id`),
  CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`manager_id`) REFERENCES `managers` (`manager_id`),
  CONSTRAINT `job_id` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`job_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (2,'ahmed','tarek',300,1.00,2,2,2),(3,'ahmed','tarek',300,2.00,2,2,2),(6,'ali','omar',300,4.00,2,2,2);
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employment`
--

DROP TABLE IF EXISTS `employment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employment` (
  `employ_id` int NOT NULL,
  `employment_status` varchar(10) NOT NULL,
  `emplyed` varchar(10) NOT NULL,
  `retired` varchar(10) NOT NULL,
  `Occupation` varchar(10) NOT NULL DEFAULT (_utf8mb4'not_exist_yet'),
  `patient_id` int DEFAULT NULL,
  PRIMARY KEY (`employ_id`),
  KEY `Fh_em` (`patient_id`),
  CONSTRAINT `employment_ibfk_10` FOREIGN KEY (`patient_id`) REFERENCES `patient_information` (`Patient_id`),
  CONSTRAINT `employment_ibfk_2` FOREIGN KEY (`patient_id`) REFERENCES `patient_information` (`Patient_id`),
  CONSTRAINT `employment_ibfk_4` FOREIGN KEY (`patient_id`) REFERENCES `patient_information` (`Patient_id`),
  CONSTRAINT `employment_ibfk_5` FOREIGN KEY (`patient_id`) REFERENCES `patient_information` (`Patient_id`),
  CONSTRAINT `employment_ibfk_6` FOREIGN KEY (`patient_id`) REFERENCES `patient_information` (`Patient_id`),
  CONSTRAINT `employment_ibfk_7` FOREIGN KEY (`patient_id`) REFERENCES `patient_information` (`Patient_id`),
  CONSTRAINT `employment_ibfk_8` FOREIGN KEY (`patient_id`) REFERENCES `patient_information` (`Patient_id`),
  CONSTRAINT `employment_ibfk_9` FOREIGN KEY (`patient_id`) REFERENCES `patient_information` (`Patient_id`),
  CONSTRAINT `Fh_em` FOREIGN KEY (`patient_id`) REFERENCES `patient_information` (`Patient_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employment`
--

LOCK TABLES `employment` WRITE;
/*!40000 ALTER TABLE `employment` DISABLE KEYS */;
/*!40000 ALTER TABLE `employment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `job_id` int NOT NULL AUTO_INCREMENT,
  `job_title` varchar(15) NOT NULL,
  PRIMARY KEY (`job_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
INSERT INTO `jobs` VALUES (2,'Data scinece'),(3,'computer_scicne');
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `managers`
--

DROP TABLE IF EXISTS `managers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `managers` (
  `manager_id` int NOT NULL AUTO_INCREMENT,
  `manager_name` varchar(20) NOT NULL,
  `email` varchar(15) NOT NULL,
  `phone_number` varchar(10) NOT NULL,
  PRIMARY KEY (`manager_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `managers`
--

LOCK TABLES `managers` WRITE;
/*!40000 ALTER TABLE `managers` DISABLE KEYS */;
INSERT INTO `managers` VALUES (2,'ahmed','ahmedyay532','1147768229'),(3,'ali','aliyay532','1550462022');
/*!40000 ALTER TABLE `managers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient_information`
--

DROP TABLE IF EXISTS `patient_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient_information` (
  `Patient_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `gender` varchar(7) DEFAULT NULL,
  `Marital_status` varchar(7) DEFAULT NULL,
  `address_id` int DEFAULT NULL,
  PRIMARY KEY (`Patient_id`),
  KEY `Fh_me` (`address_id`),
  CONSTRAINT `Fh_me` FOREIGN KEY (`address_id`) REFERENCES `contact_information` (`address_id`),
  CONSTRAINT `patient_information_ibfk_1` FOREIGN KEY (`address_id`) REFERENCES `contact_information` (`address_id`),
  CONSTRAINT `patient_information_ibfk_10` FOREIGN KEY (`address_id`) REFERENCES `contact_information` (`address_id`),
  CONSTRAINT `patient_information_ibfk_2` FOREIGN KEY (`address_id`) REFERENCES `contact_information` (`address_id`),
  CONSTRAINT `patient_information_ibfk_4` FOREIGN KEY (`address_id`) REFERENCES `contact_information` (`address_id`),
  CONSTRAINT `patient_information_ibfk_5` FOREIGN KEY (`address_id`) REFERENCES `contact_information` (`address_id`),
  CONSTRAINT `patient_information_ibfk_6` FOREIGN KEY (`address_id`) REFERENCES `contact_information` (`address_id`),
  CONSTRAINT `patient_information_ibfk_7` FOREIGN KEY (`address_id`) REFERENCES `contact_information` (`address_id`),
  CONSTRAINT `patient_information_ibfk_8` FOREIGN KEY (`address_id`) REFERENCES `contact_information` (`address_id`),
  CONSTRAINT `patient_information_ibfk_9` FOREIGN KEY (`address_id`) REFERENCES `contact_information` (`address_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_information`
--

LOCK TABLES `patient_information` WRITE;
/*!40000 ALTER TABLE `patient_information` DISABLE KEYS */;
INSERT INTO `patient_information` VALUES (2,'ahmed','tarek','Male','Single',NULL);
/*!40000 ALTER TABLE `patient_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rooms` (
  `room_id` int NOT NULL AUTO_INCREMENT,
  `room_number` varchar(20) NOT NULL,
  `room_type` varchar(20) NOT NULL,
  `bed_count` int NOT NULL,
  `patient_quantity` int DEFAULT NULL,
  PRIMARY KEY (`room_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms`
--

LOCK TABLES `rooms` WRITE;
/*!40000 ALTER TABLE `rooms` DISABLE KEYS */;
INSERT INTO `rooms` VALUES (1,'A_1','Influenza',7,1),(2,'A_2','Influenza',7,NULL),(3,'A_3','Influenza',7,NULL),(4,'A_4','Sinusitis',10,NULL),(5,'A_5','Sinusitis',10,NULL),(6,'A_6','Sinusitis',10,NULL);
/*!40000 ALTER TABLE `rooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storege_hospital`
--

DROP TABLE IF EXISTS `storege_hospital`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `storege_hospital` (
  `St_id` int NOT NULL AUTO_INCREMENT,
  `st_name` varchar(10) NOT NULL,
  `st_type` varchar(10) NOT NULL,
  `st_quantity` int DEFAULT NULL,
  PRIMARY KEY (`St_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storege_hospital`
--

LOCK TABLES `storege_hospital` WRITE;
/*!40000 ALTER TABLE `storege_hospital` DISABLE KEYS */;
INSERT INTO `storege_hospital` VALUES (1,'bed','furniture',50);
/*!40000 ALTER TABLE `storege_hospital` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-14  2:38:31
