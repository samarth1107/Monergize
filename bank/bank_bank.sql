-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: bank
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `bank`
--

DROP TABLE IF EXISTS `bank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bank` (
  `bank_id` char(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `bank_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `branch_id` int NOT NULL,
  `branch_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `branch_contact_number` int DEFAULT NULL,
  `number_of_customer` int DEFAULT NULL,
  `total_assets` float DEFAULT NULL,
  `ROI_for_loans` float DEFAULT NULL,
  `ROI_for_savings` float DEFAULT NULL,
  `ROI_for_current` float DEFAULT NULL,
  `no_of_fds` int DEFAULT NULL,
  `min_acc_balance` int DEFAULT NULL,
  `annual_share_govt` float DEFAULT NULL,
  `loan_taken` int DEFAULT NULL,
  `money_lent` int NOT NULL,
  PRIMARY KEY (`bank_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank`
--

LOCK TABLES `bank` WRITE;
/*!40000 ALTER TABLE `bank` DISABLE KEYS */;
INSERT INTO `bank` VALUES ('BANK100001','SBI',100001,'Okhla',1234567890,0,7700000,15,4,10,0,10000,770000,0,0),('BANK100002','UBI',200001,'Vasant Kunj',1234567891,0,9800000,13.5,4.5,11,0,10000,980000,0,0),('BANK100003','BOB',300001,'Vasant Kunj',1234567892,0,11900000,14,6,11,0,0,1190000,0,0),('BANK100004','HDFC',400001,'Kalkaji',1234567893,0,14000000,12.5,7,11,0,0,1400000,0,0),('BANK100005','HSBC',500001,'Nehru Place',1234567894,0,161000000,12,4,10.5,0,0,16100000,0,0),('BANK100006','PNB',600001,'Nehru Place',1234567895,0,182000,12,5.5,10,0,5000,18200,0,0);
/*!40000 ALTER TABLE `bank` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-03  0:30:01
