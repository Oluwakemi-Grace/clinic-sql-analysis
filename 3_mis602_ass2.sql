-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: hospital
-- ------------------------------------------------------
-- Server version	8.0.28

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

-- create database
DROP DATABASE IF EXISTS mis602_ass2; 
CREATE SCHEMA mis602_ass2;
USE mis602_ass2;

--
-- Table structure for table `appointment`
--

DROP TABLE IF EXISTS `appointment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appointment` (
  `appointment_id` int NOT NULL AUTO_INCREMENT,
  `patient_id` int NOT NULL,
  `doctor_id` int NOT NULL,
  `appointment_date` datetime NOT NULL,
  `notes` text,
  `status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`appointment_id`),
  KEY `patient_id` (`patient_id`),
  KEY `doctor_id` (`doctor_id`),
  CONSTRAINT `appointment_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`patient_id`),
  CONSTRAINT `appointment_ibfk_2` FOREIGN KEY (`doctor_id`) REFERENCES `doctor` (`doctor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=233 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment`
--

LOCK TABLES `appointment` WRITE;
/*!40000 ALTER TABLE `appointment` DISABLE KEYS */;
INSERT INTO `appointment` VALUES (133,1,1,'2023-07-15 09:00:00','Routine checkup','completed'),(134,2,1,'2023-07-15 14:30:00','Follow-up appointment','completed'),(135,3,3,'2023-05-10 11:15:00','Discuss test results','completed'),(136,4,4,'2023-08-05 10:30:00','Medication review','completed'),(137,5,5,'2023-09-15 15:00:00','New patient intake','completed'),(138,6,6,'2023-10-10 13:45:00','Follow-up appointment',NULL),(139,7,7,'2023-07-18 09:30:00','Routine checkup','Cancelled'),(140,8,8,'2023-06-21 14:15:00','Medication review','completed'),(141,9,9,'2023-05-12 11:30:00','Annual checkup','completed'),(142,10,10,'2023-08-07 10:00:00','Follow-up appointment','completed'),(143,11,11,'2023-09-18 15:45:00','Discuss treatment plan',NULL),(144,12,12,'2023-10-12 12:30:00','Routine checkup',NULL),(145,13,13,'2023-07-20 09:45:00','Medication review','Cancelled'),(146,14,14,'2023-06-23 14:00:00','Follow-up appointment','completed'),(147,15,15,'2023-05-14 10:15:00','Annual checkup','completed'),(148,16,16,'2023-08-09 11:30:00','New patient intake','completed'),(149,17,17,'2023-09-20 16:00:00','Routine checkup',NULL),(150,18,18,'2023-10-14 13:00:00','Discuss treatment plan',NULL),(151,19,19,'2023-07-22 12:45:00','Medication review','Cancelled'),(152,20,20,'2023-06-25 15:30:00','Follow-up appointment','completed'),(153,21,21,'2023-07-28 09:30:00','Routine checkup','completed'),(154,22,22,'2023-08-12 14:00:00','Follow-up appointment','Cancelled'),(155,23,23,'2023-09-05 10:45:00','Discuss test results','completed'),(156,24,24,'2023-10-18 10:15:00','Medication review',NULL),(157,25,25,'2023-11-20 13:00:00','New patient intake',NULL),(158,26,26,'2023-12-01 11:30:00','Follow-up appointment',NULL),(159,27,27,'2023-08-02 08:45:00','Routine checkup','Cancelled'),(160,28,28,'2023-09-10 16:30:00','Medication review','completed'),(161,29,29,'2023-10-15 09:30:00','Annual checkup',NULL),(162,30,30,'2023-11-08 12:00:00','Follow-up appointment',NULL),(163,31,31,'2023-12-20 15:45:00','Discuss treatment plan',NULL),(164,32,32,'2023-09-01 14:00:00','Routine checkup','completed'),(165,33,33,'2023-10-10 10:30:00','Medication review',NULL),(166,34,34,'2023-11-05 11:00:00','Follow-up appointment',NULL),(167,35,35,'2023-12-15 13:30:00','Annual checkup',NULL),(168,36,36,'2023-09-08 16:15:00','New patient intake','completed'),(169,37,37,'2023-10-18 11:45:00','Routine checkup',NULL),(170,38,38,'2023-11-25 09:30:00','Medication review',NULL),(171,39,39,'2023-12-10 12:15:00','Follow-up appointment',NULL),(172,40,40,'2023-09-12 14:30:00','Discuss treatment plan','completed'),(173,41,41,'2023-07-28 09:00:00','Routine checkup','completed'),(174,42,42,'2023-08-12 14:30:00','Follow-up appointment','Cancelled'),(175,43,43,'2023-09-05 11:15:00','Discuss test results','completed'),(176,44,44,'2023-10-18 10:30:00','Medication review',NULL),(177,45,45,'2023-11-20 13:45:00','New patient intake',NULL),(178,46,46,'2023-12-01 11:00:00','Follow-up appointment',NULL),(179,47,47,'2023-08-02 08:15:00','Routine checkup','completed'),(180,48,48,'2023-09-10 15:30:00','Medication review','completed'),(181,49,49,'2023-10-15 09:00:00','Annual checkup',NULL),(182,50,1,'2023-11-08 11:30:00','Follow-up appointment',NULL),(183,51,2,'2023-12-20 14:45:00','Discuss treatment plan',NULL),(184,52,3,'2023-09-01 14:15:00','Routine checkup','completed'),(185,53,4,'2023-10-10 10:00:00','Medication review',NULL),(186,54,5,'2023-11-05 11:30:00','Follow-up appointment',NULL),(187,55,6,'2023-12-15 13:45:00','Annual checkup',NULL),(188,56,7,'2023-09-08 16:00:00','New patient intake','completed'),(189,57,8,'2023-10-18 11:15:00','Routine checkup',NULL),(190,58,9,'2023-11-25 09:45:00','Medication review',NULL),(191,59,10,'2023-12-10 12:30:00','Follow-up appointment',NULL),(192,60,11,'2023-09-12 14:00:00','Discuss treatment plan','completed'),(193,61,12,'2023-07-28 10:00:00','Routine checkup','completed'),(194,62,13,'2023-08-12 15:30:00','Follow-up appointment','Cancelled'),(195,63,14,'2023-09-05 12:45:00','Discuss test results','completed'),(196,64,15,'2023-10-18 11:15:00','Medication review',NULL),(197,65,16,'2023-11-20 14:30:00','New patient intake',NULL),(198,66,17,'2023-12-01 13:00:00','Follow-up appointment',NULL),(199,67,18,'2023-08-02 10:15:00','Routine checkup','completed'),(200,68,19,'2023-09-10 16:45:00','Medication review','completed'),(201,69,20,'2023-10-15 12:30:00','Annual checkup',NULL),(202,70,21,'2023-11-08 10:30:00','Follow-up appointment',NULL),(203,71,22,'2023-12-20 13:15:00','Discuss treatment plan',NULL),(204,72,23,'2023-09-01 11:45:00','Routine checkup','completed'),(205,73,24,'2023-10-10 09:00:00','Medication review',NULL),(206,74,25,'2023-11-05 14:30:00','Follow-up appointment',NULL),(207,75,26,'2023-12-15 12:00:00','Annual checkup',NULL),(208,76,27,'2023-09-08 17:30:00','New patient intake','completed'),(209,77,28,'2023-10-18 10:45:00','Routine checkup',NULL),(210,78,29,'2023-11-25 08:30:00','Medication review',NULL),(211,79,30,'2023-12-10 13:15:00','Follow-up appointment',NULL),(212,80,31,'2023-09-12 15:45:00','Discuss treatment plan','completed'),(213,1,1,'2023-07-15 09:00:00','Routine checkup','completed'),(214,2,2,'2023-06-20 14:30:00','Follow-up appointment','completed'),(215,3,3,'2023-05-10 11:15:00','Discuss test results','completed'),(216,4,4,'2023-08-05 10:30:00','Medication review','Cancelled'),(217,5,5,'2023-09-15 15:00:00','New patient intake',NULL),(218,6,6,'2023-10-10 13:45:00','Follow-up appointment',NULL),(219,7,7,'2023-07-18 09:30:00','Routine checkup','completed'),(220,8,8,'2023-06-21 14:15:00','Medication review','completed'),(221,9,9,'2023-05-12 11:30:00','Annual checkup','completed'),(222,10,10,'2023-08-07 10:00:00','Follow-up appointment','completed'),(223,11,11,'2023-09-18 15:45:00','Discuss treatment plan',NULL),(224,12,12,'2023-10-12 12:30:00','Routine checkup',NULL),(225,13,13,'2023-07-20 09:45:00','Medication review','Cancelled'),(226,14,14,'2023-06-23 14:00:00','Follow-up appointment','completed'),(227,15,15,'2023-05-14 10:15:00','Annual checkup','Cancelled'),(228,16,16,'2023-08-09 11:30:00','New patient intake','completed'),(229,17,17,'2023-09-20 16:00:00','Routine checkup',NULL),(230,18,18,'2023-10-14 13:00:00','Discuss treatment plan',NULL),(231,19,19,'2023-07-22 12:45:00','Medication review','completed'),(232,20,20,'2023-06-25 15:30:00','Follow-up appointment','completed');
/*!40000 ALTER TABLE `appointment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctor` (
  `doctor_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `speciality_id` int DEFAULT NULL,
  PRIMARY KEY (`doctor_id`),
  KEY `speciality_fk1_idx` (`speciality_id`),
  CONSTRAINT `speciality_fk1` FOREIGN KEY (`speciality_id`) REFERENCES `speciality` (`speciality_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor`
--

LOCK TABLES `doctor` WRITE;
/*!40000 ALTER TABLE `doctor` DISABLE KEYS */;
INSERT INTO `doctor` VALUES (1,'Dr. John Doe','04706 97 627',1),(2,'Dr. Sarah Johnson','04831 922 34',3),(3,'Dr. David Smith','04494 481 31',6),(4,'Dr. Mary Lee','04742 777 162',6),(5,'Dr. Michael Brown','04491 902 125',6),(6,'Dr. Emily Garcia','04923 212 921',2),(7,'Dr. Daniel Kim','04915 630 391',6),(8,'Dr. Amanda Rodriguez','04015 443 469',3),(9,'Dr. Robert Chen','04063 616 94',1),(10,'Dr. Samantha Davis','04682 982 25',5),(11,'Dr. John Doe','04185 163 263',6),(12,'Dr. Jane Smith','04831 936 123',3),(13,'Dr. Michael Johnson','04869 535 959',1),(14,'Dr. Sarah Lee','04107 571 601',3),(15,'Dr. David Kim','04263 940 570',5),(16,'Dr. Emily Chen','04040 43 16',6),(17,'Dr. James Davis','04977 488 259',3),(18,'Dr. Elizabeth Brown','04833 609 23',3),(19,'Dr. William Wilson','04230 32 55',4),(20,'Dr. Olivia Garcia','04171 349 427',4),(21,'Dr. Daniel Rodriguez','04015 281 743',6),(22,'Dr. Sophia Martinez','04810 800 884',4),(23,'Dr. Ethan Thompson','04042 816 358',2),(24,'Dr. Isabella Anderson','04362 235 455',6),(25,'Dr. Benjamin Hernandez','04547 303 244',1),(26,'Dr. Mia Taylor','04381 362 321',6),(27,'Dr. Samuel Brown','04565 49 488',7),(28,'Dr. Natalie Wilson','04290 393 752',1),(29,'Dr. Jason Garcia','04565 708 934',7),(30,'Dr. Victoria Davis','04599 188 963',2),(31,'Dr. Ryan Lee','04230 211 879',4),(32,'Dr. Chloe Kim','04715 245 582',5),(33,'Dr. Christopher Rodriguez','04111 287 25',5),(34,'Dr. Mia Martinez','04224 339 463',2),(35,'Dr. William Thompson','04205 557 91',1),(36,'Dr. Aria Anderson','04768 303 988',7),(37,'Dr. Jacob Hernandez','04018 732 77',4),(38,'Dr. Addison Taylor','04170 879 383',6),(39,'Dr. Madison Brown','04224 257 87',4),(40,'Dr. Daniel Wilson','04603 412 100',1),(41,'Dr. Caroline Garcia','04203 525 672',6),(42,'Dr. Ethan Davis','04791 174 336',6),(43,'Dr. Mia Lee','04174 895 125',4),(44,'Dr. Tyler Kim','04938 166 336',4),(45,'Dr. Elizabeth Rodriguez','04189 16 258',5),(46,'Dr. Michael Martinez','04244 969 478',5),(47,'Dr. Sophia Thompson','04495 655 686',2),(48,'Dr. William Anderson','04420 181 889',2),(49,'Dr. Emma Hernandez','04985 74 804',5),(50,'Dr. Hamid Zia','04985 99  804',NULL);
/*!40000 ALTER TABLE `doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medication`
--

DROP TABLE IF EXISTS `medication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medication` (
  `medication_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `manufacturer` varchar(255) NOT NULL,
  `dosage_form` varchar(50) NOT NULL,
  `strength` varchar(50) NOT NULL,
  `description` text,
  PRIMARY KEY (`medication_id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medication`
--

LOCK TABLES `medication` WRITE;
/*!40000 ALTER TABLE `medication` DISABLE KEYS */;
INSERT INTO `medication` VALUES (1,'Ibuprofen','ABC Pharma','Tablet','200mg','Pain reliever'),(2,'Amoxicillin','XYZ Pharmaceuticals','Capsule','500mg','Antibiotic'),(3,'Loratadine','MediCo','Tablet','10mg','Antihistamine for allergies'),(4,'Simvastatin','Pharmalife','Tablet','20mg','Cholesterol-lowering medication'),(5,'Omeprazole','HealthMeds','Capsule','40mg','Acid reflux treatment'),(6,'Metformin','Wellness Drugs','Tablet','1000mg','Type 2 diabetes medication'),(7,'Albuterol','BreathEasy','Inhaler','100mcg','Bronchodilator for asthma'),(8,'Aspirin','HealPharma','Tablet','81mg','Blood thinner'),(9,'Cetirizine','AllergyCare','Tablet','10mg','Antihistamine for allergies'),(10,'Losartan','HeartGuard','Tablet','50mg','Blood pressure medication'),(11,'Metoprolol','CardioHealth','Tablet','25mg','Beta blocker for hypertension'),(12,'Levothyroxine','ThyroidWell','Tablet','100mcg','Thyroid hormone replacement'),(13,'Atorvastatin','CholesterolControl','Tablet','40mg','Cholesterol-lowering medication'),(14,'Prednisone','ReliefMeds','Tablet','10mg','Anti-inflammatory'),(15,'Fluoxetine','MindBalance','Capsule','20mg','Antidepressant'),(16,'Warfarin','BloodCare','Tablet','5mg','Anticoagulant'),(17,'Diphenhydramine','SleepEase','Tablet','25mg','Sleep aid'),(18,'Furosemide','KidneyCare','Tablet','40mg','Diuretic for fluid retention'),(19,'Meloxicam','PainRelief','Tablet','15mg','Pain and inflammation relief'),(20,'Hydrochlorothiazide','WaterBalance','Tablet','12.5mg','Diuretic for hypertension'),(21,'Ciprofloxacin','MicroMed','Tablet','500mg','Antibiotic for infections'),(22,'Paracetamol','ReliefMeds','Tablet','500mg','Pain and fever reliever'),(23,'Esomeprazole','GastroGuard','Capsule','20mg','Proton pump inhibitor'),(24,'Prednisolone','InflammationControl','Tablet','5mg','Anti-inflammatory'),(25,'Montelukast','AsthmaCare','Tablet','10mg','Leukotriene receptor antagonist for asthma'),(26,'Rosuvastatin','HeartCare','Tablet','10mg','Cholesterol-lowering medication'),(27,'Cephalexin','MediCure','Capsule','250mg','Antibiotic'),(28,'Hydrocodone','PainRelief','Tablet','5mg','Pain reliever'),(29,'Fluticasone','BreatheEasy','Inhaler','50mcg','Corticosteroid inhaler for asthma'),(30,'Azithromycin','MicroMed','Tablet','250mg','Antibiotic for infections'),(31,'Duloxetine','MindBalance','Capsule','30mg','Antidepressant'),(32,'Bupropion','HappinessRx','Tablet','150mg','Antidepressant and smoking cessation aid'),(33,'Amlodipine','CardioHealth','Tablet','5mg','Calcium channel blocker for hypertension'),(34,'Lisinopril','HeartGuard','Tablet','10mg','ACE inhibitor for hypertension'),(35,'Venlafaxine','MoodStabilize','Capsule','75mg','Antidepressant'),(36,'Celecoxib','JointRelief','Capsule','100mg','Anti-inflammatory for joint pain'),(37,'Ranitidine','StomachEase','Tablet','150mg','Antacid and H2 blocker'),(38,'Trazodone','SleepWell','Tablet','50mg','Sleep aid and antidepressant'),(39,'Escitalopram','EmotionBalance','Tablet','10mg','Antidepressant'),(40,'Oxycodone','PainRelief','Tablet','10mg','Strong pain reliever'),(41,'Gabapentin','NeuroCare','Capsule','300mg','Anticonvulsant and neuropathic pain medication'),(42,'Lorazepam','AnxietyControl','Tablet','2mg','Anti-anxiety medication'),(43,'Melatonin','SleepAid','Tablet','5mg','Natural sleep aid'),(44,'Dexamethasone','InflammationControl','Tablet','4mg','Potent anti-inflammatory'),(45,'Tramadol','PainRelief','Tablet','50mg','Moderate to severe pain relief'),(46,'Levothyroxine','ThyroidCare','Tablet','50mcg','Thyroid hormone replacement'),(47,'Metoclopramide','StomachEase','Tablet','10mg','Anti-nausea and digestive aid'),(48,'Naproxen','PainRelief','Tablet','220mg','Nonsteroidal anti-inflammatory drug'),(49,'Cetirizine','AllergyControl','Tablet','5mg','Antihistamine for allergies'),(50,'Diazepam','AnxietyEase','Tablet','10mg','Anti-anxiety medication'),(51,'Sildenafil','LoveLife','Tablet','50mg','Erectile dysfunction treatment'),(52,'Fexofenadine','AllergyRelief','Tablet','180mg','Antihistamine for allergies'),(53,'Sertraline','MoodBalance','Tablet','50mg','Antidepressant'),(54,'Amitriptyline','MoodStabilize','Tablet','25mg','Antidepressant'),(55,'Olanzapine','MentalHealth','Tablet','10mg','Antipsychotic medication'),(56,'Venlafaxine','MindBalance','Capsule','150mg','Antidepressant'),(57,'Fluconazole','MicroMed','Tablet','150mg','Antifungal medication'),(58,'Citalopram','EmotionBalance','Tablet','20mg','Antidepressant'),(59,'Alprazolam','AnxietyRelief','Tablet','0.5mg','Anti-anxiety medication'),(60,'Hydroxyzine','CalmEase','Tablet','25mg','Antihistamine and anti-anxiety'),(61,'Risperidone','MentalHealth','Tablet','2mg','Antipsychotic medication'),(62,'Mirtazapine','MoodStabilize','Tablet','15mg','Antidepressant'),(63,'Prednisolone','InflammationControl','Tablet','10mg','Anti-inflammatory');
/*!40000 ALTER TABLE `medication` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient` (
  `patient_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `dob` date NOT NULL,
  `gender` enum('male','female','other') NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  `state_code` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`patient_id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES (1,'John Smith','1985-03-12','male','123-456-7890','123 Main St','WA'),(2,'Jane Doe','1992-07-04','female','555-555-1212','456 Oak St','NSW'),(3,'Robert Johnson','1976-10-22','male','555-123-4567','789 Elm St','NT'),(4,'Samantha Garcia','2001-02-08','female','555-867-5309','321 Pine St','VIC'),(5,'AnnaLee','1969-12-01','male','555-987-6543','555 Maple Ave','WA'),(6,'Amanda Chen','1987-05-30','female','555-555-5555','444 Cherry Ln','VIC'),(7,'Michael Rodriguez','1995-11-17','male','555-111-2222','777 Walnut St','NT'),(8,'Emily Kim','2000-04-02','female','555-222-3333','888 Spruce St','NSW'),(9,'Daniel Brown','1980-08-15','male','555-444-5555','999 Oak St','NSW'),(10,'Megan Davis','1990-01-20','female','555-123-4567','111 Pine St','VIC'),(11,'John Doe','1990-06-15','male','123-456-7890','123 Main St','QLD'),(12,'Jane Smith','1985-09-10','female','555-555-5555','456 Second St','NT'),(13,'Mike Thompson','1978-02-03','male','222-222-2222','789 Third St','NT'),(14,'Sarah Lee','1995-12-25','female','333-333-3333','321 Fourth St','NSW'),(15,'Alex Rodriguez','2000-01-01','male','444-444-4444','567 Fifth St','NT'),(16,'Megan Gold','1992-11-30','female','777-777-7777','246 Sixth St','VIC'),(17,'Tom Smith','1980-08-18','male','666-666-6666','369 Seventh St','QLD'),(18,'Emily Brown','1998-05-20','female','888-888-8888','753 Eighth St','NT'),(19,'PortiaLee','1975-03-12','male','999-999-9999','951 Ninth St','QLD'),(20,'Samantha Garden','1989-07-04','female','111-111-1111','147 Tenth St','VIC'),(21,'Paula Jones','2005-04-12','female','222-222-2222','258 Eleventh St','QLD'),(22,'Jacob Thompson','1983-01-31','male','333-333-3333','369 Twelfth St','VIC'),(23,'Ashley Davis','1996-09-18','female','444-444-4444','753 Thirteenth St','QLD'),(24,'Oliver White','1977-06-22','male','555-555-5555','951 Fourteenth St','NT'),(25,'Grace Martin','2002-12-05','female','666-666-6666','147 Fifteenth St','WA'),(26,'SarahLee','1986-08-02','male','777-777-7777','258 Sixteenth St','QLD'),(27,'John Hue','1990-06-15','male','123-456-7890','123 Main St','NSW'),(28,'Jane Dave','1985-09-10','female','555-555-5555','456 Second St','VIC'),(29,'Mike Johnson','1978-02-03','male','222-222-2222','789 Third St','VIC'),(30,'Sarah Brown','1995-12-25','female','333-333-3333','321 Fourth St','NSW'),(31,'Alex Chen','2000-01-01','male','444-444-4444','567 Fifth St','VIC'),(32,'Megan Davis','1992-11-30','female','777-777-7777','246 Sixth St','VIC'),(33,'Tom Hayland','1980-08-18','male','666-666-6666','369 Seventh St','QLD'),(34,'Emily Brown','1998-05-20','female','888-888-8888','753 Eighth St','NSW'),(35,'Civteang Lee','1975-03-12','male','999-999-9999','951 Ninth St','QLD'),(36,'Samantha Green','1989-07-04','female','111-111-1111','147 Tenth St','QLD'),(37,'Paula Rodriguez','2005-04-12','female','222-222-2222','258 Eleventh St','NSW'),(38,'Adam Thompson','1983-01-31','male','333-333-3333','369 Twelfth St','NSW'),(39,'Anne Davis','1996-09-18','female','444-444-4444','753 Thirteenth St','VIC'),(40,'Jameela White','1977-06-22','male','555-555-5555','951 Fourteenth St','WA'),(41,'Grace Martin','2002-12-05','female','666-666-6666','147 Fifteenth St','NT'),(42,'Andrew Lee','1986-08-02','male','777-777-7777','258 Sixteenth St','NSW'),(43,'Alice Johnson','1990-01-01','female','0412 345 678','123 Main St','QLD'),(44,'Bob Smith','1985-05-15','male','0413 456 789','456 Elm St','WA'),(45,'Catherine Davis','2000-10-20','female','0421 234 567','789 Oak Ave','VIC'),(46,'David Williams','1978-03-08','male','0432 345 678','567 Pine Rd','NT'),(47,'Emma Miller','1995-07-12','female','0434 567 890','789 Maple Ln','NSW'),(48,'Frank Brown','1982-09-25','male','0415 678 901','123 Elm St','TAS'),(49,'Grace Taylor','1989-12-30','female','0423 456 789','456 Oak Ave','QLD'),(50,'Henry Jackson','2001-02-04','male','0435 678 901','789 Pine Rd','WA'),(51,'Isabella Martinez','1977-04-18','female','0416 789 012','567 Birch Dr','VIC'),(52,'Jacob Wilson','1992-06-22','male','0425 678 901','123 Cedar St','NT'),(53,'Katherine Thompson','1988-08-27','female','0437 890 123','456 Maple Ln','NSW'),(54,'Liam Anderson','1994-10-02','male','0418 901 234','789 Elm St','TAS'),(55,'Mia Martinez','1980-12-06','female','0427 012 345','567 Oak Ave','QLD'),(56,'Noah Harris','1976-02-10','male','0439 012 345','789 Pine Rd','WA'),(57,'Olivia Davis','1991-04-14','female','0410 123 456','123 Birch Dr','VIC'),(58,'Patrick Clark','1987-06-18','male','0422 345 678','456 Cedar St','NT'),(59,'Quinn Lewis','1984-08-23','male','0411 234 567','789 Maple Ln','NSW'),(60,'Ruby Nelson','1999-10-28','female','0424 567 890','567 Elm St','TAS'),(61,'Samuel Hall','1983-12-02','male','0413 678 901','789 Oak Ave','QLD'),(62,'Taylor Garcia','1979-02-06','female','0426 789 012','567 Pine Rd','WA'),(63,'Uma Wright','1996-04-10','female','0415 890 123','123 Maple Ln','VIC'),(64,'Vincent Young','1981-06-14','male','0428 901 234','456 Elm St','NT'),(65,'Willow Martinez','1986-08-18','female','0417 012 345','789 Oak Ave','NSW'),(66,'Xavier Scott','2002-10-22','male','0430 123 456','567 Pine Rd','TAS'),(67,'Yasmine Adams','1978-12-27','female','0429 234 567','123 Maple Ln','QLD'),(68,'Zachary Perez','1993-02-28','male','0432 345 678','456 Elm St','WA'),(69,'Amelia Green','1989-04-04','female','0433 456 789','789 Oak Ave','VIC'),(70,'Benjamin King','1985-06-08','male','0414 567 890','567 Pine Rd','NT'),(71,'Chloe Martinez','2000-08-12','female','0420 678 901','123 Cedar St','NSW'),(72,'Daniel Allen','1978-10-16','male','0431 789 012','456 Elm St','TAS'),(73,'Ella Turner','1987-12-20','female','0416 890 123','789 Birch Dr','QLD'),(74,'Finn Lewis','1994-02-24','male','0423 901 234','123 Maple Ln','WA'),(75,'Grace Young','1980-04-29','female','0435 012 345','456 Elm St','VIC'),(76,'Henry Davis','1997-07-03','male','0417 123 456','789 Oak Ave','NT'),(77,'Isabella Adams','1983-09-07','female','0429 234 567','567 Pine Rd','NSW'),(78,'Jack Johnson','1989-11-11','male','0430 345 678','123 Elm St','TAS'),(79,'Kate Brown','2004-01-15','female','0412 456 789','456 Oak Ave','QLD'),(80,'Liam Smith','1976-03-20','male','0423 567 890','789 Maple Ln','WA'),(81,'Mia Davis','1991-05-25','female','0434 678 901','123 Cedar St','VIC'),(82,'Noah Martinez','1988-07-30','male','0415 789 012','456 Elm St','NT'),(83,'Olivia Wilson','1996-09-01','female','0416 890 123','123 Birch Dr','NSW'),(84,'Patrick Miller','1982-11-06','male','0423 901 234','456 Cedar St','TAS'),(85,'Quinn Taylor','1998-01-10','male','0435 012 345','789 Elm St','QLD'),(86,'Ruby Clark','1987-03-15','female','0417 123 456','567 Oak Ave','WA'),(87,'Samuel Johnson','1975-05-20','male','0429 234 567','123 Pine Rd','VIC'),(88,'Taylor Martinez','1992-07-25','female','0430 345 678','456 Birch Dr','NT'),(89,'Uma Harris','1989-10-29','female','0411 456 789','789 Cedar St','NSW'),(90,'Vincent Davis','2003-01-02','male','0422 567 890','123 Elm St','TAS'),(91,'Willow Thompson','1980-03-08','female','0433 678 901','456 Maple Ln','QLD'),(92,'Xavier Adams','1995-05-13','male','0414 789 012','789 Pine Rd','WA'),(93,'Yasmine Johnson','1977-07-18','female','0425 890 123','567 Cedar St','VIC'),(94,'Zachary Wilson','1984-09-23','male','0436 901 234','123 Elm St','NT'),(95,'Amelia Smith','1991-11-27','female','0417 012 345','456 Birch Dr','NSW'),(96,'Benjamin Miller','1986-02-01','male','0428 123 456','789 Oak Ave','TAS'),(97,'Chloe Clark','1979-04-07','female','0439 234 567','567 Pine Rd','QLD'),(98,'Daniel Adams','1994-06-12','male','0410 345 678','123 Cedar St','WA'),(99,'Ella Harris','1981-08-16','female','0421 456 789','456 Elm St','VIC'),(100,'Finn Miller','2002-10-20','male','0432 567 890','789 Oak Ave','NT'),(101,'Grace Wilson','1988-12-24','female','0413 678 901','567 Pine Rd','NSW'),(102,'Henry Thompson','1993-02-28','male','0424 789 012','123 Birch Dr','TAS'),(103,'Isabella Brown','1976-05-03','female','0435 901 234','456 Cedar St','QLD');
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prescription`
--

DROP TABLE IF EXISTS `prescription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prescription` (
  `prescription_id` int NOT NULL AUTO_INCREMENT,
  `appointment_id` int NOT NULL,
  `medication_id` int NOT NULL,
  PRIMARY KEY (`prescription_id`),
  KEY `appointment_id` (`appointment_id`),
  KEY `medication_id` (`medication_id`),
  CONSTRAINT `am_fk_appointment` FOREIGN KEY (`appointment_id`) REFERENCES `appointment` (`appointment_id`),
  CONSTRAINT `am_fk_medicine` FOREIGN KEY (`medication_id`) REFERENCES `medication` (`medication_id`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prescription`
--

LOCK TABLES `prescription` WRITE;
/*!40000 ALTER TABLE `prescription` DISABLE KEYS */;
INSERT INTO `prescription` VALUES (1,133,1),(2,133,19),(3,133,7),(4,134,28),(5,134,45),(6,134,12),(7,135,39),(8,135,23),(9,135,3),(10,136,52),(11,136,18),(12,136,30),(22,140,14),(23,140,29),(24,140,6),(25,141,35),(26,141,10),(27,141,50),(28,142,19),(29,142,38),(30,142,2),(40,146,52),(41,146,18),(42,146,30),(43,147,5),(44,147,21),(45,147,56),(46,148,8),(47,148,42),(48,148,16),(58,152,19),(59,152,38),(60,152,2),(61,153,61),(62,153,22),(63,153,43);
/*!40000 ALTER TABLE `prescription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `speciality`
--

DROP TABLE IF EXISTS `speciality`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `speciality` (
  `speciality_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`speciality_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `speciality`
--

LOCK TABLES `speciality` WRITE;
/*!40000 ALTER TABLE `speciality` DISABLE KEYS */;
INSERT INTO `speciality` VALUES (1,'Cardiology'),(2,'Dermatology'),(3,'Endocrinology'),(4,'Gastroenterology'),(5,'Neurology'),(6,'Ophthalmology'),(7,'Pediatrics');
/*!40000 ALTER TABLE `speciality` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-25 22:00:16


SHOW TABLES;
DESCRIBE appointment;
DESCRIBE doctor;
DESCRIBE medication;
DESCRIBE patient;
DESCRIBE prescription;
DESCRIBE speciality;

SELECT * FROM appointment;
SELECT * FROM doctor;
SELECT * FROM medication;
SELECT * FROM patient;
SELECT * FROM prescription;
SELECT * FROM speciality;

SELECT description, COUNT(description) AS diagnosis_count
FROM medication
GROUP BY description
ORDER BY diagnosis_count DESC;

SELECT appointment_date, COUNT(appointment_date) AS visit_peak
FROM appointment
GROUP BY appointment_date 
ORDER BY appointment_date;

SELECT dr.name, dr.doctor_id, dr.speciality_id, COUNT(ap.doctor_id) AS dr_productivity
FROM appointment ap
JOIN doctor dr ON ap.doctor_id = dr.doctor_id
GROUP BY dr.name, dr.doctor_id, dr.speciality_id
ORDER BY dr_productivity DESC;

SELECT name, 
  2025 - YEAR(dob) AS age
FROM patient;

SELECT *
FROM medication md JOIN patient pt JOIN appointment apt JOIN prescription prp
ON md.appointment_id = prp.appointment_id;

