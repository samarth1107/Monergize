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
-- Table structure for table `customer_bank_details`
--

DROP TABLE IF EXISTS `customer_bank_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_bank_details` (
  `customer_id` int NOT NULL,
  `bank_id` char(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `bank_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `account_no` char(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `account_balance` float NOT NULL,
  `account_type` set('CURRENT','SAVINGS','TRADING','') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `account_pin` int NOT NULL,
  `loan_status` set('PENDING','ACCEPTED','REJECTED') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`customer_id`),
  KEY `bank_id` (`bank_id`),
  CONSTRAINT `Customer_bank_details_ibfk_1` FOREIGN KEY (`bank_id`) REFERENCES `bank` (`bank_id`),
  CONSTRAINT `Customer_bank_details_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `customer_personal_detail` (`Customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_bank_details`
--

LOCK TABLES `customer_bank_details` WRITE;
/*!40000 ALTER TABLE `customer_bank_details` DISABLE KEYS */;
INSERT INTO `customer_bank_details` VALUES (1000000001,'BANK100001','BOB','ACC-100',270137,'TRADING',2726,'PENDING'),(1000000002,'BANK100006','PNB','ACC-101',267553,'TRADING',3066,'REJECTED'),(1000000003,'BANK100004','HDFC','ACC-102',206457,'SAVINGS',2372,'ACCEPTED'),(1000000004,'BANK100004','BOB','ACC-103',211572,'TRADING',2776,'PENDING'),(1000000005,'BANK100003','HSBC','ACC-104',250479,'SAVINGS',9765,'PENDING'),(1000000006,'BANK100006','HSBC','ACC-105',272729,'TRADING',1548,'REJECTED'),(1000000007,'BANK100004','UBI','ACC-106',272300,'SAVINGS',9867,'REJECTED'),(1000000008,'BANK100001','HDFC','ACC-107',283065,'CURRENT',2469,'PENDING'),(1000000009,'BANK100002','SBI','ACC-108',210017,'SAVINGS',9099,'ACCEPTED'),(1000000010,'BANK100006','HSBC','ACC-109',283625,'CURRENT',3963,'PENDING'),(1000000011,'BANK100003','SBI','ACC-110',256783,'TRADING',3775,'REJECTED'),(1000000012,'BANK100006','HSBC','ACC-111',217917,'SAVINGS',6007,'REJECTED'),(1000000013,'BANK100001','HDFC','ACC-112',255211,'CURRENT',8974,'ACCEPTED'),(1000000014,'BANK100001','HDFC','ACC-113',227572,'SAVINGS',8115,'PENDING'),(1000000015,'BANK100001','SBI','ACC-114',290826,'TRADING',1221,'REJECTED'),(1000000016,'BANK100006','SBI','ACC-115',225928,'SAVINGS',3793,'ACCEPTED'),(1000000017,'BANK100006','BOB','ACC-116',252548,'CURRENT',5195,'REJECTED'),(1000000018,'BANK100002','PNB','ACC-117',258036,'TRADING',8303,'ACCEPTED'),(1000000019,'BANK100003','PNB','ACC-118',214762,'CURRENT',7297,'REJECTED'),(1000000020,'BANK100003','UBI','ACC-119',211480,'TRADING',7300,'PENDING'),(1000000021,'BANK100002','PNB','ACC-120',230489,'SAVINGS',2743,'ACCEPTED'),(1000000022,'BANK100006','HDFC','ACC-121',247783,'CURRENT',7455,'PENDING'),(1000000023,'BANK100006','PNB','ACC-122',298500,'TRADING',9850,'REJECTED'),(1000000024,'BANK100003','BOB','ACC-123',226226,'CURRENT',8627,'REJECTED'),(1000000025,'BANK100004','UBI','ACC-124',271163,'TRADING',8144,'ACCEPTED'),(1000000026,'BANK100006','SBI','ACC-125',234314,'CURRENT',8088,'REJECTED'),(1000000027,'BANK100002','PNB','ACC-126',226240,'CURRENT',2028,'REJECTED'),(1000000028,'BANK100004','UBI','ACC-127',272535,'TRADING',4998,'ACCEPTED'),(1000000029,'BANK100004','UBI','ACC-128',249173,'CURRENT',2499,'PENDING'),(1000000030,'BANK100003','UBI','ACC-129',207534,'CURRENT',3813,'REJECTED'),(1000000031,'BANK100001','BOB','ACC-130',275333,'SAVINGS',9755,'ACCEPTED'),(1000000032,'BANK100004','HDFC','ACC-131',292200,'TRADING',3770,'ACCEPTED'),(1000000033,'BANK100002','UBI','ACC-132',202631,'SAVINGS',5426,'PENDING'),(1000000034,'BANK100004','BOB','ACC-133',271290,'SAVINGS',5516,'PENDING'),(1000000035,'BANK100002','HDFC','ACC-134',218886,'SAVINGS',2279,'REJECTED'),(1000000036,'BANK100004','SBI','ACC-135',284884,'TRADING',3929,'REJECTED'),(1000000037,'BANK100002','SBI','ACC-136',265467,'SAVINGS',9647,'PENDING'),(1000000038,'BANK100006','HSBC','ACC-137',262704,'CURRENT',7764,'PENDING'),(1000000039,'BANK100004','HDFC','ACC-138',213615,'SAVINGS',6052,'REJECTED'),(1000000040,'BANK100003','HDFC','ACC-139',251070,'TRADING',2877,'ACCEPTED'),(1000000041,'BANK100001','UBI','ACC-140',270082,'TRADING',9375,'REJECTED'),(1000000042,'BANK100004','BOB','ACC-141',226923,'TRADING',9467,'ACCEPTED'),(1000000043,'BANK100003','SBI','ACC-142',203131,'TRADING',8192,'ACCEPTED'),(1000000044,'BANK100002','SBI','ACC-143',209961,'SAVINGS',9879,'ACCEPTED'),(1000000045,'BANK100006','SBI','ACC-144',272726,'SAVINGS',6559,'REJECTED'),(1000000046,'BANK100003','UBI','ACC-145',281645,'TRADING',9946,'PENDING'),(1000000047,'BANK100006','SBI','ACC-146',214924,'SAVINGS',8777,'ACCEPTED'),(1000000048,'BANK100002','PNB','ACC-147',269153,'CURRENT',8457,'PENDING'),(1000000049,'BANK100001','UBI','ACC-148',226739,'TRADING',7263,'ACCEPTED'),(1000000050,'BANK100006','SBI','ACC-149',276062,'TRADING',9579,'ACCEPTED'),(1000000051,'BANK100006','SBI','ACC-150',214328,'TRADING',4919,'ACCEPTED'),(1000000052,'BANK100001','BOB','ACC-151',216913,'CURRENT',5538,'PENDING'),(1000000053,'BANK100003','HDFC','ACC-152',226684,'TRADING',5814,'PENDING'),(1000000054,'BANK100006','BOB','ACC-153',229654,'CURRENT',2450,'ACCEPTED'),(1000000055,'BANK100003','PNB','ACC-154',205235,'CURRENT',5259,'ACCEPTED'),(1000000056,'BANK100001','HDFC','ACC-155',252687,'CURRENT',1337,'ACCEPTED'),(1000000057,'BANK100001','BOB','ACC-156',241185,'SAVINGS',6630,'REJECTED'),(1000000058,'BANK100001','PNB','ACC-157',227866,'SAVINGS',5807,'REJECTED'),(1000000059,'BANK100002','HDFC','ACC-158',223283,'TRADING',7029,'ACCEPTED'),(1000000060,'BANK100003','UBI','ACC-159',234949,'CURRENT',6046,'ACCEPTED'),(1000000061,'BANK100006','UBI','ACC-160',223717,'SAVINGS',2092,'PENDING'),(1000000062,'BANK100001','UBI','ACC-161',224328,'TRADING',9375,'REJECTED'),(1000000063,'BANK100006','HDFC','ACC-162',292773,'TRADING',3710,'PENDING'),(1000000064,'BANK100001','HDFC','ACC-163',293778,'SAVINGS',1256,'PENDING'),(1000000065,'BANK100001','HDFC','ACC-164',274186,'CURRENT',9707,'ACCEPTED'),(1000000066,'BANK100006','BOB','ACC-165',299826,'SAVINGS',7656,'ACCEPTED'),(1000000067,'BANK100004','HSBC','ACC-166',238854,'CURRENT',3325,'ACCEPTED'),(1000000068,'BANK100006','UBI','ACC-167',268162,'CURRENT',1404,'ACCEPTED'),(1000000069,'BANK100006','SBI','ACC-168',250303,'CURRENT',8955,'ACCEPTED'),(1000000070,'BANK100001','SBI','ACC-169',244947,'SAVINGS',6837,'REJECTED'),(1000000071,'BANK100002','BOB','ACC-170',225098,'CURRENT',6000,'REJECTED'),(1000000072,'BANK100001','SBI','ACC-171',258993,'TRADING',8689,'REJECTED'),(1000000073,'BANK100001','SBI','ACC-172',222019,'TRADING',8446,'ACCEPTED'),(1000000074,'BANK100002','SBI','ACC-173',261517,'CURRENT',9370,'REJECTED'),(1000000075,'BANK100006','UBI','ACC-174',283249,'CURRENT',7764,'ACCEPTED'),(1000000076,'BANK100002','UBI','ACC-175',276495,'SAVINGS',4426,'PENDING'),(1000000077,'BANK100002','SBI','ACC-176',293433,'SAVINGS',9658,'ACCEPTED'),(1000000078,'BANK100002','HDFC','ACC-177',265180,'TRADING',3879,'ACCEPTED'),(1000000079,'BANK100001','SBI','ACC-178',236476,'TRADING',8741,'REJECTED'),(1000000080,'BANK100001','SBI','ACC-179',208153,'TRADING',7084,'ACCEPTED'),(1000000081,'BANK100006','PNB','ACC-180',269745,'TRADING',8713,'ACCEPTED'),(1000000082,'BANK100001','PNB','ACC-181',240850,'CURRENT',5244,'PENDING'),(1000000083,'BANK100004','SBI','ACC-182',268611,'SAVINGS',9951,'REJECTED'),(1000000084,'BANK100003','PNB','ACC-183',201656,'TRADING',9801,'ACCEPTED'),(1000000085,'BANK100001','UBI','ACC-184',208321,'CURRENT',4685,'REJECTED'),(1000000086,'BANK100001','HSBC','ACC-185',271985,'CURRENT',7125,'REJECTED'),(1000000087,'BANK100004','SBI','ACC-186',224714,'TRADING',9184,'PENDING'),(1000000088,'BANK100006','HSBC','ACC-187',263647,'CURRENT',6047,'ACCEPTED'),(1000000089,'BANK100006','HDFC','ACC-188',220649,'TRADING',3554,'ACCEPTED'),(1000000090,'BANK100001','BOB','ACC-189',206569,'TRADING',7616,'PENDING'),(1000000091,'BANK100006','UBI','ACC-190',269975,'TRADING',6090,'ACCEPTED'),(1000000092,'BANK100002','UBI','ACC-191',218005,'TRADING',7128,'PENDING'),(1000000093,'BANK100004','HDFC','ACC-192',257264,'SAVINGS',8827,'PENDING'),(1000000094,'BANK100002','HSBC','ACC-193',268314,'SAVINGS',5625,'PENDING'),(1000000095,'BANK100006','HDFC','ACC-194',282863,'SAVINGS',6639,'REJECTED'),(1000000096,'BANK100004','SBI','ACC-195',206739,'CURRENT',7902,'REJECTED'),(1000000097,'BANK100004','SBI','ACC-196',266915,'CURRENT',4641,'PENDING'),(1000000098,'BANK100001','SBI','ACC-197',237090,'CURRENT',4051,'ACCEPTED'),(1000000099,'BANK100003','HSBC','ACC-198',291064,'TRADING',6981,'PENDING'),(1000000100,'BANK100004','PNB','ACC-199',213651,'TRADING',4410,'PENDING');
/*!40000 ALTER TABLE `customer_bank_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-03  0:30:00
