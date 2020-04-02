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
-- Table structure for table `company_market_detail`
--

DROP TABLE IF EXISTS `company_market_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company_market_detail` (
  `comp_id` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `company_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `pe_ratio` float NOT NULL,
  `quick_ratio` float NOT NULL,
  `acc_payable` int NOT NULL,
  `acc_receivable` int NOT NULL,
  `eps` float NOT NULL,
  `market_value` float NOT NULL,
  `book_value` float NOT NULL,
  `total_assets` float NOT NULL,
  `total_liabilities` float NOT NULL,
  `inventories` float NOT NULL,
  `external_fundings` float NOT NULL,
  `retained_earnings` float NOT NULL,
  PRIMARY KEY (`comp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_market_detail`
--

LOCK TABLES `company_market_detail` WRITE;
/*!40000 ALTER TABLE `company_market_detail` DISABLE KEYS */;
INSERT INTO `company_market_detail` VALUES ('COMP100001','Fintech',1.7,10.87,123,111,1.5,32.2373,14.0998,58570300,20828.7,12604.2,67142.5,39609),('COMP100002','Bajaj',1.69,11.87,235,111,1.6,60.4681,61.1525,73849600,49909.4,69507.8,83620.7,15981.1),('COMP100003','Cisco',1.68,12.23,412,4563,1.7,28.186,56.2142,79300100,52730.2,68738.7,33954.1,20154.7),('COMP100004','Unilever',1.67,13.01,22,321,1.8,45.2773,76.4045,36083900,48896.2,95254.7,93713,52257.7),('COMP100005','Kappa',1.66,13.69,43,2321,1.9,60.3482,47.5158,99392000,17067.5,44591.8,44418.6,93097.5),('COMP100006','Rayban',1.65,14.37,232,43,2,82.8034,12.6753,8775520,75085.1,12129.4,96074.6,75687.1),('COMP100007','Parle',1.64,15.06,12,121,2.1,1.51407,33.597,9630670,89668.5,46174.8,13174.5,94348.9),('COMP100008','Uniqlo',1.63,15.04,121,41,2.2,32.7956,27.6504,8345460,11229.4,52036.6,67271.8,87839.6),('COMP100009','Lays',1.62,15.72,644,98,2.3,40.2094,9.50317,27699000,19681.3,49333.1,88046.8,44558.7),('COMP100010','Coke',1.61,16.4,123,121,2.4,52.9999,38.4235,46440000,4289.42,44923.4,28818,33326.7),('COMP100011','KFC',1.6,17.08,3453,33,2.5,40.1953,12.8803,66138600,37190.1,15681.4,24763.2,26601),('COMP100012','FoodZone',1.59,17.76,22,134,2.6,70.7788,38.7402,74664300,69030.9,62748.4,4982.99,30267.3),('COMP100013','Walmart',1.58,18.43,432,241,2.7,54.5382,56.7161,97856900,79489,63708.9,98494.2,84160.3),('COMP100014','EasyDay',1.57,15.06,121,241,2.8,48.5883,77.2138,25958200,30568.8,11718.3,49889.2,62821.3),('COMP100015','RunDown',1.56,19.11,4532,111,2.9,32.6042,62.7725,631831,57530.5,91328.7,74383.3,60860.2),('COMP100016','EASports',1.55,19.79,23,1234,3,1.56443,95.0188,26056500,72829.5,7603.98,63168.6,43682.9),('COMP100017','Asus',1.54,20.47,2,412,3.1,5.74781,27.3646,88399400,56043.6,62425.4,41319.8,68195.6),('COMP100018','HP',1.53,21.15,24,11,3.2,40.4329,82.1005,58111700,52862.8,99148.6,6119.42,20136.3),('COMP100019','Dell',1.52,21.83,455,1,3.3,48.6995,81.3554,62308200,23606.8,6098.05,40704.5,41160),('COMP100020','Lenskart',1.51,22.5,1231,66,3.4,26.3411,91.1372,98099000,82371.1,34583.8,86201.4,61119.1);
/*!40000 ALTER TABLE `company_market_detail` ENABLE KEYS */;
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
