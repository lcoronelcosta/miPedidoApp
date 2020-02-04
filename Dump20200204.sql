-- MariaDB dump 10.17  Distrib 10.4.10-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: mipedidoapp
-- ------------------------------------------------------
-- Server version	10.4.10-MariaDB

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
-- Table structure for table `cms_apicustom`
--

DROP TABLE IF EXISTS `cms_apicustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_apicustom` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `permalink` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tabel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aksi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kolom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orderby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_query_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sql_where` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `method_type` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `responses` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_apicustom`
--

LOCK TABLES `cms_apicustom` WRITE;
/*!40000 ALTER TABLE `cms_apicustom` DISABLE KEYS */;
INSERT INTO `cms_apicustom` VALUES (1,'getcategorias','mp_categoria','list',NULL,NULL,NULL,NULL,'getcategorias',NULL,NULL,NULL,NULL,'get','a:0:{}','a:4:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:1;a:4:{s:4:\"name\";s:6:\"nombre\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:2;a:4:{s:4:\"name\";s:6:\"imagen\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:3;a:4:{s:4:\"name\";s:6:\"estado\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}}'),(2,'getsubcategorias','mp_categoria_sub','list',NULL,NULL,NULL,'id_categoria=[id]','getsubcategorias',NULL,NULL,NULL,NULL,'get','a:1:{i:0;a:5:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}}','a:5:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:1;a:4:{s:4:\"name\";s:12:\"id_categoria\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:2;a:4:{s:4:\"name\";s:6:\"nombre\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:3;a:4:{s:4:\"name\";s:6:\"imagen\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:4;a:4:{s:4:\"name\";s:12:\"is_destacada\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}}'),(3,'getbanners','mp_banners','list',NULL,NULL,NULL,NULL,'getbanners',NULL,NULL,NULL,NULL,'get','a:5:{i:0;a:5:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:1;a:5:{s:4:\"name\";s:6:\"titulo\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:2;a:5:{s:4:\"name\";s:11:\"descripcion\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:3;a:5:{s:4:\"name\";s:6:\"imagen\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:4;a:5:{s:4:\"name\";s:6:\"estado\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}}','a:5:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:1;a:4:{s:4:\"name\";s:6:\"titulo\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:2;a:4:{s:4:\"name\";s:11:\"descripcion\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:3;a:4:{s:4:\"name\";s:6:\"imagen\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:4;a:4:{s:4:\"name\";s:6:\"estado\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}}'),(4,'getproductos','mp_producto','list',NULL,NULL,NULL,'id_subcategoria=[id_subcategoria]','getproductos',NULL,NULL,NULL,NULL,'get','a:1:{i:0;a:5:{s:4:\"name\";s:15:\"id_subcategoria\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}}','a:5:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:1;a:4:{s:4:\"name\";s:15:\"id_subcategoria\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:2;a:4:{s:4:\"name\";s:6:\"nombre\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:3;a:4:{s:4:\"name\";s:6:\"precio\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:4;a:4:{s:4:\"name\";s:6:\"imagen\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}}'),(5,'getproducto','mp_producto','list',NULL,NULL,NULL,'id=[id]','getproducto',NULL,NULL,NULL,NULL,'get','a:1:{i:0;a:5:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}}','a:5:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:1;a:4:{s:4:\"name\";s:15:\"id_subcategoria\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:2;a:4:{s:4:\"name\";s:6:\"nombre\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:3;a:4:{s:4:\"name\";s:6:\"precio\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:4;a:4:{s:4:\"name\";s:6:\"imagen\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}}'),(6,'getuser','mp_usuario','list',NULL,NULL,NULL,'email=[email]','getuser',NULL,NULL,NULL,NULL,'get','a:2:{i:0;a:5:{s:4:\"name\";s:5:\"email\";s:4:\"type\";s:5:\"email\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:1;a:5:{s:4:\"name\";s:8:\"password\";s:4:\"type\";s:8:\"password\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}}','a:8:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:1;a:4:{s:4:\"name\";s:6:\"nombre\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:2;a:4:{s:4:\"name\";s:8:\"apellido\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:3;a:4:{s:4:\"name\";s:5:\"email\";s:4:\"type\";s:5:\"email\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:4;a:4:{s:4:\"name\";s:8:\"password\";s:4:\"type\";s:8:\"password\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:5;a:4:{s:4:\"name\";s:6:\"imagen\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:6;a:4:{s:4:\"name\";s:6:\"estado\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:7;a:4:{s:4:\"name\";s:5:\"clave\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}}'),(7,'getuserid','mp_usuario','list',NULL,NULL,NULL,'id=[id]','getuserid',NULL,NULL,NULL,NULL,'get','a:1:{i:0;a:5:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}}','a:8:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:1;a:4:{s:4:\"name\";s:6:\"nombre\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:2;a:4:{s:4:\"name\";s:8:\"apellido\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:3;a:4:{s:4:\"name\";s:5:\"email\";s:4:\"type\";s:5:\"email\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:4;a:4:{s:4:\"name\";s:8:\"password\";s:4:\"type\";s:8:\"password\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:5;a:4:{s:4:\"name\";s:5:\"clave\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:6;a:4:{s:4:\"name\";s:6:\"imagen\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:7;a:4:{s:4:\"name\";s:6:\"estado\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}}');
/*!40000 ALTER TABLE `cms_apicustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_apikey`
--

DROP TABLE IF EXISTS `cms_apikey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_apikey` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `screetkey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `status` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_apikey`
--

LOCK TABLES `cms_apikey` WRITE;
/*!40000 ALTER TABLE `cms_apikey` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_apikey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_dashboard`
--

DROP TABLE IF EXISTS `cms_dashboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_dashboard` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_dashboard`
--

LOCK TABLES `cms_dashboard` WRITE;
/*!40000 ALTER TABLE `cms_dashboard` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_dashboard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_email_queues`
--

DROP TABLE IF EXISTS `cms_email_queues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_email_queues` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `send_at` datetime DEFAULT NULL,
  `email_recipient` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_attachments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_sent` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_email_queues`
--

LOCK TABLES `cms_email_queues` WRITE;
/*!40000 ALTER TABLE `cms_email_queues` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_email_queues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_email_templates`
--

DROP TABLE IF EXISTS `cms_email_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_email_templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_email_templates`
--

LOCK TABLES `cms_email_templates` WRITE;
/*!40000 ALTER TABLE `cms_email_templates` DISABLE KEYS */;
INSERT INTO `cms_email_templates` VALUES (1,'Email Template Forgot Password Backend','forgot_password_backend',NULL,'<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>','[password]','System','system@crudbooster.com',NULL,'2020-01-25 06:18:53',NULL);
/*!40000 ALTER TABLE `cms_email_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_logs`
--

DROP TABLE IF EXISTS `cms_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ipaddress` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `useragent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_users` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_logs`
--

LOCK TABLES `cms_logs` WRITE;
/*!40000 ALTER TABLE `cms_logs` DISABLE KEYS */;
INSERT INTO `cms_logs` VALUES (1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36','http://localhost:8000/admin/login','admin@crudbooster.com login with IP Address 127.0.0.1','',1,'2020-01-31 06:18:24',NULL),(2,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36','http://localhost:8000/admin/mp_categoria/edit-save/2','Update data  at Categorias','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>nombre</td><td>Electricidad</td><td>Tubos</td></tr><tr><td>imagen</td><td></td><td>uploads/1/2020-01/tubos.jpg</td></tr></tbody></table>',1,'2020-01-31 07:34:33',NULL),(3,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36','http://localhost:8000/admin/login','admin@crudbooster.com login with IP Address 127.0.0.1','',1,'2020-01-31 07:42:54',NULL),(4,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36','http://localhost:8000/admin/users/edit-save/1','Update data Luis Coronel at Users Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Super Admin</td><td>Luis Coronel</td></tr><tr><td>photo</td><td></td><td>uploads/1/2020-01/perfil.jpg</td></tr><tr><td>email</td><td>admin@crudbooster.com</td><td>admin@admin.com</td></tr><tr><td>password</td><td>$2y$10$gwyRqKcmE9ncwsJ5j0CNH.9F6oJese/5QqSg/Ij9QGKM/XMfolCJ6</td><td></td></tr><tr><td>id_cms_privileges</td><td>1</td><td></td></tr><tr><td>status</td><td>Active</td><td></td></tr></tbody></table>',1,'2020-01-31 07:44:27',NULL),(5,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36','http://localhost:8000/admin/users/edit-save/1','Update data Luis Coronel at Users Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>password</td><td>$2y$10$gwyRqKcmE9ncwsJ5j0CNH.9F6oJese/5QqSg/Ij9QGKM/XMfolCJ6</td><td>$2y$10$1TkPKdkAuSbY.yUlNMMGyuaHRMuah4lTCDZYApMeMtA/up6TPYm8i</td></tr><tr><td>id_cms_privileges</td><td>1</td><td></td></tr><tr><td>status</td><td>Active</td><td></td></tr></tbody></table>',1,'2020-01-31 07:44:44',NULL),(6,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36','http://localhost:8000/admin/logout','admin@admin.com logout','',1,'2020-01-31 07:44:51',NULL),(7,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36','http://localhost:8000/admin/login','admin@admin.com login with IP Address 127.0.0.1','',1,'2020-01-31 07:45:01',NULL),(8,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36','http://localhost:8000/admin/mp_categoria_sub/delete-image','Delete the image of 15 at Subcategorias','',1,'2020-01-31 07:48:22',NULL),(9,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36','http://localhost:8000/admin/mp_categoria_sub/edit-save/15','Update data  at Subcategorias','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>imagen</td><td></td><td>uploads/1/2020-01/tubos_cuadrados.jpg</td></tr></tbody></table>',1,'2020-01-31 07:50:15',NULL),(10,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36','http://localhost:8000/admin/mp_categoria_sub/delete-image','Delete the image of 14 at Subcategorias','',1,'2020-01-31 07:51:20',NULL),(11,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36','http://localhost:8000/admin/mp_categoria_sub/edit-save/14','Update data  at Subcategorias','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>nombre</td><td>Aditivos</td><td>Tubos Redondos</td></tr><tr><td>imagen</td><td></td><td>uploads/1/2020-01/tubos_redondos.jpg</td></tr></tbody></table>',1,'2020-01-31 07:51:36',NULL),(12,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36','http://localhost:8000/admin/mp_categoria_sub/delete-image','Delete the image of 13 at Subcategorias','',1,'2020-01-31 07:52:58',NULL),(13,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36','http://localhost:8000/admin/mp_categoria_sub/edit-save/13','Update data  at Subcategorias','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>id_categoria</td><td>1</td><td>2</td></tr><tr><td>nombre</td><td>Aceros</td><td>Tubos Rectangulares</td></tr><tr><td>imagen</td><td></td><td>uploads/1/2020-01/tubos_rectangulares.jpg</td></tr></tbody></table>',1,'2020-01-31 07:53:28',NULL),(14,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36','http://localhost:8000/admin/mp_categoria_sub/edit-save/14','Update data  at Subcategorias','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>id_categoria</td><td>1</td><td>2</td></tr></tbody></table>',1,'2020-01-31 07:53:44',NULL),(15,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36','http://localhost:8000/admin/mp_categoria_sub/edit-save/15','Update data  at Subcategorias','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>nombre</td><td>Accesorios</td><td>Tubos Cuadrados</td></tr></tbody></table>',1,'2020-01-31 08:15:19',NULL),(16,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36','http://localhost:8000/admin/mp_banners/add-save','Add New Data  at Banners','',1,'2020-01-31 08:28:45',NULL),(17,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36','http://localhost:8000/admin/mp_banners/add-save','Add New Data  at Banners','',1,'2020-01-31 08:53:38',NULL),(18,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36','http://localhost:8000/admin/mp_producto/delete-image','Delete the image of 2 at Productos','',1,'2020-01-31 12:35:36',NULL),(19,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36','http://localhost:8000/admin/mp_producto/edit-save/2','Update data  at Productos','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>id_subcategoria</td><td>13</td><td>15</td></tr><tr><td>nombre</td><td>Planchas</td><td>Tubo Estructural Negro Cuadrado 30 x 30 x 0.9 mm</td></tr><tr><td>precio</td><td>25</td><td>8</td></tr><tr><td>imagen</td><td></td><td>uploads/1/2020-01/uno.jpg</td></tr></tbody></table>',1,'2020-01-31 12:44:23',NULL),(20,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36','http://localhost:8000/admin/mp_producto/add-save','Add New Data  at Productos','',1,'2020-01-31 12:52:06',NULL),(21,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36','http://localhost:8000/admin/mp_usuario/add-save','Add New Data  at Usuario','',1,'2020-01-31 13:11:07',NULL),(22,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36','http://localhost:8000/admin/login','admin@admin.com login with IP Address 127.0.0.1','',1,'2020-01-31 19:53:40',NULL),(23,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36','http://localhost:8000/admin/login','admin@admin.com login with IP Address 127.0.0.1','',1,'2020-01-31 20:10:06',NULL),(24,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36','http://localhost:8000/admin/mp_banners/add-save','Add New Data  at Banners','',1,'2020-01-31 20:30:32',NULL),(25,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36','http://localhost:8000/admin/mp_categoria/add-save','Add New Data  at Categorias','',1,'2020-01-31 20:31:37',NULL),(26,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36','http://localhost:8000/admin/mp_categoria_sub/add-save','Add New Data  at Subcategorias','',1,'2020-01-31 20:34:24',NULL),(27,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36','http://localhost:8000/admin/mp_producto/add-save','Add New Data  at Productos','',1,'2020-01-31 20:35:59',NULL),(28,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36','http://localhost:8000/admin/login','admin@admin.com login with IP Address 127.0.0.1','',1,'2020-02-04 11:33:42',NULL),(29,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36','http://localhost:8000/admin/login','admin@admin.com login with IP Address 127.0.0.1','',1,'2020-02-04 16:12:49',NULL),(30,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36','http://localhost:8000/admin/mp_categoria/delete/4','Delete data 4 at Categorias','',1,'2020-02-04 16:13:22',NULL),(31,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36','http://localhost:8000/admin/mp_banners/delete/3','Delete data 3 at Banners','',1,'2020-02-04 16:13:54',NULL),(32,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36','http://localhost:8000/admin/statistic_builder/add-save','Add New Data Mis Estadisticas at Statistic Builder','',1,'2020-02-04 16:17:34',NULL),(33,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36','http://localhost:8000/admin/menu_management/add-save','Add New Data Mis Estadisticas at Menu Management','',1,'2020-02-04 16:30:24',NULL),(34,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36','http://localhost:8000/admin/menu_management/edit-save/6','Actualizar información Mis Estadisticas en Menu Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>0</td><td></td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>',1,'2020-02-04 16:32:30',NULL),(35,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36','http://localhost:8000/admin/mp_pedido_estado/add-save','Añadir nueva información  en Estados de Pedidos','',1,'2020-02-04 16:40:55',NULL),(36,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36','http://localhost:8000/admin/mp_categoria/edit-save/1','Actualizar información  en Categorias','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>nombre</td><td>Construccion</td><td>Planchas</td></tr><tr><td>imagen</td><td></td><td>uploads/1/2020-02/tubos_cuadrados.jpg</td></tr></tbody></table>',1,'2020-02-04 17:17:05',NULL);
/*!40000 ALTER TABLE `cms_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_menus`
--

DROP TABLE IF EXISTS `cms_menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'url',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_dashboard` tinyint(1) NOT NULL DEFAULT 0,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_menus`
--

LOCK TABLES `cms_menus` WRITE;
/*!40000 ALTER TABLE `cms_menus` DISABLE KEYS */;
INSERT INTO `cms_menus` VALUES (1,'Categorias','Route','AdminMpCategoriaControllerGetIndex',NULL,'fa fa-level-up',0,1,0,1,1,'2020-01-31 06:29:00',NULL),(2,'Subcategorias','Route','AdminMpCategoriaSubControllerGetIndex',NULL,'fa fa-level-up',0,1,0,1,2,'2020-01-31 07:45:31',NULL),(3,'Banners','Route','AdminMpBannersControllerGetIndex',NULL,'fa fa-image',0,1,0,1,3,'2020-01-31 08:25:09',NULL),(4,'Productos','Route','AdminMpProductoControllerGetIndex',NULL,'fa fa-product-hunt',0,1,0,1,4,'2020-01-31 09:20:52',NULL),(5,'Usuario','Route','AdminMpUsuarioControllerGetIndex',NULL,'fa fa-users',0,1,0,1,5,'2020-01-31 13:04:38',NULL),(6,'Mis Estadisticas','Statistic','statistic_builder/show/mis-estadisticas','normal','fa fa-dashboard',0,1,1,1,NULL,'2020-02-04 16:30:23','2020-02-04 16:32:29'),(7,'Estados de Pedidos','Route','AdminMpPedidoEstadoControllerGetIndex',NULL,'fa fa-exchange',0,1,0,1,6,'2020-02-04 16:38:28',NULL),(8,'Pedidos','Route','AdminMpPedidoControllerGetIndex',NULL,'fa fa-shopping-cart',0,1,0,1,7,'2020-02-04 16:44:51',NULL);
/*!40000 ALTER TABLE `cms_menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_menus_privileges`
--

DROP TABLE IF EXISTS `cms_menus_privileges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_menus_privileges` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_cms_menus` int(11) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_menus_privileges`
--

LOCK TABLES `cms_menus_privileges` WRITE;
/*!40000 ALTER TABLE `cms_menus_privileges` DISABLE KEYS */;
INSERT INTO `cms_menus_privileges` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,NULL,1),(7,6,1),(8,7,1),(9,8,1);
/*!40000 ALTER TABLE `cms_menus_privileges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_moduls`
--

DROP TABLE IF EXISTS `cms_moduls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_moduls` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_protected` tinyint(1) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_moduls`
--

LOCK TABLES `cms_moduls` WRITE;
/*!40000 ALTER TABLE `cms_moduls` DISABLE KEYS */;
INSERT INTO `cms_moduls` VALUES (1,'Notifications','fa fa-cog','notifications','cms_notifications','NotificationsController',1,1,'2020-01-25 06:18:52',NULL,NULL),(2,'Privileges','fa fa-cog','privileges','cms_privileges','PrivilegesController',1,1,'2020-01-25 06:18:52',NULL,NULL),(3,'Privileges Roles','fa fa-cog','privileges_roles','cms_privileges_roles','PrivilegesRolesController',1,1,'2020-01-25 06:18:52',NULL,NULL),(4,'Users Management','fa fa-users','users','cms_users','AdminCmsUsersController',0,1,'2020-01-25 06:18:52',NULL,NULL),(5,'Settings','fa fa-cog','settings','cms_settings','SettingsController',1,1,'2020-01-25 06:18:52',NULL,NULL),(6,'Module Generator','fa fa-database','module_generator','cms_moduls','ModulsController',1,1,'2020-01-25 06:18:52',NULL,NULL),(7,'Menu Management','fa fa-bars','menu_management','cms_menus','MenusController',1,1,'2020-01-25 06:18:52',NULL,NULL),(8,'Email Templates','fa fa-envelope-o','email_templates','cms_email_templates','EmailTemplatesController',1,1,'2020-01-25 06:18:52',NULL,NULL),(9,'Statistic Builder','fa fa-dashboard','statistic_builder','cms_statistics','StatisticBuilderController',1,1,'2020-01-25 06:18:52',NULL,NULL),(10,'API Generator','fa fa-cloud-download','api_generator','','ApiCustomController',1,1,'2020-01-25 06:18:52',NULL,NULL),(11,'Log User Access','fa fa-flag-o','logs','cms_logs','LogsController',1,1,'2020-01-25 06:18:52',NULL,NULL),(12,'Categorias','fa fa-level-up','mp_categoria','mp_categoria','AdminMpCategoriaController',0,0,'2020-01-31 06:28:59',NULL,NULL),(13,'Subcategorias','fa fa-level-up','mp_categoria_sub','mp_categoria_sub','AdminMpCategoriaSubController',0,0,'2020-01-31 07:45:31',NULL,NULL),(14,'Banners','fa fa-image','mp_banners','mp_banners','AdminMpBannersController',0,0,'2020-01-31 08:25:09',NULL,NULL),(15,'Productos','fa fa-product-hunt','mp_producto','mp_producto','AdminMpProductoController',0,0,'2020-01-31 09:20:51',NULL,NULL),(16,'Usuario','fa fa-users','mp_usuario','mp_usuario','AdminMpUsuarioController',0,0,'2020-01-31 13:04:38',NULL,NULL),(17,'Estados de Pedidos','fa fa-exchange','mp_pedido_estado','mp_pedido_estado','AdminMpPedidoEstadoController',0,0,'2020-02-04 16:38:28',NULL,NULL),(18,'Pedidos','fa fa-shopping-cart','mp_pedido','mp_pedido','AdminMpPedidoController',0,0,'2020-02-04 16:44:51',NULL,NULL);
/*!40000 ALTER TABLE `cms_moduls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_notifications`
--

DROP TABLE IF EXISTS `cms_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_notifications` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_cms_users` int(11) DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_notifications`
--

LOCK TABLES `cms_notifications` WRITE;
/*!40000 ALTER TABLE `cms_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_privileges`
--

DROP TABLE IF EXISTS `cms_privileges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_privileges` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_superadmin` tinyint(1) DEFAULT NULL,
  `theme_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_privileges`
--

LOCK TABLES `cms_privileges` WRITE;
/*!40000 ALTER TABLE `cms_privileges` DISABLE KEYS */;
INSERT INTO `cms_privileges` VALUES (1,'Super Administrator',1,'skin-blue','2020-01-25 06:18:52',NULL);
/*!40000 ALTER TABLE `cms_privileges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_privileges_roles`
--

DROP TABLE IF EXISTS `cms_privileges_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_privileges_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `is_visible` tinyint(1) DEFAULT NULL,
  `is_create` tinyint(1) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `is_edit` tinyint(1) DEFAULT NULL,
  `is_delete` tinyint(1) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `id_cms_moduls` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_privileges_roles`
--

LOCK TABLES `cms_privileges_roles` WRITE;
/*!40000 ALTER TABLE `cms_privileges_roles` DISABLE KEYS */;
INSERT INTO `cms_privileges_roles` VALUES (1,1,1,1,1,1,1,12,NULL,NULL),(2,1,1,1,1,1,1,4,NULL,NULL),(3,1,1,1,1,1,1,13,NULL,NULL),(4,1,1,1,1,1,1,14,NULL,NULL),(5,1,1,1,1,1,1,15,NULL,NULL),(6,1,1,1,1,1,1,16,NULL,NULL),(7,1,1,1,1,1,1,17,NULL,NULL),(8,1,1,1,1,1,1,18,NULL,NULL);
/*!40000 ALTER TABLE `cms_privileges_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_settings`
--

DROP TABLE IF EXISTS `cms_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_input_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dataenum` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `helper` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `group_setting` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_settings`
--

LOCK TABLES `cms_settings` WRITE;
/*!40000 ALTER TABLE `cms_settings` DISABLE KEYS */;
INSERT INTO `cms_settings` VALUES (1,'login_background_color',NULL,'text',NULL,'Input hexacode','2020-01-25 06:18:52',NULL,'Login Register Style','Login Background Color'),(2,'login_font_color',NULL,'text',NULL,'Input hexacode','2020-01-25 06:18:52',NULL,'Login Register Style','Login Font Color'),(3,'login_background_image',NULL,'upload_image',NULL,NULL,'2020-01-25 06:18:52',NULL,'Login Register Style','Login Background Image'),(4,'email_sender','support@crudbooster.com','text',NULL,NULL,'2020-01-25 06:18:52',NULL,'Email Setting','Email Sender'),(5,'smtp_driver','mail','select','smtp,mail,sendmail',NULL,'2020-01-25 06:18:52',NULL,'Email Setting','Mail Driver'),(6,'smtp_host','','text',NULL,NULL,'2020-01-25 06:18:52',NULL,'Email Setting','SMTP Host'),(7,'smtp_port','25','text',NULL,'default 25','2020-01-25 06:18:52',NULL,'Email Setting','SMTP Port'),(8,'smtp_username','','text',NULL,NULL,'2020-01-25 06:18:52',NULL,'Email Setting','SMTP Username'),(9,'smtp_password','','text',NULL,NULL,'2020-01-25 06:18:52',NULL,'Email Setting','SMTP Password'),(10,'appname','Mi Pedido','text',NULL,NULL,'2020-01-25 06:18:52',NULL,'Application Setting','Application Name'),(11,'default_paper_size','Legal','text',NULL,'Paper size, ex : A4, Legal, etc','2020-01-25 06:18:52',NULL,'Application Setting','Default Paper Print Size'),(12,'logo',NULL,'upload_image',NULL,NULL,'2020-01-25 06:18:52',NULL,'Application Setting','Logo'),(13,'favicon',NULL,'upload_image',NULL,NULL,'2020-01-25 06:18:52',NULL,'Application Setting','Favicon'),(14,'api_debug_mode','true','select','true,false',NULL,'2020-01-25 06:18:52',NULL,'Application Setting','API Debug Mode'),(15,'google_api_key',NULL,'text',NULL,NULL,'2020-01-25 06:18:52',NULL,'Application Setting','Google API Key'),(16,'google_fcm_key',NULL,'text',NULL,NULL,'2020-01-25 06:18:52',NULL,'Application Setting','Google FCM Key');
/*!40000 ALTER TABLE `cms_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_statistic_components`
--

DROP TABLE IF EXISTS `cms_statistic_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_statistic_components` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_cms_statistics` int(11) DEFAULT NULL,
  `componentID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `component_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_name` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `config` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_statistic_components`
--

LOCK TABLES `cms_statistic_components` WRITE;
/*!40000 ALTER TABLE `cms_statistic_components` DISABLE KEYS */;
INSERT INTO `cms_statistic_components` VALUES (1,1,'77d7c2b81e13ac5a3bc0b1c0cdd026e2','smallbox','area1',0,NULL,'{\"name\":\"Subcategorias\",\"icon\":\"ion-list\",\"color\":\"bg-green\",\"link\":\"#\",\"sql\":\"SELECT COUNT(*) FROM mp_categoria_sub\"}','2020-02-04 16:18:18',NULL),(2,1,'eb27f6edf9e37d02b77fa0ad84609cfb','smallbox','area2',0,NULL,'{\"name\":\"Promociones\",\"icon\":\"ion-appstore\",\"color\":\"bg-red\",\"link\":\"#\",\"sql\":\"SELECT COUNT(*) FROM mp_banners\"}','2020-02-04 16:19:20',NULL);
/*!40000 ALTER TABLE `cms_statistic_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_statistics`
--

DROP TABLE IF EXISTS `cms_statistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_statistics` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_statistics`
--

LOCK TABLES `cms_statistics` WRITE;
/*!40000 ALTER TABLE `cms_statistics` DISABLE KEYS */;
INSERT INTO `cms_statistics` VALUES (1,'Mis Estadisticas','mis-estadisticas','2020-02-04 16:17:33',NULL);
/*!40000 ALTER TABLE `cms_statistics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_users`
--

DROP TABLE IF EXISTS `cms_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_users`
--

LOCK TABLES `cms_users` WRITE;
/*!40000 ALTER TABLE `cms_users` DISABLE KEYS */;
INSERT INTO `cms_users` VALUES (1,'Luis Coronel','uploads/1/2020-01/perfil.jpg','admin@admin.com','$2y$10$1TkPKdkAuSbY.yUlNMMGyuaHRMuah4lTCDZYApMeMtA/up6TPYm8i',1,'2020-01-25 06:18:52','2020-01-31 07:44:44','Active');
/*!40000 ALTER TABLE `cms_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2016_08_07_145904_add_table_cms_apicustom',1),(2,'2016_08_07_150834_add_table_cms_dashboard',1),(3,'2016_08_07_151210_add_table_cms_logs',1),(4,'2016_08_07_151211_add_details_cms_logs',1),(5,'2016_08_07_152014_add_table_cms_privileges',1),(6,'2016_08_07_152214_add_table_cms_privileges_roles',1),(7,'2016_08_07_152320_add_table_cms_settings',1),(8,'2016_08_07_152421_add_table_cms_users',1),(9,'2016_08_07_154624_add_table_cms_menus_privileges',1),(10,'2016_08_07_154624_add_table_cms_moduls',1),(11,'2016_08_17_225409_add_status_cms_users',1),(12,'2016_08_20_125418_add_table_cms_notifications',1),(13,'2016_09_04_033706_add_table_cms_email_queues',1),(14,'2016_09_16_035347_add_group_setting',1),(15,'2016_09_16_045425_add_label_setting',1),(16,'2016_09_17_104728_create_nullable_cms_apicustom',1),(17,'2016_10_01_141740_add_method_type_apicustom',1),(18,'2016_10_01_141846_add_parameters_apicustom',1),(19,'2016_10_01_141934_add_responses_apicustom',1),(20,'2016_10_01_144826_add_table_apikey',1),(21,'2016_11_14_141657_create_cms_menus',1),(22,'2016_11_15_132350_create_cms_email_templates',1),(23,'2016_11_15_190410_create_cms_statistics',1),(24,'2016_11_17_102740_create_cms_statistic_components',1),(25,'2017_06_06_164501_add_deleted_at_cms_moduls',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_banners`
--

DROP TABLE IF EXISTS `mp_banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mp_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(50) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  `estado` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_banners`
--

LOCK TABLES `mp_banners` WRITE;
/*!40000 ALTER TABLE `mp_banners` DISABLE KEYS */;
INSERT INTO `mp_banners` VALUES (1,'Descuento 50%','* Mercaderia seleccionada, sujeta a stock','uploads/1/2020-01/3065850.jpg','A'),(2,'Descuentos %','* Aplican Restricciones','uploads/1/2020-01/3331378.jpg','A');
/*!40000 ALTER TABLE `mp_banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_categoria`
--

DROP TABLE IF EXISTS `mp_categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mp_categoria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `imagen` varchar(45) DEFAULT NULL,
  `estado` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_categoria`
--

LOCK TABLES `mp_categoria` WRITE;
/*!40000 ALTER TABLE `mp_categoria` DISABLE KEYS */;
INSERT INTO `mp_categoria` VALUES (1,'Planchas','uploads/1/2020-02/tubos_cuadrados.jpg','A'),(2,'Tubos','uploads/1/2020-01/tubos.jpg','A');
/*!40000 ALTER TABLE `mp_categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_categoria_sub`
--

DROP TABLE IF EXISTS `mp_categoria_sub`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mp_categoria_sub` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_categoria` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  `is_destacada` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_categoria_idx` (`id_categoria`),
  CONSTRAINT `id_categoria` FOREIGN KEY (`id_categoria`) REFERENCES `mp_categoria` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_categoria_sub`
--

LOCK TABLES `mp_categoria_sub` WRITE;
/*!40000 ALTER TABLE `mp_categoria_sub` DISABLE KEYS */;
INSERT INTO `mp_categoria_sub` VALUES (13,2,'Tubos Rectangulares','uploads/1/2020-01/tubos_rectangulares.jpg','S'),(14,2,'Tubos Redondos','uploads/1/2020-01/tubos_redondos.jpg','S'),(15,2,'Tubos Cuadrados','uploads/1/2020-01/tubos_cuadrados.jpg','S');
/*!40000 ALTER TABLE `mp_categoria_sub` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_pedido`
--

DROP TABLE IF EXISTS `mp_pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mp_pedido` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) DEFAULT NULL,
  `id_estado_pedido` int(11) DEFAULT NULL,
  `fecha` timestamp NULL DEFAULT NULL,
  `subtotal` decimal(10,2) DEFAULT NULL,
  `iva` decimal(10,2) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_pedido_usuario_idx` (`id_usuario`),
  KEY `fk_pedido_estado_idx` (`id_estado_pedido`),
  CONSTRAINT `fk_pedido_estado` FOREIGN KEY (`id_estado_pedido`) REFERENCES `mp_pedido_estado` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_pedido_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `mp_usuario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_pedido`
--

LOCK TABLES `mp_pedido` WRITE;
/*!40000 ALTER TABLE `mp_pedido` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_pedido_detalle`
--

DROP TABLE IF EXISTS `mp_pedido_detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mp_pedido_detalle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_producto` int(11) DEFAULT NULL,
  `subtotal` decimal(10,2) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_detalle_producto_idx` (`id_producto`),
  CONSTRAINT `fk_detalle_producto` FOREIGN KEY (`id_producto`) REFERENCES `mp_producto` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_pedido_detalle`
--

LOCK TABLES `mp_pedido_detalle` WRITE;
/*!40000 ALTER TABLE `mp_pedido_detalle` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_pedido_detalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_pedido_estado`
--

DROP TABLE IF EXISTS `mp_pedido_estado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mp_pedido_estado` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `estado` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_pedido_estado`
--

LOCK TABLES `mp_pedido_estado` WRITE;
/*!40000 ALTER TABLE `mp_pedido_estado` DISABLE KEYS */;
INSERT INTO `mp_pedido_estado` VALUES (1,'Entregados','A');
/*!40000 ALTER TABLE `mp_pedido_estado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_producto`
--

DROP TABLE IF EXISTS `mp_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mp_producto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_subcategoria` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `precio` varchar(45) NOT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_subcategoria_producto_idx` (`id_subcategoria`),
  CONSTRAINT `id_subcategoria_producto` FOREIGN KEY (`id_subcategoria`) REFERENCES `mp_categoria_sub` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_producto`
--

LOCK TABLES `mp_producto` WRITE;
/*!40000 ALTER TABLE `mp_producto` DISABLE KEYS */;
INSERT INTO `mp_producto` VALUES (2,15,'Tubo Estructural Negro Cuadrado 30 x 30 x 0.9 mm','8','uploads/1/2020-01/uno.jpg'),(3,15,'Tubo Estructural Negro Cuadrado 30 x 30 x 1.1 mm','8.50','uploads/1/2020-01/dos.jpg');
/*!40000 ALTER TABLE `mp_producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_usuario`
--

DROP TABLE IF EXISTS `mp_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mp_usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `apellido` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `clave` varchar(100) DEFAULT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  `estado` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_usuario`
--

LOCK TABLES `mp_usuario` WRITE;
/*!40000 ALTER TABLE `mp_usuario` DISABLE KEYS */;
INSERT INTO `mp_usuario` VALUES (1,'Luis','Coronel','admin@admin.com','$2y$10$A72HY3ysw0MheCYhqNuL1OoHvFw5PBbzDbp6j3HOezYKuFcO53qVG','admin','uploads/1/2020-01/perfil.jpg','A');
/*!40000 ALTER TABLE `mp_usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-04  7:57:42
