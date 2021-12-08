-- MySQL dump 10.13  Distrib 8.0.23, for macos10.15 (x86_64)
--
-- Host: localhost    Database: health_care
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `bill`
--

DROP TABLE IF EXISTS `bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bill` (
  `bill_no` int unsigned NOT NULL,
  `patient_id` int unsigned NOT NULL,
  `policy_num` int unsigned NOT NULL,
  `bill_amount` int unsigned NOT NULL,
  `amount_paid` int unsigned NOT NULL,
  `remaining_balace` int unsigned NOT NULL,
  PRIMARY KEY (`bill_no`),
  UNIQUE KEY `bill_no` (`bill_no`),
  UNIQUE KEY `patient_id` (`patient_id`),
  UNIQUE KEY `policy_num` (`policy_num`),
  CONSTRAINT `bill_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`patient_id`),
  CONSTRAINT `bill_ibfk_2` FOREIGN KEY (`policy_num`) REFERENCES `insurance` (`policy_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill`
--

LOCK TABLES `bill` WRITE;
/*!40000 ALTER TABLE `bill` DISABLE KEYS */;
INSERT INTO `bill` VALUES (201,1,25,1011,100,911),(202,2,26,2011,200,1811),(203,3,27,1011,100,911),(204,4,28,4011,400,3611),(205,5,29,5011,500,4511);
/*!40000 ALTER TABLE `bill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department` (
  `dept_id` int unsigned NOT NULL,
  `dept_name` varchar(50) NOT NULL,
  `dept_building` varchar(10) NOT NULL,
  PRIMARY KEY (`dept_id`),
  UNIQUE KEY `dept_id` (`dept_id`),
  UNIQUE KEY `dept_name` (`dept_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (11,'emergency','BSB'),(12,'physiotherapy ','SCE'),(13,'pathology','SEO'),(14,'nursing','SCE'),(15,'cardiology','SCE');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctor` (
  `doctor_id` int unsigned NOT NULL,
  `patient_id` int unsigned NOT NULL,
  `dept_id` int unsigned NOT NULL,
  `prescription_code` int unsigned DEFAULT NULL,
  `doctor_name` varchar(50) NOT NULL,
  `doctor_gender` varchar(10) NOT NULL,
  `doctor_age` tinyint unsigned NOT NULL,
  PRIMARY KEY (`doctor_id`),
  UNIQUE KEY `doctor_id` (`doctor_id`),
  UNIQUE KEY `prescription_code` (`prescription_code`),
  KEY `dept_id` (`dept_id`),
  CONSTRAINT `doctor_ibfk_1` FOREIGN KEY (`dept_id`) REFERENCES `department` (`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor`
--

LOCK TABLES `doctor` WRITE;
/*!40000 ALTER TABLE `doctor` DISABLE KEYS */;
INSERT INTO `doctor` VALUES (25,1,11,1001,'Jennifer','Female',30),(26,2,12,1002,'Neel','Male',28),(27,3,13,1003,'Emma','Female',27),(28,4,14,1004,'Alex','Male',26),(29,5,15,1005,'Chris','Male',24);
/*!40000 ALTER TABLE `doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entity1`
--

DROP TABLE IF EXISTS `entity1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `entity1` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entity1`
--

LOCK TABLES `entity1` WRITE;
/*!40000 ALTER TABLE `entity1` DISABLE KEYS */;
INSERT INTO `entity1` VALUES ('1111','******','abc@gmaill.com'),('2222','******','def@gmaill.com'),('3333','******','ghi@gmaill.com'),('4444','******','jkl@gmaill.com'),('5555','******','mno@gmaill.com');
/*!40000 ALTER TABLE `entity1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `insurance`
--

DROP TABLE IF EXISTS `insurance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `insurance` (
  `policy_num` int unsigned NOT NULL,
  `patient_id` int unsigned NOT NULL,
  `bill_no` int unsigned NOT NULL,
  `company` varchar(50) NOT NULL,
  PRIMARY KEY (`policy_num`),
  UNIQUE KEY `policy_num` (`policy_num`),
  UNIQUE KEY `patient_id` (`patient_id`),
  UNIQUE KEY `bill_no` (`bill_no`),
  CONSTRAINT `insurance_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`patient_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insurance`
--

LOCK TABLES `insurance` WRITE;
/*!40000 ALTER TABLE `insurance` DISABLE KEYS */;
INSERT INTO `insurance` VALUES (25,1,201,'health alliance'),(26,2,202,'aetna'),(27,3,203,'blue cross'),(28,4,204,'sanjeevni'),(29,5,205,'osf');
/*!40000 ALTER TABLE `insurance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient` (
  `patient_id` int unsigned NOT NULL,
  `doctor_id` int unsigned NOT NULL,
  `prescription_code` int unsigned DEFAULT NULL,
  `payment_no` int unsigned NOT NULL,
  `bill_no` int unsigned NOT NULL,
  `policy_num` int unsigned DEFAULT NULL,
  `room_num` int unsigned DEFAULT NULL,
  `patient_name` varchar(50) NOT NULL,
  `patient_gender` varchar(10) NOT NULL,
  `patient_age` tinyint unsigned NOT NULL,
  PRIMARY KEY (`patient_id`),
  UNIQUE KEY `patient_id` (`patient_id`),
  UNIQUE KEY `doctor_id` (`doctor_id`),
  UNIQUE KEY `payment_no` (`payment_no`),
  UNIQUE KEY `bill_no` (`bill_no`),
  UNIQUE KEY `prescription_code` (`prescription_code`),
  UNIQUE KEY `policy_num` (`policy_num`),
  UNIQUE KEY `room_num` (`room_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES (1,25,1001,111,201,25,101,'priya','female',23),(2,26,2001,112,202,26,201,'rohan','male',52),(3,27,3001,113,203,27,301,'aryan','male',19),(4,28,4001,114,204,28,401,'umang','male',28),(5,29,5001,115,205,29,501,'dhruvi','female',66);
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patientdoctor`
--

DROP TABLE IF EXISTS `patientdoctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patientdoctor` (
  `doctor_id` int unsigned NOT NULL,
  `patient_id` int unsigned NOT NULL,
  PRIMARY KEY (`doctor_id`,`patient_id`),
  UNIQUE KEY `doctor_id` (`doctor_id`),
  KEY `patient_id` (`patient_id`),
  CONSTRAINT `patientdoctor_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`patient_id`),
  CONSTRAINT `patientdoctor_ibfk_2` FOREIGN KEY (`doctor_id`) REFERENCES `doctor` (`doctor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patientdoctor`
--

LOCK TABLES `patientdoctor` WRITE;
/*!40000 ALTER TABLE `patientdoctor` DISABLE KEYS */;
INSERT INTO `patientdoctor` VALUES (25,1),(26,2),(27,3),(28,4),(29,5);
/*!40000 ALTER TABLE `patientdoctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `payment_no` int unsigned NOT NULL,
  `bill_no` int unsigned NOT NULL,
  `patient_id` int unsigned NOT NULL,
  `payment_amount` int unsigned NOT NULL,
  `payment_method` varchar(50) NOT NULL,
  `payment_bank` varchar(50) NOT NULL,
  PRIMARY KEY (`payment_no`),
  UNIQUE KEY `payment_no` (`payment_no`),
  UNIQUE KEY `bill_no` (`bill_no`),
  UNIQUE KEY `patient_id` (`patient_id`),
  CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`bill_no`) REFERENCES `bill` (`bill_no`),
  CONSTRAINT `payment_ibfk_2` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`patient_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (111,201,1,1000,'Credit Card','wells fargo'),(112,202,2,330,'Check','chase'),(113,203,3,680,'Cash','hdfc'),(114,204,4,3000,'Credit Card','american'),(115,205,5,450,'Cash','british');
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prescription`
--

DROP TABLE IF EXISTS `prescription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prescription` (
  `prescription_code` int unsigned NOT NULL,
  `doctor_id` int unsigned NOT NULL,
  `patient_id` int unsigned NOT NULL,
  `prescribed_drug` varchar(100) DEFAULT NULL,
  `prescribed_quantity` int unsigned DEFAULT NULL,
  PRIMARY KEY (`prescription_code`),
  UNIQUE KEY `prescription_code` (`prescription_code`),
  UNIQUE KEY `doctor_id` (`doctor_id`),
  UNIQUE KEY `patient_id` (`patient_id`),
  CONSTRAINT `prescription_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`patient_id`),
  CONSTRAINT `prescription_ibfk_2` FOREIGN KEY (`doctor_id`) REFERENCES `doctor` (`doctor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prescription`
--

LOCK TABLES `prescription` WRITE;
/*!40000 ALTER TABLE `prescription` DISABLE KEYS */;
INSERT INTO `prescription` VALUES (1001,25,1,'Metformin',5),(1002,26,2,'Metoprolol',4),(1003,27,3,'Albuterol',6),(1004,28,4,'Omeprazole',9),(1005,29,5,'Atorvastatin',10);
/*!40000 ALTER TABLE `prescription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room` (
  `room_num` int unsigned NOT NULL,
  `patient_id` int unsigned NOT NULL,
  `room_type` varchar(50) NOT NULL,
  PRIMARY KEY (`room_num`),
  UNIQUE KEY `room_num` (`room_num`),
  UNIQUE KEY `patient_id` (`patient_id`),
  CONSTRAINT `room_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`patient_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room`
--

LOCK TABLES `room` WRITE;
/*!40000 ALTER TABLE `room` DISABLE KEYS */;
INSERT INTO `room` VALUES (101,1,'ER '),(201,2,'ICU'),(301,3,'deluxe room'),(401,4,'shared room'),(501,5,'rehab room ');
/*!40000 ALTER TABLE `room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('1111','******','abc@gmaill.com'),('2222','******','def@gmaill.com'),('3333','******','ghi@gmaill.com'),('4444','******','jkl@gmaill.com'),('5555','******','mno@gmaill.com');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'health_care'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-13 22:55:44
