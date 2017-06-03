-- MySQL dump 10.13  Distrib 5.5.53, for debian-linux-gnu (x86_64)
--
-- Host: 0.0.0.0    Database: c9
-- ------------------------------------------------------
-- Server version	5.5.53-0ubuntu0.14.04.1

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
-- Table structure for table `answer_control_task`
--

DROP TABLE IF EXISTS `answer_control_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `answer_control_task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `answer_task` varchar(50) NOT NULL,
  `control_question_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `answer_control_task_ad3eb958` (`control_question_id`),
  CONSTRAINT `answer_contr_control_question_id_ccf9b53a_fk_control_question_id` FOREIGN KEY (`control_question_id`) REFERENCES `control_question` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answer_control_task`
--

LOCK TABLES `answer_control_task` WRITE;
/*!40000 ALTER TABLE `answer_control_task` DISABLE KEYS */;
INSERT INTO `answer_control_task` VALUES (1,'1',1),(2,'2',2),(3,'3',3);
/*!40000 ALTER TABLE `answer_control_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `answer_test`
--

DROP TABLE IF EXISTS `answer_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `answer_test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `answer` varchar(50) NOT NULL,
  `true_false` tinyint(1) NOT NULL,
  `test_question_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `answer_test_63da2c9c` (`test_question_id`),
  CONSTRAINT `answer_test_test_question_id_ba3cd9bb_fk_test_question_id` FOREIGN KEY (`test_question_id`) REFERENCES `test_question` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answer_test`
--

LOCK TABLES `answer_test` WRITE;
/*!40000 ALTER TABLE `answer_test` DISABLE KEYS */;
INSERT INTO `answer_test` VALUES (1,'11',1,1),(2,'21',0,1),(3,'31',0,1),(4,'12',0,2),(5,'22',1,2),(6,'32',0,2),(7,'a',0,3),(8,'b',0,3),(9,'c',1,3);
/*!40000 ALTER TABLE `answer_test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attempts_control_task`
--

DROP TABLE IF EXISTS `attempts_control_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attempts_control_task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_task` datetime NOT NULL,
  `control_task_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `attempts_control_task_360b2bb4` (`control_task_id`),
  KEY `attempts_control_task_e8701ad4` (`user_id`),
  CONSTRAINT `attempts_control_task_user_id_4ddeefcc_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `attempts_control_tas_control_task_id_cec2368c_fk_control_task_id` FOREIGN KEY (`control_task_id`) REFERENCES `control_task` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attempts_control_task`
--

LOCK TABLES `attempts_control_task` WRITE;
/*!40000 ALTER TABLE `attempts_control_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `attempts_control_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attempts_task`
--

DROP TABLE IF EXISTS `attempts_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attempts_task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_task` datetime NOT NULL,
  `task_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `attempts_task_57746cc8` (`task_id`),
  KEY `attempts_task_e8701ad4` (`user_id`),
  CONSTRAINT `attempts_task_task_id_151a4d50_fk_task_id` FOREIGN KEY (`task_id`) REFERENCES `task` (`id`),
  CONSTRAINT `attempts_task_user_id_925d99e8_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attempts_task`
--

LOCK TABLES `attempts_task` WRITE;
/*!40000 ALTER TABLE `attempts_task` DISABLE KEYS */;
INSERT INTO `attempts_task` VALUES (6,'2017-03-20 21:05:37',1,1),(7,'2017-03-20 21:05:53',3,1);
/*!40000 ALTER TABLE `attempts_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attempts_test`
--

DROP TABLE IF EXISTS `attempts_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attempts_test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_task` datetime NOT NULL,
  `grade` int(11) NOT NULL,
  `test_task_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `attempts_test_b7ff4a23` (`test_task_id`),
  KEY `attempts_test_e8701ad4` (`user_id`),
  CONSTRAINT `attempts_test_test_task_id_0fcb7e82_fk_test_task_id` FOREIGN KEY (`test_task_id`) REFERENCES `test_task` (`id`),
  CONSTRAINT `attempts_test_user_id_9877b943_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attempts_test`
--

LOCK TABLES `attempts_test` WRITE;
/*!40000 ALTER TABLE `attempts_test` DISABLE KEYS */;
INSERT INTO `attempts_test` VALUES (3,'2017-03-21 12:03:15',50,1,1),(4,'2017-03-19 20:26:15',100,2,1);
/*!40000 ALTER TABLE `attempts_test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permissi_content_type_id_2f476e4b_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(22,'Can add Курс',8,'add_course'),(23,'Can change Курс',8,'change_course'),(24,'Can delete Курс',8,'delete_course'),(25,'Can add Задание',9,'add_task'),(26,'Can change Задание',9,'change_task'),(27,'Can delete Задание',9,'delete_task'),(28,'Can add Пройденное задание',10,'add_attempts_task'),(29,'Can change Пройденное задание',10,'change_attempts_task'),(30,'Can delete Пройденное задание',10,'delete_attempts_task'),(31,'Can add Тест',11,'add_test'),(32,'Can change Тест',11,'change_test'),(33,'Can delete Тест',11,'delete_test'),(34,'Can add Вопрос к тесту',12,'add_test_question'),(35,'Can change Вопрос к тесту',12,'change_test_question'),(36,'Can delete Вопрос к тесту',12,'delete_test_question'),(37,'Can add Ответ к тесту',13,'add_answer_test'),(38,'Can change Ответ к тесту',13,'change_answer_test'),(39,'Can delete Ответ к тесту',13,'delete_answer_test'),(40,'Can add Пройденный тест',14,'add_attempts_test'),(41,'Can change Пройденный тест',14,'change_attempts_test'),(42,'Can delete Пройденный тест',14,'delete_attempts_test'),(43,'Can add Тест',15,'add_test_task'),(44,'Can change Тест',15,'change_test_task'),(45,'Can delete Тест',15,'delete_test_task'),(46,'Can add Вопрос к тесту',16,'add_test_question'),(47,'Can change Вопрос к тесту',16,'change_test_question'),(48,'Can delete Вопрос к тесту',16,'delete_test_question'),(49,'Can add Ответ к тесту',17,'add_answer_test'),(50,'Can change Ответ к тесту',17,'change_answer_test'),(51,'Can delete Ответ к тесту',17,'delete_answer_test'),(52,'Can add Пройденный тест',18,'add_attempts_test'),(53,'Can change Пройденный тест',18,'change_attempts_test'),(54,'Can delete Пройденный тест',18,'delete_attempts_test'),(55,'Can add Контрольное задание',19,'add_control_task'),(56,'Can change Контрольное задание',19,'change_control_task'),(57,'Can delete Контрольное задание',19,'delete_control_task'),(58,'Can add Вопрос к контрольному зданию',20,'add_control_question'),(59,'Can change Вопрос к контрольному зданию',20,'change_control_question'),(60,'Can delete Вопрос к контрольному зданию',20,'delete_control_question'),(61,'Can add Ответ к контрольному зданию',21,'add_answer_control_task'),(62,'Can change Ответ к контрольному зданию',21,'change_answer_control_task'),(63,'Can delete Ответ к контрольному зданию',21,'delete_answer_control_task'),(64,'Can add Пройденное контрольное задание',22,'add_attempts_control_task'),(65,'Can change Пройденное контрольное задание',22,'change_attempts_control_task'),(66,'Can delete Пройденное контрольное задание',22,'delete_attempts_control_task');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$24000$mh5dZbpsIF3P$Hu7XhN6lf6O/4ZvhW1yTAPEjvEgZPpnlKgRLGV2Vp2k=','2017-03-20 09:06:52',1,'Lumiera','','','Lumiera@meta.ua',1,1,'2017-01-09 15:09:48'),(2,'pbkdf2_sha256$24000$kNjL9lnC37eu$DoVhrzGFDpgPLzP0QnkCtIuVmaCG3oMawgVvmxS5ueA=','2017-01-26 15:33:28',0,'premiun','','','premium@ex.ua',0,1,'2017-01-26 15:33:27'),(3,'pbkdf2_sha256$24000$SSKEmkqTUGtU$JPvkOwrJwdcOh8gHO3ZSXdC274bZb1zH1QOFoDYFnQY=','2017-02-03 10:26:57',0,'fgbhk','','','Lumi@meta.ua',0,1,'2017-02-03 10:26:57');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `control_question`
--

DROP TABLE IF EXISTS `control_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `control_question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `control_question` longtext NOT NULL,
  `step` int(11) NOT NULL,
  `control_task_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `control_question_360b2bb4` (`control_task_id`),
  CONSTRAINT `control_question_control_task_id_726a0c39_fk_control_task_id` FOREIGN KEY (`control_task_id`) REFERENCES `control_task` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `control_question`
--

LOCK TABLES `control_question` WRITE;
/*!40000 ALTER TABLE `control_question` DISABLE KEYS */;
INSERT INTO `control_question` VALUES (1,'вопрос 1?',1,1),(2,'Вопрос 2?',2,1),(3,'Вопрос 3?',3,1);
/*!40000 ALTER TABLE `control_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `control_task`
--

DROP TABLE IF EXISTS `control_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `control_task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` longtext NOT NULL,
  `theory` longtext NOT NULL,
  `course_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `control_task_course_id_4bae418f_fk_course_id` (`course_id`),
  CONSTRAINT `control_task_course_id_4bae418f_fk_course_id` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `control_task`
--

LOCK TABLES `control_task` WRITE;
/*!40000 ALTER TABLE `control_task` DISABLE KEYS */;
INSERT INTO `control_task` VALUES (1,'Контрольное задание','Сделай его!',1);
/*!40000 ALTER TABLE `control_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_name` varchar(200) NOT NULL,
  `details` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (1,'Курс 1','описание 2 курса описание 2 курса описание 2 курса описание 2 курса описание 2 курса описание 2 курса описание 2 курса описание 2 курса описание 2 курса описание 2 курса описание 2 курса описание 2 курса описание 2 курса описание 2 курса описание 2 курса описание 2 курса описание 2 курса описание 2 курса описание 2 курса описание 2 курса','course/static/images/128_vZSiAy8.png'),(2,'Курс 2','описание 2 курса описание 2 курса описание 2 курса описание 2 курса описание 2 курса описание 2 курса описание 2 курса описание 2 курса описание 2 курса описание 2 курса описание 2 курса описание 2 курса описание 2 курса описание 2 курса описание 2 курса описание 2 курса описание 2 курса описание 2 курса описание 2 курса описание 2 курса описание 2 курса описание 2 курса описание 2 курса описание 2 курса описание 2 курса описание 2 курса описание 2 курса описание 2 курса описание 2 курса описание 2 курса описание 2 курса описание 2 курса описание 2 курса описание 2 курса описание 2 курса','course/static/images/128_vi0et9G.png');
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2017-01-09 15:11:29','1','Курс 1',1,'Добавлено. Добавлен Задание \"задание 11\".',8,1),(2,'2017-01-09 15:12:03','1','контрольное задание 1',1,'Добавлено.',NULL,1),(3,'2017-01-09 19:03:33','2','Тест 1',1,'Добавлено. Добавлен Вопрос к тесту \"вопрос к тесту 11\".',NULL,1),(4,'2017-01-13 14:02:28','2','Курс 2',1,'Добавлено. Добавлен Задание \"задание 2\".',8,1),(5,'2017-01-13 14:02:53','1','Курс 1',2,'Изменен image и details.',8,1),(6,'2017-01-13 14:13:46','2','Курс 2',2,'Изменен image.',8,1),(7,'2017-01-13 14:14:10','1','Курс 1',2,'Изменен image.',8,1),(8,'2017-01-13 14:22:22','2','Курс 2',2,'Изменен image.',8,1),(9,'2017-01-18 13:01:30','1','Курс 1',2,'Изменены theory и task для Задание \"задание 11 задание 11задание 11задание 11задание 11задание 11задание 11задание 11\r\nзадание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11\r\nзадание 11задание 11задание 11задание 11задание 11задание 11\".',8,1),(10,'2017-01-18 13:09:30','1','Курс 1',2,'Изменены theory для Задание \"задание 11 задание 11задание 11задание 11задание 11задание 11задание 11задание 11\r\nзадание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11\r\nзадание 11задание 11задание 11задание 11задание 11задание 11\".',8,1),(11,'2017-01-18 13:10:47','1','Курс 1',2,'Изменены theory для Задание \"задание 11 задание 11задание 11задание 11задание 11задание 11задание 11задание 11\r\nзадание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11\r\nзадание 11задание 11задание 11задание 11задание 11задание 11\".',8,1),(12,'2017-01-25 09:05:14','1','Курс 1',2,'Изменены answer_task для Задание \"задание 11 задание 11задание 11задание 11задание 11задание 11задание 11задание 11\r\nзадание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11\r\nзадание 11задание 11задание 11задание 11задание 11задание 11\".',8,1),(13,'2017-02-06 11:31:56','1','Первый тест',1,'Добавлено. Добавлен Вопрос к тесту \"вопрос 11\". Добавлен Вопрос к тесту \"вопрос 2\". Добавлен Вопрос к тесту \"вопрос 3\".',11,1),(14,'2017-02-06 11:35:32','1','Первый тест',2,'Ни одно поле не изменено.',11,1),(15,'2017-02-06 12:56:31','1','Тест 1',1,'Добавлено. Добавлен Вопрос к тесту \"вопрос 1\".',15,1),(16,'2017-02-07 09:42:53','1','Тест 1',2,'Добавлен Вопрос к тесту \"вопрос 2 \'Test_question\' object is not iterable \'Test_question\' object is not iterable \'Test_question\' object is not iterable \'Test_question\' object is not iterable \'Test_question\' object is not iterable\".',15,1),(17,'2017-02-08 07:57:40','1','Тест 1',2,'Ни одно поле не изменено.',15,1),(18,'2017-02-11 12:59:25','3','Lumiera',3,'',18,1),(19,'2017-02-11 12:59:25','2','Lumiera',3,'',18,1),(20,'2017-02-12 15:19:47','2','Test',1,'Добавлено. Добавлен Вопрос к тесту \"v\".',15,1),(21,'2017-02-12 15:52:21','5','Lumiera',3,'',10,1),(22,'2017-02-12 15:52:21','4','Lumiera',3,'',10,1),(23,'2017-02-12 15:52:21','3','Lumiera',3,'',10,1),(24,'2017-02-12 15:52:21','2','Lumiera',3,'',10,1),(25,'2017-02-12 15:52:21','1','Lumiera',3,'',10,1),(26,'2017-02-12 15:53:00','2','Lumiera',3,'',18,1),(27,'2017-02-12 15:53:00','1','Lumiera',3,'',18,1),(28,'2017-02-12 16:01:41','1','Курс 1',2,'Добавлен Задание \"азазаза\".',8,1),(29,'2017-02-14 12:24:18','1','Курс 1',2,'Изменены title для Задание \"задание 11 задание 11задание 11задание 11задание 11задание 11задание 11задание 11\r\nзадание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11\r\nзадание 11задание 11задание 11задание 11задание 11задание 11\". Изменены title для Задание \"азазаза\".',8,1),(30,'2017-02-14 12:25:01','2','Курс 2',2,'Изменены title для Задание \"задание 2\".',8,1),(31,'2017-02-14 13:31:51','1','Контрольное задание',1,'Добавлено. Добавлен Вопрос к контрольному зданию \"вопрос 1?\". Добавлен Вопрос к контрольному зданию \"Вопрос 2?\". Добавлен Вопрос к контрольному зданию \"Вопрос 3?\".',19,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(21,'control_task','answer_control_task'),(22,'control_task','attempts_control_task'),(20,'control_task','control_question'),(19,'control_task','control_task'),(10,'course','attempts_task'),(8,'course','course'),(9,'course','task'),(6,'sessions','session'),(13,'tests','answer_test'),(14,'tests','attempts_test'),(11,'tests','test'),(12,'tests','test_question'),(17,'test_task','answer_test'),(18,'test_task','attempts_test'),(16,'test_task','test_question'),(15,'test_task','test_task');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2017-01-09 15:08:32'),(2,'auth','0001_initial','2017-01-09 15:08:32'),(3,'admin','0001_initial','2017-01-09 15:08:33'),(4,'admin','0002_logentry_remove_auto_add','2017-01-09 15:08:33'),(5,'contenttypes','0002_remove_content_type_name','2017-01-09 15:08:33'),(6,'auth','0002_alter_permission_name_max_length','2017-01-09 15:08:33'),(7,'auth','0003_alter_user_email_max_length','2017-01-09 15:08:33'),(8,'auth','0004_alter_user_username_opts','2017-01-09 15:08:33'),(9,'auth','0005_alter_user_last_login_null','2017-01-09 15:08:33'),(10,'auth','0006_require_contenttypes_0002','2017-01-09 15:08:33'),(11,'auth','0007_alter_validators_add_error_messages','2017-01-09 15:08:33'),(12,'sessions','0001_initial','2017-01-09 15:08:33'),(13,'course','0001_initial','2017-01-09 15:10:04'),(14,'course','0002_auto_20170113_1352','2017-01-13 13:52:54'),(15,'course','0003_auto_20170113_1400','2017-01-13 14:00:34'),(16,'course','0004_auto_20170113_1407','2017-01-13 14:07:53'),(17,'course','0005_auto_20170113_1409','2017-01-13 14:09:05'),(18,'course','0006_auto_20170113_1420','2017-01-13 14:20:13'),(19,'course','0007_auto_20170113_1422','2017-01-13 14:22:10'),(20,'course','0008_auto_20170126_0909','2017-01-26 09:10:26'),(21,'tests','0001_initial','2017-02-06 10:56:38'),(23,'test_task','0001_initial','2017-02-06 12:53:58'),(24,'course','0009_task_title','2017-02-14 12:23:26'),(25,'course','0010_auto_20170214_1227','2017-02-14 12:28:16'),(26,'control_task','0001_initial','2017-02-14 12:44:32');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('1on1nb168435djtgugnqfbvayiwmupkv','NjU5ZGNmMjAxZWM0OWI2MjlmNDhiYjM2OGNmNzcxZDQwOTdiODAyMTp7Il9hdXRoX3VzZXJfaGFzaCI6ImY2ZjEzNDZlOThmNWM4YzIwMjc2ODAyMDg2NjdkNjAzNTk4NGJiNzEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-04-03 09:06:52'),('2mftzip4we0iy0j2tazkm65lb9y37b3w','NjU5ZGNmMjAxZWM0OWI2MjlmNDhiYjM2OGNmNzcxZDQwOTdiODAyMTp7Il9hdXRoX3VzZXJfaGFzaCI6ImY2ZjEzNDZlOThmNWM4YzIwMjc2ODAyMDg2NjdkNjAzNTk4NGJiNzEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-02-27 10:04:12'),('5fc6b1cabwupv9l0jnjl078eols16r25','NjU5ZGNmMjAxZWM0OWI2MjlmNDhiYjM2OGNmNzcxZDQwOTdiODAyMTp7Il9hdXRoX3VzZXJfaGFzaCI6ImY2ZjEzNDZlOThmNWM4YzIwMjc2ODAyMDg2NjdkNjAzNTk4NGJiNzEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-02-14 11:21:53'),('d017g73skf1ozn4levr7cjf8dxxuoydf','NjU5ZGNmMjAxZWM0OWI2MjlmNDhiYjM2OGNmNzcxZDQwOTdiODAyMTp7Il9hdXRoX3VzZXJfaGFzaCI6ImY2ZjEzNDZlOThmNWM4YzIwMjc2ODAyMDg2NjdkNjAzNTk4NGJiNzEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-01-23 15:10:40'),('t9cxwhbq6qnouckv4iufgy0tddxed5a2','NjU5ZGNmMjAxZWM0OWI2MjlmNDhiYjM2OGNmNzcxZDQwOTdiODAyMTp7Il9hdXRoX3VzZXJfaGFzaCI6ImY2ZjEzNDZlOThmNWM4YzIwMjc2ODAyMDg2NjdkNjAzNTk4NGJiNzEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-02-08 09:04:37'),('uu4rxluuh4z11w0sgasxm932h0mjtxdm','NjU5ZGNmMjAxZWM0OWI2MjlmNDhiYjM2OGNmNzcxZDQwOTdiODAyMTp7Il9hdXRoX3VzZXJfaGFzaCI6ImY2ZjEzNDZlOThmNWM4YzIwMjc2ODAyMDg2NjdkNjAzNTk4NGJiNzEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-03-20 08:59:14');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task`
--

DROP TABLE IF EXISTS `task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `theory` longtext NOT NULL,
  `task` longtext NOT NULL,
  `answer_task` varchar(50) NOT NULL,
  `course_id` int(11) NOT NULL,
  `title` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `task_course_id_5559635f_fk_course_id` (`course_id`),
  CONSTRAINT `task_course_id_5559635f_fk_course_id` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task`
--

LOCK TABLES `task` WRITE;
/*!40000 ALTER TABLE `task` DISABLE KEYS */;
INSERT INTO `task` VALUES (1,'теория 1 теория 1 <br/>\r\nтеория 1теория 1теория 1теория 1теория 1теория 1теория 1теория 1\r\nтеория 1теория 1теория 1\r\nтеория 1теория 1теория 1теория 1теория 1теория 1теория 1теория 1теория 1теория 1теория 1теория 1теория 1теория 1теория 1теория 1теория 1теория 1теория 1теория 1теория 1теория 1теория 1теория 1теория 1теория 1теория 1теория 1теория 1теория 1теория 1теория 1теория 1теория 1теория 1теория 1теория 1теория 1теория 1теория 1теория 1теория 1теория 1\r\nтеория 1теория 1теория 1теория 1теория 1теория 1теория 1теория 1теория 1теория 1теория 1теория 1теория 1теория 1теория 1теория 1теория 1теория 1теория 1теория 1теория 1теория 1теория 1теория 1теория 1\r\nтеория 1теория 1теория 1теория 1теория 1теория 1теория 1теория 1теория 1теория 1теория 1теория 1теория 1теория 1теория 1теория 1теория 1теория 1теория 1теория 1теория 1теория 1теория 1теория 1теория 1теория 1теория 1теория 1теория 1теория 1теория 1теория 1теория 1\r\nтеория 1теория 1теория 1теория 1теория 1теория 1теория 1теория 1теория 1теория 1теория 1теория 1теория 1теория 1теория 1теория 1теория 1теория 1теория 1теория 1теория 1теория 1теория 1теория 1теория 1теория 1теория 1теория 1теория 1теория 1теория 1теория 1теория 1теория 1теория 1теория 1','задание 11 задание 11задание 11задание 11задание 11задание 11задание 11задание 11\r\nзадание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11\r\nзадание 11задание 11задание 11задание 11задание 11задание 11','о',1,'Задание 1'),(2,'Теория к курсу 2','задание 2','ответ 2',2,'задание 1'),(3,'ололоша','азазаза','1',1,'Задание 2');
/*!40000 ALTER TABLE `task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test_question`
--

DROP TABLE IF EXISTS `test_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test_question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_text` longtext NOT NULL,
  `test_task_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `test_question_b7ff4a23` (`test_task_id`),
  CONSTRAINT `test_question_test_task_id_e4c86e30_fk_test_task_id` FOREIGN KEY (`test_task_id`) REFERENCES `test_task` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_question`
--

LOCK TABLES `test_question` WRITE;
/*!40000 ALTER TABLE `test_question` DISABLE KEYS */;
INSERT INTO `test_question` VALUES (1,'вопрос 1',1),(2,'вопрос 2 \'Test_question\' object is not iterable \'Test_question\' object is not iterable \'Test_question\' object is not iterable \'Test_question\' object is not iterable \'Test_question\' object is not iterable',1),(3,'v',2);
/*!40000 ALTER TABLE `test_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test_task`
--

DROP TABLE IF EXISTS `test_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test_task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name_test` longtext NOT NULL,
  `course_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `test_task_course_id_f96913d1_fk_course_id` (`course_id`),
  CONSTRAINT `test_task_course_id_f96913d1_fk_course_id` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_task`
--

LOCK TABLES `test_task` WRITE;
/*!40000 ALTER TABLE `test_task` DISABLE KEYS */;
INSERT INTO `test_task` VALUES (1,'Тест 1',1),(2,'Test',2);
/*!40000 ALTER TABLE `test_task` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-03-27 19:08:39
