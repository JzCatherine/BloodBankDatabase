-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: bloodbank_project
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `donation_log`
--

DROP TABLE IF EXISTS `donation_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `donation_log` (
  `donation_id` varchar(8) NOT NULL,
  `donor_id` varchar(8) NOT NULL,
  `donation_date` date NOT NULL,
  `blood_type` varchar(5) NOT NULL,
  `blood_quantity` varchar(8) NOT NULL,
  `inventory_id` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`donation_id`),
  KEY `inventory_id_idx` (`inventory_id`),
  KEY `donor_id_idx` (`donor_id`),
  CONSTRAINT `donor_id` FOREIGN KEY (`donor_id`) REFERENCES `donor` (`donor_id`),
  CONSTRAINT `inventory_id` FOREIGN KEY (`inventory_id`) REFERENCES `inventory` (`inventory_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donation_log`
--

LOCK TABLES `donation_log` WRITE;
/*!40000 ALTER TABLE `donation_log` DISABLE KEYS */;
INSERT INTO `donation_log` VALUES ('dd100','d100','2021-05-18','AB+','1','i100'),('dd101','d101','2021-05-16','B+','1','i101'),('dd102','d102','2021-05-16','O+','1','i102'),('dd103','d103','2021-05-17','B+','1','i103'),('dd104','d104','2021-05-17','AB-','1','i104'),('dd105','d105','2021-05-18','A+','1','i105'),('dd106','d106','2021-05-17','A+','1','i106'),('dd107','d107','2021-05-18','O+','1','i107'),('dd108','d108','2021-05-18','B+','1','i108'),('dd109','d109','2021-05-18','AB+','1','i109'),('dd110','d110','2021-05-16','A-','1','i110'),('dd111','d111','2021-05-16','O-','1','i111'),('dd112','d112','2021-05-17','B-','1','i112'),('dd113','d113','2021-05-17','AB-','1','i113'),('dd114','d114','2021-05-16','O+','1','i114'),('dd115','d115','2021-05-16','O+','1','i115'),('dd116','d116','2020-12-04','B+','1',NULL),('dd117','d117','2020-12-04','O-','1',NULL),('dd118','d118','2020-10-23','AB-','1',NULL),('dd119','d119','2020-10-23','AB-','1',NULL),('dd120','d120','2020-11-05','A+','1',NULL),('dd121','d100','2020-11-05','AB+','1',NULL),('dd122','d101','2020-12-05','B+','1',NULL),('dd123','d102','2020-12-04','B-','1',NULL),('dd124','d103','2020-12-04','B+','1',NULL),('dd125','d104','2020-10-23','O-','1',NULL),('dd126','d105','2020-10-23','AB+','1',NULL),('dd127','d106','2020-10-23','A-','1',NULL),('dd128','d107','2020-10-24','A-','1',NULL),('dd129','d108','2020-10-24','O+','1',NULL),('dd130','d109','2020-10-24','B+','1',NULL);
/*!40000 ALTER TABLE `donation_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `donor`
--

DROP TABLE IF EXISTS `donor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `donor` (
  `donor_id` varchar(8) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `gender` char(1) NOT NULL,
  `age` int NOT NULL,
  `weight_kg` int NOT NULL,
  `height_cm` int NOT NULL,
  `last_donation` date NOT NULL,
  `contact_no` varchar(12) NOT NULL,
  `email` varchar(25) NOT NULL,
  `address` varchar(25) NOT NULL,
  `employee_id` varchar(8) NOT NULL,
  PRIMARY KEY (`donor_id`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  KEY `employee_id_idx` (`employee_id`),
  CONSTRAINT `employee_id` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donor`
--

LOCK TABLES `donor` WRITE;
/*!40000 ALTER TABLE `donor` DISABLE KEYS */;
INSERT INTO `donor` VALUES ('d100','Autumn','Kohler','F',25,57,167,'2021-05-18','012-333-981','bwolf@yahoo.com','Muntinlupa City','e103'),('d101','Kirsten','Corwin','F',29,60,159,'2021-05-16','610-938-152','west.zaria@yahoo.com','Cebu City','e109'),('d102','Richie','McDermott','M',30,65,163,'2021-05-16','528-419-057','krystal38@yahoo.com','Caloocan City','e109'),('d103','Marta','Roob','F',33,55,168,'2021-05-17','592-757-632','ogislason@yahoo.com','Davao City','e107'),('d104','Carmine','Graham','F',26,59,164,'2021-05-17','661-488-574','ophelia41@yahoo.com','Pasay City','e104'),('d105','Sigmund','Anderson','M',35,68,158,'2021-05-18','676-638-132','boyle@yahoo.com','Pasig City','e101'),('d106','Larissa','Flatley','F',40,70,176,'2021-05-17','333-153-500','alexandre@yahoo.com','Lucena City','e101'),('d107','Elijah','Wolff','M',23,72,171,'2021-05-18','325-13-6476','orn@yahoo.com','San Isidro','e103'),('d108','Saul','Walker','M',26,52,162,'2021-05-18','336-536-364','smraz@yahoo.com','Quezon City','e106'),('d109','Harley','Treutel','M',30,55,159,'2021-05-18','253-789-355','bartell@yahoo.com','Quezon City','e102'),('d110','Sarina','Purdy','F',36,67,176,'2021-05-16','211-531-249','aratke@yahoo.com','Quezon City','e108'),('d111','Nikko','Kiehn','M',32,60,171,'2021-05-16','512-189-601','reed@yahoo.com','Cavite','e110'),('d112','Tiffany','Medhurst','F',29,57,168,'2021-05-17','517-971-470','emard@yahoo.com','Pasay City','e108'),('d113','Fletcher','Douglas','M',40,59,155,'2021-05-17','347-127-884','nedra@yahoo.com','Taguig City','e106'),('d114','Lonzo','Sanford','M',27,54,160,'2021-05-16','326-708-281','stone.terry@yahoo.com','Taguig City','e110'),('d115','Miguel','McClure','M',34,59,159,'2021-05-16','751-910-183','bwalsh@yahoo.com','Mandaluyong City','e105'),('d116','Neil','Quigley','M',33,62,172,'2020-12-04','825-923-325','obie88@yahoo.com','Marikina','e100'),('d117','Leila','Bogisich','F',28,60,174,'2020-12-04','759-44-7632','aryanna28@yahoo.com','Marikina','e104'),('d118','Adrienne','Shanahan','F',22,72,172,'2020-10-23','609-746-104','fay.anjali@yahoo.com','Manila','e105'),('d119','Kelvin','Adams','M',29,62,159,'2020-10-23','800-728-579','micaela71@yahoo.com','Paranaque City','e107'),('d120','Geoffrey','Stracke','M',31,51,159,'2020-11-05','157-518-797','armstrong@yahoo.com','Bulacan','e110');
/*!40000 ALTER TABLE `donor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `employee_id` varchar(8) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `address` varchar(25) NOT NULL,
  `contact_no` varchar(12) NOT NULL,
  PRIMARY KEY (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES ('e100','Amaya','Villarosa','Manila','542-068-510'),('e101','Kevin','Cabrera','San Vicente','032-701-711'),('e102','Joshua','Rodriquez','Davao City','325-438-241'),('e103','Melyssa','Schroeder','Cavite City','954-954-687'),('e104','Stephen','Avila','Cebu City','384-901-663'),('e105','Katelyn','Ullrich','Caloocan City','633-534-054'),('e106','Sara','Tillman','Quezon City','646-360-758'),('e107','Ginger','Mitchell','Manila','725-720-312'),('e108','Lamar','Gibson','Quezon City','443-896-705'),('e109','Sylvia','Prohaska','Caloocan City','393-581-531'),('e110','Reece','Grant','Cavite City','033-119-585');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hospital`
--

DROP TABLE IF EXISTS `hospital`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hospital` (
  `hospital_id` varchar(8) NOT NULL,
  `hospital_name` varchar(20) NOT NULL,
  `address` varchar(30) NOT NULL,
  `contact_no` varchar(15) NOT NULL,
  `contact_person` varchar(20) NOT NULL,
  PRIMARY KEY (`hospital_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospital`
--

LOCK TABLES `hospital` WRITE;
/*!40000 ALTER TABLE `hospital` DISABLE KEYS */;
INSERT INTO `hospital` VALUES ('h100','San Lazaro Hospital','Quiricada St,  Manila','(02) 8732 3777','Pedro Doyle'),('h101','Perpetual Hospital','Loang Laan, Manila','(02) 8731 1550','Watson Klein'),('h102','Ospital ng Sampaloc','Geronimo St, Sampaloc, Manila','(02) 8749 0224','Rozella Simonis'),('h103','ManilaMed','850 United Nations Ave, Manila','(02) 8523 8131','Dulce Hammes'),('h104','San Lazaro Hospital','Santa Cruz, Manila','(02) 8732 3777','Allene Ward'),('h105','Sta Ana Hospital','Santa Ana, Manila','(02) 8516 6151','Jadyn Casper');
/*!40000 ALTER TABLE `hospital` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory` (
  `inventory_id` varchar(8) NOT NULL,
  `blood_type` varchar(5) NOT NULL,
  `blood_quantity` int NOT NULL,
  `request_id` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`inventory_id`),
  KEY `request_id_idx` (`request_id`),
  CONSTRAINT `request_id` FOREIGN KEY (`request_id`) REFERENCES `request` (`request_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory`
--

LOCK TABLES `inventory` WRITE;
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
INSERT INTO `inventory` VALUES ('i100','AB+',1,'rq102'),('i101','B+',1,'rq100'),('i102','O+',1,NULL),('i103','B+',1,'rq100'),('i104','AB-',1,'rq103'),('i105','A+',1,NULL),('i106','A+',1,NULL),('i107','O+',1,NULL),('i108','B+',1,NULL),('i109','AB+',1,'rq102'),('i110','A-',1,NULL),('i111','O-',1,NULL),('i112','B-',1,'rq104'),('i113','AB-',1,'rq103'),('i114','O+',1,'rq101'),('i115','O+',1,'rq101');
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request`
--

DROP TABLE IF EXISTS `request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `request` (
  `request_id` varchar(8) NOT NULL,
  `request_date` date NOT NULL,
  `quantity_requested` int NOT NULL,
  `type_requested` varchar(5) NOT NULL,
  `hospital_id` varchar(8) NOT NULL,
  PRIMARY KEY (`request_id`),
  KEY `hospital_id_idx` (`hospital_id`),
  CONSTRAINT `hospital_id` FOREIGN KEY (`hospital_id`) REFERENCES `hospital` (`hospital_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request`
--

LOCK TABLES `request` WRITE;
/*!40000 ALTER TABLE `request` DISABLE KEYS */;
INSERT INTO `request` VALUES ('rq100','2021-06-01',2,'B+','h103'),('rq101','2021-05-24',2,'O+','h101'),('rq102','2021-06-02',2,'AB+','h104'),('rq103','2021-05-20',2,'AB-','h102'),('rq104','2021-05-27',1,'B-','h105'),('rq105','2021-01-09',10,'A-','h105'),('rq106','2021-01-08',10,'AB+','h103'),('rq107','2020-12-05',15,'O+','h101'),('rq108','2020-11-03',5,'AB-','h104'),('rq109','2020-11-09',5,'O+','h100'),('rq110','2020-12-14',10,'A+','h102');
/*!40000 ALTER TABLE `request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'bloodbank_project'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-06 15:09:57
