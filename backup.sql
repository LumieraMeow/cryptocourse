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
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answer_test`
--

LOCK TABLES `answer_test` WRITE;
/*!40000 ALTER TABLE `answer_test` DISABLE KEYS */;
INSERT INTO `answer_test` VALUES (1,'криптография',0,1),(2,'криптология',0,1),(3,'стеганография',1,1),(4,'преобразование',0,2),(5,'шифрование',0,2),(6,'дешифрование',1,2),(7,'простые и сложные',0,3),(8,'прямые и обратные',0,3),(9,'симметрические и ассиметрические',1,3),(10,'шифрование',0,1),(11,'искажение',0,2),(12,'пароль',0,4),(13,'шифратор',0,4),(14,'криптостойкость',1,4),(15,'идентификатор',0,4),(16,'4',0,5),(17,'5',1,5),(18,'7',0,5),(19,'3',0,5),(20,'радиан',0,6),(21,'пикник',0,6),(22,'отклик',0,6),(23,'рюкзак',1,6),(24,'тзузшсж',1,7),(25,'уифищтз',0,7),(26,'сжтжчрё',0,7),(27,'рёсёцпе',0,7),(28,'пжйндждъ',0,8),(29,'шптцмпмг',0,8),(30,'щручнрнд',1,8),(31,'эфчысфсз',0,8),(32,'шифр перестановки и шифр замены',0,3),(33,'применяется один и тот же криптографический ключ',1,9),(34,'применяются разные криптографические ключи',0,9),(35,'применяется не менее 2 ключей',0,9),(36,'ключи не применяются',0,9),(37,'2',1,10),(38,'3',0,10),(39,'4',0,10),(40,'не делятся на классы',0,10),(41,'стеганографии',0,11),(42,'подстановки',0,11),(43,'ассиметрической криптосистемы',0,11),(44,'перестановки',1,11),(45,'жалеть',0,12),(46,'желать',0,12),(47,'лежать',1,12),(48,'НИАЛПЬСЕ',0,13),(49,'ЕИАСПЛЬН',0,13),(50,'ПЕЬИСЛНА',0,13),(51,'НАЛПЬЕСИ',1,13),(52,'58427136',0,14),(53,'293871564',1,14),(54,'298547613',0,14),(55,'152783964',0,14),(56,'арутаивербба',0,15),(57,'верббаарутаи',0,15),(58,'ббавертаиару',1,15),(59,'иатурааббре',0,15),(60,'ТО_КЛРЕЕИЧТВ',1,16),(61,'_КИЧОЛЕТТРЕВ',0,16),(62,'ВТЧЕЕИКЛРТО_',0,16),(63,'ТО_РЛКЕЕИВТЧ',0,16),(64,'_Н__ДУДЗ__ОУБПО',0,17),(65,'УД_ДЗ__Н_БПОУО_',1,17),(66,'БПО_ОУДЗ__УД__Н_',0,17),(67,'____ОНДЗОП_УДУБ',0,17),(68,'гаммирование',1,18),(69,'перестановка',0,18),(70,'одноалфавитная подстановка',0,18),(71,'монофоническая подстановка',0,18),(72,'НОВОЕ ЗДАНИЕ',0,19),(73,'многоалфавитным',0,20),(74,'полиалфавитным',0,20),(75,'гаммированым',0,20),(76,'моноалфавитным',1,20),(77,'ИЛИ',0,21),(78,'ОТРИЦАНИЕ',0,21),(79,'исключающее ИЛИ',1,21),(80,'и',0,21),(81,'А И В',1,22),(82,'Г Б К',0,22),(83,'Ц С К',0,22),(84,'А З В',0,22),(85,'НЕЗАПОМИНАНИЕ',0,19),(86,'НЕБЛАГОЗВУЧИЕ',0,19),(87,'НОВОЕ ЗАДАНИЕ',1,19),(88,'0101',0,23),(89,'1100',0,23),(90,'1001',0,23),(91,'1010',1,23),(92,'Да, только если алфавиты замены совпадают.',0,24),(93,'Да, если их символы записаны в другом порядке.',1,24),(94,'Нет, только символы разных алфавитов',0,24),(95,'Симметрические',0,25),(96,'асимметрические',1,25),(97,'1',0,26),(98,'2',1,26),(99,'3',0,26),(100,'4',0,26),(101,'открытый',1,27),(102,'закрытый',0,27),(103,'открытый',0,28),(104,'закрытый',1,28),(105,'два натуральных числа',0,29),(106,'одно натуральное число',0,29),(107,'два простых числа',1,29),(108,'одно простое число',0,29),(109,'умножения P на Q',1,30),(110,'деления P на Q',0,30),(111,'сложения P и Q',0,30),(112,'возведения P в степень Q',0,30),(113,'ϕ( n ) = (p-1)/(q-1)',0,31),(114,'ϕ( n ) = (p+1)*(q+1)',0,31),(115,'ϕ( n ) = (p-1)*(q-1)',1,31),(116,'ϕ( n ) = (p+1)/(q+1)',0,31),(117,'больше ϕ(n) и взаимно простое с ϕ(n)',0,32),(118,'меньше ϕ(n) и взаимно простое с ϕ(n)',1,32),(119,'меньше n и взаимно простое с n',0,32),(120,'больше n и взаимно простое с n',0,32),(121,'е/d mod ϕ = 1',0,33),(122,'е*d mod ϕ = 0',0,33),(123,'е*d mod ϕ = 1',1,33),(124,'е*d mod n = 1',0,33),(125,'mi < N',1,34),(126,'mi > N',0,34),(127,'mi < e',0,34),(128,'mi < d',0,34),(129,'ci = (mi^d) mod ϕ',0,35),(130,'ci = (mi^е) mod ϕ',0,35),(131,'ci = (mi^е) mod N',1,35),(132,'ci = (mi^d) mod N',0,35),(133,'mi = (ci^d) mod N',1,36),(134,'mi = (ci^e) mod N',0,36),(135,'mi = (ci^d) mod ϕ',0,36),(136,'mi = (ci^e) mod ϕ',0,36);
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attempts_task`
--

LOCK TABLES `attempts_task` WRITE;
/*!40000 ALTER TABLE `attempts_task` DISABLE KEYS */;
INSERT INTO `attempts_task` VALUES (6,'2017-05-02 11:02:06',1,1),(7,'2017-04-24 17:08:09',3,1),(8,'2017-04-01 15:31:42',4,1),(9,'2017-05-08 14:53:47',1,4),(10,'2017-05-02 11:00:31',1,5),(11,'2017-05-04 14:43:16',18,5),(12,'2017-05-02 11:38:21',19,5),(13,'2017-05-02 11:38:54',20,5),(14,'2017-05-04 14:15:51',4,5),(15,'2017-05-04 14:16:52',5,5),(16,'2017-05-04 14:30:01',6,5),(17,'2017-05-04 14:31:41',7,5);
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attempts_test`
--

LOCK TABLES `attempts_test` WRITE;
/*!40000 ALTER TABLE `attempts_test` DISABLE KEYS */;
INSERT INTO `attempts_test` VALUES (6,'2017-04-26 16:45:21',42,1,1),(7,'2017-04-24 16:29:51',89,2,1),(8,'2017-04-24 16:30:05',63,3,1),(9,'2017-05-04 14:34:47',57,1,5);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$24000$mh5dZbpsIF3P$Hu7XhN6lf6O/4ZvhW1yTAPEjvEgZPpnlKgRLGV2Vp2k=','2017-05-31 20:15:33',1,'Lumiera','','','Lumiera@meta.ua',1,1,'2017-01-09 15:09:48'),(2,'pbkdf2_sha256$24000$kNjL9lnC37eu$DoVhrzGFDpgPLzP0QnkCtIuVmaCG3oMawgVvmxS5ueA=','2017-01-26 15:33:28',0,'premiun','','','premium@ex.ua',0,1,'2017-01-26 15:33:27'),(3,'pbkdf2_sha256$24000$SSKEmkqTUGtU$JPvkOwrJwdcOh8gHO3ZSXdC274bZb1zH1QOFoDYFnQY=','2017-02-03 10:26:57',0,'fgbhk','','','Lumi@meta.ua',0,1,'2017-02-03 10:26:57'),(4,'pbkdf2_sha256$24000$bGzbRMrroDiG$oiGsqHdaIiER4mHdOe9/ExfqURFOteVVXQTx4gi1bvU=','2017-05-08 14:53:07',0,'mike','','','mike@mike.com',0,1,'2017-04-24 14:46:28'),(5,'pbkdf2_sha256$24000$Nf10xNDN6pTY$aSr7QPJ3EhtwjEb8Ws9JFpwOcDVXvl7jn/+s3FfgOfI=','2017-05-02 11:00:22',0,'werjRU','','','a@werj.ru',0,1,'2017-05-02 10:50:41'),(6,'pbkdf2_sha256$24000$eDed5j2LPrfM$P/CqGB8BMfpEV71oUey0dprQeytbu19rvtDQ9DaD4vI=','2017-05-08 14:48:25',0,'Mike2','','','mike@mike.com',0,1,'2017-05-08 14:48:25');
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (1,'Основы','В данной лекции определяются предмет и задачи криптографии, формулируются основополагающие определения курса и требования к криптографическим системам защиты информации, дается историческая справка об основных этапах развития криптографии как науки. Также рассматривается пример простейшего шифра, на основе которого поясняются сформулированные понятия и тезисы.','course/static/images/Lorbeerkranz.png'),(2,'Симметрические криптосистемы. Шифры перестановок','Этот курс представляет собой обзор традиционных шифров перестановки с симметричным ключом, которые использовались в прошлом. Изучение принципов таких шифров готовит читателя к следующим лекциям, которые рассматривают современные симметричные шифры. Из нее вы узнаете о простых, маршрутных, вертикальных и некоторых других перестановках.','course/static/images/Shuffle-2-icon.png'),(3,'Симметрические криптосистемы. Шифры подстановок','В рамках этого курса будет рассматриваться еще одна разновидность симметрических криптосистем: шифры подстановки. Суть подобных методов заключается в замете одних символов другими. Шифры подстановки могут быть разбиты на две категории: моноалфавитные или многоалфавитные шифры.','course/static/images/icon_24074.png'),(4,'Асимметричные шифры. RSA','Разработка алгоритмов асимметричного шифрования является величайшим и, возможно, единственным действительно революционным достижением в истории криптографии. В этой лекции изложен наиболее известный криптографический алгоритм с открытым ключом: RSA. Вы научитесь генерировать ключи, а так же шифровать и расшифровывать данные.','course/static/images/key_exchange-512.png'),(5,'Блочные шифры. Генерация ключей S-DES','Одной из наиболее известных криптографических систем с закрытым ключом является DES – Data Encryption Standard. Эта система первой получила статус государственного стандарта в области шифрования данных. И хотя старый американский стандарт DES в настоящее время утратил свой официальный статус, этот алгоритм все же заслуживает внимания при изучении криптографии. В этой лекции объясняется, как создаются ключи для упрощенного учебного алгоритма S-DES.','course/static/images/data-management-interface-symbol-with-gears-and-binary-code-numbers_1.png'),(6,'Шифрование S-DES','Упрощенный DES (S-DES) разработан профессором Эдуардом Шаефером (Edward Schaefer) Университета Санта-Клары и является образовательным инструментом для помощи студентам при изучении структуры DES - для шифрования и дешифрования с использованием блочных шифров и ключей с небольшим количеством битов. Рассмотрим основы шифрования!','course/static/images/data-management-interface-symbol-with-gears-and-binary-code-numbers_xDPNXT4.png');
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
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2017-01-09 15:11:29','1','Курс 1',1,'Добавлено. Добавлен Задание \"задание 11\".',8,1),(2,'2017-01-09 15:12:03','1','контрольное задание 1',1,'Добавлено.',NULL,1),(3,'2017-01-09 19:03:33','2','Тест 1',1,'Добавлено. Добавлен Вопрос к тесту \"вопрос к тесту 11\".',NULL,1),(4,'2017-01-13 14:02:28','2','Курс 2',1,'Добавлено. Добавлен Задание \"задание 2\".',8,1),(5,'2017-01-13 14:02:53','1','Курс 1',2,'Изменен image и details.',8,1),(6,'2017-01-13 14:13:46','2','Курс 2',2,'Изменен image.',8,1),(7,'2017-01-13 14:14:10','1','Курс 1',2,'Изменен image.',8,1),(8,'2017-01-13 14:22:22','2','Курс 2',2,'Изменен image.',8,1),(9,'2017-01-18 13:01:30','1','Курс 1',2,'Изменены theory и task для Задание \"задание 11 задание 11задание 11задание 11задание 11задание 11задание 11задание 11\r\nзадание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11\r\nзадание 11задание 11задание 11задание 11задание 11задание 11\".',8,1),(10,'2017-01-18 13:09:30','1','Курс 1',2,'Изменены theory для Задание \"задание 11 задание 11задание 11задание 11задание 11задание 11задание 11задание 11\r\nзадание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11\r\nзадание 11задание 11задание 11задание 11задание 11задание 11\".',8,1),(11,'2017-01-18 13:10:47','1','Курс 1',2,'Изменены theory для Задание \"задание 11 задание 11задание 11задание 11задание 11задание 11задание 11задание 11\r\nзадание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11\r\nзадание 11задание 11задание 11задание 11задание 11задание 11\".',8,1),(12,'2017-01-25 09:05:14','1','Курс 1',2,'Изменены answer_task для Задание \"задание 11 задание 11задание 11задание 11задание 11задание 11задание 11задание 11\r\nзадание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11\r\nзадание 11задание 11задание 11задание 11задание 11задание 11\".',8,1),(13,'2017-02-06 11:31:56','1','Первый тест',1,'Добавлено. Добавлен Вопрос к тесту \"вопрос 11\". Добавлен Вопрос к тесту \"вопрос 2\". Добавлен Вопрос к тесту \"вопрос 3\".',11,1),(14,'2017-02-06 11:35:32','1','Первый тест',2,'Ни одно поле не изменено.',11,1),(15,'2017-02-06 12:56:31','1','Тест 1',1,'Добавлено. Добавлен Вопрос к тесту \"вопрос 1\".',15,1),(16,'2017-02-07 09:42:53','1','Тест 1',2,'Добавлен Вопрос к тесту \"вопрос 2 \'Test_question\' object is not iterable \'Test_question\' object is not iterable \'Test_question\' object is not iterable \'Test_question\' object is not iterable \'Test_question\' object is not iterable\".',15,1),(17,'2017-02-08 07:57:40','1','Тест 1',2,'Ни одно поле не изменено.',15,1),(18,'2017-02-11 12:59:25','3','Lumiera',3,'',18,1),(19,'2017-02-11 12:59:25','2','Lumiera',3,'',18,1),(20,'2017-02-12 15:19:47','2','Test',1,'Добавлено. Добавлен Вопрос к тесту \"v\".',15,1),(21,'2017-02-12 15:52:21','5','Lumiera',3,'',10,1),(22,'2017-02-12 15:52:21','4','Lumiera',3,'',10,1),(23,'2017-02-12 15:52:21','3','Lumiera',3,'',10,1),(24,'2017-02-12 15:52:21','2','Lumiera',3,'',10,1),(25,'2017-02-12 15:52:21','1','Lumiera',3,'',10,1),(26,'2017-02-12 15:53:00','2','Lumiera',3,'',18,1),(27,'2017-02-12 15:53:00','1','Lumiera',3,'',18,1),(28,'2017-02-12 16:01:41','1','Курс 1',2,'Добавлен Задание \"азазаза\".',8,1),(29,'2017-02-14 12:24:18','1','Курс 1',2,'Изменены title для Задание \"задание 11 задание 11задание 11задание 11задание 11задание 11задание 11задание 11\r\nзадание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11задание 11\r\nзадание 11задание 11задание 11задание 11задание 11задание 11\". Изменены title для Задание \"азазаза\".',8,1),(30,'2017-02-14 12:25:01','2','Курс 2',2,'Изменены title для Задание \"задание 2\".',8,1),(31,'2017-02-14 13:31:51','1','Контрольное задание',1,'Добавлено. Добавлен Вопрос к контрольному зданию \"вопрос 1?\". Добавлен Вопрос к контрольному зданию \"Вопрос 2?\". Добавлен Вопрос к контрольному зданию \"Вопрос 3?\".',19,1),(32,'2017-04-01 14:30:02','1','Основы',2,'Изменен course_name. Изменены title, theory, task и answer_task для Задание \"Как это работает?\".',8,1),(33,'2017-04-01 15:09:07','1','Основы',2,'Добавлен Задание \"Одноалфавитная замена\". Изменены title, theory, task и answer_task для Задание \"Методы защиты информации\".',8,1),(34,'2017-04-01 15:29:05','1','Основы',2,'Добавлен Задание \"Одноалфавитная замена\". Изменены title, theory, task и answer_task для Задание \"Шифр Цезаря\".',8,1),(35,'2017-04-01 15:38:40','1','Основы',2,'Добавлен Задание \"Одноалфавитная замена\". Изменены title, theory, task и answer_task для Задание \"Шифр Цезаря (расшифровка)\".',8,1),(36,'2017-04-01 15:51:32','1','Основы',2,'Добавлен Задание \"Одноалфавитная замена\". Изменены title, theory, task и answer_task для Задание \"Усовершенствуем шифр Цезаря\".',8,1),(37,'2017-04-03 11:26:23','1','Основы',2,'Изменен details.',8,1),(38,'2017-04-03 11:46:14','1','Тест. Основы криптографии',2,'Изменен name_test. Изменены question_text для Вопрос к тесту \"Как называется способ передачи или хранения информации с учётом сохранения в тайне самого факта такой передачи (хранения)?\".',15,1),(39,'2017-04-03 11:48:09','1','Тест. Основы криптографии',2,'Добавлен Вопрос к тесту \"Характеристика шифра, определяющая его стойкость к шифрованию без знания ключа, называется ...\". Изменены question_text для Вопрос к тесту \"Процесс, в ходе которого шифрованный текст преобразуется в исходный, называется ...\".',15,1),(40,'2017-04-03 11:55:02','1','Тест. Основы криптографии',2,'Добавлен Вопрос к тесту \"Определите ключи шифра, если известна следующая пара открытый текст – шифротекст (исходный алфавит: АБВГДЕЁЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯ):\r\nзатмение - мечсйтнй\".',15,1),(41,'2017-04-03 11:59:52','1','Тест. Основы криптографии',2,'Добавлен Вопрос к тесту \"Расшифруйте следующее сообщение, зашифрованное шифром Цезаря: убнкгн\".',15,1),(42,'2017-04-03 12:00:40','1','Тест. Основы криптографии',2,'Изменены question_text для Вопрос к тесту \"Расшифруйте следующее сообщение, зашифрованное шифром Цезаря, если известно, что исходные сообщения составлены из алфавита АБВГДЕЁЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯ: \r\nубнкгн\".',15,1),(43,'2017-04-03 12:02:51','1','Тест. Основы криптографии',2,'Добавлен Вопрос к тесту \"Расшифруйте следующий текст шифром Цезаря, если известно, что исходные сообщения составлены из алфавита АБВГДЕЁЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯ: \r\nпереход\".',15,1),(44,'2017-04-03 12:09:29','1','Тест. Основы криптографии',2,'Добавлен Вопрос к тесту \"Расшифруйте следующий текст шифром Цезаря, используя ключ k = 5. Исходные сообщения составлены из алфавита АБВГДЕЁЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯ: \r\nфлотилия\".',15,1),(45,'2017-04-03 12:42:47','1','Основы криптографии',2,'Изменен name_test.',15,1),(46,'2017-04-04 08:23:29','1','Основы криптографии',2,'Изменены question_text для Вопрос к тесту \"Расшифруйте следующее сообщение \"убнкгн\", зашифрованное шифром Цезаря, используя соответствия: \r\nА Б В Г Д Е Ё Ж З И Й К Л М Н О П Р С Т У Ф Х Ц Ч Ш Щ Ъ Ы Ь Э Ю Я\r\nГ Д Е Ё Ж З И Й К Л М Н О П Р С Т У Ф Х Ц Ч Ш Щ Ъ Ы Ь Э Ю Я А Б В\".',15,1),(47,'2017-04-04 08:24:38','1','Основы криптографии',2,'Изменены question_text для Вопрос к тесту \"Засшифруйте следующий текст шифром Цезаря, если известно, что исходные сообщения составлены из алфавита АБВГДЕЁЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯ: \r\nпереход\".',15,1),(48,'2017-04-04 08:52:50','2','Симметрические криптосистемы. Шифры подстановок и перестановок',2,'Изменен course_name. Изменены title, theory, task и answer_task для Задание \"Простые перестановки\".',8,1),(49,'2017-04-04 08:59:08','2','Симметрические криптосистемы. Шифры подстановок и перестановок',2,'Добавлен Задание \"Простые перестановки. Дешифровка\".',8,1),(50,'2017-04-04 09:07:06','2','Симметрические криптосистемы. Шифры подстановок и перестановок',2,'Добавлен Задание \"Шифр блочной одинарной перестановки\".',8,1),(51,'2017-04-04 09:33:44','2','Симметрические криптосистемы. Шифры подстановок и перестановок',2,'Ни одно поле не изменено.',8,1),(52,'2017-04-04 09:45:40','2','Симметрические криптосистемы. Шифры подстановок и перестановок',2,'Добавлен Задание \"Маршрутные перестановки\".',8,1),(53,'2017-04-04 11:43:28','2','Симметрические криптосистемы. Шифры подстановок и перестановок',2,'Добавлен Задание \"Вертикальная перестановка\".',8,1),(54,'2017-04-04 12:00:29','2','Симметрические криптосистемы',2,'Изменен name_test. Добавлен Вопрос к тесту \"Симметрическими криптосистемами называется  способ шифрования, в котором для шифрования и расшифровывания  ...\". Изменены question_text для Вопрос к тесту \"На какие два класса делятся все шифры?\".',15,1),(55,'2017-04-04 12:03:22','2','Симметрические криптосистемы',2,'Добавлен Вопрос к тесту \"На сколько классов делятся все симметричные шифры?\".',15,1),(56,'2017-04-04 12:04:34','2','Симметрические криптосистемы',2,'Добавлен Вопрос к тесту \"Анаграмма является честным случаем\".',15,1),(57,'2017-04-04 13:07:30','2','Симметрические криптосистемы',2,'Ни одно поле не изменено.',15,1),(58,'2017-04-04 13:11:55','2','Симметрические криптосистемы',2,'Добавлен Вопрос к тесту \"Расшифруйте сообщение \"аежлть\" методом простой перестановки, используя ключ 423156.\".',15,1),(59,'2017-04-04 13:14:39','2','Симметрические криптосистемы',2,'Добавлен Вопрос к тесту \"Зашифруйте сообщение \"апельсин\" методом простой подстановки, используя ключ 24635781.\".',15,1),(60,'2017-04-04 13:19:26','2','Симметрические криптосистемы',2,'Добавлен Вопрос к тесту \"Какой ключ использовался для шифрования сообщения \"фестиваль\", если нам известно что в результате получился шифр \"ВФСЬАЛИТЕ\".\".',15,1),(61,'2017-04-04 13:24:12','2','Симметрические криптосистемы',2,'Добавлен Вопрос к тесту \"Зашифруйте слово \"абб рев иат ура\", используя блочную перестановку:\r\n1 2 3  \r\n3 2 1\".',15,1),(62,'2017-04-04 13:37:00','2','Симметрические криптосистемы',2,'Добавлен Вопрос к тесту \"Зашифруйте сообщение \"ВЕРТОЛЕТЧИК\" методом маршрутной перестановки, используя таблицу 4х3:\r\nВ Е Р Т\r\nТ Е Л О\r\nЧ И К _\".',15,1),(63,'2017-04-04 13:46:21','2','Симметрические криптосистемы',2,'Добавлен Вопрос к тесту \"Зашифруйте сообщение \"БУДУ_ПОЗДНО\" методом вертикальной перестановки, используя таблицу 4х3 и ключ 4 3 5 1 2:\r\nБ У Д У _\r\nП О З Д Н\r\nО _ _ _ _\".',15,1),(64,'2017-04-04 13:46:45','2','Методы перестановки',2,'Изменен name_test.',15,1),(65,'2017-04-04 13:48:13','2','Симметрические криптосистемы. Шифры перестановок',2,'Изменен course_name.',8,1),(66,'2017-04-04 13:51:27','3','Симметрические криптосистемы. Шифры подстановок',1,'Добавлено.',8,1),(67,'2017-04-04 14:09:40','3','Симметрические криптосистемы. Шифры подстановок',2,'Добавлен Задание \"Шифры замены\".',8,1),(68,'2017-04-04 14:18:21','3','Симметрические криптосистемы. Шифры подстановок',2,'Добавлен Задание \"Моноалфавитные подстановки\".',8,1),(69,'2017-04-04 14:25:58','3','Симметрические криптосистемы. Шифры подстановок',2,'Добавлен Задание \"Построение обратной таблицы подстановок\".',8,1),(70,'2017-04-04 14:32:03','3','Симметрические криптосистемы. Шифры подстановок',2,'Добавлен Задание \"Расшифровка одноалфавитной подстановки\". Изменены theory, task и answer_task для Задание \"Построение обратной таблицы подстановок\".',8,1),(71,'2017-04-04 14:37:06','3','Симметрические криптосистемы. Шифры подстановок',2,'Изменены theory для Задание \"Моноалфавитные подстановки\".',8,1),(72,'2017-04-04 14:51:38','3','Симметрические криптосистемы. Шифры подстановок',2,'Добавлен Задание \"Методы гаммирования\".',8,1),(73,'2017-04-04 14:53:17','3','Симметрические криптосистемы. Шифры подстановок',2,'Изменены task и answer_task для Задание \"Методы гаммирования\".',8,1),(74,'2017-04-04 15:11:02','3','Шифры подстановок',1,'Добавлено. Добавлен Вопрос к тесту \"Как называется способ шифрования, в котором шифрование выполняется путем сложения символов исходного текста и ключа по модулю, равному числу букв в алфавите?\".',15,1),(75,'2017-04-04 15:21:07','3','Шифры подстановок',2,'Добавлен Вопрос к тесту \"Расшифруйте сообщение \"ФЫЦЫЕЮГ_К_ФШЕ\" используя таблицу:\r\n\r\nа б в г д е ж з и й к л м н о п р с т у ф х ц ч ш щ ъ ы ь э ю я _ \r\nр я п з х е ц к ь б д ф ы ж у с т ъ э г н л в щ и й м о ю ч  _ ш а \r\n\r\n Ответ запишите прописными русскими буквами. Если ответ состоит из нескольких слов, запишите его с пробелами.\".',15,1),(76,'2017-04-04 15:29:01','3','Шифры подстановок',2,'Добавлен Вопрос к тесту \"Шифр, при котором каждый символ открытого текста заменяется на некоторый, фиксированный при данном ключе символ того же алфавита называется ...\".',15,1),(77,'2017-04-04 15:31:19','3','Шифры подстановок',2,'Добавлен Вопрос к тесту \"Метод гаммирования эквивалентен битовойоперации ...\".',15,1),(78,'2017-04-04 15:36:24','3','Симметрические криптосистемы. Шифры подстановок',2,'Добавлен Задание \"Двоичное гаммирование\". Изменены theory, task и answer_task для Задание \"Методы гаммирования\".',8,1),(79,'2017-04-04 15:36:43','3','Симметрические криптосистемы. Шифры подстановок',2,'Изменены task для Задание \"Методы гаммирования\".',8,1),(80,'2017-04-04 15:39:27','3','Шифры подстановок',2,'Добавлен Вопрос к тесту \"Зашифруйте последовательность \"Э Е Я\" по ключу \"Г\".\r\nВведите ответ заглавными буквами через пробел.\".',15,1),(81,'2017-04-04 15:42:23','3','Шифры подстановок',2,'Ни одно поле не изменено.',15,1),(82,'2017-04-04 15:44:48','3','Шифры подстановок',2,'Добавлен Вопрос к тесту \"Зашифруйте число 15 метожом двоичного гаммирования по ключу 5. Введите ответ в двоичой форме.\".',15,1),(83,'2017-04-04 15:46:14','3','Симметрические криптосистемы. Шифры подстановок',2,'Изменены theory для Задание \"Методы гаммирования\".',8,1),(84,'2017-04-04 15:49:43','3','Шифры подстановок',2,'Добавлен Вопрос к тесту \"Могут ли многоалфавитные подстановки для  замены символов исходного текста использовать алфавиты для замены образованные из символов исходного алфавита?\".',15,1),(85,'2017-04-05 13:08:46','4','Асимметричные шифры. RSA',1,'Добавлено. Добавлен Задание \"Асимметричное шифрование\".',8,1),(86,'2017-04-05 13:32:07','4','Асимметричные шифры. RSA',2,'Добавлен Задание \"Алгоритм RSA\".',8,1),(87,'2017-04-05 13:39:50','4','Асимметричные шифры. RSA',2,'Добавлен Задание \"Генерация ключей. Функция Эйлера.\".',8,1),(88,'2017-04-05 13:50:10','4','Асимметричные шифры. RSA',2,'Добавлен Задание \"Закрытый ключ\".',8,1),(89,'2017-04-05 14:00:55','4','Асимметричные шифры. RSA',2,'Добавлен Задание \"Открытый ключ\".',8,1),(90,'2017-04-05 14:04:42','4','Асимметричные шифры. RSA',2,'Изменены theory для Задание \"Открытый ключ\".',8,1),(91,'2017-04-05 14:23:32','4','Асимметричные шифры. RSA',2,'Добавлен Задание \"Шифрование\".',8,1),(92,'2017-04-05 15:03:44','4','Асимметричные шифры. RSA',2,'Добавлен Задание \"Шифрование\". Изменены title для Задание \"Цифровая форма сообщения\".',8,1),(93,'2017-04-05 15:09:23','4','Асимметричные шифры. RSA',2,'Добавлен Задание \"Расшифровка сообщения\".',8,1),(94,'2017-04-05 15:16:11','4','Асимметричные шифры. RSA',2,'Добавлен Задание \"Текстовая форма сообщения\".',8,1),(95,'2017-04-05 15:16:51','4','Асимметричные шифры. RSA',2,'Изменены theory для Задание \"Текстовая форма сообщения\".',8,1),(96,'2017-04-10 08:08:13','4','RSA',1,'Добавлено. Добавлен Вопрос к тесту \"К каким криптографическим системам относится криптосистема RSA?\". Добавлен Вопрос к тесту \"Сколько ключей использует криптосистема RSA?\". Добавлен Вопрос к тесту \"Какой ключ для шифрования сообщения использует RSA?\".',15,1),(97,'2017-04-10 08:08:57','4','RSA',2,'Добавлен Вопрос к тесту \"Какой ключ для расшифровки сообщения использует RSA?\".',15,1),(98,'2017-04-10 08:10:40','4','RSA',2,'Добавлен Вопрос к тесту \"На первом этапе генерации ключей выбираются ...\".',15,1),(99,'2017-04-10 08:12:03','4','RSA',2,'Добавлен Вопрос к тесту \"Число N находится путем\".',15,1),(100,'2017-04-10 08:13:21','4','RSA',2,'Добавлен Вопрос к тесту \"Функция Эйлера находится по формуле:\".',15,1),(101,'2017-04-10 08:17:04','4','RSA',2,'Добавлен Вопрос к тесту \"Компонент закрытого ключа число d должно быть...\".',15,1),(102,'2017-04-10 08:20:01','4','RSA',2,'Добавлен Вопрос к тесту \"Компонент открытого ключа число е должно условию ...\".',15,1),(103,'2017-04-10 08:25:56','4','RSA',2,'Добавлен Вопрос к тесту \"Чтобы зашифровать сообщение, его нужно разбить на блоки.\r\nКаждый блок должен удовлетворять условию ...\".',15,1),(104,'2017-04-10 08:29:55','4','RSA',2,'Добавлен Вопрос к тесту \"Какая из приведенных формул используется для шифрования сообщения?\".',15,1),(105,'2017-04-10 08:31:03','4','RSA',2,'Добавлен Вопрос к тесту \"Какая из приведенных формул используется для расшифровки сообщения?\".',15,1),(106,'2017-04-10 08:31:10','4','Асимметричные шифры. RSA',2,'Ни одно поле не изменено.',8,1),(107,'2017-04-10 08:34:29','5','Блочные шифры. Генерация ключей S-DES',1,'Добавлено.',8,1),(108,'2017-04-10 08:35:03','6','Шифрование S-DES',1,'Добавлено.',8,1),(109,'2017-04-10 09:05:21','5','Блочные шифры. Генерация ключей S-DES',2,'Добавлен Задание \"Что такое блочный шифр?\".',8,1),(110,'2017-04-10 09:35:47','5','Блочные шифры. Генерация ключей S-DES',2,'Добавлен Задание \"Введение в S-DES\".',8,1),(111,'2017-04-10 09:51:25','5','Блочные шифры. Генерация ключей S-DES',2,'Добавлен Задание \"Циклический сдвиг\".',8,1),(112,'2017-04-10 09:51:49','5','Блочные шифры. Генерация ключей S-DES',2,'Изменены theory для Задание \"Циклический сдвиг\".',8,1),(113,'2017-04-10 09:56:36','5','Блочные шифры. Генерация ключей S-DES',2,'Добавлен Задание \"Раунд 1. Перестановка сжатия.\". Изменены title для Задание \"Раунд 1. Циклический сдвиг\".',8,1),(114,'2017-04-10 10:04:52','5','Блочные шифры. Генерация ключей S-DES',2,'Добавлен Задание \"Раунд 2. Циклический сдвиг LS-2\". Изменены title для Задание \"Раунд 1. Циклический сдвиг LS-1\".',8,1),(115,'2017-04-10 10:07:18','5','Блочные шифры. Генерация ключей S-DES',2,'Добавлен Задание \"Раунд 1. Перестановка сжатия.\".',8,1),(116,'2017-04-10 10:07:27','5','Блочные шифры. Генерация ключей S-DES',2,'Изменены task для Задание \"Раунд 1. Перестановка сжатия.\".',8,1),(117,'2017-04-10 10:07:57','5','Блочные шифры. Генерация ключей S-DES',2,'Изменены title для Задание \"Раунд 2. Перестановка сжатия.\".',8,1),(118,'2017-04-10 11:12:19','6','Шифрование S-DES',2,'Добавлен Задание \"Введение в шифрование\".',8,1),(119,'2017-04-10 11:15:46','6','Шифрование S-DES',2,'Добавлен Задание \"Раунд 1. Перестановка с расширением E/P\".',8,1),(120,'2017-04-10 11:18:48','6','Шифрование S-DES',2,'Добавлен Задание \"Раунд 1. Сложение с подключом К1.\".',8,1),(121,'2017-04-24 16:28:23','5','Lumiera',3,'',18,1),(122,'2017-04-24 16:28:24','4','Lumiera',3,'',18,1),(123,'2017-04-24 16:28:24','3','Lumiera',3,'',18,1),(124,'2017-04-24 16:29:11','6','Lumiera',1,'Добавлено.',18,1),(125,'2017-04-24 16:29:26','7','Lumiera',1,'Добавлено.',18,1),(126,'2017-04-24 16:29:39','8','Lumiera',1,'Добавлено.',18,1),(127,'2017-04-24 16:58:10','11','Lumiera',1,'Добавлено.',10,1),(128,'2017-04-25 09:20:08','1','Основы',2,'Изменены theory для Задание \"Как это работает?\".',8,1),(129,'2017-04-25 09:20:48','1','Основы',2,'Изменены theory для Задание \"Как это работает?\".',8,1),(130,'2017-04-25 11:38:16','11','Lumiera',3,'',10,1),(131,'2017-04-25 11:38:30','10','mike',3,'',10,1),(132,'2017-05-02 09:29:53','5','Блочные шифры. Генерация ключей S-DES',2,'Изменен image.',8,1),(133,'2017-05-02 09:30:17','4','Асимметричные шифры. RSA',2,'Изменен image.',8,1),(134,'2017-05-02 09:30:36','3','Симметрические криптосистемы. Шифры подстановок',2,'Изменен image.',8,1),(135,'2017-05-02 09:30:51','2','Симметрические криптосистемы. Шифры перестановок',2,'Изменен image.',8,1),(136,'2017-05-02 09:31:03','1','Основы',2,'Изменен image.',8,1),(137,'2017-05-02 09:44:13','6','Шифрование S-DES',2,'Изменен image.',8,1),(138,'2017-05-02 09:46:14','2','Симметрические криптосистемы. Шифры перестановок',2,'Изменен details.',8,1),(139,'2017-05-02 09:47:12','2','Симметрические криптосистемы. Шифры перестановок',2,'Изменен details.',8,1),(140,'2017-05-02 09:49:37','3','Симметрические криптосистемы. Шифры подстановок',2,'Изменен details.',8,1),(141,'2017-05-02 09:53:20','4','Асимметричные шифры. RSA',2,'Изменен details.',8,1),(142,'2017-05-02 09:55:47','5','Блочные шифры. Генерация ключей S-DES',2,'Изменен details.',8,1),(143,'2017-05-02 09:56:28','6','Шифрование S-DES',2,'Изменен details.',8,1),(144,'2017-05-08 14:53:06','19','Mike2',3,'',10,1),(145,'2017-05-08 14:53:14','18','Mike2',3,'',10,1);
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
INSERT INTO `django_session` VALUES ('0yfa77covttwjtnxs6fxmcmet6trh7y9','NjU5ZGNmMjAxZWM0OWI2MjlmNDhiYjM2OGNmNzcxZDQwOTdiODAyMTp7Il9hdXRoX3VzZXJfaGFzaCI6ImY2ZjEzNDZlOThmNWM4YzIwMjc2ODAyMDg2NjdkNjAzNTk4NGJiNzEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-06-14 20:15:33'),('1m083uxciv7biu2wq8lwoz787uwgf2oe','NjU5ZGNmMjAxZWM0OWI2MjlmNDhiYjM2OGNmNzcxZDQwOTdiODAyMTp7Il9hdXRoX3VzZXJfaGFzaCI6ImY2ZjEzNDZlOThmNWM4YzIwMjc2ODAyMDg2NjdkNjAzNTk4NGJiNzEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-05-22 13:31:19'),('1on1nb168435djtgugnqfbvayiwmupkv','NjU5ZGNmMjAxZWM0OWI2MjlmNDhiYjM2OGNmNzcxZDQwOTdiODAyMTp7Il9hdXRoX3VzZXJfaGFzaCI6ImY2ZjEzNDZlOThmNWM4YzIwMjc2ODAyMDg2NjdkNjAzNTk4NGJiNzEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-04-03 09:06:52'),('2mftzip4we0iy0j2tazkm65lb9y37b3w','NjU5ZGNmMjAxZWM0OWI2MjlmNDhiYjM2OGNmNzcxZDQwOTdiODAyMTp7Il9hdXRoX3VzZXJfaGFzaCI6ImY2ZjEzNDZlOThmNWM4YzIwMjc2ODAyMDg2NjdkNjAzNTk4NGJiNzEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-02-27 10:04:12'),('3c6eqzzuwkm2wxuw0019o6ns4c22te9m','NjU5ZGNmMjAxZWM0OWI2MjlmNDhiYjM2OGNmNzcxZDQwOTdiODAyMTp7Il9hdXRoX3VzZXJfaGFzaCI6ImY2ZjEzNDZlOThmNWM4YzIwMjc2ODAyMDg2NjdkNjAzNTk4NGJiNzEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-04-17 13:49:28'),('5fc6b1cabwupv9l0jnjl078eols16r25','NjU5ZGNmMjAxZWM0OWI2MjlmNDhiYjM2OGNmNzcxZDQwOTdiODAyMTp7Il9hdXRoX3VzZXJfaGFzaCI6ImY2ZjEzNDZlOThmNWM4YzIwMjc2ODAyMDg2NjdkNjAzNTk4NGJiNzEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-02-14 11:21:53'),('6sd4leptg625lo73wz9146qu8rmr4hzh','NjU5ZGNmMjAxZWM0OWI2MjlmNDhiYjM2OGNmNzcxZDQwOTdiODAyMTp7Il9hdXRoX3VzZXJfaGFzaCI6ImY2ZjEzNDZlOThmNWM4YzIwMjc2ODAyMDg2NjdkNjAzNTk4NGJiNzEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-05-09 17:21:21'),('74r57t1qilefh98juy8mclbwuhi3z1tu','NjU5ZGNmMjAxZWM0OWI2MjlmNDhiYjM2OGNmNzcxZDQwOTdiODAyMTp7Il9hdXRoX3VzZXJfaGFzaCI6ImY2ZjEzNDZlOThmNWM4YzIwMjc2ODAyMDg2NjdkNjAzNTk4NGJiNzEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-05-09 17:16:49'),('akf3ubco2z4x425iwtzao3t6sub393kw','ZmFhMjhmZDgxNDk3M2NiMDY4NjZiNDYwZGM3ZTYyNzk2OGM3ODQ5NDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJjMWM1ZjFjZmQwOTEzYmRmOGMzZjA5NzIwMTdmODY5NGE3NWVlNzYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI1In0=','2017-05-16 10:57:05'),('d017g73skf1ozn4levr7cjf8dxxuoydf','NjU5ZGNmMjAxZWM0OWI2MjlmNDhiYjM2OGNmNzcxZDQwOTdiODAyMTp7Il9hdXRoX3VzZXJfaGFzaCI6ImY2ZjEzNDZlOThmNWM4YzIwMjc2ODAyMDg2NjdkNjAzNTk4NGJiNzEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-01-23 15:10:40'),('ib6ysi4935uyw1s56967kh18ciuwzh1g','NjU5ZGNmMjAxZWM0OWI2MjlmNDhiYjM2OGNmNzcxZDQwOTdiODAyMTp7Il9hdXRoX3VzZXJfaGFzaCI6ImY2ZjEzNDZlOThmNWM4YzIwMjc2ODAyMDg2NjdkNjAzNTk4NGJiNzEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-05-09 08:24:18'),('k33fq68fe4an416y7p5ztyrc94z3daxu','NjU5ZGNmMjAxZWM0OWI2MjlmNDhiYjM2OGNmNzcxZDQwOTdiODAyMTp7Il9hdXRoX3VzZXJfaGFzaCI6ImY2ZjEzNDZlOThmNWM4YzIwMjc2ODAyMDg2NjdkNjAzNTk4NGJiNzEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-05-09 17:06:32'),('mab1y3j5nxoyj65taf0m9562724be2me','NjU5ZGNmMjAxZWM0OWI2MjlmNDhiYjM2OGNmNzcxZDQwOTdiODAyMTp7Il9hdXRoX3VzZXJfaGFzaCI6ImY2ZjEzNDZlOThmNWM4YzIwMjc2ODAyMDg2NjdkNjAzNTk4NGJiNzEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-04-17 11:24:25'),('nrbw2bkr3s4cfl8b875e831ji1jk2437','OTUwMGMxOTk5MjgzYjVjMDBmMzA0ZDA0YjNlZTBlYzRkMWMwMzBkYzp7Il9hdXRoX3VzZXJfaGFzaCI6IjNhYzgwNmQ3NDExOTQ0YTJjOTY3YmRiZjAzN2MwN2FkZjhkMmFiNzkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI0In0=','2017-05-22 14:53:07'),('t9cxwhbq6qnouckv4iufgy0tddxed5a2','NjU5ZGNmMjAxZWM0OWI2MjlmNDhiYjM2OGNmNzcxZDQwOTdiODAyMTp7Il9hdXRoX3VzZXJfaGFzaCI6ImY2ZjEzNDZlOThmNWM4YzIwMjc2ODAyMDg2NjdkNjAzNTk4NGJiNzEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-02-08 09:04:37'),('u18wdgndbrubklqfrrmriwq2d9weo2w6','OTUwMGMxOTk5MjgzYjVjMDBmMzA0ZDA0YjNlZTBlYzRkMWMwMzBkYzp7Il9hdXRoX3VzZXJfaGFzaCI6IjNhYzgwNmQ3NDExOTQ0YTJjOTY3YmRiZjAzN2MwN2FkZjhkMmFiNzkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI0In0=','2017-05-08 14:46:28'),('uu4rxluuh4z11w0sgasxm932h0mjtxdm','NjU5ZGNmMjAxZWM0OWI2MjlmNDhiYjM2OGNmNzcxZDQwOTdiODAyMTp7Il9hdXRoX3VzZXJfaGFzaCI6ImY2ZjEzNDZlOThmNWM4YzIwMjc2ODAyMDg2NjdkNjAzNTk4NGJiNzEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-03-20 08:59:14'),('wybdnc66z5zvoiezeu8i7trcvh8fd8s2','ZmFhMjhmZDgxNDk3M2NiMDY4NjZiNDYwZGM3ZTYyNzk2OGM3ODQ5NDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJjMWM1ZjFjZmQwOTEzYmRmOGMzZjA5NzIwMTdmODY5NGE3NWVlNzYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI1In0=','2017-05-16 11:00:22');
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task`
--

LOCK TABLES `task` WRITE;
/*!40000 ALTER TABLE `task` DISABLE KEYS */;
INSERT INTO `task` VALUES (1,'Перед тем, как приступить к изучению основ криптографии, мы расскажем вам как устроены курсы.\r\n\r\n   Каждый курс содержит задания. Для их прохождения необходимо ознакомиться с теоретическим материалом, расположенным в правой части страницы. Затем внимательно прочтите задание, выполните его и введите ответ. Если Вы выполнили задание правильно, переходите к следующему заданию.\r\n\r\n   После изучения теоретического материала Вы сможете пройти тест. Результаты тестов и количество пройденных заданий можно найти на странице пользователя.\r\n\r\n   Ну что, приступим?','Ознакомились с теорией? \r\nВведите в поле ответа текст \"Да!\" и нажмите кнопку Далее.','Да!',1,'Как это работает?'),(2,'Все шифры делятся на два больших класса симметричные (или с секретным ключом) и асимметричные (или с открытым ключом). В этом курсе мы рассмотрим симметричные методы.\r\n В симметричных шифрах для шифрования и дешифрования используется один и тот же секретный ключ. Достоинствами симметричных шифров являются высокое быстродействие и простота. Основной их недостаток то, что ключ должен быть известен и отправителю, и получателю. Это существенно усложняет процедуру распределения ключей между пользователями. По существу, для использования открытых шифров должен быть предусмотрен физически защищенный канал передачи ключей. Все симметричные шифры, в свою очередь, могут быть представлены двумя классами перестановкой и подстановкой.\r\n Что же такое перестановка? \r\n Перестановка представляет собой способ шифрования, при котором для получения шифрограммы буквы исходного сообщения меняют местами. Типичным примером перестановки являются анаграммы. Анаграмма - литературный приём, состоящий в перестановке букв или звуков определённого слова (или словосочетания), что в результате даёт другое слово или словосочетание. Например: апельсин - спаниель, полковник - клоповник, горилка - рогалик, лепесток - телескоп. \r\nДля шифрования и дешифрования используется таблица перестановок.','Зашифруйте слово \"алфавит\", используя перестановку:\r\n1 2 3 4 5 6 7 \r\n5 6 4 3 7 1 2\r\nСогласно этой перестановке, в шифре первая буква слова  \"АЛФАВИТ\" займет пятое место, вторая - шестое и так далее.','виафтал',2,'Простые перестановки'),(3,'Проблемой защиты информации при ее передаче между абонентами люди занимаются на протяжении всей своей истории. Человечеством изобретено множество способов, позволяющих в той или иной мере скрыть смысл передаваемых сообщений от противника. На практике выработалось несколько групп методов защиты секретных посланий. \r\n\r\nПервым способом является физическая защита материального носителя информации от противника. В качестве носителя данных может выступать бумага, компьютерный носитель (DVD-диск, флэш-карта, магнитный диск, жесткий диск компьютера и т.д.). Для реализации этого способа необходим надежный канал связи, недоступный для перехвата. В различное время для этого использовались почтовые голуби, специальные курьеры, радиопередачи на секретной частоте. Методы физической защиты информации используются и в современных автоматизированных системах обработки данных. Так, например, комплексные системы защиты информации невозможны без систем ограждения и физической изоляции, а также без охранных систем.\r\n\r\nВторой способ защиты информации, известный с давних времен – стеганографическая защита информации. Этот способ защиты основан на попытке скрыть от противника сам факт наличия интересующей его информации. При стеганографическом методе защиты от противника прячут физический носитель данных или маскируют секретные сообщения среди открытой, несекретной информации. К таким способам относят, например, \"запрятывание\" микрофотографии с тайной информацией в несекретном месте: под маркой на почтовом конверте, под обложкой книги и т.д. К стеганографии относятся также такие известные приемы, как \"запрятывание\" секретного послания в корешках книг, в пуговицах, в каблуках, в пломбе зуба и т.д. В более поздние времена в этом направлении наибольшее распространение получили химические (симпатические) чернила. Текст, написанный этими чернилами между строк несекретного сообщения, невидим. Он появлялся только в результате применения определенной технологии проявления.\r\n\r\nТретий способ защиты информации – наиболее надежный и распространенный в наши дни – криптографический . Этот метод защиты информации предполагает преобразование информации для сокрытия ее смысла от противника. Криптография в переводе с греческого означает \"тайнопись\". В настоящее время криптография занимается поиском и исследованием математических методов преобразования информации.','Перечислите три основных метода защиты информации в порядке их упоминания в тексте.','физический, стеганографический, криптографический',1,'Методы защиты информации'),(4,'Рассмотрим одну из простейших систем шифрования, которая носит имя \"шифр Юлия Цезаря\". Предполагается, что знаменитый римский император и полководец, живший в 1 веке до нашей эры, использовал этот шифр в своей переписке.\r\n\r\nШифр Цезаря применительно к русскому языку состоит в следующем. Каждая буква сообщения заменяется на другую, которая в русском алфавите отстоит от исходной на три позиции дальше. Таким образом, буква A заменяется на Г , Б на Д и так далее вплоть до буквы Ь , которая заменялась на Я , затем Э на A , Ю на Б и, наконец, Я на В .\r\n\r\nЭто не очень сложный метод, тем более что при шифровании сообщений из нескольких слов сразу становится понятным, сколько слов содержал исходный текст. Кроме того, можно получить некоторую информацию по анализу повторов букв в зашифрованном сообщении.  Тем не менее, Цезарь вошел в историю криптографии, а \"шифр Юлия Цезаря\", как его до сих пор называют, служит примером одной из первых систем шифрования.','Зашифруйте текст \"ЗАМЕНА\", используя шифр Цезаря.\r\nИсходный алфавит:\r\nАБВГДЕЁЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯ','КГПЗРГ',1,'Шифр Цезаря'),(5,'Для расшифрования сообщения Шифра Цезаря необходимо знать только сам алгоритм шифрования. Любой человек, знающий способ шифрования, легко может расшифровать секретное сообщение. Таким образом, ключом в данном методе является сам алгоритм.','Расшифруйте текст: \"фссдьзрлз\".\r\nИсходный алфавит:\r\nАБВГДЕЁЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯ','сообщение',1,'Шифр Цезаря (расшифровка)'),(6,'В криптографии принято считать, что противник может знать использованный алгоритм шифрования, характер передаваемых сообщений и перехваченный шифротекст, но не знает секретный ключ. Как уже упоминалось выше, это называется принципом Керкхоффса. Иногда это правило кажется \"перестраховкой\", но такая \"перестраховка\" отнюдь не лишняя, если, например, передаются данные оборонного или государственного характера.\r\nПредположим, что буквы сдвигаются не на три знака вправо, а на n (0<k<n). В этом случае в системе шифрования появляется ключ – число k – параметр сдвига. Число n - мощность алфавита. Для русского языка n = 33. Отправитель и получатель могут каким-либо образом договариваться (например, лично) и иногда менять значение ключа. Так как n может принимать разные значения, знание одного только алгоритма не позволит противнику расшифровать секретное сообщение.','Представте, что Ваш друг прислал Вам сообщение: \"фхнъуин те ьео\".\r\nРасшифруйте сообщение, используя параметр сдвига k = 5.','приходи на чай',1,'Усовершенствуем шифр Цезаря'),(7,'Методы шифрования заменой (подстановкой) основаны на том, что символы исходного текста, обычно разделенные на блоки и записанные в одном алфавите, заменяются одним или несколькими символами другого алфавита в соответствии с принятым правилом преобразования.\r\nОдним из важных подклассов методов замены являются одноалфавитные (или моноалфавитные) подстановки, в которых устанавливается однозначное соответствие между каждым знаком исходного алфавита сообщений и соответствующим знаком зашифрованного текста. Одноалфавитная подстановка иногда называется также простой заменой, так как является самым простым шифром замены.','Попробуем зашифровать простое сообщение \"Привет\" методом одноалфавитной постановки.\r\nДля этого каждой букве поставим в соответствие другую букву, согласно таблице замены, приведенной ниже.\r\nа - ц      з - л         н - р        у - з          щ - ы       я - ч\r\nб - к      ж - ф       о - б        ф - м        ъ - и\r\nв - ь      и - е         п - ю       х - о          ы - ъ\r\nг - ж      к - н         р - в        ц - с         ь - щ\r\nд - а      л - т         с - э        ч - я         э - ш\r\nе - п      м - д        т - г         ш - у        ю - х','ювеьпг',1,'Одноалфавитная замена'),(8,'Алгоритм дешифровки для метода простых перестановок довольно прост, достаточно применить к шифру ту же перестановку, которую мы использовали для шифрования. \r\n Для использования на практике такой шифр не удобен, так как при больших значениях n приходится работать с длинными таблицами и для сообщений разной длины необходимо иметь свою таблицу перестановок. К тому же надежность шифра оставляет желать лучшего.','Расшифруйте слово \"виафтал\", используя ту же перестановку, что и в предыдущем задании:\r\n1 2 3 4 5 6 7 \r\n5 6 4 3 7 1 2\r\nКак видите, ничего сложного.','алфавит',2,'Простые перестановки. Дешифровка'),(9,'При использовании этого шифра блочной одинарной перестановки задается таблица перестановки блока символов, которая последовательно применяется до тех пор, пока исходное сообщение не закончится. То есть, если размер блока равен 3, то исходное сообщение разбивается на блоки, длиной по три символа. Затем каждый блок шифруется и зашифрованные блоки соединяются в шифр. Если исходное сообщение не кратно размеру блока, тогда оно при шифровании дополняется произвольными символами. В учебных целях мы будем использовать символ \"_\".','Зашифруйте слово \"абрамов\", используя блочную перестановку:\r\n1 2 3  \r\n2 3 1 \r\nДополните исходное сообщение символами \"_\", чтобы его длина была кратна 3.','рабоам_в_',2,'Шифр блочной одинарной перестановки'),(10,'Маршрутные перестановки наиболее распространенный вид перестановок, основанный на некоторой геометрической фигуре. \r\nИсходный текст записывается в такую фигуру по определенной траектории, а шифрованный текст выписывается по другой траектории. Рассмотрим пример маршрутной перестановки, основанной на таблице размером 4х7. \r\nИсходное сообщение x = ПРИМЕРМАРШРУТНОЙПЕРЕСТАНОВКИ. \r\nЗаписываем его в таблицу, двигаясь по строкам поочередно слева направо и справа налево начиная от левого верхнего угла таблицы:\r\n\r\nП Р И М Е Р М \r\nН Т У Р Ш Р А \r\nО Й П Е Р Е С \r\nИ К В О Н А Т \r\n\r\nШифрованное сообщение выписываем, двигаясь по столбцам поочередно сверху вниз и снизу вверх начиная от правого верхнего угла: y = МАСТАЕРРЕШРНОЕРМИУПВКЙТРПНОИ.','Зашифруйте сообщение \"ПЕРЕСТАНОВКА\" методом маршрутной перестановки, используя таблицу 4х3:\r\nП Е Р Е\r\nН А Т С\r\nО В К А','ЕСАКТРЕАВОНП',2,'Маршрутные перестановки'),(11,'Широкое распространение получила разновидность маршрутной перестановки, называемая вертикальной перестановкой. В этой системе исходное сообщение записывается в прямоугольную таблицу по строкам слева направо. Шифрованное сообщение выписывается по столбцам сверху вниз, причем столбцы выбираются в порядке, определяемом числовым ключом.\r\nИсходное сообщение x = ВОТПРИМЕРВЕРТИКАЛЬНОЙПЕРЕСТАНОВКИ. \r\nЗапишем его в таблицу размером 6х7 по строкам слева направо (номера в первой строке номера столбцов) \r\n5 1 4 7 2 6 3\r\nВ О Т П Р И М \r\nЕ Р В Е Р Т И \r\nК А Л Ь Н О Й \r\nП Е Р Е С Т А \r\nН О В К И _ _\r\nЧисловым ключом перестановки является последовательность 5,1,4,7,2,6,3, в соответствии с которой мы будем выписывать шифрованное сообщение по столбцам сверху вниз: \r\ny = ОРАЕОРРНСИМИЙАТВЛРВВЕКПНИТОТ.','Зашифруйте сообщение \"ПЕРЕСТАНОВКА\" методом вертикальной перестановки, используя таблицу 4х3:\r\n2 1 4 3\r\nП Е Р Е\r\nС Т А Н\r\nО В К А','ЕТВПСОЕНАРАК',2,'Вертикальная перестановка'),(12,'Теперь рассмотрим методы шифрования заменой (подстановкой). \r\nПри шифровании подстановкой символы исходного текста заменяются символами того же и/или других алфавитов по определенному правилу.  \r\nОдним из важных подклассов методов замены являются одноалфавитные (или моноалфавитные) подстановки, в которых устанавливается однозначное соответствие между каждым знаком исходного алфавита сообщений и соответствующим знаком зашифрованного текста. Одноалфавитная подстановка иногда называется также простой заменой, так как является самым простым шифром замены. Стоит отметить, что шифр моноалфавитной  подстановки - это один из самых древних шифров на Земле. Частным случаем этого шифра является изученный ранее шифр Цезаря.','Вспомните, чему равен сдвиг алфавита в шифре Цезаря?','3',3,'Шифры замены'),(13,'В общем случае при одноалфавитной подстановке происходит однозначная замена исходных символов их эквивалентами из таблицы замен. При таком методе шифрования ключом является используемая таблица замен.\r\nЗашифрованное сообщение с использованием любого шифра моноалфавитной подстановки получается следующим образом. Берется очередной знак из исходного сообщения. Выбирается соответствующий ему символ из таблицы замен. В зашифрованное сообщение вставляется шифрованный символ из этой же строки таблицы замен.\r\nПолученный таким образом текст имеет сравнительно низкий уровень защиты, так как исходный и зашифрованный тексты имеют одинаковые статистические закономерности. При этом не имеет значения, какие символы использованы для замены – перемешанные символы исходного алфавита или таинственно выглядящие знаки.\r\nЗашифрованное сообщение может быть вскрыто путем так называемого частотного криптоанализа. Для этого могут быть использованы некоторые статистические данные языка, на котором написано сообщение.','Зашифруем сообщение x = ВЫШЛИТЕ_НОВЫЕ_УКАЗАНИЯ с использованием подстановки\r\n\r\nа б в г д е ж з и й к л м н о п р с т у ф х ц ч ш щ ъ ы ь э ю я _\r\n_ й ц у к е н г ш щ з х ъ ф ы в а п р о л д ж э я ч с м и т ь б ю  \r\nДля этого каждый символ исходного сообщения заменим на соответствующий символ из второй строки подстановки. В результате получим шифрованное сообщение:','ЦМЯХШРЕЮФЫЦМЕЮОЗ_Г_ФШБ',3,'Моноалфавитные подстановки'),(14,'Для того, чтобы расшифровать сообщение, требуется построить подстановку , обратную к начальной. Для этого первую строку подстановки сохраняют, а чтобы построить вторую строку, поступают следующим образом: \r\n- берем букву из первой строки обратной подстановки; \r\n- находим ее во второй строке начальной подстановки; \r\n- находим соответствующую ей букву в первой строке начальной подстановки; \r\n- записываем во вторую строку обратной подстановки.','Попробуйте создать таблицу обратных перестановок самостоятельно.\r\nВ учебных целях ограничимся алфавитом, состоящим из 8 букв.\r\nНачальная таблица подстановок:\r\nа е и о у э ю я\r\nэ а у я е и о ю\r\nОбратная таблица перестановок:\r\nа е и о у э ю я\r\n+ + + + + + + +\r\nВведите вторую строку через пробел:','е у э ю и а я о',3,'Построение обратной таблицы подстановок'),(15,'Так, обратной подстановкой к подстановке из прошлого задания будет подстановка:\r\nа б в г д е ж з и й к л м н о п р с т у ф х ц ч ш щ ъ ы ь э ю я _ \r\nр я п з х е ц к ь б д ф ы ж у с т ъ э г н л в щ и й м о ю ч  _ ш а \r\nДля расшифрования сообщения y = ЦМЯХШРЕЮФЫЦМЕЮОЗ_Г_ФШБ применим к нему обратную подстановку  и получим исходное сообщение.','Для расшифрования сообщения y = ЦМЯХШРЕЮФЫЦМЕЮОЗ_Г_ФШБ примените к нему обратную подстановку:','ВЫШЛИТЕ_НОВЫЕ_УКАЗАНИЯ',3,'Расшифровка одноалфавитной подстановки'),(16,'В целях маскирования естественной частотной статистики исходного языка применяется многоалфавитная подстановка, которая также бывает нескольких видов. В многоалфавитных подстановках для замены символов исходного текста используется не один, а несколько алфавитов. Обычно алфавиты для замены образованы из символов исходного алфавита, записанных в другом порядке.\r\n\r\nМногоалфавитные подстановки мы рассмотрим на примере их частного случая - метода гаммирования.\r\n\r\nВ этом способе шифрование выполняется путем сложения символов исходного текста и ключа по модулю, равному числу букв в алфавите. Если в исходном алфавите, например, 33 символа, то сложение производится по модулю 33. Такой процесс сложения исходного текста и ключа называется в криптографии наложением гаммы.\r\n\r\nПусть символам исходного алфавита соответствуют числа от 0 (А) до 32 (Я). Если обозначить число, соответствующее исходному символу, x, а символу ключа – k, то можно записать правило гаммирования следующим образом:\r\n\r\nz = x + k (mod N),\r\nгде z – закодированный символ, N - количество символов в алфавите, а сложение по модулю N - операция, аналогичная обычному сложению, с тем отличием, что если обычное суммирование дает результат, больший или равный N, то значением суммы считается остаток от деления его на N. Например, пусть сложим по модулю 33 символы Г (3) и Ю (31):\r\n\r\n3 + 31 (mod 33) = 1,\r\nто есть в результате получаем символ Б, соответствующий числу 1.','Зашифруйте последовательность \"А В Д Ж\" по ключу \"Э\".\r\nВведите ответ заглавными буквами через пробел.','Э Я Б Г',3,'Методы гаммирования'),(17,'Наиболее часто на практике встречается двоичное гаммирование. При этом используется двоичный алфавит, а сложение производится по модулю два. Операция сложения по модулю 2 часто обозначается ⊕, то есть можно записать:\r\n\r\nz = x + k (mod 2) = x ⊕ k.\r\nОперация сложения по модулю два в алгебре логики называется также \"исключающее ИЛИ\" или по-английски XOR.','Предположим, нам необходимо зашифровать десятичное число 13 методом гаммирования с использованием ключа 11. \r\nДля этого вначале необходимо преобразовать исходное число и ключ (гамму) в двоичную форму. Затем надо записать полученные двоичные числа друг под другом и каждую пару символов сложить по модулю два. При сложении двух двоичных знаков получается 0, если исходные двоичные цифры одинаковы, и 1, если цифры разные. \r\nВыполните гаммирование и введите ответ в десятичной системе:','6',3,'Двоичное гаммирование'),(18,'В предыдущих курсах мы рассмотрели симметрические шифры. Однако, использование шифров с секретным ключом может быть безопасным только при условии сохранения ключа в секрете. Но в случае, когда секретную информацию нужно использовать совместно многими сторонами, а также в случае взаимного недоверия сторон, такие системы становятся потенциально опасными, так как требуют совместного использования секретных ключей. Решить эту проблему помогает использование асимметричных шифров. \r\n Асимметричные шифры используют два взаимосвязанных ключа. Первый ключ, называемый открытым, используется отправителем сообщения для зашифрования. Второй ключ секретный (или закрытый) - используется получателем сообщения для расшифрования.\r\nВзаимосвязанные (или парные) ключи могут использоваться и в обратном порядке: секретный ключ для зашифрования, а открытый для расшифрования. Преимущество асимметричных шифров состоит в возможности отказаться от защищенной процедуры распределения ключей. Существенный недостаток асимметричных шифров требование значительной вычислительной мощности, такие алгоритмы во много раз медленнее симметричных. Часто для исключения недостатков как симметричных, так и асимметричных алгоритмов, используют технологии их сочетания. Например, исходный текст шифруется быстродействующим симметричным алгоритмом, а секретный ключ, сопровождающий текст, асимметричным алгоритмом. \r\nДля того, чтобы понять принцип работы самого распространенного асимметричного криптоалгоритма RSA (названного по имени создателей Ривеста, Шамира и Адлемана), нам придется вспомнить некоторые определения и теоремы, относящиеся к теории простых чисел. \r\nНатуральное число p > 1 называется простым, если оно не имеет натуральных делителей, кроме единицы и самого себя. \r\nЛюбое натуральное число может быть однозначно представлено в виде произведения конечного числа простых множителей, что и утверждает первая теорема, которая будет нами доказана.','Задание для разминки.\r\nВведите через пробел 5 первых простых чисел.','2 3 5 7 11',4,'Асимметричное шифрование'),(19,'Алгоритм RSA является, наверно, наиболее популярным и широко применяемым асимметричным алгоритмом в криптографических системах.\r\n\r\nАлгоритм основан на использовании того факта, что задача разложения большого числа на простые сомножители является трудной. Криптографическая система RSA базируется на следующих двух фактах из теории чисел:\r\n\r\n1). Задача проверки числа на простоту является сравнительно легкой;\r\n2). Задача разложения чисел вида n = p*q ( р и q — простые числа); на множители является очень трудной, если мы знаем только n, а р и q — большие числа.\r\n\r\nИтак, рассмотрим сам алгоритм. Пусть Вы хотите передать мне зашифрованное сообщение. В этом случае я должна подготовить пару (открытый ключ; закрытый ключ) и отправить свой открытый ключ Вам.\r\nДля простоты понимания алгоритма, будем сразу применять его на практике. \r\nПервым этапом является генерация открытого и закрытого ключей. Для этого вначале выбираются два больших простых числа Р и Q. Затем вычисляется произведение N.','Я выбираю простые числа Р = 11 и Q = 17. \r\nДля того, чтобы упростить расчеты, мы используем небольшие числа. И если Вы будете генерировать ключи, Вам необходимо выбрать числа Р и Q самостоятельно.\r\nВычислите произведение  N = P*Q.','187',4,'Алгоритм RSA'),(20,'На следующем шаге необходимо найти функцию Эйлера числа n по правилу: ϕ( n ) = (p-1)*(q-1).','Рассчитайте функцию Эйлера: ϕ( n ) = (p-1)*(q-1) для чисел Р = 11 и Q = 17.','160',4,'Генерация ключей. Функция Эйлера.'),(21,'Теперь случайным образом необходимо выбрать число d < ϕ и взаимно простое с ϕ, т.е. d и ϕ(n) не имеют общих делителей.','Пусть я выберу d = 21. \r\nСамостоятельно проверьте, соответствует ли это число требованиям для ϕ( n ) = 160.\r\nЗакрытый ключ обычно записывают в формате (d; n).\r\nВведите в поле ответа закрытый ключ (напомним, что n = 187).','(21; 187)',4,'Закрытый ключ'),(22,'Открытый ключ формируется путем нахождения методом подбора числа е, такого, чтобы е*d mod ϕ = 1.\r\nТак как теперь Я хочу получить зашифрованное сообщение от Вас, мне нужно отправить вам свой открытый ключ (е, N). Числа Р и Q больше не нужны, однако их нельзя никому сообщать, лучше всего их вообще забыть.\r\nНа этом этап подготовки ключей закончен и можно использовать основной протокол RSA для шифрования данных.','Пусть я выбираю е = 61.\r\nСамостоятельно проверьте выполняется ли условие е*21mod 160 = 1.\r\nОткрытый ключ обычно записывают в формате (е; n).\r\nВведите в поле ответа открытый ключ (напомним, что n = 187).','(61, 187)',4,'Открытый ключ'),(23,'Вы получили секретный ключ. Теперь можно зашифровать сообщение. \r\nЕсли абонент А хочет передать некоторые данные абоненту Б, он должен представить свое сообщение в цифровом виде и разбить его на блоки m1, m2, m3, ... , где mi < N. \r\nЗашифрованное сообщение будет состоять из блоков сi.\r\nКак же это сделать?\r\nУ каждой буквы алфавита есть свой порядковый номер, пусть это и будет цифровым представлением сообщения.','Предположим, что Вам нужно отправить мне сообщение \"Hello\".\r\nВ современном латинском алфавите 26 букв, а это значит, что цифровое представление каждого символа удовлетворяет условию mi < 187.\r\nВведите в поле ответа через пробел цифровые представления символов шифруемого сообщения, найдя порядковый номер каждого элемента.','8 5 12 12 15',4,'Цифровая форма сообщения'),(24,'Для шифрования сообщения Вам нужно зашифровать каждый блок своего сообщения по формуле ci = (mi^е) mod N используя открытые параметры моего ключа, и переслать зашифрованное сообщение С=(с1, с2, с3, ...) по открытой линии.','Цифровое представление Вашего сообщения имеет следующий вид: 8 5 12 12 15. \r\nОткрытый ключ: (61, 187).\r\nЗашифруйте каждый блок, используя приведенную в теоретическом материале формулу.\r\nВведите полученные данные через пробел.','162 71 133 133 70',4,'Шифрование'),(25,'Я, получив от Вас сообщение, могу расшифровать его, используя секретный ключ, известный только мне. \r\nДля расшифровки используется формула: mi = (ci^d) mod N.','Я получаю от Вас шифр: 162 71 133 133 70. \r\nМой секретный ключ: (21; 187).\r\nПопрактикуйтесь и расшифруйте сообщение, используя формулу из теоретического материала. \r\nВведите через пробел полученную последовательность символов.','8 5 12 12 15',4,'Расшифровка сообщения'),(26,'Получив цифровое представление Вашего сообщения и, зная порядковые номера букв алфавита, я могу привести Ваше сообщение в текстовую форму.\r\nКак видите, алгоритм шифрования RSA не так уж и сложен!','Приведите полученную последовательность 8 5 12 12 15 в текстовую форму.\r\nВведите ответ строчными буквами.','hello',4,'Текстовая форма сообщения'),(27,'Одной из наиболее известных криптографических систем с закрытым ключом является DES – Data Encryption Standard. Эта система первой получила статус государственного стандарта в области шифрования данных. Она разработана специалистами фирмы IBM и вступила в действие в США 1977 году. Алгоритм DES широко использовался при хранении и передаче данных между различными вычислительными системами; в почтовых системах, в электронных системах чертежей и при электронном обмене коммерческой информацией. Стандарт DES реализовывался как программно, так и аппаратно. Предприятиями разных стран был налажен массовый выпуск цифровых устройств, использующих DES для шифрования данных. Все устройства проходили обязательную сертификацию на соответствие стандарту.\r\n\r\nНесмотря на то, что уже некоторое время эта система не имеет статуса государственного стандарта, она по-прежнему широко применяется и заслуживает внимания при изучении блочных шифров с закрытым ключом.\r\nБлочный шифр — разновидность симметричного шифра. Особенностью блочного шифра является обработка блока нескольких байт за одну итерацию (как правило 8 или 16). Блочные криптосистемы разбивают текст сообщения на отдельные блоки и затем осуществляют преобразование этих блоков с использованием ключа.\r\nПри блочном шифровании информация разбивается на блоки фиксированной длины и шифруется поблочно. Блочные шифры бывают двух основных видов:\r\n\r\nшифры перестановки (transposition, permutation, P-блоки);\r\nшифры замены (подстановки, substitution, S-блоки).','Готовы перейти к подробному рассмотрению блочных шифров?\r\nВведите \"Да!\" и мы начнем.','Да!',5,'Что такое блочный шифр?'),(28,'В предыдущем задании мы упомянули об алгоритме DES.  Сейчас мы рассмотрим его упрощенную модель.\r\n\r\nУпрощенный DES (S-DES) был разработан профессором Эдуардом Шаефером (Edward Schaefer) Университета Санта-Клары и является образовательным инструментом для помощи студентам при изучении структуры DES - для шифрования и дешифрования с использованием блочных шифров и ключей с небольшим количеством битов.\r\nПроцесс шифрования начинается с генерации ключей. Ее мы и рассмотрим в данном курсе.\r\n\r\nГенерация ключей\r\nГенератор ключей раунда создает два ключа на 8 битов из ключа шифра на 10 битов.\r\n\r\nР-блок прямой перестановки\r\nПервый процесс - прямая перестановка. Этот процесс переставляет 10 битов в ключе согласно заранее заданному правилу:\r\n3 5 2 7 4 10 1 9 8 6.','Дан 10-битный ключ: 0000011001. \r\nПримените к нему Р-блок перестановки и введите ответ.','0001010001',5,'Введение в S-DES'),(29,'Раунд 1.\r\n\r\nПосле применения операции перестановки данные разделяются на две равные части по пять бит каждая, и отдельно для каждой из частей выполняется циклический сдвиг влево на одну позицию (LS-1).\r\nНапример, если мы имеем 5-битную последовательность 10000, то после циклический сдвиг влево на одну позицию будем иметь последовательность 00001.  Первый бит переносится на последнюю позицию, биты со 2 по 5 сдвигаются на одну позицию влево.','После применения Р-блока мы имеем последовательность  0001010001. Разделим ее на 2 равные части: 00010 10001.\r\nВыполните для каждой части циклический сдвиг LS-1, а затем введите полученный результат, поставив пробел между левой и правой частями.','00100 00011',5,'Раунд 1. Циклический сдвиг LS-1'),(30,'На следующем шаге необходимо соединить две части LS-1 в одну 10-битовую последовательность. \r\nК полученным данным применяется применяется перестановка P8. В результате применения этой перестановки из 10-битового ключа сначала выбираются, а затем переставляются 8 битов. В результате этой операции получается первый подключ (K1).\r\nДля перестановки сжатия выбираются следующие биты:\r\n6 3 7 4 8 5 10 9','После операции циклического сдвига имеем последовательность: 0010000011.\r\nПримените к ней перестановку сжатия и введите полученный ключ К1.','01000011',5,'Раунд 1. Перестановка сжатия.'),(31,'Раунд 2.\r\nНа первом этапе раунда результат циклической перестановки разделяется на две равные части по пять бит каждая, и отдельно для каждой из частей выполняется циклический сдвиг влево на две позиции (LS-2).\r\nНапример, если мы имеем 5-битную последовательность 10101, то после циклический сдвиг влево на одну позицию будем иметь последовательность 10110.  Первый бит переносится на 4 позицию, второй - на 5-ую, биты с 3 по 5 сдвигаются на одну позицию влево.','После операции циклического сдвига имеем последовательность: 0010000011.\r\nРазделим ее на две равные части: 00100 00011.\r\nВыполните для каждой части циклический сдвиг LS-2, а затем введите полученный результат, поставив пробел между левой и правой частями.','10000 01100',5,'Раунд 2. Циклический сдвиг LS-2'),(32,'Теперь выполняем действия, аналогичные предыдущему раунду. Соединияем две части LS-2 в одну 10-битовую последовательность. \r\nК полученным данным применяется применяется перестановка P8. В результате применения этой перестановки из 10-битового ключа сначала выбираются, а затем переставляются 8 битов. В результате этой операции получается первый подключ (K2).\r\nДля перестановки сжатия выбираются следующие биты:\r\n6 3 7 4 8 5 10 9','После операции циклического сдвига имеем последовательность: 1000001100.\r\nПримените к ней перестановку сжатия и введите полученный ключ К2.\r\nКлючи сгенерированы! Можно переходить к шифрованию.','00101000',5,'Раунд 2. Перестановка сжатия.'),(33,'На стороне шифрования S-DES принимает исходный текст по 8 битов и создает зашифрованный текст по 8 битов. Один и тот же ключ шифра на 10 битов используется и для шифрования, и для дешифрования.\r\n\r\nОстановимся на шифровании. Процесс шифрования состоит из двух перестановок (P-блоки), которые мы называем начальными и конечными перестановками (их также называют IP и IP-1), и двух раундов Файстеля. Каждый раунд использует различные ключи раунда по 8 битов, сгенерированные от ключа шифра согласно заранее заданному алгоритму, описанному в предыдущем курсе. \r\n\r\nПервым шагом шифрования будет применение к исходному тексту первоначальной IP перестановки. Результат перестановки нужно разбить на блоки по 4 бита.\r\nIP перестановка:\r\n2 6 3 1 4 8 5 7','Нам необходимо зашифровать исходный текст: 00001111.\r\nПримените к нему IP перестановку. Полученный ответ разбейте при помощи  на блоки по 4 бита и введите результат.','01000111',6,'Введение в шифрование'),(34,'К четырём правым битам результата IP перестановки применяется перестановка с расширением E/P (генерирование 8 бит из 4) по правилу:\r\n4	1	2	3	2	3	4	1','Возьмем правые 4 бита последовательности: 01000111.\r\nПримените к полученным битам 0111 перестановку с расширением и введите ответ.','10111110',6,'Раунд 1. Перестановка с расширением E/P'),(35,'К полученному сообщению с помощью операции сложения по модулю два (XOR) добавляется первый 8-битовый секретный подключ К1.','В предыдущем курсе мы генерировали ключи.\r\nВозьмем получившийся ключ К1:  01000011.\r\nСложите его о модулю два (XOR)  с результатом перестановки с расширением 10111110 и введите ответ.','11111101',6,'Раунд 1. Сложение с подключом К1.');
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_question`
--

LOCK TABLES `test_question` WRITE;
/*!40000 ALTER TABLE `test_question` DISABLE KEYS */;
INSERT INTO `test_question` VALUES (1,'Как называется способ передачи или хранения информации с учётом сохранения в тайне самого факта такой передачи (хранения)?',1),(2,'Процесс, в ходе которого шифрованный текст преобразуется в исходный, называется ...',1),(3,'На какие два класса делятся все шифры?',2),(4,'Характеристика шифра, определяющая его стойкость к шифрованию без знания ключа, называется ...',1),(5,'Определите ключи шифра, если известна следующая пара открытый текст – шифротекст (исходный алфавит: АБВГДЕЁЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯ):\r\nзатмение - мечсйтнй',1),(6,'Расшифруйте следующее сообщение \"убнкгн\", зашифрованное шифром Цезаря, используя соответствия: \r\nА Б В Г Д Е Ё Ж З И Й К Л М Н О П Р С Т У Ф Х Ц Ч Ш Щ Ъ Ы Ь Э Ю Я\r\nГ Д Е Ё Ж З И Й К Л М Н О П Р С Т У Ф Х Ц Ч Ш Щ Ъ Ы Ь Э Ю Я А Б В',1),(7,'Засшифруйте следующий текст шифром Цезаря, если известно, что исходные сообщения составлены из алфавита АБВГДЕЁЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯ: \r\nпереход',1),(8,'Расшифруйте следующий текст шифром Цезаря, используя ключ k = 5. Исходные сообщения составлены из алфавита АБВГДЕЁЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯ: \r\nфлотилия',1),(9,'Симметрическими криптосистемами называется  способ шифрования, в котором для шифрования и расшифровывания  ...',2),(10,'На сколько классов делятся все симметричные шифры?',2),(11,'Анаграмма является честным случаем',2),(12,'Расшифруйте сообщение \"аежлть\" методом простой перестановки, используя ключ 423156.',2),(13,'Зашифруйте сообщение \"апельсин\" методом простой подстановки, используя ключ 24635781.',2),(14,'Какой ключ использовался для шифрования сообщения \"фестиваль\", если нам известно что в результате получился шифр \"ВФСЬАЛИТЕ\".',2),(15,'Зашифруйте слово \"абб рев иат ура\", используя блочную перестановку:\r\n1 2 3  \r\n3 2 1',2),(16,'Зашифруйте сообщение \"ВЕРТОЛЕТЧИК\" методом маршрутной перестановки, используя таблицу 4х3:\r\nВ Е Р Т\r\nТ Е Л О\r\nЧ И К _',2),(17,'Зашифруйте сообщение \"БУДУ_ПОЗДНО\" методом вертикальной перестановки, используя таблицу 4х3 и ключ 4 3 5 1 2:\r\nБ У Д У _\r\nП О З Д Н\r\nО _ _ _ _',2),(18,'Как называется способ шифрования, в котором шифрование выполняется путем сложения символов исходного текста и ключа по модулю, равному числу букв в алфавите?',3),(19,'Расшифруйте сообщение \"ФЫЦЫЕЮГ_К_ФШЕ\" используя таблицу:\r\n\r\nа б в г д е ж з и й к л м н о п р с т у ф х ц ч ш щ ъ ы ь э ю я _ \r\nр я п з х е ц к ь б д ф ы ж у с т ъ э г н л в щ и й м о ю ч  _ ш а \r\n\r\n Ответ запишите прописными русскими буквами. Если ответ состоит из нескольких слов, запишите его с пробелами.',3),(20,'Шифр, при котором каждый символ открытого текста заменяется на некоторый, фиксированный при данном ключе символ того же алфавита называется ...',3),(21,'Метод гаммирования эквивалентен битовойоперации ...',3),(22,'Зашифруйте последовательность \"Э Е Я\" по ключу \"Г\".\r\nВведите ответ заглавными буквами через пробел.',3),(23,'Зашифруйте число 15 метожом двоичного гаммирования по ключу 5. Введите ответ в двоичой форме.',3),(24,'Могут ли многоалфавитные подстановки для  замены символов исходного текста использовать алфавиты для замены образованные из символов исходного алфавита?',3),(25,'К каким криптографическим системам относится криптосистема RSA?',4),(26,'Сколько ключей использует криптосистема RSA?',4),(27,'Какой ключ для шифрования сообщения использует RSA?',4),(28,'Какой ключ для расшифровки сообщения использует RSA?',4),(29,'На первом этапе генерации ключей выбираются ...',4),(30,'Число N находится путем',4),(31,'Функция Эйлера находится по формуле:',4),(32,'Компонент закрытого ключа число d должно быть...',4),(33,'Компонент открытого ключа число е должно условию ...',4),(34,'Чтобы зашифровать сообщение, его нужно разбить на блоки.\r\nКаждый блок должен удовлетворять условию ...',4),(35,'Какая из приведенных формул используется для шифрования сообщения?',4),(36,'Какая из приведенных формул используется для расшифровки сообщения?',4);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_task`
--

LOCK TABLES `test_task` WRITE;
/*!40000 ALTER TABLE `test_task` DISABLE KEYS */;
INSERT INTO `test_task` VALUES (1,'Основы криптографии',1),(2,'Методы перестановки',2),(3,'Шифры подстановок',3),(4,'RSA',4);
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

-- Dump completed on 2017-06-03 10:04:49
