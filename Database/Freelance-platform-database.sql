-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: localhost    Database: freelance_platform
-- ------------------------------------------------------
-- Server version	8.0.46

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
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admins` (
  `admin_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permissions` json DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`admin_id`),
  KEY `fk_admins_user` (`user_id`),
  CONSTRAINT `fk_admins_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `applications`
--

DROP TABLE IF EXISTS `applications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `applications` (
  `application_id` int NOT NULL AUTO_INCREMENT,
  `gig_id` int NOT NULL,
  `student_id` int NOT NULL,
  `cover_letter` text,
  `proposed_price` decimal(10,2) DEFAULT NULL,
  `estimated_days` int DEFAULT NULL,
  `application_status` enum('PENDING','ACCEPTED','REJECTED','WITHDRAWN') DEFAULT 'PENDING',
  `applied_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `reviewed_at` datetime DEFAULT NULL,
  PRIMARY KEY (`application_id`),
  KEY `fk_applications_gig` (`gig_id`),
  KEY `fk_applications_student` (`student_id`),
  CONSTRAINT `fk_applications_gig` FOREIGN KEY (`gig_id`) REFERENCES `gigs` (`gig_id`),
  CONSTRAINT `fk_applications_student` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applications`
--

LOCK TABLES `applications` WRITE;
/*!40000 ALTER TABLE `applications` DISABLE KEYS */;
INSERT INTO `applications` VALUES (2,2,1,'**Subject: Application for Software Developer Position**\n\nDear Sir/Madam,\n\nI am writing to apply for the Software Developer position in your company. I am currently pursuing B.Tech in Electronics and Telecommunication Engineering and have knowledge of Java, Spring Boot, MySQL, and web development.\n\nI am eager to use my skills and learn new technologies while contributing to your organization. I would be grateful for an opportunity to attend an interview.\n\nThank you for considering my application.\n\nYours sincerely,\n**Gayatri Kshirsagar**\n',150000.00,15,'PENDING','2026-09-26 01:30:23','2026-09-26 01:47:38'),(3,4,1,'Alex MercerSan Francisco, CA | (555) 019-2834 | alex.mercer@email.com | linkedin.comSeptember 26, 2026Hiring TeamTechHive Solutions100 Innovation WaySan Francisco, CARe: Application for Web Tester / QA EngineerDear Hiring Team,I am writing to express my strong interest in the Web Tester position at TechHive Solutions. With over three years of experience specializing in both manual and automated quality assurance for dynamic web applications, I am confident in my ability to help your team deploy flawless user interfaces.In my previous role at PixelCraft Digital, I owned the end-to-end testing lifecycle for multiple high-traffic websites. My key contributions include:Automation Frameworks: Built web automation scripts using Cypress and Selenium, reducing regression testing time by 40%.Cross-Browser Verification: Managed comprehensive compatibility testing across Chrome, Safari, and Firefox, reducing post-release UI bugs by 20%.Defect Tracking: Documented precise bug reports in Jira, collaborating directly with developers to speed up issue resolution.I pride myself on a rigorous attention to detail and a passion for seamless user experiences. I am eager to bring my technical skills and collaborative mindset to TechHive Solutions.Thank you for your time and consideration.Best regards,Alex Mercer',18000.00,20,'PENDING','2026-09-26 01:53:13',NULL),(4,3,4,'Dear [Hiring Manager Name or Hiring Team],I am writing to express my enthusiastic interest in the Web Tester position at [Company Name]. As a dedicated Quality Assurance Professional, Rahul Sharma brings over three years of experience optimizing the performance, security, and user experience of complex web applications. My background spans both manual exploratory testing and robust test automation using frameworks like Selenium, Cypress, and Playwright, ensuring bulletproof frontend functionality across all major browsers and responsive viewports. I am highly proficient in REST API validation with Postman, managing database verification via SQL, tracking the defect lifecycle inside Jira, and integrating automated test suites into CI/CD pipelines like GitHub Actions or Jenkins. I excel at translating dense product requirements into comprehensive test plans and collaborating closely with developers within Agile sprints to catch regressions early. I am eager to leverage my technical expertise and deep user empathy to help [Company Name] consistently deploy flawless, high-quality web products. Thank you for your time and consideration.',15000.00,12,'ACCEPTED','2026-09-26 15:13:35','2026-09-26 15:14:25'),(5,4,4,'ABC',18000.00,13,'PENDING','2026-09-26 15:35:25',NULL),(6,6,5,'Dear Hiring Manager,I am writing to apply for the Marketing Specialist position at Apex Solutions.With three years of experience in digital marketing, I have built strong skills in social media management and content creation. In my recent role at Creative Media, I grew the company\'s online audience by 40% in six months using targeted ad campaigns.I admire Apex Solutions and its focus on creative brand growth. I know my skills will help your team reach its goals.I have attached my resume for your review. I would love the chance to speak with you in an interview.Sincerely,Alex Smithalex.smith@email.com555-0198',39985.00,20,'ACCEPTED','2026-09-26 22:31:26','2026-09-26 22:37:27'),(7,4,8,'Dear [Hiring Manager Name], as a project manager with five years of experience streamlining software deployments and cutting operational costs by 20%, I am eager to apply for the Senior Operations Lead position at [Company Name], where I can bring my proven track record in agile team leadership and process automation to help your department achieve its quarterly scaling targets.',18000.00,15,'PENDING','2026-10-01 13:01:17',NULL),(8,7,8,'Dear [Hiring Manager Name], as a project manager with five years of experience streamlining software deployments and cutting operational costs by 20%, I am eager to apply for the Senior Operations Lead position at [Company Name], where I can bring my proven track record in agile team leadership and process automation to help your department achieve its quarterly scaling targets.',20000.00,20,'PENDING','2026-10-01 13:03:58',NULL),(9,5,1,'Excited for j0b',19000.00,21,'PENDING','2026-10-03 05:48:39',NULL);
/*!40000 ALTER TABLE `applications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clients` (
  `client_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `company_name` varchar(200) DEFAULT NULL,
  `company_description` text,
  `company_website` varchar(500) DEFAULT NULL,
  `location` varchar(150) DEFAULT NULL,
  `client_type` varchar(100) DEFAULT NULL,
  `verification_status` enum('PENDING','VERIFIED','REJECTED') DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `profile_picture` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`client_id`),
  KEY `fk_clients_user` (`user_id`),
  CONSTRAINT `fk_clients_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,5,'Pranita Technologies','A technology company working on software development and digital solutions.','https://example.com','Pune','Company',NULL,'2026-08-25 21:22:44',''),(2,7,NULL,NULL,NULL,NULL,NULL,NULL,'2026-09-02 09:48:40',NULL),(3,21,NULL,NULL,NULL,NULL,NULL,'VERIFIED','2026-10-01 04:51:57',NULL),(4,22,NULL,NULL,NULL,NULL,NULL,'PENDING','2026-10-01 04:52:41',NULL),(5,23,NULL,NULL,NULL,NULL,NULL,'PENDING','2026-10-01 04:54:01',NULL),(6,24,NULL,NULL,NULL,NULL,NULL,'PENDING','2026-10-01 04:54:55',NULL),(7,25,NULL,NULL,NULL,NULL,NULL,'PENDING','2026-10-01 04:55:53',NULL),(8,26,NULL,NULL,NULL,NULL,NULL,'PENDING','2026-10-01 04:56:59',NULL),(9,27,NULL,NULL,NULL,NULL,NULL,'PENDING','2026-10-01 04:58:04',NULL),(10,28,NULL,NULL,NULL,NULL,NULL,'PENDING','2026-10-01 04:59:04',NULL),(11,29,NULL,NULL,NULL,NULL,NULL,'PENDING','2026-10-01 05:00:05',NULL),(12,30,NULL,NULL,NULL,NULL,NULL,'PENDING','2026-10-01 05:01:06',NULL);
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favorites`
--

DROP TABLE IF EXISTS `favorites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `favorites` (
  `student_id` int NOT NULL,
  `gig_id` int NOT NULL,
  `saved_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`student_id`,`gig_id`),
  KEY `fk_favorites_gig` (`gig_id`),
  CONSTRAINT `fk_favorites_gig` FOREIGN KEY (`gig_id`) REFERENCES `gigs` (`gig_id`),
  CONSTRAINT `fk_favorites_student` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorites`
--

LOCK TABLES `favorites` WRITE;
/*!40000 ALTER TABLE `favorites` DISABLE KEYS */;
INSERT INTO `favorites` VALUES (1,4,'2026-09-26 15:06:11');
/*!40000 ALTER TABLE `favorites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gig_categories`
--

DROP TABLE IF EXISTS `gig_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gig_categories` (
  `category_id` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(100) NOT NULL,
  `description` text,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gig_categories`
--

LOCK TABLES `gig_categories` WRITE;
/*!40000 ALTER TABLE `gig_categories` DISABLE KEYS */;
INSERT INTO `gig_categories` VALUES (1,'Web Development','Website and web application development'),(2,'Graphic Design','Logo, UI, UX and graphic design services'),(3,'Mobile Development','Android and iOS application development'),(4,'Data Science','Data analysis, machine learning and data science'),(5,'Content Writing','Blog writing, technical writing and copywriting');
/*!40000 ALTER TABLE `gig_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gig_skills`
--

DROP TABLE IF EXISTS `gig_skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gig_skills` (
  `gig_id` int NOT NULL,
  `skill_id` int NOT NULL,
  `experience_level` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`gig_id`,`skill_id`),
  KEY `fk_gig_skills_skill` (`skill_id`),
  CONSTRAINT `fk_gig_skills_gig` FOREIGN KEY (`gig_id`) REFERENCES `gigs` (`gig_id`),
  CONSTRAINT `fk_gig_skills_skill` FOREIGN KEY (`skill_id`) REFERENCES `skills` (`skill_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gig_skills`
--

LOCK TABLES `gig_skills` WRITE;
/*!40000 ALTER TABLE `gig_skills` DISABLE KEYS */;
/*!40000 ALTER TABLE `gig_skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gigs`
--

DROP TABLE IF EXISTS `gigs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gigs` (
  `gig_id` int NOT NULL AUTO_INCREMENT,
  `client_id` int NOT NULL,
  `category_id` int NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` text,
  `budget_min` decimal(10,2) DEFAULT NULL,
  `budget_max` decimal(10,2) DEFAULT NULL,
  `deadline` date DEFAULT NULL,
  `required_experience` varchar(100) DEFAULT NULL,
  `status` enum('OPEN','IN_PROGRESS','COMPLETED','CLOSED') DEFAULT 'OPEN',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `assigned_student_id` int DEFAULT NULL,
  PRIMARY KEY (`gig_id`),
  KEY `fk_gigs_client` (`client_id`),
  KEY `fk_gigs_category` (`category_id`),
  CONSTRAINT `fk_gigs_category` FOREIGN KEY (`category_id`) REFERENCES `gig_categories` (`category_id`),
  CONSTRAINT `fk_gigs_client` FOREIGN KEY (`client_id`) REFERENCES `clients` (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gigs`
--

LOCK TABLES `gigs` WRITE;
/*!40000 ALTER TABLE `gigs` DISABLE KEYS */;
INSERT INTO `gigs` VALUES (2,1,1,'E-Commerce Website','Need a developer to create an e-commerce website.',10000.00,15000.00,'2026-10-30','1-2 years','IN_PROGRESS','2026-09-22 20:35:20','2026-09-26 01:47:38',1),(3,1,1,'Java Spring Boot Developer','Build a REST API using Java and Spring Boot.',10000.00,15000.00,'2026-10-30','Java, Spring Boot','IN_PROGRESS',NULL,'2026-09-26 15:14:25',4),(4,2,1,'Responsive Portfolio Website','Create a modern responsive portfolio website for a software developer with Home, About, Skills, Projects and Contact sections.',12000.00,18000.00,'2026-11-15','HTML, CSS, JavaScript, React','OPEN',NULL,NULL,NULL),(5,2,1,'Responsive Portfolio Website','Create a modern responsive portfolio website for a software developer with Home, About, Skills, Projects and Contact sections.',12000.00,18000.00,'2026-11-15','HTML, CSS, JavaScript, React','OPEN','2026-09-25 11:02:17','2026-09-25 11:02:17',NULL),(6,1,1,'Food Delivery Mobile App','Develop a mobile application for ordering food from local restaurants with user registration, restaurant listing, cart and order tracking.',25000.00,39985.00,'2026-12-10','React Native, JavaScript, REST API','OPEN','2026-09-25 13:16:01','2026-10-04 06:07:38',5),(7,1,1,'Build a Student Management System','I need a web-based Student Management System for a college. The system should allow administrators to add, update, delete, and view student records. It should include student registration, login, attendance management, and a dashboard. The application should have a simple and responsive user interface.\n\n',10000.00,20000.00,'2026-10-15','1-2 years','OPEN','2026-10-01 06:53:45','2026-10-01 06:53:45',NULL);
/*!40000 ALTER TABLE `gigs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messages` (
  `message_id` int NOT NULL AUTO_INCREMENT,
  `sender_id` int NOT NULL,
  `receiver_id` int NOT NULL,
  `project_id` int DEFAULT NULL,
  `message_text` text,
  `attachment_url` varchar(500) DEFAULT NULL,
  `sent_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `read_status` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`message_id`),
  KEY `fk_messages_sender` (`sender_id`),
  KEY `fk_messages_receiver` (`receiver_id`),
  KEY `fk_messages_gig` (`project_id`),
  CONSTRAINT `fk_messages_gig` FOREIGN KEY (`project_id`) REFERENCES `gigs` (`gig_id`),
  CONSTRAINT `fk_messages_receiver` FOREIGN KEY (`receiver_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `fk_messages_sender` FOREIGN KEY (`sender_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (14,5,4,2,'Hello Radhika, please continue with the project.',NULL,'2026-09-26 02:44:53',0),(16,4,5,2,'Hello Pranita, I have started working on the E-Commerce Website.',NULL,'2026-09-26 02:46:15',0),(17,4,5,2,'hii',NULL,'2026-09-26 14:44:11',0);
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notifications` (
  `notification_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `message` text,
  `notification_type` varchar(100) DEFAULT NULL,
  `related_id` int DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT '0',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`notification_id`),
  KEY `fk_notifications_user` (`user_id`),
  CONSTRAINT `fk_notifications_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
INSERT INTO `notifications` VALUES (1,4,'Application Accepted','Your application for the E-Commerce Website was accepted.','APPLICATION',2,1,'2026-09-26 14:56:04'),(2,5,'Application Accepted','Applied for  E-Commerce Website.','APPLICATION',2,0,'2026-09-26 15:09:45'),(3,7,'New Project Application','A student has applied for your project: Responsive Portfolio Website','APPLICATION',4,0,'2026-09-26 15:35:26'),(4,5,'New Project Application','A student has applied for your project: Food Delivery Mobile App','APPLICATION',6,0,'2026-09-26 22:31:26'),(5,10,'Application Accepted','Your application for project \'Food Delivery Mobile App\' has been accepted.','APPLICATION',6,0,'2026-09-26 22:37:27'),(6,7,'New Project Application','A student has applied for your project: Responsive Portfolio Website','APPLICATION',4,0,'2026-10-01 13:01:17'),(7,5,'New Project Application','A student has applied for your project: Build a Student Management System','APPLICATION',7,0,'2026-10-01 13:03:58'),(8,7,'New Project Application','A student has applied for your project: Responsive Portfolio Website','APPLICATION',5,0,'2026-10-03 05:48:39');
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `payment_id` int NOT NULL AUTO_INCREMENT,
  `project_id` int NOT NULL,
  `milestone_id` int DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL,
  `payment_method` varchar(50) DEFAULT NULL,
  `transaction_id` varchar(150) DEFAULT NULL,
  `payment_status` enum('PENDING','SUCCESS','FAILED','REFUNDED') DEFAULT 'PENDING',
  `payment_date` datetime DEFAULT NULL,
  PRIMARY KEY (`payment_id`),
  UNIQUE KEY `transaction_id` (`transaction_id`),
  KEY `fk_payments_project` (`project_id`),
  KEY `fk_payments_milestone` (`milestone_id`),
  CONSTRAINT `fk_payments_milestone` FOREIGN KEY (`milestone_id`) REFERENCES `project_milestones` (`milestone_id`),
  CONSTRAINT `fk_payments_project` FOREIGN KEY (`project_id`) REFERENCES `projects` (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portfolio`
--

DROP TABLE IF EXISTS `portfolio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `portfolio` (
  `portfolio_id` int NOT NULL AUTO_INCREMENT,
  `student_id` int NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `description` text,
  `project_url` varchar(500) DEFAULT NULL,
  `github_url` varchar(500) DEFAULT NULL,
  `image_url` varchar(500) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`portfolio_id`),
  KEY `fk_portfolio_student` (`student_id`),
  CONSTRAINT `fk_portfolio_student` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portfolio`
--

LOCK TABLES `portfolio` WRITE;
/*!40000 ALTER TABLE `portfolio` DISABLE KEYS */;
/*!40000 ALTER TABLE `portfolio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_milestones`
--

DROP TABLE IF EXISTS `project_milestones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_milestones` (
  `milestone_id` int NOT NULL AUTO_INCREMENT,
  `project_id` int NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` text,
  `amount` decimal(10,2) DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `completion_date` date DEFAULT NULL,
  `status` enum('PENDING','IN_PROGRESS','COMPLETED','OVERDUE') DEFAULT 'PENDING',
  PRIMARY KEY (`milestone_id`),
  KEY `fk_milestones_project` (`project_id`),
  CONSTRAINT `fk_milestones_project` FOREIGN KEY (`project_id`) REFERENCES `projects` (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_milestones`
--

LOCK TABLES `project_milestones` WRITE;
/*!40000 ALTER TABLE `project_milestones` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_milestones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projects` (
  `project_id` int NOT NULL AUTO_INCREMENT,
  `application_id` int NOT NULL,
  `student_id` int NOT NULL,
  `client_id` int NOT NULL,
  `project_title` varchar(200) NOT NULL,
  `agreed_amount` decimal(10,2) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `expected_end_date` date DEFAULT NULL,
  `actual_end_date` date DEFAULT NULL,
  `project_status` enum('NOT_STARTED','IN_PROGRESS','COMPLETED','CANCELLED') DEFAULT 'NOT_STARTED',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`project_id`),
  KEY `fk_projects_application` (`application_id`),
  KEY `fk_projects_student` (`student_id`),
  KEY `fk_projects_client` (`client_id`),
  CONSTRAINT `fk_projects_application` FOREIGN KEY (`application_id`) REFERENCES `applications` (`application_id`),
  CONSTRAINT `fk_projects_client` FOREIGN KEY (`client_id`) REFERENCES `clients` (`client_id`),
  CONSTRAINT `fk_projects_student` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reports`
--

DROP TABLE IF EXISTS `reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reports` (
  `report_id` int NOT NULL AUTO_INCREMENT,
  `reporter_id` int NOT NULL,
  `reported_user_id` int DEFAULT NULL,
  `gig_id` int DEFAULT NULL,
  `project_id` int DEFAULT NULL,
  `reason` varchar(200) DEFAULT NULL,
  `description` text,
  `report_status` enum('PENDING','INVESTIGATING','RESOLVED','REJECTED') DEFAULT 'PENDING',
  `reported_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `resolved_by` int DEFAULT NULL,
  `resolved_at` datetime DEFAULT NULL,
  PRIMARY KEY (`report_id`),
  KEY `fk_reports_reporter` (`reporter_id`),
  KEY `fk_reports_reported_user` (`reported_user_id`),
  KEY `fk_reports_gig` (`gig_id`),
  KEY `fk_reports_project` (`project_id`),
  KEY `fk_reports_resolved_by` (`resolved_by`),
  CONSTRAINT `fk_reports_gig` FOREIGN KEY (`gig_id`) REFERENCES `gigs` (`gig_id`),
  CONSTRAINT `fk_reports_project` FOREIGN KEY (`project_id`) REFERENCES `projects` (`project_id`),
  CONSTRAINT `fk_reports_reported_user` FOREIGN KEY (`reported_user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `fk_reports_reporter` FOREIGN KEY (`reporter_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `fk_reports_resolved_by` FOREIGN KEY (`resolved_by`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reports`
--

LOCK TABLES `reports` WRITE;
/*!40000 ALTER TABLE `reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviews` (
  `review_id` int NOT NULL AUTO_INCREMENT,
  `project_id` int NOT NULL,
  `reviewer_user_id` int NOT NULL,
  `reviewed_user_id` int NOT NULL,
  `rating` int DEFAULT NULL,
  `review_text` text,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`review_id`),
  KEY `fk_reviews_project` (`project_id`),
  KEY `fk_reviews_reviewer` (`reviewer_user_id`),
  KEY `fk_reviews_reviewed` (`reviewed_user_id`),
  CONSTRAINT `fk_reviews_project` FOREIGN KEY (`project_id`) REFERENCES `projects` (`project_id`),
  CONSTRAINT `fk_reviews_reviewed` FOREIGN KEY (`reviewed_user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `fk_reviews_reviewer` FOREIGN KEY (`reviewer_user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `chk_rating` CHECK ((`rating` between 1 and 5))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skills`
--

DROP TABLE IF EXISTS `skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skills` (
  `skill_id` int NOT NULL AUTO_INCREMENT,
  `skill_name` varchar(100) NOT NULL,
  `category` varchar(100) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`skill_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skills`
--

LOCK TABLES `skills` WRITE;
/*!40000 ALTER TABLE `skills` DISABLE KEYS */;
/*!40000 ALTER TABLE `skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_skills`
--

DROP TABLE IF EXISTS `student_skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_skills` (
  `student_id` int NOT NULL,
  `skill_id` int NOT NULL,
  `proficiency_level` varchar(50) DEFAULT NULL,
  `years_of_experience` decimal(4,1) DEFAULT NULL,
  PRIMARY KEY (`student_id`,`skill_id`),
  KEY `fk_student_skills_skill` (`skill_id`),
  CONSTRAINT `fk_student_skills_skill` FOREIGN KEY (`skill_id`) REFERENCES `skills` (`skill_id`),
  CONSTRAINT `fk_student_skills_student` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_skills`
--

LOCK TABLES `student_skills` WRITE;
/*!40000 ALTER TABLE `student_skills` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `student_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `college_name` varchar(200) DEFAULT NULL,
  `course` varchar(100) DEFAULT NULL,
  `year_of_study` int DEFAULT NULL,
  `bio` text,
  `location` varchar(150) DEFAULT NULL,
  `hourly_rate` decimal(10,2) DEFAULT NULL,
  `availability_status` enum('AVAILABLE','BUSY','NOT_AVAILABLE') DEFAULT NULL,
  `verification_status` enum('PENDING','VERIFIED','REJECTED') DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `education` varchar(255) DEFAULT NULL,
  `profile_picture` text,
  PRIMARY KEY (`student_id`),
  KEY `fk_students_user` (`user_id`),
  CONSTRAINT `fk_students_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (1,4,'ABC College of Engineering','B.Tech ENTC',3,'I am a student interested in Java, Spring Boot and web development.','Mumbai',500.00,'AVAILABLE',NULL,'2026-08-25 21:19:47','Bachelor of Technology','radhika.jpg'),(2,6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2026-09-02 09:46:00',NULL,NULL),(3,8,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2026-09-02 09:57:59',NULL,NULL),(4,9,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2026-09-26 15:12:38',NULL,NULL),(5,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2026-09-26 22:29:26',NULL,NULL),(6,11,NULL,NULL,NULL,NULL,NULL,NULL,'AVAILABLE','PENDING','2026-10-01 04:43:14',NULL,NULL),(7,12,NULL,NULL,NULL,NULL,NULL,NULL,'AVAILABLE','PENDING','2026-10-01 04:44:14',NULL,NULL),(8,13,NULL,NULL,NULL,NULL,NULL,NULL,'AVAILABLE','PENDING','2026-10-01 04:45:05',NULL,NULL),(9,14,NULL,NULL,NULL,NULL,NULL,NULL,'AVAILABLE','PENDING','2026-10-01 04:45:46',NULL,NULL),(10,15,NULL,NULL,NULL,NULL,NULL,NULL,'AVAILABLE','PENDING','2026-10-01 04:46:54',NULL,NULL),(11,16,NULL,NULL,NULL,NULL,NULL,NULL,'AVAILABLE','PENDING','2026-10-01 04:47:46',NULL,NULL),(12,17,NULL,NULL,NULL,NULL,NULL,NULL,'AVAILABLE','PENDING','2026-10-01 04:48:36',NULL,NULL),(13,18,NULL,NULL,NULL,NULL,NULL,NULL,'AVAILABLE','PENDING','2026-10-01 04:49:19',NULL,NULL),(14,19,NULL,NULL,NULL,NULL,NULL,NULL,'AVAILABLE','PENDING','2026-10-01 04:50:06',NULL,NULL),(15,20,NULL,NULL,NULL,NULL,NULL,NULL,'AVAILABLE','REJECTED','2026-10-01 04:51:00',NULL,NULL);
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `profile_picture` varchar(500) DEFAULT NULL,
  `role` enum('STUDENT','CLIENT','ADMIN') NOT NULL,
  `account_status` enum('ACTIVE','INACTIVE','SUSPENDED') DEFAULT 'ACTIVE',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `last_login` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Test Student','test@gmail.com','password123','9876543210',NULL,'STUDENT','ACTIVE',NULL,NULL),(2,'XYZ','xyz@gmail.com','Test@123','9805467832',NULL,'STUDENT','ACTIVE',NULL,NULL),(3,'GAYATRI KSHIRSAGAR','gayatri.kshirsagar@cumminscollege.in','Gayatri@123','9767389901',NULL,'CLIENT','ACTIVE',NULL,NULL),(4,'Radhika Patil','radhika@gmail.com','Radhika@123','9876543210',NULL,'STUDENT','ACTIVE',NULL,NULL),(5,'Pranita','pranita@gmail.com','Pranita@5678','9878402390',NULL,'CLIENT','ACTIVE',NULL,NULL),(6,'Komal Rengade','komal@gmail.com','Test@123','9805467832',NULL,'STUDENT','ACTIVE',NULL,NULL),(7,'Johan','johan@gmail.com','Test@123','2345980820',NULL,'CLIENT','ACTIVE',NULL,NULL),(8,'sakshi','sakshi@gmail.com','Test@123','9805467832',NULL,'STUDENT','ACTIVE',NULL,NULL),(9,'Vrushali Shinde','vrushali@123.com','Vrusha@2103','2345980820',NULL,'STUDENT','ACTIVE',NULL,NULL),(10,'Joshep Ray','joshep@gmail.com','Joshep@5678','9845678834',NULL,'STUDENT','ACTIVE',NULL,NULL),(11,'Aarav Sharma','aarav.sharma01@gmail.com','Aarav@123','9876543201',NULL,'STUDENT','ACTIVE',NULL,NULL),(12,'Riya Patil','riya.patil02@gmail.com','Riya@123','9876543202',NULL,'STUDENT','ACTIVE',NULL,NULL),(13,'Aditya Kulkarni','aditya.kulkarni03@gmail.com','Aditya@123','9876543203',NULL,'STUDENT','ACTIVE',NULL,NULL),(14,'Sneha Joshi','sneha.joshi04@gmail.com','Sneha@123','9876543204',NULL,'STUDENT','ACTIVE',NULL,NULL),(15,'Rahul Deshmukh','rahul.deshmukh05@gmail.com','Rahul@123','9876543205',NULL,'STUDENT','ACTIVE',NULL,NULL),(16,'Ananya More','ananya.more06@gmail.com','Ananya@123','9876543206',NULL,'STUDENT','ACTIVE',NULL,NULL),(17,'Karan Jadhav','karan.jadhav07@gmail.com','Karan@123','9876543207',NULL,'STUDENT','ACTIVE',NULL,NULL),(18,'Pooja Shinde','pooja.shinde08@gmail.com','Pooja@123','9876543208',NULL,'STUDENT','ACTIVE',NULL,NULL),(19,'Siddhant Pawar','siddhant.pawar09@gmail.com','Siddhant@123','9876543209',NULL,'STUDENT','ACTIVE',NULL,NULL),(20,'Neha Chavan','neha.chavan10@gmail.com','Neha@123','9876543210',NULL,'STUDENT','ACTIVE',NULL,NULL),(21,'Omkar Gaikwad','omkar.gaikwad11@gmail.com','Omkar@123','9876543211',NULL,'CLIENT','ACTIVE',NULL,NULL),(22,'Isha Bhosale','isha.bhosale12@gmail.com','Isha@123','9876543212',NULL,'CLIENT','ACTIVE',NULL,NULL),(23,'Yash Kshirsagar','yash.kshirsagar13@gmail.com','Yash@123','9876543213',NULL,'CLIENT','ACTIVE',NULL,NULL),(24,'Tanvi Sawant','tanvi.sawant14@gmail.com','Tanvi@123','9876543214',NULL,'CLIENT','ACTIVE',NULL,NULL),(25,'Akshay Wagh','akshay.wagh15@gmail.com','Akshay@123','9876543215',NULL,'CLIENT','ACTIVE',NULL,NULL),(26,'Meera Thakur','meera.thakur16@gmail.com','Meera@123','9876543216',NULL,'CLIENT','ACTIVE',NULL,NULL),(27,'Harsh Vaidya','harsh.vaidya17@gmail.com','Harsh@123','9876543217',NULL,'CLIENT','ACTIVE',NULL,NULL),(28,'Sakshi Raut','sakshi.raut18@gmail.com','Sakshi@123','9876543218',NULL,'CLIENT','ACTIVE',NULL,NULL),(29,'Nikhil Salunkhe','nikhil.salunkhe19@gmail.com','Nikhil@123','9876543219',NULL,'CLIENT','ACTIVE',NULL,NULL),(30,'Kavya Mahajan','kavya.mahajan20@gmail.com','Kavya@123','9876543220',NULL,'CLIENT','ACTIVE',NULL,NULL),(31,'Gayatri Vilas Kshirsagar','gayatri123@gmail.com','Gayatri@0802',NULL,NULL,'ADMIN','ACTIVE','2026-10-04 05:42:40',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `verification_documents`
--

DROP TABLE IF EXISTS `verification_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `verification_documents` (
  `document_id` int NOT NULL AUTO_INCREMENT,
  `student_id` int NOT NULL,
  `document_type` varchar(100) DEFAULT NULL,
  `document_url` varchar(500) DEFAULT NULL,
  `uploaded_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `verification_status` enum('PENDING','VERIFIED','REJECTED') DEFAULT 'PENDING',
  `verified_by` int DEFAULT NULL,
  `verified_at` datetime DEFAULT NULL,
  `rejection_reason` text,
  PRIMARY KEY (`document_id`),
  KEY `fk_documents_student` (`student_id`),
  KEY `fk_documents_admin` (`verified_by`),
  CONSTRAINT `fk_documents_admin` FOREIGN KEY (`verified_by`) REFERENCES `admins` (`admin_id`),
  CONSTRAINT `fk_documents_student` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `verification_documents`
--

LOCK TABLES `verification_documents` WRITE;
/*!40000 ALTER TABLE `verification_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `verification_documents` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-10-06  6:58:21
