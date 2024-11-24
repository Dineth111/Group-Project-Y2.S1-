-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: customercaresystem
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Table structure for table `agent`
--

DROP TABLE IF EXISTS `agent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `agent` (
  `aid` int NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agent`
--

LOCK TABLES `agent` WRITE;
/*!40000 ALTER TABLE `agent` DISABLE KEYS */;
INSERT INTO `agent` VALUES (1,'John','Doe','john.doe@company.com','1234567890','IT Support','hashed_password1'),(2,'Jane','Smith','jane.smith@company.com','0987654321','HR','hashed_password2'),(3,'Mike','Johnson','mike.johnson@company.com','5556667777','Technical Support','hashed_password3'),(4,'Emily','Davis','emily.davis@company.com','7778889999','Customer Service','hashed_password4'),(5,'Robert','Brown','robert.brown@company.com','1112223333','IT Support','hashed_password5'),(6,'John','Doe','john.doe@company.com','1234567890','IT Support','hashed_password1'),(7,'Jane','Smith','jane.smith@company.com','0987654321','HR','hashed_password2'),(8,'Mike','Johnson','mike.johnson@company.com','5556667777','Technical Support','hashed_password3'),(9,'Emily','Davis','emily.davis@company.com','7778889999','Customer Service','hashed_password4'),(10,'Robert','Brown','robert.brown@company.com','1112223333','IT Support','hashed_password5'),(11,'John','Doe','john.doe@company.com','1234567890','IT Support','hashed_password1'),(12,'Jane','Smith','jane.smith@company.com','0987654321','HR','hashed_password2'),(13,'Mike','Johnson','mike.johnson@company.com','5556667777','Technical Support','hashed_password3'),(14,'Emily','Davis','emily.davis@company.com','7778889999','Customer Service','hashed_password4'),(15,'Robert','Brown','robert.brown@company.com','1112223333','IT Support','hashed_password5'),(16,'Mark','Williams','mark.williams@example.com','1231231231','IT','password123'),(17,'Sarah','Parker','sarah.parker@example.com','4564564564','Customer Support','password456'),(18,'Jake','Smith','jake.smith@example.com','7897897897','Sales','password789'),(19,'Laura','Johnson','laura.johnson@example.com','3213213213','HR','passwordabc'),(20,'Emma','Brown','emma.brown@example.com','6546546546','Technical Support','passwordxyz');
/*!40000 ALTER TABLE `agent` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-15 16:04:24
