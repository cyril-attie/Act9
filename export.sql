-- MySQL dump 10.13  Distrib 8.0.32, for Linux (x86_64)
--
-- Host: localhost    Database: blog
-- ------------------------------------------------------
-- Server version	8.0.32-1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Autores`
--

DROP TABLE IF EXISTS `Autores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Autores` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Autores`
--

LOCK TABLES `Autores` WRITE;
/*!40000 ALTER TABLE `Autores` DISABLE KEYS */;
INSERT INTO `Autores` VALUES (1,'Plato','test@gmail.com','plato.png');
/*!40000 ALTER TABLE `Autores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Posts`
--

DROP TABLE IF EXISTS `Posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Posts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `categoria` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `autor_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_autor` (`autor_id`),
  CONSTRAINT `fk_autor` FOREIGN KEY (`autor_id`) REFERENCES `Autores` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Posts`
--

LOCK TABLES `Posts` WRITE;
/*!40000 ALTER TABLE `Posts` DISABLE KEYS */;
INSERT INTO `Posts` VALUES (1,'Plato','La belleza del ser está más en el no ser que en el ser. ¿Ser o no ser?','2023-05-22 19:59:27','sabiduría',NULL),(2,'Plato','La belleza del ser está más en el no ser que en el ser. ¿Ser o no ser?','2023-05-22 19:59:27','sabiduría',NULL),(3,'Plato','La belleza del ser está más en el no ser que en el ser. ¿Ser o no ser?','2023-05-22 19:59:27','sabiduría',NULL),(4,'Plato','La belleza del ser está más en el no ser que en el ser. ¿Ser o no ser?','2023-05-22 19:59:27','sabiduría',NULL),(5,'Plato','La belleza del ser está más en el no ser que en el ser. ¿Ser o no ser?','2023-05-22 19:59:27','sabiduría',1),(6,'Plato','La belleza del ser está más en el no ser que en el ser. ¿Ser o no ser?','2023-05-22 19:59:27','sabiduría',1),(7,'Plato','La belleza del ser está más en el no ser que en el ser. ¿Ser o no ser?','2023-05-22 19:59:27','sabiduría',1),(8,'Plato','La belleza del ser está más en el no ser que en el ser. ¿Ser o no ser?','2023-05-22 19:59:27','sabiduría',1),(9,'Plato','La belleza del ser está más en el no ser que en el ser. ¿Ser o no ser?','2023-05-22 19:59:27','sabiduría',1),(10,'Plato','La belleza del ser está más en el no ser que en el ser. ¿Ser o no ser?','2023-05-22 19:59:27','sabiduría',1);
/*!40000 ALTER TABLE `Posts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-22 22:22:41
