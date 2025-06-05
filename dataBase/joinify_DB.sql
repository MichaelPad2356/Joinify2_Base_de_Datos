-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: joinify_prb2
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `grupo_suscripcion`
--

DROP TABLE IF EXISTS `grupo_suscripcion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grupo_suscripcion` (
  `id_grupo_suscripcion` int NOT NULL AUTO_INCREMENT,
  `nombre_grupo` varchar(100) NOT NULL,
  `fecha_creacion` date NOT NULL,
  `estado_grupo` varchar(50) NOT NULL,
  `num_integrantes` int NOT NULL,
  `id_servicio` int NOT NULL,
  `costo_total` decimal(10,2) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_vencimiento` date NOT NULL,
  `id_creador` int NOT NULL,
  PRIMARY KEY (`id_grupo_suscripcion`),
  KEY `id_servicio` (`id_servicio`),
  KEY `id_creador` (`id_creador`),
  CONSTRAINT `grupo_suscripcion_ibfk_1` FOREIGN KEY (`id_servicio`) REFERENCES `servicio_streaming` (`id_servicio`),
  CONSTRAINT `grupo_suscripcion_ibfk_2` FOREIGN KEY (`id_creador`) REFERENCES `usuario` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupo_suscripcion`
--

LOCK TABLES `grupo_suscripcion` WRITE;
/*!40000 ALTER TABLE `grupo_suscripcion` DISABLE KEYS */;
INSERT INTO `grupo_suscripcion` VALUES (1,'Hane, Osinski and Lowe Club','2024-07-13','Activo',9,1,269.79,'2024-07-16','2024-10-25',349),(2,'Wisoky - O\'Kon Club','2024-09-15','Activo',7,2,335.19,'2024-09-19','2024-09-28',346),(3,'Mohamedbury Streaming','2024-08-25','Inactivo',8,4,361.55,'2024-08-27','2024-09-18',370),(4,'Club de hello','2025-04-04','Inactivo',3,5,302.20,'2025-04-05','2025-08-19',234),(5,'Equipo Cilky','2024-09-23','Activo',9,4,479.79,'2024-09-24','2025-07-26',186),(6,'La Banda Kris-Orn','2024-08-22','Activo',10,6,127.69,'2024-08-24','2025-05-05',198),(7,'Fort Abdul Streaming','2025-03-15','Activo',10,6,396.69,'2025-03-15','2025-09-24',210),(8,'Fans de corral','2024-12-29','Inactivo',10,2,449.19,'2025-01-01','2025-05-23',114),(9,'Club de minority','2024-09-07','Inactivo',4,1,194.69,'2024-09-10','2025-04-07',241),(10,'West New York Streaming','2024-10-08','Activo',8,5,341.35,'2024-10-12','2025-03-30',93),(11,'Sociedad Barrows','2025-02-08','Inactivo',2,8,308.05,'2025-02-13','2026-01-27',315),(12,'Fans de testing','2024-08-20','Inactivo',6,8,356.29,'2024-08-24','2024-10-21',294),(13,'Comunidad uncommon','2025-05-02','Activo',6,5,449.55,'2025-05-05','2026-03-05',29),(14,'Comunidad quick-witted','2024-08-20','Activo',8,6,235.45,'2024-08-25','2025-05-23',435),(15,'Fans de advertisement','2024-08-15','Inactivo',8,8,283.40,'2024-08-16','2025-05-02',400),(16,'Comunidad humiliating','2024-07-01','Activo',5,7,272.25,'2024-07-06','2024-10-13',55),(17,'Equipo Ghite','2024-07-03','Inactivo',9,3,381.89,'2024-07-06','2025-01-19',321),(18,'Club de council','2025-04-28','Activo',2,2,132.69,'2025-05-01','2026-03-27',110),(19,'Grupo Cruickshank,','2024-07-20','Inactivo',5,5,455.89,'2024-07-20','2025-07-20',367),(20,'Club de certification','2025-03-19','Inactivo',5,1,329.79,'2025-03-21','2025-09-18',81),(21,'Grupo Jacobson','2025-03-08','Inactivo',6,1,268.69,'2025-03-08','2025-09-24',288),(22,'Grupo VonRueden','2024-11-09','Inactivo',6,7,489.29,'2024-11-12','2025-05-01',145),(23,'La Banda Mertz','2025-01-07','Activo',6,7,130.69,'2025-01-08','2025-03-27',449),(24,'Lake Percy Streaming','2025-04-08','Inactivo',7,4,494.69,'2025-04-11','2026-03-01',40),(25,'Club de premier','2024-11-09','Inactivo',3,5,252.89,'2024-11-09','2025-09-02',32),(26,'Club de object','2024-07-08','Inactivo',10,3,390.60,'2024-07-11','2024-10-30',446),(27,'Amigos de Abbottberg','2024-11-03','Inactivo',2,1,142.10,'2024-11-03','2025-09-09',461),(28,'La Banda Crist','2025-04-22','Activo',6,2,426.29,'2025-04-24','2025-12-09',18),(29,'Bins Group Club','2025-03-28','Inactivo',2,2,293.29,'2025-03-30','2025-10-27',309),(30,'Sociedad Langworth','2024-10-26','Inactivo',7,4,380.99,'2024-10-29','2025-04-19',413),(31,'Comunidad dependent','2025-04-08','Activo',10,5,382.39,'2025-04-12','2025-08-20',452),(32,'Comunidad delicious','2025-02-18','Activo',8,7,327.49,'2025-02-20','2025-11-15',90),(33,'Sociedad Vandervort','2025-02-24','Inactivo',4,2,321.39,'2025-02-26','2025-03-29',202),(34,'La Banda Donnelly','2025-05-07','Inactivo',7,1,449.95,'2025-05-07','2026-02-23',116),(35,'Sociedad Leuschke','2024-09-21','Activo',7,5,190.99,'2024-09-23','2025-06-09',250),(36,'Club de steak','2024-12-29','Activo',2,6,423.09,'2025-01-02','2025-10-21',23),(37,'Sociedad Kozey','2025-04-10','Activo',5,6,148.69,'2025-04-11','2025-08-11',482),(38,'Grupo Gorczany','2024-09-30','Activo',5,1,197.49,'2024-10-02','2025-07-07',257),(39,'West Willard Streaming','2024-06-21','Activo',9,1,390.69,'2024-06-25','2024-08-28',244),(40,'Stanton - MacGyver Club','2025-03-21','Inactivo',3,1,365.15,'2025-03-21','2025-06-17',151),(41,'Club de relative','2025-04-05','Inactivo',5,5,253.95,'2025-04-08','2025-08-28',166),(42,'Amigos de East Bradley','2024-11-13','Activo',9,4,344.09,'2024-11-15','2025-04-14',149),(43,'Fans de unit','2024-12-14','Activo',5,7,425.09,'2024-12-17','2025-10-24',439),(44,'La Banda Zulauf','2025-02-11','Activo',6,4,386.99,'2025-02-15','2025-07-08',222),(45,'Equipo Gooperative','2024-08-10','Activo',7,7,321.25,'2024-08-11','2025-06-28',76),(46,'La Banda Mosciski','2024-08-03','Inactivo',4,6,385.99,'2024-08-05','2024-12-10',443),(47,'Schiller - Sanford Club','2024-09-25','Inactivo',7,2,266.39,'2024-09-25','2024-12-19',61),(48,'Comunidad clumsy','2024-11-25','Inactivo',8,7,392.70,'2024-11-26','2025-11-05',498),(49,'Bergstrom, Braun and Roob Club','2024-11-23','Inactivo',7,7,411.79,'2024-11-27','2025-07-05',416),(50,'Amigos de Peoria','2024-06-05','Activo',3,5,281.00,'2024-06-07','2025-02-01',330),(51,'Sandias','2025-06-04','Inactivo',2,3,72.00,'2025-06-04','2025-07-04',386);
/*!40000 ALTER TABLE `grupo_suscripcion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `grupo_suscripcion_f1`
--

DROP TABLE IF EXISTS `grupo_suscripcion_f1`;
/*!50001 DROP VIEW IF EXISTS `grupo_suscripcion_f1`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `grupo_suscripcion_f1` AS SELECT 
 1 AS `id_grupo_suscripcion`,
 1 AS `nombre_grupo`,
 1 AS `fecha_creacion`,
 1 AS `estado_grupo`,
 1 AS `num_integrantes`,
 1 AS `id_servicio`,
 1 AS `costo_total`,
 1 AS `fecha_inicio`,
 1 AS `fecha_vencimiento`,
 1 AS `id_creador`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `grupo_suscripcion_f2`
--

DROP TABLE IF EXISTS `grupo_suscripcion_f2`;
/*!50001 DROP VIEW IF EXISTS `grupo_suscripcion_f2`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `grupo_suscripcion_f2` AS SELECT 
 1 AS `id_grupo_suscripcion`,
 1 AS `nombre_grupo`,
 1 AS `fecha_creacion`,
 1 AS `estado_grupo`,
 1 AS `num_integrantes`,
 1 AS `id_servicio`,
 1 AS `costo_total`,
 1 AS `fecha_inicio`,
 1 AS `fecha_vencimiento`,
 1 AS `id_creador`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `grupo_suscripcion_f3`
--

DROP TABLE IF EXISTS `grupo_suscripcion_f3`;
/*!50001 DROP VIEW IF EXISTS `grupo_suscripcion_f3`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `grupo_suscripcion_f3` AS SELECT 
 1 AS `id_grupo_suscripcion`,
 1 AS `nombre_grupo`,
 1 AS `fecha_creacion`,
 1 AS `estado_grupo`,
 1 AS `num_integrantes`,
 1 AS `id_servicio`,
 1 AS `costo_total`,
 1 AS `fecha_inicio`,
 1 AS `fecha_vencimiento`,
 1 AS `id_creador`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `historial_pagos`
--

DROP TABLE IF EXISTS `historial_pagos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `historial_pagos` (
  `id_historial_pago` int NOT NULL AUTO_INCREMENT,
  `id_pago` int NOT NULL,
  `id_grupo_suscripcion` int NOT NULL,
  PRIMARY KEY (`id_historial_pago`),
  KEY `id_pago` (`id_pago`),
  KEY `id_grupo_suscripcion` (`id_grupo_suscripcion`),
  CONSTRAINT `historial_pagos_ibfk_1` FOREIGN KEY (`id_pago`) REFERENCES `pago` (`id_pago`),
  CONSTRAINT `historial_pagos_ibfk_2` FOREIGN KEY (`id_grupo_suscripcion`) REFERENCES `grupo_suscripcion` (`id_grupo_suscripcion`)
) ENGINE=InnoDB AUTO_INCREMENT=501 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historial_pagos`
--

LOCK TABLES `historial_pagos` WRITE;
/*!40000 ALTER TABLE `historial_pagos` DISABLE KEYS */;
INSERT INTO `historial_pagos` VALUES (1,116,48),(2,2,5),(3,296,44),(4,382,11),(5,490,29),(6,178,11),(7,116,16),(8,227,36),(9,205,42),(10,428,26),(11,448,17),(12,53,5),(13,215,34),(14,351,16),(15,175,29),(16,238,38),(17,246,5),(18,210,48),(19,326,22),(20,415,49),(21,234,30),(22,283,10),(23,381,15),(24,177,12),(25,89,41),(26,254,44),(27,499,38),(28,53,15),(29,290,9),(30,222,28),(31,304,3),(32,213,8),(33,188,21),(34,251,15),(35,92,18),(36,285,39),(37,254,43),(38,192,14),(39,164,34),(40,153,41),(41,226,16),(42,15,3),(43,498,49),(44,52,48),(45,281,19),(46,231,26),(47,364,43),(48,336,6),(49,204,35),(50,113,36),(51,205,36),(52,12,23),(53,194,36),(54,440,34),(55,310,42),(56,264,33),(57,102,28),(58,146,16),(59,168,33),(60,462,12),(61,461,32),(62,286,6),(63,270,48),(64,166,6),(65,94,7),(66,474,31),(67,50,10),(68,156,31),(69,400,45),(70,434,15),(71,207,16),(72,332,41),(73,77,24),(74,103,13),(75,124,10),(76,21,41),(77,94,17),(78,161,48),(79,143,16),(80,350,39),(81,23,15),(82,311,49),(83,491,38),(84,151,1),(85,146,24),(86,438,11),(87,349,43),(88,71,4),(89,350,19),(90,324,41),(91,341,6),(92,90,17),(93,463,46),(94,355,25),(95,282,17),(96,350,6),(97,29,34),(98,451,4),(99,350,45),(100,149,33),(101,486,8),(102,27,24),(103,65,11),(104,292,7),(105,480,31),(106,75,19),(107,357,44),(108,69,12),(109,93,46),(110,16,50),(111,271,20),(112,321,7),(113,421,36),(114,334,29),(115,384,18),(116,494,33),(117,45,5),(118,167,8),(119,300,40),(120,487,17),(121,385,4),(122,59,11),(123,198,38),(124,379,7),(125,222,3),(126,75,6),(127,442,22),(128,293,2),(129,479,36),(130,493,38),(131,268,41),(132,306,26),(133,230,48),(134,94,29),(135,35,35),(136,108,19),(137,20,1),(138,278,18),(139,80,2),(140,60,8),(141,257,4),(142,279,13),(143,466,4),(144,485,24),(145,251,39),(146,39,37),(147,229,46),(148,345,24),(149,481,12),(150,55,49),(151,44,24),(152,351,9),(153,71,20),(154,340,13),(155,378,37),(156,300,32),(157,81,26),(158,420,12),(159,69,36),(160,9,48),(161,61,33),(162,131,32),(163,180,5),(164,247,35),(165,305,30),(166,97,29),(167,203,47),(168,69,27),(169,444,1),(170,357,1),(171,258,11),(172,390,1),(173,12,37),(174,453,14),(175,424,1),(176,48,10),(177,146,4),(178,247,6),(179,119,14),(180,46,19),(181,364,8),(182,348,18),(183,10,41),(184,356,26),(185,93,29),(186,361,20),(187,429,8),(188,244,41),(189,203,9),(190,163,32),(191,269,8),(192,229,26),(193,440,27),(194,95,49),(195,117,21),(196,314,23),(197,305,26),(198,148,40),(199,278,17),(200,277,21),(201,53,5),(202,417,13),(203,103,34),(204,325,15),(205,258,35),(206,99,31),(207,454,15),(208,155,33),(209,499,1),(210,174,41),(211,486,17),(212,59,22),(213,189,21),(214,428,16),(215,126,43),(216,478,33),(217,108,38),(218,292,3),(219,324,17),(220,325,8),(221,5,2),(222,53,33),(223,145,42),(224,390,30),(225,444,6),(226,22,21),(227,56,12),(228,370,5),(229,409,31),(230,343,2),(231,335,12),(232,255,50),(233,388,34),(234,227,28),(235,431,23),(236,405,1),(237,189,13),(238,201,27),(239,172,34),(240,152,10),(241,200,46),(242,97,45),(243,275,21),(244,398,5),(245,204,11),(246,477,40),(247,194,45),(248,225,26),(249,456,28),(250,11,48),(251,42,13),(252,250,4),(253,55,37),(254,54,12),(255,149,9),(256,373,41),(257,381,29),(258,333,47),(259,314,35),(260,88,24),(261,64,8),(262,80,9),(263,165,45),(264,450,46),(265,420,48),(266,170,14),(267,496,26),(268,195,5),(269,500,27),(270,491,5),(271,8,41),(272,104,8),(273,478,23),(274,284,34),(275,435,19),(276,431,48),(277,251,34),(278,181,7),(279,341,39),(280,345,26),(281,276,22),(282,296,12),(283,390,20),(284,449,18),(285,293,49),(286,316,9),(287,189,38),(288,259,20),(289,210,33),(290,164,41),(291,17,18),(292,375,36),(293,443,29),(294,354,31),(295,384,9),(296,449,44),(297,148,42),(298,68,2),(299,293,46),(300,424,31),(301,15,34),(302,319,39),(303,67,39),(304,26,17),(305,36,20),(306,480,21),(307,74,2),(308,417,5),(309,311,31),(310,497,41),(311,467,43),(312,449,47),(313,458,36),(314,13,25),(315,384,36),(316,379,6),(317,331,19),(318,300,3),(319,241,22),(320,329,26),(321,88,32),(322,61,48),(323,194,35),(324,159,10),(325,28,12),(326,165,31),(327,37,47),(328,484,35),(329,316,2),(330,1,13),(331,113,28),(332,337,34),(333,182,23),(334,2,5),(335,410,37),(336,165,21),(337,355,47),(338,193,21),(339,213,45),(340,93,44),(341,121,17),(342,471,6),(343,159,25),(344,297,24),(345,374,34),(346,168,16),(347,345,8),(348,202,15),(349,13,24),(350,228,49),(351,9,10),(352,437,15),(353,175,19),(354,210,14),(355,477,20),(356,171,22),(357,331,42),(358,19,46),(359,56,6),(360,409,49),(361,442,42),(362,353,14),(363,325,3),(364,106,11),(365,208,15),(366,208,27),(367,222,39),(368,14,43),(369,272,12),(370,124,29),(371,126,6),(372,99,47),(373,33,36),(374,62,8),(375,484,20),(376,484,32),(377,228,41),(378,244,20),(379,325,46),(380,218,16),(381,236,35),(382,67,44),(383,166,30),(384,127,2),(385,400,32),(386,309,22),(387,58,7),(388,116,19),(389,367,35),(390,22,17),(391,61,18),(392,155,20),(393,27,5),(394,73,25),(395,359,11),(396,436,47),(397,222,6),(398,167,22),(399,479,2),(400,73,20),(401,271,2),(402,142,20),(403,230,26),(404,45,17),(405,282,7),(406,128,12),(407,479,30),(408,240,17),(409,74,41),(410,264,29),(411,294,5),(412,54,4),(413,205,39),(414,248,48),(415,473,49),(416,167,8),(417,66,3),(418,280,25),(419,422,9),(420,106,13),(421,472,6),(422,217,7),(423,146,31),(424,5,7),(425,295,33),(426,313,22),(427,58,3),(428,304,5),(429,42,32),(430,113,47),(431,368,29),(432,124,31),(433,293,5),(434,152,17),(435,346,10),(436,426,34),(437,80,45),(438,238,30),(439,326,2),(440,369,5),(441,379,14),(442,2,22),(443,392,44),(444,411,28),(445,82,30),(446,136,15),(447,440,38),(448,435,4),(449,288,16),(450,218,41),(451,432,31),(452,460,49),(453,212,19),(454,364,32),(455,98,22),(456,270,45),(457,225,20),(458,436,11),(459,75,4),(460,6,24),(461,139,27),(462,322,15),(463,397,49),(464,398,36),(465,474,42),(466,144,49),(467,420,33),(468,24,1),(469,248,3),(470,5,7),(471,234,38),(472,366,15),(473,497,5),(474,324,43),(475,154,36),(476,58,30),(477,24,40),(478,383,21),(479,86,17),(480,341,28),(481,173,32),(482,317,27),(483,152,11),(484,335,26),(485,345,44),(486,355,16),(487,230,46),(488,321,48),(489,31,11),(490,77,10),(491,417,13),(492,259,28),(493,208,26),(494,426,10),(495,463,28),(496,420,41),(497,329,50),(498,126,31),(499,12,2),(500,207,49);
/*!40000 ALTER TABLE `historial_pagos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `historial_pagos_f1`
--

DROP TABLE IF EXISTS `historial_pagos_f1`;
/*!50001 DROP VIEW IF EXISTS `historial_pagos_f1`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `historial_pagos_f1` AS SELECT 
 1 AS `id_historial_pago`,
 1 AS `id_pago`,
 1 AS `id_grupo`,
 1 AS `num_integrantes`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `historial_pagos_f2`
--

DROP TABLE IF EXISTS `historial_pagos_f2`;
/*!50001 DROP VIEW IF EXISTS `historial_pagos_f2`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `historial_pagos_f2` AS SELECT 
 1 AS `id_historial_pago`,
 1 AS `id_pago`,
 1 AS `id_grupo`,
 1 AS `num_integrantes`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `historial_pagos_f3`
--

DROP TABLE IF EXISTS `historial_pagos_f3`;
/*!50001 DROP VIEW IF EXISTS `historial_pagos_f3`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `historial_pagos_f3` AS SELECT 
 1 AS `id_historial_pago`,
 1 AS `id_pago`,
 1 AS `id_grupo`,
 1 AS `num_integrantes`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `notificacion`
--

DROP TABLE IF EXISTS `notificacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notificacion` (
  `id_notificacion` int NOT NULL AUTO_INCREMENT,
  `id_usuario` int NOT NULL,
  `mensaje` text NOT NULL,
  `fecha_envio` date NOT NULL,
  `estado` enum('pendiente','leída','eliminada') NOT NULL,
  PRIMARY KEY (`id_notificacion`),
  KEY `id_usuario` (`id_usuario`),
  CONSTRAINT `notificacion_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=501 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notificacion`
--

LOCK TABLES `notificacion` WRITE;
/*!40000 ALTER TABLE `notificacion` DISABLE KEYS */;
INSERT INTO `notificacion` VALUES (1,158,'Pago pendiente.','2024-08-19','pendiente'),(2,44,'Tu pago fue recibido.','2025-03-22','leída'),(3,238,'Tu pago fue recibido.','2025-03-12','eliminada'),(4,296,'Pago pendiente.','2025-05-04','eliminada'),(5,144,'Pago pendiente.','2024-11-20','leída'),(6,264,'Pago pendiente.','2024-11-26','eliminada'),(7,467,'Recuerda realizar tu pago mensual.','2025-03-25','pendiente'),(8,339,'Se ha actualizado el grupo.','2024-06-15','leída'),(9,157,'Tu pago fue recibido.','2025-02-25','leída'),(10,419,'Se ha actualizado el grupo.','2024-06-06','eliminada'),(11,234,'Se ha actualizado el grupo.','2024-10-13','eliminada'),(12,477,'Nuevo integrante añadido.','2025-05-02','pendiente'),(13,120,'Pago pendiente.','2025-01-29','eliminada'),(14,362,'Recuerda realizar tu pago mensual.','2024-10-03','leída'),(15,143,'Nuevo integrante añadido.','2024-09-01','leída'),(16,131,'Nuevo integrante añadido.','2024-06-17','pendiente'),(17,229,'Recuerda realizar tu pago mensual.','2024-11-07','leída'),(18,424,'Se ha actualizado el grupo.','2025-04-15','eliminada'),(19,104,'Tu pago fue recibido.','2025-02-08','eliminada'),(20,23,'Se ha actualizado el grupo.','2025-04-27','pendiente'),(21,23,'Nuevo integrante añadido.','2024-06-23','leída'),(22,404,'Pago pendiente.','2024-12-05','pendiente'),(23,310,'Pago pendiente.','2024-07-17','pendiente'),(24,303,'Pago pendiente.','2024-06-23','leída'),(25,9,'Tu pago fue recibido.','2025-04-04','leída'),(26,254,'Nuevo integrante añadido.','2024-11-19','eliminada'),(27,241,'Nuevo integrante añadido.','2025-02-28','pendiente'),(28,191,'Pago pendiente.','2024-10-31','eliminada'),(29,95,'Tu pago fue recibido.','2024-09-22','eliminada'),(30,461,'Se ha actualizado el grupo.','2025-04-18','leída'),(31,318,'Se ha actualizado el grupo.','2024-06-05','leída'),(32,16,'Tu pago fue recibido.','2024-06-17','pendiente'),(33,64,'Nuevo integrante añadido.','2025-01-20','leída'),(34,246,'Recuerda realizar tu pago mensual.','2025-04-02','leída'),(35,346,'Nuevo integrante añadido.','2024-06-21','pendiente'),(36,159,'Nuevo integrante añadido.','2025-02-03','eliminada'),(37,477,'Se ha actualizado el grupo.','2024-08-11','leída'),(38,101,'Se ha actualizado el grupo.','2025-02-25','eliminada'),(39,202,'Nuevo integrante añadido.','2024-07-03','eliminada'),(40,221,'Se ha actualizado el grupo.','2025-03-31','pendiente'),(41,185,'Se ha actualizado el grupo.','2024-11-26','eliminada'),(42,481,'Recuerda realizar tu pago mensual.','2025-02-02','pendiente'),(43,162,'Tu pago fue recibido.','2025-02-08','eliminada'),(44,12,'Se ha actualizado el grupo.','2025-01-06','pendiente'),(45,198,'Se ha actualizado el grupo.','2025-05-11','pendiente'),(46,399,'Se ha actualizado el grupo.','2025-02-12','pendiente'),(47,368,'Pago pendiente.','2024-10-17','eliminada'),(48,241,'Nuevo integrante añadido.','2024-11-15','leída'),(49,420,'Se ha actualizado el grupo.','2024-11-19','eliminada'),(50,475,'Recuerda realizar tu pago mensual.','2024-12-07','eliminada'),(51,434,'Pago pendiente.','2024-07-29','pendiente'),(52,307,'Nuevo integrante añadido.','2024-11-28','eliminada'),(53,391,'Se ha actualizado el grupo.','2025-05-23','pendiente'),(54,54,'Nuevo integrante añadido.','2024-11-13','pendiente'),(55,144,'Nuevo integrante añadido.','2024-06-21','eliminada'),(56,475,'Nuevo integrante añadido.','2024-08-04','pendiente'),(57,111,'Nuevo integrante añadido.','2024-10-17','leída'),(58,340,'Nuevo integrante añadido.','2024-08-19','eliminada'),(59,193,'Pago pendiente.','2024-06-14','eliminada'),(60,489,'Recuerda realizar tu pago mensual.','2024-08-18','pendiente'),(61,207,'Tu pago fue recibido.','2025-02-26','eliminada'),(62,89,'Se ha actualizado el grupo.','2024-07-26','pendiente'),(63,147,'Pago pendiente.','2025-01-14','pendiente'),(64,26,'Tu pago fue recibido.','2025-03-04','leída'),(65,481,'Se ha actualizado el grupo.','2024-10-14','eliminada'),(66,224,'Tu pago fue recibido.','2024-08-03','eliminada'),(67,455,'Recuerda realizar tu pago mensual.','2025-02-21','pendiente'),(68,476,'Se ha actualizado el grupo.','2024-12-18','pendiente'),(69,469,'Recuerda realizar tu pago mensual.','2024-10-13','eliminada'),(70,462,'Se ha actualizado el grupo.','2024-11-14','eliminada'),(71,138,'Se ha actualizado el grupo.','2025-01-25','eliminada'),(72,284,'Pago pendiente.','2025-04-18','leída'),(73,119,'Recuerda realizar tu pago mensual.','2025-03-17','pendiente'),(74,295,'Pago pendiente.','2024-09-03','leída'),(75,114,'Tu pago fue recibido.','2024-09-01','pendiente'),(76,407,'Nuevo integrante añadido.','2025-04-07','leída'),(77,212,'Tu pago fue recibido.','2025-01-13','eliminada'),(78,132,'Pago pendiente.','2024-10-04','pendiente'),(79,9,'Pago pendiente.','2024-07-30','pendiente'),(80,129,'Pago pendiente.','2024-07-17','leída'),(81,98,'Se ha actualizado el grupo.','2025-01-21','leída'),(82,227,'Tu pago fue recibido.','2024-08-07','eliminada'),(83,369,'Pago pendiente.','2025-05-24','eliminada'),(84,211,'Pago pendiente.','2024-10-25','pendiente'),(85,312,'Nuevo integrante añadido.','2025-05-24','eliminada'),(86,119,'Recuerda realizar tu pago mensual.','2024-12-19','pendiente'),(87,85,'Nuevo integrante añadido.','2024-06-12','pendiente'),(88,143,'Tu pago fue recibido.','2025-02-21','pendiente'),(89,267,'Tu pago fue recibido.','2025-01-23','pendiente'),(90,103,'Nuevo integrante añadido.','2024-06-29','pendiente'),(91,134,'Se ha actualizado el grupo.','2025-01-10','leída'),(92,137,'Se ha actualizado el grupo.','2025-01-17','pendiente'),(93,349,'Se ha actualizado el grupo.','2024-10-14','eliminada'),(94,433,'Pago pendiente.','2025-02-22','eliminada'),(95,208,'Nuevo integrante añadido.','2024-06-13','pendiente'),(96,264,'Pago pendiente.','2024-08-10','pendiente'),(97,157,'Pago pendiente.','2025-04-09','leída'),(98,18,'Recuerda realizar tu pago mensual.','2024-08-31','pendiente'),(99,261,'Tu pago fue recibido.','2024-06-20','pendiente'),(100,320,'Tu pago fue recibido.','2024-12-07','pendiente'),(101,246,'Pago pendiente.','2024-09-07','leída'),(102,190,'Pago pendiente.','2024-09-17','pendiente'),(103,342,'Recuerda realizar tu pago mensual.','2025-05-28','eliminada'),(104,364,'Nuevo integrante añadido.','2025-03-01','eliminada'),(105,355,'Se ha actualizado el grupo.','2024-10-04','pendiente'),(106,193,'Nuevo integrante añadido.','2025-04-23','eliminada'),(107,183,'Nuevo integrante añadido.','2025-01-04','pendiente'),(108,9,'Pago pendiente.','2024-08-05','pendiente'),(109,207,'Tu pago fue recibido.','2024-07-03','leída'),(110,256,'Nuevo integrante añadido.','2025-01-30','leída'),(111,286,'Pago pendiente.','2024-11-26','pendiente'),(112,223,'Recuerda realizar tu pago mensual.','2024-10-12','pendiente'),(113,176,'Nuevo integrante añadido.','2024-06-30','eliminada'),(114,13,'Tu pago fue recibido.','2025-01-21','pendiente'),(115,354,'Se ha actualizado el grupo.','2024-11-25','eliminada'),(116,219,'Pago pendiente.','2024-08-25','pendiente'),(117,97,'Pago pendiente.','2024-09-01','leída'),(118,167,'Nuevo integrante añadido.','2024-12-12','leída'),(119,66,'Tu pago fue recibido.','2024-11-02','eliminada'),(120,319,'Tu pago fue recibido.','2024-08-04','leída'),(121,182,'Pago pendiente.','2025-02-02','pendiente'),(122,123,'Tu pago fue recibido.','2024-08-27','pendiente'),(123,209,'Se ha actualizado el grupo.','2024-10-04','eliminada'),(124,367,'Nuevo integrante añadido.','2024-09-16','pendiente'),(125,76,'Se ha actualizado el grupo.','2024-10-24','eliminada'),(126,212,'Nuevo integrante añadido.','2024-12-28','leída'),(127,363,'Pago pendiente.','2024-07-04','eliminada'),(128,122,'Tu pago fue recibido.','2025-01-21','eliminada'),(129,291,'Nuevo integrante añadido.','2024-09-15','eliminada'),(130,328,'Pago pendiente.','2024-09-11','eliminada'),(131,444,'Recuerda realizar tu pago mensual.','2024-08-04','leída'),(132,389,'Tu pago fue recibido.','2024-06-23','eliminada'),(133,25,'Pago pendiente.','2025-02-06','eliminada'),(134,296,'Nuevo integrante añadido.','2024-11-15','leída'),(135,174,'Nuevo integrante añadido.','2024-09-22','eliminada'),(136,446,'Nuevo integrante añadido.','2024-08-16','eliminada'),(137,434,'Pago pendiente.','2024-08-16','pendiente'),(138,336,'Se ha actualizado el grupo.','2024-09-28','leída'),(139,324,'Pago pendiente.','2024-06-24','leída'),(140,337,'Tu pago fue recibido.','2025-04-10','leída'),(141,73,'Pago pendiente.','2025-04-04','pendiente'),(142,46,'Recuerda realizar tu pago mensual.','2024-06-20','leída'),(143,320,'Tu pago fue recibido.','2024-12-18','leída'),(144,429,'Se ha actualizado el grupo.','2025-05-26','eliminada'),(145,269,'Se ha actualizado el grupo.','2025-03-15','pendiente'),(146,473,'Nuevo integrante añadido.','2024-11-25','eliminada'),(147,118,'Nuevo integrante añadido.','2024-11-02','leída'),(148,31,'Nuevo integrante añadido.','2024-11-23','pendiente'),(149,187,'Recuerda realizar tu pago mensual.','2024-10-01','eliminada'),(150,185,'Tu pago fue recibido.','2025-03-29','pendiente'),(151,34,'Recuerda realizar tu pago mensual.','2024-12-19','leída'),(152,33,'Nuevo integrante añadido.','2024-11-04','pendiente'),(153,267,'Nuevo integrante añadido.','2025-01-10','eliminada'),(154,63,'Nuevo integrante añadido.','2025-01-05','pendiente'),(155,90,'Pago pendiente.','2024-12-22','eliminada'),(156,299,'Tu pago fue recibido.','2025-01-14','pendiente'),(157,410,'Tu pago fue recibido.','2024-06-20','pendiente'),(158,378,'Se ha actualizado el grupo.','2025-05-23','eliminada'),(159,87,'Recuerda realizar tu pago mensual.','2024-09-18','eliminada'),(160,319,'Nuevo integrante añadido.','2024-07-08','pendiente'),(161,352,'Se ha actualizado el grupo.','2025-01-07','leída'),(162,149,'Nuevo integrante añadido.','2024-10-07','leída'),(163,155,'Pago pendiente.','2024-11-29','eliminada'),(164,328,'Nuevo integrante añadido.','2024-06-30','eliminada'),(165,434,'Se ha actualizado el grupo.','2024-06-21','eliminada'),(166,177,'Tu pago fue recibido.','2025-05-04','pendiente'),(167,495,'Se ha actualizado el grupo.','2024-09-10','leída'),(168,466,'Pago pendiente.','2024-08-31','leída'),(169,202,'Pago pendiente.','2025-03-28','pendiente'),(170,328,'Se ha actualizado el grupo.','2025-02-19','pendiente'),(171,442,'Nuevo integrante añadido.','2025-01-25','leída'),(172,326,'Nuevo integrante añadido.','2024-10-26','pendiente'),(173,348,'Se ha actualizado el grupo.','2025-01-04','eliminada'),(174,459,'Nuevo integrante añadido.','2025-04-02','pendiente'),(175,41,'Tu pago fue recibido.','2024-08-19','pendiente'),(176,415,'Tu pago fue recibido.','2025-02-22','leída'),(177,76,'Nuevo integrante añadido.','2024-12-31','eliminada'),(178,45,'Nuevo integrante añadido.','2024-12-21','eliminada'),(179,121,'Se ha actualizado el grupo.','2025-01-19','leída'),(180,211,'Nuevo integrante añadido.','2024-10-12','eliminada'),(181,156,'Recuerda realizar tu pago mensual.','2024-06-30','pendiente'),(182,19,'Nuevo integrante añadido.','2024-07-22','leída'),(183,223,'Se ha actualizado el grupo.','2025-02-04','eliminada'),(184,134,'Se ha actualizado el grupo.','2024-11-14','pendiente'),(185,155,'Se ha actualizado el grupo.','2025-04-06','leída'),(186,398,'Pago pendiente.','2025-05-03','leída'),(187,94,'Recuerda realizar tu pago mensual.','2025-05-02','pendiente'),(188,199,'Se ha actualizado el grupo.','2024-10-23','leída'),(189,152,'Se ha actualizado el grupo.','2025-03-12','eliminada'),(190,395,'Tu pago fue recibido.','2025-02-17','leída'),(191,368,'Tu pago fue recibido.','2025-05-01','pendiente'),(192,283,'Pago pendiente.','2024-07-13','leída'),(193,19,'Se ha actualizado el grupo.','2024-12-21','pendiente'),(194,406,'Pago pendiente.','2025-01-28','leída'),(195,256,'Se ha actualizado el grupo.','2024-08-12','pendiente'),(196,1,'Pago pendiente.','2024-11-24','leída'),(197,62,'Recuerda realizar tu pago mensual.','2024-08-24','pendiente'),(198,135,'Pago pendiente.','2024-12-31','pendiente'),(199,225,'Tu pago fue recibido.','2024-07-29','leída'),(200,461,'Tu pago fue recibido.','2024-09-28','leída'),(201,237,'Recuerda realizar tu pago mensual.','2025-03-16','pendiente'),(202,6,'Se ha actualizado el grupo.','2024-08-30','eliminada'),(203,27,'Pago pendiente.','2025-02-28','eliminada'),(204,50,'Tu pago fue recibido.','2025-03-08','eliminada'),(205,123,'Pago pendiente.','2025-04-17','eliminada'),(206,104,'Tu pago fue recibido.','2024-10-02','eliminada'),(207,360,'Pago pendiente.','2025-04-19','eliminada'),(208,363,'Tu pago fue recibido.','2024-07-06','leída'),(209,492,'Pago pendiente.','2024-06-22','pendiente'),(210,61,'Pago pendiente.','2025-01-28','pendiente'),(211,182,'Nuevo integrante añadido.','2024-10-13','leída'),(212,497,'Recuerda realizar tu pago mensual.','2024-06-24','leída'),(213,250,'Nuevo integrante añadido.','2025-02-01','pendiente'),(214,340,'Se ha actualizado el grupo.','2024-08-21','leída'),(215,56,'Pago pendiente.','2024-07-12','pendiente'),(216,190,'Recuerda realizar tu pago mensual.','2025-01-17','eliminada'),(217,321,'Recuerda realizar tu pago mensual.','2024-07-11','eliminada'),(218,302,'Recuerda realizar tu pago mensual.','2025-02-17','pendiente'),(219,233,'Recuerda realizar tu pago mensual.','2024-07-01','eliminada'),(220,84,'Tu pago fue recibido.','2025-04-21','pendiente'),(221,258,'Nuevo integrante añadido.','2025-02-10','leída'),(222,267,'Pago pendiente.','2024-09-10','pendiente'),(223,79,'Pago pendiente.','2024-12-16','pendiente'),(224,281,'Nuevo integrante añadido.','2024-11-04','leída'),(225,20,'Nuevo integrante añadido.','2025-04-09','leída'),(226,325,'Se ha actualizado el grupo.','2025-05-28','leída'),(227,382,'Tu pago fue recibido.','2025-01-06','pendiente'),(228,250,'Se ha actualizado el grupo.','2025-04-16','eliminada'),(229,13,'Pago pendiente.','2025-05-24','pendiente'),(230,34,'Se ha actualizado el grupo.','2024-10-14','leída'),(231,372,'Recuerda realizar tu pago mensual.','2024-10-04','leída'),(232,227,'Se ha actualizado el grupo.','2024-07-29','eliminada'),(233,193,'Tu pago fue recibido.','2024-07-26','leída'),(234,190,'Pago pendiente.','2025-04-29','eliminada'),(235,38,'Pago pendiente.','2025-02-08','pendiente'),(236,423,'Recuerda realizar tu pago mensual.','2025-02-19','eliminada'),(237,243,'Recuerda realizar tu pago mensual.','2024-09-29','eliminada'),(238,220,'Nuevo integrante añadido.','2024-09-03','leída'),(239,194,'Recuerda realizar tu pago mensual.','2025-05-09','leída'),(240,403,'Nuevo integrante añadido.','2024-06-30','leída'),(241,373,'Nuevo integrante añadido.','2025-04-02','pendiente'),(242,478,'Tu pago fue recibido.','2024-10-20','pendiente'),(243,157,'Tu pago fue recibido.','2025-01-08','leída'),(244,89,'Tu pago fue recibido.','2024-12-18','leída'),(245,488,'Recuerda realizar tu pago mensual.','2025-02-01','pendiente'),(246,215,'Recuerda realizar tu pago mensual.','2024-07-27','eliminada'),(247,322,'Tu pago fue recibido.','2024-10-08','leída'),(248,217,'Tu pago fue recibido.','2024-07-14','pendiente'),(249,471,'Pago pendiente.','2024-11-26','eliminada'),(250,51,'Recuerda realizar tu pago mensual.','2025-02-15','eliminada'),(251,20,'Nuevo integrante añadido.','2024-11-25','eliminada'),(252,120,'Se ha actualizado el grupo.','2024-07-05','pendiente'),(253,381,'Pago pendiente.','2024-08-26','eliminada'),(254,352,'Recuerda realizar tu pago mensual.','2024-11-09','leída'),(255,261,'Se ha actualizado el grupo.','2025-03-20','leída'),(256,40,'Se ha actualizado el grupo.','2024-09-15','eliminada'),(257,94,'Tu pago fue recibido.','2024-06-06','leída'),(258,481,'Nuevo integrante añadido.','2025-02-06','leída'),(259,431,'Recuerda realizar tu pago mensual.','2025-01-20','eliminada'),(260,451,'Recuerda realizar tu pago mensual.','2024-08-23','eliminada'),(261,263,'Tu pago fue recibido.','2025-03-20','leída'),(262,407,'Tu pago fue recibido.','2025-04-14','eliminada'),(263,410,'Pago pendiente.','2024-07-01','pendiente'),(264,193,'Recuerda realizar tu pago mensual.','2024-12-08','pendiente'),(265,371,'Pago pendiente.','2025-02-11','leída'),(266,85,'Nuevo integrante añadido.','2025-05-28','eliminada'),(267,442,'Se ha actualizado el grupo.','2024-09-24','pendiente'),(268,198,'Tu pago fue recibido.','2024-09-24','eliminada'),(269,24,'Tu pago fue recibido.','2025-01-28','leída'),(270,112,'Se ha actualizado el grupo.','2024-12-29','eliminada'),(271,329,'Recuerda realizar tu pago mensual.','2024-09-09','leída'),(272,68,'Pago pendiente.','2025-02-17','eliminada'),(273,157,'Pago pendiente.','2025-03-04','eliminada'),(274,475,'Nuevo integrante añadido.','2025-03-23','leída'),(275,204,'Se ha actualizado el grupo.','2025-06-04','leída'),(276,278,'Pago pendiente.','2025-05-14','pendiente'),(277,141,'Pago pendiente.','2025-05-03','leída'),(278,134,'Se ha actualizado el grupo.','2024-09-25','pendiente'),(279,276,'Tu pago fue recibido.','2025-01-27','eliminada'),(280,87,'Pago pendiente.','2024-07-09','eliminada'),(281,68,'Se ha actualizado el grupo.','2024-08-21','leída'),(282,342,'Pago pendiente.','2025-03-09','pendiente'),(283,490,'Pago pendiente.','2024-09-06','leída'),(284,71,'Nuevo integrante añadido.','2025-01-14','eliminada'),(285,38,'Se ha actualizado el grupo.','2025-04-06','leída'),(286,129,'Pago pendiente.','2025-02-26','eliminada'),(287,184,'Recuerda realizar tu pago mensual.','2025-05-26','pendiente'),(288,95,'Nuevo integrante añadido.','2024-09-11','pendiente'),(289,74,'Recuerda realizar tu pago mensual.','2025-04-15','eliminada'),(290,24,'Recuerda realizar tu pago mensual.','2024-09-09','pendiente'),(291,36,'Pago pendiente.','2025-02-25','eliminada'),(292,152,'Nuevo integrante añadido.','2024-09-15','pendiente'),(293,265,'Tu pago fue recibido.','2024-06-16','eliminada'),(294,300,'Tu pago fue recibido.','2024-08-09','eliminada'),(295,207,'Pago pendiente.','2024-09-09','pendiente'),(296,130,'Se ha actualizado el grupo.','2024-10-19','pendiente'),(297,316,'Tu pago fue recibido.','2025-03-29','pendiente'),(298,68,'Recuerda realizar tu pago mensual.','2024-06-27','leída'),(299,165,'Nuevo integrante añadido.','2024-06-22','leída'),(300,16,'Pago pendiente.','2024-09-02','leída'),(301,242,'Tu pago fue recibido.','2024-10-27','eliminada'),(302,398,'Se ha actualizado el grupo.','2025-05-13','eliminada'),(303,188,'Recuerda realizar tu pago mensual.','2024-06-16','eliminada'),(304,261,'Nuevo integrante añadido.','2024-08-25','leída'),(305,34,'Pago pendiente.','2025-05-07','eliminada'),(306,7,'Tu pago fue recibido.','2024-07-02','pendiente'),(307,37,'Nuevo integrante añadido.','2025-01-27','eliminada'),(308,224,'Pago pendiente.','2024-08-13','pendiente'),(309,42,'Pago pendiente.','2024-08-18','pendiente'),(310,460,'Nuevo integrante añadido.','2024-08-01','eliminada'),(311,82,'Se ha actualizado el grupo.','2024-08-14','eliminada'),(312,438,'Se ha actualizado el grupo.','2025-01-27','pendiente'),(313,436,'Nuevo integrante añadido.','2024-08-15','leída'),(314,240,'Se ha actualizado el grupo.','2024-08-19','eliminada'),(315,28,'Se ha actualizado el grupo.','2025-03-28','eliminada'),(316,4,'Se ha actualizado el grupo.','2025-01-15','leída'),(317,407,'Recuerda realizar tu pago mensual.','2024-09-30','eliminada'),(318,303,'Tu pago fue recibido.','2025-02-07','pendiente'),(319,179,'Recuerda realizar tu pago mensual.','2024-10-10','leída'),(320,181,'Tu pago fue recibido.','2024-09-14','pendiente'),(321,86,'Se ha actualizado el grupo.','2024-07-16','pendiente'),(322,37,'Se ha actualizado el grupo.','2024-07-06','leída'),(323,172,'Nuevo integrante añadido.','2025-02-18','pendiente'),(324,394,'Se ha actualizado el grupo.','2024-08-02','eliminada'),(325,477,'Nuevo integrante añadido.','2025-05-07','eliminada'),(326,358,'Recuerda realizar tu pago mensual.','2024-10-13','leída'),(327,389,'Pago pendiente.','2025-05-27','eliminada'),(328,112,'Tu pago fue recibido.','2024-10-15','eliminada'),(329,216,'Tu pago fue recibido.','2024-12-19','eliminada'),(330,464,'Pago pendiente.','2025-04-24','eliminada'),(331,31,'Pago pendiente.','2025-03-30','eliminada'),(332,422,'Se ha actualizado el grupo.','2024-10-09','leída'),(333,346,'Se ha actualizado el grupo.','2024-08-25','eliminada'),(334,309,'Se ha actualizado el grupo.','2024-06-26','leída'),(335,267,'Se ha actualizado el grupo.','2024-09-03','leída'),(336,401,'Pago pendiente.','2024-06-12','pendiente'),(337,480,'Pago pendiente.','2024-09-15','eliminada'),(338,93,'Se ha actualizado el grupo.','2025-04-30','pendiente'),(339,352,'Pago pendiente.','2025-05-07','leída'),(340,390,'Se ha actualizado el grupo.','2024-06-23','leída'),(341,276,'Tu pago fue recibido.','2025-04-29','pendiente'),(342,159,'Pago pendiente.','2024-08-04','pendiente'),(343,237,'Tu pago fue recibido.','2025-06-04','pendiente'),(344,439,'Pago pendiente.','2025-05-24','pendiente'),(345,109,'Se ha actualizado el grupo.','2024-07-18','leída'),(346,210,'Recuerda realizar tu pago mensual.','2024-07-15','eliminada'),(347,418,'Recuerda realizar tu pago mensual.','2024-11-08','leída'),(348,104,'Tu pago fue recibido.','2024-06-08','eliminada'),(349,88,'Recuerda realizar tu pago mensual.','2024-09-24','pendiente'),(350,445,'Pago pendiente.','2025-05-10','eliminada'),(351,164,'Se ha actualizado el grupo.','2025-01-19','leída'),(352,244,'Recuerda realizar tu pago mensual.','2024-09-05','leída'),(353,489,'Recuerda realizar tu pago mensual.','2025-03-15','leída'),(354,162,'Se ha actualizado el grupo.','2024-10-20','eliminada'),(355,69,'Recuerda realizar tu pago mensual.','2024-07-15','eliminada'),(356,453,'Pago pendiente.','2024-06-09','pendiente'),(357,280,'Tu pago fue recibido.','2024-07-18','eliminada'),(358,67,'Nuevo integrante añadido.','2025-06-05','leída'),(359,465,'Nuevo integrante añadido.','2025-03-21','leída'),(360,489,'Nuevo integrante añadido.','2025-02-05','pendiente'),(361,105,'Se ha actualizado el grupo.','2024-11-19','eliminada'),(362,87,'Pago pendiente.','2024-12-30','eliminada'),(363,371,'Se ha actualizado el grupo.','2024-07-09','leída'),(364,171,'Nuevo integrante añadido.','2024-11-03','pendiente'),(365,72,'Pago pendiente.','2024-10-08','eliminada'),(366,1,'Recuerda realizar tu pago mensual.','2025-02-27','eliminada'),(367,244,'Pago pendiente.','2025-02-02','pendiente'),(368,398,'Pago pendiente.','2024-11-29','eliminada'),(369,191,'Recuerda realizar tu pago mensual.','2024-09-07','pendiente'),(370,101,'Nuevo integrante añadido.','2025-05-25','eliminada'),(371,188,'Nuevo integrante añadido.','2024-07-19','pendiente'),(372,51,'Tu pago fue recibido.','2024-12-02','leída'),(373,174,'Nuevo integrante añadido.','2024-08-05','leída'),(374,466,'Recuerda realizar tu pago mensual.','2025-05-31','eliminada'),(375,361,'Pago pendiente.','2024-10-24','eliminada'),(376,415,'Tu pago fue recibido.','2025-02-19','pendiente'),(377,71,'Se ha actualizado el grupo.','2024-11-22','leída'),(378,193,'Tu pago fue recibido.','2025-04-10','pendiente'),(379,332,'Nuevo integrante añadido.','2024-12-26','eliminada'),(380,167,'Nuevo integrante añadido.','2024-08-09','eliminada'),(381,266,'Nuevo integrante añadido.','2025-03-26','eliminada'),(382,304,'Nuevo integrante añadido.','2025-05-09','leída'),(383,171,'Se ha actualizado el grupo.','2024-11-07','leída'),(384,379,'Pago pendiente.','2025-01-14','pendiente'),(385,401,'Se ha actualizado el grupo.','2025-06-02','eliminada'),(386,248,'Recuerda realizar tu pago mensual.','2025-05-23','leída'),(387,205,'Nuevo integrante añadido.','2025-01-14','eliminada'),(388,144,'Recuerda realizar tu pago mensual.','2025-04-27','pendiente'),(389,391,'Nuevo integrante añadido.','2024-07-29','pendiente'),(390,436,'Nuevo integrante añadido.','2024-06-24','leída'),(391,371,'Nuevo integrante añadido.','2024-08-30','pendiente'),(392,390,'Nuevo integrante añadido.','2024-12-29','leída'),(393,333,'Recuerda realizar tu pago mensual.','2024-09-10','pendiente'),(394,365,'Nuevo integrante añadido.','2024-06-12','pendiente'),(395,167,'Nuevo integrante añadido.','2025-05-10','eliminada'),(396,206,'Nuevo integrante añadido.','2025-05-14','pendiente'),(397,102,'Tu pago fue recibido.','2025-01-03','eliminada'),(398,277,'Pago pendiente.','2025-02-03','leída'),(399,83,'Se ha actualizado el grupo.','2024-06-14','leída'),(400,370,'Tu pago fue recibido.','2024-09-07','pendiente'),(401,376,'Recuerda realizar tu pago mensual.','2024-10-30','eliminada'),(402,277,'Tu pago fue recibido.','2025-01-02','leída'),(403,59,'Nuevo integrante añadido.','2025-01-31','pendiente'),(404,255,'Recuerda realizar tu pago mensual.','2024-12-27','eliminada'),(405,195,'Pago pendiente.','2024-09-03','eliminada'),(406,287,'Nuevo integrante añadido.','2025-02-28','eliminada'),(407,453,'Tu pago fue recibido.','2024-12-03','leída'),(408,77,'Pago pendiente.','2025-01-05','leída'),(409,51,'Se ha actualizado el grupo.','2024-12-28','leída'),(410,178,'Tu pago fue recibido.','2025-04-15','leída'),(411,197,'Se ha actualizado el grupo.','2025-04-10','eliminada'),(412,33,'Nuevo integrante añadido.','2025-03-22','pendiente'),(413,419,'Se ha actualizado el grupo.','2024-08-16','leída'),(414,423,'Pago pendiente.','2024-12-27','leída'),(415,400,'Nuevo integrante añadido.','2024-09-12','pendiente'),(416,435,'Pago pendiente.','2024-06-12','pendiente'),(417,360,'Pago pendiente.','2024-07-11','pendiente'),(418,211,'Pago pendiente.','2025-04-12','eliminada'),(419,44,'Pago pendiente.','2025-04-12','pendiente'),(420,393,'Nuevo integrante añadido.','2025-04-08','pendiente'),(421,198,'Pago pendiente.','2025-03-14','pendiente'),(422,355,'Nuevo integrante añadido.','2024-12-13','pendiente'),(423,491,'Recuerda realizar tu pago mensual.','2024-07-08','leída'),(424,294,'Pago pendiente.','2024-12-31','leída'),(425,462,'Recuerda realizar tu pago mensual.','2025-03-13','pendiente'),(426,56,'Nuevo integrante añadido.','2024-07-04','leída'),(427,153,'Tu pago fue recibido.','2024-11-15','eliminada'),(428,486,'Tu pago fue recibido.','2025-06-02','pendiente'),(429,295,'Tu pago fue recibido.','2024-06-27','eliminada'),(430,223,'Pago pendiente.','2024-07-08','eliminada'),(431,257,'Se ha actualizado el grupo.','2024-08-05','pendiente'),(432,312,'Tu pago fue recibido.','2025-04-17','pendiente'),(433,278,'Se ha actualizado el grupo.','2025-05-07','pendiente'),(434,329,'Recuerda realizar tu pago mensual.','2024-12-12','leída'),(435,253,'Tu pago fue recibido.','2025-02-02','eliminada'),(436,301,'Se ha actualizado el grupo.','2024-08-30','leída'),(437,62,'Recuerda realizar tu pago mensual.','2025-05-01','leída'),(438,439,'Se ha actualizado el grupo.','2024-07-08','leída'),(439,318,'Se ha actualizado el grupo.','2024-09-05','eliminada'),(440,102,'Tu pago fue recibido.','2024-06-29','eliminada'),(441,356,'Pago pendiente.','2024-12-27','eliminada'),(442,122,'Recuerda realizar tu pago mensual.','2024-10-15','eliminada'),(443,404,'Nuevo integrante añadido.','2025-03-09','leída'),(444,73,'Se ha actualizado el grupo.','2024-12-09','eliminada'),(445,186,'Recuerda realizar tu pago mensual.','2024-07-26','leída'),(446,229,'Pago pendiente.','2024-08-09','leída'),(447,141,'Pago pendiente.','2024-07-16','eliminada'),(448,332,'Tu pago fue recibido.','2024-08-10','leída'),(449,473,'Pago pendiente.','2024-12-04','pendiente'),(450,266,'Nuevo integrante añadido.','2024-07-19','eliminada'),(451,100,'Se ha actualizado el grupo.','2025-05-02','pendiente'),(452,25,'Recuerda realizar tu pago mensual.','2025-03-01','pendiente'),(453,255,'Pago pendiente.','2025-01-05','eliminada'),(454,38,'Se ha actualizado el grupo.','2024-09-16','eliminada'),(455,479,'Se ha actualizado el grupo.','2024-12-29','leída'),(456,144,'Tu pago fue recibido.','2024-08-10','pendiente'),(457,374,'Pago pendiente.','2024-06-10','eliminada'),(458,445,'Nuevo integrante añadido.','2025-02-16','leída'),(459,293,'Se ha actualizado el grupo.','2025-05-24','leída'),(460,97,'Recuerda realizar tu pago mensual.','2025-04-29','leída'),(461,404,'Nuevo integrante añadido.','2024-07-29','pendiente'),(462,247,'Tu pago fue recibido.','2024-08-09','pendiente'),(463,319,'Nuevo integrante añadido.','2025-02-22','leída'),(464,321,'Nuevo integrante añadido.','2025-02-02','leída'),(465,161,'Recuerda realizar tu pago mensual.','2025-05-24','leída'),(466,274,'Recuerda realizar tu pago mensual.','2025-05-01','eliminada'),(467,314,'Pago pendiente.','2024-10-23','pendiente'),(468,229,'Se ha actualizado el grupo.','2024-12-25','eliminada'),(469,50,'Nuevo integrante añadido.','2024-07-25','eliminada'),(470,455,'Nuevo integrante añadido.','2024-08-25','leída'),(471,207,'Pago pendiente.','2024-06-06','leída'),(472,353,'Se ha actualizado el grupo.','2024-09-26','leída'),(473,496,'Pago pendiente.','2024-08-08','leída'),(474,462,'Recuerda realizar tu pago mensual.','2024-11-27','leída'),(475,27,'Tu pago fue recibido.','2025-01-16','eliminada'),(476,120,'Tu pago fue recibido.','2024-08-07','leída'),(477,71,'Recuerda realizar tu pago mensual.','2024-10-14','leída'),(478,435,'Nuevo integrante añadido.','2025-05-09','eliminada'),(479,369,'Pago pendiente.','2024-10-05','eliminada'),(480,29,'Tu pago fue recibido.','2025-05-10','pendiente'),(481,291,'Nuevo integrante añadido.','2025-04-27','leída'),(482,455,'Recuerda realizar tu pago mensual.','2024-11-30','leída'),(483,346,'Se ha actualizado el grupo.','2024-07-08','eliminada'),(484,353,'Pago pendiente.','2025-05-10','pendiente'),(485,490,'Se ha actualizado el grupo.','2025-04-29','eliminada'),(486,72,'Tu pago fue recibido.','2025-03-23','pendiente'),(487,350,'Se ha actualizado el grupo.','2025-05-16','pendiente'),(488,318,'Recuerda realizar tu pago mensual.','2025-01-25','pendiente'),(489,231,'Nuevo integrante añadido.','2024-12-05','pendiente'),(490,182,'Se ha actualizado el grupo.','2025-02-08','eliminada'),(491,452,'Pago pendiente.','2024-08-28','pendiente'),(492,453,'Se ha actualizado el grupo.','2025-03-10','eliminada'),(493,420,'Recuerda realizar tu pago mensual.','2025-05-09','pendiente'),(494,367,'Nuevo integrante añadido.','2025-03-14','leída'),(495,35,'Pago pendiente.','2025-05-11','pendiente'),(496,285,'Nuevo integrante añadido.','2024-10-18','eliminada'),(497,90,'Nuevo integrante añadido.','2025-01-01','leída'),(498,446,'Tu pago fue recibido.','2024-08-26','leída'),(499,328,'Pago pendiente.','2024-12-05','leída'),(500,382,'Recuerda realizar tu pago mensual.','2025-05-18','pendiente');
/*!40000 ALTER TABLE `notificacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `notificacion_f1`
--

DROP TABLE IF EXISTS `notificacion_f1`;
/*!50001 DROP VIEW IF EXISTS `notificacion_f1`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `notificacion_f1` AS SELECT 
 1 AS `id_notificacion`,
 1 AS `id_usuario`,
 1 AS `mensaje`,
 1 AS `fecha_envio`,
 1 AS `estado`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `notificacion_f2`
--

DROP TABLE IF EXISTS `notificacion_f2`;
/*!50001 DROP VIEW IF EXISTS `notificacion_f2`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `notificacion_f2` AS SELECT 
 1 AS `id_notificacion`,
 1 AS `id_usuario`,
 1 AS `mensaje`,
 1 AS `fecha_envio`,
 1 AS `estado`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `notificacion_f3`
--

DROP TABLE IF EXISTS `notificacion_f3`;
/*!50001 DROP VIEW IF EXISTS `notificacion_f3`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `notificacion_f3` AS SELECT 
 1 AS `id_notificacion`,
 1 AS `id_usuario`,
 1 AS `mensaje`,
 1 AS `fecha_envio`,
 1 AS `estado`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `pago`
--

DROP TABLE IF EXISTS `pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pago` (
  `id_pago` int NOT NULL AUTO_INCREMENT,
  `id_usuario` int NOT NULL,
  `monto` decimal(10,2) NOT NULL,
  `fecha_pago` date NOT NULL,
  PRIMARY KEY (`id_pago`),
  KEY `id_usuario` (`id_usuario`),
  CONSTRAINT `pago_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=501 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pago`
--

LOCK TABLES `pago` WRITE;
/*!40000 ALTER TABLE `pago` DISABLE KEYS */;
INSERT INTO `pago` VALUES (1,1,63.15,'2025-02-28'),(2,2,29.54,'2025-03-14'),(3,3,38.86,'2025-04-21'),(4,4,113.31,'2025-01-10'),(5,5,133.55,'2025-01-22'),(6,6,9.50,'2024-11-02'),(7,7,114.85,'2024-07-30'),(8,8,56.23,'2025-05-22'),(9,9,25.97,'2025-05-12'),(10,10,115.30,'2024-07-08'),(11,11,121.30,'2024-06-06'),(12,12,31.05,'2025-01-05'),(13,13,139.96,'2024-12-01'),(14,14,33.50,'2025-01-20'),(15,15,17.38,'2025-01-18'),(16,16,47.85,'2024-09-06'),(17,17,111.92,'2025-03-04'),(18,18,11.88,'2024-06-06'),(19,19,11.50,'2024-06-22'),(20,20,54.43,'2024-10-08'),(21,21,2.58,'2024-08-04'),(22,22,22.38,'2025-05-03'),(23,23,25.01,'2024-12-25'),(24,24,114.24,'2024-11-16'),(25,25,91.38,'2025-04-23'),(26,26,43.06,'2025-03-08'),(27,27,129.92,'2025-01-16'),(28,28,17.60,'2025-04-25'),(29,29,88.21,'2025-02-03'),(30,30,19.52,'2024-10-05'),(31,31,129.84,'2025-02-06'),(32,32,43.75,'2024-08-30'),(33,33,58.27,'2024-05-31'),(34,34,74.76,'2024-10-07'),(35,35,115.54,'2025-04-18'),(36,36,84.36,'2024-11-12'),(37,37,140.72,'2024-08-08'),(38,38,111.48,'2024-08-27'),(39,39,122.51,'2024-08-10'),(40,40,138.39,'2024-07-21'),(41,41,65.54,'2024-07-30'),(42,42,115.55,'2024-12-31'),(43,43,79.52,'2024-06-24'),(44,44,4.74,'2025-04-22'),(45,45,22.72,'2025-05-17'),(46,46,136.00,'2024-08-31'),(47,47,57.57,'2024-05-30'),(48,48,131.33,'2025-05-25'),(49,49,81.44,'2025-04-14'),(50,50,47.45,'2024-11-28'),(51,51,40.99,'2025-01-10'),(52,52,146.29,'2025-03-08'),(53,53,47.17,'2025-05-09'),(54,54,17.12,'2025-05-01'),(55,55,51.57,'2025-02-15'),(56,56,103.30,'2025-05-24'),(57,57,133.69,'2024-08-24'),(58,58,104.99,'2025-05-01'),(59,59,110.42,'2025-01-18'),(60,60,59.32,'2024-06-16'),(61,61,129.56,'2024-11-16'),(62,62,100.21,'2024-12-31'),(63,63,95.89,'2024-08-30'),(64,64,106.27,'2024-06-01'),(65,65,130.01,'2024-08-19'),(66,66,109.58,'2025-02-19'),(67,67,61.33,'2024-06-24'),(68,68,136.15,'2024-07-03'),(69,69,79.22,'2025-01-14'),(70,70,44.01,'2024-12-09'),(71,71,99.07,'2025-04-16'),(72,72,62.46,'2024-12-31'),(73,73,96.06,'2025-03-16'),(74,74,118.46,'2024-10-08'),(75,75,100.73,'2024-07-24'),(76,76,138.85,'2024-09-11'),(77,77,62.94,'2025-03-21'),(78,78,48.76,'2024-08-15'),(79,79,98.22,'2024-09-04'),(80,80,15.71,'2024-12-26'),(81,81,71.22,'2025-05-26'),(82,82,114.49,'2024-09-14'),(83,83,133.07,'2025-05-08'),(84,84,25.21,'2024-08-01'),(85,85,108.07,'2025-05-20'),(86,86,108.15,'2024-11-09'),(87,87,45.07,'2024-10-30'),(88,88,135.58,'2024-11-16'),(89,89,138.29,'2024-06-27'),(90,90,142.21,'2024-07-05'),(91,91,30.08,'2024-07-07'),(92,92,128.26,'2025-03-21'),(93,93,89.43,'2024-06-28'),(94,94,111.82,'2024-09-27'),(95,95,21.04,'2024-10-29'),(96,96,108.08,'2025-04-06'),(97,97,116.15,'2025-02-01'),(98,98,45.92,'2024-07-31'),(99,99,117.61,'2025-02-23'),(100,100,32.51,'2024-12-27'),(101,101,2.93,'2024-06-24'),(102,102,43.72,'2024-09-30'),(103,103,121.71,'2024-08-12'),(104,104,105.09,'2024-06-27'),(105,105,90.78,'2025-03-31'),(106,106,43.30,'2025-04-29'),(107,107,29.41,'2025-01-26'),(108,108,55.55,'2024-12-02'),(109,109,13.13,'2024-08-11'),(110,110,6.75,'2025-03-17'),(111,111,47.17,'2025-01-29'),(112,112,52.68,'2024-11-01'),(113,113,131.44,'2025-02-12'),(114,114,122.26,'2024-11-28'),(115,115,28.95,'2025-04-19'),(116,116,57.45,'2024-09-28'),(117,117,125.82,'2024-12-31'),(118,118,32.87,'2024-10-16'),(119,119,32.57,'2025-01-09'),(120,120,7.44,'2025-01-27'),(121,121,93.45,'2025-03-07'),(122,122,64.72,'2025-01-22'),(123,123,117.51,'2024-06-03'),(124,124,2.30,'2024-06-07'),(125,125,70.87,'2024-09-03'),(126,126,20.14,'2024-09-22'),(127,127,23.46,'2024-08-09'),(128,128,5.17,'2025-03-19'),(129,129,102.41,'2025-04-04'),(130,130,19.16,'2025-01-04'),(131,131,73.18,'2025-03-18'),(132,132,83.78,'2025-03-21'),(133,133,41.65,'2025-04-06'),(134,134,57.78,'2025-01-28'),(135,135,114.97,'2024-09-25'),(136,136,27.39,'2025-05-02'),(137,137,126.86,'2025-04-15'),(138,138,15.01,'2025-03-12'),(139,139,111.06,'2025-04-30'),(140,140,2.21,'2025-01-02'),(141,141,113.50,'2024-07-02'),(142,142,131.39,'2025-01-31'),(143,143,93.87,'2025-04-18'),(144,144,73.32,'2024-10-11'),(145,145,124.92,'2025-03-02'),(146,146,89.11,'2025-04-22'),(147,147,60.96,'2024-07-27'),(148,148,108.10,'2025-05-02'),(149,149,6.31,'2025-02-07'),(150,150,102.63,'2025-04-12'),(151,151,45.70,'2025-01-13'),(152,152,114.34,'2025-02-03'),(153,153,9.07,'2024-10-14'),(154,154,141.10,'2024-06-17'),(155,155,60.76,'2025-02-03'),(156,156,113.83,'2025-03-13'),(157,157,146.99,'2024-09-09'),(158,158,40.88,'2024-09-21'),(159,159,83.60,'2025-04-09'),(160,160,25.76,'2024-06-15'),(161,161,145.34,'2025-03-14'),(162,162,2.61,'2025-04-10'),(163,163,48.45,'2025-03-31'),(164,164,31.31,'2025-03-07'),(165,165,74.79,'2025-04-04'),(166,166,62.94,'2024-09-14'),(167,167,137.43,'2025-05-21'),(168,168,107.25,'2024-09-14'),(169,169,60.86,'2024-07-20'),(170,170,97.99,'2025-01-27'),(171,171,75.25,'2025-03-03'),(172,172,138.10,'2024-10-02'),(173,173,30.89,'2024-12-14'),(174,174,94.25,'2024-11-29'),(175,175,89.90,'2024-12-30'),(176,176,62.33,'2025-01-25'),(177,177,41.69,'2024-10-20'),(178,178,43.58,'2024-09-14'),(179,179,69.37,'2024-10-24'),(180,180,63.88,'2024-10-28'),(181,181,47.58,'2024-11-19'),(182,182,110.05,'2024-11-25'),(183,183,68.97,'2025-05-21'),(184,184,104.10,'2025-05-27'),(185,185,125.53,'2025-05-05'),(186,186,133.96,'2025-02-21'),(187,187,129.62,'2024-12-29'),(188,188,96.64,'2025-04-23'),(189,189,62.04,'2024-09-28'),(190,190,30.98,'2024-11-30'),(191,191,47.07,'2025-02-23'),(192,192,142.85,'2024-10-27'),(193,193,122.15,'2024-09-11'),(194,194,29.92,'2025-01-04'),(195,195,100.50,'2024-07-22'),(196,196,1.41,'2024-07-25'),(197,197,3.88,'2024-12-16'),(198,198,117.40,'2025-03-07'),(199,199,144.98,'2024-12-01'),(200,200,42.54,'2025-03-07'),(201,201,117.28,'2025-05-05'),(202,202,69.07,'2025-02-04'),(203,203,110.47,'2025-04-23'),(204,204,75.54,'2024-12-02'),(205,205,99.52,'2024-10-29'),(206,206,34.38,'2024-06-07'),(207,207,70.68,'2024-08-03'),(208,208,87.91,'2025-03-26'),(209,209,89.26,'2025-03-18'),(210,210,94.57,'2024-12-17'),(211,211,79.11,'2024-10-22'),(212,212,37.02,'2024-11-10'),(213,213,114.88,'2024-10-05'),(214,214,56.08,'2025-03-15'),(215,215,59.73,'2024-12-16'),(216,216,4.75,'2025-02-16'),(217,217,3.52,'2024-09-13'),(218,218,6.09,'2025-01-27'),(219,219,52.53,'2025-04-04'),(220,220,17.29,'2025-04-11'),(221,221,72.79,'2025-02-28'),(222,222,62.54,'2024-08-08'),(223,223,110.38,'2024-07-14'),(224,224,93.65,'2025-04-20'),(225,225,74.81,'2025-02-02'),(226,226,84.32,'2024-11-13'),(227,227,67.23,'2024-08-26'),(228,228,81.81,'2024-12-07'),(229,229,96.53,'2025-02-18'),(230,230,10.24,'2024-08-20'),(231,231,38.38,'2025-05-18'),(232,232,135.46,'2025-02-17'),(233,233,122.72,'2024-06-01'),(234,234,43.26,'2024-08-28'),(235,235,28.24,'2025-05-01'),(236,236,46.24,'2025-01-03'),(237,237,14.19,'2024-10-17'),(238,238,67.06,'2024-11-24'),(239,239,73.21,'2025-01-02'),(240,240,25.30,'2024-06-20'),(241,241,74.80,'2025-04-23'),(242,242,14.87,'2024-06-02'),(243,243,149.58,'2025-02-12'),(244,244,140.94,'2024-10-18'),(245,245,60.84,'2024-06-09'),(246,246,106.68,'2024-06-03'),(247,247,44.11,'2025-01-13'),(248,248,113.78,'2024-06-27'),(249,249,26.24,'2025-05-25'),(250,250,103.51,'2024-07-21'),(251,251,73.22,'2024-08-28'),(252,252,104.13,'2025-04-02'),(253,253,71.47,'2025-05-17'),(254,254,45.89,'2024-05-31'),(255,255,125.67,'2024-12-17'),(256,256,87.46,'2025-02-16'),(257,257,58.88,'2024-11-23'),(258,258,136.43,'2024-12-11'),(259,259,85.18,'2025-01-06'),(260,260,48.30,'2024-06-04'),(261,261,23.85,'2025-05-06'),(262,262,57.44,'2024-08-08'),(263,263,123.34,'2024-05-29'),(264,264,16.40,'2025-01-22'),(265,265,24.77,'2025-03-10'),(266,266,19.13,'2024-09-01'),(267,267,31.97,'2024-12-03'),(268,268,47.15,'2025-03-19'),(269,269,68.70,'2024-10-03'),(270,270,110.96,'2024-10-17'),(271,271,67.39,'2024-10-06'),(272,272,40.81,'2025-04-07'),(273,273,137.45,'2024-10-25'),(274,274,86.88,'2024-07-03'),(275,275,52.00,'2025-01-11'),(276,276,112.64,'2024-12-04'),(277,277,5.43,'2025-04-12'),(278,278,26.87,'2025-04-27'),(279,279,56.98,'2025-04-12'),(280,280,136.23,'2024-11-07'),(281,281,71.01,'2024-09-14'),(282,282,20.27,'2024-12-27'),(283,283,62.81,'2024-07-01'),(284,284,89.15,'2025-02-01'),(285,285,43.39,'2025-02-05'),(286,286,129.66,'2024-07-09'),(287,287,100.67,'2024-09-24'),(288,288,74.90,'2024-07-11'),(289,289,132.19,'2024-09-30'),(290,290,73.60,'2024-11-25'),(291,291,72.91,'2025-01-22'),(292,292,7.79,'2025-02-25'),(293,293,94.01,'2024-07-20'),(294,294,85.79,'2024-11-13'),(295,295,142.15,'2024-06-14'),(296,296,116.64,'2025-03-21'),(297,297,119.33,'2024-08-22'),(298,298,128.53,'2024-09-07'),(299,299,55.66,'2025-03-15'),(300,300,11.60,'2025-03-04'),(301,301,51.55,'2024-06-08'),(302,302,125.89,'2024-09-30'),(303,303,65.73,'2024-09-11'),(304,304,129.05,'2024-07-11'),(305,305,111.09,'2024-10-10'),(306,306,57.72,'2024-08-30'),(307,307,36.17,'2025-04-18'),(308,308,45.85,'2024-09-27'),(309,309,129.14,'2024-08-03'),(310,310,149.72,'2024-08-08'),(311,311,105.45,'2024-08-05'),(312,312,77.38,'2025-03-30'),(313,313,92.60,'2024-11-08'),(314,314,104.54,'2025-05-14'),(315,315,130.40,'2024-09-15'),(316,316,39.38,'2024-06-01'),(317,317,17.57,'2024-10-28'),(318,318,34.67,'2025-02-20'),(319,319,93.63,'2025-03-04'),(320,320,121.05,'2025-03-11'),(321,321,76.08,'2024-09-18'),(322,322,9.68,'2024-12-17'),(323,323,3.12,'2024-11-01'),(324,324,29.81,'2024-12-07'),(325,325,58.27,'2024-11-04'),(326,326,6.65,'2024-07-26'),(327,327,26.63,'2024-10-09'),(328,328,47.60,'2024-11-12'),(329,329,149.64,'2024-08-23'),(330,330,84.17,'2025-04-06'),(331,331,129.30,'2025-02-22'),(332,332,140.84,'2025-05-04'),(333,333,0.09,'2024-11-10'),(334,334,16.22,'2024-07-20'),(335,335,19.30,'2024-08-23'),(336,336,74.89,'2024-07-11'),(337,337,93.20,'2024-07-14'),(338,338,5.77,'2024-09-30'),(339,339,133.09,'2024-11-29'),(340,340,66.44,'2024-07-27'),(341,341,81.53,'2024-10-21'),(342,342,62.87,'2025-01-18'),(343,343,73.87,'2025-04-19'),(344,344,0.69,'2024-12-15'),(345,345,49.30,'2024-07-24'),(346,346,28.10,'2024-08-10'),(347,347,17.65,'2024-12-01'),(348,348,112.50,'2025-02-10'),(349,349,58.33,'2025-05-17'),(350,350,61.88,'2025-02-06'),(351,351,51.18,'2024-09-27'),(352,352,37.18,'2025-03-08'),(353,353,109.18,'2024-09-03'),(354,354,53.77,'2025-01-08'),(355,355,3.29,'2025-01-27'),(356,356,102.96,'2024-10-06'),(357,357,36.58,'2025-05-16'),(358,358,56.66,'2024-08-09'),(359,359,30.54,'2025-02-27'),(360,360,8.52,'2025-05-26'),(361,361,103.66,'2025-04-21'),(362,362,114.00,'2024-09-22'),(363,363,21.76,'2025-02-04'),(364,364,125.37,'2024-08-26'),(365,365,94.17,'2024-06-11'),(366,366,18.46,'2025-05-23'),(367,367,113.02,'2025-03-19'),(368,368,102.73,'2024-09-24'),(369,369,53.46,'2025-05-03'),(370,370,86.93,'2024-12-02'),(371,371,1.20,'2025-05-02'),(372,372,91.63,'2025-04-16'),(373,373,119.92,'2024-06-06'),(374,374,66.39,'2024-08-08'),(375,375,139.87,'2024-10-15'),(376,376,56.87,'2024-08-13'),(377,377,52.17,'2024-10-24'),(378,378,66.32,'2024-08-29'),(379,379,17.67,'2025-05-17'),(380,380,148.60,'2025-03-17'),(381,381,103.14,'2024-08-14'),(382,382,137.54,'2025-04-28'),(383,383,119.84,'2024-10-22'),(384,384,33.27,'2025-05-14'),(385,385,93.20,'2025-05-02'),(386,386,118.82,'2025-03-20'),(387,387,91.26,'2024-08-25'),(388,388,145.85,'2024-10-21'),(389,389,125.40,'2024-12-09'),(390,390,147.88,'2025-05-25'),(391,391,68.32,'2024-10-10'),(392,392,86.21,'2024-12-05'),(393,393,82.95,'2024-11-06'),(394,394,124.94,'2024-10-22'),(395,395,118.85,'2025-05-28'),(396,396,142.82,'2024-12-13'),(397,397,71.50,'2025-04-10'),(398,398,137.28,'2024-11-12'),(399,399,25.78,'2024-12-27'),(400,400,100.22,'2025-04-02'),(401,401,26.03,'2025-03-23'),(402,402,134.43,'2024-07-21'),(403,403,3.24,'2025-02-05'),(404,404,141.71,'2024-08-17'),(405,405,66.04,'2025-04-12'),(406,406,71.52,'2025-03-20'),(407,407,107.17,'2024-07-18'),(408,408,10.18,'2024-10-30'),(409,409,112.75,'2024-07-11'),(410,410,97.39,'2024-08-24'),(411,411,148.08,'2025-05-02'),(412,412,137.55,'2024-12-18'),(413,413,90.65,'2024-09-17'),(414,414,78.70,'2024-08-13'),(415,415,119.31,'2024-10-11'),(416,416,60.27,'2024-08-07'),(417,417,44.01,'2024-11-22'),(418,418,78.93,'2025-04-20'),(419,419,59.72,'2025-02-15'),(420,420,120.29,'2024-10-09'),(421,421,146.47,'2024-11-29'),(422,422,131.19,'2024-11-27'),(423,423,23.94,'2025-01-28'),(424,424,148.69,'2025-04-09'),(425,425,137.53,'2024-06-25'),(426,426,142.43,'2024-11-04'),(427,427,96.72,'2024-07-16'),(428,428,18.13,'2024-06-11'),(429,429,92.21,'2025-01-28'),(430,430,49.55,'2024-09-21'),(431,431,122.95,'2024-06-09'),(432,432,129.97,'2025-03-03'),(433,433,147.01,'2025-04-12'),(434,434,66.56,'2024-12-09'),(435,435,67.93,'2024-08-18'),(436,436,99.28,'2024-12-05'),(437,437,134.29,'2024-06-04'),(438,438,40.32,'2024-06-03'),(439,439,139.29,'2024-11-12'),(440,440,110.13,'2025-03-29'),(441,441,146.92,'2025-01-08'),(442,442,68.45,'2024-12-23'),(443,443,34.17,'2025-01-18'),(444,444,30.89,'2024-07-23'),(445,445,107.87,'2025-01-19'),(446,446,149.18,'2025-04-15'),(447,447,57.86,'2024-07-13'),(448,448,101.85,'2024-07-05'),(449,449,29.87,'2024-06-14'),(450,450,127.20,'2025-01-03'),(451,451,84.25,'2025-05-11'),(452,452,46.92,'2024-08-24'),(453,453,16.85,'2024-11-08'),(454,454,102.07,'2024-11-01'),(455,455,146.78,'2025-01-29'),(456,456,27.70,'2024-12-01'),(457,457,67.18,'2024-08-30'),(458,458,87.62,'2025-02-27'),(459,459,38.10,'2024-12-29'),(460,460,115.45,'2025-04-24'),(461,461,102.17,'2024-10-23'),(462,462,69.08,'2024-06-20'),(463,463,48.87,'2024-08-16'),(464,464,88.73,'2024-11-10'),(465,465,3.14,'2025-05-14'),(466,466,57.64,'2024-07-04'),(467,467,86.34,'2025-03-21'),(468,468,87.38,'2025-05-22'),(469,469,112.60,'2025-01-18'),(470,470,76.51,'2025-01-10'),(471,471,114.74,'2024-08-30'),(472,472,120.16,'2025-03-16'),(473,473,122.84,'2024-11-10'),(474,474,136.89,'2024-12-20'),(475,475,56.64,'2025-01-23'),(476,476,102.93,'2025-05-14'),(477,477,56.00,'2024-07-29'),(478,478,11.99,'2025-05-14'),(479,479,106.18,'2025-02-27'),(480,480,53.37,'2025-03-13'),(481,481,22.59,'2024-10-02'),(482,482,9.02,'2024-06-17'),(483,483,9.88,'2024-11-14'),(484,484,149.79,'2025-04-25'),(485,485,37.31,'2024-07-09'),(486,486,75.72,'2024-10-16'),(487,487,106.47,'2024-06-13'),(488,488,81.19,'2024-10-25'),(489,489,135.75,'2024-11-29'),(490,490,34.61,'2024-06-19'),(491,491,19.80,'2025-04-18'),(492,492,60.61,'2024-12-05'),(493,493,105.56,'2024-08-02'),(494,494,13.67,'2025-05-13'),(495,495,57.93,'2025-01-24'),(496,496,65.50,'2025-01-09'),(497,497,29.64,'2024-09-22'),(498,498,79.68,'2024-10-17'),(499,499,100.82,'2024-07-14'),(500,500,81.57,'2025-03-01');
/*!40000 ALTER TABLE `pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `pago_f1`
--

DROP TABLE IF EXISTS `pago_f1`;
/*!50001 DROP VIEW IF EXISTS `pago_f1`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `pago_f1` AS SELECT 
 1 AS `id_pago`,
 1 AS `id_usuario`,
 1 AS `monto`,
 1 AS `fecha_pago`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `pago_f2`
--

DROP TABLE IF EXISTS `pago_f2`;
/*!50001 DROP VIEW IF EXISTS `pago_f2`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `pago_f2` AS SELECT 
 1 AS `id_pago`,
 1 AS `id_usuario`,
 1 AS `monto`,
 1 AS `fecha_pago`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `pago_f3`
--

DROP TABLE IF EXISTS `pago_f3`;
/*!50001 DROP VIEW IF EXISTS `pago_f3`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `pago_f3` AS SELECT 
 1 AS `id_pago`,
 1 AS `id_usuario`,
 1 AS `monto`,
 1 AS `fecha_pago`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `servicio_streaming`
--

DROP TABLE IF EXISTS `servicio_streaming`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servicio_streaming` (
  `id_servicio` int NOT NULL AUTO_INCREMENT,
  `nombre_servicio` varchar(100) NOT NULL,
  `descripcion` text,
  PRIMARY KEY (`id_servicio`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicio_streaming`
--

LOCK TABLES `servicio_streaming` WRITE;
/*!40000 ALTER TABLE `servicio_streaming` DISABLE KEYS */;
INSERT INTO `servicio_streaming` VALUES (1,'Netflix','Plataforma líder de streaming con películas, series y documentales originales y licenciados.'),(2,'Disney Plus','El hogar del contenido de Disney, Pixar, Marvel, Star Wars y National Geographic.'),(3,'Amazon Prime','Streaming de películas, series y producciones originales de Amazon.'),(4,'HBO Max','Series y películas exclusivas de HBO, Warner Bros, DC y más.'),(5,'Apple TV','Originales Apple y éxitos de cine y televisión en un solo lugar.'),(6,'Hulu','Películas, series y programación exclusiva en streaming bajo demanda.'),(7,'Paramount+','Películas y series de Paramount, CBS, Nickelodeon y más.'),(8,'Star+','Series, películas, deportes en vivo y más contenido para adultos.');
/*!40000 ALTER TABLE `servicio_streaming` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `servicio_streaming_f1`
--

DROP TABLE IF EXISTS `servicio_streaming_f1`;
/*!50001 DROP VIEW IF EXISTS `servicio_streaming_f1`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `servicio_streaming_f1` AS SELECT 
 1 AS `id_servicio`,
 1 AS `nombre_servicio`,
 1 AS `descripcion`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `servicio_streaming_f2`
--

DROP TABLE IF EXISTS `servicio_streaming_f2`;
/*!50001 DROP VIEW IF EXISTS `servicio_streaming_f2`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `servicio_streaming_f2` AS SELECT 
 1 AS `id_servicio`,
 1 AS `nombre_servicio`,
 1 AS `descripcion`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `servicio_streaming_f3`
--

DROP TABLE IF EXISTS `servicio_streaming_f3`;
/*!50001 DROP VIEW IF EXISTS `servicio_streaming_f3`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `servicio_streaming_f3` AS SELECT 
 1 AS `id_servicio`,
 1 AS `nombre_servicio`,
 1 AS `descripcion`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id_usuario` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contraseña` varchar(100) NOT NULL,
  `fecha_registro` date NOT NULL,
  PRIMARY KEY (`id_usuario`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=501 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'Personnalisée','drehorek0@prnewswire.com','$2b$10$R/RwtXoxj3X3XkV2JA6YeuA1cOw6Z88T6W7EVNVjlb8clkchoG1/O','2024-10-07'),(2,'Léonore','rkynman1@addtoany.com','$2b$10$2Tct9U6iWNjpZamlqsGQpe1KbC.Lr7C4u6WBM8IxfclEhDSFZLh/e','2024-08-20'),(3,'Cécile','mscorthorne2@va.gov','$2b$10$cg9/VC0IDVWHWuz3Kicmae68JGh3PB3ZV5vUKAYMsLitSm5Zntls.','2024-08-25'),(4,'Josée','khendriksen3@freewebs.com','$2b$10$Q6IOF8c8ZbRGGYlP8C92RuB4YnlfsBJ2WawrPaMvXI9P7FQbl1cze','2024-08-12'),(5,'Bérénice','jkolushev4@google.nl','$2b$10$X2CLHrs3xD4iXOKMKPALROrKtzTkA.CQttGyirdl4L7E2W5RLvvhG','2024-09-09'),(6,'Sélène','rtomkys5@reverbnation.com','$2b$10$EfEo7TSXRotj9wgtmef0cupWmnaXx0hBuMgzpCQJmF1mE7If9eo/m','2024-12-23'),(7,'Marylène','vbaser6@miibeian.gov.cn','$2b$10$d.1JuScupnesd7AmUeISr.Sv4D2pw6dOofZ07J8RyAAl80V3bN5RK','2025-04-16'),(8,'Anaëlle','pzotto7@ifeng.com','$2b$10$670sOrT51o45xeFHVT3zK.ZTDQi/M9ZM18Be90c/OxBGD1CcU3FYa','2024-11-29'),(9,'Médiamass','rtrenbay8@phoca.cz','$2b$10$E052qLbG8rkJwIV04IXVP.Xqn7PMyMoQ84FO4Mb9clLVreuzD/GyO','2025-02-10'),(10,'Maëline','wbaise9@godaddy.com','$2b$10$xXUqGvjM1LQh5jRXeZAelO1bTZQQfvebMzfMqCWGqnpxxR1GcE0Bm','2024-09-13'),(11,'Angélique','rbengocheaa@friendfeed.com','$2b$10$HNCL7cvEhZEaAg6FRb4Ta.WJh7f476ItAPJcHln5LHaTY8BxbYPou','2025-04-28'),(12,'Simplifiés','ydeclercb@wordpress.com','$2b$10$uCtdqB7g/thpANrqY3WJUeI1uZ1Li6Lce7vsPLAjBDtcYMajUhBKu','2024-09-10'),(13,'Loïca','jhewellc@simplemachines.org','$2b$10$62NdA21HzMc5cBMWuj73BeLrhsyKrI0pLdw7tsXLInLQKPqsP1TZO','2024-12-05'),(14,'Garçon','adominkad@symantec.com','$2b$10$H6FLQQrYXlh.ePd2Yi7Y1eMpHwmbWIzhjwzJ8pk3jn7sIutaKzdOC','2025-03-02'),(15,'Séverine','avaughanhughese@mozilla.com','$2b$10$9TZjfMGnc/01euMfNAEeFONn1lavAIua3nmIozf7ozOQABjeU8W56','2024-12-26'),(16,'Andrée','lsiemandlf@scientificamerican.com','$2b$10$TyJwdy2WOyST4jJjopiDXu1AFl5UabW2XQ3UzLEe.jmnbWTHUdbhm','2025-04-27'),(17,'Judicaël','lgoltg@furl.net','$2b$10$eUPm3crikxP9ZPxzRY5lZendBTCUVTN.NQYwf8djV7/rTeWTJJxMu','2025-01-13'),(18,'Wá','srehorh@1688.com','$2b$10$SMVXR5oQYQCRc6C6r2Fw9eXPhsetE7qxw2zhqup1iRxrpKtDQjVre','2024-07-05'),(19,'Léandre','tyitzovitzi@senate.gov','$2b$10$u5u/Tp4Xs6vk/Z0XVDkopev8v0MH13SHSVaECxy5QPUiV/b3tZ5Ee','2024-09-14'),(20,'Adélie','mbuxtonj@engadget.com','$2b$10$S5gwd8J9R.vD.4McZqjTJOqE76yIB9Qvps0JwYUagszEuyW/Eb7lC','2024-07-05'),(21,'Uò','pbreslauerk@army.mil','$2b$10$hbXtmn0Jy85uN2jqAFqpueDK/G68VOEC.kYJSWsLkrwzQf/3cevkK','2025-04-04'),(22,'Kuí','mcouronnel@washington.edu','$2b$10$AbyRTWNSgZ/oKCtBQovq4evXz.jGBghI2J4hD4YlHE0wUp31Epka2','2024-12-16'),(23,'Salomé','chalbardm@europa.eu','$2b$10$HJihoWCZa9QDseL6mNj8KOFnoh9Wl1T9FYOf7FYNTdN9aNe6gCKT2','2025-01-12'),(24,'Léone','stearen@amazon.co.uk','$2b$10$Bk.g79bk0OiCdWVz3Cl5we4sOVhdyvB2F0UmdcqMHWv2ZOPkSwfWG','2024-09-22'),(25,'Pénélope','adebretto@washington.edu','$2b$10$y64VleIxtJVwLp/uzVopneStWxCzd/t/QjIyTrN57zbZYB7.SaUFG','2024-06-21'),(26,'Marlène','bmandellp@berkeley.edu','$2b$10$oWW7rdsrzFWwGSnpSYPaLeShUQPsSeAOE.aXTLnZ4OoNU0WegcCWm','2025-03-13'),(27,'Salomé','acootsq@yahoo.co.jp','$2b$10$NFZtibB3VpfNr3rbrOmzieDgTHsgm/WN8kMUV.8UAHJ68M19tcdRW','2025-03-10'),(28,'Eléonore','sheathornr@discuz.net','$2b$10$BJU/35/ykUanUL7x9pIVmem1jecVvNqjXSnhMUJnTg8gVBfZxvYlO','2025-03-08'),(29,'Dù','nleals@parallels.com','$2b$10$UIT2kxSqX0OJGJnqRtoWgu91emgtoAWTRpVL32E9rvHVC/M4BqA1S','2024-07-11'),(30,'Andréanne','dcraydont@auda.org.au','$2b$10$FGi74YNdfj96h8Di1RH/ruyFx50v0dQXf/iJDi.MkdtzRGc.g/k0G','2025-01-28'),(31,'Mélinda','clourensu@blogspot.com','$2b$10$6QeHwcdmOqvoSMkxNl/9R.Q7vkfGfQih3f/x.mxPNNJ8ZLdvfhbDO','2024-07-18'),(32,'Eloïse','cmadelinv@etsy.com','$2b$10$051C0fNO0ajsy8N7GdATD.f6gO1rcSKwEVT/V0CYcXHlr66SNwgXu','2024-12-12'),(33,'Yóu','mroyalw@printfriendly.com','$2b$10$sZ0uEh7kp0ScN8YDjlvSYuJq1ZFgeaQCRm4TePDIb7etT.4.XBf9.','2024-10-16'),(34,'Céline','nmalsherx@eepurl.com','$2b$10$1vp5gOBqPUloKOIV51jX.OB8z34tbQnN2pQKrPsTb/k0P1A/vSgk2','2025-01-28'),(35,'Kévina','zhaybally@businessinsider.com','$2b$10$Yq4QZPk0Nb5xOcuu8RIz2uIBCwGzeMrqVT9jUrIJ0C8wu0MZyIVw6','2024-06-16'),(36,'Méng','mstocklez@delicious.com','$2b$10$blt6c1QNJ13Hypzzi9n8pOliuncmmwwxrx6PrFY.sBQ6.I/J6oAFG','2024-09-14'),(37,'Desirée','llamy10@scribd.com','$2b$10$Jb3oUamcQyfqdx81fJyMk.oxE5ZJkS2Yb3zgGF/4tGxt3dzZK6d/y','2024-12-08'),(38,'Nadège','slampaert11@feedburner.com','$2b$10$awCjyrzMi4zeIJ9AiMA59.YX6z23EPULqGiEEMNBsowoOyDnupm7S','2025-01-01'),(39,'Athéna','kbesnard12@e-recht24.de','$2b$10$HHwfXZqsPJhpjIYh.jMqceFQsw/rZsZgnrV0iynxiNrUQTpz9.xYK','2024-12-09'),(40,'Lorène','fsimoes13@xrea.com','$2b$10$zFDJFelDlgtqBJYi94q4Bu/9XCSqMpKvYHcBgHzmGJg3mZ0gkZSGO','2024-06-20'),(41,'Méghane','sbiaggetti14@amazon.de','$2b$10$MUyPGf/.9M5h0l9yIojuIu/YyKp6SiyycUESaX92NzAX0g9vw4dBe','2024-08-01'),(42,'Yú','gbonniface15@ed.gov','$2b$10$OBRFI9krqVol8KtzjzDbau48F4L.q44UAbIUpqNtcJyZHUlB29SJO','2024-09-24'),(43,'Daphnée','aredman16@marketwatch.com','$2b$10$KCp11cu59ZNj38W7xaAQ8.5ywRNjX1yFqv/NT.hmWmCSr5Cnaasuu','2024-05-29'),(44,'Mà','mgrundwater17@ucoz.com','$2b$10$YgikV2EKpN0uRNSfjbPbBeHuSF/3Ds4zJX3QaKwdtI7qRjtiTbIjC','2024-05-30'),(45,'Sòng','pruffell18@nsw.gov.au','$2b$10$GwLO.ANubUrLJwOqz97HdOFEdFeoKXKsCawaa0ob0t4o7Kf/nOyiu','2024-12-30'),(46,'Pål','epetchell19@hubpages.com','$2b$10$J6sjvrKfROXy50e.5cyHNObomQFRV3ZFiDLYz6qbEsaKJFWh9Wu0.','2024-06-01'),(47,'Cinéma','gbramstom1a@cbslocal.com','$2b$10$qcw2a4VaxTRaDS272gDMOO40zbN5ruojsdfCgS2ZJZnxp4oHkCNrW','2024-06-20'),(48,'Bécassine','kmaasze1b@salon.com','$2b$10$YTC8C1IEmYgRd6bb8udogeRj7I3/j2wl/rLrTgdXSeN3DxBt75fA2','2024-08-21'),(49,'Cécile','btebbut1c@cafepress.com','$2b$10$89yIBc82fbMnXyghaJcC0Ouw97Y9T1ZexDXPgD40r5lpL2lYEhjwW','2024-12-23'),(50,'Yú','mtroake1d@godaddy.com','$2b$10$2.giFpkWwML.Ab83JgaP8.ZLRWIKDMItp5dCgMUWVQTuU5W4PPjcW','2025-01-28'),(51,'Anaëlle','tfouracre1e@blinklist.com','$2b$10$7AHwwkrkcMei.3KcpPA0eeqG1bCLdu2xQWaPXazPJcXM9zT3mkWHS','2024-06-15'),(52,'Dorothée','apauwel1f@unicef.org','$2b$10$bI5JAck0hoYxuacylktLbeLkmVgNQO7f7PDXUQtIaCZyGZD.fwgta','2025-02-10'),(53,'André','jvandenbroek1g@webmd.com','$2b$10$tiS5wnOfuBqA6Cks9KuXuelbGm2jCY81VOgvxV2xDWR3xEZHLIHIm','2025-02-02'),(54,'Lài','yfidgeon1h@de.vu','$2b$10$8rrfmSQI2wTsapyDml4acO7FdJ00shKbL6IztgAoVC1v9JySXAyiC','2025-05-09'),(55,'Vénus','galden1i@google.ru','$2b$10$yyTXIg8S7IJkAB6WJfJveOMTjsBd8GE1pduQfp7DqrSfTXcd8lmEK','2025-01-05'),(56,'Håkan','ndiiorio1j@wisc.edu','$2b$10$QFmYu/ZyLCflC8AT0K7ZCeIzpGZP460fYXSZlktrYPgQGYdeVqAIS','2024-10-25'),(57,'Laurène','mwoollin1k@vkontakte.ru','$2b$10$BfRxrkfMyXi9j/mV12D94.cAfYUY1yLef9MQOeRD2ET3.372Kx7DO','2024-12-25'),(58,'Kuí','shawkeswood1l@technorati.com','$2b$10$8RTWutKo8r9NmCIG8UoCCeNI8daB4HiEPRjadq6mUHiz.3juwZDsG','2024-09-15'),(59,'Åke','slant1m@columbia.edu','$2b$10$GrVMaR9epSg8xZTHVQTqhOj34i2fd8vdyR7O2jPzQuqdV1RDNUsqK','2025-04-08'),(60,'Marie-thérèse','sogan1n@printfriendly.com','$2b$10$Wa/kba03PMH9fkoustZuru4FWxnub3/Li5V.c.q.GRBAkzAAXBHgK','2025-04-02'),(61,'Göran','mgwilym1o@last.fm','$2b$10$hi45LltGK0flZfiFlcx0AOBLA/S7KN4HYQI50/ZINl21pKJe9Mjh2','2025-05-19'),(62,'Adélaïde','bseamon1p@quantcast.com','$2b$10$sJ.879wVTFQAr6V8hCfxyuIABcFABymh7u4x/MwK6Rxdvt2f8Yazm','2024-08-08'),(63,'Gösta','wpitchford1q@simplemachines.org','$2b$10$Y.GgP0uSKhRlCDIHSOKXne6Sl.CFzG6P7K5Vu3MeoHqQntpG6sp9.','2025-01-17'),(64,'Réservés','ccoryndon1r@opera.com','$2b$10$cQ4Cyoh0hEZJYNoEXIiILOyrhPHJ3olQxpato60yJKShu7sfMHUsm','2024-12-12'),(65,'Joséphine','amenichini1s@opera.com','$2b$10$HOsM0INkhJ4u4VGPNT2F9uSy96YymHYIY3IhYSM1OWS4LbuMEU2Aa','2024-08-12'),(66,'Léana','ipiatkow1t@gizmodo.com','$2b$10$AY8pCBiYF56szGlhvZJZ8.Z2FlSkYVObsPOCyDb2cEyfAyDfXLj7.','2024-06-10'),(67,'Crééz','btimeby1u@fema.gov','$2b$10$ALppUoxx3uH82Bn24Nyrw.O4oGiZsUfLRyHPxc2a8plKQcwURnfhi','2025-02-28'),(68,'Crééz','kungerecht1v@sciencedaily.com','$2b$10$LKjajSZxeuPRiqWxKVNtz.vMT9hErtdwS/o/w16k8cGCOEuBh4IuG','2025-04-19'),(69,'Nélie','cfurlow1w@indiegogo.com','$2b$10$BuMgo6r3nSBYrG.IkFtgHua8V/VQkNye7KDn4zaCFJiSBsQwhqJda','2024-09-26'),(70,'Léonore','rmcneillie1x@zdnet.com','$2b$10$AM11JPWZeKqV7WidVY05c.T71CAbjkEOWCTbdxyL0giby2r2cjuZG','2024-12-27'),(71,'Naëlle','eswannick1y@t-online.de','$2b$10$0maAQ/EREwxtxgJfDMiXJeZj6cNuYc14CU5yp.0APgvfKOSitStca','2025-04-22'),(72,'Uò','obutcher1z@phoca.cz','$2b$10$J9eDTvbc/d8TYdHE4eaQ6.J68cuk3mHmPIw2u6syr4Hoh8of6xKk2','2024-07-12'),(73,'Gérald','cwestmancoat20@umn.edu','$2b$10$NVxj8ICGgNrSREStDn9aIea7V7.xHq7jT58djzB.aXAqRYW5jtY9i','2024-08-27'),(74,'Gaïa','dbehling21@wired.com','$2b$10$zXh8TLFMDXSLguOGuTMXlORxYpF3LAMqtei9dbJQKrH4D.WsoC1Jq','2024-08-27'),(75,'Véronique','osansam22@bbb.org','$2b$10$gZe7vnpStfZJFa7sK3wUgOxaPL.VMRvTH9wxQ.FX0LQ/eDoJefMUO','2025-03-13'),(76,'Léana','lbingall23@behance.net','$2b$10$dPMMr4f4695WuMcs7d8jluexpPtFhUrL/EmO79utjbOompW78m3UW','2025-04-19'),(77,'Cécilia','cinkles24@netscape.com','$2b$10$778b3y1OjEeOwcj7whNwTuxS91eiuIdx.TxWCEquLNXUiJltx5WVS','2025-04-05'),(78,'Maëline','mstolting25@spotify.com','$2b$10$KOnmEQ1BZwHGdtTyYUP7TOkyGUu8o0hR9lNSoEaPg45L.0WNM4YIO','2024-10-20'),(79,'Pò','tdearman26@ovh.net','$2b$10$D.X4CWWxDblBrEFRDsGyZO.DSIK0D6A51.og7KMqWJ98OITrGkT3W','2024-06-15'),(80,'Loïs','epideon27@hubpages.com','$2b$10$p0E1o956jySZGJjVU6a6Ne4P83iO.KcnlajjMfnUdHnd6yPNEP5Om','2024-07-31'),(81,'Méline','fcastiblanco28@nasa.gov','$2b$10$4EId/aB3znNPtmA2aJ3yG.A.EPli.wkQAWQawScS9pyMNkHUkkB/i','2025-04-23'),(82,'Séverine','sderrett29@japanpost.jp','$2b$10$Myd.XAAxSf4cG0RzSYqoue.JSGXVd3rN2cMopCVV2wMJMge0Dal1a','2025-04-07'),(83,'Stévina','brubenczyk2a@istockphoto.com','$2b$10$atq22SiYbACdhBNOyFeSQuGPZCy4FXjCfYwlZocPGZgxxJ19WgwKq','2024-07-03'),(84,'Maéna','jstave2b@1und1.de','$2b$10$Cn9Y5hdOGl8QF602D1Mp4uyh7PWQVc9YeFjL01kJkXJFcYz.cyQHS','2025-04-30'),(85,'Håkan','bpharoah2c@wufoo.com','$2b$10$Ov1oA25viW3SsGk4X./fb.o7C1bA/aMCoIzPqe41NX/8nsEKfec36','2025-03-10'),(86,'Gisèle','agwilym2d@eventbrite.com','$2b$10$bl8hr6gBKtMkar2a2CNuoegipXfQ8QsrPUefi08QwFyMuEIxjPGCa','2025-05-27'),(87,'Mélinda','thouten2e@dyndns.org','$2b$10$tVkBUfFkxqmdpTdpZ.gewOwpyddM36jAZVJbmzbwhD2xW8W1S4dUG','2025-04-10'),(88,'Mélinda','ccharnock2f@usgs.gov','$2b$10$44jOINqRZt/23hQEwt7g9ekaqC9dzo35pXRLD1fGdaESZSkdxos1O','2024-10-20'),(89,'Faîtes','mwalkinshaw2g@slate.com','$2b$10$QFaxX7bi4vlA7vhibW8jSOGFF.jCI6ufu.8YCCVGpeSnv/BBCM7dm','2024-10-08'),(90,'Lauréna','negglestone2h@bigcartel.com','$2b$10$IP6ApUszb3eD6NruAKdtwekXVd5f/1wAUPFbGQEJ.YP0fxo.aJmOa','2024-06-13'),(91,'Célestine','srycraft2i@ehow.com','$2b$10$8kWoiB0Cmh8mudt/buVX4O10wZK.ENUaNX9Y2P5.sCMXFcUM3EJRi','2025-05-08'),(92,'Mélia','rsowden2j@seesaa.net','$2b$10$tgrbI3iz3HpzIGx5Ev8I/eRqtlY4WZq2eiJ8gVygnA7TN4mF0jZe.','2024-11-22'),(93,'Dà','atroop2k@kickstarter.com','$2b$10$oPSSEIFZQEb4/T8DMGx48uXVhj/cz8DZ2AZcPs/uPy0y4fs5aAz5a','2024-09-27'),(94,'Måns','gruseworth2l@youtube.com','$2b$10$5oaTts/N8F0eNruZpMRpx.4hUS4Cf2mIJ64uqFtzJCRAewTr4TJKG','2024-12-06'),(95,'Cécilia','cczajkowski2m@auda.org.au','$2b$10$worPEPaRn7k/Sh5EkWV2KeCiyOOA7fuSunl9B2VvW1NgtWStIbwvS','2025-05-15'),(96,'Faîtes','yrabbatts2n@ft.com','$2b$10$HiHMuPVcmVjtxnTw3N7Uj.kQgGeK9qIjyC8xahBqvamaxw8YHn/qy','2024-11-30'),(97,'Annotée','jisabell2o@businesswire.com','$2b$10$tIkBt5cGpbKZDVyps1E/S.yrtft3XqGWlbL550FBXBoqJH/fpBWlm','2024-11-07'),(98,'Clémentine','rberrow2p@vimeo.com','$2b$10$KlL6SQW0c3tyS51ogXlWQ.goGTpNOPCqZ3PSV1C9NT5BmGqMT8sIO','2024-12-02'),(99,'Loïca','dbrauninger2q@free.fr','$2b$10$nGbmsgLQioQMk8gHNww17.AodmbCVIlExmtC.rzdW2.ofpDdNjpX.','2025-05-24'),(100,'Gaétane','dsmye2r@mapy.cz','$2b$10$CHc1oumC1.RQUjGTmGTHyOBX8hC2tNfF1xhBM3VEzP0YIYmJ839aW','2024-11-28'),(101,'Clémence','smettrick2s@is.gd','$2b$10$pVmLbZKCk5kVihx/Qc0uv.WlSjlD/0pqwxocVSjPRsXjrLREHr9CW','2025-01-03'),(102,'Maëlla','lmeas2t@dot.gov','$2b$10$xG6WMAJ6Hcu16hZ7ObtDxut32f1amKMwBcHOd8Tx8qhG4rUZl.JMm','2025-02-04'),(103,'Marlène','bdymond2u@bluehost.com','$2b$10$VM6PaVcFB9cv/xmyxsQ4HOTJ8C184aygXdQfMnqDqalQT0GoM6olW','2025-01-17'),(104,'Annotés','hkleinholz2v@icq.com','$2b$10$RE91IW8.ef4vheMb4r8QAe1QGIgX8tPTAW6hph26I3lOqkOqyXsbu','2024-06-23'),(105,'Pénélope','kpozzi2w@php.net','$2b$10$kB8KKHzQgfwJXTXKQJJA5OBGYltU7lfrHdxSZSve.IsjY3ey1uYhu','2024-10-29'),(106,'Mylène','dfellowes2x@theglobeandmail.com','$2b$10$YskJoUkIJxEN4HbkZtyjUO6I6H5PusYPbdPfxuaoz0rahHCMKpJxi','2025-01-27'),(107,'Naëlle','besposito2y@163.com','$2b$10$hFE0Elz2xW27NPF/curalO1oKvVN1JI3pb1WJfztX7n5cwozMlIAK','2024-08-31'),(108,'Maïwenn','ajoslow2z@msu.edu','$2b$10$RyYku7W854MqA.C/dIo1w.nWVGoaseoFB8n5G.LDpx9IPj5tEFkQS','2024-06-21'),(109,'Léone','ceastabrook30@boston.com','$2b$10$SYB2FtUfaaWwIfWMZeUJbeQ7Qd1p6IB8dg7ePV.MPcNCteactMzV2','2025-01-05'),(110,'Illustrée','gmiranda31@disqus.com','$2b$10$YAO6CVbkv2oXqILD2gLcpet9ZuGUxLvXNGsv4wsImnHM3J9MEIoxy','2024-08-19'),(111,'Ophélie','kwevell32@aol.com','$2b$10$J9lJ9L3iUMkuK/8SoJ7p.emGsdrElnZ3/XmsyJNja7fUJqzNz1NUG','2024-08-13'),(112,'Marlène','ntremlett33@arizona.edu','$2b$10$ItMsHVpjLfcffTYNLS5LGOOI0r5uffJAtYOy4PthVnwe3lxGDud5C','2024-12-09'),(113,'Régine','mjozwicki34@ustream.tv','$2b$10$nHicf4SbQu8LLzp62APd5urHir4LOV9jyiu.tvKS.rgpnndtjg4Em','2024-06-27'),(114,'Jú','hfassman35@sitemeter.com','$2b$10$i0iUCVIBMWCMjldIUyA/SO/1bqm1I8zbMdtGCD0BdW8dfmeTo8tTi','2025-02-17'),(115,'Yáo','drapport36@msu.edu','$2b$10$c34v0HpsiPxOA0FOH483LOJTg0bjMB8QM6xQJ26OlL1gRR9YPFp.G','2024-06-18'),(116,'Uò','zsturney37@imgur.com','$2b$10$QoVhNJ2p.lWXz5CZzUNX8u3ayytC5OkX/ptslz0GhF2LRzyactwHK','2024-07-07'),(117,'Estève','sromaint38@cyberchimps.com','$2b$10$VAqLPXzYK7EL7q3N4Sx4DusMGw78bMXQTXtPfPhLDOc5zHF58PATa','2025-01-27'),(118,'Gaétane','efearnyough39@github.com','$2b$10$o6VWvTWtE59FsoBhS2AB3uWCqxyXY3OJ19b/TlosoaCfGmBSinvou','2025-04-29'),(119,'Célestine','ghaythorn3a@w3.org','$2b$10$VUXUIOBD3otIKqpiZREszuExyeW3YwrB6G5BytUeHmv//rjtlf6ca','2024-09-29'),(120,'Ophélie','olantaph3b@naver.com','$2b$10$8Tr8CcFjoxs4oMzaBeErX.O2MAvzgqv4thp8.zd1OcCmtlJ2WsRh6','2025-01-13'),(121,'Örjan','tspaxman3c@mac.com','$2b$10$m5UpK01gzGdcNuU38wKGQew8cqc3EEpXHIyZZoGbPiBX1VJb/Ruya','2024-12-23'),(122,'Cloé','rgabbetis3d@amazon.de','$2b$10$OMRm1fQZPjuom.15YSWsPuMW6XXROtJLugKjCwP/sHu3ErRNIVvXy','2024-07-04'),(123,'Naëlle','rworsom3e@yahoo.co.jp','$2b$10$aurMutaHMXJ4nfKCYz67gOtBERZtOOg/dI/QSYnqkfE0fmKm7ISJi','2024-12-02'),(124,'Måns','fboldero3f@edublogs.org','$2b$10$NBfstI7BsMKxkuBm1aD.A.9bUgfeCA4aW0gZCYW0MZ8ir0uOnGpcm','2024-06-06'),(125,'Kù','kullyott3g@reverbnation.com','$2b$10$m.IwTI25qrMA3MiRP28L1.5bAoE.Ie1dgWT46tVC3WVZn8c0d30gy','2025-04-11'),(126,'Méline','dosmon3h@sbwire.com','$2b$10$Wh5tEQedCBCjJiSSBRQC0O.e9ZRrclIBPkHedK/KueMAlKQuJZTyG','2025-01-16'),(127,'Maïly','gelesander3i@joomla.org','$2b$10$QeSIqlCTKoMbOJEYAazrre9qAbXOeDagx.EMZ1AZwPrNNEZNXfCwi','2024-07-09'),(128,'Salomé','tfaire3j@washington.edu','$2b$10$BVLb/5TPRzzpMLEJv5ybder/2OtjaGV5hYsY7rrbYXBntt/oZXrJi','2025-04-27'),(129,'Inès','sandresen3k@hugedomains.com','$2b$10$FqObheYmDy0ussmW6XodOOnSK9bUyOCg12wGZ7hOjDT6ChHE.A0UK','2024-10-20'),(130,'Laïla','amunday3l@spiegel.de','$2b$10$qJ2D30CzU0m1K9Q/Ndzwn.uq0AaE/7WUv34rCXePDAVpE09s12zcO','2024-11-15'),(131,'Andréa','rhallawell3m@opera.com','$2b$10$O5VqnBL1sKXu0jHxWzS63O89svj8BnxdyGWDCNNUR4nB44ykCAzfC','2024-10-02'),(132,'Táng','cpentelo3n@utexas.edu','$2b$10$TVF4Ki.coW3WAuEdDunbMu/eI3VZWW8E6fWn4SwdS7DLImJHd4xmW','2025-03-23'),(133,'Pål','cviney3o@simplemachines.org','$2b$10$Lw1ZnPQoy3e/dfwEUyCyYeYX8FbE7MJlczpdOroBWeNqVa0YVOujK','2025-04-08'),(134,'Vérane','kwoehler3p@vkontakte.ru','$2b$10$RGsSoRtOD52VPKNDKqupgOUQvtA0SL/BgLfyvnkg8PXG5tVY7K/Q6','2025-05-14'),(135,'Angélique','uhawthorn3q@noaa.gov','$2b$10$pg9CrJlhciIwDEWJaptao.Epnp55qdVWlhvXZlmh5yRO4vjoylkg6','2025-02-03'),(136,'Desirée','nconnar3r@ifeng.com','$2b$10$KEzSCXoV9U54472Ad4tRGeuzcoC0cRDeouzj8uL0O1TVXwmlqYtkC','2024-12-20'),(137,'Véronique','sbellows3s@people.com.cn','$2b$10$1X6SxYtfoSPOjoH/zqD3IuW4ujLxnrLY810ZywPsY0MshXynZhuxq','2024-06-28'),(138,'Ráo','kbalducci3t@google.com.au','$2b$10$Ikz1JnPU/.TNUmftguRzO.HmeRcQfIAPP.ynypaOORONGgO6w/Zr.','2024-10-04'),(139,'Loïs','dhopewell3u@newyorker.com','$2b$10$tn1kR/h5SSlYAtrRWoqLRO1fCgefGuC8Y8.jCpPK4bh2rRtiRA17q','2024-12-25'),(140,'Åsa','arichardes3v@mozilla.org','$2b$10$wt1RoiSm8ks0GG4U6SF7S.pc5vMTGOEQSAHA7JmqnqaO7zu/lzhRK','2024-09-14'),(141,'Hélène','lkuscha3w@google.nl','$2b$10$LVc0wx501DcKTSWvIWmho.rKA6PfYpMj8y57Z9kx8uawdfEKmzLT6','2024-10-24'),(142,'Loïs','fbartrop3x@ustream.tv','$2b$10$GVmWlfJfmwCWoRm/BEzB7eTMViXPhJhxy6aKw2LDyIeuGpsAVIkay','2024-08-26'),(143,'Chloé','kauguste3y@sourceforge.net','$2b$10$08OsqrpbbvIMWe7GQ73H6e.2lbsVxl7R9uViGqa0q2o/VD3N2fAaC','2024-10-07'),(144,'Mégane','cdanels3z@dagondesign.com','$2b$10$u/LNhYjfYh7tymWAKwujmuro5lJR1L4pmjUeFtOLhRE4XjmXyUx3S','2025-02-03'),(145,'Réservés','aventam40@dell.com','$2b$10$6lcUHhlm0yVmpHJNSk4dQOCZrcIKljr7VTPenz.DFIGnIr6EA9KPC','2024-12-16'),(146,'Maïly','vbeaument41@uiuc.edu','$2b$10$R1t6z/KXjww3SpOIyHMOA.96rVWoXsoQAKHQOltXZYGtcd6yIO2XK','2025-05-23'),(147,'Mylène','ruzelli42@cbc.ca','$2b$10$XllvoydzeoxNpTPrXssFTeAtuQiXU5LPWpjb6QtL5fdnYPpEXwRvC','2024-08-20'),(148,'Rébecca','amccrostie43@pinterest.com','$2b$10$BFmdFBW8oFY1IknenkNAkuJGyYtzo45QBDAvrJIXurvf3zyUq/vPq','2024-09-22'),(149,'Laïla','eharron44@hexun.com','$2b$10$0PBmiwOrPnno8ItkYsFG5OYrNCRYoNOFjKgCH.ccJ069upt0KN0dm','2025-02-05'),(150,'Léonore','lboomes45@yellowbook.com','$2b$10$FM.cy5c4TmfyZD3OC1A.n.waghZlVwbx.RpF2K7TySBfbuVHyxWIy','2024-12-30'),(151,'Mylène','arivalant46@foxnews.com','$2b$10$rsfPJo6FnZir.FhkzKFwaOuMcdLyqPDKddkEpdq/M3dhPdR8k0UZW','2025-01-06'),(152,'Táng','hgristock47@networksolutions.com','$2b$10$64Z9GxzByrtkI.yI7Pnj/OjrcLwORBKnDy6v6P.piU0VA6lQd/G.S','2024-10-20'),(153,'Bérénice','kaldersley48@posterous.com','$2b$10$bbgizrqf/CT7CvCBo8biruUNsQFruHlFs1KE617lTJ7r46qP7AUS2','2024-12-09'),(154,'Gaétane','civashintsov49@printfriendly.com','$2b$10$dsds94m63kph0tA0p2wMAOXhGFWcOMlyWVvvHrtwbjQhPZ33XkRVa','2025-03-08'),(155,'Anaé','cwoolvin4a@skyrock.com','$2b$10$IBwo4pPIvSDGEIcEsHZcn.kkV7VG8in4wQbUOk2Ji/dWVdM7Fl0f2','2025-01-12'),(156,'Renée','bbastistini4b@constantcontact.com','$2b$10$U0lOZLNuWRYZu59b0RF7p.umQJqhpQDrFbOsYlaYebAiZc.gqUBXy','2025-02-04'),(157,'Uò','ascarisbrick4c@umich.edu','$2b$10$zVc/pD8v69eyUK1anxZmJOhHldDay2M1OVPo2WWFMiXoJHItHMl.W','2025-01-21'),(158,'Yáo','cdurward4d@ucoz.ru','$2b$10$O7VYdFwpkVD189OpcAKie.E2HA1cpliF1uqtEsZZ1pRHDKCXTeZZO','2025-03-07'),(159,'Adélaïde','fabry4e@ft.com','$2b$10$P7uQfrBXAPeST2tXiT9F6.m7PrUmF7JM97/LhEvGJIHccXJUouGsy','2025-05-11'),(160,'Maëlle','kkorneichik4f@sitemeter.com','$2b$10$2/uiy.L9K9.PcEAceb7hCOI5DKHfTmPq0kYgA2KXqGWMT8KRyHf/u','2024-07-31'),(161,'Lén','uellson4g@smh.com.au','$2b$10$64V9Yv1iMOOKSL3pF7Zj9.PU1d7EnD6jFb5guEqhPsdEegITWSITy','2025-02-20'),(162,'Pénélope','dsmellie4h@gravatar.com','$2b$10$2JIwW8HqExXbD7JpCmlJ9OxhGg2tvq8bnvVnokFHNm/9o5vPDw1Py','2025-02-24'),(163,'Lóng','svallis4i@shareasale.com','$2b$10$m3B6Xf5ZanXCSGTJcFd5B.hGjX4kXWq1Go9XIvnzSbD5Ri/aYrQ86','2024-11-17'),(164,'Estée','cguillond4j@washington.edu','$2b$10$0XLJ3wzJCabsOYZ14XotQuw6V0finq1wE3PxNZtF2026uVHKsH.j2','2025-03-02'),(165,'Océanne','gbrankley4k@behance.net','$2b$10$lF7VhTJgvMEtow1rOD.Kx.v.SfizBAMZqlHF0ofJYPa3WkPhx/6WG','2025-01-09'),(166,'Jú','rboolsen4l@ocn.ne.jp','$2b$10$A5kQiRN8f8Hhlqr2bdYjB.5wFthc7LY9mM5rBtiDMZi8ZRBfgi2.y','2024-11-14'),(167,'Loïca','vhayesman4m@indiegogo.com','$2b$10$vpJ3kDBjZuKVQp7Nsu77ku35ncCIJH8829JMcrvhvC9CAxZhq2wOq','2025-01-26'),(168,'Frédérique','llaterza4n@cnet.com','$2b$10$NQohhtdMi90VkWyuOpdpguhvHHlbOboF.eHHGxC4MQHxQ8o1xYlCS','2024-12-25'),(169,'Françoise','gbrisbane4o@ustream.tv','$2b$10$fx86tGSUSTyKu50BPNCCQutdE3RHIezeKWPyJzwNkXx/XP6sNzXZi','2024-11-20'),(170,'Naéva','lculbert4p@blinklist.com','$2b$10$OKQTNzHro4IKeF8iWiF4C.w7n4AfUVZBFyuB/m9uOxoErnTQqaKTO','2024-10-13'),(171,'Görel','mausten4q@prweb.com','$2b$10$/hXqcXdKzn.8NLXt0jcMm./ikFOK61TDyiBwAYO.vZeCteEU2hjqO','2024-11-06'),(172,'Gaïa','tcamacke4r@woothemes.com','$2b$10$9NAMXMqe5KcV8bkHme1dku8BOvY9sRWKbq1N4pK4uJZjyRDuWhUo.','2025-05-14'),(173,'Séréna','pkirkwood4s@google.co.uk','$2b$10$pfGzPCmvkNEbZC/aTpQxnOvpUvUWCjAC/zGcgmRMGC8YW5EadS3WK','2024-10-27'),(174,'Solène','scrunden4t@nba.com','$2b$10$C.bIHjtJ3nD7bZNTRyR.3upt1s7WVDRykLu7ommJhtiGIq3iP5sgy','2025-05-19'),(175,'Gaëlle','ralibone4u@g.co','$2b$10$Onex5otXZQQw9ZGZwhPGFOXM1j9CJIMRZD1l9BHtKo8CpYxjo2PsW','2024-09-23'),(176,'Clémence','phayley4v@fotki.com','$2b$10$PjMiOSjmH3KLAhBKq/uHCecUAkF8oWpDTt9j8hQTCHH/MrfL3RtmC','2025-05-17'),(177,'Andréanne','svanin4w@columbia.edu','$2b$10$OxGBBPRa6f6aJnoojMtt6eY08RvUSHxGh6C.5Q3vGkle21XrSCiXC','2024-09-21'),(178,'Sòng','acrasswell4x@cpanel.net','$2b$10$oo46.3WIsnRtv2FZfW79XOkBsTh5vh.xlFCY.4fJnNy6sf32KXIbS','2025-05-17'),(179,'Marlène','kanton4y@noaa.gov','$2b$10$G6bhBIWpV/RAp6zvPPyhXeHD/PsUMnJPHDiXJSFRPxoJU88aPK54i','2024-10-18'),(180,'Illustrée','abill4z@sphinn.com','$2b$10$RFw7q4k3mLsXrnAXqU4IUeAVCRc44R16aO868C8x64vSwX.IiQwfa','2025-02-03'),(181,'Yáo','bmilier50@mtv.com','$2b$10$ic/9YT9nRfm3FxFjoqdQj.da2nvCmGP3K32n4xlUJAyB0J1jsv4cW','2024-07-19'),(182,'Maïly','rhebbes51@google.ca','$2b$10$.s15wmH9/.UrOlmCz2D86.4tAKD2F9ZcmOGsDszKARf4zJWrSGwyK','2024-09-26'),(183,'Annotée','tjoel52@flavors.me','$2b$10$WorjChwc5QGYuSyfZC8xu.t9s1HHzZ1Jelg/.6DYmhtA5GhgeLHdu','2024-08-18'),(184,'Maïwenn','nscogin53@privacy.gov.au','$2b$10$J/pR8qzMIDzpQVNmNMbmZezJS/ygcLR7Cfdb2ufjxrmmp3Sb4XJUG','2024-07-25'),(185,'Anaé','jculver54@barnesandnoble.com','$2b$10$9dzI0RpAGmuH5hF1/f71bOrSWm8fs.lQWpAkgDfNrIQO7zFDhBiS.','2024-12-09'),(186,'Loïs','slemoucheux55@miitbeian.gov.cn','$2b$10$bmYeZ08ZE/864i9GNutJN.TxI1cPDGLwl8y9RTu5BqVbgTM0uZrNa','2024-07-28'),(187,'Célestine','bmossbee56@marketwatch.com','$2b$10$CsaAgKlMZHwQ3vImUCynje1QVUvd6dftVnDz1U7M4Y9L6.9OJpD7K','2025-04-23'),(188,'Styrbjörn','ldeware57@t-online.de','$2b$10$79UFS.MXOql.kgWoIrvCBeO4QYQxEMkYTEYMEiJVePciIwP70H8Nq','2024-07-17'),(189,'Stévina','ksandbach58@seesaa.net','$2b$10$CKobqN2CVLIv8VbDvHN5FOZDCWrOSxbDUX6DKP1fRU/0s1UJJOkkK','2024-12-09'),(190,'Sélène','ecran59@nps.gov','$2b$10$f6ZDt62LNIFzFcLVHOaI8uNhWUfSZZ.Am6drgvdHWK28H2N.hX4pi','2025-05-25'),(191,'Bérangère','lnolan5a@plala.or.jp','$2b$10$EDKRZd1d1Wh1UNoUjqHLielYFnw5YQpieMmoPaoqrHCJVaTL1uETW','2025-04-10'),(192,'Rachèle','nosheilds5b@i2i.jp','$2b$10$Dta1hEW3ogirb/Tc6l6kyusA4tY3B8vJazfQjgYndGI1ZnglTNoFG','2025-03-15'),(193,'Océane','ahodges5c@go.com','$2b$10$whIB2Eq8tSzHw21ZCFevde23HPkQQvQACXesm1O6RpW7MfksLLqfq','2024-06-09'),(194,'Göran','raluard5d@cam.ac.uk','$2b$10$OVHvjrw2Vs6jYUjLxLDO6.q0pSxEnib2FZoZ3ozX3uwHq7Sb9Gn3q','2024-06-23'),(195,'Andréa','mbrussell5e@webeden.co.uk','$2b$10$er6xhulkOOW911qDaS9ehuMzlKQrwf5ZHjDNfQQ1KfwQN24SsNblS','2025-05-08'),(196,'Alizée','pbess5f@msu.edu','$2b$10$y7TQOeJgRgUvp7KAhOQCBe.e4KaD9HQaM73IQy4pfhz.R07BykSZy','2024-10-21'),(197,'Estée','rgaytor5g@tiny.cc','$2b$10$hGEX/vN8ZbVpJhlDtvL6Y.BjHVzieIJWQDtfFqKzwK18WYcWbS4SS','2024-10-23'),(198,'Lauréna','rlindelof5h@yandex.ru','$2b$10$b1pqiND6GE.asNzXJ7LlvuA0iieYSg.vV76WjRM3E9RNmYyAqb.jK','2024-07-28'),(199,'Méng','smiskelly5i@weather.com','$2b$10$cA18W8zRGF6BZIXUjL3oTuQdtcA2m5fu/Hb3xSWOoj0PfWZhgov4W','2024-12-05'),(200,'Nuó','kglazier5j@360.cn','$2b$10$0YDg54/5jQLBpWTHWAJzNexV6Li21cErfgmnlVzHZu1.9eRLWEcJ2','2024-08-30'),(201,'Ophélie','gwasselin5k@ed.gov','$2b$10$qxk4BgUM6tfhQDPofxihw.PM5cMjZm9MZV6Pu3rU9zyIKyK0yPOnW','2024-06-08'),(202,'Loïc','tchenery5l@homestead.com','$2b$10$yAByV9zr3GuL3wiiJnL.Z.tDb79rQuxlQxFXnckCz12e/qEFr1JWm','2024-06-11'),(203,'Maëlla','hburgisi5m@networksolutions.com','$2b$10$Y3iEU/3JZQfMtcZVSlKKfecPU2vxAyAps6nsXeX39aFMtmkCFoWlC','2024-11-21'),(204,'Cécilia','dchilvers5n@tmall.com','$2b$10$voQ1vbmfRJoBruPqc5Q63.Edt0NhBdSKaSziRFIZeuYFjdbuFFTbO','2025-02-16'),(205,'Félicie','jbelfelt5o@pinterest.com','$2b$10$NEBVAX5kdFMUpzHhdxTAYOaXnZYNx1VGcPBW9va.gL0Pga6MmRNqW','2024-07-10'),(206,'Naéva','plowres5p@usgs.gov','$2b$10$i/5Eb/anB3PxsD6keejdp.0sS0SItAxPlkunpINQVNXfjPyX3INB2','2024-07-31'),(207,'Méryl','npickston5q@google.nl','$2b$10$ldp.wTEGzWwOrlb4TnVSWuVIEcGGCZFtinYt0lQwxnXyTtult.g32','2024-10-18'),(208,'Léonore','dbentham5r@hugedomains.com','$2b$10$RbNs6IrRFiw5NYakGHmXle.KrnCRQXSr87cohD8hJszbAh8WuP92a','2025-04-17'),(209,'Nélie','aaskwith5s@google.de','$2b$10$JNGngR1HiLLhjmfie14DPeJ1qS0EHIxMvlRIu/rwuYumxi/MOy9HO','2024-07-26'),(210,'Méryl','crait5t@biblegateway.com','$2b$10$naYZmtHDWXke9XK6v1SbeeUrYDdJibvNgzrsidQjzlMy96j.jYn1q','2025-04-27'),(211,'André','gcrowdace5u@opera.com','$2b$10$k5kYbrDaioGWN6DiPSO1jOQRpGGRdXjYQNusejMTvP7oEJRRCfeH2','2025-02-13'),(212,'Méghane','lscurr5v@salon.com','$2b$10$u..HYCVj5jVgmwXsAWLYf.vTyc0JRsI09/vLWRK/REkb4HRSDQQeC','2024-07-22'),(213,'Maëline','sleestut5w@uiuc.edu','$2b$10$6Otiv9CmfBawS.y1gMU8KeRqTUH0jSEJIStjuuoEuMHUN/eOU.lva','2024-10-07'),(214,'Lyséa','wklaassens5x@wikia.com','$2b$10$BlHdF7m0WgMkl.tCJj6NDeDySpS1lHW0Na.IoGhWuLP1UnNZTIxum','2025-02-20'),(215,'Méryl','phaggerstone5y@gnu.org','$2b$10$gQJ7//Gu5UTiCrSGp4vyAOtkH5KRF72iWpbQ10KKaNFdhzwoe5mK.','2024-07-30'),(216,'Annotée','zbarus5z@amazon.co.uk','$2b$10$6XJqfuOGezaiesRjTHeqd.V5YruPvZ/DIvT/DZH4cTOwkdP07F62e','2024-06-27'),(217,'Joséphine','lgawkes60@cocolog-nifty.com','$2b$10$CtIZwvcFFb9G3/.zoJ6a7.ae060cPy3VftioMwc0BlI25aOJtGCse','2024-08-05'),(218,'Faîtes','lgrace61@ebay.co.uk','$2b$10$IJYehhhqc8MnfJH5/7Jd2.wfxYDcFA1mqJ6uqW6OyOH5MXvyUuGW2','2025-01-04'),(219,'Annotée','rtendahl62@google.com','$2b$10$Cwx/cR2r/MyQfRBIRWmBSuSlRU.dnqNq5RCwg8Jm5jUEtDuQ/T/DC','2025-03-21'),(220,'Wá','pbeardmore63@geocities.jp','$2b$10$UCOSOtaU2C7orcB1f2MFpO98wWkQnixBp0PK2k6T30Dh/K2UtDkom','2024-08-12'),(221,'Åsa','cmacmorland64@economist.com','$2b$10$f7H9ho21eCWSc3SNccaVX.LgjPC4.VDmd2DWXwC8BA9hpKCea5OwS','2025-04-30'),(222,'Mélinda','lsweetland65@twitpic.com','$2b$10$abP8ZgywgGdxZuV2rP6JKudztJIz3raRRfjuScYBlWPW1JpFP3o32','2024-09-09'),(223,'Garçon','cficken66@sitemeter.com','$2b$10$OVNwITkyIIvKE2DxrxsiN.2jKDVC8EFAScVnhqh9DNhHlhMlQ.f9m','2025-05-14'),(224,'Alizée','wsworder67@topsy.com','$2b$10$KJD9.l5b7tCIb7eDF6zhbOfPpmpoMxfG5ywsOIMOR10tppKG76kTS','2025-03-25'),(225,'Eugénie','bstirman68@ow.ly','$2b$10$q5oVrO63DYNzpB5L5Um1sez080DQPQ1cXgdsi3cXTaDS6OS9PuI02','2024-09-13'),(226,'Vérane','jbrellin69@reuters.com','$2b$10$7ASsEx1QEGiTiN4eq9xvx.N2SffzV3tIOoVMXMi3dLWbBP1gTfSTm','2025-03-14'),(227,'Ruì','mvardon6a@google.com.br','$2b$10$j5uq1YytkUp6MGZFl8dkLOQ1zTICWoOagyt2i2tlpqRRYjhh9WVWO','2024-11-27'),(228,'Fèi','lmaraga6b@nationalgeographic.com','$2b$10$.twYWwLi4Noo27TK5k/wWOKRgV9nSjFMAyU8/g6p0bXlboXy.5s4O','2024-10-14'),(229,'Angélique','vbutters6c@bravesites.com','$2b$10$.TlQK07MSLYBueZvTRfXx.OthEVR2XpMZIj2umHShZqrDPvskn4t.','2025-05-15'),(230,'Daphnée','pbomfield6d@hatena.ne.jp','$2b$10$PakP8RnVsVNOfpYqexx7hehglcCb9/hpglc/JO1ugf6fsdS.sCkYi','2024-07-20'),(231,'Erwéi','ebolton6e@va.gov','$2b$10$R0vGFpMLXsENqxjJ9j0zmOKMg35xWx2Q9jRcF1COMSzwXxybgAZwu','2024-08-19'),(232,'Kù','ccammoile6f@homestead.com','$2b$10$/g9e.RyMjx1sSN3cWzOQWOmKuDtyctm207yaTAfcvb6o.Ltn7XCHS','2024-06-29'),(233,'Maëlann','vnorwell6g@sina.com.cn','$2b$10$k4OYhN1RR0GWCZhRaDS7TeEiycCCbVXUtVxLG3FtTQ26GGPI2M8rq','2024-10-08'),(234,'Pò','pmattiato6h@sourceforge.net','$2b$10$pclzCw7D169OHZoxsleqD.jHFLsaZWNRti9mryDatz2h3UxMjlB9C','2024-10-31'),(235,'Stéphanie','jgower6i@wikia.com','$2b$10$Vm4gp4YFhadCgnP5UOfhzOABZC4c8eryxR0qJYO3g50.KHjI8IcW.','2025-03-04'),(236,'Adélie','jabarough6j@howstuffworks.com','$2b$10$O4VsL6Xg1w7DJxITivf1/u1nYLUFKYoQdyLf.0cIUHrUO1Y3mLKjy','2024-11-15'),(237,'Simplifiés','larrol6k@netscape.com','$2b$10$EUug4pzJfpL16/lwi/i/Xe5qeVxrX9tgTAFd0VQDTqMk4g7LQAmey','2024-06-15'),(238,'Pò','lsattin6l@dagondesign.com','$2b$10$Tkb1BqDPJrc.6H8bWkDsGOfJL8wYzdHfO7F241tR8sS6WErlr8rj2','2024-10-03'),(239,'Noémie','pcollinwood6m@columbia.edu','$2b$10$281ByOfSQC90O58YX8F3mup5nXOzTEU.W.sTRFevlaW1f86gfYLOq','2024-06-09'),(240,'Yè','dsandwich6n@comsenz.com','$2b$10$NLMt0LbWJJoQEftdn0uIg.JepqKJfgSC6ncF1HM63jf4/xf51ZccS','2025-01-02'),(241,'Loïca','abrazur6o@w3.org','$2b$10$m1sM2eXP0WxmWQ.VfVPVfuiQ9TYcY7nNMsRw0Esokgqox2K7X12tW','2024-10-25'),(242,'Yénora','bdredge6p@amazon.com','$2b$10$OBGfw7kolR.fNRtB2nkD3uNLhHYK1pKEk1IC5X6vptK5KvIdgpe5q','2025-03-22'),(243,'Maéna','gcraighill6q@histats.com','$2b$10$13I7292UYZNneYYSdlMan.X6OMNU40OG98yh0WEDlmPYUYP8QXf3C','2024-06-30'),(244,'Mårten','faxston6r@wikia.com','$2b$10$ebryoR.mjU9kGjWBB9Yeo.K/HjdLfA01Y9Tg79mw3vHlB8PJ/ARiG','2025-02-22'),(245,'Liè','rharlin6s@ihg.com','$2b$10$5KwDiuP6KmmDQ/f8lOrIVue1LmflNYgY464UZyQ.h2kZMENrTiqNC','2024-08-24'),(246,'Dù','htschursch6t@cbslocal.com','$2b$10$3Sk2JfnuxEes8fYGOFbHWOSUeOZI9Yfdyj72LLrBrZ7TyQd1VcrDG','2025-03-08'),(247,'Anaël','fdionisio6u@sakura.ne.jp','$2b$10$M4E07b.HSYD3l9VoRtoQ8O19PKhAashsMNghguuEhRybK8eQ70H7u','2024-10-23'),(248,'Anaëlle','klongrigg6v@wiley.com','$2b$10$y7gPzAZqDh988.7VoiE7Xen/T/G5s7uDd3yxkTPuzflMLR/r1syiW','2024-08-01'),(249,'Torbjörn','bbresnahan6w@cloudflare.com','$2b$10$kup7kayIZk95AoZSab6FpOg2PCBXTDqwK2UFzIfvm3VzfSHfiZzd2','2025-04-20'),(250,'Aloïs','comar6x@soundcloud.com','$2b$10$WYnZh5SdDSTvjEYuZKflWerBGv5h39mQztmeOgDo1/eOqoxy1voQu','2025-01-27'),(251,'Andrée','eboyett6y@hexun.com','$2b$10$hZdy9NDXckof1DRbeLUYTuhY6sZbhOGKKDUWN3TAsZsFOD/hWRUh2','2025-01-07'),(252,'Léana','kelverstone6z@elegantthemes.com','$2b$10$uVkVivdTzCROUNtFt1KULeiRL4JhD7dTgF8WNozdjaHB3LfrY4Xom','2024-12-14'),(253,'Anaëlle','cpitford70@epa.gov','$2b$10$nd6MHFAjreWcW1IezWv/yO1ATFFAbgC0/vIzxmMjawsIBsHbN/E5u','2025-04-30'),(254,'Annotés','mbirdwhistell71@dailymotion.com','$2b$10$zW6myXspPuTACIvuoP3IJ.t5f6G2dUOqBXnGC6w0Dvc/9AEL9Db5e','2025-03-04'),(255,'Bérangère','bchucks72@kickstarter.com','$2b$10$e.8tKKWWm2tqqL42gfRvkOhSCNVkx8Jl2uUK7GjJyUbAumOUfQUuy','2024-08-19'),(256,'Athéna','adivers73@webeden.co.uk','$2b$10$wB3yT1pfT3ubN2xj0tHrMunLGiOvOSmqDVXu8SPyH.bffeg7SRod.','2024-06-22'),(257,'Maïwenn','ebeccles74@ftc.gov','$2b$10$ZIoy.4Q9o5KN4/ff.QNWN.jLB8FYzIKpZxdqFvtLanw3V/WwZBJQe','2024-10-19'),(258,'Maï','rbortoletti75@odnoklassniki.ru','$2b$10$blN6tmdEa.qymeyWzSSsD.6ejYYG5DSFQLKPvKqe4Yutlo9Nzzb4i','2024-06-18'),(259,'Cinéma','jtregale76@indiegogo.com','$2b$10$/LcCgFbEoKK8Vdr0F8W6nOG0AqOh6ilePGmian.5H7OmeceUc90Su','2025-03-15'),(260,'Yóu','mstoffer77@vinaora.com','$2b$10$/VAInD6CZpkKFNMEYI3F3eQrZ4DvYPYiqqvjBeQyfnjymDSRgpQyy','2024-12-17'),(261,'Angélique','rrosling78@eventbrite.com','$2b$10$TzH58oKzuH.BP98nsnND1e2nufb5yK50TfXlpCAFSA02lv6N25.t6','2024-09-27'),(262,'Liè','falldridge79@unc.edu','$2b$10$03aGPRP0yJnqa6xxdJBiWuqLpivZgbknRwT0qhr2uaUMO3Qm.W4/6','2024-07-05'),(263,'Maïly','rskillanders7a@usda.gov','$2b$10$ceorFZp5Gvc7rtn5onbGnuqkOTqBU9rl1SDhTQV3lDwuah9dpq4/W','2025-01-30'),(264,'Yú','wbrucker7b@about.me','$2b$10$AuaSZLP/rcl7WZTuW3e5E.iSvNmGUywR1KFsELiURKVgKZN7EkNAy','2024-10-20'),(265,'Rébecca','rodda7c@tmall.com','$2b$10$8oSb4tGmfyxN77lLXEFucONOUDfINrXKToXGHGNIpRS3hD3ZUWPaC','2024-09-20'),(266,'Léonore','cstrasse7d@goo.ne.jp','$2b$10$4Q5CdpDqatJP2HjhzcoRR.L18mCqn.GblvGtu9uKfo7cvQYBvcKb2','2024-05-29'),(267,'Loïca','hrex7e@privacy.gov.au','$2b$10$r8YKMa6pxhq17QHGa8v5Y.QQYVBATjeKNpXV1JjQFRmthQoS9gFbq','2024-07-30'),(268,'Marylène','hgibbieson7f@issuu.com','$2b$10$7n83p8GwMrdSr18NRVYaAOFgzGKMXYYGPq.YF/v714i5TCR4yrkZG','2024-06-29'),(269,'Chloé','gswiffan7g@soundcloud.com','$2b$10$zJqkTjoSzIl/eqJvqhZMBOBIWOtr5W5R5t5XmnNCUv9WM36vy3ZCm','2024-08-25'),(270,'Yú','gdingwall7h@irs.gov','$2b$10$gvVWD0Dsrv2QWgkVYZRaIeQjlxX87KjAVmWdYQ36BHjcIt8zeodh.','2024-06-26'),(271,'Léonie','wmontier7i@unesco.org','$2b$10$3/j5MjwR9qDQr8cEi3m.1OAC0RSca6TPOtIJW5OQ4401HHFY27Df2','2024-07-25'),(272,'Loïc','kliebermann7j@themeforest.net','$2b$10$2JaIpv1Huay0jIsNFV9R7uEep6a5vpbttXeFXZs9eiwSXpBld/.pS','2024-06-20'),(273,'Anaïs','arobelow7k@ustream.tv','$2b$10$wkq5yn7nRcGuBko9tupu3.nfg5TqK51lZ6yznwb3T/f998LugcD5K','2024-07-29'),(274,'Océane','tlunn7l@indiegogo.com','$2b$10$.EoYhbHiNrtvuJ5.zELDdefbjSvgP9HvoEI8eXQfQbis9vqGo2vdm','2024-11-18'),(275,'Ophélie','cmarcos7m@hc360.com','$2b$10$9tVTTBvpXO7wje5ZcIzOzu5.97M4MTDB2X2obt4auSj6BHfLiuJvS','2025-02-16'),(276,'Mélanie','awolvey7n@friendfeed.com','$2b$10$6H1qsC4CLHmnltz2zpQ43.K25k5f4whDGpZG15NBEOMYagFMHycaa','2024-09-12'),(277,'Uò','jbrownbill7o@acquirethisname.com','$2b$10$6mnwOFy4rH3hvMusuwMLJO91QEtzb1XM61K40Zp7qBIzqq4wbfPPC','2025-01-02'),(278,'Yáo','cbeaufoy7p@vistaprint.com','$2b$10$12JKzhip7ecdxm/nj6gILuuqZts9nMAmb.yNhXwepTWgx5CDEjYIG','2024-08-19'),(279,'Dorothée','dspeariett7q@state.gov','$2b$10$bU8BirUYlzkDxlHg2CmahuSJixvR39IaX4KgFV.daj6HSEa1Pa3aC','2024-09-08'),(280,'Cécilia','tdonavan7r@skyrock.com','$2b$10$E2wtWfCa9tFwcp58Ks.Ohe2YRK.af0XFiZMJJebwu27tn91HrxpmW','2024-12-23'),(281,'Marie-hélène','bupfold7s@aol.com','$2b$10$rbgcbB52JndHcOPw4iHyR.lR6OguC1xVGrd9hRG2pN6scoAnNCuuu','2024-07-02'),(282,'Renée','fgiacomo7t@rediff.com','$2b$10$cixmMwUsPXI2WfGWZ4k.cebd4QhrpzM8JAcw6C23/B6Sv0LN05e9C','2024-08-16'),(283,'Bérénice','bmucci7u@fotki.com','$2b$10$CrkLnnrTre16Gt3ftfdkHuCKFRhiJysW6sJ3NX5lmthNdNZsg4SiW','2024-11-01'),(284,'Liè','jsheldrake7v@cornell.edu','$2b$10$C.WmqOLvTAKr0vtT1n0hdusAbpfmmJO0vmqsf7y./MfdBs8QDIdzq','2025-05-22'),(285,'Bérangère','tklimpke7w@skyrock.com','$2b$10$mPgC5BZvAsLnHgI34D6Ss.0/.ELeozVgO8QqjFotCVd3P.dkrJWTK','2025-04-26'),(286,'Publicité','arodolf7x@tuttocitta.it','$2b$10$j7Op01WSpThdANV2ePekWerlgzi8cswp8r14GHl5pdTS1HiOBy0M6','2024-06-08'),(287,'Yáo','jyakubovics7y@feedburner.com','$2b$10$CFzn5MAJwhZ/NM2F31H1aeUeToYjMSWcshSWfyODwhZJEP.Lsu1sq','2024-08-25'),(288,'Marie-ève','gmahaffey7z@skype.com','$2b$10$Vb6TPVnIj2GA4jMlaCO0/OWdLuu38NLoEB5wP80VV14q.0u7r0c36','2025-03-23'),(289,'Erwéi','smcshane80@tamu.edu','$2b$10$T/F0EiO5iZeyJ4jDw1YOi.mn4mcaPAWLRqv83r143gKyXSWUpfONy','2025-04-23'),(290,'Loïc','lbarczynski81@google.com','$2b$10$4XVhShgYFcoStRCOuFN7LO9E7Eqzf7HLgY5JSnaP3sYUBKp8GF6py','2025-03-31'),(291,'Bérénice','tostick82@timesonline.co.uk','$2b$10$N4lqFsEFxDaRduc4iZVnIuc3p4f8JTCbf/WEP33l4goU3PYxhIM2C','2025-01-14'),(292,'Eléa','gbisco83@ow.ly','$2b$10$8dWEbAsdwmwcxaxp/Im7fuB.4Rjj0o9Scby36lj9aM4WU.Bgeqvpu','2025-05-04'),(293,'Judicaël','jollivierre84@miitbeian.gov.cn','$2b$10$3sCTQk97fb2vvf3ZhxNA5.4L//4nV7vRDkbMeywtsM.7G.Y6kiwM6','2025-02-14'),(294,'Audréanne','dmacieja85@blogs.com','$2b$10$C/GAFGVNt5FIVcqGX5lTseXGFZossMTz6CqmBD/XpLH8nFs7/ZUtu','2024-06-20'),(295,'Eloïse','aallender86@kickstarter.com','$2b$10$PHPNm/C8SRjXzWfe69RlbugJRGxHRzirqGI4skTZC4W1uFj7eSkSS','2024-12-26'),(296,'Crééz','gcatherine87@jugem.jp','$2b$10$Ogf.MTU6USkdWmpQMqzIE.LZE/GFA0yZsmVmwQEAVkiSgAqi6noE2','2025-04-11'),(297,'Agnès','wbuckenhill88@twitter.com','$2b$10$VspiOm28GabnHwkDTR2NZu2Fy2XlPCKMRWfXTM8RkkKU2x8D4NKpa','2024-08-04'),(298,'Marie-josée','amelley89@pagesperso-orange.fr','$2b$10$yI96xcArqpc4DLVHEekT7unQbeYWBIJDYbp9gj9qF5QlXQLg2kreu','2024-09-02'),(299,'Méghane','llegan8a@hhs.gov','$2b$10$PVZuNH81MvlpDFvnb6RQV.3fHH8XwlnNZnj.Hpg15gTta479BAyhG','2025-01-28'),(300,'Illustrée','bghiroldi8b@sciencedaily.com','$2b$10$paWnwuYlSgolH3NZeLhqE.KdV3XyOLesGFQNGhKoGmyTO9nFKFFrW','2025-02-08'),(301,'Uò','lbarrett8c@oracle.com','$2b$10$PWnSCzfjoSaF4IXVoiorE.oxtUhkgRw1tEKp09/Q972SHMidIreNi','2024-07-30'),(302,'Félicie','wsaltman8d@quantcast.com','$2b$10$skVg6IX5LRtB89jYPWraxuAvFb6yOl9RGbO413IWH3juZ4PZqz1Qy','2025-02-20'),(303,'Clémentine','rbuzek8e@bluehost.com','$2b$10$AzRYcI/tCvxhUSIktNP6Z.QWIZoM.rspgaUPY5d4NhFva/09oSO4e','2025-02-19'),(304,'Marie-hélène','gwass8f@etsy.com','$2b$10$deBQdpkYf.UVYzqdktDXa.KtiqO0VEkYzvp/.KPwxovi3D.nC1nTu','2025-03-20'),(305,'Cinéma','btrowsdall8g@google.co.uk','$2b$10$aWbbRgCcc//RSpdWRre7temVq5v4bl0jeIrJLVcyiZkmLmXyGRAWK','2024-11-05'),(306,'Cloé','jstollery8h@fda.gov','$2b$10$Djf9s/ztI8Myqo4.7XGLCOzgoHOty2esa/.XfORKwOupPb/JVJMAi','2025-01-22'),(307,'Miléna','rmeachen8i@bbc.co.uk','$2b$10$tVPyvYd4HNpcpJ7TUUzv2eSX1o/ro3GGNnaa19PPfdaxFAlb9pf6a','2024-06-23'),(308,'Yóu','dzecchinii8j@paginegialle.it','$2b$10$.G.LI8p1mu.7PlgGah9uJ.k6lE37emCEuQSNLWLmeO2NLqTJlxlR6','2025-02-02'),(309,'Amélie','tcomello8k@people.com.cn','$2b$10$Qd0HDviMFmYUE766LX20XuMIe1OcKtA9sxYOLw0elz84etGDqhniW','2025-02-25'),(310,'Gérald','jpeotz8l@noaa.gov','$2b$10$TGPaL5sk/gg8myLf3jMCHe9e1ncy1TH6DQU/b2ciFLeXFM.OLjbrW','2025-04-04'),(311,'Eléa','ktabrett8m@google.nl','$2b$10$U49ZvYwqy2PpGYwbJuDpuOshYN11DxdVerPTBnpcpHdFPytK0DPLa','2024-12-07'),(312,'Gaëlle','rludlom8n@webnode.com','$2b$10$CnyM/OZLjL0l3xwX73YoE.9HR53SX/PEq8HeBFj3OkEX.yMr7bWK6','2024-12-28'),(313,'Bénédicte','mcrudge8o@w3.org','$2b$10$eN2yFoiGDMNx63VZTMgnHOJ0z9ga5HcpjVKYE/1ALpprhwh5wTqUe','2025-03-08'),(314,'Adélie','egroll8p@edublogs.org','$2b$10$JUPJaaG/jpZFEsRSHnajuONEc9Ct02lxzmcUtp.kLvKTlororp4je','2024-08-12'),(315,'Béatrice','mhryncewicz8q@ft.com','$2b$10$vL4HFZ7tGOf9Sq4fByjkKeUZKHpV.inq7HAoqFjA/d3Gaz6IwafIa','2024-05-31'),(316,'Léone','ascrimshaw8r@state.tx.us','$2b$10$fKmZZ92cxqr0SoKo3gf.1ekw50FGlbThcwlpOz402enGzUmVkkIIe','2024-05-29'),(317,'Inès','bbisco8s@cdc.gov','$2b$10$8fdz7AhNAPEqDU.JHs2tk.NnmhYXO57zSu88ZTPGA/YGNOpKz68Ue','2025-01-27'),(318,'Léonore','bjenney8t@nydailynews.com','$2b$10$4N13x.z5SEIB6/9w4/flzeJqOmR/DLn2r.CJvNibNHaZOQNZH1fE2','2025-05-17'),(319,'Solène','shaslock8u@mtv.com','$2b$10$SkaTPfhhyTrIFfc2umzJhuaNOK0uD7Xszrj6EG5PZEvnpFzCyNiBO','2024-11-16'),(320,'Cécilia','mblackley8v@goo.ne.jp','$2b$10$O6JE9ad4vPP64Kk2Dwqge.E0MTFfs9b3lSamjDzQdH8gigF8JcfWe','2025-03-17'),(321,'Maëly','gschmuhl8w@phpbb.com','$2b$10$v1WuNYbV/JGwIZK025nF7ui5CP1LQcVhJKHR/z719nEAQ.px.x2me','2025-05-05'),(322,'Célia','jcatterill8x@example.com','$2b$10$5E9w0oytWgZ6P0o7hBcbSOedur/IYTYeKKBisr8inRCt8iIvUJtKu','2024-10-10'),(323,'Tú','ejenney8y@gravatar.com','$2b$10$qn0rV5FF4KanlfHNh5XKIePa2IQXl1pMEGxvmRp5mOcKJhNmKpQs.','2025-05-28'),(324,'Cléa','amorgans8z@merriam-webster.com','$2b$10$nwGsUSwXYU5Iv93NqByOIO/zMAd3To.zNdZE8bpuVOVC3JqEDPq9O','2025-03-15'),(325,'Mélissandre','dgellett90@vk.com','$2b$10$9Q4dzE4fvlHz8L.xxP5fV.xKBRK2Skkn9EALMMhBKoiA1jrSLMdkq','2025-01-29'),(326,'Stéphanie','ymacdougal91@comsenz.com','$2b$10$ZbDLtMo18F5/TspYrJ71GOKWz6ezEfQfKMzVRXZ1OOmO9MtRpa9zi','2025-05-08'),(327,'Marylène','lcejka92@cornell.edu','$2b$10$zFEPT3iN693oR.00Y1kwZuJll5sUXXjjG8IMGDCvwQNx8zW3O3VpK','2025-03-13'),(328,'Bénédicte','elydster93@hubpages.com','$2b$10$nxTJNCJT0EO.1HjZwCBsiej0xri6FwZ/IoEXLHLerczl5giCCVMnW','2025-01-17'),(329,'Véronique','aextill94@rakuten.co.jp','$2b$10$hYWczWJfFWta0S2F3LsW2e/8CNWdwDH4werR3z1qA9vd63Nk3VMEy','2024-11-09'),(330,'Chloé','brevey95@blinklist.com','$2b$10$1cQGvEld.tTacSZTTcyPUe//knG.K744Jyi2zP/p/N.4U4yLy70i.','2024-10-21'),(331,'Anaïs','dmorson96@soup.io','$2b$10$sl7n7x2LLbGXzRKbNJQnyu6ewXjZ9iKc89h7OgsacVUgq57Ugkvzm','2024-12-03'),(332,'Magdalène','lhurche97@cmu.edu','$2b$10$2YVxNFd1c.UC6fmQma16relLHgJ/7g/ME1cdGlH/yXQkuEYCS6k0q','2024-11-17'),(333,'Adèle','pkilshaw98@webeden.co.uk','$2b$10$aO0Nt73x1NmxGVaek.35SehRSoAl2q1C7iBUvUS/P5wd/2AOTJWd2','2025-04-02'),(334,'Cunégonde','mmathiassen99@twitpic.com','$2b$10$H6HNm6ecEnBQZgBzGF5ecO6fZqwxOYfYLUlq7R2XjSfgHeZD739A2','2025-05-01'),(335,'Mélys','lovell9a@deviantart.com','$2b$10$CiMsyeBZ6hUTPnCPfe0pA.UyxTX8It5WY234uKaexsI6wBcC8gdxe','2024-06-25'),(336,'Réservés','eexelby9b@hibu.com','$2b$10$KtaWvRVXwKZlW0lT8il0TOfhMpg6x1bzY0mF2aNubtPHM2WM7Sqyq','2024-08-21'),(337,'Kallisté','dzannetti9c@wikimedia.org','$2b$10$j3VdP9H09zQiu//J6eeeJ.Jk8AksRR4ib2Wbon6xfO3Ml6kMVVqw2','2025-05-11'),(338,'Naëlle','dpassby9d@netscape.com','$2b$10$MPBSw0l6Awu4pT.P4n9RzOrg6ka0gEJFOG8jz40XPQxcSFIxj6NLu','2024-12-01'),(339,'Inès','gdoughartie9e@admin.ch','$2b$10$HoWYXk.xF90lpMjugNSwROd/VGZYFZ/igJBszZyC5gYDASfGgDJAK','2024-10-19'),(340,'Esbjörn','psisey9f@vistaprint.com','$2b$10$EsyhIssiQtND3FgAZvcS4ORGh5mzS3WX.duJr5g0Glse790u5CuW6','2024-09-06'),(341,'Véronique','cburrage9g@is.gd','$2b$10$kQpKA2uDfL9SaT5VHAs4NO0ZTVJcn3UuLw7oQtN77Zoi2Nz63Kme2','2025-03-03'),(342,'Adélaïde','mhrinishin9h@cornell.edu','$2b$10$zIqKZQTdPfQedr4tOTSJ4O7xr9ILP93dapbR3XouoPaH1JFdF40aC','2024-06-20'),(343,'Inès','ffasham9i@theguardian.com','$2b$10$XgTPRTXNKIRjI.hd8Yyk3eLQcxlCy0UMa6UvzCwuU75bhPyum0flm','2024-08-31'),(344,'Dafnée','klaurence9j@photobucket.com','$2b$10$8d9gBlAFNUEHM6DscK4zkuqb5sSw9Sdfeh.ppJm10hjcH/vwASscy','2024-06-08'),(345,'Gwenaëlle','hgutherson9k@github.io','$2b$10$OTHZe0F0ei2zTgJA83F0seujRfCKU5rHQ4XDCToipfnmO96HuCz3e','2025-04-11'),(346,'Gisèle','efritchley9l@wikipedia.org','$2b$10$/JJu1D7DFH9mVRqRJUS0Ner7DcP1sNxAzxFm3NfrwucOP.YnOxmVq','2024-10-24'),(347,'Laurélie','meastgate9m@narod.ru','$2b$10$NpEeUfyXdj3O6ZnEk6PXreGDM/Bm53ARRa5IO3MBAxxXXh/FI7YiC','2025-03-19'),(348,'Céline','dmeers9n@ted.com','$2b$10$XtrFySz6dhO6TltuL8GhbuLW7Lf8ZfD6jAHYtKrkPX2lykjfcvSG.','2025-02-23'),(349,'Renée','rwinsom9o@cmu.edu','$2b$10$deweIIIJPxf8LXTNWwMeW.ko6XTK2ibfp6qO9Z1u6xPKURPAJmzHu','2025-01-16'),(350,'Faîtes','sacors9p@paypal.com','$2b$10$b53SBgd/8itJ5sUOHyby6ecV1hUM3W/Tvi2LOkq0OBOqqNg07SkIG','2025-01-31'),(351,'Maëly','pcaddie9q@simplemachines.org','$2b$10$uIoRNmltKT/1Ilaqt9IQFee1xG1kP7jjuDTKpNoFJEOQ0TK/T792i','2024-11-18'),(352,'Léone','hdiamond9r@fema.gov','$2b$10$A.n8XDKEWbUBYp9/Mh01z.XoU6jsLsU7u5DqwSTBLvj6yHr8BRSq6','2024-12-24'),(353,'Ophélie','nstopher9s@odnoklassniki.ru','$2b$10$AzA.Y3qCK1yNlXIZmOJC1uKBKY.HZvagOBKFjcQmLRvLZkZTMviv6','2025-04-09'),(354,'Océanne','bclubley9t@instagram.com','$2b$10$yFolJarcnFoClbp9Gj1G7O.LbimUm.f0UUKltAifQmPSTE5qDznU.','2025-03-27'),(355,'Marie-thérèse','lviant9u@1und1.de','$2b$10$v/u8Ng0/e199lnTfJmaKC.F2fQVEAP9jFObD939vHYSTF7Ka8J1T6','2025-03-07'),(356,'Cécile','ccammoile9v@hostgator.com','$2b$10$gLm4Z8obcfbPzFbSNc3GCe5nnv5sQb8ZfNbYKyelyF9ehrX1GXUBK','2025-04-06'),(357,'Joséphine','zcrowdy9w@sciencedirect.com','$2b$10$HNtbP5oVlszL1e9zs4OwBOU4VXVbwWKv0LVfyBqAZLIERj0kkGDOi','2024-11-28'),(358,'Tú','gcardenas9x@npr.org','$2b$10$k6Ncdvb7saryUrhJ3/mMrOUYJ/XhuMQC5JCGJAb843WrHR6rKAMI.','2025-02-20'),(359,'Nuó','lperrygo9y@hc360.com','$2b$10$/tXKl0H7oJaz3wXZlvb5ZeIfZ8Pph5li2ySLURXhxjpWbg1FoBlh6','2025-03-01'),(360,'Fèi','clinn9z@opera.com','$2b$10$5zheZKcbo.qoW.bE45VDpeLEBreeSJ4.pRRbmIjX4evAuET8Bmw6C','2024-10-11'),(361,'Adélaïde','ztolussia0@ameblo.jp','$2b$10$HcjjyMFfW7TFJh4Ro//GP.ZQJSHltqazN3FdsEuEuzS6qCQkr4yIS','2025-02-07'),(362,'Chloé','hfranceschinoa1@reddit.com','$2b$10$rHvDHl9T.oFHMNSu7FD6fe/13tLYif1k1zuAn9u5D/BtCOO2Jhclm','2024-08-18'),(363,'Maïly','mbeathema2@foxnews.com','$2b$10$Bw3c5mJB5PS0erkJ/.hAu.SzyurXwQvy0lmVdTe/jsYxUisis96RK','2024-11-03'),(364,'Eloïse','isegara3@privacy.gov.au','$2b$10$VYhZYADYKzGfjZt38euJ6elCWluU0P0SvI0MdjzAIjppqVhCxJJ.q','2024-12-05'),(365,'Desirée','thubbarda4@rambler.ru','$2b$10$nXpxYVRgprRriGnOFLIQgOKkTPDb.wNAZfwYEA.zhAhhjZ6okIpYC','2025-03-23'),(366,'Gösta','civanisheva5@archive.org','$2b$10$Vvc3VIFDFwqOIUnro3xnv.YsrYsLyDpghbk5ROE.eOmHNj6M5b6P2','2024-09-14'),(367,'Loïs','pmilsapa6@over-blog.com','$2b$10$0C8sB55MuUqdyUlUf42qAO8GvKZI9n0nSuHIvKH7eMLHDQB4Sdbx2','2025-02-26'),(368,'Crééz','msuggatea7@yahoo.com','$2b$10$Zo/fUDpXftIzDMp084Byp.U34r/3kqwKHbDcI4zjO/Pebr9qjdv.W','2024-07-05'),(369,'Dafnée','cgosarta8@t.co','$2b$10$oeIfArnHNlKXst63CNn7BuWub5aZRMCjLMBWaMwMCzus6fBMuDJGi','2025-02-25'),(370,'Clémentine','cransfielda9@e-recht24.de','$2b$10$4ilLX367HXWOJFuL/4LAeOB13lvKZ.aj.25CLFUSRzZj6TB1pv4Iu','2025-04-12'),(371,'Eugénie','tvampouilleaa@chronoengine.com','$2b$10$6PCEz.dfN1fOXw8J18yRz.TLOTn3J6iR20vlcAVZwFIwmeT7lc7AC','2025-03-09'),(372,'Céline','uirdaleab@patch.com','$2b$10$UWFIxZlkIP2xfI3Es8Tp2OQQYjtgOKXvMFshqvFK78vyTEgNFPD7a','2024-09-02'),(373,'Mén','jrowlerac@example.com','$2b$10$xT1VvgfPWV5ACQdDsiw9HuJkfca6BICnkVfRPQmHXLNwMvNfrt9sS','2025-05-28'),(374,'Styrbjörn','mrobezad@pen.io','$2b$10$8QClePb/XpPH766mDiRaSuBE2u0JUAeGH33hnnEsWsRyg/eXnSnju','2024-06-20'),(375,'Cunégonde','rmusprattae@rambler.ru','$2b$10$t7WBM7yqivaiSX7DGBhY1.ye0q.uyDxhydmnBZhF5XuwY286CPcCu','2024-06-08'),(376,'Ophélie','aautieaf@feedburner.com','$2b$10$/0Zy6YZnUBEQxNcKpMIONONG6ouTjpQ/mn5ZIiU3KAn6yWG3RluTi','2024-12-27'),(377,'Yáo','vclewlowag@hexun.com','$2b$10$hA7BjbFqoVPBrAZ5XZGZkOwNfcbWDotHeg0sEj4wMMLv11yf.nG8y','2024-10-30'),(378,'Maëline','mkrysztofowiczah@mozilla.org','$2b$10$rGmB/vgagP7IYcBklyTCiOS03uCvrUhRn51nfq/fP5r6mp4vXnRfa','2025-03-25'),(379,'Gaïa','jvasiliuai@bloglovin.com','$2b$10$secln45OekkA8ycEbx4EyesLo3GSThmwKSJ4px8QhmOwiBKGzRrgy','2025-05-12'),(380,'Noëlla','wdoerlingaj@unesco.org','$2b$10$JvWJCKgIHtahVx1gI0v5i.tX/w3n3AGYRSBMpYsg/mBk2On9l4bvC','2024-09-13'),(381,'Maëlyss','bwassungak@umich.edu','$2b$10$P01y8TVyUV/AZA7GGbzHuenoS5Btl0/DCSIpSjmFpordbWfsgeqVa','2024-11-17'),(382,'Joséphine','nlesarral@stanford.edu','$2b$10$p6J2NYafNf7.qnjw5Yv98.fqM5qqvy6tmgjpw35KVzIIMz0tEXGRq','2024-09-27'),(383,'Dorothée','bcodneram@time.com','$2b$10$uNeM74rSyj7RxdULfC/JMuFV42Qn86sNbbHLrrpbXI/2eUqEhEDSa','2024-08-14'),(384,'Cloé','kforrestoran@exblog.jp','$2b$10$w5nm.kx1rgy67yFBNy6qBOY7ImThV8Ngfar/CB7sjm2VFyaeHVnju','2025-03-16'),(385,'Thérèse','jchomleyao@java.com','$2b$10$ybqQmLghy8oaGfWogRdHO.NEkcOWkjYL5LzREAydkQ8AJfADsAgG.','2024-08-24'),(386,'Maëline','jgrowcockap@bravesites.com','$2b$10$E87xEsh9FllsAqrCaEMlM.oJy6qnjNMOX7dP1MOjPhKlGJhs0nUDK','2024-12-26'),(387,'Léana','nboaleraq@last.fm','$2b$10$TkY4I3Sbv1URw0ZTvN5nuu43sYDLXY8DDmXfyAckVjXEDCdaQpgde','2024-08-30'),(388,'Göran','vwhitebreadar@hud.gov','$2b$10$tWe1/aOaQd5th49a06zBJuANsUw1ylTUtpzQkkSI9wJuMaWjQEneq','2024-07-22'),(389,'Naéva','lgowlingas@mozilla.org','$2b$10$XOrwjHXTAVVIb4vGLNlNiue8HzjedTS.3j.XXI/31hqxxYbbChOOi','2024-10-14'),(390,'Alizée','bskeneat@twitpic.com','$2b$10$5t2filfre9.mOV2D74x8ZOHC.w0MZ/FGKPgkVsZkgrfWuxh6xyqk2','2024-07-28'),(391,'Réjane','afaircliffau@google.com.au','$2b$10$AmhUgmdmcyl/v1qIhSOSreGIOsPuGNv9SDJAiNHzjLA.5JpWA18WW','2024-11-24'),(392,'Marie-josée','wortaav@reverbnation.com','$2b$10$N0ixk1LbHgLvi/Yo2DJOneMGDgkgTAGjvE2OZM7ZNaEJf0EhbJVVC','2024-08-23'),(393,'Bérangère','sborrowaw@bbb.org','$2b$10$EV/ij1i7JjC3YzyPlUrCLuHAZaWSLdVFTvI.pvMLLONUWPL1Lcyru','2024-09-30'),(394,'Jú','wsabbatierax@samsung.com','$2b$10$aothnofrlgZ296DO2gI30.n0XGutsz9KfMfQkbcOU4WBO1znK79TC','2025-05-07'),(395,'Angélique','rrubartelliay@geocities.com','$2b$10$GdXh0LSucFWPmBXQWf8CjezQHjL/pz692uMMsRVSf2Cp53sfr2l22','2024-07-26'),(396,'Méline','sjedraszekaz@furl.net','$2b$10$pjYIYKTQsjfgGOUjseW4XOjFFsJSCPRlyS4pfk515QhBaTnCLrL72','2025-02-01'),(397,'Noëlla','cferronelb0@hostgator.com','$2b$10$3Tbx.kMg75OksGB2DlCtL.OV7hHZDScxIF8WVF.bNJU8MdrTSbBTm','2024-11-04'),(398,'Örjan','vcanlinb1@geocities.jp','$2b$10$0ZOJRboyWC6c.n.BqEGzoe0XE2ZCG3LiwoOaKlYwMUaezgCN7gDz6','2025-01-12'),(399,'Dafnée','jyellandb2@gnu.org','$2b$10$xalGFg7.WTAFG5CtMURjiejDi8PAghcEt/fLK.rZz92vLPrjGnque','2024-06-21'),(400,'Annotée','sjessepb3@squidoo.com','$2b$10$HBFbsAts7y37zy7YPyMCWOGS1Qubej9E3.pNYNkRylxeb2GJJ/712','2025-02-14'),(401,'Uò','gheddeb4@google.com.br','$2b$10$XiIKzYlDdg5bO8.spRk0UeGnOEnJf0Uur5Z7m2TpBU1PeDOr.9Ka6','2024-10-15'),(402,'Naëlle','asterndaleb5@nasa.gov','$2b$10$wGHIUQ2XzMG3ofahrpBfIu6R/gtOjC9cccDcsT0onnEeYTQPi9cL2','2024-10-10'),(403,'Pò','kbardenb6@pcworld.com','$2b$10$IG7GTpOHmwojP6R77QH.pOTT53dM1ceBi.Li0A/hlWEEQSX4AKnMa','2025-01-19'),(404,'Maëlann','vgirardezb7@gnu.org','$2b$10$MvVtAUw4g2rH9PQ6usXGG.bJuuQ.ecpqK5m5kiAursn5fqiEtRdg6','2025-04-24'),(405,'Gösta','ghenninghamb8@meetup.com','$2b$10$vmVeO3IUAlBzNLqPt8wvye/WXWzFCazV4O7EOpCRII1qUr.aY.F96','2025-04-23'),(406,'Personnalisée','bandrinb9@issuu.com','$2b$10$g/FU7beyYUeyWd71o0YlDeEQNCFHCzKNqVj5u5NVWh91zdvbq4s5K','2025-01-12'),(407,'Maïlis','gghirardiba@businessinsider.com','$2b$10$qLwVlumRIr7z1CTE3pjtxu087k.Blm.SSJdvLRhPPX/PXdfDE7fn.','2025-03-26'),(408,'Vénus','tpharrowbb@buzzfeed.com','$2b$10$nHZSs.uXHdv/kvG0kACGm.v3T2ujxjseiUsz2TnkmxLfD.7tIcwS6','2025-01-31'),(409,'Mélissandre','kausherbc@wikimedia.org','$2b$10$oDBMHIpZq57YENDDxAskpOloYReEU6yqJQLj/S./xsrP04LjA21zO','2024-06-21'),(410,'Bécassine','odanksbd@dion.ne.jp','$2b$10$gxl.T.mN1kTL53k8u.P/beYhIskiG.rpnbIz/CrT6qpvjRMK7Zyga','2024-11-17'),(411,'Laïla','aseagebe@blog.com','$2b$10$YzGmt566V.ZYw8EYLMV3Zu0.YHcyPf9OyJkdi44MbHML/tz9rBXnG','2024-11-10'),(412,'Liè','mwaylandbf@berkeley.edu','$2b$10$zHpBddcczuHSv/FE3ZLeDeGohv/4HnDUQ4cNlpiAecFZcUG/FtBtO','2025-01-06'),(413,'Maïwenn','usalmondbg@seesaa.net','$2b$10$5L9TKLn7DgQDoUSZJeoIfeyf1POkkx6uGcsx7MRvekYiXB73Ami.S','2024-06-01'),(414,'Zoé','nlainbh@slideshare.net','$2b$10$BrST.ZTRddSnemweSTkXueYJq1nyVBp76NMsn0yHFmdH4/qaWOZxe','2024-09-03'),(415,'Clémence','fdelgardillobi@php.net','$2b$10$gdo4zhlRWKbIL9G2DbI8wueFkcbVU4PCXdtMjCSI1vb87NmiTaHgi','2024-06-17'),(416,'Nadège','mbelvinbj@mail.ru','$2b$10$.6EkILeyKzMB7iwu9F3vDes6VAIVaEEuajtzrTUufh.YSPnWlYHk2','2024-12-14'),(417,'Bérénice','amandrebk@dmoz.org','$2b$10$B/jiU.dAUcTRnS8aqfWJ6uY0MVkHP8NKOQg9cVNMtSCwyUNlFQ4JO','2024-08-26'),(418,'Mélia','bhaliburnbl@rakuten.co.jp','$2b$10$eSz1B5LxQfKBYM4rdwfrZOuxBButNq2rtzX27iO0io2pwTn.DLAzO','2024-08-03'),(419,'Måns','crentcomebm@squarespace.com','$2b$10$qL2j0oVB7GtBdv9iUJxNteSULLz5WOw4AJxp3ZZ5JjRlbWxIouHO2','2025-04-04'),(420,'Yáo','emcgarrellbn@last.fm','$2b$10$OzSiWe.wEsWQp0YCJbXxP.59lwCx5d2qHf2tL5Cb1AFptPuZfwq12','2025-02-13'),(421,'Personnalisée','nkalvinbo@stanford.edu','$2b$10$KKmJr4Y4IP39qMBm5VX8T.Zcigd9l1XmlyLgmN7VMK5n9tIETnoXO','2024-07-05'),(422,'Gérald','pbenebp@behance.net','$2b$10$mb14OIJ900dzCAk.4ThsUOvYYUh3TDWntEV01iZAUcwL2zkUbTxou','2024-06-04'),(423,'Daphnée','mmanthroppebq@prlog.org','$2b$10$aj9gqa/mdBFVCfmmEZq0HeYmvutH1yTDGYbcNsM0hDCYPfmxvjLmK','2024-07-18'),(424,'Andréa','nloachbr@virginia.edu','$2b$10$9.awsvX0YM93FcG.PjHSWuwkdpg0b55v/ew4LYspUVzyIqd4233xm','2025-03-23'),(425,'Geneviève','craftbs@ameblo.jp','$2b$10$f8q6O/Dqjk0AlZJ9rHt3ye2GpI19juT2dCrm2f4QTwIyVH8.g98ZW','2024-12-14'),(426,'Ophélie','ycrotherbt@washingtonpost.com','$2b$10$kKNKbM1qknI4ys3zw55imOcKGQ6YegPGJUTM4JY16.B2JiadfdeMm','2024-10-12'),(427,'Célestine','nkatzbu@irs.gov','$2b$10$C0LKC4t97k3jjg2zcqhMNuLQQ.ofcNvaSxpKHezM1qqla8kCQpb5q','2024-09-11'),(428,'Cloé','dlarcherbv@goo.ne.jp','$2b$10$1lPibhODyj8N77/iD.GibOznSdtHQYTHz9pwq7Pqi47zd4OsgwlY.','2024-06-22'),(429,'Erwéi','lhendricksbw@loc.gov','$2b$10$X37Isa4.jwgFQkFzwDXpyOwO7SKXXNSRQhPfN8YBJFnLJI8IXNDaa','2024-11-03'),(430,'Véronique','ydiemerbx@yolasite.com','$2b$10$Eybm/BrjQBe0gPE8JgkGEutdzxGusvOFJLlcocHN5zRS4qdJL2.8K','2024-09-15'),(431,'Valérie','cellitby@omniture.com','$2b$10$oETX9zWmRHC3unWrm6qT6.mXw/ef3SCo8djzCafReGXWsLurOoaMW','2024-10-18'),(432,'Clélia','amcdiarmidbz@cmu.edu','$2b$10$1OxS0MSft9QsCpb4rmYR9.FMmO5TwC38PvhdvqJZU4FiXhQW18iEi','2024-09-20'),(433,'Bénédicte','ndykinsc0@instagram.com','$2b$10$VkhqGMNrd1nJtVDcE/74TOvlMh8xPsTNbvEoQAOCAr.WUht6YVO7.','2024-08-13'),(434,'Vérane','leassonc1@usnews.com','$2b$10$LSP.RoYTm6cW2HAfQFKk7uG43LBol9b01dlOhtVoA2JMdM.cYpdNa','2025-04-10'),(435,'Östen','hclouttc2@businesswire.com','$2b$10$giH21Q/MPGmlrgrvvz56XOpoVfdMd6SPm1hdT.lrMGBIZRNPu8wkO','2025-02-13'),(436,'Angélique','jtingeyc3@gravatar.com','$2b$10$vojle5S0dOBc07PNFciCtubntCqdEcK5UtLUHnpFMXGmCa0iQkuky','2024-09-09'),(437,'Gösta','lformillic4@fastcompany.com','$2b$10$s1pLKHrKLNECUxD2a/xIZO6uOyBVE89w.bkghFUmw9rVFINntPZ0e','2024-10-12'),(438,'Dù','atootinc5@boston.com','$2b$10$1iXEjB5/3NzTCmYaJ0ssw.zUjwZtabFLxR8rJAkDQIO/tVD.24o5m','2024-09-17'),(439,'Béatrice','klewsleyc6@dmoz.org','$2b$10$L77e1j4K32Ldc.fEouYC8.JLoRHkcU0i.EDfkMMdVE5Cf/FWUnKfa','2024-08-21'),(440,'Lucrèce','rwanleyc7@skype.com','$2b$10$1uBbTIXBKe/6jmKpcZ.s4eUZBNtVXDxtGKXCiu5XBe1KdS0xS0Fza','2024-12-14'),(441,'Maéna','jgamlenc8@techcrunch.com','$2b$10$MbKwkXgwI20PXKQgq9RzNenXpgO5OZVZQWsn8Db1xrhXnepgaZosa','2025-02-20'),(442,'Adélaïde','rdrawmerc9@list-manage.com','$2b$10$UCFV1TKeiyvFWEVJEfwWa..nvhEpf7.U0OTSazasu8wEYEeXTZcs.','2025-05-04'),(443,'Ráo','lellarca@dion.ne.jp','$2b$10$4ZXV4sA1ukiemYhcxP8nF.Mt8SWRccNJIkpgdwh2a4qcwBzlW328m','2025-04-05'),(444,'Annotés','wlambrechtcb@i2i.jp','$2b$10$L2KSzSDC3eTNsNMLs/Ljau8w03ldLw9SJ6d5rRj2S7MJIkkLUnylq','2025-03-24'),(445,'Stévina','tgregrcc@homestead.com','$2b$10$V/K3DsQT4ZNT9ldk0CpcKeBYjBNsuFjrF6GrUK7hAVd1nZEFeIddK','2025-04-05'),(446,'Stéphanie','tandresscd@uiuc.edu','$2b$10$dpOZYU7gSMg1B6lYVD/zkudQJJesKg8Jb2V4hspWVa90cdLTLBiiS','2024-09-11'),(447,'Bérengère','ckielyce@1und1.de','$2b$10$uoCkCksTngyvqbEEVqN1v.sl525tYtHxIOxCYCcmrV69ucor10uHC','2024-10-11'),(448,'Gisèle','htomlinsoncf@mapy.cz','$2b$10$RBRMnNqfqyzOaR97Ga19dulKQsltR7GZ44Rn/U1U1Q3VIqqK7CjF2','2025-05-05'),(449,'Joséphine','oczajkowskacg@ebay.co.uk','$2b$10$o5FnrXJlYYFsyr0zpiqNRuwACfy3HzYdtLIRbKGVkMmeGHA801.iq','2025-04-28'),(450,'Thérèse','jfinchamch@list-manage.com','$2b$10$Cly8MMTnizi6GpmO5tsxK.7QaXDZzRCl/p.m4qvi5MCpie1zBpJGu','2025-02-26'),(451,'Alizée','lheggci@senate.gov','$2b$10$qWm3otHqPDYdRwAoX4E0p.ToKEpP.BSARUZFAVOYmviP1TNKQtMaO','2024-10-12'),(452,'Yóu','alagneauxcj@nsw.gov.au','$2b$10$tfUQMJdDs4bqGxKQygxV9eQuz1HMBzNWks6WQK.UZPsXlyqb13vbq','2024-09-28'),(453,'Börje','vcoleyshawck@chron.com','$2b$10$3xIsbrfWZKw1E81gbLHty.aPsJ82Tpym2UFSTLP4KIsnCPKRX6EMa','2024-12-01'),(454,'Françoise','hwincklecl@mail.ru','$2b$10$xKAwhbTiux0TSsIccE5BieW9QAg9xd3.ZA2ImXgVAohIELcKC4QRS','2024-12-26'),(455,'Sòng','jdibbencm@dell.com','$2b$10$x2PptH8wmIyNnkZD/miVvut6dyPJ8Go1cA8UGGhh5Y8YG6VrJUTxW','2025-03-30'),(456,'Céline','glestercn@netscape.com','$2b$10$dg7TkpmxqAZmCnsY3seo4.n5W1uREn9elJi8CVbijz0JElGLTaD8O','2025-02-28'),(457,'Stévina','rhasnipco@twitter.com','$2b$10$mEdUG7ymamK0AG43ipgoA.i.vADB0ogwjnnaVXkYCc8mWk1HyIAEu','2025-03-26'),(458,'Lèi','mmccullumcp@twitpic.com','$2b$10$igsV8NAPxd8bJLkIU0s0v.TrpoFDEwwSQJTIdSyWAGpOZhHRL2UVu','2025-03-03'),(459,'Uò','cdablincq@usgs.gov','$2b$10$3uqE9kwpAg6x2qx9Kk.li.JIOlNHMqNdvuXhXc6s3z2dfgVQs9r2a','2025-05-06'),(460,'Annotée','nstorkscr@smugmug.com','$2b$10$byaW0l5mnkHaxiQU.MlUX.KQjuXGeHZr9mwnzW8YOG5LNOsZTFLE6','2025-03-16'),(461,'Gaïa','pizakscs@ftc.gov','$2b$10$/pLrX6ug2EvaCafeVdrtWOj8E2UYOaV8tZ8wAh12CE/zIctOrR8xi','2025-02-04'),(462,'Maëlle','yempsct@illinois.edu','$2b$10$WswSh/2nwaCFCSEb6moqmuZ7igPN.df11I7OyeMpsqIYiip7murR.','2024-08-19'),(463,'Marie-françoise','lcowchacu@wp.com','$2b$10$rJtcsrXmCePxzw8eaedCbu9J9bCqIDWlQBVobJGuQEvaqZ6Rd253u','2024-10-03'),(464,'Sélène','sholbiecv@de.vu','$2b$10$46IXC9uBdFh0dJNr9AvfYOOkBjwAsLtvPnWgE3vUgx6bdxE1JVfxu','2025-04-12'),(465,'Miléna','slabbaticw@51.la','$2b$10$uON2UXbellWMIuGjYATK5.hF2bHiNeHDlMuPiq5RhuI1YglJ0b.D6','2025-03-07'),(466,'Táng','idrablecx@bbb.org','$2b$10$/qSCl/IDU1JKEibUbcSZ1OYtKKexNk2UHKHz8FYeA/wlv/xFzflzS','2025-05-05'),(467,'Hélèna','hgrebertcy@cdbaby.com','$2b$10$4SMqYnLAIvbXkxcJIxTm2uoLT6V9sPQYj63P9944yThkZ.KO.C65u','2025-03-12'),(468,'Océanne','tbrotherscz@theglobeandmail.com','$2b$10$Xc08jJl/Wxh2wi5pMEJJSOuKbxZtKdzPrmtvzYdZ6QCYQCMhRtXJC','2025-05-20'),(469,'Lèi','imorfettd0@sun.com','$2b$10$aegG7r/fWh2XFWyViMkcGez44uHlm.qchwSb9rQ/BcRdBPb8bcJSO','2024-09-04'),(470,'Clélia','aduffied1@economist.com','$2b$10$UNpavuqtenWlngIePmCkLemuXessDkifUaaa2O6rv8bcHfXb2IeMu','2024-11-27'),(471,'Crééz','dwarsopd2@japanpost.jp','$2b$10$W9vQirzedITIMCz1BgJKle/KZ32mHwdJ.3qeYTwjpC1/j2T2EYHie','2024-10-04'),(472,'Loïs','lcolliholed3@intel.com','$2b$10$g.Rwudm3Q2nv/KhycfdvZu5ElARRZyRkgWoZYWEB8ax1ISpku2wNi','2025-01-17'),(473,'Åke','ecrewdsond4@nasa.gov','$2b$10$OB4Wf1XlQdceLoMj2K9I2OrihXYxCcmbuXAx3vDJGwfszmkXKoPDC','2025-01-02'),(474,'Yáo','rrutlandd5@admin.ch','$2b$10$giFtcKHGQPQe/mKnig8zfu6gRznX8XaY2KFER7m0NWcztgD3pl/Nu','2024-09-16'),(475,'Océane','avenessd6@arstechnica.com','$2b$10$7o5/Xf4k444Eki5lPVSH3efbvLh4hDy3P6mS3ZfzAUU0I.W4JhvSW','2024-09-14'),(476,'Frédérique','bkenderdined7@reddit.com','$2b$10$590qPN6ZcDT0h4EsURvQpOGtRAqMfMTUSbdWXofZQxpYNiQqy4gNi','2024-11-25'),(477,'Hélèna','kivanikhind8@ameblo.jp','$2b$10$kb8XJBzpZPBYK3s5VDexKOQegPDydPJN45jDzKOemlHz.aGpbTegO','2024-09-30'),(478,'Anaé','kbridgend9@jalbum.net','$2b$10$skfqVmbNH/l2VFKlIaiZ4uc7oGRaQIQ/HhrIEWP6aNmnTdv1ZfdL6','2025-03-10'),(479,'Frédérique','mpownallda@clickbank.net','$2b$10$6aEwk7aN7wWf2821gWAR7.mj9/Y.nqIeEJKZbutXK9IhhuB2.jIsC','2025-05-28'),(480,'Ráo','kbaskwelldb@state.tx.us','$2b$10$ZhJJo3m9KOuz2TKA6feVguDSOCg4M8gpnySIcbZF4CXsGmWvT0Kv.','2025-05-10'),(481,'Laïla','ymohammeddc@sun.com','$2b$10$IWh8F8ndv8SY/0HEB542M.aNRVhGNTpTnYLVuv3HISpPMPf76KQ5G','2025-03-18'),(482,'Maïlys','ayettondd@dion.ne.jp','$2b$10$Eb8mjzOW8.mU/VY8jQiGJucxJU6lgDheOOWxSi.VguXNmed9iUB/W','2025-04-09'),(483,'Réservés','sshambrookde@thetimes.co.uk','$2b$10$VARzGj39QdUbe0yzmkldE.Gwmd/APHqJ1cJcoHqXQt6QF8.Th7q1C','2025-04-15'),(484,'Ráo','cruddindf@drupal.org','$2b$10$eZ1/mzl9MM2L25LSCXOs4eWj09UurdZPLPSkhcfLUxm6oqK1Uti5S','2025-04-19'),(485,'Athéna','bliefdg@loc.gov','$2b$10$Lqht8R.UX0dXzbuZSg13wexwl6OmARGnnkVMITCVQoHZx/gpZGhp6','2024-09-12'),(486,'Maïté','sgreydondh@about.com','$2b$10$XmwPcA.xCjlhMys1qX0sMO6lUiNbTJ9A7L6y8lk.8TIyzIuI81fxy','2025-05-12'),(487,'Miléna','gmccormackdi@nationalgeographic.com','$2b$10$kPk9iKqe1zfVudIujPCpTuGUZhRoDCqaVldNInTHG7oxPuTNmOygK','2025-04-10'),(488,'Tán','ckermandj@ustream.tv','$2b$10$K5uhgX0LKJt8qVAkQThHoOmGPaRbx8Gphw50hBW9kvfGfl5XfvAC.','2025-03-08'),(489,'Torbjörn','hcahalandk@multiply.com','$2b$10$HcbzJ9ubO/V02f76619sXeXr5okkCJ0X8qLOH/oyqU0AqmnkdL98C','2024-07-26'),(490,'Yóu','jsemeradovadl@ow.ly','$2b$10$R1Vi8JQA1OkjAA2zgfZDjO9QfQQ1TcciS/yuOXrEAK5QXxSlS1MZi','2024-12-09'),(491,'Eléa','ncolleckdm@imageshack.us','$2b$10$8kNquuNAcl9xVrzumL5SQOMdTiT95ulp.W775I0LJm60dlTRmdFNS','2024-07-04'),(492,'Mélissandre','mhughilldn@sina.com.cn','$2b$10$RnqZAQONRDDkgaBCYcVEFOIUi5YG/CVSg7O37wzn/2cN/x0CnT.ES','2024-12-09'),(493,'Uò','lkeerdo@blog.com','$2b$10$ZRlIawCzPZDjB5NKfZSbjutybbdb82sFj8b9vhYqf4iJOVrCMuajO','2024-06-29'),(494,'Cinéma','asendsdp@shinystat.com','$2b$10$gDtuaQmC5.JSupNYB5ue6.FzVTndmVnwLUmaQcIK4nRYpo1/Fa/h2','2025-02-05'),(495,'Yénora','esellackdq@ucoz.ru','$2b$10$4w7CQYzq41ex2cDho1FVreCBfBaAX5ICV422mnxNSCIvcayeI1Roa','2024-12-02'),(496,'Clélia','hdanzelmandr@drupal.org','$2b$10$7MAYYpDomNzWOJlOGIlo8..mZH5yni04oSC9fnMAhjxpdC7o.eQ3e','2024-08-04'),(497,'Rébecca','kbeazerds@va.gov','$2b$10$Tifs/r8a9h2IlNcZYKBD9OenP5JIG7Ul9CsrRJ.WYbecvHALQuCTu','2024-12-19'),(498,'Mà','afynandt@ameblo.jp','$2b$10$sCJwrQPEZ08ass6JXkswjuyPXySXtfRuP4E1v8g7k4zFAB5XUuBIm','2025-01-07'),(499,'Lóng','gvalentimdu@bravesites.com','$2b$10$7AWjqtGB7oxCl5SqBTmcXOX/QOwbcCM54FoQZS5kWirBu/4Y1xFDa','2024-07-06'),(500,'Kallisté','lmiebesdv@reddit.com','$2b$10$lTYNhMj2W9pI4hdxu4pDmegek5ektTBEMEEARwFPQyvHNj0LZ/z5q','2024-10-13');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `usuario_f1`
--

DROP TABLE IF EXISTS `usuario_f1`;
/*!50001 DROP VIEW IF EXISTS `usuario_f1`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `usuario_f1` AS SELECT 
 1 AS `id_usuario`,
 1 AS `nombre`,
 1 AS `email`,
 1 AS `contraseña`,
 1 AS `fecha_registro`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `usuario_f2`
--

DROP TABLE IF EXISTS `usuario_f2`;
/*!50001 DROP VIEW IF EXISTS `usuario_f2`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `usuario_f2` AS SELECT 
 1 AS `id_usuario`,
 1 AS `nombre`,
 1 AS `email`,
 1 AS `contraseña`,
 1 AS `fecha_registro`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `usuario_f3`
--

DROP TABLE IF EXISTS `usuario_f3`;
/*!50001 DROP VIEW IF EXISTS `usuario_f3`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `usuario_f3` AS SELECT 
 1 AS `id_usuario`,
 1 AS `nombre`,
 1 AS `email`,
 1 AS `contraseña`,
 1 AS `fecha_registro`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `usuario_grupo`
--

DROP TABLE IF EXISTS `usuario_grupo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario_grupo` (
  `id_usuario_grupo` int NOT NULL AUTO_INCREMENT,
  `id_usuario` int NOT NULL,
  `id_grupo_suscripcion` int NOT NULL,
  `rol` enum('Admin','Miembro') NOT NULL,
  PRIMARY KEY (`id_usuario_grupo`),
  KEY `id_usuario` (`id_usuario`),
  KEY `id_grupo_suscripcion` (`id_grupo_suscripcion`),
  CONSTRAINT `usuario_grupo_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`),
  CONSTRAINT `usuario_grupo_ibfk_2` FOREIGN KEY (`id_grupo_suscripcion`) REFERENCES `grupo_suscripcion` (`id_grupo_suscripcion`)
) ENGINE=InnoDB AUTO_INCREMENT=313 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_grupo`
--

LOCK TABLES `usuario_grupo` WRITE;
/*!40000 ALTER TABLE `usuario_grupo` DISABLE KEYS */;
INSERT INTO `usuario_grupo` VALUES (1,92,7,'Admin'),(2,180,18,'Miembro'),(3,109,1,'Miembro'),(4,165,47,'Admin'),(5,95,34,'Admin'),(6,457,7,'Admin'),(7,479,4,'Admin'),(8,194,16,'Admin'),(9,405,14,'Miembro'),(10,456,31,'Admin'),(11,126,48,'Admin'),(12,23,10,'Admin'),(13,436,2,'Miembro'),(14,127,33,'Miembro'),(15,443,23,'Miembro'),(16,472,37,'Miembro'),(17,313,50,'Miembro'),(18,195,47,'Miembro'),(19,287,19,'Miembro'),(20,220,37,'Miembro'),(21,24,24,'Admin'),(22,61,17,'Miembro'),(23,417,34,'Miembro'),(24,94,13,'Admin'),(25,274,39,'Miembro'),(26,218,40,'Admin'),(27,337,31,'Admin'),(28,312,22,'Miembro'),(29,310,31,'Admin'),(30,52,37,'Admin'),(31,124,24,'Admin'),(32,165,29,'Miembro'),(33,499,16,'Miembro'),(34,111,31,'Admin'),(35,22,5,'Miembro'),(36,357,11,'Admin'),(37,27,7,'Miembro'),(38,14,4,'Miembro'),(39,395,12,'Miembro'),(40,60,37,'Miembro'),(41,332,5,'Admin'),(42,386,35,'Admin'),(43,428,23,'Miembro'),(44,380,36,'Admin'),(45,232,35,'Admin'),(46,275,11,'Miembro'),(47,164,40,'Miembro'),(48,251,2,'Miembro'),(49,420,14,'Miembro'),(50,292,37,'Admin'),(51,293,26,'Admin'),(52,149,28,'Miembro'),(53,313,5,'Admin'),(54,472,33,'Admin'),(55,62,41,'Miembro'),(56,106,28,'Miembro'),(57,432,47,'Miembro'),(58,100,15,'Admin'),(59,434,25,'Admin'),(60,247,18,'Admin'),(61,489,40,'Miembro'),(62,107,44,'Miembro'),(63,271,47,'Admin'),(64,400,49,'Admin'),(65,126,3,'Admin'),(66,186,39,'Miembro'),(67,48,26,'Admin'),(68,191,48,'Miembro'),(69,344,46,'Miembro'),(70,481,47,'Admin'),(71,85,34,'Miembro'),(72,30,13,'Miembro'),(73,489,7,'Admin'),(74,158,33,'Miembro'),(75,426,23,'Admin'),(76,56,32,'Admin'),(77,17,17,'Miembro'),(78,195,50,'Miembro'),(79,337,7,'Miembro'),(80,391,29,'Admin'),(81,332,1,'Miembro'),(82,230,27,'Miembro'),(83,46,21,'Miembro'),(84,456,36,'Admin'),(85,50,8,'Miembro'),(86,392,38,'Miembro'),(87,91,39,'Admin'),(88,473,13,'Admin'),(89,408,48,'Miembro'),(90,493,10,'Admin'),(91,330,28,'Miembro'),(92,8,5,'Admin'),(93,271,28,'Admin'),(94,487,7,'Admin'),(95,466,1,'Admin'),(96,410,30,'Admin'),(97,125,38,'Admin'),(98,106,27,'Admin'),(99,90,30,'Admin'),(100,101,10,'Miembro'),(101,335,17,'Miembro'),(102,310,3,'Miembro'),(103,217,38,'Admin'),(104,357,12,'Admin'),(105,86,35,'Miembro'),(106,330,46,'Miembro'),(107,281,4,'Admin'),(108,143,21,'Miembro'),(109,301,35,'Admin'),(110,124,7,'Admin'),(111,135,28,'Admin'),(112,160,49,'Admin'),(113,122,17,'Miembro'),(114,237,24,'Miembro'),(115,137,30,'Miembro'),(116,30,28,'Admin'),(117,326,25,'Admin'),(118,395,34,'Admin'),(119,178,14,'Admin'),(120,252,31,'Admin'),(121,463,38,'Miembro'),(122,457,24,'Admin'),(123,113,44,'Miembro'),(124,12,3,'Admin'),(125,348,43,'Miembro'),(126,5,34,'Admin'),(127,165,50,'Miembro'),(128,312,41,'Miembro'),(129,380,14,'Miembro'),(130,472,7,'Miembro'),(131,236,26,'Miembro'),(132,148,30,'Admin'),(133,132,26,'Miembro'),(134,424,13,'Miembro'),(135,462,9,'Miembro'),(136,223,47,'Admin'),(137,57,32,'Admin'),(138,15,46,'Miembro'),(139,317,23,'Miembro'),(140,414,19,'Miembro'),(141,55,2,'Admin'),(142,476,42,'Miembro'),(143,45,23,'Admin'),(144,97,14,'Miembro'),(145,278,39,'Admin'),(146,361,16,'Miembro'),(147,361,31,'Admin'),(148,16,45,'Miembro'),(149,11,3,'Admin'),(150,484,22,'Miembro'),(151,183,7,'Miembro'),(152,424,6,'Miembro'),(153,377,16,'Miembro'),(154,19,33,'Miembro'),(155,6,24,'Admin'),(156,103,9,'Miembro'),(157,371,43,'Miembro'),(158,309,6,'Admin'),(159,78,31,'Miembro'),(160,243,35,'Miembro'),(161,288,48,'Miembro'),(162,475,44,'Miembro'),(163,131,2,'Miembro'),(164,448,38,'Miembro'),(165,465,7,'Admin'),(166,398,49,'Admin'),(167,119,31,'Miembro'),(168,437,41,'Admin'),(169,450,16,'Admin'),(170,149,15,'Miembro'),(171,203,48,'Miembro'),(172,112,35,'Admin'),(173,4,10,'Admin'),(174,90,34,'Admin'),(175,283,26,'Admin'),(176,320,21,'Miembro'),(177,228,15,'Admin'),(178,107,9,'Admin'),(179,185,14,'Miembro'),(180,117,23,'Admin'),(181,9,32,'Miembro'),(182,260,25,'Admin'),(183,246,48,'Admin'),(184,54,12,'Miembro'),(185,483,34,'Admin'),(186,281,31,'Admin'),(187,296,44,'Admin'),(188,393,17,'Admin'),(189,474,44,'Admin'),(190,358,3,'Admin'),(191,437,45,'Miembro'),(192,202,45,'Miembro'),(193,194,8,'Admin'),(194,50,3,'Miembro'),(195,288,47,'Admin'),(196,45,10,'Admin'),(197,121,13,'Miembro'),(198,292,9,'Admin'),(199,371,43,'Admin'),(200,3,3,'Miembro'),(201,406,5,'Miembro'),(202,425,2,'Miembro'),(203,491,22,'Admin'),(204,378,2,'Admin'),(205,268,31,'Miembro'),(206,326,20,'Admin'),(207,218,32,'Miembro'),(208,454,13,'Miembro'),(209,422,45,'Miembro'),(210,81,5,'Miembro'),(211,265,12,'Miembro'),(212,206,48,'Admin'),(213,19,24,'Miembro'),(214,435,1,'Miembro'),(215,195,14,'Miembro'),(216,162,49,'Miembro'),(217,302,39,'Miembro'),(218,16,44,'Admin'),(219,267,21,'Miembro'),(220,493,45,'Miembro'),(221,90,46,'Admin'),(222,279,8,'Admin'),(223,279,8,'Miembro'),(224,12,10,'Miembro'),(225,103,20,'Admin'),(226,220,14,'Admin'),(227,52,3,'Admin'),(228,186,10,'Miembro'),(229,316,15,'Admin'),(230,360,43,'Miembro'),(231,376,5,'Miembro'),(232,491,1,'Admin'),(233,371,24,'Admin'),(234,421,1,'Miembro'),(235,440,15,'Miembro'),(236,194,15,'Admin'),(237,246,5,'Miembro'),(238,434,1,'Miembro'),(239,340,49,'Miembro'),(240,382,22,'Miembro'),(241,387,22,'Miembro'),(242,125,5,'Admin'),(243,55,43,'Admin'),(244,437,12,'Admin'),(245,408,30,'Admin'),(246,104,35,'Miembro'),(247,369,12,'Admin'),(248,93,22,'Miembro'),(249,346,42,'Miembro'),(250,86,48,'Admin'),(251,139,49,'Admin'),(252,316,30,'Miembro'),(253,451,45,'Admin'),(254,483,42,'Miembro'),(255,447,6,'Miembro'),(256,42,30,'Miembro'),(257,101,8,'Miembro'),(258,225,10,'Admin'),(259,374,45,'Miembro'),(260,50,19,'Admin'),(261,417,39,'Admin'),(262,20,20,'Admin'),(263,460,17,'Admin'),(264,420,19,'Admin'),(265,244,42,'Admin'),(266,240,17,'Miembro'),(267,331,15,'Miembro'),(268,314,1,'Miembro'),(269,311,41,'Miembro'),(270,182,2,'Admin'),(271,420,15,'Admin'),(272,230,1,'Miembro'),(273,260,21,'Miembro'),(274,432,20,'Miembro'),(275,301,6,'Admin'),(276,402,6,'Admin'),(277,51,17,'Admin'),(278,230,21,'Admin'),(279,402,17,'Admin'),(280,449,49,'Miembro'),(281,474,6,'Admin'),(282,100,8,'Miembro'),(283,384,39,'Admin'),(284,135,26,'Admin'),(285,209,39,'Miembro'),(286,462,32,'Miembro'),(287,298,41,'Admin'),(288,35,39,'Admin'),(289,267,32,'Miembro'),(290,422,8,'Miembro'),(291,139,32,'Admin'),(292,339,6,'Miembro'),(293,376,26,'Miembro'),(294,193,19,'Miembro'),(295,463,42,'Miembro'),(296,171,26,'Admin'),(297,88,32,'Admin'),(298,429,20,'Miembro'),(299,262,26,'Admin'),(300,33,26,'Admin'),(301,142,42,'Miembro'),(302,477,42,'Admin'),(303,275,6,'Miembro'),(304,371,42,'Miembro'),(305,50,6,'Miembro'),(306,422,8,'Admin'),(307,56,6,'Miembro'),(308,210,42,'Admin'),(309,187,8,'Admin'),(310,127,8,'Miembro'),(311,386,51,'Admin'),(312,384,51,'Miembro');
/*!40000 ALTER TABLE `usuario_grupo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `usuario_grupo_f1`
--

DROP TABLE IF EXISTS `usuario_grupo_f1`;
/*!50001 DROP VIEW IF EXISTS `usuario_grupo_f1`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `usuario_grupo_f1` AS SELECT 
 1 AS `id_usuario_grupo`,
 1 AS `id_usuario`,
 1 AS `id_grupo`,
 1 AS `rol`,
 1 AS `num_integrantes`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `usuario_grupo_f2`
--

DROP TABLE IF EXISTS `usuario_grupo_f2`;
/*!50001 DROP VIEW IF EXISTS `usuario_grupo_f2`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `usuario_grupo_f2` AS SELECT 
 1 AS `id_usuario_grupo`,
 1 AS `id_usuario`,
 1 AS `id_grupo`,
 1 AS `rol`,
 1 AS `num_integrantes`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `usuario_grupo_f3`
--

DROP TABLE IF EXISTS `usuario_grupo_f3`;
/*!50001 DROP VIEW IF EXISTS `usuario_grupo_f3`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `usuario_grupo_f3` AS SELECT 
 1 AS `id_usuario_grupo`,
 1 AS `id_usuario`,
 1 AS `id_grupo`,
 1 AS `rol`,
 1 AS `num_integrantes`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `grupo_suscripcion_f1`
--

/*!50001 DROP VIEW IF EXISTS `grupo_suscripcion_f1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `grupo_suscripcion_f1` AS select `grupo_suscripcion`.`id_grupo_suscripcion` AS `id_grupo_suscripcion`,`grupo_suscripcion`.`nombre_grupo` AS `nombre_grupo`,`grupo_suscripcion`.`fecha_creacion` AS `fecha_creacion`,`grupo_suscripcion`.`estado_grupo` AS `estado_grupo`,`grupo_suscripcion`.`num_integrantes` AS `num_integrantes`,`grupo_suscripcion`.`id_servicio` AS `id_servicio`,`grupo_suscripcion`.`costo_total` AS `costo_total`,`grupo_suscripcion`.`fecha_inicio` AS `fecha_inicio`,`grupo_suscripcion`.`fecha_vencimiento` AS `fecha_vencimiento`,`grupo_suscripcion`.`id_creador` AS `id_creador` from `grupo_suscripcion` where ((`grupo_suscripcion`.`estado_grupo` = 'Activo') and (`grupo_suscripcion`.`num_integrantes` <= 3)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `grupo_suscripcion_f2`
--

/*!50001 DROP VIEW IF EXISTS `grupo_suscripcion_f2`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `grupo_suscripcion_f2` AS select `grupo_suscripcion`.`id_grupo_suscripcion` AS `id_grupo_suscripcion`,`grupo_suscripcion`.`nombre_grupo` AS `nombre_grupo`,`grupo_suscripcion`.`fecha_creacion` AS `fecha_creacion`,`grupo_suscripcion`.`estado_grupo` AS `estado_grupo`,`grupo_suscripcion`.`num_integrantes` AS `num_integrantes`,`grupo_suscripcion`.`id_servicio` AS `id_servicio`,`grupo_suscripcion`.`costo_total` AS `costo_total`,`grupo_suscripcion`.`fecha_inicio` AS `fecha_inicio`,`grupo_suscripcion`.`fecha_vencimiento` AS `fecha_vencimiento`,`grupo_suscripcion`.`id_creador` AS `id_creador` from `grupo_suscripcion` where ((`grupo_suscripcion`.`estado_grupo` = 'Activo') and (`grupo_suscripcion`.`num_integrantes` > 3)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `grupo_suscripcion_f3`
--

/*!50001 DROP VIEW IF EXISTS `grupo_suscripcion_f3`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `grupo_suscripcion_f3` AS select `grupo_suscripcion`.`id_grupo_suscripcion` AS `id_grupo_suscripcion`,`grupo_suscripcion`.`nombre_grupo` AS `nombre_grupo`,`grupo_suscripcion`.`fecha_creacion` AS `fecha_creacion`,`grupo_suscripcion`.`estado_grupo` AS `estado_grupo`,`grupo_suscripcion`.`num_integrantes` AS `num_integrantes`,`grupo_suscripcion`.`id_servicio` AS `id_servicio`,`grupo_suscripcion`.`costo_total` AS `costo_total`,`grupo_suscripcion`.`fecha_inicio` AS `fecha_inicio`,`grupo_suscripcion`.`fecha_vencimiento` AS `fecha_vencimiento`,`grupo_suscripcion`.`id_creador` AS `id_creador` from `grupo_suscripcion` where (`grupo_suscripcion`.`estado_grupo` = 'Inactivo') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `historial_pagos_f1`
--

/*!50001 DROP VIEW IF EXISTS `historial_pagos_f1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `historial_pagos_f1` AS select `hp`.`id_historial_pago` AS `id_historial_pago`,`hp`.`id_pago` AS `id_pago`,`hp`.`id_grupo_suscripcion` AS `id_grupo`,`gs`.`num_integrantes` AS `num_integrantes` from (`historial_pagos` `hp` join `grupo_suscripcion` `gs` on((`hp`.`id_grupo_suscripcion` = `gs`.`id_grupo_suscripcion`))) where (`gs`.`num_integrantes` <= 3) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `historial_pagos_f2`
--

/*!50001 DROP VIEW IF EXISTS `historial_pagos_f2`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `historial_pagos_f2` AS select `hp`.`id_historial_pago` AS `id_historial_pago`,`hp`.`id_pago` AS `id_pago`,`hp`.`id_grupo_suscripcion` AS `id_grupo`,`gs`.`num_integrantes` AS `num_integrantes` from (`historial_pagos` `hp` join `grupo_suscripcion` `gs` on((`hp`.`id_grupo_suscripcion` = `gs`.`id_grupo_suscripcion`))) where (`gs`.`num_integrantes` between 4 and 5) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `historial_pagos_f3`
--

/*!50001 DROP VIEW IF EXISTS `historial_pagos_f3`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `historial_pagos_f3` AS select `hp`.`id_historial_pago` AS `id_historial_pago`,`hp`.`id_pago` AS `id_pago`,`hp`.`id_grupo_suscripcion` AS `id_grupo`,`gs`.`num_integrantes` AS `num_integrantes` from (`historial_pagos` `hp` join `grupo_suscripcion` `gs` on((`hp`.`id_grupo_suscripcion` = `gs`.`id_grupo_suscripcion`))) where (`gs`.`num_integrantes` >= 6) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `notificacion_f1`
--

/*!50001 DROP VIEW IF EXISTS `notificacion_f1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `notificacion_f1` AS select `notificacion`.`id_notificacion` AS `id_notificacion`,`notificacion`.`id_usuario` AS `id_usuario`,`notificacion`.`mensaje` AS `mensaje`,`notificacion`.`fecha_envio` AS `fecha_envio`,`notificacion`.`estado` AS `estado` from `notificacion` where (`notificacion`.`estado` = 'pendiente') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `notificacion_f2`
--

/*!50001 DROP VIEW IF EXISTS `notificacion_f2`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `notificacion_f2` AS select `notificacion`.`id_notificacion` AS `id_notificacion`,`notificacion`.`id_usuario` AS `id_usuario`,`notificacion`.`mensaje` AS `mensaje`,`notificacion`.`fecha_envio` AS `fecha_envio`,`notificacion`.`estado` AS `estado` from `notificacion` where (`notificacion`.`estado` = 'leída') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `notificacion_f3`
--

/*!50001 DROP VIEW IF EXISTS `notificacion_f3`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `notificacion_f3` AS select `notificacion`.`id_notificacion` AS `id_notificacion`,`notificacion`.`id_usuario` AS `id_usuario`,`notificacion`.`mensaje` AS `mensaje`,`notificacion`.`fecha_envio` AS `fecha_envio`,`notificacion`.`estado` AS `estado` from `notificacion` where (`notificacion`.`estado` = 'eliminada') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `pago_f1`
--

/*!50001 DROP VIEW IF EXISTS `pago_f1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `pago_f1` AS select `pago`.`id_pago` AS `id_pago`,`pago`.`id_usuario` AS `id_usuario`,`pago`.`monto` AS `monto`,`pago`.`fecha_pago` AS `fecha_pago` from `pago` where (`pago`.`monto` < 100) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `pago_f2`
--

/*!50001 DROP VIEW IF EXISTS `pago_f2`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `pago_f2` AS select `pago`.`id_pago` AS `id_pago`,`pago`.`id_usuario` AS `id_usuario`,`pago`.`monto` AS `monto`,`pago`.`fecha_pago` AS `fecha_pago` from `pago` where (`pago`.`monto` between 100 and 149.99) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `pago_f3`
--

/*!50001 DROP VIEW IF EXISTS `pago_f3`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `pago_f3` AS select `pago`.`id_pago` AS `id_pago`,`pago`.`id_usuario` AS `id_usuario`,`pago`.`monto` AS `monto`,`pago`.`fecha_pago` AS `fecha_pago` from `pago` where (`pago`.`monto` >= 150) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `servicio_streaming_f1`
--

/*!50001 DROP VIEW IF EXISTS `servicio_streaming_f1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `servicio_streaming_f1` AS select `servicio_streaming`.`id_servicio` AS `id_servicio`,`servicio_streaming`.`nombre_servicio` AS `nombre_servicio`,`servicio_streaming`.`descripcion` AS `descripcion` from `servicio_streaming` where (`servicio_streaming`.`nombre_servicio` in ('Netflix','Disney Plus')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `servicio_streaming_f2`
--

/*!50001 DROP VIEW IF EXISTS `servicio_streaming_f2`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `servicio_streaming_f2` AS select `servicio_streaming`.`id_servicio` AS `id_servicio`,`servicio_streaming`.`nombre_servicio` AS `nombre_servicio`,`servicio_streaming`.`descripcion` AS `descripcion` from `servicio_streaming` where (`servicio_streaming`.`nombre_servicio` = 'HBO Max') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `servicio_streaming_f3`
--

/*!50001 DROP VIEW IF EXISTS `servicio_streaming_f3`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `servicio_streaming_f3` AS select `servicio_streaming`.`id_servicio` AS `id_servicio`,`servicio_streaming`.`nombre_servicio` AS `nombre_servicio`,`servicio_streaming`.`descripcion` AS `descripcion` from `servicio_streaming` where (`servicio_streaming`.`nombre_servicio` not in ('Netflix','Disney Plus','HBO Max')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `usuario_f1`
--

/*!50001 DROP VIEW IF EXISTS `usuario_f1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `usuario_f1` AS select `usuario`.`id_usuario` AS `id_usuario`,`usuario`.`nombre` AS `nombre`,`usuario`.`email` AS `email`,`usuario`.`contraseña` AS `contraseña`,`usuario`.`fecha_registro` AS `fecha_registro` from `usuario` where regexp_like(`usuario`.`nombre`,'^[A-I]') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `usuario_f2`
--

/*!50001 DROP VIEW IF EXISTS `usuario_f2`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `usuario_f2` AS select `usuario`.`id_usuario` AS `id_usuario`,`usuario`.`nombre` AS `nombre`,`usuario`.`email` AS `email`,`usuario`.`contraseña` AS `contraseña`,`usuario`.`fecha_registro` AS `fecha_registro` from `usuario` where regexp_like(`usuario`.`nombre`,'^[J-R]') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `usuario_f3`
--

/*!50001 DROP VIEW IF EXISTS `usuario_f3`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `usuario_f3` AS select `usuario`.`id_usuario` AS `id_usuario`,`usuario`.`nombre` AS `nombre`,`usuario`.`email` AS `email`,`usuario`.`contraseña` AS `contraseña`,`usuario`.`fecha_registro` AS `fecha_registro` from `usuario` where regexp_like(`usuario`.`nombre`,'^[S-Z]') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `usuario_grupo_f1`
--

/*!50001 DROP VIEW IF EXISTS `usuario_grupo_f1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `usuario_grupo_f1` AS select `ug`.`id_usuario_grupo` AS `id_usuario_grupo`,`ug`.`id_usuario` AS `id_usuario`,`ug`.`id_grupo_suscripcion` AS `id_grupo`,`ug`.`rol` AS `rol`,`gs`.`num_integrantes` AS `num_integrantes` from (`usuario_grupo` `ug` join `grupo_suscripcion` `gs` on((`ug`.`id_grupo_suscripcion` = `gs`.`id_grupo_suscripcion`))) where (`ug`.`rol` = 'Admin') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `usuario_grupo_f2`
--

/*!50001 DROP VIEW IF EXISTS `usuario_grupo_f2`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `usuario_grupo_f2` AS select `ug`.`id_usuario_grupo` AS `id_usuario_grupo`,`ug`.`id_usuario` AS `id_usuario`,`ug`.`id_grupo_suscripcion` AS `id_grupo`,`ug`.`rol` AS `rol`,`gs`.`num_integrantes` AS `num_integrantes` from (`usuario_grupo` `ug` join `grupo_suscripcion` `gs` on((`ug`.`id_grupo_suscripcion` = `gs`.`id_grupo_suscripcion`))) where ((`ug`.`rol` = 'Miembro') and (`gs`.`num_integrantes` > 4)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `usuario_grupo_f3`
--

/*!50001 DROP VIEW IF EXISTS `usuario_grupo_f3`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `usuario_grupo_f3` AS select `ug`.`id_usuario_grupo` AS `id_usuario_grupo`,`ug`.`id_usuario` AS `id_usuario`,`ug`.`id_grupo_suscripcion` AS `id_grupo`,`ug`.`rol` AS `rol`,`gs`.`num_integrantes` AS `num_integrantes` from (`usuario_grupo` `ug` join `grupo_suscripcion` `gs` on((`ug`.`id_grupo_suscripcion` = `gs`.`id_grupo_suscripcion`))) where ((`ug`.`rol` = 'Miembro') and (`gs`.`num_integrantes` <= 4)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-04 23:46:31
