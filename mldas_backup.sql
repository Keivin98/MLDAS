-- MySQL dump 10.13  Distrib 8.1.0, for macos13.3 (x86_64)
--
-- Host: localhost    Database: mldas
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `amenities`
--

DROP TABLE IF EXISTS `amenities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `amenities` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `amenities`
--

LOCK TABLES `amenities` WRITE;
/*!40000 ALTER TABLE `amenities` DISABLE KEYS */;
INSERT INTO `amenities` VALUES (1,'Regular Seating','2024-08-11 07:32:52','2024-08-11 07:32:52',NULL),(2,'Coffee Break','2024-08-11 07:32:52','2024-08-11 07:32:52',NULL),(3,'Custom Badge','2024-08-11 07:32:52','2024-08-11 07:32:52',NULL),(4,'Community Access','2024-08-11 07:32:52','2024-08-11 07:32:52',NULL),(5,'Workshop Access','2024-08-11 07:32:52','2024-08-11 07:32:52',NULL),(6,'After Party','2024-08-11 07:32:52','2024-08-11 07:32:52',NULL);
/*!40000 ALTER TABLE `amenities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `amenity_price`
--

DROP TABLE IF EXISTS `amenity_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `amenity_price` (
  `price_id` int unsigned NOT NULL,
  `amenity_id` int unsigned NOT NULL,
  KEY `price_id_fk_384063` (`price_id`),
  KEY `amenity_id_fk_384063` (`amenity_id`),
  CONSTRAINT `amenity_id_fk_384063` FOREIGN KEY (`amenity_id`) REFERENCES `amenities` (`id`) ON DELETE CASCADE,
  CONSTRAINT `price_id_fk_384063` FOREIGN KEY (`price_id`) REFERENCES `prices` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `amenity_price`
--

LOCK TABLES `amenity_price` WRITE;
/*!40000 ALTER TABLE `amenity_price` DISABLE KEYS */;
INSERT INTO `amenity_price` VALUES (1,1),(1,2),(1,3),(2,1),(2,2),(2,3),(2,4),(3,1),(3,2),(3,3),(3,4),(3,5),(3,6);
/*!40000 ALTER TABLE `amenity_price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs`
--

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
INSERT INTO `faqs` VALUES (1,'Quia molestiae rerum dolor.','Qui itaque quis facilis qui. Suscipit cumque perspiciatis asperiores omnis. Facere harum aspernatur eos nisi distinctio error minima quis.','2024-08-11 07:32:52','2024-08-11 07:32:52',NULL),(2,'Inventore neque fugit optio doloremque repellendus ea voluptas.','Libero possimus qui maxime labore a non cupiditate. Laudantium adipisci sed et aut officia officiis. Quisquam consequatur eum sed quos et aliquam. Praesentium ea dicta quo aperiam officia delectus vel sed.','2024-08-11 07:32:52','2024-08-11 07:32:52',NULL),(3,'In dolorum aut totam earum nam culpa.','Est dolorem nulla perferendis velit perspiciatis ut. Quia et maiores autem qui iste rem.','2024-08-11 07:32:52','2024-08-11 07:32:52',NULL),(4,'Sit dolore perferendis numquam officia et sapiente nobis.','Repellat ut dolorem quasi. Rerum consequatur quam pariatur vero aliquam eligendi rerum. Vitae sit velit explicabo repellat quia. Nesciunt iste eaque ad ducimus laudantium beatae.','2024-08-11 07:32:52','2024-08-11 07:32:52',NULL),(5,'Dicta nihil consequatur qui voluptas inventore eos.','Modi est in nobis soluta illo soluta. Odit pariatur dolor voluptatibus fugit excepturi mollitia. Deleniti mollitia repellendus nihil illum quos velit.','2024-08-11 07:32:52','2024-08-11 07:32:52',NULL),(6,'Doloremque ut nisi velit.','Harum esse dignissimos autem aut. Esse perferendis et id itaque nam cupiditate. Qui rem iusto ut aliquam eligendi impedit. Sint optio consectetur autem nesciunt mollitia. Perferendis quia et distinctio.','2024-08-11 07:32:52','2024-08-11 07:32:52',NULL);
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galleries`
--

DROP TABLE IF EXISTS `galleries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `galleries` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries`
--

LOCK TABLES `galleries` WRITE;
/*!40000 ALTER TABLE `galleries` DISABLE KEYS */;
INSERT INTO `galleries` VALUES (1,'Event','2024-08-11 07:32:51','2024-08-11 07:32:51',NULL);
/*!40000 ALTER TABLE `galleries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotels`
--

DROP TABLE IF EXISTS `hotels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hotels` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `rating` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotels`
--

LOCK TABLES `hotels` WRITE;
/*!40000 ALTER TABLE `hotels` DISABLE KEYS */;
INSERT INTO `hotels` VALUES (1,'Hotel 1',NULL,'0.4 Mile from the Venue',5,'2024-08-11 07:32:51','2024-08-11 07:32:51',NULL),(2,'Hotel 2',NULL,'0.5 Mile from the Venue',4,'2024-08-11 07:32:51','2024-08-11 07:32:51',NULL),(3,'Hotel 3',NULL,'0.6 Mile from the Venue',3,'2024-08-11 07:32:51','2024-08-11 07:32:51',NULL);
/*!40000 ALTER TABLE `hotels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `conversions_disk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` bigint unsigned NOT NULL,
  `manipulations` json NOT NULL,
  `custom_properties` json NOT NULL,
  `responsive_images` json NOT NULL,
  `order_column` int unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_model_type_model_id_index` (`model_type`,`model_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
INSERT INTO `media` VALUES (1,'App\\Speaker',1,'668fbaf6-97e7-4e03-9fab-c3d6e2fb94cd','photo','1','1.jpg','image/jpeg','public','public',44376,'[]','{\"generated_conversions\": {\"thumb\": true}}','[]',1,'2024-08-11 07:32:51','2024-08-11 07:32:51'),(2,'App\\Speaker',2,'238710c5-e665-43af-b7bc-f6101b16543d','photo','2','2.jpg','image/jpeg','public','public',49380,'[]','{\"generated_conversions\": {\"thumb\": true}}','[]',2,'2024-08-11 07:32:51','2024-08-11 07:32:51'),(3,'App\\Speaker',3,'91a743de-84fb-4be1-be15-d6d84924b568','photo','3','3.jpg','image/jpeg','public','public',14278,'[]','{\"generated_conversions\": {\"thumb\": true}}','[]',3,'2024-08-11 07:32:51','2024-08-11 07:32:51'),(4,'App\\Speaker',4,'eed66eff-1b28-45cf-b604-766667577f9a','photo','4','4.jpg','image/jpeg','public','public',53251,'[]','{\"generated_conversions\": {\"thumb\": true}}','[]',4,'2024-08-11 07:32:51','2024-08-11 07:32:51'),(5,'App\\Speaker',5,'74c9bbb6-1fad-41da-95fd-ba28ed61c3c4','photo','5','5.jpg','image/jpeg','public','public',30301,'[]','{\"generated_conversions\": {\"thumb\": true}}','[]',5,'2024-08-11 07:32:51','2024-08-11 07:32:51'),(6,'App\\Speaker',6,'cd6e420d-59cc-4163-835b-f20f6c8c9506','photo','6','6.jpg','image/jpeg','public','public',16133,'[]','{\"generated_conversions\": {\"thumb\": true}}','[]',6,'2024-08-11 07:32:51','2024-08-11 07:32:51'),(7,'App\\Venue',1,'e5e84eb3-7905-483f-bd89-a29febef52b3','photos','1','1.jpg','image/jpeg','public','public',124351,'[]','{\"generated_conversions\": {\"thumb\": true}}','[]',7,'2024-08-11 07:32:51','2024-08-11 07:32:51'),(8,'App\\Venue',1,'a8b1e633-cd49-422b-999a-eaafcb36b20c','photos','2','2.jpg','image/jpeg','public','public',47098,'[]','{\"generated_conversions\": {\"thumb\": true}}','[]',8,'2024-08-11 07:32:51','2024-08-11 07:32:51'),(9,'App\\Venue',1,'8bab18f4-3145-4756-8375-a9ec523907dc','photos','3','3.jpg','image/jpeg','public','public',157926,'[]','{\"generated_conversions\": {\"thumb\": true}}','[]',9,'2024-08-11 07:32:51','2024-08-11 07:32:51'),(10,'App\\Venue',1,'05933c5b-102a-424c-8d11-4513435471f3','photos','4','4.jpg','image/jpeg','public','public',101273,'[]','{\"generated_conversions\": {\"thumb\": true}}','[]',10,'2024-08-11 07:32:51','2024-08-11 07:32:51'),(11,'App\\Venue',1,'e451be5c-9a89-456a-8359-deb3813987ff','photos','5','5.jpg','image/jpeg','public','public',152944,'[]','{\"generated_conversions\": {\"thumb\": true}}','[]',11,'2024-08-11 07:32:51','2024-08-11 07:32:51'),(12,'App\\Venue',1,'67445a32-5e53-46d2-81c0-a7f6027c00e4','photos','6','6.jpg','image/jpeg','public','public',134709,'[]','{\"generated_conversions\": {\"thumb\": true}}','[]',12,'2024-08-11 07:32:51','2024-08-11 07:32:51'),(13,'App\\Venue',1,'529c8376-c82a-4612-90fe-fef5875999e6','photos','7','7.jpg','image/jpeg','public','public',109640,'[]','{\"generated_conversions\": {\"thumb\": true}}','[]',13,'2024-08-11 07:32:51','2024-08-11 07:32:51'),(14,'App\\Venue',1,'87d33148-533f-4830-bfb0-3065051c15e7','photos','8','8.jpg','image/jpeg','public','public',57275,'[]','{\"generated_conversions\": {\"thumb\": true}}','[]',14,'2024-08-11 07:32:51','2024-08-11 07:32:51'),(15,'App\\Hotel',1,'018fb778-3388-4a39-a541-a4c0758d9688','photo','1','1.jpg','image/jpeg','public','public',176612,'[]','{\"generated_conversions\": {\"thumb\": true}}','[]',15,'2024-08-11 07:32:51','2024-08-11 07:32:51'),(16,'App\\Hotel',2,'3b1ddc43-cda9-4a3b-ad1c-9c4d887bd897','photo','2','2.jpg','image/jpeg','public','public',207771,'[]','{\"generated_conversions\": {\"thumb\": true}}','[]',16,'2024-08-11 07:32:51','2024-08-11 07:32:51'),(17,'App\\Hotel',3,'72b1c7ca-2da7-4957-b1fc-1c6e2a5b1ed6','photo','3','3.jpg','image/jpeg','public','public',164509,'[]','{\"generated_conversions\": {\"thumb\": true}}','[]',17,'2024-08-11 07:32:51','2024-08-11 07:32:51'),(18,'App\\Gallery',1,'557be195-030a-49ac-8f5a-4bddee93d253','photos','1','1.jpg','image/jpeg','public','public',85253,'[]','{\"generated_conversions\": {\"thumb\": true}}','[]',18,'2024-08-11 07:32:51','2024-08-11 07:32:51'),(19,'App\\Gallery',1,'6614d882-a723-44e1-9cde-e2df1cecfe67','photos','2','2.jpg','image/jpeg','public','public',107817,'[]','{\"generated_conversions\": {\"thumb\": true}}','[]',19,'2024-08-11 07:32:51','2024-08-11 07:32:51'),(20,'App\\Gallery',1,'c747a792-8356-41b1-9b41-bf6ae973c4e1','photos','3','3.jpg','image/jpeg','public','public',182158,'[]','{\"generated_conversions\": {\"thumb\": true}}','[]',20,'2024-08-11 07:32:51','2024-08-11 07:32:51'),(21,'App\\Gallery',1,'73a5f2d4-e999-495c-bf29-6f89252ddb2f','photos','4','4.jpg','image/jpeg','public','public',112256,'[]','{\"generated_conversions\": {\"thumb\": true}}','[]',21,'2024-08-11 07:32:51','2024-08-11 07:32:51'),(22,'App\\Gallery',1,'c5e0b7bf-4554-4fc4-b22b-35a2df8dbcfa','photos','5','5.jpg','image/jpeg','public','public',127200,'[]','{\"generated_conversions\": {\"thumb\": true}}','[]',22,'2024-08-11 07:32:51','2024-08-11 07:32:51'),(23,'App\\Gallery',1,'69894ff5-025f-4334-882c-4f743f140d2d','photos','6','6.jpg','image/jpeg','public','public',57440,'[]','{\"generated_conversions\": {\"thumb\": true}}','[]',23,'2024-08-11 07:32:51','2024-08-11 07:32:51'),(24,'App\\Gallery',1,'bc676f4d-40bd-489c-ae5b-2b9ade525c38','photos','7','7.jpg','image/jpeg','public','public',64459,'[]','{\"generated_conversions\": {\"thumb\": true}}','[]',24,'2024-08-11 07:32:51','2024-08-11 07:32:52'),(25,'App\\Gallery',1,'7539c0cb-2c57-4a3e-95ec-d8cc0103ce17','photos','8','8.jpg','image/jpeg','public','public',88287,'[]','{\"generated_conversions\": {\"thumb\": true}}','[]',25,'2024-08-11 07:32:52','2024-08-11 07:32:52'),(26,'App\\Sponsor',1,'a572ca75-5388-4aab-82e5-bda759ed0fb5','logo','1','1.png','image/png','public','public',3994,'[]','{\"generated_conversions\": {\"thumb\": true}}','[]',26,'2024-08-11 07:32:52','2024-08-11 07:32:52'),(28,'App\\Sponsor',3,'1ca1cad7-4b3d-42e2-870b-5ead0f9c2c32','logo','3','3.png','image/png','public','public',3281,'[]','{\"generated_conversions\": {\"thumb\": true}}','[]',28,'2024-08-11 07:32:52','2024-08-11 07:32:52'),(29,'App\\Sponsor',4,'1f5301c5-1114-479c-ae68-001b717d2cf9','logo','4','4.png','image/png','public','public',2201,'[]','{\"generated_conversions\": {\"thumb\": true}}','[]',29,'2024-08-11 07:32:52','2024-08-11 07:32:52'),(30,'App\\Sponsor',5,'070ac97c-7e48-43d4-95e2-2cd7705e7368','logo','5','5.png','image/png','public','public',3748,'[]','{\"generated_conversions\": {\"thumb\": true}}','[]',30,'2024-08-11 07:32:52','2024-08-11 07:32:52'),(31,'App\\Sponsor',6,'72d32c89-0e9f-424b-a92a-ef778ff3d0dd','logo','6','6.png','image/png','public','public',2150,'[]','{\"generated_conversions\": {\"thumb\": true}}','[]',31,'2024-08-11 07:32:52','2024-08-11 07:32:52'),(32,'App\\Sponsor',7,'9942b1e8-f090-4047-8ba7-9b49dfff4088','logo','7','7.png','image/png','public','public',2195,'[]','{\"generated_conversions\": {\"thumb\": true}}','[]',32,'2024-08-11 07:32:52','2024-08-11 07:32:52'),(33,'App\\Sponsor',8,'9195b528-87fe-4aac-abc5-83f9b2f87d69','logo','8','8.png','image/png','public','public',1984,'[]','{\"generated_conversions\": {\"thumb\": true}}','[]',33,'2024-08-11 07:32:52','2024-08-11 07:32:52'),(34,'App\\Speaker',6,'56a1e58e-3236-4996-8bbf-86d6e746bad7','photo','66b896024ce26_IMG_5595','66b896024ce26_IMG_5595.JPG','image/jpeg','public','public',210625,'[]','{\"generated_conversions\": {\"thumb\": true}}','[]',34,'2024-08-11 07:44:20','2024-08-11 07:44:20'),(35,'App\\Speaker',6,'c01dfdfa-2992-48c3-bd41-de52e369a84f','photo','66b8a2a1047c5_1517607748955','66b8a2a1047c5_1517607748955.jpeg','image/jpeg','public','public',11417,'[]','{\"generated_conversions\": {\"thumb\": true}}','[]',35,'2024-08-11 08:38:34','2024-08-11 08:38:34'),(36,'App\\Speaker',6,'6ff16e47-6138-4bc2-870d-cc58df8895e6','photo','66b8a30a1babe_1517607748955','66b8a30a1babe_1517607748955.jpeg','image/jpeg','public','public',11417,'[]','{\"generated_conversions\": {\"thumb\": true}}','[]',36,'2024-08-11 08:39:57','2024-08-11 08:39:57'),(37,'App\\Speaker',6,'641d69fc-29f9-4769-a592-a777903f28f2','photo','66b8a90cf1442_1517607748955','66b8a90cf1442_1517607748955.jpeg','image/jpeg','public','public',11417,'[]','{\"generated_conversions\": {\"thumb\": true}}','[]',37,'2024-08-11 09:05:34','2024-08-11 09:05:34'),(38,'App\\Sponsor',1,'3768dc4d-938a-4637-8818-56e7bc106912','logo','66b8c0e68b902_QCRI-logo','66b8c0e68b902_QCRI-logo.jpg','image/jpeg','public','public',28994,'[]','{\"generated_conversions\": {\"thumb\": true}}','[]',38,'2024-08-11 10:47:20','2024-08-11 10:47:20'),(39,'App\\Sponsor',2,'eda7c0f0-04d3-4d94-a542-68c317747c5f','logo','66b8c1a9efc45_Boeing-logo-1','66b8c1a9efc45_Boeing-logo-1.jpg','image/jpeg','public','public',32676,'[]','{\"generated_conversions\": {\"thumb\": true}}','[]',39,'2024-08-11 10:50:34','2024-08-11 10:50:34'),(40,'App\\Speaker',1,'3739f649-3a92-493c-98d9-b4aa64c077bd','photo','66b8c9af51dba_owlnis7xpldmdy3kvi7w','66b8c9af51dba_owlnis7xpldmdy3kvi7w.png','image/webp','public','public',410,'[]','{\"generated_conversions\": {\"thumb\": true}}','[]',40,'2024-08-11 11:24:49','2024-08-11 11:24:49'),(41,'App\\Speaker',1,'ea239efe-28ec-46d0-bb8c-cd93b967bf33','photo','66b8c9e536689_Screenshot 2024-08-11 at 5.25.31 PM','66b8c9e536689_Screenshot-2024-08-11-at-5.25.31 PM.png','image/png','public','public',113376,'[]','{\"generated_conversions\": {\"thumb\": true}}','[]',41,'2024-08-11 11:25:42','2024-08-11 11:25:42'),(42,'App\\Speaker',2,'f89f1807-8e61-4bf1-b01f-7e7cae47e97c','photo','66b8ca54deb20_1697725653266 (1)','66b8ca54deb20_1697725653266-(1).jpeg','image/jpeg','public','public',109738,'[]','{\"generated_conversions\": {\"thumb\": true}}','[]',42,'2024-08-11 11:27:34','2024-08-11 11:27:34'),(43,'App\\Speaker',3,'eb26a57a-8f78-48ea-8f32-9d89c7e72587','photo','66b8cae68e509_images','66b8cae68e509_images.jpeg','image/jpeg','public','public',17043,'[]','{\"generated_conversions\": {\"thumb\": true}}','[]',43,'2024-08-11 11:30:00','2024-08-11 11:30:00'),(44,'App\\Speaker',4,'c2857f2b-bcf5-404c-998c-9ff159eab1a7','photo','66b8cb4f63481_juan-alonso1285952418000','66b8cb4f63481_juan-alonso1285952418000.jpg','image/jpeg','public','public',10272,'[]','{\"generated_conversions\": {\"thumb\": true}}','[]',44,'2024-08-11 11:31:44','2024-08-11 11:31:44'),(45,'App\\Speaker',4,'23baea53-5616-411a-a109-c3422c5070b1','photo','66b8cba9c1540_1709949504201','66b8cba9c1540_1709949504201.jpeg','image/jpeg','public','public',76249,'[]','{\"generated_conversions\": {\"thumb\": true}}','[]',45,'2024-08-11 11:33:31','2024-08-11 11:33:31'),(46,'App\\Speaker',5,'16687e8d-cf9e-46a7-a6e3-28e9b6e2398b','photo','66b8cc2b12f47_1516292822547','66b8cc2b12f47_1516292822547.jpeg','image/jpeg','public','public',43735,'[]','{\"generated_conversions\": {\"thumb\": true}}','[]',46,'2024-08-11 11:35:24','2024-08-11 11:35:24'),(47,'App\\Speaker',1,'856b75ec-19e6-4a6f-9f3b-3fbea41f6885','photo','66b8cc6beb2ea_Daedalean-3-768x768','66b8cc6beb2ea_Daedalean-3-768x768.png','image/png','public','public',191917,'[]','{\"generated_conversions\": {\"thumb\": true}}','[]',47,'2024-08-11 11:36:29','2024-08-11 11:36:29'),(48,'App\\Speaker',6,'de0b0785-7058-4055-8d6b-7dd3e78d92a6','photo','66b8ccb2e3eb1_Photo_Guillaume_Soudain-4x3-225x300','66b8ccb2e3eb1_Photo_Guillaume_Soudain-4x3-225x300.jpg','image/jpeg','public','public',9588,'[]','{\"generated_conversions\": {\"thumb\": true}}','[]',48,'2024-08-11 11:37:40','2024-08-11 11:37:40'),(49,'App\\Speaker',6,'a23c133e-b7a7-4176-b31c-8f14ac3c9cf7','photo','66b8cd3c71f9c_PictureGuillaumeSoudain','66b8cd3c71f9c_PictureGuillaumeSoudain.jpg','image/jpeg','public','public',18497,'[]','{\"generated_conversions\": {\"thumb\": true}}','[]',49,'2024-08-11 11:39:58','2024-08-11 11:39:58'),(50,'App\\Speaker',6,'ed2112ea-183a-44b4-b972-de6cf138575b','photo','66b8cd6dac769_Photo_Guillaume_Soudain-4x3-225x300','66b8cd6dac769_Photo_Guillaume_Soudain-4x3-225x300.jpg','image/jpeg','public','public',28107,'[]','{\"generated_conversions\": {\"thumb\": true}}','[]',50,'2024-08-11 11:40:47','2024-08-11 11:40:47');
/*!40000 ALTER TABLE `media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_100000_create_password_resets_table',1),(2,'2016_06_01_000001_create_oauth_auth_codes_table',1),(3,'2016_06_01_000002_create_oauth_access_tokens_table',1),(4,'2016_06_01_000003_create_oauth_refresh_tokens_table',1),(5,'2016_06_01_000004_create_oauth_clients_table',1),(6,'2016_06_01_000005_create_oauth_personal_access_clients_table',1),(7,'2019_09_24_000000_create_media_table',1),(8,'2019_09_24_000001_create_permissions_table',1),(9,'2019_09_24_000002_create_faqs_table',1),(10,'2019_09_24_000003_create_prices_table',1),(11,'2019_09_24_000004_create_users_table',1),(12,'2019_09_24_000005_create_amenities_table',1),(13,'2019_09_24_000006_create_settings_table',1),(14,'2019_09_24_000007_create_speakers_table',1),(15,'2019_09_24_000008_create_schedules_table',1),(16,'2019_09_24_000009_create_roles_table',1),(17,'2019_09_24_000010_create_venues_table',1),(18,'2019_09_24_000011_create_hotels_table',1),(19,'2019_09_24_000012_create_galleries_table',1),(20,'2019_09_24_000013_create_sponsors_table',1),(21,'2019_09_24_000014_create_amenity_price_pivot_table',1),(22,'2019_09_24_000015_create_role_user_pivot_table',1),(23,'2019_09_24_000016_create_permission_role_pivot_table',1),(24,'2019_09_24_000017_add_relationship_fields_to_schedules_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `client_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_tokens`
--

LOCK TABLES `oauth_access_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `client_id` bigint unsigned NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_auth_codes`
--

LOCK TABLES `oauth_auth_codes` WRITE;
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_clients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_clients`
--

LOCK TABLES `oauth_clients` WRITE;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `client_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_personal_access_clients`
--

LOCK TABLES `oauth_personal_access_clients` WRITE;
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_refresh_tokens`
--

LOCK TABLES `oauth_refresh_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permission_role` (
  `role_id` int unsigned NOT NULL,
  `permission_id` int unsigned NOT NULL,
  KEY `role_id_fk_383833` (`role_id`),
  KEY `permission_id_fk_383833` (`permission_id`),
  CONSTRAINT `permission_id_fk_383833` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_id_fk_383833` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_role`
--

LOCK TABLES `permission_role` WRITE;
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;
INSERT INTO `permission_role` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(1,8),(1,9),(1,10),(1,11),(1,12),(1,13),(1,14),(1,15),(1,16),(1,17),(1,18),(1,19),(1,20),(1,21),(1,22),(1,23),(1,24),(1,25),(1,26),(1,27),(1,28),(1,29),(1,30),(1,31),(1,32),(1,33),(1,34),(1,35),(1,36),(1,37),(1,38),(1,39),(1,40),(1,41),(1,42),(1,43),(1,44),(1,45),(1,46),(1,47),(1,48),(1,49),(1,50),(1,51),(1,52),(1,53),(1,54),(1,55),(1,56),(1,57),(1,58),(1,59),(1,60),(1,61),(1,62),(1,63),(1,64),(1,65),(1,66),(2,17),(2,18),(2,19),(2,20),(2,21),(2,22),(2,23),(2,24),(2,25),(2,26),(2,27),(2,28),(2,29),(2,30),(2,31),(2,32),(2,33),(2,34),(2,35),(2,36),(2,37),(2,38),(2,39),(2,40),(2,41),(2,42),(2,43),(2,44),(2,45),(2,46),(2,47),(2,48),(2,49),(2,50),(2,51),(2,52),(2,53),(2,54),(2,55),(2,56),(2,57),(2,58),(2,59),(2,60),(2,61),(2,62),(2,63),(2,64),(2,65),(2,66);
/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'user_management_access','2019-09-24 16:16:02','2019-09-24 16:16:02',NULL),(2,'permission_create','2019-09-24 16:16:02','2019-09-24 16:16:02',NULL),(3,'permission_edit','2019-09-24 16:16:02','2019-09-24 16:16:02',NULL),(4,'permission_show','2019-09-24 16:16:02','2019-09-24 16:16:02',NULL),(5,'permission_delete','2019-09-24 16:16:02','2019-09-24 16:16:02',NULL),(6,'permission_access','2019-09-24 16:16:02','2019-09-24 16:16:02',NULL),(7,'role_create','2019-09-24 16:16:02','2019-09-24 16:16:02',NULL),(8,'role_edit','2019-09-24 16:16:02','2019-09-24 16:16:02',NULL),(9,'role_show','2019-09-24 16:16:02','2019-09-24 16:16:02',NULL),(10,'role_delete','2019-09-24 16:16:02','2019-09-24 16:16:02',NULL),(11,'role_access','2019-09-24 16:16:02','2019-09-24 16:16:02',NULL),(12,'user_create','2019-09-24 16:16:02','2019-09-24 16:16:02',NULL),(13,'user_edit','2019-09-24 16:16:02','2019-09-24 16:16:02',NULL),(14,'user_show','2019-09-24 16:16:02','2019-09-24 16:16:02',NULL),(15,'user_delete','2019-09-24 16:16:02','2019-09-24 16:16:02',NULL),(16,'user_access','2019-09-24 16:16:02','2019-09-24 16:16:02',NULL),(17,'setting_create','2019-09-24 16:16:02','2019-09-24 16:16:02',NULL),(18,'setting_edit','2019-09-24 16:16:02','2019-09-24 16:16:02',NULL),(19,'setting_show','2019-09-24 16:16:02','2019-09-24 16:16:02',NULL),(20,'setting_delete','2019-09-24 16:16:02','2019-09-24 16:16:02',NULL),(21,'setting_access','2019-09-24 16:16:02','2019-09-24 16:16:02',NULL),(22,'speaker_create','2019-09-24 16:16:02','2019-09-24 16:16:02',NULL),(23,'speaker_edit','2019-09-24 16:16:02','2019-09-24 16:16:02',NULL),(24,'speaker_show','2019-09-24 16:16:02','2019-09-24 16:16:02',NULL),(25,'speaker_delete','2019-09-24 16:16:02','2019-09-24 16:16:02',NULL),(26,'speaker_access','2019-09-24 16:16:02','2019-09-24 16:16:02',NULL),(27,'schedule_create','2019-09-24 16:16:02','2019-09-24 16:16:02',NULL),(28,'schedule_edit','2019-09-24 16:16:02','2019-09-24 16:16:02',NULL),(29,'schedule_show','2019-09-24 16:16:02','2019-09-24 16:16:02',NULL),(30,'schedule_delete','2019-09-24 16:16:02','2019-09-24 16:16:02',NULL),(31,'schedule_access','2019-09-24 16:16:02','2019-09-24 16:16:02',NULL),(32,'venue_create','2019-09-24 16:16:02','2019-09-24 16:16:02',NULL),(33,'venue_edit','2019-09-24 16:16:02','2019-09-24 16:16:02',NULL),(34,'venue_show','2019-09-24 16:16:02','2019-09-24 16:16:02',NULL),(35,'venue_delete','2019-09-24 16:16:02','2019-09-24 16:16:02',NULL),(36,'venue_access','2019-09-24 16:16:02','2019-09-24 16:16:02',NULL),(37,'hotel_create','2019-09-24 16:16:02','2019-09-24 16:16:02',NULL),(38,'hotel_edit','2019-09-24 16:16:02','2019-09-24 16:16:02',NULL),(39,'hotel_show','2019-09-24 16:16:02','2019-09-24 16:16:02',NULL),(40,'hotel_delete','2019-09-24 16:16:02','2019-09-24 16:16:02',NULL),(41,'hotel_access','2019-09-24 16:16:02','2019-09-24 16:16:02',NULL),(42,'gallery_create','2019-09-24 16:16:02','2019-09-24 16:16:02',NULL),(43,'gallery_edit','2019-09-24 16:16:02','2019-09-24 16:16:02',NULL),(44,'gallery_show','2019-09-24 16:16:02','2019-09-24 16:16:02',NULL),(45,'gallery_delete','2019-09-24 16:16:02','2019-09-24 16:16:02',NULL),(46,'gallery_access','2019-09-24 16:16:02','2019-09-24 16:16:02',NULL),(47,'sponsor_create','2019-09-24 16:16:02','2019-09-24 16:16:02',NULL),(48,'sponsor_edit','2019-09-24 16:16:02','2019-09-24 16:16:02',NULL),(49,'sponsor_show','2019-09-24 16:16:02','2019-09-24 16:16:02',NULL),(50,'sponsor_delete','2019-09-24 16:16:02','2019-09-24 16:16:02',NULL),(51,'sponsor_access','2019-09-24 16:16:02','2019-09-24 16:16:02',NULL),(52,'faq_create','2019-09-24 16:16:02','2019-09-24 16:16:02',NULL),(53,'faq_edit','2019-09-24 16:16:02','2019-09-24 16:16:02',NULL),(54,'faq_show','2019-09-24 16:16:02','2019-09-24 16:16:02',NULL),(55,'faq_delete','2019-09-24 16:16:02','2019-09-24 16:16:02',NULL),(56,'faq_access','2019-09-24 16:16:02','2019-09-24 16:16:02',NULL),(57,'amenity_create','2019-09-24 16:16:02','2019-09-24 16:16:02',NULL),(58,'amenity_edit','2019-09-24 16:16:02','2019-09-24 16:16:02',NULL),(59,'amenity_show','2019-09-24 16:16:02','2019-09-24 16:16:02',NULL),(60,'amenity_delete','2019-09-24 16:16:02','2019-09-24 16:16:02',NULL),(61,'amenity_access','2019-09-24 16:16:02','2019-09-24 16:16:02',NULL),(62,'price_create','2019-09-24 16:16:02','2019-09-24 16:16:02',NULL),(63,'price_edit','2019-09-24 16:16:02','2019-09-24 16:16:02',NULL),(64,'price_show','2019-09-24 16:16:02','2019-09-24 16:16:02',NULL),(65,'price_delete','2019-09-24 16:16:02','2019-09-24 16:16:02',NULL),(66,'price_access','2019-09-24 16:16:02','2019-09-24 16:16:02',NULL);
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prices`
--

DROP TABLE IF EXISTS `prices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prices` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prices`
--

LOCK TABLES `prices` WRITE;
/*!40000 ALTER TABLE `prices` DISABLE KEYS */;
INSERT INTO `prices` VALUES (1,'Standard Access',150.00,'2024-08-11 07:32:52','2024-08-11 07:32:52',NULL),(2,'Pro Access',250.00,'2024-08-11 07:32:52','2024-08-11 07:32:52',NULL),(3,'Premium Access',350.00,'2024-08-11 07:32:52','2024-08-11 07:32:52',NULL);
/*!40000 ALTER TABLE `prices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_user`
--

DROP TABLE IF EXISTS `role_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_user` (
  `user_id` int unsigned NOT NULL,
  `role_id` int unsigned NOT NULL,
  KEY `user_id_fk_383842` (`user_id`),
  KEY `role_id_fk_383842` (`role_id`),
  CONSTRAINT `role_id_fk_383842` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_id_fk_383842` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_user`
--

LOCK TABLES `role_user` WRITE;
/*!40000 ALTER TABLE `role_user` DISABLE KEYS */;
INSERT INTO `role_user` VALUES (1,1);
/*!40000 ALTER TABLE `role_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Admin','2019-09-24 16:16:02','2019-09-24 16:16:02',NULL),(2,'User','2019-09-24 16:16:02','2019-09-24 16:16:02',NULL);
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedules`
--

DROP TABLE IF EXISTS `schedules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schedules` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `day_number` int NOT NULL,
  `start_time` time NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `speaker_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `speaker_fk_383954` (`speaker_id`),
  CONSTRAINT `speaker_fk_383954` FOREIGN KEY (`speaker_id`) REFERENCES `speakers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedules`
--

LOCK TABLES `schedules` WRITE;
/*!40000 ALTER TABLE `schedules` DISABLE KEYS */;
INSERT INTO `schedules` VALUES (1,1,'09:30:00','Registration','Fugit voluptas iusto maiores temporibus autem numquam magnam.','2024-08-11 07:32:51','2024-08-11 07:32:51',NULL,NULL),(2,1,'10:00:00','Keynote','Facere provident incidunt quos voluptas.','2024-08-11 07:32:51','2024-08-11 07:32:51',NULL,1),(3,1,'11:00:00','Et voluptatem iusto dicta nobis.','Maiores dignissimos neque qui cum accusantium ut sit sint inventore.','2024-08-11 07:32:51','2024-08-11 07:32:51',NULL,2),(4,1,'12:00:00','Explicabo et rerum quis et ut ea.','Veniam accusantium laborum nihil eos eaque accusantium aspernatur.','2024-08-11 07:32:51','2024-08-11 07:32:51',NULL,3),(5,1,'14:00:00','Qui non qui vel amet culpa sequi.','Nam ex distinctio voluptatem doloremque suscipit iusto.','2024-08-11 07:32:51','2024-08-11 07:32:51',NULL,4),(6,1,'15:00:00','Quos ratione neque expedita asperiores.','Eligendi quo eveniet est nobis et ad temporibus odio quo.','2024-08-11 07:32:51','2024-08-11 07:32:51',NULL,5),(7,1,'16:00:00','Quo qui praesentium nesciunt','Voluptatem et alias dolorum est aut sit enim neque veritatis.','2024-08-11 07:32:51','2024-08-11 07:32:51',NULL,6),(8,2,'10:00:00','Libero corrupti explicabo itaque.','Facere provident incidunt quos voluptas.','2024-08-11 07:32:51','2024-08-11 07:32:51',NULL,1),(9,2,'11:00:00','Et voluptatem iusto dicta nobis.','Maiores dignissimos neque qui cum accusantium ut sit sint inventore.','2024-08-11 07:32:51','2024-08-11 07:32:51',NULL,2),(10,2,'12:00:00','Explicabo et rerum quis et ut ea.','Veniam accusantium laborum nihil eos eaque accusantium aspernatur.','2024-08-11 07:32:51','2024-08-11 07:32:51',NULL,3),(11,2,'14:00:00','Qui non qui vel amet culpa sequi.','Nam ex distinctio voluptatem doloremque suscipit iusto.','2024-08-11 07:32:51','2024-08-11 07:32:51',NULL,4),(12,2,'15:00:00','Quos ratione neque expedita asperiores.','Eligendi quo eveniet est nobis et ad temporibus odio quo.','2024-08-11 07:32:51','2024-08-11 07:32:51',NULL,5),(13,2,'16:00:00','Quo qui praesentium nesciunt','Voluptatem et alias dolorum est aut sit enim neque veritatis.','2024-08-11 07:32:51','2024-08-11 07:32:51',NULL,6),(14,3,'10:00:00','Et voluptatem iusto dicta nobis.','Maiores dignissimos neque qui cum accusantium ut sit sint inventore.','2024-08-11 07:32:51','2024-08-11 07:32:51',NULL,2),(15,3,'11:00:00','Explicabo et rerum quis et ut ea.','Veniam accusantium laborum nihil eos eaque accusantium aspernatur.','2024-08-11 07:32:51','2024-08-11 07:32:51',NULL,3),(16,3,'12:00:00','Libero corrupti explicabo itaque.','Facere provident incidunt quos voluptas.','2024-08-11 07:32:51','2024-08-11 07:32:51',NULL,1),(17,3,'14:00:00','Qui non qui vel amet culpa sequi.','Nam ex distinctio voluptatem doloremque suscipit iusto.','2024-08-11 07:32:51','2024-08-11 07:32:51',NULL,4),(18,3,'15:00:00','Quos ratione neque expedita asperiores.','Eligendi quo eveniet est nobis et ad temporibus odio quo.','2024-08-11 07:32:51','2024-08-11 07:32:51',NULL,5),(19,3,'16:00:00','Quo qui praesentium nesciunt','Voluptatem et alias dolorum est aut sit enim neque veritatis.','2024-08-11 07:32:51','2024-08-11 07:32:51',NULL,6);
/*!40000 ALTER TABLE `schedules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'title','MLDAS 2024<br><span>Machine Learning and Data Analytics </span> Symposium','2024-08-11 07:32:50','2024-08-11 07:38:43',NULL),(2,'subtitle','29-30 October, 2024, Minaretein, Education City','2024-08-11 07:32:50','2024-08-11 09:27:56',NULL),(3,'youtube_link','/storage/0/1698153706463.mp4','2024-08-11 07:32:50','2024-08-11 09:43:53',NULL),(4,'about_description','MLDAS 2023 is dedicated to fostering connections between researchers, practitioners, students, and industry experts in the fields of machine learning and data science. Our aim is to bridge the gap between cutting-edge academic insights and the practical needs of industry. <br><br>This year’s program will focus on cutting-edge research and developments in AI safety, autonomous systems, and advanced computational methods. We will delve into topics such as AI in aviation, including perception systems for autonomous aircraft and safe AI integration, as well as the challenges and applications of probabilistic programming for autonomous vehicles.<br><br>In addition to the technical talks, MLDAS 2023 will feature a panel discussion on responsible AI, where experts will tackle critical ethical and technical considerations in the field of machine learning and data science.','2024-08-11 07:32:50','2024-08-11 10:11:13',NULL),(5,'about_where','Minaretein, Education City, Doha, Qatar','2024-08-11 07:32:50','2024-08-11 09:22:14',NULL),(6,'about_when','Tuesday to Wednesday<br>29-30 October, 2024','2024-08-11 07:32:50','2024-08-11 09:28:19',NULL),(7,'contact_address','Minaretein, Education City, Qatar','2024-08-11 07:32:50','2024-08-11 10:12:25',NULL),(8,'contact_phone','+974 44540629','2024-08-11 07:32:50','2024-08-11 10:52:39',NULL),(9,'contact_email','qcri@hbku.edu.qa','2024-08-11 07:32:50','2024-08-11 10:52:45',NULL),(10,'footer_description',NULL,'2024-08-11 07:32:50','2024-08-11 10:14:50',NULL),(11,'footer_address','Minaretein <br> Education City<br> Qatar','2024-08-11 07:32:50','2024-08-11 10:12:07',NULL),(12,'footer_twitter','#','2024-08-11 07:32:50','2024-08-11 07:32:50',NULL),(13,'footer_facebook','#','2024-08-11 07:32:50','2024-08-11 07:32:50',NULL),(14,'footer_instagram','#','2024-08-11 07:32:50','2024-08-11 07:32:50',NULL),(15,'footer_googleplus','#','2024-08-11 07:32:50','2024-08-11 07:32:50',NULL),(16,'footer_linkedin','#','2024-08-11 07:32:50','2024-08-11 07:32:50',NULL),(17,'about_chairs','Dragos Margineantu & Sanjay Chawla','2024-08-11 10:42:23','2024-08-11 10:43:57','2024-08-11 10:43:57'),(18,'first_chair','Dragos Margineantu','2024-08-11 10:44:11','2024-08-11 10:44:11',NULL),(19,'second_chair','Sanjay Chawla','2024-08-11 10:44:20','2024-08-11 10:44:20',NULL),(20,'first_chair_org','Boeing','2024-08-11 10:44:28','2024-08-11 10:44:28',NULL),(21,'second_chair_org','QCRI','2024-08-11 10:44:37','2024-08-11 10:44:37',NULL);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `speakers`
--

DROP TABLE IF EXISTS `speakers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `speakers` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `full_description` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `speakers`
--

LOCK TABLES `speakers` WRITE;
/*!40000 ALTER TABLE `speakers` DISABLE KEYS */;
INSERT INTO `speakers` VALUES (1,'Luuk van Dijk','Co-founder @ Daedalean AI','#','#','#','Luuk is the CEO of Daedalean AG, where he leads a team in the development of autonomous flight software for the electric personal VTOL aircraft of the near future. Daedalean innovates through combining cutting-edge robotics with avionics and safety-critical standards. Luuk advises a number of international tech start-ups and previously held SeniorSoftware Engineering positions at Google Zürich and SpaceX, where he worked on infrastructure, flight software, and machine learning projects, among others. He holds a PhD in theoretical Physics.','2024-08-11 07:32:50','2024-08-11 11:36:43',NULL),(2,'Jean-Guillaume Durand','AI/ML Perception @ Joby Flight Research','#','#','#','Applied scientist with 13+ years of experience in autonomous flight. I work best at the intersection between team management and individual contributions. My track record consists of documented robotics solutions which insist on the highest standards and best practices, from low-level sensor drivers to complete artificial intelligence autonomy.','2024-08-11 07:32:51','2024-08-11 11:27:34',NULL),(3,'Brian Yutko','CEO @ Wisk','#','#','#','Yutko currently serves as Vice President and Chief Engineer of Sustainability & Future Mobility at Boeing. Yutko has served multiple leadership roles at Boeing, including Chief Technologist for Boeing NeXt. Prior to Boeing, Yutko was Senior Vice President of Programs at Aurora Flight Sciences, where he held P&L responsibility, led Research and Development, and also served as a program manager and principal investigator for various rapid prototyping and autonomous technology development programs. Yutko helped to lead Aurora through a period of substantial growth while the company pioneered cutting edge autonomous systems technologies and applications. He began his career at MIT and NASA. Yutko received his Bachelors of Science in Aerospace Engineering from Penn State University and his Masters of Science and PhD in Astronautical Engineering from Massachusetts Institute of Technology (MIT).','2024-08-11 07:32:51','2024-08-11 11:30:00',NULL),(4,'Juan Alonso','Professor @ Stanford University, CTO & Co-founder @ Luminary Cloud','#','#','#','Prof. Alonso is the founder and director of the Aerospace Design Laboratory (ADL) where he specializes in the development of high-fidelity computational design methodologies to enable the creation of realizable and efficient aerospace systems. Prof. Alonso’s research involves a large number of different manned and unmanned applications including transonic, supersonic, and hypersonic aircraft, helicopters, turbomachinery, and launch and re-entry vehicles. He is the author of over 200 technical publications on the topics of computational aircraft and spacecraft design, multi-disciplinary optimization, fundamental numerical methods, and high-performance parallel computing. Prof. Alonso is keenly interested in the development of an advanced curriculum for the training of future engineers and scientists and has participated actively in course-development activities in both the Aeronautics & Astronautics Department (particularly in the development of coursework for aircraft design, sustainable aviation, and UAS design and operation) and for the Institute for Computational and Mathematical Engineering (ICME) at Stanford University. He was a member of the team that currently holds the world speed record for human powered vehicles over water. A student team led by Prof. Alonso also holds the altitude record for an unmanned electric vehicle under 5 lbs of mass.','2024-08-11 07:32:51','2024-08-11 11:44:18',NULL),(5,'Marco Pavone','Professor @ Stanford \r\nDirector, Autonomous Vehicle Research @ NVIDIA','#','#','#','Dr. Marco Pavone is an Associate Professor of Aeronautics and Astronautics at Stanford University, where he is the Director of the Autonomous Systems Laboratory and Co-Director of the Center for Automotive Research at Stanford. Before joining Stanford, he was a Research Technologist within the Robotics Section at the NASA Jet Propulsion Laboratory. He received a Ph.D. degree in Aeronautics and Astronautics from the Massachusetts Institute of Technology in 2010. His main research interests are in the development of methodologies for the analysis, design, and control of autonomous systems, with an emphasis on self-driving cars, autonomous aerospace vehicles, and future mobility systems. He is a recipient of a number of awards, including a Presidential Early Career Award for Scientists and Engineers from President Barack Obama, an Office of Naval Research Young Investigator Award, a National Science Foundation Early Career (CAREER) Award, a NASA Early Career Faculty Award, and an Early-Career Spotlight Award from the Robotics Science and Systems Foundation. He was identified by the American Society for Engineering Education (ASEE) as one of America\'s 20 most highly promising investigators under the age of 40. His work has been recognized with best paper nominations or awards at the European Control Conference, at the IEEE International Conference on Intelligent Transportation Systems, at the Field and Service Robotics Conference, at the Robotics: Science and Systems Conference, at the ROBOCOMM Conference, and at NASA symposia. He is currently serving as an Associate Editor for the IEEE Control Systems Magazine. He is serving or has served on the advisory board of a number of autonomous driving start-ups (both small and multi-billion dollar ones), he routinely consults for major companies and financial institutions on the topic of autonomous systems, and is a venture partner for investments in AI-enabled robots.','2024-08-11 07:32:51','2024-08-11 11:46:53',NULL),(6,'Guillaume Soudain','Programme Manager - Artificial Intelligence @ EASA','#','#','#','Guillaume Soudain has been working at the European Union Aviation Safety Agency (EASA) since 2006, starting his career as an Expert in Software and Airborne Electronic Hardware within the Certification Directorate. In 2014, after being promoted to Senior Software Expert, he took charge of coordinating software certification policies at the Agency, before becoming the EASA\'s Artificial Intelligence (AI) Programme Manager.\r\n\r\nGuillaume indeed initiated the creation of the Agency\'s AI roadmap and has been leading its implementation since 2019. As the head of EASA\'s AI Programme since 2022, he plays a key role in innovation and the deployment of a trustworthy AI framework to facilitate the safe integration of AI in aviation, through his leadership of EASA\'s action plan on AI.\r\n\r\nHe also represents EASA in the joint EUROCAE WG-114 / SAE G-34 working group on AI. Previously, he was an active contributor to the EUROCAE WG-71/RTCA SC-205 committee, which ensures the production and updating of the ED-12C/DO-178C software standard and its associated documents, and served as EASA\'s representative in the Forum for Aeronautical Software (FAS).\r\n\r\nBefore joining EASA, Guillaume enriched his experience for five years, from 2001 to 2006, as a Software Engineer in the development of automatic flight control systems for the European rotorcraft industry.','2024-08-11 07:32:51','2024-08-11 11:41:50',NULL);
/*!40000 ALTER TABLE `speakers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sponsors`
--

DROP TABLE IF EXISTS `sponsors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sponsors` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sponsors`
--

LOCK TABLES `sponsors` WRITE;
/*!40000 ALTER TABLE `sponsors` DISABLE KEYS */;
INSERT INTO `sponsors` VALUES (1,'Qatar Computing Research Institute','#','2024-08-11 07:32:52','2024-08-11 10:48:16',NULL),(2,'Boeing','#','2024-08-11 07:32:52','2024-08-11 10:47:55',NULL),(3,'EditShare','#','2024-08-11 07:32:52','2024-08-11 10:46:04','2024-08-11 10:46:04'),(4,'InFocus','#','2024-08-11 07:32:52','2024-08-11 10:46:04','2024-08-11 10:46:04'),(5,'gategroup','#','2024-08-11 07:32:52','2024-08-11 10:46:04','2024-08-11 10:46:04'),(6,'Cadent','#','2024-08-11 07:32:52','2024-08-11 10:46:04','2024-08-11 10:46:04'),(7,'Ceph','#','2024-08-11 07:32:52','2024-08-11 10:46:04','2024-08-11 10:46:04'),(8,'Alitalia','#','2024-08-11 07:32:52','2024-08-11 10:46:04','2024-08-11 10:46:04');
/*!40000 ALTER TABLE `sponsors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` datetime DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Admin','admin@admin.com',NULL,'$2y$10$7Xn/8bPJ89ypj0cIxwoH9OOXnbK/.9xrLfFh2G4LUSRkw6j7Agn0K',NULL,'2019-09-24 16:16:02','2019-09-24 16:16:02',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venues`
--

DROP TABLE IF EXISTS `venues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `venues` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `longitude` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venues`
--

LOCK TABLES `venues` WRITE;
/*!40000 ALTER TABLE `venues` DISABLE KEYS */;
INSERT INTO `venues` VALUES (1,'Minaretein <br>Education City <br> Qatar','Education City, Qatar','25.3168847','51.440283',NULL,'2024-08-11 07:32:51','2024-08-11 10:39:41',NULL);
/*!40000 ALTER TABLE `venues` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-11 18:13:22
