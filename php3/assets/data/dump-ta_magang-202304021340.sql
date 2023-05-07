-- MySQL dump 10.13  Distrib 5.7.33, for Win64 (x86_64)
--
-- Host: localhost    Database: ta_magang
-- ------------------------------------------------------
-- Server version	5.7.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `carousels`
--

DROP TABLE IF EXISTS `carousels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carousels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `banner` varchar(100) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carousels`
--

LOCK TABLES `carousels` WRITE;
/*!40000 ALTER TABLE `carousels` DISABLE KEYS */;
INSERT INTO `carousels` VALUES (1,'Banner Januari','https://arkatama.id/1','1.jpg',1,'2023-01-01 13:02:23','2023-01-01 13:02:23'),(2,'Banner Februari','https://arkatama.id/1','2.jpg',0,'2023-01-01 13:02:23','2023-01-02 13:02:23'),(3,'Banner Maret','https://arkatama.id/1','3.jpg',1,'2023-01-01 13:02:23','2023-01-01 13:02:23'),(4,'Banner April','https://arkatama.id/1','4.jpg',0,'2023-01-01 13:02:23','2023-01-03 13:02:23'),(5,'Banner Mei',NULL,'5.jpg',1,'2023-01-01 13:02:23','2023-01-01 13:02:23'),(6,'Banner Juni','https://arkatama.id/1','6.jpg',1,'2023-01-01 13:02:23','2023-01-03 13:02:23'),(7,'Banner Juli',NULL,'7.jpg',0,'2023-01-01 13:02:23','2023-01-02 13:02:23'),(8,'Banner Agustus','https://arkatama.id/1','8.jpg',1,'2023-01-01 13:02:23','2023-01-07 13:02:23'),(9,'Banner September','https://arkatama.id/1','9.jpg',0,'2023-01-01 13:02:23','2023-01-08 13:02:23'),(10,'Banner Oktober',NULL,'10.jpg',1,'2023-01-01 13:02:23','2023-01-05 13:02:23');
/*!40000 ALTER TABLE `carousels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Katgeori 1','2023-04-01 15:00:00','2023-04-01 15:00:00'),(2,'Katgeori 2','2023-04-01 15:00:00','2023-04-01 15:00:00'),(3,'Katgeori 3','2023-04-01 15:00:00','2023-04-01 15:00:00'),(4,'Katgeori 4','2023-04-01 15:00:00','2023-04-01 15:00:00'),(5,'Katgeori 5','2023-04-01 15:00:00','2023-04-01 15:00:00'),(6,'Katgeori 6','2023-04-01 15:00:00','2023-04-01 15:00:00'),(7,'Katgeori 7','2023-04-01 15:00:00','2023-04-01 15:00:00'),(8,'Katgeori 8','2023-04-01 15:00:00','2023-04-01 15:00:00'),(9,'Katgeori 9','2023-04-01 15:00:00','2023-04-01 15:00:00'),(10,'Katgeori 10','2023-04-01 15:00:00','2023-04-01 15:00:00');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` enum('accepted','rejected','waiting') NOT NULL DEFAULT 'waiting',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `verified_at` datetime DEFAULT NULL,
  `verified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,9,'Produk 1','Lorem, ipsum dolor sit amet consectetur adipisicing elit. Deleniti ab non amet quod quos earum voluptatem eius voluptas quasi odit, praesentium nemo repellat est delectus et nulla officia corporis ex!',40000.00,'waiting','2023-04-02 06:30:17','2023-04-02 06:30:17',1,NULL,NULL),(2,5,'Produk 2','Lorem, ipsum dolor sit amet consectetur adipisicing elit. Deleniti ab non amet quod quos earum voluptatem eius voluptas quasi odit, praesentium nemo repellat est delectus et nulla officia corporis ex!',35000.00,'rejected','2023-04-02 06:30:17','2023-04-02 06:30:17',1,NULL,NULL),(3,6,'Produk 3','Lorem, ipsum dolor sit amet consectetur adipisicing elit. Deleniti ab non amet quod quos earum voluptatem eius voluptas quasi odit, praesentium nemo repellat est delectus et nulla officia corporis ex!',15000.00,'waiting','2023-04-02 06:30:17','2023-04-02 06:30:17',1,NULL,NULL),(4,10,'Produk 4','Lorem, ipsum dolor sit amet consectetur adipisicing elit. Deleniti ab non amet quod quos earum voluptatem eius voluptas quasi odit, praesentium nemo repellat est delectus et nulla officia corporis ex!',30000.00,'rejected','2023-04-02 06:30:17','2023-04-02 06:30:17',1,NULL,NULL),(5,4,'Produk 5','Lorem, ipsum dolor sit amet consectetur adipisicing elit. Deleniti ab non amet quod quos earum voluptatem eius voluptas quasi odit, praesentium nemo repellat est delectus et nulla officia corporis ex!',40000.00,'accepted','2023-04-02 06:30:17','2023-04-02 06:30:17',1,NULL,NULL),(6,2,'Produk 6','Lorem, ipsum dolor sit amet consectetur adipisicing elit. Deleniti ab non amet quod quos earum voluptatem eius voluptas quasi odit, praesentium nemo repellat est delectus et nulla officia corporis ex!',45000.00,'accepted','2023-04-02 06:30:17','2023-04-02 06:30:17',1,NULL,NULL),(7,10,'Produk 7','Lorem, ipsum dolor sit amet consectetur adipisicing elit. Deleniti ab non amet quod quos earum voluptatem eius voluptas quasi odit, praesentium nemo repellat est delectus et nulla officia corporis ex!',10000.00,'rejected','2023-04-02 06:30:17','2023-04-02 06:30:17',1,NULL,NULL),(8,1,'Produk 8','Lorem, ipsum dolor sit amet consectetur adipisicing elit. Deleniti ab non amet quod quos earum voluptatem eius voluptas quasi odit, praesentium nemo repellat est delectus et nulla officia corporis ex!',15000.00,'waiting','2023-04-02 06:30:17','2023-04-02 06:30:17',1,NULL,NULL),(9,1,'Produk 9','Lorem, ipsum dolor sit amet consectetur adipisicing elit. Deleniti ab non amet quod quos earum voluptatem eius voluptas quasi odit, praesentium nemo repellat est delectus et nulla officia corporis ex!',45000.00,'accepted','2023-04-02 06:30:17','2023-04-02 06:30:17',1,NULL,NULL),(10,4,'Produk 10','Lorem, ipsum dolor sit amet consectetur adipisicing elit. Deleniti ab non amet quod quos earum voluptatem eius voluptas quasi odit, praesentium nemo repellat est delectus et nulla officia corporis ex!',50000.00,'rejected','2023-04-02 06:30:17','2023-04-02 06:30:17',1,NULL,NULL),(11,2,'Produk 11','Lorem, ipsum dolor sit amet consectetur adipisicing elit. Deleniti ab non amet quod quos earum voluptatem eius voluptas quasi odit, praesentium nemo repellat est delectus et nulla officia corporis ex!',45000.00,'accepted','2023-04-02 06:30:17','2023-04-02 06:30:17',1,NULL,NULL),(12,4,'Produk 12','Lorem, ipsum dolor sit amet consectetur adipisicing elit. Deleniti ab non amet quod quos earum voluptatem eius voluptas quasi odit, praesentium nemo repellat est delectus et nulla officia corporis ex!',40000.00,'rejected','2023-04-02 06:30:17','2023-04-02 06:30:17',1,NULL,NULL),(13,10,'Produk 13','Lorem, ipsum dolor sit amet consectetur adipisicing elit. Deleniti ab non amet quod quos earum voluptatem eius voluptas quasi odit, praesentium nemo repellat est delectus et nulla officia corporis ex!',20000.00,'accepted','2023-04-02 06:30:17','2023-04-02 06:30:17',1,NULL,NULL),(14,4,'Produk 14','Lorem, ipsum dolor sit amet consectetur adipisicing elit. Deleniti ab non amet quod quos earum voluptatem eius voluptas quasi odit, praesentium nemo repellat est delectus et nulla officia corporis ex!',45000.00,'rejected','2023-04-02 06:30:17','2023-04-02 06:30:17',1,NULL,NULL),(15,5,'Produk 15','Lorem, ipsum dolor sit amet consectetur adipisicing elit. Deleniti ab non amet quod quos earum voluptatem eius voluptas quasi odit, praesentium nemo repellat est delectus et nulla officia corporis ex!',45000.00,'waiting','2023-04-02 06:30:17','2023-04-02 06:30:17',1,NULL,NULL),(16,7,'Produk 16','Lorem, ipsum dolor sit amet consectetur adipisicing elit. Deleniti ab non amet quod quos earum voluptatem eius voluptas quasi odit, praesentium nemo repellat est delectus et nulla officia corporis ex!',50000.00,'rejected','2023-04-02 06:30:17','2023-04-02 06:30:17',1,NULL,NULL),(17,6,'Produk 17','Lorem, ipsum dolor sit amet consectetur adipisicing elit. Deleniti ab non amet quod quos earum voluptatem eius voluptas quasi odit, praesentium nemo repellat est delectus et nulla officia corporis ex!',40000.00,'rejected','2023-04-02 06:30:17','2023-04-02 06:30:17',1,NULL,NULL),(18,3,'Produk 18','Lorem, ipsum dolor sit amet consectetur adipisicing elit. Deleniti ab non amet quod quos earum voluptatem eius voluptas quasi odit, praesentium nemo repellat est delectus et nulla officia corporis ex!',20000.00,'accepted','2023-04-02 06:30:17','2023-04-02 06:30:17',1,NULL,NULL),(19,10,'Produk 19','Lorem, ipsum dolor sit amet consectetur adipisicing elit. Deleniti ab non amet quod quos earum voluptatem eius voluptas quasi odit, praesentium nemo repellat est delectus et nulla officia corporis ex!',10000.00,'rejected','2023-04-02 06:30:17','2023-04-02 06:30:17',1,NULL,NULL),(20,9,'Produk 20','Lorem, ipsum dolor sit amet consectetur adipisicing elit. Deleniti ab non amet quod quos earum voluptatem eius voluptas quasi odit, praesentium nemo repellat est delectus et nulla officia corporis ex!',25000.00,'waiting','2023-04-02 06:30:17','2023-04-02 06:30:17',1,NULL,NULL),(21,5,'Produk 21','Lorem, ipsum dolor sit amet consectetur adipisicing elit. Deleniti ab non amet quod quos earum voluptatem eius voluptas quasi odit, praesentium nemo repellat est delectus et nulla officia corporis ex!',50000.00,'waiting','2023-04-02 06:30:17','2023-04-02 06:30:17',1,NULL,NULL),(22,8,'Produk 22','Lorem, ipsum dolor sit amet consectetur adipisicing elit. Deleniti ab non amet quod quos earum voluptatem eius voluptas quasi odit, praesentium nemo repellat est delectus et nulla officia corporis ex!',40000.00,'accepted','2023-04-02 06:30:17','2023-04-02 06:30:17',1,NULL,NULL),(23,7,'Produk 23','Lorem, ipsum dolor sit amet consectetur adipisicing elit. Deleniti ab non amet quod quos earum voluptatem eius voluptas quasi odit, praesentium nemo repellat est delectus et nulla officia corporis ex!',50000.00,'waiting','2023-04-02 06:30:17','2023-04-02 06:30:17',1,NULL,NULL),(24,7,'Produk 24','Lorem, ipsum dolor sit amet consectetur adipisicing elit. Deleniti ab non amet quod quos earum voluptatem eius voluptas quasi odit, praesentium nemo repellat est delectus et nulla officia corporis ex!',25000.00,'rejected','2023-04-02 06:30:17','2023-04-02 06:30:17',1,NULL,NULL),(25,8,'Produk 25','Lorem, ipsum dolor sit amet consectetur adipisicing elit. Deleniti ab non amet quod quos earum voluptatem eius voluptas quasi odit, praesentium nemo repellat est delectus et nulla officia corporis ex!',50000.00,'waiting','2023-04-02 06:30:17','2023-04-02 06:30:17',1,NULL,NULL),(26,2,'Produk 26','Lorem, ipsum dolor sit amet consectetur adipisicing elit. Deleniti ab non amet quod quos earum voluptatem eius voluptas quasi odit, praesentium nemo repellat est delectus et nulla officia corporis ex!',10000.00,'waiting','2023-04-02 06:30:17','2023-04-02 06:30:17',1,NULL,NULL),(27,4,'Produk 27','Lorem, ipsum dolor sit amet consectetur adipisicing elit. Deleniti ab non amet quod quos earum voluptatem eius voluptas quasi odit, praesentium nemo repellat est delectus et nulla officia corporis ex!',25000.00,'waiting','2023-04-02 06:30:17','2023-04-02 06:30:17',1,NULL,NULL),(28,4,'Produk 28','Lorem, ipsum dolor sit amet consectetur adipisicing elit. Deleniti ab non amet quod quos earum voluptatem eius voluptas quasi odit, praesentium nemo repellat est delectus et nulla officia corporis ex!',25000.00,'accepted','2023-04-02 06:30:17','2023-04-02 06:30:17',1,NULL,NULL),(29,3,'Produk 29','Lorem, ipsum dolor sit amet consectetur adipisicing elit. Deleniti ab non amet quod quos earum voluptatem eius voluptas quasi odit, praesentium nemo repellat est delectus et nulla officia corporis ex!',45000.00,'accepted','2023-04-02 06:30:17','2023-04-02 06:30:17',1,NULL,NULL),(30,9,'Produk 30','Lorem, ipsum dolor sit amet consectetur adipisicing elit. Deleniti ab non amet quod quos earum voluptatem eius voluptas quasi odit, praesentium nemo repellat est delectus et nulla officia corporis ex!',30000.00,'waiting','2023-04-02 06:30:17','2023-04-02 06:30:17',1,NULL,NULL);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `role` enum('admin','staff') NOT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  `phone` varchar(15) NOT NULL,
  `address` varchar(255) NOT NULL,
  `password` varchar(100) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'ta_magang'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-02 13:40:21
