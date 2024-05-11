-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: online_shopping
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `purchase`
--

DROP TABLE IF EXISTS `purchase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchase` (
  `id` int NOT NULL AUTO_INCREMENT,
  `uid` int DEFAULT NULL,
  `uname` varchar(200) DEFAULT NULL,
  `uphone` varchar(15) DEFAULT NULL,
  `pid` int DEFAULT NULL,
  `product_name` varchar(200) DEFAULT NULL,
  `qty` int DEFAULT NULL,
  `price` double DEFAULT NULL,
  `total` double DEFAULT NULL,
  `p_date` varchar(20) DEFAULT NULL,
  `uaddress` text,
  `receive_date` varchar(20) DEFAULT NULL,
  `supplier` varchar(200) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user_uid` (`uid`),
  KEY `fk_supplier_name` (`supplier`),
  CONSTRAINT `fk_supplier_name` FOREIGN KEY (`supplier`) REFERENCES `supplier` (`sname`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_user_uid` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase`
--

LOCK TABLES `purchase` WRITE;
/*!40000 ALTER TABLE `purchase` DISABLE KEYS */;
INSERT INTO `purchase` VALUES (1,1,'user','0848197699',8,'Giày Nike có gai chống trượt',4,305,1220,'2024-05-11','â - b','2024-04-11','supplier','Đã giao hàng'),(3,1,'user','0848197699',4,'Bút chì',5,3,15,'2024-05-11','â - b','2023-06-20','supplier','Đã giao hàng'),(4,1,'user','0848197699',8,'Giày Nike có gai chống trượt',6,305,1830,'2024-05-11','â - b','','Mino','Đang vận chuyển...'),(5,1,'user','0848197699',7,'Áo sơ mi tay ngắn ( có gắn kim cương )',1,10000,10000,'2024-05-11','â - b','','Mino','Chuẩn bị hàng...'),(6,1,'user','0848197699',5,'Laptop Dell 1060 - 2000',3,500,1500,'2024-05-11','â - b','','Mino','Chuẩn bị hàng...'),(7,2,'a','0892844122',8,'Giày Nike có gai chống trượt',2,305,610,'2024-05-11','b - c',NULL,'supplier','Đang vận chuyển...'),(8,2,'a','0892844122',5,'Laptop Dell 1060 - 2000',2,500,1000,'2024-05-11','b - c',NULL,'supplier','Đang vận chuyển...'),(9,2,'a','0892844122',4,'Bút chì',2,3,6,'2024-05-11','b - c',NULL,'Mino','Đang vận chuyển...');
/*!40000 ALTER TABLE `purchase` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-11 20:19:11
