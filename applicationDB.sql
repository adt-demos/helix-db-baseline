SET SESSION sql_require_primary_key = 0;
DROP TABLE IF EXISTS `zzzz`;
/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-11.8.6-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: 10.0.1.4    Database: nc2rktidon
-- ------------------------------------------------------
-- Server version	11.8.6-MariaDB-0+deb13u1 from Debian

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*M!100616 SET @OLD_NOTE_VERBOSITY=@@NOTE_VERBOSITY, NOTE_VERBOSITY=0 */;

--
-- Table structure for table `adtifuja_action_log_config`
--

DROP TABLE IF EXISTS `adtifuja_action_log_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtifuja_action_log_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_title` varchar(255) NOT NULL DEFAULT '',
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `id_holder` varchar(255) DEFAULT NULL,
  `title_holder` varchar(255) DEFAULT NULL,
  `table_name` varchar(255) DEFAULT NULL,
  `text_prefix` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtifuja_action_log_config`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtifuja_action_log_config` WRITE;
/*!40000 ALTER TABLE `adtifuja_action_log_config` DISABLE KEYS */;
INSERT INTO `adtifuja_action_log_config` VALUES
(1,'article','com_content.article','id','title','#__content','PLG_ACTIONLOG_JOOMLA'),
(2,'article','com_content.form','id','title','#__content','PLG_ACTIONLOG_JOOMLA'),
(3,'banner','com_banners.banner','id','name','#__banners','PLG_ACTIONLOG_JOOMLA'),
(4,'user_note','com_users.note','id','subject','#__user_notes','PLG_ACTIONLOG_JOOMLA'),
(5,'media','com_media.file','','name','','PLG_ACTIONLOG_JOOMLA'),
(6,'category','com_categories.category','id','title','#__categories','PLG_ACTIONLOG_JOOMLA'),
(7,'menu','com_menus.menu','id','title','#__menu_types','PLG_ACTIONLOG_JOOMLA'),
(8,'menu_item','com_menus.item','id','title','#__menu','PLG_ACTIONLOG_JOOMLA'),
(9,'newsfeed','com_newsfeeds.newsfeed','id','name','#__newsfeeds','PLG_ACTIONLOG_JOOMLA'),
(10,'link','com_redirect.link','id','old_url','#__redirect_links','PLG_ACTIONLOG_JOOMLA'),
(11,'tag','com_tags.tag','id','title','#__tags','PLG_ACTIONLOG_JOOMLA'),
(12,'style','com_templates.style','id','title','#__template_styles','PLG_ACTIONLOG_JOOMLA'),
(13,'plugin','com_plugins.plugin','extension_id','name','#__extensions','PLG_ACTIONLOG_JOOMLA'),
(14,'component_config','com_config.component','extension_id','name','','PLG_ACTIONLOG_JOOMLA'),
(15,'contact','com_contact.contact','id','name','#__contact_details','PLG_ACTIONLOG_JOOMLA'),
(16,'module','com_modules.module','id','title','#__modules','PLG_ACTIONLOG_JOOMLA'),
(17,'access_level','com_users.level','id','title','#__viewlevels','PLG_ACTIONLOG_JOOMLA'),
(18,'banner_client','com_banners.client','id','name','#__banner_clients','PLG_ACTIONLOG_JOOMLA'),
(19,'application_config','com_config.application','','name','','PLG_ACTIONLOG_JOOMLA'),
(20,'task','com_scheduler.task','id','title','#__scheduler_tasks','PLG_ACTIONLOG_JOOMLA'),
(21,'field','com_fields.field','id','title','#__fields','PLG_ACTIONLOG_JOOMLA'),
(22,'guidedtour','com_guidedtours.state','id','title','#__guidedtours','PLG_ACTIONLOG_JOOMLA'),
(23,'contact','com_contact.form','id','name','#__contact_details','PLG_ACTIONLOG_JOOMLA');
/*!40000 ALTER TABLE `adtifuja_action_log_config` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtifuja_action_logs`
--

DROP TABLE IF EXISTS `adtifuja_action_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtifuja_action_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `message_language_key` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  `log_date` datetime NOT NULL,
  `extension` varchar(50) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT 0,
  `item_id` int(11) NOT NULL DEFAULT 0,
  `ip_address` varchar(40) NOT NULL DEFAULT '0.0.0.0',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_user_id_logdate` (`user_id`,`log_date`),
  KEY `idx_user_id_extension` (`user_id`,`extension`),
  KEY `idx_extension_item_id` (`extension`,`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtifuja_action_logs`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtifuja_action_logs` WRITE;
/*!40000 ALTER TABLE `adtifuja_action_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `adtifuja_action_logs` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtifuja_action_logs_extensions`
--

DROP TABLE IF EXISTS `adtifuja_action_logs_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtifuja_action_logs_extensions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `extension` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtifuja_action_logs_extensions`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtifuja_action_logs_extensions` WRITE;
/*!40000 ALTER TABLE `adtifuja_action_logs_extensions` DISABLE KEYS */;
INSERT INTO `adtifuja_action_logs_extensions` VALUES
(1,'com_banners'),
(2,'com_cache'),
(3,'com_categories'),
(4,'com_config'),
(5,'com_contact'),
(6,'com_content'),
(7,'com_installer'),
(8,'com_media'),
(9,'com_menus'),
(10,'com_messages'),
(11,'com_modules'),
(12,'com_newsfeeds'),
(13,'com_plugins'),
(14,'com_redirect'),
(15,'com_tags'),
(16,'com_templates'),
(17,'com_users'),
(18,'com_checkin'),
(19,'com_scheduler'),
(20,'com_fields'),
(21,'com_guidedtours');
/*!40000 ALTER TABLE `adtifuja_action_logs_extensions` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtifuja_action_logs_users`
--

DROP TABLE IF EXISTS `adtifuja_action_logs_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtifuja_action_logs_users` (
  `user_id` int(10) unsigned NOT NULL,
  `notify` tinyint(3) unsigned NOT NULL,
  `extensions` text NOT NULL,
  PRIMARY KEY (`user_id`),
  KEY `idx_notify` (`notify`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtifuja_action_logs_users`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtifuja_action_logs_users` WRITE;
/*!40000 ALTER TABLE `adtifuja_action_logs_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `adtifuja_action_logs_users` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtifuja_assets`
--

DROP TABLE IF EXISTS `adtifuja_assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtifuja_assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=238 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtifuja_assets`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtifuja_assets` WRITE;
/*!40000 ALTER TABLE `adtifuja_assets` DISABLE KEYS */;
INSERT INTO `adtifuja_assets` VALUES
(1,0,1,350,0,'root.1','Root Asset','{\"core.login.site\":{\"6\":1,\"2\":1},\"core.login.admin\":{\"6\":1},\"core.admin\":{\"8\":1},\"core.manage\":{\"7\":1},\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),
(2,1,2,3,1,'com_admin','com_admin','{}'),
(3,1,4,11,1,'com_banners','com_banners','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(4,1,12,13,1,'com_cache','com_cache','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(5,1,14,15,1,'com_checkin','com_checkin','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(6,1,16,17,1,'com_config','com_config','{}'),
(7,1,18,87,1,'com_contact','com_contact','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(8,1,88,175,1,'com_content','com_content','{\"core.admin\":{\"7\":1},\"core.options\":[],\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}'),
(9,1,176,177,1,'com_cpanel','com_cpanel','{}'),
(10,1,178,179,1,'com_installer','com_installer','{\"core.admin\":[],\"core.manage\":{\"7\":0},\"core.delete\":{\"7\":0},\"core.edit.state\":{\"7\":0}}'),
(11,1,180,181,1,'com_languages','com_languages','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(12,1,182,183,1,'com_login','com_login','{}'),
(13,1,184,185,1,'com_mailto','com_mailto','{}'),
(14,1,186,187,1,'com_massmail','com_massmail','{}'),
(15,1,188,189,1,'com_media','com_media','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":{\"5\":1},\"core.edit\":[],\"core.edit.state\":[]}'),
(16,1,190,191,1,'com_menus','com_menus','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(17,1,37,38,1,'com_messages','com_messages','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(18,1,194,227,1,'com_modules','com_modules','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(19,1,228,235,1,'com_newsfeeds','com_newsfeeds','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(20,1,236,237,1,'com_plugins','com_plugins','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(21,1,238,239,1,'com_redirect','com_redirect','{\"core.admin\":{\"7\":1},\"core.manage\":[]}'),
(22,1,240,241,1,'com_search','com_search','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(23,1,242,243,1,'com_templates','com_templates','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(24,1,244,247,1,'com_users','com_users','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(26,1,248,249,1,'com_wrapper','com_wrapper','{}'),
(33,1,310,311,1,'com_finder','com_finder','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(34,8,105,106,2,'com_content.category.9','Uncategorised','{\"core.create\":{\"10\":0,\"12\":0},\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(35,3,7,8,2,'com_banners.category.10','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(36,7,23,24,2,'com_contact.category.11','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(37,19,231,232,2,'com_newsfeeds.category.12','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(40,3,9,10,2,'com_banners.category.15','Sample Data-Banners','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(41,7,25,86,2,'com_contact.category.16','Sample Data-Contact','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(42,19,233,234,2,'com_newsfeeds.category.17','Sample Data-Newsfeeds','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(44,8,109,150,2,'com_content.category.19','Joomla!','{\"core.create\":{\"10\":0,\"12\":0},\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),
(46,44,136,149,3,'com_content.category.21','Components','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),
(59,41,26,27,3,'com_contact.category.34','Park Site','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(60,41,28,85,3,'com_contact.category.35','Shop Site','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(61,60,29,30,4,'com_contact.category.36','Staff','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(62,60,31,84,4,'com_contact.category.37','Fruit Encyclopedia','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(63,62,32,33,5,'com_contact.category.38','A','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(64,62,34,35,5,'com_contact.category.39','B','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(65,62,36,37,5,'com_contact.category.40','C','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(66,62,38,39,5,'com_contact.category.41','D','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(67,62,40,41,5,'com_contact.category.42','E','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(68,62,42,43,5,'com_contact.category.43','F','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(69,62,44,45,5,'com_contact.category.44','G','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(70,62,46,47,5,'com_contact.category.45','H','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(71,62,48,49,5,'com_contact.category.46','I','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(72,62,50,51,5,'com_contact.category.47','J','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(73,62,52,53,5,'com_contact.category.48','K','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(74,62,54,55,5,'com_contact.category.49','L','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(75,62,56,57,5,'com_contact.category.50','M','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(76,62,58,59,5,'com_contact.category.51','N','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(77,62,60,61,5,'com_contact.category.52','O','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(78,62,62,63,5,'com_contact.category.53','P','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(79,62,64,65,5,'com_contact.category.54','Q','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(80,62,66,67,5,'com_contact.category.55','R','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(81,62,68,69,5,'com_contact.category.56','S','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(82,62,70,71,5,'com_contact.category.57','T','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(83,62,72,73,5,'com_contact.category.58','U','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(84,62,74,75,5,'com_contact.category.59','V','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(85,62,76,77,5,'com_contact.category.60','W','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(86,62,78,79,5,'com_contact.category.61','X','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(87,62,80,81,5,'com_contact.category.62','Y','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(88,62,82,83,5,'com_contact.category.63','Z','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(89,46,137,138,4,'com_content.article.1','Administrator Components','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(100,44,112,113,3,'com_content.category.71','Milky Way','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(104,44,114,115,3,'com_content.article.8','Beginners','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(105,46,139,140,4,'com_content.article.9','Contact','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(106,46,141,142,4,'com_content.article.10','Content','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(119,44,116,117,3,'com_content.article.21','Getting Help','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(120,44,118,119,3,'com_content.article.22','Getting Started','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(122,44,120,121,3,'com_content.article.24','Joomla!','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(130,44,122,123,3,'com_content.article.32','Parameters','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(133,44,124,125,3,'com_content.article.35','Professionals','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(136,44,126,127,3,'com_content.article.38','Sample Sites','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(137,46,143,144,4,'com_content.article.39','Search','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(145,44,128,129,3,'com_content.article.47','The Joomla! Community','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(146,44,130,131,3,'com_content.article.48','The Joomla! Project','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(148,44,132,133,3,'com_content.article.50','Upgraders','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(150,46,145,146,4,'com_content.article.52','Users','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(151,44,134,135,3,'com_content.article.53','Using Joomla!','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(158,46,147,148,4,'com_content.article.60','News Feeds','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(169,24,245,246,2,'com_users.category.77','Uncategorised',''),
(173,1,312,313,1,'com_joomlaupdate','com_joomlaupdate','{\"core.admin\":[],\"core.manage\":[],\"core.delete\":[],\"core.edit.state\":[]}'),
(175,1,314,315,1,'com_tags','com_tags','{\"core.admin\":{\"8\":1},\"core.manage\":{\"7\":1},\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
(176,1,316,317,1,'com_contenthistory','com_contenthistory','{}'),
(177,1,318,319,1,'com_ajax','com_ajax','{}'),
(178,1,320,321,1,'com_postinstall','com_postinstall','{}'),
(179,8,151,174,2,'com_content.category.79','Blog','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),
(183,1,322,323,1,'com_spsimpleportfolio','spsimpleportfolio','{}'),
(185,18,195,196,2,'com_modules.module.17','Breadcrumbs','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
(187,18,197,198,2,'com_modules.module.94','About Helix','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"module.edit.frontend\":[]}'),
(188,18,199,200,2,'com_modules.module.95','Latest News','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
(189,18,201,202,2,'com_modules.module.96','Our Partners','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
(190,18,203,204,2,'com_modules.module.97','Quick Link','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"module.edit.frontend\":[]}'),
(191,179,152,153,3,'com_content.category.80','News','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),
(192,179,154,155,3,'com_content.category.81','Tutorial','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),
(193,179,156,157,3,'com_content.category.82','Review','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),
(194,179,158,159,3,'com_content.category.83','Updates','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),
(195,179,160,161,3,'com_content.article.71','Doner spare ribs pastrami shank','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
(196,179,162,163,3,'com_content.article.72','Jerky shank chicken boudin','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
(197,179,164,165,3,'com_content.article.73','Pellentesque Habitant Morbi Tristique','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
(198,179,166,167,3,'com_content.article.74','Meatball kevin beef ribs shoulder','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
(199,179,168,169,3,'com_content.article.75','5 Effective Email Unsubscribe Pages','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
(200,179,170,171,3,'com_content.article.76','Who Actually Clicks on Banner Ads?','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
(201,179,172,173,3,'com_content.article.77','See the new Miss Universe get her crown','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
(202,18,205,206,2,'com_modules.module.98','Portfolio Module','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
(203,18,207,208,2,'com_modules.module.99','Latest News','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
(205,18,209,210,2,'com_modules.module.101','Information','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
(207,18,211,212,2,'com_modules.module.103','Latest News','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(208,18,213,214,2,'com_modules.module.104','Information','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(209,18,215,216,2,'com_modules.module.105','Off Canvas Menu','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
(211,18,217,218,2,'com_modules.module.107','Portfolio Module -  Portfolio Home','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
(213,1,324,325,1,'com_fields','com_fields','{}'),
(214,1,326,327,1,'com_associations','com_associations','{}'),
(219,1,328,329,1,'com_privacy','com_privacy','{}'),
(220,1,330,331,1,'com_actionlogs','com_actionlogs','{}'),
(225,1,332,333,1,'com_sppagebuilder','SP Page Builder','{}'),
(226,18,219,220,2,'com_modules.module.111','SP Page Builder','{}'),
(227,18,221,222,2,'com_modules.module.131','Search','{}'),
(228,18,223,224,2,'com_modules.module.132','Search','{}'),
(229,18,225,226,2,'com_modules.module.133','Search','{}'),
(230,1,334,335,1,'com_guidedtours','com_guidedtours','{}'),
(231,1,336,337,1,'com_mails','com_mails','{}'),
(232,1,338,345,1,'com_scheduler','com_scheduler','{}'),
(233,1,346,347,1,'com_workflow','com_workflow','{}'),
(234,232,339,340,2,'com_scheduler.task.1','Rotate Logs','{}'),
(235,232,341,342,2,'com_scheduler.task.2','Session GC','{}'),
(236,232,343,344,2,'com_scheduler.task.3','Update Notification','{}'),
(237,1,348,349,1,'com_qsbuilder','com_qsbuilder','{}');
/*!40000 ALTER TABLE `adtifuja_assets` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtifuja_associations`
--

DROP TABLE IF EXISTS `adtifuja_associations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtifuja_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtifuja_associations`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtifuja_associations` WRITE;
/*!40000 ALTER TABLE `adtifuja_associations` DISABLE KEYS */;
/*!40000 ALTER TABLE `adtifuja_associations` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtifuja_banner_clients`
--

DROP TABLE IF EXISTS `adtifuja_banner_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtifuja_banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` mediumtext NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT 0,
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `metakey` text DEFAULT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT 0,
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT -1,
  `track_clicks` tinyint(4) NOT NULL DEFAULT -1,
  `track_impressions` tinyint(4) NOT NULL DEFAULT -1,
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`(100))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtifuja_banner_clients`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtifuja_banner_clients` WRITE;
/*!40000 ALTER TABLE `adtifuja_banner_clients` DISABLE KEYS */;
INSERT INTO `adtifuja_banner_clients` VALUES
(1,'Joomla!','Administrator','email@email.com','',1,NULL,NULL,'',0,'',-1,-1,-1),
(2,'Shop','Example','example@example.com','',1,NULL,NULL,'',0,'',-1,0,0),
(3,'Bookstore','Bookstore Example','example@example.com','',1,NULL,NULL,'',0,'',-1,0,0);
/*!40000 ALTER TABLE `adtifuja_banner_clients` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtifuja_banner_tracks`
--

DROP TABLE IF EXISTS `adtifuja_banner_tracks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtifuja_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtifuja_banner_tracks`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtifuja_banner_tracks` WRITE;
/*!40000 ALTER TABLE `adtifuja_banner_tracks` DISABLE KEYS */;
/*!40000 ALTER TABLE `adtifuja_banner_tracks` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtifuja_banners`
--

DROP TABLE IF EXISTS `adtifuja_banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtifuja_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT 0,
  `type` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT 0,
  `impmade` int(11) NOT NULL DEFAULT 0,
  `clicks` int(11) NOT NULL DEFAULT 0,
  `clickurl` varchar(2048) NOT NULL DEFAULT '',
  `state` tinyint(4) NOT NULL DEFAULT 0,
  `catid` int(10) unsigned NOT NULL DEFAULT 0,
  `description` mediumtext NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `metakey` text DEFAULT NULL,
  `params` mediumtext NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT 0,
  `metakey_prefix` varchar(400) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT -1,
  `track_clicks` tinyint(4) NOT NULL DEFAULT -1,
  `track_impressions` tinyint(4) NOT NULL DEFAULT -1,
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  `reset` datetime DEFAULT NULL,
  `created` datetime NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created_by` int(10) unsigned NOT NULL DEFAULT 0,
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL,
  `modified_by` int(10) unsigned NOT NULL DEFAULT 0,
  `version` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_metakey_prefix` (`metakey_prefix`(100))
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtifuja_banners`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtifuja_banners` WRITE;
/*!40000 ALTER TABLE `adtifuja_banners` DISABLE KEYS */;
INSERT INTO `adtifuja_banners` VALUES
(2,3,0,'Shop 1','shop-1',0,0,0,'http://shop.joomla.org/amazoncom-bookstores.html',1,15,'Get books about Joomla! at the Joomla! Book Shop.','',0,1,'','{\"imageurl\":\"images\\/banners\\/white.png\",\"width\":\"\",\"height\":\"\",\"alt\":\"Joomla! Books\"}',0,'',-1,0,0,NULL,NULL,NULL,NULL,NULL,'2022-11-13 18:54:38','en-GB',912,'Joomla','2022-11-13 18:54:38',912,1),
(3,2,0,'Shop 2','shop-2',0,0,0,'http://shop.joomla.org',1,15,'T Shirts, caps and more from the Joomla! Shop.','',0,2,'','{\"imageurl\":\"images\\/banners\\/white.png\",\"width\":\"\",\"height\":\"\",\"alt\":\"Joomla! Shop\"}',0,'',-1,0,0,NULL,NULL,NULL,NULL,NULL,'2022-11-13 18:54:38','en-GB',912,'Joomla','2022-11-13 18:54:38',912,1),
(4,1,0,'Support Joomla!','support-joomla',0,0,0,'http://contribute.joomla.org',1,15,'Your contributions of time, talent and money make Joomla possible.','',0,3,'','{\"imageurl\":\"images\\/banners\\/white.png\",\"width\":\"\",\"height\":\"\",\"alt\":\"\"}',0,'',-1,0,0,NULL,NULL,NULL,NULL,NULL,'2022-11-13 18:54:38','en-GB',912,'Joomla','2022-11-13 18:54:38',912,1);
/*!40000 ALTER TABLE `adtifuja_banners` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtifuja_categories`
--

DROP TABLE IF EXISTS `adtifuja_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtifuja_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT 0,
  `lft` int(11) NOT NULL DEFAULT 0,
  `rgt` int(11) NOT NULL DEFAULT 0,
  `level` int(10) unsigned NOT NULL DEFAULT 0,
  `path` varchar(400) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT 0,
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT 0,
  `params` text DEFAULT NULL,
  `metadesc` varchar(1024) NOT NULL DEFAULT '' COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL DEFAULT '' COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `created_time` datetime NOT NULL,
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `modified_time` datetime NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT 0,
  `language` char(7) NOT NULL DEFAULT '',
  `version` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_language` (`language`),
  KEY `idx_path` (`path`(100)),
  KEY `idx_alias` (`alias`(100))
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtifuja_categories`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtifuja_categories` WRITE;
/*!40000 ALTER TABLE `adtifuja_categories` DISABLE KEYS */;
INSERT INTO `adtifuja_categories` VALUES
(1,0,0,0,91,0,'','system','ROOT','root','','',1,NULL,NULL,1,'{}','','','',908,'2022-11-13 18:54:38',908,'2022-11-13 18:54:38',0,'*',1),
(9,34,1,5,6,1,'uncategorised','com_content','Uncategorised','uncategorised','','',1,NULL,NULL,1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',908,'2022-11-13 18:54:38',908,'2022-11-13 18:54:38',0,'*',1),
(10,35,1,77,78,1,'uncategorised','com_banners','Uncategorised','uncategorised','','',1,NULL,NULL,1,'{\"target\":\"\",\"image\":\"\",\"foobar\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',908,'2022-11-13 18:54:38',908,'2022-11-13 18:54:38',0,'*',1),
(11,36,1,73,74,1,'uncategorised','com_contact','Uncategorised','uncategorised','','',1,NULL,NULL,1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',908,'2022-11-13 18:54:38',908,'2022-11-13 18:54:38',0,'*',1),
(12,37,1,9,10,1,'uncategorised','com_newsfeeds','Uncategorised','uncategorised','','',1,NULL,NULL,1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',908,'2022-11-13 18:54:38',908,'2022-11-13 18:54:38',0,'*',1),
(15,40,1,75,76,1,'sample-data-banners','com_banners','Sample Data-Banners','sample-data-banners','','',1,NULL,NULL,1,'{\"target\":\"\",\"image\":\"\",\"foobar\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',908,'2022-11-13 18:54:38',908,'2022-11-13 18:54:38',0,'*',1),
(16,41,1,11,72,1,'sample-data-contact','com_contact','Sample Data-Contact','sample-data-contact','','',1,NULL,NULL,1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',908,'2022-11-13 18:54:38',908,'2022-11-13 18:54:38',0,'*',1),
(17,42,1,7,8,1,'sample-data-newsfeeds','com_newsfeeds','Sample Data-Newsfeeds','sample-data-newsfeeds','','',1,NULL,NULL,1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',908,'2022-11-13 18:54:38',908,'2022-11-13 18:54:38',0,'*',1),
(19,44,1,1,4,1,'joomla','com_content','Joomla!','joomla','','',1,NULL,NULL,1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',908,'2022-11-13 18:54:38',908,'2022-11-13 18:54:38',0,'*',1),
(21,46,19,2,3,2,'joomla/components','com_content','Components','components','','<p>Components are larger extensions that produce the major content for your site. Each component has one or more \"views\" that control how content is displayed. In the Joomla administrator there are additional extensions such as Menus, Redirection, and the extension managers.</p>',1,NULL,NULL,1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',908,'2022-11-13 18:54:38',908,'2022-11-13 18:54:38',0,'*',1),
(34,59,16,12,13,2,'sample-data-contact/park-site','com_contact','Park Site','park-site','','',1,NULL,NULL,1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',908,'2022-11-13 18:54:38',908,'2022-11-13 18:54:38',0,'en-GB',1),
(35,60,16,14,71,2,'sample-data-contact/shop-site','com_contact','Shop Site','shop-site','','',1,NULL,NULL,1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',908,'2022-11-13 18:54:38',908,'2022-11-13 18:54:38',0,'*',1),
(36,61,35,15,16,3,'sample-data-contact/shop-site/staff','com_contact','Staff','staff','','<p>Please feel free to contact our staff at any time should you need assistance.</p>',1,NULL,NULL,1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',908,'2022-11-13 18:54:38',908,'2022-11-13 18:54:38',0,'*',1),
(37,62,35,17,70,3,'sample-data-contact/shop-site/fruit-encyclopedia','com_contact','Fruit Encyclopedia','fruit-encyclopedia','','<p> </p><p>Our directory of information about different kinds of fruit.</p><p>We love fruit and want the world to know more about all of its many varieties.</p><p>Although it is small now, we work on it whenever we have a chance.</p><p>All of the images can be found in <a href=\"http://commons.wikimedia.org/wiki/Main_Page\">Wikimedia Commons</a>.</p><p><img src=\"images/sampledata/fruitshop/apple.jpg\" border=\"0\" alt=\"Apples\" title=\"Apples\" /></p><p><em>This encyclopedia is implemented using the contact component, each fruit a separate contact and a category for each letter. A CSS style is used to create the horizontal layout of the alphabet headings. </em></p><p><em>If you wanted to, you could allow some users (such as your growers) to have access to just this category in the contact component and let them help you to create new content for the encyclopedia.</em></p><p> </p>',1,NULL,NULL,1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',908,'2022-11-13 18:54:38',908,'2022-11-13 18:54:38',0,'*',1),
(38,63,37,18,19,4,'sample-data-contact/shop-site/fruit-encyclopedia/a','com_contact','A','a','','',1,NULL,NULL,1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',908,'2022-11-13 18:54:38',908,'2022-11-13 18:54:38',0,'*',1),
(39,64,37,20,21,4,'sample-data-contact/shop-site/fruit-encyclopedia/b','com_contact','B','b','','',1,NULL,NULL,1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',908,'2022-11-13 18:54:38',908,'2022-11-13 18:54:38',0,'*',1),
(40,65,37,22,23,4,'sample-data-contact/shop-site/fruit-encyclopedia/c','com_contact','C','c','','',1,NULL,NULL,1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',908,'2022-11-13 18:54:38',908,'2022-11-13 18:54:38',0,'*',1),
(41,66,37,24,25,4,'sample-data-contact/shop-site/fruit-encyclopedia/d','com_contact','D','d','','',1,NULL,NULL,1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',908,'2022-11-13 18:54:38',908,'2022-11-13 18:54:38',0,'*',1),
(42,67,37,26,27,4,'sample-data-contact/shop-site/fruit-encyclopedia/e','com_contact','E','e','','',0,NULL,NULL,1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',908,'2022-11-13 18:54:38',908,'2022-11-13 18:54:38',0,'*',1),
(43,68,37,28,29,4,'sample-data-contact/shop-site/fruit-encyclopedia/f','com_contact','F','f','','',1,NULL,NULL,1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',908,'2022-11-13 18:54:38',908,'2022-11-13 18:54:38',0,'*',1),
(44,69,37,30,31,4,'sample-data-contact/shop-site/fruit-encyclopedia/g','com_contact','G','g','','',1,NULL,NULL,1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',908,'2022-11-13 18:54:38',908,'2022-11-13 18:54:38',0,'*',1),
(45,70,37,32,33,4,'sample-data-contact/shop-site/fruit-encyclopedia/h','com_contact','H','h','','',0,NULL,NULL,1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',908,'2022-11-13 18:54:38',908,'2022-11-13 18:54:38',0,'*',1),
(46,71,37,34,35,4,'sample-data-contact/shop-site/fruit-encyclopedia/i','com_contact','I','i','','',1,NULL,NULL,1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',908,'2022-11-13 18:54:38',908,'2022-11-13 18:54:38',0,'*',1),
(47,72,37,36,37,4,'sample-data-contact/shop-site/fruit-encyclopedia/j','com_contact','J','j','','',1,NULL,NULL,1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',908,'2022-11-13 18:54:38',908,'2022-11-13 18:54:38',0,'*',1),
(48,73,37,38,39,4,'sample-data-contact/shop-site/fruit-encyclopedia/k','com_contact','K','k','','',1,NULL,NULL,1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',908,'2022-11-13 18:54:38',908,'2022-11-13 18:54:38',0,'*',1),
(49,74,37,40,41,4,'sample-data-contact/shop-site/fruit-encyclopedia/l','com_contact','L','l','','',1,NULL,NULL,1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',908,'2022-11-13 18:54:38',908,'2022-11-13 18:54:38',0,'*',1),
(50,75,37,42,43,4,'sample-data-contact/shop-site/fruit-encyclopedia/m','com_contact','M','m','','',1,NULL,NULL,1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',908,'2022-11-13 18:54:38',908,'2022-11-13 18:54:38',0,'*',1),
(51,76,37,44,45,4,'sample-data-contact/shop-site/fruit-encyclopedia/n','com_contact','N','n','','',1,NULL,NULL,1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',908,'2022-11-13 18:54:38',908,'2022-11-13 18:54:38',0,'*',1),
(52,77,37,46,47,4,'sample-data-contact/shop-site/fruit-encyclopedia/o','com_contact','O','o','','',1,NULL,NULL,1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',908,'2022-11-13 18:54:38',908,'2022-11-13 18:54:38',0,'*',1),
(53,78,37,48,49,4,'sample-data-contact/shop-site/fruit-encyclopedia/p','com_contact','P','p','','',1,NULL,NULL,1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',908,'2022-11-13 18:54:38',908,'2022-11-13 18:54:38',0,'*',1),
(54,79,37,50,51,4,'sample-data-contact/shop-site/fruit-encyclopedia/q','com_contact','Q','q','','',1,NULL,NULL,1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',908,'2022-11-13 18:54:38',908,'2022-11-13 18:54:38',0,'*',1),
(55,80,37,52,53,4,'sample-data-contact/shop-site/fruit-encyclopedia/r','com_contact','R','r','','',1,NULL,NULL,1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',908,'2022-11-13 18:54:38',908,'2022-11-13 18:54:38',0,'*',1),
(56,81,37,54,55,4,'sample-data-contact/shop-site/fruit-encyclopedia/s','com_contact','S','s','','',1,NULL,NULL,1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',908,'2022-11-13 18:54:38',908,'2022-11-13 18:54:38',0,'*',1),
(57,82,37,56,57,4,'sample-data-contact/shop-site/fruit-encyclopedia/t','com_contact','T','t','','',1,NULL,NULL,1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',908,'2022-11-13 18:54:38',908,'2022-11-13 18:54:38',0,'*',1),
(58,83,37,58,59,4,'sample-data-contact/shop-site/fruit-encyclopedia/u','com_contact','U','u','','',1,NULL,NULL,1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',908,'2022-11-13 18:54:38',908,'2022-11-13 18:54:38',0,'*',1),
(59,84,37,60,61,4,'sample-data-contact/shop-site/fruit-encyclopedia/v','com_contact','V','v','','',1,NULL,NULL,1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',908,'2022-11-13 18:54:38',908,'2022-11-13 18:54:38',0,'*',1),
(60,85,37,62,63,4,'sample-data-contact/shop-site/fruit-encyclopedia/w','com_contact','W','w','','',1,NULL,NULL,1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',908,'2022-11-13 18:54:38',908,'2022-11-13 18:54:38',0,'*',1),
(61,86,37,64,65,4,'sample-data-contact/shop-site/fruit-encyclopedia/x','com_contact','X','x','','',1,NULL,NULL,1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',908,'2022-11-13 18:54:38',908,'2022-11-13 18:54:38',0,'*',1),
(62,87,37,66,67,4,'sample-data-contact/shop-site/fruit-encyclopedia/y','com_contact','Y','y','','',1,NULL,NULL,1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',908,'2022-11-13 18:54:38',908,'2022-11-13 18:54:38',0,'*',1),
(63,88,37,68,69,4,'sample-data-contact/shop-site/fruit-encyclopedia/z','com_contact','Z','z','','',1,NULL,NULL,1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',908,'2022-11-13 18:54:38',908,'2022-11-13 18:54:38',0,'*',1),
(77,169,1,79,80,1,'uncategorised','com_users','Uncategorised','uncategorised','','',1,NULL,NULL,1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',908,'2022-11-13 18:54:38',908,'2022-11-13 18:54:38',0,'*',1),
(79,179,1,81,90,1,'blog','com_content','Blog','blog','','',1,NULL,NULL,1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',908,'2022-11-13 18:54:38',908,'2022-11-13 18:54:38',0,'*',1),
(80,191,79,82,83,2,'blog/news','com_content','News','news','','',1,NULL,NULL,1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',908,'2022-11-13 18:54:38',908,'2022-11-13 18:54:38',0,'*',1),
(81,192,79,84,85,2,'blog/tutorial','com_content','Tutorial','tutorial','','',1,NULL,NULL,1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',908,'2022-11-13 18:54:38',908,'2022-11-13 18:54:38',0,'*',1),
(82,193,79,86,87,2,'blog/review','com_content','Review','review','','',1,NULL,NULL,1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',908,'2022-11-13 18:54:38',908,'2022-11-13 18:54:38',0,'*',1),
(83,194,79,88,89,2,'blog/updates','com_content','Updates','updates','','',1,NULL,NULL,1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',908,'2022-11-13 18:54:38',908,'2022-11-13 18:54:38',0,'*',1);
/*!40000 ALTER TABLE `adtifuja_categories` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtifuja_contact_details`
--

DROP TABLE IF EXISTS `adtifuja_contact_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtifuja_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `con_position` varchar(255) DEFAULT NULL,
  `address` mediumtext DEFAULT NULL,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` longtext DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `published` tinyint(1) NOT NULL DEFAULT 0,
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `params` mediumtext NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `catid` int(11) NOT NULL DEFAULT 0,
  `access` int(10) unsigned NOT NULL DEFAULT 0,
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL DEFAULT '',
  `sortname2` varchar(255) NOT NULL DEFAULT '',
  `sortname3` varchar(255) NOT NULL DEFAULT '',
  `language` varchar(7) NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL DEFAULT 0,
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL,
  `modified_by` int(10) unsigned NOT NULL DEFAULT 0,
  `metakey` text DEFAULT NULL,
  `metadesc` mediumtext NOT NULL,
  `metadata` mediumtext NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Set if article is featured.',
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT 1,
  `hits` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtifuja_contact_details`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtifuja_contact_details` WRITE;
/*!40000 ALTER TABLE `adtifuja_contact_details` DISABLE KEYS */;
INSERT INTO `adtifuja_contact_details` VALUES
(1,'Contact Name Here','name','Position','Street Address','Suburb','State','Country','Zip Code','Telephone','Fax','<p>Information about or by the contact.</p>','images/powered_by.png','email@example.com',1,1,NULL,NULL,1,'{\"show_contact_category\":\"\",\"show_contact_list\":\"\",\"presentation_style\":\"\",\"show_name\":\"\",\"show_position\":\"\",\"show_email\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"\",\"show_postcode\":\"\",\"show_country\":\"\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_misc\":\"\",\"show_image\":\"\",\"allow_vcard\":\"\",\"show_articles\":\"\",\"show_profile\":\"\",\"show_links\":\"1\",\"linka_name\":\"Twitter\",\"linka\":\"http:\\/\\/twitter.com\\/joomla\",\"linkb_name\":\"YouTube\",\"linkb\":\"http:\\/\\/www.youtube.com\\/user\\/joomla\",\"linkc_name\":\"Facebook\",\"linkc\":\"http:\\/\\/www.facebook.com\\/joomla\",\"linkd_name\":\"FriendFeed\",\"linkd\":\"http:\\/\\/friendfeed.com\\/joomla\",\"linke_name\":\"Scribed\",\"linke\":\"http:\\/\\/www.scribd.com\\/people\\/view\\/504592-joomla\",\"contact_layout\":\"\",\"show_email_form\":\"\",\"show_email_copy\":\"\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"\",\"custom_reply\":\"\",\"redirect\":\"\"}',0,16,1,'','','last','first','middle','en-GB','2022-11-13 18:54:38',912,'Joomla','2022-11-13 18:54:38',912,'','','{\"robots\":\"\",\"rights\":\"\"}',1,NULL,NULL,1,16),
(2,'Webmaster','webmaster','','','','','','','','','','','webmaster@example.com',0,1,NULL,NULL,1,'{\"show_contact_category\":\"\",\"show_contact_list\":\"\",\"presentation_style\":\"\",\"show_name\":\"\",\"show_position\":\"\",\"show_email\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"\",\"show_postcode\":\"\",\"show_country\":\"\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_misc\":\"\",\"show_image\":\"\",\"allow_vcard\":\"\",\"show_articles\":\"\",\"show_profile\":\"\",\"show_links\":\"\",\"linka_name\":\"\",\"linka\":\"\",\"linkb_name\":\"\",\"linkb\":\"\",\"linkc_name\":\"\",\"linkc\":\"\",\"linkd_name\":\"\",\"linkd\":\"\",\"linke_name\":\"\",\"linke\":\"\",\"show_email_form\":\"1\",\"show_email_copy\":\"1\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"1\",\"custom_reply\":\"\",\"redirect\":\"\"}',0,34,1,'','','','','','en-GB','2022-11-13 18:54:38',912,'Joomla','2022-11-13 18:54:38',912,'','','{\"robots\":\"\",\"rights\":\"\"}',1,NULL,NULL,1,3),
(3,'Owner','owner','','','','','','','','','<p>I\'m the owner of this store.</p>','','',0,1,NULL,NULL,2,'{\"show_contact_category\":\"\",\"show_contact_list\":\"\",\"presentation_style\":\"\",\"show_name\":\"\",\"show_position\":\"\",\"show_email\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"\",\"show_postcode\":\"\",\"show_country\":\"\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_misc\":\"\",\"show_image\":\"\",\"allow_vcard\":\"\",\"show_articles\":\"\",\"show_profile\":\"\",\"show_links\":\"\",\"linka_name\":\"\",\"linka\":\"\",\"linkb_name\":\"\",\"linkb\":\"\",\"linkc_name\":\"\",\"linkc\":\"\",\"linkd_name\":\"\",\"linkd\":\"\",\"linke_name\":\"\",\"linke\":\"\",\"show_email_form\":\"\",\"show_email_copy\":\"\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"\",\"custom_reply\":\"\",\"redirect\":\"\"}',0,36,1,'','','','','','*','2022-11-13 18:54:38',912,'Joomla','2022-11-13 18:54:38',912,'','','{\"robots\":\"\",\"rights\":\"\"}',1,NULL,NULL,1,1),
(4,'Buyer','buyer','','','','','','','','','<p>I am in charge of buying fruit. If you sell good fruit, contact me.</p>','','',0,1,NULL,NULL,1,'{\"show_contact_category\":\"\",\"show_contact_list\":\"\",\"presentation_style\":\"\",\"show_name\":\"\",\"show_position\":\"\",\"show_email\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"\",\"show_postcode\":\"\",\"show_country\":\"\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_misc\":\"\",\"show_image\":\"\",\"allow_vcard\":\"\",\"show_articles\":\"\",\"show_profile\":\"\",\"show_links\":\"0\",\"linka_name\":\"\",\"linka\":\"\",\"linkb_name\":\"\",\"linkb\":\"\",\"linkc_name\":\"\",\"linkc\":\"\",\"linkd_name\":\"\",\"linkd\":\"\",\"linke_name\":\"\",\"linke\":\"\",\"show_email_form\":\"\",\"show_email_copy\":\"\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"\",\"custom_reply\":\"\",\"redirect\":\"\"}',0,36,1,'','','','','','*','2022-11-13 18:54:38',912,'Joomla','2022-11-13 18:54:38',912,'','','{\"robots\":\"\",\"rights\":\"\"}',1,NULL,NULL,1,4),
(5,'Bananas','bananas','Scientific Name: Musa','Image Credit: Enzik\r\nRights: Creative Commons Share Alike Unported 3.0\r\nSource: http://commons.wikimedia.org/wiki/File:Bananas_-_Morocco.jpg','','Type: Herbaceous','Large Producers: India, China, Brasil','','','','<p>Bananas are a great source of potassium.</p>\r\n<p> </p>','images/sampledata/fruitshop/bananas_2.jpg','',0,1,NULL,NULL,1,'{\"show_contact_category\":\"show_with_link\",\"show_contact_list\":\"\",\"presentation_style\":\"plain\",\"show_name\":\"\",\"show_position\":\"1\",\"show_email\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"1\",\"show_postcode\":\"\",\"show_country\":\"1\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_misc\":\"\",\"show_image\":\"\",\"allow_vcard\":\"\",\"show_articles\":\"\",\"show_profile\":\"\",\"show_links\":\"1\",\"linka_name\":\"Wikipedia: Banana English\",\"linka\":\"http:\\/\\/en.wikipedia.org\\/wiki\\/Banana\",\"linkb_name\":\"Wikipedia:  \\u0939\\u093f\\u0928\\u094d\\u0926\\u0940 \\u0915\\u0947\\u0932\\u093e\",\"linkb\":\"http:\\/\\/hi.wikipedia.org\\/wiki\\/%E0%A4%95%E0%A5%87%E0%A4%B2%E0%A4%BE\",\"linkc_name\":\"Wikipedia:Banana Portugu\\u00eas\",\"linkc\":\"http:\\/\\/pt.wikipedia.org\\/wiki\\/Banana\",\"linkd_name\":\"Wikipedia: \\u0411\\u0430\\u043d\\u0430\\u043d  \\u0420\\u0443\\u0441\\u0441\\u043a\\u0438\\u0439\",\"linkd\":\"http:\\/\\/ru.wikipedia.org\\/\\u0411\\u0430\\u043d\\u0430\\u043d\",\"linke_name\":\"\",\"linke\":\"\",\"contact_layout\":\"beez5:encyclopedia\"}',0,39,1,'','','','','','*','2022-11-13 18:54:38',912,'Joomla','2022-11-13 18:54:38',912,'','','{\"robots\":\"\",\"rights\":\"\"}',0,NULL,NULL,1,0),
(6,'Apples','apples','Scientific Name: Malus domestica','Image Credit: Fievet\r\nRights: Public Domain\r\nSource: http://commons.wikimedia.org/wiki/File:Pommes_vertes.JPG','','Family: Rosaceae','Large: Producers: China, United States','','','','<p>Apples are a versatile fruit, used for eating, cooking, and preserving.</p>\r\n<p>There are more that 7500 different kinds of apples grown around the world.</p>','images/sampledata/fruitshop/apple.jpg','',0,1,NULL,NULL,1,'{\"show_contact_category\":\"\",\"show_contact_list\":\"\",\"presentation_style\":\"plain\",\"show_name\":\"\",\"show_position\":\"\",\"show_email\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"\",\"show_postcode\":\"\",\"show_country\":\"\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_misc\":\"\",\"show_image\":\"\",\"allow_vcard\":\"\",\"show_articles\":\"\",\"show_profile\":\"\",\"show_links\":\"1\",\"linka_name\":\"Wikipedia: Apples English\",\"linka\":\"http:\\/\\/en.wikipedia.org\\/wiki\\/Apple\",\"linkb_name\":\"Wikipedia: Manzana Espa\\u00f1ol \",\"linkb\":\"http:\\/\\/es.wikipedia.org\\/wiki\\/Manzana\",\"linkc_name\":\"Wikipedia: \\u82f9\\u679c \\u4e2d\\u6587\",\"linkc\":\"http:\\/\\/zh.wikipedia.org\\/zh\\/\\u82f9\\u679c\",\"linkd_name\":\"Wikipedia: Tofaa Kiswahili\",\"linkd\":\"http:\\/\\/sw.wikipedia.org\\/wiki\\/Tofaa\",\"linke_name\":\"\",\"linke\":\"\",\"contact_layout\":\"beez5:encyclopedia\"}',0,38,1,'','','','','','*','2022-11-13 18:54:38',912,'Joomla','2022-11-13 18:54:38',912,'','','{\"robots\":\"\",\"rights\":\"\"}',0,NULL,NULL,1,1),
(7,'Tamarind','tamarind','Scientific Name: Tamarindus indica','Image Credit: Franz Eugen Köhler, Köhler\'s Medizinal-Pflanzen \r\nRights: Public Domain\r\nSource:http://commons.wikimedia.org/wiki/File:Koeh-134.jpg','','Family: Fabaceae','Large Producers: India, United States','','','','<p>Tamarinds are a versatile fruit used around the world. In its young form it is used in hot sauces; ripened it is the basis for many refreshing drinks.</p>\r\n<p> </p>','images/sampledata/fruitshop/tamarind.jpg','',0,1,NULL,NULL,1,'{\"show_contact_category\":\"\",\"show_contact_list\":\"\",\"presentation_style\":\"plain\",\"show_name\":\"\",\"show_position\":\"\",\"show_email\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"\",\"show_postcode\":\"\",\"show_country\":\"\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_misc\":\"\",\"show_image\":\"\",\"allow_vcard\":\"\",\"show_articles\":\"\",\"show_profile\":\"\",\"show_links\":\"1\",\"linka_name\":\"Wikipedia: Tamarind English\",\"linka\":\"http:\\/\\/en.wikipedia.org\\/wiki\\/Tamarind\",\"linkb_name\":\"Wikipedia: \\u09a4\\u09c7\\u0981\\u09a4\\u09c1\\u09b2  \\u09ac\\u09be\\u0982\\u09b2\\u09be  \",\"linkb\":\"http:\\/\\/bn.wikipedia.org\\/wiki\\/\\u09a4\\u09c7\\u0981\\u09a4\\u09c1\\u09b2 \",\"linkc_name\":\"Wikipedia: Tamarinier Fran\\u00e7ais\",\"linkc\":\"http:\\/\\/fr.wikipedia.org\\/wiki\\/Tamarinier\",\"linkd_name\":\"Wikipedia:Tamaline lea faka-Tonga\",\"linkd\":\"http:\\/\\/to.wikipedia.org\\/wiki\\/Tamaline\",\"linke_name\":\"\",\"linke\":\"\",\"contact_layout\":\"beez5:encyclopedia\"}',0,57,1,'','','','','','*','2022-11-13 18:54:38',912,'Joomla','2022-11-13 18:54:38',912,'','','{\"robots\":\"\",\"rights\":\"\"}',0,NULL,NULL,1,0),
(8,'Shop Address','shop-address','','','Our City','Our Province','Our Country','','555-555-5555','','<p>Here are directions for how to get to our shop.</p>','','',0,1,NULL,NULL,1,'{\"show_contact_category\":\"\",\"show_contact_list\":\"\",\"presentation_style\":\"\",\"show_name\":\"\",\"show_position\":\"\",\"show_email\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"\",\"show_postcode\":\"\",\"show_country\":\"\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_misc\":\"\",\"show_image\":\"\",\"allow_vcard\":\"\",\"show_articles\":\"\",\"show_profile\":\"\",\"show_links\":\"\",\"linka_name\":\"\",\"linka\":\"\",\"linkb_name\":\"\",\"linkb\":\"\",\"linkc_name\":\"\",\"linkc\":\"\",\"linkd_name\":\"\",\"linkd\":\"\",\"linke_name\":\"\",\"linke\":\"\",\"show_email_form\":\"\",\"show_email_copy\":\"\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"\",\"custom_reply\":\"\",\"redirect\":\"\"}',0,35,1,'','','','','','*','2022-11-13 18:54:38',912,'Joomla','2022-11-13 18:54:38',912,'','','{\"robots\":\"\",\"rights\":\"\"}',1,NULL,NULL,1,1);
/*!40000 ALTER TABLE `adtifuja_contact_details` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtifuja_content`
--

DROP TABLE IF EXISTS `adtifuja_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtifuja_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `introtext` longtext NOT NULL,
  `fulltext` longtext NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT 0,
  `catid` int(10) unsigned NOT NULL DEFAULT 0,
  `created` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL DEFAULT 0,
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL,
  `modified_by` int(10) unsigned NOT NULL DEFAULT 0,
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  `images` mediumtext NOT NULL,
  `urls` mediumtext NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT 1,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `metakey` text DEFAULT NULL,
  `metadesc` mediumtext NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT 0,
  `hits` int(10) unsigned NOT NULL DEFAULT 0,
  `metadata` mediumtext NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `note` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_alias` (`alias`(191))
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtifuja_content`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtifuja_content` WRITE;
/*!40000 ALTER TABLE `adtifuja_content` DISABLE KEYS */;
INSERT INTO `adtifuja_content` VALUES
(1,89,'Administrator Components','administrator-components','<p>All components are also used in the administrator area of your website. In addition to the ones listed here, there are components in the administrator that do not have direct front end displays, but do help shape your site. The most important ones for most users are</p>\r\n<ul>\r\n<li>Media Manager</li>\r\n<li>Extensions Manager</li>\r\n<li>Menu Manager</li>\r\n<li>Global Configuration</li>\r\n<li>Banners</li>\r\n<li>Redirect</li>\r\n</ul>\r\n<hr title=\"Media Manager\" alt=\"Media Manager\" class=\"system-pagebreak\" style=\"color: gray; border: 1px dashed gray;\" />\r\n<p> </p>\r\n<h3>Media Manager</h3>\r\n<p>The media manager component lets you upload and insert images into content throughout your site. Optionally, you can enable the flash uploader which will allow you to to upload multiple images. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help31:Content_Media_Manager\">Help</a></p>\r\n<hr title=\"Extensions Manager\" alt=\"Extensions Manager\" class=\"system-pagebreak\" style=\"color: gray; border: 1px dashed gray;\" />\r\n<h3>Extensions Manager</h3>\r\n<p>The extensions manager lets you install, update, uninstall and manage all of your extensions. The extensions manager has been extensively redesigned, although the core install and uninstall functionality remains the same as in Joomla! 1.5. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help31:Extensions_Extension_Manager_Install\">Help</a></p>\r\n<hr title=\"Menu Manager\" alt=\"Menu Manager\" class=\"system-pagebreak\" style=\"color: gray; border: 1px dashed gray;\" />\r\n<h3>Menu Manager</h3>\r\n<p>The menu manager lets you create the menus you see displayed on your site. It also allows you to assign modules and template styles to specific menu links. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help31:Menus_Menu_Manager\">Help</a></p>\r\n<hr title=\"Global Configuration\" alt=\"Global Configuration\" class=\"system-pagebreak\" style=\"color: gray; border: 1px dashed gray;\" />\r\n<h3>Global Configuration</h3>\r\n<p>The global configuration is where the site administrator configures things such as whether search engine friendly urls are enabled, the site meta data (descriptive text used by search engines and indexers) and other functions. For many beginning users simply leaving the settings on default is a good way to begin, although when your site is ready for the public you will want to change the meta data to match its content. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help31:Site_Global_Configuration\">Help</a></p>\r\n<hr title=\"Banners\" alt=\"Banners\" class=\"system-pagebreak\" style=\"color: gray; border: 1px dashed gray;\" />\r\n<h3>Banners</h3>\r\n<p>The banners component provides a simple way to display a rotating image in a module and, if you wish to have advertising, a way to track the number of times an image is viewed and clicked. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help31:Components_Banners_Banners_Edit\">Help</a></p>\r\n<hr title=\"Redirect\" class=\"system-pagebreak\" />\r\n<h3><br />Redirect</h3>\r\n<p>The redirect component is used to manage broken links that produce Page Not Found (404) errors. If enabled it will allow you to redirect broken links to specific pages. It can also be used to manage migration related URL changes. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help31:Components_Redirect_Manager\">Help</a></p>','',1,21,'2022-11-13 18:54:38',912,'Joomla','2022-11-13 18:54:38',912,NULL,NULL,'2022-11-13 18:54:38',NULL,'{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,7,'','',1,7,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
(8,104,'Beginners','beginners','<p>If this is your first Joomla! site or your first web site, you have come to the right place. Joomla will help you get your website up and running quickly and easily.</p>\r\n<p>Start off using your site by logging in using the administrator account you created when you installed Joomla.</p>\r\n','\r\n<p>Explore the articles and other resources right here on your site data to learn more about how Joomla works. (When you\'re done reading, you can delete or archive all of this.) You will also probably want to visit the Beginners\' Areas of the <a href=\"http://docs.joomla.org/Beginners\">Joomla documentation</a> and <a href=\"http://forum.joomla.org\">support forums</a>.</p>\r\n<p>You\'ll also want to sign up for the Joomla Security Mailing list and the Announcements mailing list. For inspiration visit the <a href=\"http://community.joomla.org/showcase/\">Joomla! Site Showcase</a> to see an amazing array of ways people use Joomla to tell their stories on the web.</p>\r\n<p>The basic Joomla installation will let you get a great site up and running, but when you are ready for more features the power of Joomla is in the creative ways that developers have extended it to do all kinds of things. Visit the <a href=\"http://extensions.joomla.org/\">Joomla! Extensions Directory</a> to see thousands of extensions that can do almost anything you could want on a website. Can\'t find what you need? You may want to find a Joomla professional in the <a href=\"http://resources.joomla.org/\">Joomla! Resource Directory</a>.</p>\r\n<p>Want to learn more? Consider attending a <a href=\"http://community.joomla.org/events.html\">Joomla! Day</a> or other event or joining a local <a href=\"http://community.joomla.org/user-groups.html\">Joomla! Users Group</a>. Can\'t find one near you? Start one yourself.</p>',1,19,'2022-11-13 18:54:38',912,'Joomla','2022-11-13 18:54:38',912,NULL,NULL,'2022-11-13 18:54:38',NULL,'{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,4,'','',1,5,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',1,'*',''),
(9,105,'Contacts','contact','<p>The contact component provides a way to provide contact forms and information for your site or to create a complex directory that can be used for many different purposes. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help31:Components_Contacts_Contacts\">Help</a></p>','',1,21,'2022-11-13 18:54:38',912,'Joomla','2022-11-13 18:54:38',912,NULL,NULL,'2022-11-13 18:54:38',NULL,'','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\"}',1,2,'','',1,1,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
(10,106,'Content','content','<p>The content component (com_content) is what you use to write articles. It is extremely flexible and has the largest number of built in views. Articles can be created and edited from the front end, making content the easiest component to use to create your site content. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help31:Content_Article_Manager\">Help</a></p>','',1,21,'2022-11-13 18:54:38',912,'Joomla','2022-11-13 18:54:38',912,NULL,NULL,'2022-11-13 18:54:38',NULL,'','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\"}',1,1,'','',1,3,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
(21,119,'Getting Help','getting-help','<p> There are lots of places you can get help with Joomla!. In many places in your site administrator you will see the help icon. Click on this for more information about the options and functions of items on your screen. Other places to get help are:</p>\r\n<ul>\r\n<li><a href=\"http://forum.joomla.org\">Support Forums</a></li>\r\n<li><a href=\"http://docs.joomla.org\">Documentation</a></li>\r\n<li><a href=\"http://resources.joomla.org\">Professionals</a></li>\r\n<li><a href=\"http://shop.joomla.org/amazoncom-bookstores.html\">Books</a></li>\r\n</ul>','',1,19,'2022-11-13 18:54:38',912,'Joomla','2022-11-13 18:54:38',912,NULL,NULL,'2022-11-13 18:54:38',NULL,'{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":null,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":null,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":null,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"0\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',2,8,'','',1,5,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
(22,120,'Getting Started','getting-started','<p>It\'s easy to get started creating your website. Knowing some of the basics will help.</p>\r\n<h3>What is a Content Management System?</h3>\r\n<p>A content management system is software that allows you to create and manage webpages easily by separating the creation of your content from the mechanics required to present it on the web.</p>\r\n<p>In this site, the content is stored in a <em>database</em>. The look and feel are created by a <em>template</em>. The Joomla! software brings together the template and the content to create web pages.</p>\r\n<h3>Site and Administrator</h3>\r\n<p>Your site actually has two separate sites. The site (also called the front end) is what visitors to your site will see. The administrator (also called the back end) is only used by people managing your site. You can access the administrator by clicking the \"Site Administrator\" link on the \"This Site\" menu or by adding /administrator to the end of you domain name.</p>\r\n<p>Log in to the administrator using the username and password created during the installation of Joomla.</p>\r\n<h3>Logging in</h3>\r\n<p>To login to the front end of your site use the login form or the login menu link on the \"This Site\" menu. Use the user name and password that were created as part of the installation process. Once logged-in you will be able to create and edit articles.</p>\r\n<p>In managing your site, you will be able to create content that only logged-in users are able to see.</p>\r\n<h3>Creating an article</h3>\r\n<p>Once you are logged-in, a new menu will be visible. To create a new article, click on the \"submit article\" link on that menu.</p>\r\n<p>The new article interface gives you a lot of options, but all you need to do is add a title and put something in the content area. To make it easy to find, set the state to published and put it in the Joomla category.</p>\r\n<div>You can edit an existing article by clicking on the edit icon (this only displays to users who have the right to edit).</div>\r\n<h3>Learn more</h3>\r\n<p>There is much more to learn about how to use Joomla! to create the web site you envision. You can learn much more at the <a href=\"http://docs.joomla.org\">Joomla! documentation site</a> and on the<a href=\"http://forum.joomla.org\"> Joomla! forums</a>.</p>','',1,19,'2022-11-13 18:54:38',912,'Joomla','2022-11-13 18:54:38',912,NULL,NULL,'2022-11-13 18:54:38',NULL,'{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,9,'','',1,68,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
(24,122,'Joomla!','joomla','<p>Congratulations! You have a Joomla site! Joomla makes it easy to build a website just the way you want it and keep it simple to update and maintain.</p>\r\n<p>Joomla is a flexible and powerful platform, whether you are building a small site for yourself or a huge site with hundreds of thousands of visitors. Joomla is open source, which means you can make it work just the way you want it to.</p>\r\n<p>The content in this installation of Joomla has been designed to give you an in depth tour of Joomla\'s features.</p>','',1,19,'2022-11-13 18:54:38',912,'Joomla','2022-11-13 18:54:38',912,NULL,NULL,'2022-11-13 18:54:38',NULL,'{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":null,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":null,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":null,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"0\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',3,2,'','',1,10,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',1,'*',''),
(32,130,'Options','options','<p>As you make your Joomla! site you will control the details of the display using <em>options</em> also referred to as <em>parameter</em><strong>s</strong>. Options control everything from whether the author\'s name is displayed to who can view what to the number of items shown on a list.</p>\r\n<p>Default options for each component are changed using the Options button on the component toolbar.</p>\r\n<p>Options can also be set on an individual item, such as an article or contact and in menu links.</p>\r\n<p>If you are happy with how your site looks, it is fine to leave all of the options set to the defaults that were created when your site was installed. As you become more experienced with Joomla you will use options more.</p>\r\n<p> </p>','',1,19,'2022-11-13 18:54:38',912,'Joomla','2022-11-13 18:54:38',912,NULL,NULL,'2022-11-13 18:54:38',NULL,'{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,10,'','',1,8,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
(35,133,'Professionals','professionals','<p>Joomla! 3 continues development of the Joomla Platform and CMS as a powerful and flexible way to bring your vision of the web to reality. With the new administrator interface and adoption of Twitter Bootstrap, the ability to control its look and the management of extensions is now complete.</p>\r\n','\r\n<p>Working with multiple template styles and overrides for the same views, creating the design you want is easier than it has ever been. Limiting support to PHP 5.3.10 and above makes Joomla lighter and faster than ever. </p>\r\n<p>The separation of the Joomla! Platform project from the Joomla! CMS project makes continuous development of new, powerful APIs and continuous improvement of existing APIs possible while maintaining the stability of the CMS that millions of webmasters and professionals rely upon.</p>',1,19,'2022-11-13 18:54:38',912,'Joomla','2022-11-13 18:54:38',912,NULL,NULL,'2022-11-13 18:54:38',NULL,'{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":null,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":null,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":null,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"0\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',2,5,'','',1,43,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',1,'*',''),
(38,136,'Sample Sites','sample-sites','<p>Your installation includes sample data, designed to show you some of the options you have for building your website. In addition to information about Joomla! there are two sample \"sites within a site\" designed to help you get started with building your own site.</p>\r\n<p>The first site is a simple site about <a href=\"index.php?Itemid=243\">Australian Parks</a>. It shows how you can quickly and easily build a personal site with just the building blocks that are part of Joomla. It includes a personal blog, weblinks, and a very simple image gallery.</p>\r\n<p>The second site is slightly more complex and represents what you might do if you are building a site for a small business, in this case a <a href=\"index.php/welcome.html\"></a><a href=\"index.php?Itemid=429\">Fruit Shop</a>.</p>\r\n<p>In building either style site, or something completely different, you will probably want to add <a href=\"http://extensions.joomla.org\">extensions</a> and either create or purchase your own template. Many Joomla users start by modifying the <a href=\"http://docs.joomla.org/How_do_you_modify_a_template%3F\">templates</a> that come with the core distribution so that they include special images and other design elements that relate to their site\'s focus.</p>','',1,19,'2022-11-13 18:54:38',912,'Joomla','2022-11-13 18:54:38',912,NULL,NULL,'2022-11-13 18:54:38',NULL,'{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,11,'','',1,15,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
(39,137,'Search','search-component','<p>Joomla! 2.5 offers two search options.</p>\r\n<p>The Basic Search component provides basic search functionality for the information contained in your core components. Many extensions can also be searched by the search component. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help31:Components_Search\">Help</a></p>\r\n<p>The Smart Search component offers searching similar to that found in major search engines. Smart Search is disabled by default. If you choose to enable it you will need to take several steps. First, enable the Smart Search Plugin in the plugin manager. Then, if you are using the Basic Search Module replace it with the Smart Search Module. Finally, if you have already created content, go to the Smart Search component in your site administrator and click the Index icon. Once indexing of your content is complete, Smart Search will be ready to use. Help.</p>','',1,21,'2022-11-13 18:54:38',912,'Joomla','2022-11-13 18:54:38',912,NULL,NULL,'2022-11-13 18:54:38',NULL,'{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,3,'','',1,27,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
(47,145,'The Joomla! Community','the-joomla-community','<p>Joomla means All Together, and it is a community of people all working and having fun together that makes Joomla possible. Thousands of people each year participate in the Joomla community, and we hope you will be one of them.</p>\r\n<p>People with all kinds of skills, of all skill levels and from around the world are welcome to join in. Participate in the <a href=\"http://joomla.org\">Joomla.org</a> family of websites (the<a href=\"http://forum.joomla.org\"> forum </a>is a great place to start). Come to a <a href=\"http://community.joomla.org/events.html\">Joomla! event</a>. Join or start a <a href=\"http://community.joomla.org/user-groups.html\">Joomla! Users Group</a>. Whether you are a developer, site administrator, designer, end user or fan, there are ways for you to participate and contribute.</p>','',1,19,'2022-11-13 18:54:38',912,'Joomla','2022-11-13 18:54:38',912,NULL,NULL,'2022-11-13 18:54:38',NULL,'{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,3,'','',1,2,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
(48,146,'The Joomla! Project','the-joomla-project','<p>The Joomla Project consists of all of the people who make and support the Joomla Web Platform and Content Management System.</p>\r\n<p>Our mission is to provide a flexible platform for digital publishing and collaboration.</p>\r\n<p>The core values are:</p>\r\n<ul>\r\n<li>Freedom</li>\r\n<li>Equality</li>\r\n<li>Trust</li>\r\n<li>Community</li>\r\n<li>Collaboration</li>\r\n<li>Usability</li>\r\n</ul>\r\n<p>In our vision, we see:</p>\r\n<ul>\r\n<li>People publishing and collaborating in their communities and around the world</li>\r\n<li>Software that is free, secure, and high-quality</li>\r\n<li>A community that is enjoyable and rewarding to participate in</li>\r\n<li>People around the world using their preferred languages</li>\r\n<li>A project that acts autonomously</li>\r\n<li>A project that is socially responsible</li>\r\n<li>A project dedicated to maintaining the trust of its users</li>\r\n</ul>\r\n<p>There are millions of users around the world and thousands of people who contribute to the Joomla Project. They work in three main groups: the Production Working Group, responsible for everything that goes into software and documentation; the Community Working Group, responsible for creating a nurturing the community; and Open Source Matters, the non profit organization responsible for managing legal, financial and organizational issues.</p>\r\n<p>Joomla is a free and open source project, which uses the GNU General Public License version 2 or later.</p>','',1,19,'2022-11-13 18:54:38',912,'Joomla','2022-11-13 18:54:38',912,NULL,NULL,'2022-11-13 18:54:38',NULL,'{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,1,'','',1,4,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
(50,148,'Upgraders','upgraders','<p>If you are an experienced Joomla! user, this Joomla site will seem very familiar but also very different. The biggest change is the new administrator interface and the adoption of responsive design. Hundreds of other improvements have been made.</p>\r\n<p> </p>\r\n<p> </p>','',1,19,'2022-11-13 18:54:38',912,'Joomla','2022-11-13 18:54:38',912,NULL,NULL,'2022-11-13 18:54:38',NULL,'{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":null,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":null,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":null,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"0\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',3,6,'','',1,3,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',1,'*',''),
(52,150,'Users','users-component','<p>The users extension lets your site visitors register, login and logout, change their passwords and other information, and recover lost passwords. In the administrator it allows you to create, block and manage users and create user groups and access levels. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help31:Users_User_Manager\">Help</a></p>\r\n<p>Please note that some of the user views will not display if you are not logged-in to the site.</p>','',1,21,'2022-11-13 18:54:38',912,'Joomla','2022-11-13 18:54:38',912,NULL,NULL,'2022-11-13 18:54:38',NULL,'','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\"}',1,5,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
(53,151,'Using Joomla!','using-joomla','<p>With Joomla you can create anything from a simple personal website to a complex ecommerce or social site with millions of visitors.</p>\r\n<p>This section of the sample data provides you with a brief introduction to Joomla concepts and reference material to help you understand how Joomla works.</p>\r\n<p><em>When you no longer need the sample data, you can can simply unpublish the sample data category found within each extension in the site administrator or you may completely delete each item and all of the categories. </em></p>','',1,19,'2022-11-13 18:54:38',912,'Joomla','2022-11-13 18:54:38',912,NULL,NULL,'2022-11-13 18:54:38',NULL,'{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,7,'','',1,9,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
(60,158,'News Feeds','news-feeds','<p>News Feeds (com_newsfeeds) provides a way to organize and present news feeds. News feeds are a way that you present information from another site on your site. For example, the joomla.org website has numerous feeds that you can incorporate on your site. You an use menus to present a single feed, a list of feeds in a category, or a list of all feed categories. <a href=\"http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help31:Components_Newsfeeds_Feeds\">Help</a></p>','',1,21,'2022-11-13 18:54:38',912,'Joomla','2022-11-13 18:54:38',912,NULL,NULL,'2022-11-13 18:54:38',NULL,'{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,4,'','',1,16,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
(71,195,'Doner spare ribs pastrami shank','doner-spare-ribs-pastrami-shank','<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>\r\n','\r\n<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, commodo vitae, ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui. Donec non enim in turpis pulvinar facilisis. Ut felis. Praesent dapibus, neque id cursus faucibus, tortor neque egestas augue, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus</p>',1,79,'2022-11-13 18:54:38',912,'','2022-11-13 18:54:38',912,NULL,NULL,'2022-11-13 18:54:38',NULL,'{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\",\"post_format\":\"status\",\"gallery\":\"\",\"audio\":\"\",\"video\":\"\",\"link_title\":\"\",\"link_url\":\"\",\"quote_text\":\"\",\"quote_author\":\"\",\"post_status\":\"<blockquote class=\\\"twitter-tweet\\\" lang=\\\"en\\\"><p>Published a new blog entry One Month Extra for all JoomShaper Members in News. <a href=\\\"http:\\/\\/t.co\\/2pQYdykKy8\\\">http:\\/\\/t.co\\/2pQYdykKy8<\\/a><\\/p>&mdash; JoomShaper (@joomshaper) <a href=\\\"https:\\/\\/twitter.com\\/joomshaper\\/status\\/562210375480139777\\\">February 2, 2015<\\/a><\\/blockquote>\\r\\n<script async src=\\\"\\/\\/platform.twitter.com\\/widgets.js\\\" charset=\\\"utf-8\\\"><\\/script>\"}',4,6,'','',1,25,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
(72,196,'Jerky shank chicken boudin','jerky-shank-chicken-boudin','<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>\r\n','\r\n<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, commodo vitae, ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui. Donec non enim in turpis pulvinar facilisis. Ut felis. Praesent dapibus, neque id cursus faucibus, tortor neque egestas augue, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus</p>',1,79,'2022-11-13 18:54:38',912,'','2022-11-13 18:54:38',912,NULL,NULL,'2022-11-13 18:54:38',NULL,'{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\",\"post_format\":\"video\",\"gallery\":\"\",\"audio\":\"\",\"video\":\"http:\\/\\/vimeo.com\\/43426940\",\"link_title\":\"\",\"link_url\":\"\",\"quote_text\":\"\",\"quote_author\":\"\",\"post_status\":\"\"}',4,5,'','',1,58,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
(73,197,'Pellentesque Habitant Morbi Tristique','leberkas-tail-swine-pork','<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>\r\n','\r\n<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, commodo vitae, ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui. Donec non enim in turpis pulvinar facilisis. Ut felis. Praesent dapibus, neque id cursus faucibus, tortor neque egestas augue, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus</p>',1,79,'2022-11-13 18:54:38',912,'','2022-11-13 18:54:38',912,NULL,NULL,'2022-11-13 18:54:38',NULL,'{\"image_intro\":\"images\\/blog\\/blog01.jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/blog\\/blog01.jpg\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\",\"spfeatured_image\":\"\",\"spfeatured_image_alt\":\"joomla\",\"post_format\":\"standard\",\"gallery\":\"\",\"audio\":\"\",\"video\":\"\",\"link_title\":\"\",\"link_url\":\"\",\"quote_text\":\"\",\"quote_author\":\"\",\"post_status\":\"\"}',6,4,'','',1,173,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
(74,198,'Meatball kevin beef ribs shoulder','meatball-kevin-beef-ribs-shoulder','<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>\r\n','\r\n<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, commodo vitae, ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui. Donec non enim in turpis pulvinar facilisis. Ut felis. Praesent dapibus, neque id cursus faucibus, tortor neque egestas augue, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus</p>',1,79,'2022-11-13 18:54:38',912,'','2022-11-13 18:54:38',912,NULL,NULL,'2022-11-13 18:54:38',NULL,'{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\",\"post_format\":\"gallery\",\"gallery\":\"{\\\"gallery_images\\\":[\\\"images\\/blog\\/blog06.jpg\\\",\\\"images\\/blog\\/blog05.jpg\\\",\\\"images\\/blog\\/blog04.jpg\\\"]}\",\"audio\":\"\",\"video\":\"\",\"link_title\":\"\",\"link_url\":\"\",\"quote_text\":\"\",\"quote_author\":\"\",\"post_status\":\"\"}',3,3,'','',1,50,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
(75,199,'5 Effective Email Unsubscribe Pages','5-effective-email-unsubscribe-pages','<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>\r\n','\r\n<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, commodo vitae, ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui. Donec non enim in turpis pulvinar facilisis. Ut felis. Praesent dapibus, neque id cursus faucibus, tortor neque egestas augue, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus</p>',1,79,'2022-11-13 18:54:38',912,'','2022-11-13 18:54:38',912,NULL,NULL,'2022-11-13 18:54:38',NULL,'{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\",\"post_format\":\"audio\",\"gallery\":\"\",\"audio\":\"<iframe width=\\\"100%\\\" height=\\\"450\\\" scrolling=\\\"no\\\" frameborder=\\\"no\\\" src=\\\"https:\\/\\/w.soundcloud.com\\/player\\/?url=https%3A\\/\\/api.soundcloud.com\\/tracks\\/28830162&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false&amp;visual=true\\\"><\\/iframe>\",\"video\":\"\",\"link_title\":\"\",\"link_url\":\"\",\"quote_text\":\"\",\"quote_author\":\"\",\"post_status\":\"\"}',4,2,'','',1,24,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
(76,200,'Who Actually Clicks on Banner Ads?','who-actually-clicks-on-banner-ads','<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>\r\n','\r\n<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, commodo vitae, ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui. Donec non enim in turpis pulvinar facilisis. Ut felis. Praesent dapibus, neque id cursus faucibus, tortor neque egestas augue, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus</p>',1,79,'2022-11-13 18:54:38',912,'','2022-11-13 18:54:38',912,NULL,NULL,'2022-11-13 18:54:38',NULL,'{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\",\"post_format\":\"link\",\"gallery\":\"\",\"audio\":\"\",\"video\":\"\",\"link_title\":\"Responive Joomla Templates\",\"link_url\":\"http:\\/\\/www.joomshaper.com\\/joomla-templates\",\"quote_text\":\"\",\"quote_author\":\"\",\"post_status\":\"\"}',3,1,'','',1,39,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
(77,201,'See the new Miss Universe get her crown','see-the-new-miss-universe-get-her-crown','<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>\r\n','\r\n<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, commodo vitae, ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui. Donec non enim in turpis pulvinar facilisis. Ut felis. Praesent dapibus, neque id cursus faucibus, tortor neque egestas augue, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus</p>',1,79,'2022-11-13 18:54:38',912,'','2022-11-13 18:54:38',912,NULL,NULL,'2022-11-13 18:54:38',NULL,'{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\",\"post_format\":\"quote\",\"gallery\":\"\",\"audio\":\"\",\"video\":\"\",\"link_title\":\"\",\"link_url\":\"\",\"quote_text\":\"Pork meatball ground round prosciutto. Sirloin bresaola ball tip shank tail porchetta pork boudin filet mignon flank jowl salami. Filet mignon bresaola pork boudin capicola prosciutto. Frankfurter chicken leberkas drumstick ball tip turducken rump spare ribs meatball. Tail salami pork loin ham. Drumstick flank porchetta, hamburger ham swine biltong chicken pancetta. Spare ribs prosciutto t-bone.\",\"quote_author\":\"- John Doe\",\"post_status\":\"\"}',2,0,'','',1,47,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*','');
/*!40000 ALTER TABLE `adtifuja_content` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtifuja_content_frontpage`
--

DROP TABLE IF EXISTS `adtifuja_content_frontpage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtifuja_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `featured_up` datetime DEFAULT NULL,
  `featured_down` datetime DEFAULT NULL,
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtifuja_content_frontpage`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtifuja_content_frontpage` WRITE;
/*!40000 ALTER TABLE `adtifuja_content_frontpage` DISABLE KEYS */;
INSERT INTO `adtifuja_content_frontpage` VALUES
(8,2,NULL,NULL),
(24,1,NULL,NULL),
(35,4,NULL,NULL),
(50,3,NULL,NULL);
/*!40000 ALTER TABLE `adtifuja_content_frontpage` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtifuja_content_rating`
--

DROP TABLE IF EXISTS `adtifuja_content_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtifuja_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT 0,
  `rating_sum` int(10) unsigned NOT NULL DEFAULT 0,
  `rating_count` int(10) unsigned NOT NULL DEFAULT 0,
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtifuja_content_rating`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtifuja_content_rating` WRITE;
/*!40000 ALTER TABLE `adtifuja_content_rating` DISABLE KEYS */;
INSERT INTO `adtifuja_content_rating` VALUES
(72,10,2,'10.0.1.6'),
(73,10,2,'10.0.1.6'),
(74,9,2,'14.1.100.85'),
(75,4,1,'::1'),
(77,5,1,'::1');
/*!40000 ALTER TABLE `adtifuja_content_rating` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtifuja_content_types`
--

DROP TABLE IF EXISTS `adtifuja_content_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtifuja_content_types` (
  `type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_title` varchar(255) NOT NULL DEFAULT '',
  `type_alias` varchar(400) NOT NULL DEFAULT '',
  `table` varchar(2048) NOT NULL DEFAULT '',
  `rules` mediumtext NOT NULL,
  `field_mappings` mediumtext NOT NULL,
  `router` varchar(255) NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) DEFAULT NULL COMMENT 'JSON string for com_contenthistory options',
  PRIMARY KEY (`type_id`),
  KEY `idx_alias` (`type_alias`(100))
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtifuja_content_types`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtifuja_content_types` WRITE;
/*!40000 ALTER TABLE `adtifuja_content_types` DISABLE KEYS */;
INSERT INTO `adtifuja_content_types` VALUES
(1,'Article','com_content.article','{\"special\":{\"dbtable\":\"#__content\",\"key\":\"id\",\"type\":\"ArticleTable\",\"prefix\":\"Joomla\\\\Component\\\\Content\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}','','{\"common\": {\"note\": \"note\", \"asset_id\": \"asset_id\", \"core_body\": \"introtext\", \"core_hits\": \"hits\", \"core_urls\": \"urls\", \"core_alias\": \"alias\", \"core_catid\": \"catid\", \"core_state\": \"state\", \"core_title\": \"title\", \"core_access\": \"access\", \"core_images\": \"images\", \"core_params\": \"attribs\", \"core_metakey\": \"metakey\", \"core_version\": \"version\", \"core_featured\": \"featured\", \"core_language\": \"language\", \"core_metadata\": \"metadata\", \"core_metadesc\": \"metadesc\", \"core_ordering\": \"ordering\", \"core_publish_up\": \"publish_up\", \"core_xreference\": \"xreference\", \"core_created_time\": \"created\", \"core_publish_down\": \"publish_down\", \"core_modified_time\": \"modified\", \"core_content_item_id\": \"id\", \"core_created_user_id\": \"created_by\", \"core_created_by_alias\": \"created_by_alias\"}, \"special\": {\"fulltext\": \"fulltext\"}}','ContentHelperRoute::getArticleRoute','{\"formFile\": \"administrator/components/com_content/models/forms/article.xml\", \"hideFields\": [\"asset_id\", \"checked_out\", \"checked_out_time\", \"version\"], \"convertToInt\": [\"publish_up\", \"publish_down\", \"featured\", \"ordering\"], \"displayLookup\": [{\"targetTable\": \"#__categories\", \"sourceColumn\": \"catid\", \"targetColumn\": \"id\", \"displayColumn\": \"title\"}, {\"targetTable\": \"#__users\", \"sourceColumn\": \"created_by\", \"targetColumn\": \"id\", \"displayColumn\": \"name\"}, {\"targetTable\": \"#__viewlevels\", \"sourceColumn\": \"access\", \"targetColumn\": \"id\", \"displayColumn\": \"title\"}, {\"targetTable\": \"#__users\", \"sourceColumn\": \"modified_by\", \"targetColumn\": \"id\", \"displayColumn\": \"name\"}, {\"targetTable\": \"#__tags\", \"sourceColumn\": \"tags\", \"targetColumn\": \"id\", \"displayColumn\": \"title\"}], \"ignoreChanges\": [\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"ordering\"]}'),
(2,'Weblink','com_weblinks.weblink','{\"special\":{\"dbtable\":\"#__weblinks\",\"key\":\"id\",\"type\":\"Weblink\",\"prefix\":\"WeblinksTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"state\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{}}','WeblinksHelperRoute::getWeblinkRoute','{\"formFile\":\"administrator\\/components\\/com_weblinks\\/models\\/forms\\/weblink.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"featured\",\"images\"], \"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"ordering\"], \"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"], \"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
(3,'Contact','com_contact.contact','{\"special\":{\"dbtable\":\"#__contact_details\",\"key\":\"id\",\"type\":\"ContactTable\",\"prefix\":\"Joomla\\\\Component\\\\Contact\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"address\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"image\", \"core_urls\":\"webpage\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{\"con_position\":\"con_position\",\"suburb\":\"suburb\",\"state\":\"state\",\"country\":\"country\",\"postcode\":\"postcode\",\"telephone\":\"telephone\",\"fax\":\"fax\",\"misc\":\"misc\",\"email_to\":\"email_to\",\"default_con\":\"default_con\",\"user_id\":\"user_id\",\"mobile\":\"mobile\",\"sortname1\":\"sortname1\",\"sortname2\":\"sortname2\",\"sortname3\":\"sortname3\"}}','ContactHelperRoute::getContactRoute','{\"formFile\": \"administrator/components/com_contact/models/forms/contact.xml\", \"hideFields\": [\"default_con\", \"checked_out\", \"checked_out_time\", \"version\", \"xreference\"], \"convertToInt\": [\"publish_up\", \"publish_down\", \"featured\", \"ordering\"], \"displayLookup\": [{\"targetTable\": \"#__users\", \"sourceColumn\": \"created_by\", \"targetColumn\": \"id\", \"displayColumn\": \"name\"}, {\"targetTable\": \"#__categories\", \"sourceColumn\": \"catid\", \"targetColumn\": \"id\", \"displayColumn\": \"title\"}, {\"targetTable\": \"#__users\", \"sourceColumn\": \"modified_by\", \"targetColumn\": \"id\", \"displayColumn\": \"name\"}, {\"targetTable\": \"#__viewlevels\", \"sourceColumn\": \"access\", \"targetColumn\": \"id\", \"displayColumn\": \"title\"}, {\"targetTable\": \"#__users\", \"sourceColumn\": \"user_id\", \"targetColumn\": \"id\", \"displayColumn\": \"name\"}, {\"targetTable\": \"#__tags\", \"sourceColumn\": \"tags\", \"targetColumn\": \"id\", \"displayColumn\": \"title\"}], \"ignoreChanges\": [\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"ordering\"]}'),
(4,'Newsfeed','com_newsfeeds.newsfeed','{\"special\":{\"dbtable\":\"#__newsfeeds\",\"key\":\"id\",\"type\":\"NewsfeedTable\",\"prefix\":\"Joomla\\\\Component\\\\Newsfeeds\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{\"numarticles\":\"numarticles\",\"cache_time\":\"cache_time\",\"rtl\":\"rtl\"}}','NewsfeedsHelperRoute::getNewsfeedRoute','{\"formFile\": \"administrator/components/com_newsfeeds/models/forms/newsfeed.xml\", \"hideFields\": [\"asset_id\", \"checked_out\", \"checked_out_time\", \"version\"], \"convertToInt\": [\"publish_up\", \"publish_down\", \"featured\", \"ordering\"], \"displayLookup\": [{\"targetTable\": \"#__categories\", \"sourceColumn\": \"catid\", \"targetColumn\": \"id\", \"displayColumn\": \"title\"}, {\"targetTable\": \"#__users\", \"sourceColumn\": \"created_by\", \"targetColumn\": \"id\", \"displayColumn\": \"name\"}, {\"targetTable\": \"#__viewlevels\", \"sourceColumn\": \"access\", \"targetColumn\": \"id\", \"displayColumn\": \"title\"}, {\"targetTable\": \"#__users\", \"sourceColumn\": \"modified_by\", \"targetColumn\": \"id\", \"displayColumn\": \"name\"}, {\"targetTable\": \"#__tags\", \"sourceColumn\": \"tags\", \"targetColumn\": \"id\", \"displayColumn\": \"title\"}], \"ignoreChanges\": [\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"ordering\"]}'),
(5,'User','com_users.user','{\"special\":{\"dbtable\":\"#__users\",\"key\":\"id\",\"type\":\"UserTable\",\"prefix\":\"Joomla\\\\Component\\\\Users\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"null\",\"core_alias\":\"username\",\"core_created_time\":\"registerDate\",\"core_modified_time\":\"null\",\"core_body\":\"null\", \"core_hits\":\"null\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"access\":\"null\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"null\", \"core_language\":\"null\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"null\", \"core_ordering\":\"null\", \"core_metakey\":\"null\", \"core_metadesc\":\"null\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{}}','',''),
(6,'Article Category','com_content.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','ContentHelperRoute::getCategoryRoute','{\"formFile\": \"administrator/components/com_categories/models/forms/category.xml\", \"hideFields\": [\"asset_id\", \"checked_out\", \"checked_out_time\", \"version\", \"lft\", \"rgt\", \"level\", \"path\", \"extension\"], \"convertToInt\": [\"publish_up\", \"publish_down\"], \"displayLookup\": [{\"targetTable\": \"#__users\", \"sourceColumn\": \"created_user_id\", \"targetColumn\": \"id\", \"displayColumn\": \"name\"}, {\"targetTable\": \"#__viewlevels\", \"sourceColumn\": \"access\", \"targetColumn\": \"id\", \"displayColumn\": \"title\"}, {\"targetTable\": \"#__users\", \"sourceColumn\": \"modified_user_id\", \"targetColumn\": \"id\", \"displayColumn\": \"name\"}, {\"targetTable\": \"#__categories\", \"sourceColumn\": \"parent_id\", \"targetColumn\": \"id\", \"displayColumn\": \"title\"}, {\"targetTable\": \"#__tags\", \"sourceColumn\": \"tags\", \"targetColumn\": \"id\", \"displayColumn\": \"title\"}], \"ignoreChanges\": [\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"]}'),
(7,'Contact Category','com_contact.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','ContactHelperRoute::getCategoryRoute','{\"formFile\": \"administrator/components/com_categories/models/forms/category.xml\", \"hideFields\": [\"asset_id\", \"checked_out\", \"checked_out_time\", \"version\", \"lft\", \"rgt\", \"level\", \"path\", \"extension\"], \"convertToInt\": [\"publish_up\", \"publish_down\"], \"displayLookup\": [{\"targetTable\": \"#__users\", \"sourceColumn\": \"created_user_id\", \"targetColumn\": \"id\", \"displayColumn\": \"name\"}, {\"targetTable\": \"#__viewlevels\", \"sourceColumn\": \"access\", \"targetColumn\": \"id\", \"displayColumn\": \"title\"}, {\"targetTable\": \"#__users\", \"sourceColumn\": \"modified_user_id\", \"targetColumn\": \"id\", \"displayColumn\": \"name\"}, {\"targetTable\": \"#__categories\", \"sourceColumn\": \"parent_id\", \"targetColumn\": \"id\", \"displayColumn\": \"title\"}, {\"targetTable\": \"#__tags\", \"sourceColumn\": \"tags\", \"targetColumn\": \"id\", \"displayColumn\": \"title\"}], \"ignoreChanges\": [\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"]}'),
(8,'Newsfeeds Category','com_newsfeeds.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','NewsfeedsHelperRoute::getCategoryRoute','{\"formFile\": \"administrator/components/com_categories/models/forms/category.xml\", \"hideFields\": [\"asset_id\", \"checked_out\", \"checked_out_time\", \"version\", \"lft\", \"rgt\", \"level\", \"path\", \"extension\"], \"convertToInt\": [\"publish_up\", \"publish_down\"], \"displayLookup\": [{\"targetTable\": \"#__users\", \"sourceColumn\": \"created_user_id\", \"targetColumn\": \"id\", \"displayColumn\": \"name\"}, {\"targetTable\": \"#__viewlevels\", \"sourceColumn\": \"access\", \"targetColumn\": \"id\", \"displayColumn\": \"title\"}, {\"targetTable\": \"#__users\", \"sourceColumn\": \"modified_user_id\", \"targetColumn\": \"id\", \"displayColumn\": \"name\"}, {\"targetTable\": \"#__categories\", \"sourceColumn\": \"parent_id\", \"targetColumn\": \"id\", \"displayColumn\": \"title\"}, {\"targetTable\": \"#__tags\", \"sourceColumn\": \"tags\", \"targetColumn\": \"id\", \"displayColumn\": \"title\"}], \"ignoreChanges\": [\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"]}'),
(9,'Weblinks Category','com_weblinks.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','WeblinksHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(10,'Tag','com_tags.tag','{\"special\":{\"dbtable\":\"#__tags\",\"key\":\"tag_id\",\"type\":\"TagTable\",\"prefix\":\"Joomla\\\\Component\\\\Tags\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\"}}','TagsHelperRoute::getTagRoute','{\"formFile\":\"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"lft\", \"rgt\", \"level\", \"path\", \"urls\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),
(11,'Banner','com_banners.banner','{\"special\":{\"dbtable\":\"#__banners\",\"key\":\"id\",\"type\":\"BannerTable\",\"prefix\":\"Joomla\\\\Component\\\\Banners\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"null\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"imptotal\":\"imptotal\", \"impmade\":\"impmade\", \"clicks\":\"clicks\", \"clickurl\":\"clickurl\", \"custombannercode\":\"custombannercode\", \"cid\":\"cid\", \"purchase_type\":\"purchase_type\", \"track_impressions\":\"track_impressions\", \"track_clicks\":\"track_clicks\"}}','','{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"reset\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"imptotal\", \"impmade\", \"reset\"], \"convertToInt\":[\"publish_up\", \"publish_down\", \"ordering\"], \"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"cid\",\"targetTable\":\"#__banner_clients\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
(12,'Banners Category','com_banners.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\": {\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','','{\"formFile\": \"administrator/components/com_categories/models/forms/category.xml\", \"hideFields\": [\"asset_id\", \"checked_out\", \"checked_out_time\", \"version\", \"lft\", \"rgt\", \"level\", \"path\", \"extension\"], \"convertToInt\": [\"publish_up\", \"publish_down\"], \"displayLookup\": [{\"targetTable\": \"#__users\", \"sourceColumn\": \"created_user_id\", \"targetColumn\": \"id\", \"displayColumn\": \"name\"}, {\"targetTable\": \"#__viewlevels\", \"sourceColumn\": \"access\", \"targetColumn\": \"id\", \"displayColumn\": \"title\"}, {\"targetTable\": \"#__users\", \"sourceColumn\": \"modified_user_id\", \"targetColumn\": \"id\", \"displayColumn\": \"name\"}, {\"targetTable\": \"#__categories\", \"sourceColumn\": \"parent_id\", \"targetColumn\": \"id\", \"displayColumn\": \"title\"}, {\"targetTable\": \"#__tags\", \"sourceColumn\": \"tags\", \"targetColumn\": \"id\", \"displayColumn\": \"title\"}], \"ignoreChanges\": [\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"]}'),
(13,'Banner Client','com_banners.client','{\"special\":{\"dbtable\":\"#__banner_clients\",\"key\":\"id\",\"type\":\"ClientTable\",\"prefix\":\"Joomla\\\\Component\\\\Banners\\\\Administrator\\\\Table\\\\\"}}','','','','{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\"], \"ignoreChanges\":[\"checked_out\", \"checked_out_time\"], \"convertToInt\":[], \"displayLookup\":[]}'),
(14,'User Notes','com_users.note','{\"special\":{\"dbtable\":\"#__user_notes\",\"key\":\"id\",\"type\":\"NoteTable\",\"prefix\":\"Joomla\\\\Component\\\\Users\\\\Administrator\\\\Table\\\\\"}}','','','','{\"formFile\":\"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\"], \"convertToInt\":[\"publish_up\", \"publish_down\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),
(15,'User Notes Category','com_users.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','','{\"formFile\": \"administrator/components/com_categories/models/forms/category.xml\", \"hideFields\": [\"checked_out\", \"checked_out_time\", \"version\", \"lft\", \"rgt\", \"level\", \"path\", \"extension\"], \"convertToInt\": [\"publish_up\", \"publish_down\"], \"displayLookup\": [{\"targetTable\": \"#__users\", \"sourceColumn\": \"created_user_id\", \"targetColumn\": \"id\", \"displayColumn\": \"name\"}, {\"targetTable\": \"#__viewlevels\", \"sourceColumn\": \"access\", \"targetColumn\": \"id\", \"displayColumn\": \"title\"}, {\"targetTable\": \"#__users\", \"sourceColumn\": \"modified_user_id\", \"targetColumn\": \"id\", \"displayColumn\": \"name\"}, {\"targetTable\": \"#__categories\", \"sourceColumn\": \"parent_id\", \"targetColumn\": \"id\", \"displayColumn\": \"title\"}, {\"targetTable\": \"#__tags\", \"sourceColumn\": \"tags\", \"targetColumn\": \"id\", \"displayColumn\": \"title\"}], \"ignoreChanges\": [\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"]}'),
(16,'Module','com_modules.module','{\"special\":{\"dbtable\":\"#__modules\",\"key\":\"id\",\"type\":\"Module\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\"}}','','{}','','{\"formFile\":\"administrator\\/components\\/com_modules\\/forms\\/module.xml\", \"hideFields\":[\"checked_out\", \"checked_out_time\", \"publish_up\", \"publish_down\"], \"ignoreChanges\":[\"checked_out\", \"checked_out_time\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"checked_out\", \"targetTable\":\"#__users\", \"targetColumn\":\"id\", \"displayColumn\":\"name\"}]}');
/*!40000 ALTER TABLE `adtifuja_content_types` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtifuja_contentitem_tag_map`
--

DROP TABLE IF EXISTS `adtifuja_contentitem_tag_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtifuja_contentitem_tag_map` (
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `core_content_id` int(10) unsigned NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) unsigned NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(9) NOT NULL COMMENT 'PK from the content_type table',
  UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  KEY `idx_tag_type` (`tag_id`,`type_id`),
  KEY `idx_date_id` (`tag_date`,`tag_id`),
  KEY `idx_core_content_id` (`core_content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Maps items from content tables to tags';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtifuja_contentitem_tag_map`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtifuja_contentitem_tag_map` WRITE;
/*!40000 ALTER TABLE `adtifuja_contentitem_tag_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `adtifuja_contentitem_tag_map` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtifuja_extensions`
--

DROP TABLE IF EXISTS `adtifuja_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtifuja_extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `package_id` int(11) NOT NULL DEFAULT 0 COMMENT 'Parent package ID for extensions installed as a package.',
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `changelogurl` text DEFAULT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(4) NOT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT 0,
  `access` int(10) unsigned NOT NULL DEFAULT 1,
  `protected` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'Flag to indicate if the extension is protected. Protected extensions cannot be disabled.',
  `manifest_cache` mediumtext NOT NULL,
  `params` mediumtext NOT NULL,
  `custom_data` mediumtext NOT NULL,
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int(11) DEFAULT 0,
  `state` int(11) DEFAULT 0,
  `note` varchar(255) DEFAULT NULL,
  `locked` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'Flag to indicate if the extension is locked. Locked extensions cannot be uninstalled.',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10148 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtifuja_extensions`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtifuja_extensions` WRITE;
/*!40000 ALTER TABLE `adtifuja_extensions` DISABLE KEYS */;
INSERT INTO `adtifuja_extensions` VALUES
(2,0,'com_wrapper','component','com_wrapper','','',1,1,1,0,'{\"name\":\"com_wrapper\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Wrapper\",\"filename\":\"wrapper\"}','','',NULL,NULL,0,0,NULL,1),
(3,0,'com_admin','component','com_admin','','',1,1,1,1,'{\"name\":\"com_admin\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_ADMIN_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Admin\"}','','',NULL,NULL,0,0,NULL,1),
(4,0,'com_banners','component','com_banners','','',1,1,1,0,'{\"name\":\"com_banners\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Banners\",\"filename\":\"banners\"}','{\"purchase_type\":\"3\",\"track_impressions\":\"0\",\"track_clicks\":\"0\",\"metakey_prefix\":\"\",\"save_history\":\"1\",\"history_limit\":10}','',NULL,NULL,0,0,NULL,1),
(5,0,'com_cache','component','com_cache','','',1,1,1,1,'{\"name\":\"com_cache\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CACHE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Cache\"}','','',NULL,NULL,0,0,NULL,1),
(6,0,'com_categories','component','com_categories','','',1,1,1,1,'{\"name\":\"com_categories\",\"type\":\"component\",\"creationDate\":\"2007-12\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Categories\"}','','',NULL,NULL,0,0,NULL,1),
(7,0,'com_checkin','component','com_checkin','','',1,1,1,1,'{\"name\":\"com_checkin\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CHECKIN_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Checkin\"}','','',NULL,NULL,0,0,NULL,1),
(8,0,'com_contact','component','com_contact','','',1,1,1,0,'{\"name\":\"com_contact\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Contact\",\"filename\":\"contact\"}','{\"show_contact_category\":\"hide\",\"save_history\":\"1\",\"history_limit\":10,\"show_contact_list\":\"0\",\"presentation_style\":\"sliders\",\"show_name\":\"1\",\"show_position\":\"1\",\"show_email\":\"0\",\"show_street_address\":\"1\",\"show_suburb\":\"1\",\"show_state\":\"1\",\"show_postcode\":\"1\",\"show_country\":\"1\",\"show_telephone\":\"1\",\"show_mobile\":\"1\",\"show_fax\":\"1\",\"show_webpage\":\"1\",\"show_misc\":\"1\",\"show_image\":\"1\",\"image\":\"\",\"allow_vcard\":\"0\",\"show_articles\":\"0\",\"show_profile\":\"0\",\"show_links\":\"0\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"contact_icons\":\"0\",\"icon_address\":\"\",\"icon_email\":\"\",\"icon_telephone\":\"\",\"icon_mobile\":\"\",\"icon_fax\":\"\",\"icon_misc\":\"\",\"show_headings\":\"1\",\"show_position_headings\":\"1\",\"show_email_headings\":\"0\",\"show_telephone_headings\":\"1\",\"show_mobile_headings\":\"0\",\"show_fax_headings\":\"0\",\"allow_vcard_headings\":\"0\",\"show_suburb_headings\":\"1\",\"show_state_headings\":\"1\",\"show_country_headings\":\"1\",\"show_email_form\":\"1\",\"show_email_copy\":\"1\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"1\",\"custom_reply\":\"0\",\"redirect\":\"\",\"show_category_crumb\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}','',NULL,NULL,0,0,NULL,1),
(9,0,'com_cpanel','component','com_cpanel','','',1,1,1,1,'{\"name\":\"com_cpanel\",\"type\":\"component\",\"creationDate\":\"2007-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CPANEL_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Cpanel\"}','','',NULL,NULL,0,0,NULL,1),
(10,0,'com_installer','component','com_installer','','',1,1,1,1,'{\"name\":\"com_installer\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_INSTALLER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Installer\"}','','',NULL,NULL,0,0,NULL,1),
(11,0,'com_languages','component','com_languages','','',1,1,1,1,'{\"name\":\"com_languages\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Languages\"}','{\"administrator\":\"en-GB\",\"site\":\"en-GB\"}','',NULL,NULL,0,0,NULL,1),
(12,0,'com_login','component','com_login','','',1,1,1,1,'{\"name\":\"com_login\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Login\"}','','',NULL,NULL,0,0,NULL,1),
(13,0,'com_media','component','com_media','','',1,1,0,1,'{\"name\":\"com_media\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Media\",\"filename\":\"media\"}','{\"upload_extensions\":\"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS\",\"upload_maxsize\":\"10\",\"file_path\":\"images\",\"image_path\":\"images\",\"restrict_uploads\":\"1\",\"allowed_media_usergroup\":\"3\",\"check_mime\":\"1\",\"image_extensions\":\"bmp,gif,jpg,png\",\"ignore_extensions\":\"\",\"upload_mime\":\"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip\",\"upload_mime_illegal\":\"text\\/html\"}','',NULL,NULL,0,0,NULL,1),
(14,0,'com_menus','component','com_menus','','',1,1,1,1,'{\"name\":\"com_menus\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_MENUS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Menus\",\"filename\":\"menus\"}','','',NULL,NULL,0,0,NULL,1),
(15,0,'com_messages','component','com_messages','','',1,1,1,1,'{\"name\":\"com_messages\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_MESSAGES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Messages\"}','','',NULL,NULL,0,0,NULL,1),
(16,0,'com_modules','component','com_modules','','',1,1,1,1,'{\"name\":\"com_modules\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_MODULES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Modules\",\"filename\":\"modules\"}','','',NULL,NULL,0,0,NULL,1),
(17,0,'com_newsfeeds','component','com_newsfeeds','','',1,1,1,0,'{\"name\":\"com_newsfeeds\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Newsfeeds\",\"filename\":\"newsfeeds\"}','{\"newsfeed_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_feed_image\":\"1\",\"show_feed_description\":\"1\",\"show_item_description\":\"1\",\"feed_character_count\":\"0\",\"feed_display_order\":\"des\",\"float_first\":\"right\",\"float_second\":\"right\",\"show_tags\":\"1\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"maxLevel\":\"-1\",\"show_empty_categories\":\"0\",\"show_subcat_desc\":\"1\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_headings\":\"1\",\"show_articles\":\"0\",\"show_link\":\"1\",\"show_pagination\":\"1\",\"show_pagination_results\":\"1\"}','',NULL,NULL,0,0,NULL,1),
(18,0,'com_plugins','component','com_plugins','','',1,1,1,1,'{\"name\":\"com_plugins\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_PLUGINS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Plugins\"}','','',NULL,NULL,0,0,NULL,1),
(19,10093,'com_search','component','com_search','','',1,0,1,0,'{\"name\":\"com_search\",\"type\":\"component\",\"creationDate\":\"17.06.2021\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0-dev\",\"description\":\"\",\"group\":\"\",\"changelogurl\":\"\",\"filename\":\"search\"}','{\"enabled\":\"0\",\"show_date\":\"1\"}','',NULL,NULL,0,0,NULL,0),
(20,0,'com_templates','component','com_templates','','',1,1,1,1,'{\"name\":\"com_templates\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_TEMPLATES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Templates\"}','{\"template_positions_display\":\"0\",\"upload_limit\":\"2\",\"image_formats\":\"gif,bmp,jpg,jpeg,png\",\"source_formats\":\"txt,less,ini,xml,js,php,css\",\"font_formats\":\"woff,ttf,otf\",\"compressed_formats\":\"zip\"}','',NULL,NULL,0,0,NULL,1),
(22,0,'com_content','component','com_content','','',1,1,0,1,'{\"name\":\"com_content\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Content\",\"filename\":\"content\"}','{\"article_layout\":\"_:default\",\"show_title\":\"1\",\"link_titles\":\"1\",\"show_intro\":\"1\",\"info_block_position\":\"0\",\"show_category\":\"1\",\"link_category\":\"1\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"1\",\"link_author\":\"1\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"1\",\"show_item_navigation\":\"1\",\"show_vote\":\"1\",\"show_readmore\":\"1\",\"show_readmore_title\":\"0\",\"readmore_limit\":\"100\",\"show_tags\":\"1\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_hits\":\"1\",\"show_noauth\":\"0\",\"urls_position\":\"0\",\"show_publishing_options\":\"1\",\"show_article_options\":\"1\",\"save_history\":\"1\",\"history_limit\":10,\"show_urls_images_frontend\":\"0\",\"show_urls_images_backend\":\"1\",\"targeta\":0,\"targetb\":0,\"targetc\":0,\"float_intro\":\"left\",\"float_fulltext\":\"left\",\"category_layout\":\"_:blog\",\"show_category_heading_title_text\":\"1\",\"show_category_title\":\"0\",\"show_description\":\"0\",\"show_description_image\":\"0\",\"maxLevel\":\"0\",\"show_empty_categories\":\"0\",\"show_no_articles\":\"1\",\"show_subcat_desc\":\"0\",\"show_cat_num_articles\":\"0\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"0\",\"show_cat_num_articles_cat\":\"1\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"4\",\"num_columns\":\"1\",\"num_links\":\"0\",\"multi_column_order\":\"0\",\"show_subcategory_content\":\"0\",\"show_pagination_limit\":\"1\",\"filter_field\":\"hide\",\"show_headings\":\"1\",\"list_show_date\":\"0\",\"date_format\":\"\",\"list_show_hits\":\"1\",\"list_show_author\":\"1\",\"orderby_pri\":\"order\",\"orderby_sec\":\"rdate\",\"order_date\":\"published\",\"show_pagination\":\"2\",\"show_pagination_results\":\"0\",\"show_featured\":\"show\",\"show_feed_link\":\"1\",\"feed_summary\":\"0\",\"feed_show_readmore\":\"0\"}','',NULL,NULL,0,0,NULL,1),
(23,0,'com_config','component','com_config','','',1,1,0,1,'{\"name\":\"com_config\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CONFIG_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Config\",\"filename\":\"config\"}','{\"filters\":{\"1\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"9\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"6\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"7\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"2\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"3\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"4\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"5\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"8\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"}}}','',NULL,NULL,0,0,NULL,1),
(24,0,'com_redirect','component','com_redirect','','',1,1,0,0,'{\"name\":\"com_redirect\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Redirect\"}','','',NULL,NULL,0,0,NULL,1),
(25,0,'com_users','component','com_users','','',1,1,0,1,'{\"name\":\"com_users\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_USERS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Users\",\"filename\":\"users\"}','{\"allowUserRegistration\":\"1\",\"new_usertype\":\"2\",\"guest_usergroup\":\"13\",\"sendpassword\":\"1\",\"useractivation\":\"1\",\"mail_to_admin\":\"0\",\"captcha\":\"\",\"frontend_userparams\":\"1\",\"site_language\":\"0\",\"change_login_name\":\"0\",\"reset_count\":\"10\",\"reset_time\":\"1\",\"mailSubjectPrefix\":\"\",\"mailBodySuffix\":\"\",\"save_history\":\"1\",\"history_limit\":5}','',NULL,NULL,0,0,NULL,1),
(27,0,'com_finder','component','com_finder','','',1,1,0,0,'{\"name\":\"com_finder\",\"type\":\"component\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Finder\",\"filename\":\"finder\"}','{\"show_description\":\"1\",\"description_length\":255,\"allow_empty_query\":\"0\",\"show_url\":\"1\",\"show_advanced\":\"1\",\"expand_advanced\":\"0\",\"show_date_filters\":\"0\",\"highlight_terms\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\",\"batch_size\":\"50\",\"memory_table_limit\":30000,\"title_multiplier\":\"1.7\",\"text_multiplier\":\"0.7\",\"meta_multiplier\":\"1.2\",\"path_multiplier\":\"2.0\",\"misc_multiplier\":\"0.3\",\"stemmer\":\"snowball\"}','',NULL,NULL,0,0,NULL,1),
(28,0,'com_joomlaupdate','component','com_joomlaupdate','','',1,1,0,1,'{\"name\":\"com_joomlaupdate\",\"type\":\"component\",\"creationDate\":\"2021-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2012 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.3\",\"description\":\"COM_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Joomlaupdate\"}','{\"updatesource\":\"default\",\"minimum_stability\":\"4\",\"customurl\":\"\",\"versioncheck\":\"1\",\"backupcheck\":\"1\",\"autoupdate\":\"0\",\"autoupdate_status\":\"\",\"update_token\":\"\",\"update_last_check\":\"\"}','',NULL,NULL,0,0,NULL,1),
(29,0,'com_tags','component','com_tags','','',1,1,1,0,'{\"name\":\"com_tags\",\"type\":\"component\",\"creationDate\":\"2013-12\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Tags\",\"filename\":\"tags\"}','{\"tag_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_tag_title\":\"0\",\"tag_list_show_tag_image\":\"0\",\"tag_list_show_tag_description\":\"0\",\"tag_list_image\":\"\",\"show_tag_num_items\":\"0\",\"tag_list_orderby\":\"title\",\"tag_list_orderby_direction\":\"ASC\",\"show_headings\":\"0\",\"tag_list_show_date\":\"0\",\"tag_list_show_item_image\":\"0\",\"tag_list_show_item_description\":\"0\",\"tag_list_item_maximum_characters\":0,\"return_any_or_all\":\"1\",\"include_children\":\"0\",\"maximum\":200,\"tag_list_language_filter\":\"all\",\"tags_layout\":\"_:default\",\"all_tags_orderby\":\"title\",\"all_tags_orderby_direction\":\"ASC\",\"all_tags_show_tag_image\":\"0\",\"all_tags_show_tag_descripion\":\"0\",\"all_tags_tag_maximum_characters\":20,\"all_tags_show_tag_hits\":\"0\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"tag_field_ajax_mode\":\"1\",\"show_feed_link\":\"1\"}','',NULL,NULL,0,0,NULL,1),
(30,0,'com_contenthistory','component','com_contenthistory','','',1,1,1,0,'{\"name\":\"com_contenthistory\",\"type\":\"component\",\"creationDate\":\"2013-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CONTENTHISTORY_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Contenthistory\",\"filename\":\"contenthistory\"}','','',NULL,NULL,0,0,NULL,1),
(31,0,'com_ajax','component','com_ajax','','',1,1,1,1,'{\"name\":\"com_ajax\",\"type\":\"component\",\"creationDate\":\"2013-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_AJAX_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"filename\":\"ajax\"}','','',NULL,NULL,0,0,NULL,1),
(32,0,'com_postinstall','component','com_postinstall','','',1,1,1,1,'{\"name\":\"com_postinstall\",\"type\":\"component\",\"creationDate\":\"2013-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_POSTINSTALL_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Postinstall\"}','','',NULL,NULL,0,0,NULL,1),
(33,0,'com_fields','component','com_fields','','',1,1,1,0,'{\"name\":\"com_fields\",\"type\":\"component\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Fields\",\"filename\":\"fields\"}','','',NULL,NULL,0,0,NULL,1),
(34,0,'com_associations','component','com_associations','','',1,1,1,0,'{\"name\":\"com_associations\",\"type\":\"component\",\"creationDate\":\"2017-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_ASSOCIATIONS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Associations\"}','','',NULL,NULL,0,0,NULL,1),
(35,0,'com_privacy','component','com_privacy','','',1,1,1,0,'{\"name\":\"com_privacy\",\"type\":\"component\",\"creationDate\":\"2018-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"COM_PRIVACY_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Privacy\",\"filename\":\"privacy\"}','','',NULL,NULL,0,0,NULL,1),
(36,0,'com_actionlogs','component','com_actionlogs','','',1,1,1,0,'{\"name\":\"com_actionlogs\",\"type\":\"component\",\"creationDate\":\"2018-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"COM_ACTIONLOGS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Actionlogs\"}','{\"ip_logging\":0,\"csv_delimiter\":\",\",\"loggable_extensions\":[\"com_banners\",\"com_cache\",\"com_categories\",\"com_checkin\",\"com_config\",\"com_contact\",\"com_content\",\"com_installer\",\"com_media\",\"com_menus\",\"com_messages\",\"com_modules\",\"com_newsfeeds\",\"com_plugins\",\"com_redirect\",\"com_tags\",\"com_templates\",\"com_users\"]}','',NULL,NULL,0,0,NULL,1),
(103,0,'lib_joomla','library','joomla','','',0,1,1,1,'{\"name\":\"lib_joomla\",\"type\":\"library\",\"creationDate\":\"2008-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2008 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"https:\\/\\/www.joomla.org\",\"version\":\"13.1\",\"description\":\"LIB_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"filename\":\"joomla\"}','{\"mediaversion\":\"055eb768d4df3f3bbbd3ba2e85813691\"}','',NULL,NULL,0,0,NULL,1),
(106,0,'lib_phpass','library','phpass','','',0,1,1,1,'{\"name\":\"lib_phpass\",\"type\":\"library\",\"creationDate\":\"2004-01\",\"author\":\"Solar Designer\",\"copyright\":\"\",\"authorEmail\":\"solar@openwall.com\",\"authorUrl\":\"https:\\/\\/www.openwall.com\\/phpass\\/\",\"version\":\"0.5.1\",\"description\":\"LIB_PHPASS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"filename\":\"phpass\"}','','',NULL,NULL,0,0,NULL,1),
(200,0,'mod_articles_archive','module','mod_articles_archive','','',0,1,1,0,'{\"name\":\"mod_articles_archive\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\ArticlesArchive\",\"filename\":\"mod_articles_archive\"}','','',NULL,NULL,0,0,NULL,1),
(201,0,'mod_articles_latest','module','mod_articles_latest','','',0,1,1,0,'{\"name\":\"mod_articles_latest\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\ArticlesLatest\",\"filename\":\"mod_articles_latest\"}','','',NULL,NULL,0,0,NULL,1),
(202,0,'mod_articles_popular','module','mod_articles_popular','','',0,1,1,0,'{\"name\":\"mod_articles_popular\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\ArticlesPopular\",\"filename\":\"mod_articles_popular\"}','','',NULL,NULL,0,0,NULL,1),
(203,0,'mod_banners','module','mod_banners','','',0,1,1,0,'{\"name\":\"mod_banners\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Banners\",\"filename\":\"mod_banners\"}','','',NULL,NULL,0,0,NULL,1),
(204,0,'mod_breadcrumbs','module','mod_breadcrumbs','','',0,1,1,0,'{\"name\":\"mod_breadcrumbs\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BREADCRUMBS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Breadcrumbs\",\"filename\":\"mod_breadcrumbs\"}','','',NULL,NULL,0,0,NULL,1),
(205,0,'mod_custom','module','mod_custom','','',0,1,1,0,'{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Custom\",\"filename\":\"mod_custom\"}','','',NULL,NULL,0,0,NULL,1),
(206,0,'mod_feed','module','mod_feed','','',0,1,1,0,'{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"2005-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Feed\",\"filename\":\"mod_feed\"}','','',NULL,NULL,0,0,NULL,1),
(207,0,'mod_footer','module','mod_footer','','',0,1,1,0,'{\"name\":\"mod_footer\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FOOTER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Footer\",\"filename\":\"mod_footer\"}','','',NULL,NULL,0,0,NULL,1),
(208,0,'mod_login','module','mod_login','','',0,1,1,0,'{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Login\",\"filename\":\"mod_login\"}','','',NULL,NULL,0,0,NULL,1),
(209,0,'mod_menu','module','mod_menu','','',0,1,1,0,'{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Menu\",\"filename\":\"mod_menu\"}','','',NULL,NULL,0,0,NULL,1),
(210,0,'mod_articles_news','module','mod_articles_news','','',0,1,1,0,'{\"name\":\"mod_articles_news\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\ArticlesNews\",\"filename\":\"mod_articles_news\"}','','',NULL,NULL,0,0,NULL,1),
(211,0,'mod_random_image','module','mod_random_image','','',0,1,1,0,'{\"name\":\"mod_random_image\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RANDOM_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\RandomImage\",\"filename\":\"mod_random_image\"}','','',NULL,NULL,0,0,NULL,1),
(212,0,'mod_related_items','module','mod_related_items','','',0,1,1,0,'{\"name\":\"mod_related_items\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RELATED_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\RelatedItems\",\"filename\":\"mod_related_items\"}','','',NULL,NULL,0,0,NULL,1),
(213,10093,'mod_search','module','mod_search','','',0,0,1,0,'{\"name\":\"mod_search\",\"type\":\"module\",\"creationDate\":\"17.08.2021\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0-dev\",\"description\":\"\",\"group\":\"\",\"changelogurl\":\"\",\"filename\":\"mod_search\"}','','',NULL,NULL,0,0,NULL,0),
(214,0,'mod_stats','module','mod_stats','','',0,1,1,0,'{\"name\":\"mod_stats\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Stats\",\"filename\":\"mod_stats\"}','','',NULL,NULL,0,0,NULL,1),
(215,0,'mod_syndicate','module','mod_syndicate','','',0,1,1,0,'{\"name\":\"mod_syndicate\",\"type\":\"module\",\"creationDate\":\"2006-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SYNDICATE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Syndicate\",\"filename\":\"mod_syndicate\"}','','',NULL,NULL,0,0,NULL,1),
(216,0,'mod_users_latest','module','mod_users_latest','','',0,1,1,0,'{\"name\":\"mod_users_latest\",\"type\":\"module\",\"creationDate\":\"2009-12\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2009 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_USERS_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\UsersLatest\",\"filename\":\"mod_users_latest\"}','','',NULL,NULL,0,0,NULL,1),
(218,0,'mod_whosonline','module','mod_whosonline','','',0,1,1,0,'{\"name\":\"mod_whosonline\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WHOSONLINE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Whosonline\",\"filename\":\"mod_whosonline\"}','','',NULL,NULL,0,0,NULL,1),
(219,0,'mod_wrapper','module','mod_wrapper','','',0,1,1,0,'{\"name\":\"mod_wrapper\",\"type\":\"module\",\"creationDate\":\"2004-10\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Wrapper\",\"filename\":\"mod_wrapper\"}','','',NULL,NULL,0,0,NULL,1),
(220,0,'mod_articles_category','module','mod_articles_category','','',0,1,1,0,'{\"name\":\"mod_articles_category\",\"type\":\"module\",\"creationDate\":\"2010-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\ArticlesCategory\",\"filename\":\"mod_articles_category\"}','','',NULL,NULL,0,0,NULL,1),
(221,0,'mod_articles_categories','module','mod_articles_categories','','',0,1,1,0,'{\"name\":\"mod_articles_categories\",\"type\":\"module\",\"creationDate\":\"2010-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\ArticlesCategories\",\"filename\":\"mod_articles_categories\"}','','',NULL,NULL,0,0,NULL,1),
(222,0,'mod_languages','module','mod_languages','','',0,1,1,0,'{\"name\":\"mod_languages\",\"type\":\"module\",\"creationDate\":\"2010-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"MOD_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Languages\",\"filename\":\"mod_languages\"}','','',NULL,NULL,0,0,NULL,1),
(223,0,'mod_finder','module','mod_finder','','',0,1,0,0,'{\"name\":\"mod_finder\",\"type\":\"module\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Finder\",\"filename\":\"mod_finder\"}','','',NULL,NULL,0,0,NULL,1),
(300,0,'mod_custom','module','mod_custom','','',1,1,1,0,'{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Custom\",\"filename\":\"mod_custom\"}','','',NULL,NULL,0,0,NULL,1),
(301,0,'mod_feed','module','mod_feed','','',1,1,1,0,'{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"2005-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Feed\",\"filename\":\"mod_feed\"}','','',NULL,NULL,0,0,NULL,1),
(302,0,'mod_latest','module','mod_latest','','',1,1,1,0,'{\"name\":\"mod_latest\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Latest\",\"filename\":\"mod_latest\"}','','',NULL,NULL,0,0,NULL,1),
(303,0,'mod_logged','module','mod_logged','','',1,1,1,0,'{\"name\":\"mod_logged\",\"type\":\"module\",\"creationDate\":\"2005-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGGED_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Logged\",\"filename\":\"mod_logged\"}','','',NULL,NULL,0,0,NULL,1),
(304,0,'mod_login','module','mod_login','','',1,1,1,0,'{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"2005-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Login\",\"filename\":\"mod_login\"}','','',NULL,NULL,0,0,NULL,1),
(305,0,'mod_menu','module','mod_menu','','',1,1,1,0,'{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"2006-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Menu\",\"filename\":\"mod_menu\"}','','',NULL,NULL,0,0,NULL,1),
(307,0,'mod_popular','module','mod_popular','','',1,1,1,0,'{\"name\":\"mod_popular\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Popular\",\"filename\":\"mod_popular\"}','','',NULL,NULL,0,0,NULL,1),
(308,0,'mod_quickicon','module','mod_quickicon','','',1,1,1,0,'{\"name\":\"mod_quickicon\",\"type\":\"module\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_QUICKICON_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Quickicon\",\"filename\":\"mod_quickicon\"}','','',NULL,NULL,0,0,NULL,1),
(311,0,'mod_title','module','mod_title','','',1,1,1,0,'{\"name\":\"mod_title\",\"type\":\"module\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TITLE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Title\",\"filename\":\"mod_title\"}','','',NULL,NULL,0,0,NULL,1),
(312,0,'mod_toolbar','module','mod_toolbar','','',1,1,1,0,'{\"name\":\"mod_toolbar\",\"type\":\"module\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TOOLBAR_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Toolbar\",\"filename\":\"mod_toolbar\"}','','',NULL,NULL,0,0,NULL,1),
(313,0,'mod_multilangstatus','module','mod_multilangstatus','','',1,1,1,0,'{\"name\":\"mod_multilangstatus\",\"type\":\"module\",\"creationDate\":\"2011-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MULTILANGSTATUS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\MultilangStatus\",\"filename\":\"mod_multilangstatus\"}','{\"cache\":\"0\"}','',NULL,NULL,0,0,NULL,1),
(314,0,'mod_version','module','mod_version','','',1,1,1,0,'{\"name\":\"mod_version\",\"type\":\"module\",\"creationDate\":\"2012-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2012 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_VERSION_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Version\",\"filename\":\"mod_version\"}','{\"format\":\"short\",\"product\":\"1\",\"cache\":\"0\"}','',NULL,NULL,0,0,NULL,1),
(315,0,'mod_stats_admin','module','mod_stats_admin','','',1,1,1,0,'{\"name\":\"mod_stats_admin\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\StatsAdmin\",\"filename\":\"mod_stats_admin\"}','{\"serverinfo\":\"0\",\"siteinfo\":\"0\",\"counter\":\"0\",\"increase\":\"0\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}','',NULL,NULL,0,0,NULL,1),
(316,0,'mod_tags_popular','module','mod_tags_popular','','',0,1,1,0,'{\"name\":\"mod_tags_popular\",\"type\":\"module\",\"creationDate\":\"2013-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\TagsPopular\",\"filename\":\"mod_tags_popular\"}','{\"maximum\":\"5\",\"timeframe\":\"alltime\",\"owncache\":\"1\"}','',NULL,NULL,0,0,NULL,1),
(317,0,'mod_tags_similar','module','mod_tags_similar','','',0,1,1,0,'{\"name\":\"mod_tags_similar\",\"type\":\"module\",\"creationDate\":\"2013-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_SIMILAR_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\TagsSimilar\",\"filename\":\"mod_tags_similar\"}','{\"maximum\":\"5\",\"matchtype\":\"any\",\"owncache\":\"1\"}','',NULL,NULL,0,0,NULL,1),
(318,0,'mod_sampledata','module','mod_sampledata','','',1,1,1,0,'{\"name\":\"mod_sampledata\",\"type\":\"module\",\"creationDate\":\"2017-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.0\",\"description\":\"MOD_SAMPLEDATA_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Sampledata\",\"filename\":\"mod_sampledata\"}','{}','',NULL,NULL,0,0,NULL,1),
(319,0,'mod_latestactions','module','mod_latestactions','','',1,1,1,0,'{\"name\":\"mod_latestactions\",\"type\":\"module\",\"creationDate\":\"2018-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"MOD_LATESTACTIONS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\LatestActions\",\"filename\":\"mod_latestactions\"}','{}','',NULL,'1970-01-01 00:00:00',0,0,NULL,1),
(320,0,'mod_privacy_dashboard','module','mod_privacy_dashboard','','',1,1,1,0,'{\"name\":\"mod_privacy_dashboard\",\"type\":\"module\",\"creationDate\":\"2018-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"MOD_PRIVACY_DASHBOARD_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\PrivacyDashboard\",\"filename\":\"mod_privacy_dashboard\"}','{}','',NULL,'1970-01-01 00:00:00',0,0,NULL,1),
(401,0,'plg_authentication_joomla','plugin','joomla','','authentication',0,1,1,1,'{\"name\":\"plg_authentication_joomla\",\"type\":\"plugin\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTHENTICATION_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Authentication\\\\Joomla\",\"filename\":\"joomla\"}','','',NULL,NULL,0,0,NULL,1),
(402,0,'plg_authentication_ldap','plugin','ldap','','authentication',0,0,1,0,'{\"name\":\"plg_authentication_ldap\",\"type\":\"plugin\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LDAP_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Authentication\\\\Ldap\",\"filename\":\"ldap\"}','{\"host\":\"\",\"port\":\"389\",\"use_ldapV3\":\"0\",\"negotiate_tls\":\"0\",\"no_referrals\":\"0\",\"auth_method\":\"bind\",\"base_dn\":\"\",\"search_string\":\"\",\"users_dn\":\"\",\"username\":\"admin\",\"password\":\"bobby7\",\"ldap_fullname\":\"fullName\",\"ldap_email\":\"mail\",\"ldap_uid\":\"uid\"}','',NULL,NULL,3,0,NULL,1),
(403,0,'plg_content_contact','plugin','contact','','content',0,1,1,0,'{\"name\":\"plg_content_contact\",\"type\":\"plugin\",\"creationDate\":\"2014-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2014 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.2\",\"description\":\"PLG_CONTENT_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\Contact\",\"filename\":\"contact\"}','','',NULL,NULL,1,0,NULL,1),
(404,0,'plg_content_emailcloak','plugin','emailcloak','','content',0,1,1,0,'{\"name\":\"plg_content_emailcloak\",\"type\":\"plugin\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\EmailCloak\",\"filename\":\"emailcloak\"}','{\"mode\":\"1\"}','',NULL,NULL,1,0,NULL,1),
(406,0,'plg_content_loadmodule','plugin','loadmodule','','content',0,1,1,0,'{\"name\":\"plg_content_loadmodule\",\"type\":\"plugin\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOADMODULE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\LoadModule\",\"filename\":\"loadmodule\"}','{\"style\":\"xhtml\"}','',NULL,'2011-09-18 15:22:50',0,0,NULL,1),
(407,0,'plg_content_pagebreak','plugin','pagebreak','','content',0,1,1,0,'{\"name\":\"plg_content_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\PageBreak\",\"filename\":\"pagebreak\"}','{\"title\":\"1\",\"multipage_toc\":\"1\",\"showall\":\"1\"}','',NULL,NULL,4,0,NULL,1),
(408,0,'plg_content_pagenavigation','plugin','pagenavigation','','content',0,1,1,0,'{\"name\":\"plg_content_pagenavigation\",\"type\":\"plugin\",\"creationDate\":\"2006-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_PAGENAVIGATION_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\PageNavigation\",\"filename\":\"pagenavigation\"}','{\"position\":\"1\"}','',NULL,NULL,5,0,NULL,1),
(409,0,'plg_content_vote','plugin','vote','','content',0,1,1,0,'{\"name\":\"plg_content_vote\",\"type\":\"plugin\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_VOTE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\Vote\",\"filename\":\"vote\"}','','',NULL,NULL,6,0,NULL,1),
(410,0,'plg_editors_codemirror','plugin','codemirror','','editors',0,1,1,0,'{\"name\":\"plg_editors_codemirror\",\"type\":\"plugin\",\"creationDate\":\"28 March 2011\",\"author\":\"Marijn Haverbeke\",\"copyright\":\"Copyright (C) 2014 - 2021 by Marijn Haverbeke <marijnh@gmail.com> and others\",\"authorEmail\":\"marijnh@gmail.com\",\"authorUrl\":\"https:\\/\\/codemirror.net\\/\",\"version\":\"6.0.0\",\"description\":\"PLG_CODEMIRROR_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Editors\\\\CodeMirror\",\"filename\":\"codemirror\"}','{\"lineNumbers\":\"1\",\"lineWrapping\":\"1\",\"matchTags\":\"1\",\"matchBrackets\":\"1\",\"marker-gutter\":\"1\",\"autoCloseTags\":\"1\",\"autoCloseBrackets\":\"1\",\"autoFocus\":\"1\",\"theme\":\"default\",\"tabmode\":\"indent\"}','',NULL,NULL,1,0,NULL,1),
(411,0,'plg_editors_none','plugin','none','','editors',0,1,1,1,'{\"name\":\"plg_editors_none\",\"type\":\"plugin\",\"creationDate\":\"2005-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_NONE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Editors\\\\None\",\"filename\":\"none\"}','','',NULL,NULL,2,0,NULL,1),
(412,0,'plg_editors_tinymce','plugin','tinymce','','editors',0,1,1,0,'{\"name\":\"plg_editors_tinymce\",\"type\":\"plugin\",\"creationDate\":\"2005-08\",\"author\":\"Tiny Technologies, Inc\",\"copyright\":\"Tiny Technologies, Inc\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"https:\\/\\/www.tiny.cloud\",\"version\":\"8.6.0\",\"description\":\"PLG_TINY_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Editors\\\\TinyMCE\",\"filename\":\"tinymce\"}','{\"hr\": \"1\", \"link\": \"1\", \"mode\": \"1\", \"skin\": \"0\", \"fonts\": \"1\", \"media\": \"1\", \"paste\": \"1\", \"print\": \"1\", \"table\": \"1\", \"colors\": \"1\", \"mobile\": \"0\", \"advlist\": \"1\", \"smilies\": \"1\", \"autosave\": \"1\", \"newlines\": \"0\", \"resizing\": \"1\", \"template\": \"1\", \"alignment\": \"1\", \"lang_mode\": \"1\", \"wordcount\": \"1\", \"blockquote\": \"1\", \"fullscreen\": \"1\", \"html_width\": \"100%\", \"insertdate\": \"1\", \"content_css\": \"1\", \"contextmenu\": \"1\", \"html_height\": \"550px\", \"nonbreaking\": \"1\", \"visualchars\": \"1\", \"element_path\": \"1\", \"inlinepopups\": \"1\", \"visualblocks\": \"1\", \"custom_button\": \"\", \"custom_plugin\": \"\", \"relative_urls\": \"1\", \"searchreplace\": \"1\", \"directionality\": \"1\", \"text_direction\": \"ltr\", \"entity_encoding\": \"raw\", \"invalid_elements\": \"script,applet,iframe\", \"extended_elements\": \"\", \"content_css_custom\": \"\"}','',NULL,NULL,3,0,NULL,1),
(413,0,'plg_editors-xtd_article','plugin','article','','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_article\",\"type\":\"plugin\",\"creationDate\":\"2009-10\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2009 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_ARTICLE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\EditorsXtd\\\\Article\",\"filename\":\"article\"}','','',NULL,NULL,1,0,NULL,1),
(414,0,'plg_editors-xtd_image','plugin','image','','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_image\",\"type\":\"plugin\",\"creationDate\":\"2004-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\EditorsXtd\\\\Image\",\"filename\":\"image\"}','','',NULL,NULL,2,0,NULL,1),
(415,0,'plg_editors-xtd_pagebreak','plugin','pagebreak','','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"2004-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\EditorsXtd\\\\PageBreak\",\"filename\":\"pagebreak\"}','','',NULL,NULL,3,0,NULL,1),
(416,0,'plg_editors-xtd_readmore','plugin','readmore','','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_readmore\",\"type\":\"plugin\",\"creationDate\":\"2006-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_READMORE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\EditorsXtd\\\\ReadMore\",\"filename\":\"readmore\"}','','',NULL,NULL,4,0,NULL,1),
(417,10093,'plg_search_categories','plugin','categories','','search',0,1,1,0,'{\"name\":\"plg_search_categories\",\"type\":\"plugin\",\"creationDate\":\"17.08.2021\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0-dev\",\"description\":\"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"filename\":\"categories\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','',NULL,NULL,0,0,NULL,0),
(418,10093,'plg_search_contacts','plugin','contacts','','search',0,1,1,0,'{\"name\":\"plg_search_contacts\",\"type\":\"plugin\",\"creationDate\":\"17.08.2021\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0-dev\",\"description\":\"\",\"group\":\"\",\"changelogurl\":\"\",\"filename\":\"contacts\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','',NULL,NULL,0,0,NULL,0),
(419,10093,'plg_search_content','plugin','content','','search',0,1,1,0,'{\"name\":\"plg_search_content\",\"type\":\"plugin\",\"creationDate\":\"17.08.2021\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0-dev\",\"description\":\"PLG_SEARCH_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"filename\":\"content\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','',NULL,NULL,0,0,NULL,0),
(420,10093,'plg_search_newsfeeds','plugin','newsfeeds','','search',0,1,1,0,'{\"name\":\"plg_search_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"17.08.2021\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0-dev\",\"description\":\"\",\"group\":\"\",\"changelogurl\":\"\",\"filename\":\"newsfeeds\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','',NULL,NULL,0,0,NULL,0),
(422,0,'plg_system_languagefilter','plugin','languagefilter','','system',0,0,1,0,'{\"name\":\"plg_system_languagefilter\",\"type\":\"plugin\",\"creationDate\":\"2010-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\LanguageFilter\",\"filename\":\"languagefilter\"}','{\"detect_browser\":\"0\",\"automatic_change\":\"1\",\"item_associations\":\"1\",\"remove_default_prefix\":\"0\",\"lang_cookie\":\"0\",\"alternate_meta\":\"1\"}','',NULL,NULL,1,0,NULL,1),
(424,0,'plg_system_cache','plugin','cache','','system',0,0,1,0,'{\"name\":\"plg_system_cache\",\"type\":\"plugin\",\"creationDate\":\"2007-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CACHE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Cache\",\"filename\":\"cache\"}','{\"browsercache\":\"0\",\"cachetime\":\"15\"}','',NULL,NULL,9,0,NULL,1),
(425,0,'plg_system_debug','plugin','debug','','system',0,1,1,0,'{\"name\":\"plg_system_debug\",\"type\":\"plugin\",\"creationDate\":\"2006-12\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_DEBUG_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Debug\",\"filename\":\"debug\"}','{\"profile\":\"1\",\"queries\":\"1\",\"memory\":\"1\",\"language_files\":\"1\",\"language_strings\":\"1\",\"strip-first\":\"1\",\"strip-prefix\":\"\",\"strip-suffix\":\"\"}','',NULL,NULL,4,0,NULL,1),
(426,0,'plg_system_log','plugin','log','','system',0,1,1,0,'{\"name\":\"plg_system_log\",\"type\":\"plugin\",\"creationDate\":\"2007-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOG_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Log\",\"filename\":\"log\"}','','',NULL,NULL,5,0,NULL,1),
(427,0,'plg_system_redirect','plugin','redirect','','system',0,0,1,0,'{\"name\":\"plg_system_redirect\",\"type\":\"plugin\",\"creationDate\":\"2009-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2009 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Redirect\",\"filename\":\"redirect\"}','','',NULL,NULL,6,0,NULL,1),
(428,0,'plg_system_remember','plugin','remember','','system',0,1,1,0,'{\"name\":\"plg_system_remember\",\"type\":\"plugin\",\"creationDate\":\"2007-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_REMEMBER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Remember\",\"filename\":\"remember\"}','','',NULL,NULL,7,0,NULL,1),
(429,0,'plg_system_sef','plugin','sef','','system',0,1,1,0,'{\"name\":\"plg_system_sef\",\"type\":\"plugin\",\"creationDate\":\"2007-12\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEF_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Sef\",\"filename\":\"sef\"}','','',NULL,NULL,8,0,NULL,1),
(430,0,'plg_system_logout','plugin','logout','','system',0,1,1,0,'{\"name\":\"plg_system_logout\",\"type\":\"plugin\",\"creationDate\":\"2009-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2009 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Logout\",\"filename\":\"logout\"}','','',NULL,NULL,3,0,NULL,1),
(431,0,'plg_user_contactcreator','plugin','contactcreator','','user',0,0,1,0,'{\"name\":\"plg_user_contactcreator\",\"type\":\"plugin\",\"creationDate\":\"2009-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2009 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTACTCREATOR_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\User\\\\ContactCreator\",\"filename\":\"contactcreator\"}','{\"autowebpage\":\"\",\"category\":\"34\",\"autopublish\":\"0\"}','',NULL,NULL,1,0,NULL,1),
(432,0,'plg_user_joomla','plugin','joomla','','user',0,1,1,0,'{\"name\":\"plg_user_joomla\",\"type\":\"plugin\",\"creationDate\":\"2006-12\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\User\\\\Joomla\",\"filename\":\"joomla\"}','{\"strong_passwords\":\"1\",\"autoregister\":\"1\"}','',NULL,NULL,2,0,NULL,1),
(433,0,'plg_user_profile','plugin','profile','','user',0,0,1,0,'{\"name\":\"plg_user_profile\",\"type\":\"plugin\",\"creationDate\":\"2008-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2008 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_PROFILE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\User\\\\Profile\",\"filename\":\"profile\"}','{\"register-require_address1\":\"1\",\"register-require_address2\":\"1\",\"register-require_city\":\"1\",\"register-require_region\":\"1\",\"register-require_country\":\"1\",\"register-require_postal_code\":\"1\",\"register-require_phone\":\"1\",\"register-require_website\":\"1\",\"register-require_favoritebook\":\"1\",\"register-require_aboutme\":\"1\",\"register-require_tos\":\"1\",\"register-require_dob\":\"1\",\"profile-require_address1\":\"1\",\"profile-require_address2\":\"1\",\"profile-require_city\":\"1\",\"profile-require_region\":\"1\",\"profile-require_country\":\"1\",\"profile-require_postal_code\":\"1\",\"profile-require_phone\":\"1\",\"profile-require_website\":\"1\",\"profile-require_favoritebook\":\"1\",\"profile-require_aboutme\":\"1\",\"profile-require_tos\":\"1\",\"profile-require_dob\":\"1\"}','',NULL,NULL,0,0,NULL,1),
(434,0,'plg_extension_joomla','plugin','joomla','','extension',0,1,1,0,'{\"name\":\"plg_extension_joomla\",\"type\":\"plugin\",\"creationDate\":\"2010-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Extension\\\\Joomla\",\"filename\":\"joomla\"}','','',NULL,NULL,1,0,NULL,1),
(435,0,'plg_content_joomla','plugin','joomla','','content',0,1,1,0,'{\"name\":\"plg_content_joomla\",\"type\":\"plugin\",\"creationDate\":\"2010-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\Joomla\",\"filename\":\"joomla\"}','','',NULL,NULL,0,0,NULL,1),
(436,0,'plg_system_languagecode','plugin','languagecode','','system',0,0,1,0,'{\"name\":\"plg_system_languagecode\",\"type\":\"plugin\",\"creationDate\":\"2011-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\LanguageCode\",\"filename\":\"languagecode\"}','{\"ar-aa\":\"\",\"en-gb\":\"\"}','',NULL,NULL,10,0,NULL,1),
(437,0,'plg_quickicon_joomlaupdate','plugin','joomlaupdate','','quickicon',0,1,1,0,'{\"name\":\"plg_quickicon_joomlaupdate\",\"type\":\"plugin\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Quickicon\\\\Joomlaupdate\",\"filename\":\"joomlaupdate\"}','','',NULL,NULL,0,0,NULL,1),
(438,0,'plg_quickicon_extensionupdate','plugin','extensionupdate','','quickicon',0,1,1,0,'{\"name\":\"plg_quickicon_extensionupdate\",\"type\":\"plugin\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Quickicon\\\\Extensionupdate\",\"filename\":\"extensionupdate\"}','','',NULL,NULL,0,0,NULL,1),
(440,0,'plg_system_highlight','plugin','highlight','','system',0,1,1,0,'{\"name\":\"plg_system_highlight\",\"type\":\"plugin\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Highlight\",\"filename\":\"highlight\"}','','',NULL,NULL,7,0,NULL,1),
(441,0,'plg_content_finder','plugin','finder','','content',0,1,1,0,'{\"name\":\"plg_content_finder\",\"type\":\"plugin\",\"creationDate\":\"2011-12\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\Finder\",\"filename\":\"finder\"}','','',NULL,NULL,0,0,'',1),
(442,0,'plg_finder_categories','plugin','categories','','finder',0,1,1,0,'{\"name\":\"plg_finder_categories\",\"type\":\"plugin\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Finder\\\\Categories\",\"filename\":\"categories\"}','','',NULL,NULL,1,0,NULL,1),
(443,0,'plg_finder_contacts','plugin','contacts','','finder',0,1,1,0,'{\"name\":\"plg_finder_contacts\",\"type\":\"plugin\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTACTS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Finder\\\\Contacts\",\"filename\":\"contacts\"}','','',NULL,NULL,2,0,NULL,1),
(444,0,'plg_finder_content','plugin','content','','finder',0,1,1,0,'{\"name\":\"plg_finder_content\",\"type\":\"plugin\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Finder\\\\Content\",\"filename\":\"content\"}','','',NULL,NULL,3,0,NULL,1),
(445,0,'plg_finder_newsfeeds','plugin','newsfeeds','','finder',0,1,1,0,'{\"name\":\"plg_finder_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Finder\\\\Newsfeeds\",\"filename\":\"newsfeeds\"}','','',NULL,NULL,4,0,NULL,1),
(447,0,'plg_finder_tags','plugin','tags','','finder',0,1,1,0,'{\"name\":\"plg_finder_tags\",\"type\":\"plugin\",\"creationDate\":\"2013-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Finder\\\\Tags\",\"filename\":\"tags\"}','','',NULL,NULL,0,0,NULL,1),
(449,0,'plg_authentication_cookie','plugin','cookie','','authentication',0,1,1,0,'{\"name\":\"plg_authentication_cookie\",\"type\":\"plugin\",\"creationDate\":\"2013-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTHENTICATION_COOKIE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Authentication\\\\Cookie\",\"filename\":\"cookie\"}','','',NULL,NULL,0,0,NULL,1),
(451,10093,'plg_search_tags','plugin','tags','','search',0,1,1,0,'{\"name\":\"plg_search_tags\",\"type\":\"plugin\",\"creationDate\":\"17.08.2021\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2014 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0-dev\",\"description\":\"\",\"group\":\"\",\"changelogurl\":\"\",\"filename\":\"tags\"}','{\"search_limit\":\"50\",\"show_tagged_items\":\"1\"}','',NULL,NULL,0,0,NULL,0),
(453,0,'plg_editors-xtd_module','plugin','module','','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_module\",\"type\":\"plugin\",\"creationDate\":\"2015-10\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2015 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_MODULE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\EditorsXtd\\\\Module\",\"filename\":\"module\"}','','',NULL,NULL,0,0,NULL,1),
(454,0,'plg_system_stats','plugin','stats','','system',0,0,1,0,'{\"name\":\"plg_system_stats\",\"type\":\"plugin\",\"creationDate\":\"2013-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_SYSTEM_STATS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Stats\",\"filename\":\"stats\"}','{\"mode\":3,\"lastrun\":\"\",\"unique_id\":\"88243b7038530893fcf75377a15988fc09e5cca1\",\"interval\":12}','',NULL,NULL,0,0,NULL,1),
(455,0,'plg_installer_packageinstaller','plugin','packageinstaller','','installer',0,1,1,0,'{\"name\":\"plg_installer_packageinstaller\",\"type\":\"plugin\",\"creationDate\":\"2016-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_PACKAGEINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Installer\\\\Package\",\"filename\":\"packageinstaller\"}','','',NULL,NULL,1,0,NULL,1),
(456,0,'plg_installer_folderinstaller','plugin','folderinstaller','','installer',0,1,1,0,'{\"name\":\"plg_installer_folderinstaller\",\"type\":\"plugin\",\"creationDate\":\"2016-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_FOLDERINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Installer\\\\Folder\",\"filename\":\"folderinstaller\"}','','',NULL,NULL,2,0,NULL,1),
(457,0,'plg_installer_urlinstaller','plugin','urlinstaller','','installer',0,1,1,0,'{\"name\":\"plg_installer_urlinstaller\",\"type\":\"plugin\",\"creationDate\":\"2016-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_URLINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Installer\\\\Url\",\"filename\":\"urlinstaller\"}','','',NULL,NULL,3,0,NULL,1),
(458,0,'plg_quickicon_phpversioncheck','plugin','phpversioncheck','','quickicon',0,1,1,0,'{\"name\":\"plg_quickicon_phpversioncheck\",\"type\":\"plugin\",\"creationDate\":\"2016-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_QUICKICON_PHPVERSIONCHECK_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Quickicon\\\\PhpVersionCheck\",\"filename\":\"phpversioncheck\"}','','',NULL,NULL,0,0,NULL,1),
(459,0,'plg_editors-xtd_menu','plugin','menu','','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_menu\",\"type\":\"plugin\",\"creationDate\":\"2016-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\EditorsXtd\\\\Menu\",\"filename\":\"menu\"}','','',NULL,NULL,0,0,NULL,1),
(460,0,'plg_editors-xtd_contact','plugin','contact','','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_contact\",\"type\":\"plugin\",\"creationDate\":\"2016-10\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\EditorsXtd\\\\Contact\",\"filename\":\"contact\"}','','',NULL,NULL,0,0,NULL,1),
(461,0,'plg_system_fields','plugin','fields','','system',0,1,1,0,'{\"name\":\"plg_system_fields\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_SYSTEM_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Fields\",\"filename\":\"fields\"}','','',NULL,NULL,0,0,NULL,1),
(462,0,'plg_fields_calendar','plugin','calendar','','fields',0,1,1,0,'{\"name\":\"plg_fields_calendar\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_CALENDAR_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Calendar\",\"filename\":\"calendar\"}','','',NULL,NULL,0,0,NULL,1),
(463,0,'plg_fields_checkboxes','plugin','checkboxes','','fields',0,1,1,0,'{\"name\":\"plg_fields_checkboxes\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_CHECKBOXES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Checkboxes\",\"filename\":\"checkboxes\"}','','',NULL,NULL,0,0,NULL,1),
(464,0,'plg_fields_color','plugin','color','','fields',0,1,1,0,'{\"name\":\"plg_fields_color\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_COLOR_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Color\",\"filename\":\"color\"}','','',NULL,NULL,0,0,NULL,1),
(465,0,'plg_fields_editor','plugin','editor','','fields',0,1,1,0,'{\"name\":\"plg_fields_editor\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_EDITOR_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Editor\",\"filename\":\"editor\"}','','',NULL,NULL,0,0,NULL,1),
(466,0,'plg_fields_imagelist','plugin','imagelist','','fields',0,1,1,0,'{\"name\":\"plg_fields_imagelist\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_IMAGELIST_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Imagelist\",\"filename\":\"imagelist\"}','','',NULL,NULL,0,0,NULL,1),
(467,0,'plg_fields_integer','plugin','integer','','fields',0,1,1,0,'{\"name\":\"plg_fields_integer\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_INTEGER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Integer\",\"filename\":\"integer\"}','{\"multiple\":\"0\",\"first\":\"1\",\"last\":\"100\",\"step\":\"1\"}','',NULL,NULL,0,0,NULL,1),
(468,0,'plg_fields_list','plugin','list','','fields',0,1,1,0,'{\"name\":\"plg_fields_list\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_LIST_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\ListField\",\"filename\":\"list\"}','','',NULL,NULL,0,0,NULL,1),
(469,0,'plg_fields_media','plugin','media','','fields',0,1,1,0,'{\"name\":\"plg_fields_media\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Media\",\"filename\":\"media\"}','','',NULL,NULL,0,0,NULL,1),
(470,0,'plg_fields_radio','plugin','radio','','fields',0,1,1,0,'{\"name\":\"plg_fields_radio\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_RADIO_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Radio\",\"filename\":\"radio\"}','','',NULL,NULL,0,0,NULL,1),
(471,0,'plg_fields_sql','plugin','sql','','fields',0,1,1,0,'{\"name\":\"plg_fields_sql\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_SQL_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\SQL\",\"filename\":\"sql\"}','','',NULL,NULL,0,0,NULL,1),
(472,0,'plg_fields_text','plugin','text','','fields',0,1,1,0,'{\"name\":\"plg_fields_text\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_TEXT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Text\",\"filename\":\"text\"}','','',NULL,NULL,0,0,NULL,1),
(473,0,'plg_fields_textarea','plugin','textarea','','fields',0,1,1,0,'{\"name\":\"plg_fields_textarea\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_TEXTAREA_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Textarea\",\"filename\":\"textarea\"}','','',NULL,NULL,0,0,NULL,1),
(474,0,'plg_fields_url','plugin','url','','fields',0,1,1,0,'{\"name\":\"plg_fields_url\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_URL_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Url\",\"filename\":\"url\"}','','',NULL,NULL,0,0,NULL,1),
(475,0,'plg_fields_user','plugin','user','','fields',0,1,1,0,'{\"name\":\"plg_fields_user\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_USER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\User\",\"filename\":\"user\"}','','',NULL,NULL,0,0,NULL,1),
(476,0,'plg_fields_usergrouplist','plugin','usergrouplist','','fields',0,1,1,0,'{\"name\":\"plg_fields_usergrouplist\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_USERGROUPLIST_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\UsergroupList\",\"filename\":\"usergrouplist\"}','','',NULL,NULL,0,0,NULL,1),
(477,0,'plg_content_fields','plugin','fields','','content',0,1,1,0,'{\"name\":\"plg_content_fields\",\"type\":\"plugin\",\"creationDate\":\"2017-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_CONTENT_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\Fields\",\"filename\":\"fields\"}','','',NULL,NULL,0,0,NULL,1),
(478,0,'plg_editors-xtd_fields','plugin','fields','','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_fields\",\"type\":\"plugin\",\"creationDate\":\"2017-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\EditorsXtd\\\\Fields\",\"filename\":\"fields\"}','','',NULL,NULL,0,0,NULL,1),
(479,0,'plg_sampledata_blog','plugin','blog','','sampledata',0,0,1,0,'{\"name\":\"plg_sampledata_blog\",\"type\":\"plugin\",\"creationDate\":\"2017-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.0\",\"description\":\"PLG_SAMPLEDATA_BLOG_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\SampleData\\\\Blog\",\"filename\":\"blog\"}','','',NULL,NULL,0,0,NULL,1),
(482,0,'plg_content_confirmconsent','plugin','confirmconsent','','content',0,0,1,0,'{\"name\":\"plg_content_confirmconsent\",\"type\":\"plugin\",\"creationDate\":\"2018-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_CONTENT_CONFIRMCONSENT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\ConfirmConsent\",\"filename\":\"confirmconsent\"}','{}','',NULL,NULL,0,0,NULL,1),
(483,0,'plg_system_actionlogs','plugin','actionlogs','','system',0,0,1,0,'{\"name\":\"plg_system_actionlogs\",\"type\":\"plugin\",\"creationDate\":\"2018-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_SYSTEM_ACTIONLOGS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\ActionLogs\",\"filename\":\"actionlogs\"}','{}','',NULL,NULL,0,0,NULL,1),
(484,0,'plg_actionlog_joomla','plugin','joomla','','actionlog',0,1,1,0,'{\"name\":\"plg_actionlog_joomla\",\"type\":\"plugin\",\"creationDate\":\"2018-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_ACTIONLOG_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Actionlog\\\\Joomla\",\"filename\":\"joomla\"}','{}','',NULL,NULL,0,0,NULL,1),
(485,0,'plg_system_privacyconsent','plugin','privacyconsent','','system',0,0,1,0,'{\"name\":\"plg_system_privacyconsent\",\"type\":\"plugin\",\"creationDate\":\"2018-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_SYSTEM_PRIVACYCONSENT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\PrivacyConsent\",\"filename\":\"privacyconsent\"}','{}','',NULL,NULL,0,0,NULL,1),
(487,0,'plg_privacy_user','plugin','user','','privacy',0,1,1,0,'{\"name\":\"plg_privacy_user\",\"type\":\"plugin\",\"creationDate\":\"2018-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_USER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Privacy\\\\User\",\"filename\":\"user\"}','{}','',NULL,NULL,0,0,NULL,1),
(488,0,'plg_quickicon_privacycheck','plugin','privacycheck','','quickicon',0,1,1,0,'{\"name\":\"plg_quickicon_privacycheck\",\"type\":\"plugin\",\"creationDate\":\"2018-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_QUICKICON_PRIVACYCHECK_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Quickicon\\\\PrivacyCheck\",\"filename\":\"privacycheck\"}','{}','',NULL,NULL,0,0,NULL,1),
(489,0,'plg_user_terms','plugin','terms','','user',0,0,1,0,'{\"name\":\"plg_user_terms\",\"type\":\"plugin\",\"creationDate\":\"2018-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_USER_TERMS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\User\\\\Terms\",\"filename\":\"terms\"}','{}','',NULL,NULL,0,0,NULL,1),
(490,0,'plg_privacy_contact','plugin','contact','','privacy',0,1,1,0,'{\"name\":\"plg_privacy_contact\",\"type\":\"plugin\",\"creationDate\":\"2018-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Privacy\\\\Contact\",\"filename\":\"contact\"}','{}','',NULL,NULL,0,0,NULL,1),
(491,0,'plg_privacy_content','plugin','content','','privacy',0,1,1,0,'{\"name\":\"plg_privacy_content\",\"type\":\"plugin\",\"creationDate\":\"2018-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Privacy\\\\Content\",\"filename\":\"content\"}','{}','',NULL,NULL,0,0,NULL,1),
(492,0,'plg_privacy_message','plugin','message','','privacy',0,1,1,0,'{\"name\":\"plg_privacy_message\",\"type\":\"plugin\",\"creationDate\":\"2018-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_MESSAGE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Privacy\\\\Message\",\"filename\":\"message\"}','{}','',NULL,NULL,0,0,NULL,1),
(493,0,'plg_privacy_actionlogs','plugin','actionlogs','','privacy',0,1,1,0,'{\"name\":\"plg_privacy_actionlogs\",\"type\":\"plugin\",\"creationDate\":\"2018-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_ACTIONLOGS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Privacy\\\\Actionlogs\",\"filename\":\"actionlogs\"}','{}','',NULL,NULL,0,0,NULL,1),
(494,0,'plg_captcha_recaptcha_invisible','plugin','recaptcha_invisible','','captcha',0,0,1,0,'{\"name\":\"plg_captcha_recaptcha_invisible\",\"type\":\"plugin\",\"creationDate\":\"2017-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8\",\"description\":\"PLG_CAPTCHA_RECAPTCHA_INVISIBLE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Captcha\\\\InvisibleReCaptcha\",\"filename\":\"recaptcha_invisible\"}','{\"public_key\":\"\",\"private_key\":\"\",\"theme\":\"clean\"}','',NULL,NULL,0,0,NULL,0),
(495,0,'plg_privacy_consents','plugin','consents','','privacy',0,1,1,0,'{\"name\":\"plg_privacy_consents\",\"type\":\"plugin\",\"creationDate\":\"2018-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_CONSENTS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Privacy\\\\Consents\",\"filename\":\"consents\"}','{}','',NULL,NULL,0,0,NULL,1),
(600,802,'English (en-GB)','language','en-GB','','',0,1,1,1,'{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"2026-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"6.1.2\",\"description\":\"en-GB site language\",\"group\":\"\",\"changelogurl\":\"\"}','','',NULL,NULL,0,0,NULL,1),
(601,802,'English (en-GB)','language','en-GB','','',1,1,1,1,'{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"2026-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"6.1.2\",\"description\":\"en-GB administrator language\",\"group\":\"\",\"changelogurl\":\"\"}','','',NULL,NULL,0,0,NULL,1),
(700,0,'files_joomla','file','joomla','','',0,1,1,1,'{\"name\":\"files_joomla\",\"type\":\"file\",\"creationDate\":\"2026-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"6.1.2\",\"description\":\"FILES_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\"}','','',NULL,NULL,0,0,NULL,1),
(802,0,'English (en-GB) Language Pack','package','pkg_en-GB','','',0,1,1,1,'{\"name\":\"English (en-GB) Language Pack\",\"type\":\"package\",\"creationDate\":\"2026-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"6.1.2.1\",\"description\":\"en-GB language pack\",\"group\":\"\",\"changelogurl\":\"\",\"filename\":\"pkg_en-GB\"}','','',NULL,NULL,0,0,NULL,1),
(10002,0,'System - Helix3 Framework','plugin','helix3','','system',0,1,1,0,'{\"name\":\"System - Helix3 Framework\",\"type\":\"plugin\",\"creationDate\":\"Jan 2015\",\"author\":\"JoomShaper.com\",\"copyright\":\"Copyright (c) 2010 - 2026 JoomShaper. All rights reserved.\",\"authorEmail\":\"support@joomshaper.com\",\"authorUrl\":\"http:\\/\\/www.joomshaper.com\",\"version\":\"3.1.3\",\"description\":\"Helix3 Framework - Joomla Template Framework by JoomShaper\",\"group\":\"\",\"changelogurl\":\"\",\"filename\":\"helix3\"}','{}','',NULL,NULL,0,0,NULL,0),
(10003,0,'shaper_helix3','template','shaper_helix3','','',0,1,1,0,'{\"name\":\"shaper_helix3\",\"type\":\"template\",\"creationDate\":\"Jan 2016\",\"author\":\"JoomShaper.com\",\"copyright\":\"Copyright (c) 2010 - 2026 JoomShaper.com. All rights reserved.\",\"authorEmail\":\"support@joomshaper.com\",\"authorUrl\":\"https:\\/\\/www.joomshaper.com\",\"version\":\"3.1.3\",\"description\":\"Shaper Helix3 - Starter Template of Helix3 framework\",\"group\":\"\",\"changelogurl\":\"\",\"filename\":\"templateDetails\"}','{\"sticky_header\":\"1\",\"boxed_layout\":\"0\",\"logo_type\":\"image\",\"logo_position\":\"logo\",\"body_bg_repeat\":\"inherit\",\"body_bg_size\":\"inherit\",\"body_bg_attachment\":\"inherit\",\"body_bg_position\":\"0 0\",\"enabled_copyright\":\"1\",\"copyright_position\":\"footer1\",\"copyright\":\"\\u00a9 2015 Your Company. All Rights Reserved. Designed By JoomShaper\",\"show_social_icons\":\"1\",\"social_position\":\"top1\",\"enable_contactinfo\":\"1\",\"contact_position\":\"top2\",\"contact_phone\":\"+228 872 4444\",\"contact_email\":\"contact@email.com\",\"comingsoon_mode\":\"0\",\"comingsoon_title\":\"Coming Soon Title\",\"comingsoon_date\":\"5-10-2018\",\"comingsoon_content\":\"Coming soon content\",\"preset\":\"preset1\",\"preset1_bg\":\"#ffffff\",\"preset1_text\":\"#000000\",\"preset1_major\":\"#22b8f0\",\"preset2_bg\":\"#f2f2f2\",\"preset2_text\":\"#666666\",\"preset2_major\":\"#22b8f0\",\"preset3_bg\":\"#f2f2f2\",\"preset3_text\":\"#666666\",\"preset3_major\":\"#22b8f0\",\"menu\":\"mainmenu\",\"menu_type\":\"1\",\"menu_animation\":\"1\",\"enable_body_font\":\"0\",\"enable_h1_font\":\"0\",\"enable_h2_font\":\"0\",\"enable_h3_font\":\"0\",\"enable_h4_font\":\"0\",\"enable_h5_font\":\"0\",\"enable_h6_font\":\"0\",\"enable_navigation_font\":\"0\",\"enable_custom_font\":\"0\",\"compress_css\":\"0\",\"compress_js\":\"0\",\"lessoption\":\"0\",\"show_post_format\":\"1\",\"commenting_engine\":\"disqus\",\"disqus_devmode\":\"0\",\"intensedebate_acc\":\"\",\"fb_width\":\"500\",\"fb_cpp\":\"10\",\"comments_count\":\"1\",\"social_share\":\"1\"}','',NULL,NULL,0,0,NULL,0),
(10007,0,'SP Simple Portfolio','component','com_spsimpleportfolio','','',1,1,0,0,'{\"name\":\"SP Simple Portfolio\",\"type\":\"component\",\"creationDate\":\"December 2015\",\"author\":\"JoomShaper\",\"copyright\":\"Copyright (c) 2010- 2022 JoomShaper. All rights reserved.\",\"authorEmail\":\"support@joomshaper.com\",\"authorUrl\":\"http:\\/\\/www.joomshaper.com\",\"version\":\"2.2.1\",\"description\":\"Simple Portfolio Component for Joomla\",\"group\":\"\",\"changelogurl\":\"\",\"filename\":\"spsimpleportfolio\"}','{}','',NULL,NULL,0,0,NULL,0),
(10008,0,'SP Simple Portfolio Module','module','mod_spsimpleportfolio','','',0,1,0,0,'{\"name\":\"SP Simple Portfolio Module\",\"type\":\"module\",\"creationDate\":\"December 2014\",\"author\":\"JoomShaper\",\"copyright\":\"Copyright (C) 2010 - 2022 JoomShaper. All rights reserved.\",\"authorEmail\":\"support@joomshaper.com\",\"authorUrl\":\"www.joomshaper.com\",\"version\":\"2.1.0\",\"description\":\"Module to display latest item from SP Simple Portfolio\",\"group\":\"\",\"changelogurl\":\"\",\"filename\":\"mod_spsimpleportfolio\"}','{\"show_filter\":\"1\",\"layout_type\":\"default\",\"columns\":\"3\",\"thumbnail_type\":\"masonry\",\"limit\":\"12\",\"cache\":\"1\",\"cache_time\":\"900\"}','',NULL,NULL,0,0,NULL,0),
(10039,0,'SP Page Builder','component','com_sppagebuilder','','',1,1,0,0,'{\"name\":\"SP Page Builder\",\"type\":\"component\",\"creationDate\":\"Sep 2014\",\"author\":\"JoomShaper\",\"copyright\":\"Copyright @ 2010 - 2025 JoomShaper. All rights reserved.\",\"authorEmail\":\"support@joomshaper.com\",\"authorUrl\":\"https:\\/\\/www.joomshaper.com\",\"version\":\"6.6.2\",\"description\":\"\",\"group\":\"\",\"changelogurl\":\"\",\"filename\":\"sppagebuilder\"}','{\"sppb_color_variables\":[]}','',NULL,NULL,0,0,NULL,0),
(10040,0,'SP Page Builder','module','mod_sppagebuilder','','',0,1,0,0,'{\"name\":\"SP Page Builder\",\"type\":\"module\",\"creationDate\":\"Oct 2016\",\"author\":\"JoomShaper\",\"copyright\":\"Copyright (C) 2010 - 2024 JoomShaper.com. All rights reserved.\",\"authorEmail\":\"support@joomshaper.com\",\"authorUrl\":\"www.joomshaper.com\",\"version\":\"6.6.2\",\"description\":\"Module to display content from SP Page Builder\",\"group\":\"\",\"changelogurl\":\"\",\"filename\":\"mod_sppagebuilder\"}','{\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}','',NULL,NULL,0,0,NULL,0),
(10041,0,'plg_behaviour_taggable','plugin','taggable','','behaviour',0,1,1,0,'{\"name\":\"plg_behaviour_taggable\",\"type\":\"plugin\",\"creationDate\":\"2015-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_BEHAVIOUR_TAGGABLE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Behaviour\\\\Taggable\",\"filename\":\"taggable\"}','{}','',NULL,NULL,0,0,NULL,1),
(10042,0,'plg_behaviour_versionable','plugin','versionable','','behaviour',0,1,1,0,'{\"name\":\"plg_behaviour_versionable\",\"type\":\"plugin\",\"creationDate\":\"2015-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_BEHAVIOUR_VERSIONABLE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Behaviour\\\\Versionable\",\"filename\":\"versionable\"}','{}','',NULL,NULL,0,0,NULL,1),
(10043,0,'atum','template','atum','','',1,1,1,0,'{\"name\":\"atum\",\"type\":\"template\",\"creationDate\":\"2016-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_ATUM_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"inheritable\":true,\"filename\":\"templateDetails\"}','{}','',NULL,NULL,0,0,NULL,1),
(10044,0,'cassiopeia','template','cassiopeia','','',0,1,1,0,'{\"name\":\"cassiopeia\",\"type\":\"template\",\"creationDate\":\"2017-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_CASSIOPEIA_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"inheritable\":true,\"filename\":\"templateDetails\"}','{}','',NULL,NULL,0,0,NULL,1),
(10045,0,'plg_filesystem_local','plugin','local','','filesystem',0,1,1,0,'{\"name\":\"plg_filesystem_local\",\"type\":\"plugin\",\"creationDate\":\"2017-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_FILESYSTEM_LOCAL_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Filesystem\\\\Local\",\"filename\":\"local\"}','{}','',NULL,NULL,0,0,NULL,1),
(10046,0,'plg_media-action_crop','plugin','crop','','media-action',0,1,1,0,'{\"name\":\"plg_media-action_crop\",\"type\":\"plugin\",\"creationDate\":\"2017-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_MEDIA-ACTION_CROP_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\MediaAction\\\\Crop\",\"filename\":\"crop\"}','{}','',NULL,NULL,0,0,NULL,1),
(10047,0,'plg_media-action_resize','plugin','resize','','media-action',0,1,1,0,'{\"name\":\"plg_media-action_resize\",\"type\":\"plugin\",\"creationDate\":\"2017-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_MEDIA-ACTION_RESIZE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\MediaAction\\\\Resize\",\"filename\":\"resize\"}','{}','',NULL,NULL,0,0,NULL,1),
(10048,0,'plg_media-action_rotate','plugin','rotate','','media-action',0,1,1,0,'{\"name\":\"plg_media-action_rotate\",\"type\":\"plugin\",\"creationDate\":\"2017-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_MEDIA-ACTION_ROTATE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\MediaAction\\\\Rotate\",\"filename\":\"rotate\"}','{}','',NULL,NULL,0,0,NULL,1),
(10049,0,'plg_system_httpheaders','plugin','httpheaders','','system',0,0,1,0,'{\"name\":\"plg_system_httpheaders\",\"type\":\"plugin\",\"creationDate\":\"2017-10\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_SYSTEM_HTTPHEADERS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Httpheaders\",\"filename\":\"httpheaders\"}','{}','',NULL,NULL,0,0,NULL,1),
(10050,0,'com_workflow','component','com_workflow','','',1,1,0,1,'{\"name\":\"com_workflow\",\"type\":\"component\",\"creationDate\":\"2017-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_WORKFLOW_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Workflow\"}','{}','',NULL,NULL,0,0,NULL,1),
(10051,0,'plg_workflow_publishing','plugin','publishing','','workflow',0,1,1,0,'{\"name\":\"plg_workflow_publishing\",\"type\":\"plugin\",\"creationDate\":\"2020-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WORKFLOW_PUBLISHING_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Workflow\\\\Publishing\",\"filename\":\"publishing\"}','{}','',NULL,NULL,0,0,NULL,0),
(10052,0,'plg_workflow_featuring','plugin','featuring','','workflow',0,1,1,0,'{\"name\":\"plg_workflow_featuring\",\"type\":\"plugin\",\"creationDate\":\"2020-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WORKFLOW_FEATURING_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Workflow\\\\Featuring\",\"filename\":\"featuring\"}','{}','',NULL,NULL,0,0,NULL,0),
(10053,0,'plg_workflow_notification','plugin','notification','','workflow',0,1,1,0,'{\"name\":\"plg_workflow_notification\",\"type\":\"plugin\",\"creationDate\":\"2020-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WORKFLOW_NOTIFICATION_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Workflow\\\\Notification\",\"filename\":\"notification\"}','{}','',NULL,NULL,0,0,NULL,0),
(10054,0,'plg_extension_namespacemap','plugin','namespacemap','','extension',0,1,1,1,'{\"name\":\"plg_extension_namespacemap\",\"type\":\"plugin\",\"creationDate\":\"2017-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_EXTENSION_NAMESPACEMAP_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Extension\\\\NamespaceMap\",\"filename\":\"namespacemap\"}','','',NULL,NULL,0,0,NULL,1),
(10055,0,'plg_installer_override','plugin','override','','installer',0,1,1,0,'{\"name\":\"plg_installer_override\",\"type\":\"plugin\",\"creationDate\":\"2018-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_INSTALLER_OVERRIDE_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Installer\\\\Override\",\"filename\":\"override\"}','','',NULL,NULL,4,0,NULL,1),
(10056,0,'plg_quickicon_overridecheck','plugin','overridecheck','','quickicon',0,1,1,0,'{\"name\":\"plg_quickicon_overridecheck\",\"type\":\"plugin\",\"creationDate\":\"2018-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_QUICKICON_OVERRIDECHECK_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Quickicon\\\\OverrideCheck\",\"filename\":\"overridecheck\"}','','',NULL,NULL,0,0,NULL,1),
(10057,0,'plg_extension_finder','plugin','finder','','extension',0,1,1,0,'{\"name\":\"plg_extension_finder\",\"type\":\"plugin\",\"creationDate\":\"2018-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_EXTENSION_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Extension\\\\Finder\",\"filename\":\"finder\"}','','',NULL,NULL,0,0,NULL,1),
(10058,0,'plg_api-authentication_basic','plugin','basic','','api-authentication',0,0,1,0,'{\"name\":\"plg_api-authentication_basic\",\"type\":\"plugin\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_API-AUTHENTICATION_BASIC_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\ApiAuthentication\\\\Basic\",\"filename\":\"basic\"}','{}','',NULL,NULL,0,0,NULL,1),
(10059,0,'plg_webservices_content','plugin','content','','webservices',0,1,1,0,'{\"name\":\"plg_webservices_content\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Content\",\"filename\":\"content\"}','{}','',NULL,NULL,0,0,NULL,1),
(10060,0,'com_mails','component','com_mails','','',1,1,1,1,'{\"name\":\"com_mails\",\"type\":\"component\",\"creationDate\":\"2019-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_MAILS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Mails\"}','{}','',NULL,NULL,0,0,NULL,1),
(10061,0,'plg_system_skipto','plugin','skipto','','system',0,1,1,0,'{\"name\":\"plg_system_skipto\",\"type\":\"plugin\",\"creationDate\":\"2020-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_SYSTEM_SKIPTO_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Skipto\",\"filename\":\"skipto\"}','{}','',NULL,NULL,0,0,NULL,1),
(10062,0,'plg_sampledata_multilang','plugin','multilang','','sampledata',0,1,1,0,'{\"name\":\"plg_sampledata_multilang\",\"type\":\"plugin\",\"creationDate\":\"2018-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_SAMPLEDATA_MULTILANG_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\SampleData\\\\MultiLanguage\",\"filename\":\"multilang\"}','{}','',NULL,NULL,0,0,NULL,1),
(10063,0,'plg_installer_webinstaller','plugin','webinstaller','','installer',0,1,1,0,'{\"name\":\"plg_installer_webinstaller\",\"type\":\"plugin\",\"creationDate\":\"2017-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_INSTALLER_WEBINSTALLER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Installer\\\\Web\",\"filename\":\"webinstaller\"}','{}','',NULL,NULL,0,0,NULL,1),
(10064,0,'plg_fields_subform','plugin','subform','','fields',0,1,1,0,'{\"name\":\"plg_fields_subform\",\"type\":\"plugin\",\"creationDate\":\"2017-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_FIELDS_SUBFORM_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Subform\",\"filename\":\"subform\"}','','',NULL,NULL,0,0,NULL,1),
(10065,0,'plg_system_webauthn','plugin','webauthn','','system',0,1,1,0,'{\"name\":\"plg_system_webauthn\",\"type\":\"plugin\",\"creationDate\":\"2019-07-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_SYSTEM_WEBAUTHN_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Webauthn\",\"filename\":\"webauthn\"}','{}','',NULL,NULL,0,0,NULL,1),
(10066,0,'mod_loginsupport','module','mod_loginsupport','','',1,1,1,0,'{\"name\":\"mod_loginsupport\",\"type\":\"module\",\"creationDate\":\"2019-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"MOD_LOGINSUPPORT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Loginsupport\",\"filename\":\"mod_loginsupport\"}','','',NULL,NULL,0,0,NULL,1),
(10067,0,'mod_frontend','module','mod_frontend','','',1,1,1,0,'{\"name\":\"mod_frontend\",\"type\":\"module\",\"creationDate\":\"2019-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"MOD_FRONTEND_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Frontend\",\"filename\":\"mod_frontend\"}','','',NULL,NULL,0,0,NULL,1),
(10068,0,'mod_messages','module','mod_messages','','',1,1,1,0,'{\"name\":\"mod_messages\",\"type\":\"module\",\"creationDate\":\"2019-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"MOD_MESSAGES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Messages\",\"filename\":\"mod_messages\"}','','',NULL,NULL,0,0,NULL,1),
(10069,0,'mod_post_installation_messages','module','mod_post_installation_messages','','',1,1,1,0,'{\"name\":\"mod_post_installation_messages\",\"type\":\"module\",\"creationDate\":\"2019-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"MOD_POST_INSTALLATION_MESSAGES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\PostInstallationMessages\",\"filename\":\"mod_post_installation_messages\"}','','',NULL,NULL,0,0,NULL,1),
(10070,0,'mod_user','module','mod_user','','',1,1,1,0,'{\"name\":\"mod_user\",\"type\":\"module\",\"creationDate\":\"2019-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"MOD_USER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\User\",\"filename\":\"mod_user\"}','','',NULL,NULL,0,0,NULL,1),
(10071,0,'mod_submenu','module','mod_submenu','','',1,1,1,0,'{\"name\":\"mod_submenu\",\"type\":\"module\",\"creationDate\":\"2006-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SUBMENU_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Submenu\",\"filename\":\"mod_submenu\"}','{}','',NULL,NULL,0,0,NULL,1),
(10072,0,'mod_privacy_status','module','mod_privacy_status','','',1,1,1,0,'{\"name\":\"mod_privacy_status\",\"type\":\"module\",\"creationDate\":\"2019-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"MOD_PRIVACY_STATUS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\PrivacyStatus\",\"filename\":\"mod_privacy_status\"}','{}','',NULL,NULL,0,0,NULL,1),
(10073,0,'plg_webservices_banners','plugin','banners','','webservices',0,1,1,0,'{\"name\":\"plg_webservices_banners\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Banners\",\"filename\":\"banners\"}','{}','',NULL,NULL,0,0,NULL,1),
(10074,0,'plg_webservices_config','plugin','config','','webservices',0,1,1,0,'{\"name\":\"plg_webservices_config\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_CONFIG_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Config\",\"filename\":\"config\"}','{}','',NULL,NULL,0,0,NULL,1),
(10075,0,'plg_webservices_contact','plugin','contact','','webservices',0,1,1,0,'{\"name\":\"plg_webservices_contact\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Contact\",\"filename\":\"contact\"}','{}','',NULL,NULL,0,0,NULL,1),
(10076,0,'plg_webservices_languages','plugin','languages','','webservices',0,1,1,0,'{\"name\":\"plg_webservices_languages\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Languages\",\"filename\":\"languages\"}','{}','',NULL,NULL,0,0,NULL,1),
(10077,0,'plg_webservices_menus','plugin','menus','','webservices',0,1,1,0,'{\"name\":\"plg_webservices_menus\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_MENUS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Menus\",\"filename\":\"menus\"}','{}','',NULL,NULL,0,0,NULL,1),
(10078,0,'plg_webservices_messages','plugin','messages','','webservices',0,1,1,0,'{\"name\":\"plg_webservices_messages\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_MESSAGES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Messages\",\"filename\":\"messages\"}','{}','',NULL,NULL,0,0,NULL,1),
(10079,0,'plg_webservices_modules','plugin','modules','','webservices',0,1,1,0,'{\"name\":\"plg_webservices_modules\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_MODULES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Modules\",\"filename\":\"modules\"}','{}','',NULL,NULL,0,0,NULL,1),
(10080,0,'plg_webservices_newsfeeds','plugin','newsfeeds','','webservices',0,1,1,0,'{\"name\":\"plg_webservices_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Newsfeeds\",\"filename\":\"newsfeeds\"}','{}','',NULL,NULL,0,0,NULL,1),
(10081,0,'plg_webservices_plugins','plugin','plugins','','webservices',0,1,1,0,'{\"name\":\"plg_webservices_plugins\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_PLUGINS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Plugins\",\"filename\":\"plugins\"}','{}','',NULL,NULL,0,0,NULL,1),
(10082,0,'plg_webservices_privacy','plugin','privacy','','webservices',0,1,1,0,'{\"name\":\"plg_webservices_privacy\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_PRIVACY_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Privacy\",\"filename\":\"privacy\"}','{}','',NULL,NULL,0,0,NULL,1),
(10083,0,'plg_webservices_redirect','plugin','redirect','','webservices',0,1,1,0,'{\"name\":\"plg_webservices_redirect\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_REDIRECT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Redirect\",\"filename\":\"redirect\"}','{}','',NULL,NULL,0,0,NULL,1),
(10084,0,'plg_webservices_tags','plugin','tags','','webservices',0,1,1,0,'{\"name\":\"plg_webservices_tags\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Tags\",\"filename\":\"tags\"}','{}','',NULL,NULL,0,0,NULL,1),
(10085,0,'plg_webservices_templates','plugin','templates','','webservices',0,1,1,0,'{\"name\":\"plg_webservices_templates\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_TEMPLATES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Templates\",\"filename\":\"templates\"}','{}','',NULL,NULL,0,0,NULL,1),
(10086,0,'plg_webservices_users','plugin','users','','webservices',0,1,1,0,'{\"name\":\"plg_webservices_users\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_USERS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Users\",\"filename\":\"users\"}','{}','',NULL,NULL,0,0,NULL,1),
(10087,0,'plg_webservices_installer','plugin','installer','','webservices',0,1,1,0,'{\"name\":\"plg_webservices_installer\",\"type\":\"plugin\",\"creationDate\":\"2020-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_INSTALLER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Installer\",\"filename\":\"installer\"}','{}','',NULL,NULL,0,0,NULL,0),
(10088,0,'plg_user_token','plugin','token','','user',0,1,1,0,'{\"name\":\"plg_user_token\",\"type\":\"plugin\",\"creationDate\":\"2019-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_USER_TOKEN_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\User\\\\Token\",\"filename\":\"token\"}','{}','',NULL,NULL,0,0,NULL,1),
(10089,0,'plg_api-authentication_token','plugin','token','','api-authentication',0,1,1,0,'{\"name\":\"plg_api-authentication_token\",\"type\":\"plugin\",\"creationDate\":\"2019-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_API-AUTHENTICATION_TOKEN_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\ApiAuthentication\\\\Token\",\"filename\":\"token\"}','{}','',NULL,NULL,0,0,NULL,1),
(10090,0,'plg_system_accessibility','plugin','accessibility','','system',0,0,1,0,'{\"name\":\"plg_system_accessibility\",\"type\":\"plugin\",\"creationDate\":\"2020-02-15\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_SYSTEM_ACCESSIBILITY_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Accessibility\",\"filename\":\"accessibility\"}','{}','',NULL,NULL,0,0,NULL,1),
(10091,802,'English (en-GB)','language','en-GB','','',3,1,1,1,'{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"2026-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"6.1.2\",\"description\":\"en-GB api language\",\"group\":\"\",\"changelogurl\":\"\"}','','',NULL,NULL,0,0,NULL,1),
(10092,0,'plg_quickicon_downloadkey','plugin','downloadkey','','quickicon',0,1,1,0,'{\"name\":\"plg_quickicon_downloadkey\",\"type\":\"plugin\",\"creationDate\":\"2019-10\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_QUICKICON_DOWNLOADKEY_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Quickicon\\\\Downloadkey\",\"filename\":\"downloadkey\"}','','',NULL,NULL,0,0,NULL,1),
(10093,0,'pkg_search','package','pkg_search','','',0,1,1,0,'{\"name\":\"pkg_search\",\"type\":\"package\",\"creationDate\":\"2021-08-17\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"\",\"group\":\"\",\"changelogurl\":\"\",\"filename\":\"pkg_search\"}','','',NULL,NULL,0,0,NULL,0),
(10094,0,'com_scheduler','component','com_scheduler','','',1,1,1,0,'{\"name\":\"com_scheduler\",\"type\":\"component\",\"creationDate\":\"2021-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1.0\",\"description\":\"COM_SCHEDULER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Scheduler\"}','{}','',NULL,NULL,0,0,NULL,1),
(10095,0,'plg_system_schedulerunner','plugin','schedulerunner','','system',0,1,1,0,'{\"name\":\"plg_system_schedulerunner\",\"type\":\"plugin\",\"creationDate\":\"2021-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1\",\"description\":\"PLG_SYSTEM_SCHEDULERUNNER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\ScheduleRunner\",\"filename\":\"schedulerunner\"}','{}','',NULL,NULL,15,0,NULL,1),
(10096,0,'plg_system_task_notification','plugin','tasknotification','','system',0,1,1,0,'{\"name\":\"plg_system_task_notification\",\"type\":\"plugin\",\"creationDate\":\"2021-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1\",\"description\":\"PLG_SYSTEM_TASK_NOTIFICATION_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\TaskNotification\",\"filename\":\"tasknotification\"}','','',NULL,NULL,22,0,NULL,1),
(10097,0,'plg_task_check_files','plugin','checkfiles','','task',0,1,1,0,'{\"name\":\"plg_task_check_files\",\"type\":\"plugin\",\"creationDate\":\"2021-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1\",\"description\":\"PLG_TASK_CHECK_FILES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Task\\\\Checkfiles\",\"filename\":\"checkfiles\"}','{}','',NULL,NULL,15,0,NULL,1),
(10099,0,'plg_task_requests','plugin','requests','','task',0,1,1,0,'{\"name\":\"plg_task_requests\",\"type\":\"plugin\",\"creationDate\":\"2021-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1\",\"description\":\"PLG_TASK_REQUESTS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Task\\\\Requests\",\"filename\":\"requests\"}','{}','',NULL,NULL,15,0,NULL,1),
(10100,0,'plg_task_site_status','plugin','sitestatus','','task',0,1,1,0,'{\"name\":\"plg_task_site_status\",\"type\":\"plugin\",\"creationDate\":\"2021-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1\",\"description\":\"PLG_TASK_SITE_STATUS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Task\\\\SiteStatus\",\"filename\":\"sitestatus\"}','{}','',NULL,NULL,15,0,NULL,1),
(10101,0,'plg_system_jooa11y','plugin','jooa11y','','system',0,1,1,0,'{\"name\":\"plg_system_jooa11y\",\"type\":\"plugin\",\"creationDate\":\"2022-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.2.0\",\"description\":\"PLG_SYSTEM_JOOA11Y_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Jooa11y\",\"filename\":\"jooa11y\"}','','',NULL,NULL,0,0,NULL,1),
(10102,0,'plg_webservices_media','plugin','media','','webservices',0,1,1,0,'{\"name\":\"plg_webservices_media\",\"type\":\"plugin\",\"creationDate\":\"2021-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1.0\",\"description\":\"PLG_WEBSERVICES_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Media\",\"filename\":\"media\"}','{}','',NULL,NULL,0,0,NULL,1),
(10103,0,'plg_multifactorauth_totp','plugin','totp','','multifactorauth',0,0,1,0,'{\"name\":\"plg_multifactorauth_totp\",\"type\":\"plugin\",\"creationDate\":\"2013-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_MULTIFACTORAUTH_TOTP_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Multifactorauth\\\\Totp\",\"filename\":\"totp\"}','','',NULL,NULL,1,0,NULL,1),
(10104,0,'plg_multifactorauth_yubikey','plugin','yubikey','','multifactorauth',0,0,1,0,'{\"name\":\"plg_multifactorauth_yubikey\",\"type\":\"plugin\",\"creationDate\":\"2013-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_MULTIFACTORAUTH_YUBIKEY_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Multifactorauth\\\\Yubikey\",\"filename\":\"yubikey\"}','','',NULL,NULL,2,0,NULL,1),
(10105,0,'plg_multifactorauth_webauthn','plugin','webauthn','','multifactorauth',0,0,1,0,'{\"name\":\"plg_multifactorauth_webauthn\",\"type\":\"plugin\",\"creationDate\":\"2022-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2022 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.2.0\",\"description\":\"PLG_MULTIFACTORAUTH_WEBAUTHN_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Multifactorauth\\\\Webauthn\",\"filename\":\"webauthn\"}','','',NULL,NULL,3,0,NULL,1),
(10106,0,'plg_multifactorauth_email','plugin','email','','multifactorauth',0,0,1,0,'{\"name\":\"plg_multifactorauth_email\",\"type\":\"plugin\",\"creationDate\":\"2022-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2022 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.2.0\",\"description\":\"PLG_MULTIFACTORAUTH_EMAIL_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Multifactorauth\\\\Email\",\"filename\":\"email\"}','','',NULL,NULL,4,0,NULL,1),
(10107,0,'plg_multifactorauth_fixed','plugin','fixed','','multifactorauth',0,0,1,0,'{\"name\":\"plg_multifactorauth_fixed\",\"type\":\"plugin\",\"creationDate\":\"2022-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2022 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.2.0\",\"description\":\"PLG_MULTIFACTORAUTH_FIXED_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Multifactorauth\\\\Fixed\",\"filename\":\"fixed\"}','','',NULL,NULL,5,0,NULL,1),
(10108,0,'plg_system_shortcut','plugin','shortcut','','system',0,1,1,0,'{\"name\":\"plg_system_shortcut\",\"type\":\"plugin\",\"creationDate\":\"2022-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2022 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.2.0\",\"description\":\"PLG_SYSTEM_SHORTCUT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Shortcut\",\"filename\":\"shortcut\"}','','',NULL,NULL,0,0,NULL,1),
(10110,0,'com_guidedtours','component','com_guidedtours','','',1,1,0,0,'{\"name\":\"com_guidedtours\",\"type\":\"component\",\"creationDate\":\"2023-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.3.0\",\"description\":\"COM_GUIDEDTOURS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Guidedtours\"}','{}','',NULL,NULL,0,0,NULL,1),
(10111,0,'mod_guidedtours','module','mod_guidedtours','','',1,1,1,0,'{\"name\":\"mod_guidedtours\",\"type\":\"module\",\"creationDate\":\"2023-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.3.0\",\"description\":\"MOD_GUIDEDTOURS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\GuidedTours\",\"filename\":\"mod_guidedtours\"}','{}','',NULL,NULL,0,0,NULL,1),
(10112,0,'plg_system_guidedtours','plugin','guidedtours','','system',0,1,1,0,'{\"name\":\"plg_system_guidedtours\",\"type\":\"plugin\",\"creationDate\":\"2023-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.3.0\",\"description\":\"PLG_SYSTEM_GUIDEDTOURS_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\GuidedTours\",\"filename\":\"guidedtours\"}','{}','',NULL,NULL,0,0,NULL,1),
(10113,0,'plg_quickicon_eos','plugin','eos','','quickicon',0,1,1,0,'{\"name\":\"plg_quickicon_eos\",\"type\":\"plugin\",\"creationDate\":\"2023-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.4.0\",\"description\":\"PLG_QUICKICON_EOS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Quickicon\\\\Eos\",\"filename\":\"eos\"}','','',NULL,NULL,7,0,NULL,1),
(10115,0,'plg_finder_spsimpleportfolio','plugin','spsimpleportfolio','','finder',0,1,1,0,'{\"name\":\"plg_finder_spsimpleportfolio\",\"type\":\"plugin\",\"creationDate\":\"2024-06\",\"author\":\"JoomShaper\",\"copyright\":\"(C) 2023 - 2024 JoomShaper.\",\"authorEmail\":\"support@joomshaper.com\",\"authorUrl\":\"www.joomshaper.com\",\"version\":\"1.0.0\",\"description\":\"PLG_FINDER_SPSIMPLEPORTFOLIO_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"JoomShaper\\\\Plugin\\\\Finder\\\\Spsimpleportfolio\",\"filename\":\"spsimpleportfolio\"}','{}','',NULL,NULL,0,0,NULL,0),
(10116,0,'plg_schemaorg_blogposting','plugin','blogposting','','schemaorg',0,1,1,0,'{\"name\":\"plg_schemaorg_blogposting\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_SCHEMAORG_BLOGPOSTING_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Schemaorg\\\\BlogPosting\",\"filename\":\"blogposting\"}','{}','',NULL,NULL,1,0,NULL,1),
(10117,0,'plg_schemaorg_book','plugin','book','','schemaorg',0,1,1,0,'{\"name\":\"plg_schemaorg_book\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_SCHEMAORG_BOOK_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Schemaorg\\\\Book\",\"filename\":\"book\"}','{}','',NULL,NULL,2,0,NULL,1),
(10118,0,'plg_schemaorg_event','plugin','event','','schemaorg',0,1,1,0,'{\"name\":\"plg_schemaorg_event\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_SCHEMAORG_EVENT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Schemaorg\\\\Event\",\"filename\":\"event\"}','{}','',NULL,NULL,3,0,NULL,1),
(10119,0,'plg_schemaorg_organization','plugin','organization','','schemaorg',0,1,1,0,'{\"name\":\"plg_schemaorg_organization\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_SCHEMAORG_ORGANIZATION_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Schemaorg\\\\Organization\",\"filename\":\"organization\"}','{}','',NULL,NULL,4,0,NULL,1),
(10120,0,'plg_schemaorg_person','plugin','person','','schemaorg',0,1,1,0,'{\"name\":\"plg_schemaorg_person\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_SCHEMAORG_PERSON_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Schemaorg\\\\Person\",\"filename\":\"person\"}','{}','',NULL,NULL,5,0,NULL,1),
(10121,0,'plg_schemaorg_recipe','plugin','recipe','','schemaorg',0,1,1,0,'{\"name\":\"plg_schemaorg_recipe\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_SCHEMAORG_RECIPE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Schemaorg\\\\Recipe\",\"filename\":\"recipe\"}','{}','',NULL,NULL,6,0,NULL,1),
(10122,0,'plg_schemaorg_jobposting','plugin','jobposting','','schemaorg',0,1,1,0,'{\"name\":\"plg_schemaorg_jobposting\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_SCHEMAORG_JOBPOSTING_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Schemaorg\\\\JobPosting\",\"filename\":\"jobposting\"}','{}','',NULL,NULL,7,0,NULL,1),
(10123,0,'plg_system_schemaorg','plugin','schemaorg','','system',0,1,1,0,'{\"name\":\"plg_system_schemaorg\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_SYSTEM_SCHEMAORG_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Schemaorg\",\"filename\":\"schemaorg\"}','{}','',NULL,NULL,0,0,NULL,1),
(10124,0,'plg_task_globalcheckin','plugin','globalcheckin','','task',0,1,1,0,'{\"name\":\"plg_task_globalcheckin\",\"type\":\"plugin\",\"creationDate\":\"2023-06-22\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_TASK_GLOBALCHECKIN_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Task\\\\Globalcheckin\",\"filename\":\"globalcheckin\"}','{}','',NULL,NULL,5,0,NULL,1),
(10125,0,'plg_task_deleteactionlogs','plugin','deleteactionlogs','','task',0,1,1,0,'{\"name\":\"plg_task_deleteactionlogs\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_TASK_DELETEACTIONLOGS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Task\\\\DeleteActionLogs\",\"filename\":\"deleteactionlogs\"}','{}','',NULL,NULL,0,0,NULL,1),
(10126,0,'plg_task_privacyconsent','plugin','privacyconsent','','task',0,1,1,0,'{\"name\":\"plg_task_privacyconsent\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_TASK_PRIVACYCONSENT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Task\\\\PrivacyConsent\",\"filename\":\"privacyconsent\"}','{}','',NULL,NULL,0,0,NULL,1),
(10127,0,'plg_task_rotatelogs','plugin','rotatelogs','','task',0,1,1,0,'{\"name\":\"plg_task_rotatelogs\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_TASK_ROTATELOGS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Task\\\\RotateLogs\",\"filename\":\"rotatelogs\"}','{}','',NULL,NULL,0,0,NULL,1),
(10128,0,'plg_task_sessiongc','plugin','sessiongc','','task',0,1,1,0,'{\"name\":\"plg_task_sessiongc\",\"type\":\"plugin\",\"creationDate\":\"2023-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_TASK_SESSIONGC_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Task\\\\SessionGC\",\"filename\":\"sessiongc\"}','{}','',NULL,NULL,0,0,NULL,1),
(10129,0,'plg_task_updatenotification','plugin','updatenotification','','task',0,1,1,0,'{\"name\":\"plg_task_updatenotification\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_TASK_UPDATENOTIFICATION_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Task\\\\UpdateNotification\",\"filename\":\"updatenotification\"}','{}','',NULL,NULL,0,0,NULL,1),
(10130,0,'plg_schemaorg_article','plugin','article','','schemaorg',0,1,1,0,'{\"name\":\"plg_schemaorg_article\",\"type\":\"plugin\",\"creationDate\":\"2024-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2024 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.1.0\",\"description\":\"PLG_SCHEMAORG_ARTICLE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Schemaorg\\\\Article\",\"filename\":\"article\"}','{}','',NULL,NULL,0,0,NULL,1),
(10131,0,'plg_schemaorg_custom','plugin','custom','','schemaorg',0,1,1,0,'{\"name\":\"plg_schemaorg_custom\",\"type\":\"plugin\",\"creationDate\":\"2024-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2024 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.1.0\",\"description\":\"PLG_SCHEMAORG_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Schemaorg\\\\Custom\",\"filename\":\"custom\"}','{}','',NULL,NULL,0,0,NULL,1),
(10132,0,'mod_articles','module','mod_articles','','',0,1,0,0,'{\"name\":\"mod_articles\",\"type\":\"module\",\"creationDate\":\"2024-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2024 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.2.0\",\"description\":\"MOD_ARTICLES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Articles\",\"filename\":\"mod_articles\"}','','',NULL,NULL,0,0,NULL,1),
(10133,0,'plg_extension_joomlaupdate','plugin','joomlaupdate','','extension',0,1,1,0,'{\"name\":\"plg_extension_joomlaupdate\",\"type\":\"plugin\",\"creationDate\":\"2025-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2025 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"1.0.0\",\"description\":\"PLG_EXTENSION_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Extension\\\\Joomlaupdate\",\"filename\":\"joomlaupdate\"}','','',NULL,NULL,0,0,NULL,1),
(10134,0,'plg_behaviour_compat6','plugin','compat6','','behaviour',0,1,1,0,'{\"name\":\"plg_behaviour_compat6\",\"type\":\"plugin\",\"creationDate\":\"2025-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2025 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"6.0.0\",\"description\":\"PLG_COMPAT6_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Behaviour\\\\Compat6\",\"filename\":\"compat6\"}','{\"classes_aliases\":\"1\",\"legacy_classes\":\"1\"}','',NULL,NULL,-1,0,NULL,1),
(10135,0,'plg_quickicon_autoupdate','plugin','autoupdate','','quickicon',0,1,1,0,'{\"name\":\"plg_quickicon_autoupdate\",\"type\":\"plugin\",\"creationDate\":\"2025-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2025 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.4.0\",\"description\":\"PLG_QUICKICON_AUTOUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Quickicon\\\\Autoupdate\",\"filename\":\"autoupdate\"}','','',NULL,NULL,-1,0,NULL,1),
(10136,0,'plg_webservices_joomlaupdate','plugin','joomlaupdate','','webservices',0,1,1,0,'{\"name\":\"plg_webservices_joomlaupdate\",\"type\":\"plugin\",\"creationDate\":\"2025-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2025 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.4.0\",\"description\":\"PLG_WEBSERVICES_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Joomlaupdate\",\"filename\":\"joomlaupdate\"}','','',NULL,NULL,-1,0,NULL,1),
(10138,0,'plg_fields_note','plugin','note','','fields',0,1,1,0,'{\"name\":\"plg_fields_note\",\"type\":\"plugin\",\"creationDate\":\"2025-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2025 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"6.0.0\",\"description\":\"PLG_FIELDS_NOTE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Note\",\"filename\":\"note\"}','{\"class\":\"alert alert-info\",\"heading\":\"h4\"}','',NULL,NULL,-1,0,NULL,1),
(10139,0,'plg_fields_number','plugin','number','','fields',0,1,1,0,'{\"name\":\"plg_fields_number\",\"type\":\"plugin\",\"creationDate\":\"2025-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2025 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"6.0.0\",\"description\":\"PLG_FIELDS_NUMBER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Number\",\"filename\":\"number\"}','{\"min\":\"1.0\",\"max\":\"100.0\",\"step\":\"0.1\",\"currency\":\"0\",\"position\":\"0\",\"decimals\":\"2\"}','',NULL,NULL,-1,0,NULL,1),
(10140,0,'cassiopeia_extended','template','cassiopeia_extended','','',0,1,1,0,'{\"name\":\"cassiopeia_extended\",\"type\":\"template\",\"creationDate\":\"2025-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2025 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_CASSIOPEIA_EXTENDED_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"inheritable\":false,\"parent\":\"cassiopeia\",\"filename\":\"templateDetails\"}','{\"brand\":\"1\",\"logoFile\":\"\",\"siteTitle\":\"\",\"siteDescription\":\"\",\"useFontScheme\":\"0\",\"systemFontBody\":\"\",\"systemFontHeading\":\"\",\"colorName\":\"colors_standard\",\"fluidContainer\":\"0\",\"stickyHeader\":\"0\",\"backTop\":\"0\",\"colorSettings\":\"0\",\"headerbg\":\"rgb(193, 205, 207)\",\"headercolor\":\"rgb(23, 23, 23)\",\"bodybg\":\"rgb(254, 254, 254)\",\"bodycolor\":\"rgb(23, 23, 23)\",\"linkcolor\":\"rgb(29, 121, 137)\",\"linkcolorh\":\"rgb(14, 59, 67)\",\"btnbg\":\"rgb(206, 60, 55)\",\"btnbgh\":\"rgb(131, 35, 32)\",\"btncolor\":\"rgb(254, 254, 254)\",\"btncolorh\":\"rgb(254, 254, 254)\",\"footerbg\":\"rgb(29, 121, 137)\",\"footercolor\":\"rgb(254, 254, 254)\",\"fontSettings\":\"0\",\"bodysize\":\"1\",\"h1size\":\"2\",\"h2size\":\"1.7\",\"h3size\":\"1.5\"}','',NULL,NULL,0,0,NULL,1),
(10141,0,'plg_captcha_powcaptcha','plugin','powcaptcha','','captcha',0,1,1,0,'{\"name\":\"plg_captcha_powcaptcha\",\"type\":\"plugin\",\"creationDate\":\"2025-12\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2025 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"6.1.0\",\"description\":\"PLG_CAPTCHA_POWCAPTCHA_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Captcha\\\\POWCaptcha\",\"filename\":\"powcaptcha\"}','{}','',NULL,NULL,0,0,NULL,1),
(10145,0,'Helix3 - Ajax','plugin','helix3','','ajax',0,1,1,0,'{\"name\":\"Helix3 - Ajax\",\"type\":\"plugin\",\"creationDate\":\"Jan 2015\",\"author\":\"JoomShaper.com\",\"copyright\":\"Copyright (c) 2010 - 2026 JoomShaper. All rights reserved.\",\"authorEmail\":\"support@joomshaper.com\",\"authorUrl\":\"http:\\/\\/www.joomshaper.com\",\"version\":\"3.1.3\",\"description\":\"Helix3 Framework - Joomla Template Framework by JoomShaper\",\"group\":\"\",\"changelogurl\":\"\",\"filename\":\"helix3\"}','{}','',NULL,NULL,0,0,NULL,0);
/*!40000 ALTER TABLE `adtifuja_extensions` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtifuja_fields`
--

DROP TABLE IF EXISTS `adtifuja_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtifuja_fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT 0,
  `context` varchar(255) NOT NULL DEFAULT '',
  `group_id` int(10) unsigned NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) NOT NULL DEFAULT '',
  `default_value` text DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'text',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT 0,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `params` text NOT NULL,
  `fieldparams` mediumtext NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created_time` datetime NOT NULL,
  `created_user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `modified_time` datetime NOT NULL,
  `modified_by` int(10) unsigned NOT NULL DEFAULT 0,
  `access` int(11) NOT NULL DEFAULT 1,
  `only_use_in_subform` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_created_user_id` (`created_user_id`),
  KEY `idx_access` (`access`),
  KEY `idx_context` (`context`(191)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtifuja_fields`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtifuja_fields` WRITE;
/*!40000 ALTER TABLE `adtifuja_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `adtifuja_fields` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtifuja_fields_categories`
--

DROP TABLE IF EXISTS `adtifuja_fields_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtifuja_fields_categories` (
  `field_id` int(11) NOT NULL DEFAULT 0,
  `category_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`field_id`,`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtifuja_fields_categories`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtifuja_fields_categories` WRITE;
/*!40000 ALTER TABLE `adtifuja_fields_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `adtifuja_fields_categories` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtifuja_fields_groups`
--

DROP TABLE IF EXISTS `adtifuja_fields_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtifuja_fields_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT 0,
  `context` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT 0,
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `params` text NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL DEFAULT 0,
  `modified` datetime NOT NULL,
  `modified_by` int(10) unsigned NOT NULL DEFAULT 0,
  `access` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_created_by` (`created_by`),
  KEY `idx_access` (`access`),
  KEY `idx_context` (`context`(191)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtifuja_fields_groups`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtifuja_fields_groups` WRITE;
/*!40000 ALTER TABLE `adtifuja_fields_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `adtifuja_fields_groups` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtifuja_fields_values`
--

DROP TABLE IF EXISTS `adtifuja_fields_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtifuja_fields_values` (
  `field_id` int(10) unsigned NOT NULL,
  `item_id` varchar(255) NOT NULL COMMENT 'Allow references to items which have strings as ids, eg. none db systems.',
  `value` mediumtext DEFAULT NULL,
  KEY `idx_field_id` (`field_id`),
  KEY `idx_item_id` (`item_id`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtifuja_fields_values`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtifuja_fields_values` WRITE;
/*!40000 ALTER TABLE `adtifuja_fields_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `adtifuja_fields_values` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtifuja_finder_filters`
--

DROP TABLE IF EXISTS `adtifuja_finder_filters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtifuja_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT 1,
  `created` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL DEFAULT 0,
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL,
  `modified_by` int(10) unsigned NOT NULL DEFAULT 0,
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `map_count` int(10) unsigned NOT NULL DEFAULT 0,
  `data` text DEFAULT NULL,
  `params` mediumtext DEFAULT NULL,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtifuja_finder_filters`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtifuja_finder_filters` WRITE;
/*!40000 ALTER TABLE `adtifuja_finder_filters` DISABLE KEYS */;
/*!40000 ALTER TABLE `adtifuja_finder_filters` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtifuja_finder_links`
--

DROP TABLE IF EXISTS `adtifuja_finder_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtifuja_finder_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `route` varchar(400) NOT NULL,
  `title` varchar(400) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `indexdate` datetime NOT NULL,
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(4) NOT NULL DEFAULT 1,
  `state` int(11) NOT NULL DEFAULT 1,
  `access` int(11) NOT NULL DEFAULT 0,
  `language` char(7) NOT NULL DEFAULT '',
  `publish_start_date` datetime DEFAULT NULL,
  `publish_end_date` datetime DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `list_price` double unsigned NOT NULL DEFAULT 0,
  `sale_price` double unsigned NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL,
  `object` mediumblob DEFAULT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`(100)),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_language` (`language`),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtifuja_finder_links`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtifuja_finder_links` WRITE;
/*!40000 ALTER TABLE `adtifuja_finder_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `adtifuja_finder_links` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtifuja_finder_links_terms`
--

DROP TABLE IF EXISTS `adtifuja_finder_links_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtifuja_finder_links_terms` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtifuja_finder_links_terms`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtifuja_finder_links_terms` WRITE;
/*!40000 ALTER TABLE `adtifuja_finder_links_terms` DISABLE KEYS */;
/*!40000 ALTER TABLE `adtifuja_finder_links_terms` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtifuja_finder_logging`
--

DROP TABLE IF EXISTS `adtifuja_finder_logging`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtifuja_finder_logging` (
  `searchterm` varchar(255) NOT NULL DEFAULT '',
  `md5sum` varchar(32) NOT NULL DEFAULT '',
  `query` blob NOT NULL,
  `hits` int(11) NOT NULL DEFAULT 1,
  `results` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`md5sum`),
  KEY `searchterm` (`searchterm`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtifuja_finder_logging`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtifuja_finder_logging` WRITE;
/*!40000 ALTER TABLE `adtifuja_finder_logging` DISABLE KEYS */;
/*!40000 ALTER TABLE `adtifuja_finder_logging` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtifuja_finder_taxonomy`
--

DROP TABLE IF EXISTS `adtifuja_finder_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtifuja_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT 0,
  `lft` int(11) NOT NULL DEFAULT 0,
  `rgt` int(11) NOT NULL DEFAULT 0,
  `level` int(10) unsigned NOT NULL DEFAULT 0,
  `path` varchar(400) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(400) NOT NULL DEFAULT '',
  `state` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `access` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_access` (`access`),
  KEY `idx_path` (`path`(100)),
  KEY `idx_level` (`level`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`(100)),
  KEY `idx_language` (`language`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtifuja_finder_taxonomy`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtifuja_finder_taxonomy` WRITE;
/*!40000 ALTER TABLE `adtifuja_finder_taxonomy` DISABLE KEYS */;
INSERT INTO `adtifuja_finder_taxonomy` VALUES
(1,0,0,1,0,'','ROOT','root',1,1,'*');
/*!40000 ALTER TABLE `adtifuja_finder_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtifuja_finder_taxonomy_map`
--

DROP TABLE IF EXISTS `adtifuja_finder_taxonomy_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtifuja_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtifuja_finder_taxonomy_map`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtifuja_finder_taxonomy_map` WRITE;
/*!40000 ALTER TABLE `adtifuja_finder_taxonomy_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `adtifuja_finder_taxonomy_map` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtifuja_finder_terms`
--

DROP TABLE IF EXISTS `adtifuja_finder_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtifuja_finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `stem` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `common` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `phrase` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `weight` float unsigned NOT NULL DEFAULT 0,
  `soundex` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `links` int(11) NOT NULL DEFAULT 0,
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term_language` (`term`,`language`),
  KEY `idx_stem` (`stem`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtifuja_finder_terms`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtifuja_finder_terms` WRITE;
/*!40000 ALTER TABLE `adtifuja_finder_terms` DISABLE KEYS */;
/*!40000 ALTER TABLE `adtifuja_finder_terms` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtifuja_finder_terms_common`
--

DROP TABLE IF EXISTS `adtifuja_finder_terms_common`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtifuja_finder_terms_common` (
  `term` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `language` char(7) NOT NULL DEFAULT '',
  `custom` int(11) NOT NULL DEFAULT 0,
  UNIQUE KEY `idx_term_language` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtifuja_finder_terms_common`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtifuja_finder_terms_common` WRITE;
/*!40000 ALTER TABLE `adtifuja_finder_terms_common` DISABLE KEYS */;
INSERT INTO `adtifuja_finder_terms_common` VALUES
('a','en',0),
('about','en',0),
('above','en',0),
('after','en',0),
('again','en',0),
('against','en',0),
('all','en',0),
('am','en',0),
('an','en',0),
('and','en',0),
('any','en',0),
('are','en',0),
('aren\'t','en',0),
('as','en',0),
('at','en',0),
('be','en',0),
('because','en',0),
('been','en',0),
('before','en',0),
('being','en',0),
('below','en',0),
('between','en',0),
('both','en',0),
('but','en',0),
('by','en',0),
('can\'t','en',0),
('cannot','en',0),
('could','en',0),
('couldn\'t','en',0),
('did','en',0),
('didn\'t','en',0),
('do','en',0),
('does','en',0),
('doesn\'t','en',0),
('doing','en',0),
('don\'t','en',0),
('down','en',0),
('during','en',0),
('each','en',0),
('few','en',0),
('for','en',0),
('from','en',0),
('further','en',0),
('had','en',0),
('hadn\'t','en',0),
('has','en',0),
('hasn\'t','en',0),
('have','en',0),
('haven\'t','en',0),
('having','en',0),
('he','en',0),
('he\'d','en',0),
('he\'ll','en',0),
('he\'s','en',0),
('her','en',0),
('here','en',0),
('here\'s','en',0),
('hers','en',0),
('herself','en',0),
('him','en',0),
('himself','en',0),
('his','en',0),
('how','en',0),
('how\'s','en',0),
('i','en',0),
('i\'d','en',0),
('i\'ll','en',0),
('i\'m','en',0),
('i\'ve','en',0),
('if','en',0),
('in','en',0),
('into','en',0),
('is','en',0),
('isn\'t','en',0),
('it','en',0),
('it\'s','en',0),
('its','en',0),
('itself','en',0),
('let\'s','en',0),
('me','en',0),
('more','en',0),
('most','en',0),
('mustn\'t','en',0),
('my','en',0),
('myself','en',0),
('no','en',0),
('nor','en',0),
('not','en',0),
('of','en',0),
('off','en',0),
('on','en',0),
('once','en',0),
('only','en',0),
('or','en',0),
('other','en',0),
('ought','en',0),
('our','en',0),
('ours','en',0),
('ourselves','en',0),
('out','en',0),
('over','en',0),
('own','en',0),
('same','en',0),
('shan\'t','en',0),
('she','en',0),
('she\'d','en',0),
('she\'ll','en',0),
('she\'s','en',0),
('should','en',0),
('shouldn\'t','en',0),
('so','en',0),
('some','en',0),
('such','en',0),
('than','en',0),
('that','en',0),
('that\'s','en',0),
('the','en',0),
('their','en',0),
('theirs','en',0),
('them','en',0),
('themselves','en',0),
('then','en',0),
('there','en',0),
('there\'s','en',0),
('these','en',0),
('they','en',0),
('they\'d','en',0),
('they\'ll','en',0),
('they\'re','en',0),
('they\'ve','en',0),
('this','en',0),
('those','en',0),
('through','en',0),
('to','en',0),
('too','en',0),
('under','en',0),
('until','en',0),
('up','en',0),
('very','en',0),
('was','en',0),
('wasn\'t','en',0),
('we','en',0),
('we\'d','en',0),
('we\'ll','en',0),
('we\'re','en',0),
('we\'ve','en',0),
('were','en',0),
('weren\'t','en',0),
('what','en',0),
('what\'s','en',0),
('when','en',0),
('when\'s','en',0),
('where','en',0),
('where\'s','en',0),
('which','en',0),
('while','en',0),
('who','en',0),
('who\'s','en',0),
('whom','en',0),
('why','en',0),
('why\'s','en',0),
('with','en',0),
('won\'t','en',0),
('would','en',0),
('wouldn\'t','en',0),
('you','en',0),
('you\'d','en',0),
('you\'ll','en',0),
('you\'re','en',0),
('you\'ve','en',0),
('your','en',0),
('yours','en',0),
('yourself','en',0),
('yourselves','en',0);
/*!40000 ALTER TABLE `adtifuja_finder_terms_common` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtifuja_finder_tokens`
--

DROP TABLE IF EXISTS `adtifuja_finder_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtifuja_finder_tokens` (
  `term` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `stem` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `common` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `phrase` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `weight` float unsigned NOT NULL DEFAULT 1,
  `context` tinyint(3) unsigned NOT NULL DEFAULT 2,
  `language` char(7) NOT NULL DEFAULT '',
  KEY `idx_word` (`term`),
  KEY `idx_stem` (`stem`),
  KEY `idx_context` (`context`),
  KEY `idx_language` (`language`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtifuja_finder_tokens`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtifuja_finder_tokens` WRITE;
/*!40000 ALTER TABLE `adtifuja_finder_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `adtifuja_finder_tokens` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtifuja_finder_tokens_aggregate`
--

DROP TABLE IF EXISTS `adtifuja_finder_tokens_aggregate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtifuja_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `term` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `stem` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `common` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `phrase` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `term_weight` float unsigned NOT NULL DEFAULT 0,
  `context` tinyint(3) unsigned NOT NULL DEFAULT 2,
  `context_weight` float unsigned NOT NULL DEFAULT 0,
  `total_weight` float unsigned NOT NULL DEFAULT 0,
  `language` char(7) NOT NULL DEFAULT '',
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtifuja_finder_tokens_aggregate`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtifuja_finder_tokens_aggregate` WRITE;
/*!40000 ALTER TABLE `adtifuja_finder_tokens_aggregate` DISABLE KEYS */;
/*!40000 ALTER TABLE `adtifuja_finder_tokens_aggregate` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtifuja_finder_types`
--

DROP TABLE IF EXISTS `adtifuja_finder_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtifuja_finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtifuja_finder_types`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtifuja_finder_types` WRITE;
/*!40000 ALTER TABLE `adtifuja_finder_types` DISABLE KEYS */;
INSERT INTO `adtifuja_finder_types` VALUES
(1,'Protfoilo item','');
/*!40000 ALTER TABLE `adtifuja_finder_types` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtifuja_guidedtour_steps`
--

DROP TABLE IF EXISTS `adtifuja_guidedtour_steps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtifuja_guidedtour_steps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tour_id` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL,
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `description` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `position` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL,
  `type` int(11) NOT NULL,
  `interactive_type` int(11) NOT NULL DEFAULT 1,
  `url` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL DEFAULT 0,
  `modified` datetime NOT NULL,
  `modified_by` int(10) unsigned NOT NULL DEFAULT 0,
  `checked_out_time` datetime DEFAULT NULL,
  `checked_out` int(10) unsigned DEFAULT NULL,
  `language` varchar(7) NOT NULL,
  `note` varchar(255) NOT NULL DEFAULT '',
  `params` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_tour` (`tour_id`),
  KEY `idx_state` (`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtifuja_guidedtour_steps`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtifuja_guidedtour_steps` WRITE;
/*!40000 ALTER TABLE `adtifuja_guidedtour_steps` DISABLE KEYS */;
INSERT INTO `adtifuja_guidedtour_steps` VALUES
(1,1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_NEW_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_NEW_DESCRIPTION',1,'bottom','.button-new',2,1,'administrator/index.php?option=com_guidedtours&view=tours','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(2,1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_TITLE_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_TITLE_DESCRIPTION',2,'bottom','#jform_title',2,2,'administrator/index.php?option=com_guidedtours&view=tour&layout=edit','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(3,1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_URL_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_URL_DESCRIPTION',3,'top','#jform_url',2,2,'administrator/index.php?option=com_guidedtours&view=tour&layout=edit','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(4,1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_CONTENT_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_CONTENT_DESCRIPTION',4,'bottom','#jform_description,#jform_description_ifr',2,3,'administrator/index.php?option=com_guidedtours&view=tour&layout=edit','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(5,1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_COMPONENT_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_COMPONENT_DESCRIPTION',5,'top','joomla-field-fancy-select .choices',2,3,'administrator/index.php?option=com_guidedtours&view=tour&layout=edit','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(6,1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_SAVECLOSE_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_SAVECLOSE_DESCRIPTION',7,'top','#save-group-children-save .button-save',2,1,'administrator/index.php?option=com_guidedtours&view=tour&layout=edit','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(7,1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_CONGRATULATIONS_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_CONGRATULATIONS_DESCRIPTION',8,'bottom','',0,1,'administrator/index.php?option=com_guidedtours&view=tour&layout=edit','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(8,2,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_COUNTER_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_COUNTER_DESCRIPTION',8,'top','#toursList tbody tr:nth-last-of-type(1) td:nth-of-type(5) .btn',2,1,'','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(9,2,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_NEW_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_NEW_DESCRIPTION',9,'bottom','.button-new',2,1,'','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(10,2,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_TITLE_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_TITLE_DESCRIPTION',10,'bottom','#jform_title',2,2,'','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(11,2,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_DESCRIPTION_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_DESCRIPTION_DESCRIPTION',11,'bottom','#jform_description,#jform_description_ifr',2,3,'','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(12,2,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_STATUS_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_STATUS_DESCRIPTION',12,'bottom','#jform_published',2,3,'','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(13,2,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_POSITION_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_POSITION_DESCRIPTION',13,'top','#jform_position',2,3,'','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(14,2,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_TARGET_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_TARGET_DESCRIPTION',14,'top','#jform_target',2,3,'','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(15,2,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_TYPE_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_TYPE_DESCRIPTION',15,'top','#jform_type',2,3,'','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(16,2,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_SAVECLOSE_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_SAVECLOSE_DESCRIPTION',16,'bottom','#save-group-children-save .button-save',2,1,'','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(17,2,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_CONGRATULATIONS_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_CONGRATULATIONS_DESCRIPTION',17,'bottom','',0,1,'','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(18,3,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_NEW_TITLE',1,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_NEW_DESCRIPTION',18,'bottom','.button-new',2,1,'administrator/index.php?option=com_content&view=articles','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(19,3,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_TITLE_TITLE',1,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_TITLE_DESCRIPTION',19,'bottom','#jform_title',2,2,'administrator/index.php?option=com_content&view=article&layout=edit','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(20,3,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_ALIAS_TITLE',1,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_ALIAS_DESCRIPTION',20,'bottom','#jform_alias',2,2,'administrator/index.php?option=com_content&view=article&layout=edit','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(21,3,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_CONTENT_TITLE',1,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_CONTENT_DESCRIPTION',21,'bottom','#jform_articletext,#jform_articletext_ifr',2,3,'administrator/index.php?option=com_content&view=article&layout=edit','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(22,3,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_STATUS_TITLE',1,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_STATUS_DESCRIPTION',22,'bottom','#jform_state',2,3,'administrator/index.php?option=com_content&view=article&layout=edit','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(23,3,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_CATEGORY_TITLE',1,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_CATEGORY_DESCRIPTION',23,'top','joomla-field-fancy-select .choices[data-type=select-one]',2,3,'administrator/index.php?option=com_content&view=article&layout=edit','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(24,3,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_FEATURED_TITLE',1,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_FEATURED_DESCRIPTION',24,'bottom','#jform_featured0',2,3,'administrator/index.php?option=com_content&view=article&layout=edit','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(25,3,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_ACCESS_TITLE',1,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_ACCESS_DESCRIPTION',25,'bottom','#jform_access',2,3,'administrator/index.php?option=com_content&view=article&layout=edit','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(26,3,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_TAGS_TITLE',1,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_TAGS_DESCRIPTION',26,'top','joomla-field-fancy-select .choices[data-type=select-multiple]',2,3,'administrator/index.php?option=com_content&view=article&layout=edit','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(27,3,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_NOTE_TITLE',1,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_NOTE_DESCRIPTION',27,'top','#jform_note',2,2,'administrator/index.php?option=com_content&view=article&layout=edit','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(28,3,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_VERSIONNOTE_TITLE',1,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_VERSIONNOTE_DESCRIPTION',28,'top','#jform_version_note',2,2,'administrator/index.php?option=com_content&view=article&layout=edit','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(29,3,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_SAVECLOSE_TITLE',1,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_SAVECLOSE_DESCRIPTION',29,'bottom','#save-group-children-save .button-save',2,1,'administrator/index.php?option=com_content&view=article&layout=edit','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(30,3,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_CONGRATULATIONS_TITLE',1,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_CONGRATULATIONS_DESCRIPTION',30,'bottom','',0,1,'administrator/index.php?option=com_content&view=article&layout=edit','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(31,4,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_NEW_TITLE',1,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_NEW_DESCRIPTION',31,'bottom','.button-new',2,1,'administrator/index.php?option=com_categories&view=categories&extension=com_content','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(32,4,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_TITLE_TITLE',1,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_TITLE_DESCRIPTION',32,'bottom','#jform_title',2,2,'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(33,4,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_ALIAS_TITLE',1,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_ALIAS_DESCRIPTION',33,'bottom','#jform_alias',2,2,'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(34,4,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_CONTENT_TITLE',1,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_CONTENT_DESCRIPTION',34,'bottom','#jform_description,#jform_description_ifr',2,3,'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(35,4,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_PARENT_TITLE',1,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_PARENT_DESCRIPTION',35,'top','joomla-field-fancy-select .choices[data-type=select-one]',2,3,'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(36,4,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_STATUS_TITLE',1,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_STATUS_DESCRIPTION',36,'bottom','#jform_published',2,3,'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(37,4,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_ACCESS_TITLE',1,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_ACCESS_DESCRIPTION',37,'bottom','#jform_access',2,3,'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(38,4,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_TAGS_TITLE',1,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_TAGS_DESCRIPTION',38,'top','joomla-field-fancy-select .choices[data-type=select-multiple]',2,3,'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(39,4,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_NOTE_TITLE',1,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_NOTE_DESCRIPTION',39,'top','#jform_note',2,2,'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(40,4,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_VERSIONNOTE_TITLE',1,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_VERSIONNOTE_DESCRIPTION',40,'top','#jform_version_note',2,2,'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(41,4,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_SAVECLOSE_TITLE',1,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_SAVECLOSE_DESCRIPTION',41,'bottom','#save-group-children-save .button-save',2,1,'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(42,4,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_CONGRATULATIONS_TITLE',1,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_CONGRATULATIONS_DESCRIPTION',42,'bottom','',0,1,'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(43,5,'COM_GUIDEDTOURS_TOUR_MENUS_STEP_NEW_TITLE',1,'COM_GUIDEDTOURS_TOUR_MENUS_STEP_NEW_DESCRIPTION',43,'bottom','.button-new',2,1,'administrator/index.php?option=com_menus&view=menus','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(44,5,'COM_GUIDEDTOURS_TOUR_MENUS_STEP_TITLE_TITLE',1,'COM_GUIDEDTOURS_TOUR_MENUS_STEP_TITLE_DESCRIPTION',44,'bottom','#jform_title',2,2,'administrator/index.php?option=com_menus&view=menu&layout=edit','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(45,5,'COM_GUIDEDTOURS_TOUR_MENUS_STEP_UNIQUENAME_TITLE',1,'COM_GUIDEDTOURS_TOUR_MENUS_STEP_UNIQUENAME_DESCRIPTION',45,'top','#jform_menutype',2,2,'administrator/index.php?option=com_menus&view=menu&layout=edit','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(46,5,'COM_GUIDEDTOURS_TOUR_MENUS_STEP_DESCRIPTION_TITLE',1,'COM_GUIDEDTOURS_TOUR_MENUS_STEP_DESCRIPTION_DESCRIPTION',46,'top','#jform_menudescription',2,2,'administrator/index.php?option=com_menus&view=menu&layout=edit','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(47,5,'COM_GUIDEDTOURS_TOUR_MENUS_STEP_SAVECLOSE_TITLE',1,'COM_GUIDEDTOURS_TOUR_MENUS_STEP_SAVECLOSE_DESCRIPTION',47,'bottom','#save-group-children-save .button-save',2,1,'administrator/index.php?option=com_menus&view=menu&layout=edit','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(48,5,'COM_GUIDEDTOURS_TOUR_MENUS_STEP_CONGRATULATIONS_TITLE',1,'COM_GUIDEDTOURS_TOUR_MENUS_STEP_CONGRATULATIONS_DESCRIPTION',48,'bottom','',0,1,'administrator/index.php?option=com_menus&view=menu&layout=edit','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(49,6,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_NEW_TITLE',1,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_NEW_DESCRIPTION',49,'bottom','.button-new',2,1,'administrator/index.php?option=com_tags&view=tags','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(50,6,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_TITLE_TITLE',1,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_TITLE_DESCRIPTION',50,'bottom','#jform_title',2,2,'administrator/index.php?option=com_tags&view=tag&layout=edit','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(51,6,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_ALIAS_TITLE',1,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_ALIAS_DESCRIPTION',51,'bottom','#jform_alias',2,2,'administrator/index.php?option=com_tags&view=tag&layout=edit','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(52,6,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_CONTENT_TITLE',1,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_CONTENT_DESCRIPTION',52,'bottom','#jform_description,#jform_description_ifr',2,3,'administrator/index.php?option=com_tags&view=tag&layout=edit','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(53,6,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_PARENT_TITLE',1,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_PARENT_DESCRIPTION',53,'top','joomla-field-fancy-select .choices[data-type=select-one]',2,3,'administrator/index.php?option=com_tags&view=tag&layout=edit','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(54,6,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_STATUS_TITLE',1,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_STATUS_DESCRIPTION',54,'bottom','#jform_published',2,3,'administrator/index.php?option=com_tags&view=tag&layout=edit','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(55,6,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_ACCESS_TITLE',1,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_ACCESS_DESCRIPTION',55,'bottom','#jform_access',2,3,'administrator/index.php?option=com_tags&view=tag&layout=edit','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(56,6,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_NOTE_TITLE',1,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_NOTE_DESCRIPTION',56,'top','#jform_note',2,2,'administrator/index.php?option=com_tags&view=tag&layout=edit','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(57,6,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_VERSIONNOTE_TITLE',1,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_VERSIONNOTE_DESCRIPTION',57,'top','#jform_version_note',2,2,'administrator/index.php?option=com_tags&view=tag&layout=edit','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(58,6,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_SAVECLOSE_TITLE',1,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_SAVECLOSE_DESCRIPTION',58,'bottom','#save-group-children-save .button-save',2,1,'administrator/index.php?option=com_tags&view=tag&layout=edit','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(59,6,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_CONGRATULATIONS_TITLE',1,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_CONGRATULATIONS_DESCRIPTION',59,'bottom','',0,1,'administrator/index.php?option=com_tags&view=tag&layout=edit','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(60,7,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_NEW_TITLE',1,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_NEW_DESCRIPTION',60,'bottom','.button-new',2,1,'administrator/index.php?option=com_banners&view=banners','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(61,7,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_TITLE_TITLE',1,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_TITLE_DESCRIPTION',61,'bottom','#jform_name',2,2,'administrator/index.php?option=com_banners&view=banner&layout=edit','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(62,7,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_ALIAS_TITLE',1,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_ALIAS_DESCRIPTION',62,'bottom','#jform_alias',2,2,'administrator/index.php?option=com_banners&view=banner&layout=edit','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(63,7,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_DETAILS_TITLE',1,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_DETAILS_DESCRIPTION',63,'bottom','.col-lg-9',2,3,'administrator/index.php?option=com_banners&view=banner&layout=edit','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(64,7,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_STATUS_TITLE',1,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_STATUS_DESCRIPTION',64,'bottom','#jform_state',2,3,'administrator/index.php?option=com_banners&view=banner&layout=edit','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(65,7,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_CATEGORY_TITLE',1,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_CATEGORY_DESCRIPTION',65,'top','joomla-field-fancy-select .choices[data-type=select-one]',2,3,'administrator/index.php?option=com_banners&view=banner&layout=edit','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(66,7,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_PINNED_TITLE',1,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_PINNED_DESCRIPTION',66,'bottom','#jform_sticky1',2,3,'administrator/index.php?option=com_banners&view=banner&layout=edit','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(67,7,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_VERSIONNOTE_TITLE',1,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_VERSIONNOTE_DESCRIPTION',67,'top','#jform_version_note',2,2,'administrator/index.php?option=com_banners&view=banner&layout=edit','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(68,7,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_SAVECLOSE_TITLE',1,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_SAVECLOSE_DESCRIPTION',68,'bottom','#save-group-children-save .button-save',2,1,'administrator/index.php?option=com_banners&view=banner&layout=edit','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(69,7,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_CONGRATULATIONS_TITLE',1,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_CONGRATULATIONS_DESCRIPTION',69,'bottom','',0,1,'administrator/index.php?option=com_banners&view=banner&layout=edit','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(70,8,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_NEW_TITLE',1,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_NEW_DESCRIPTION',70,'bottom','.button-new',2,1,'administrator/index.php?option=com_contact&view=contacts','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(71,8,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_TITLE_TITLE',1,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_TITLE_DESCRIPTION',71,'bottom','#jform_name',2,2,'administrator/index.php?option=com_contact&view=contact&layout=edit','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(72,8,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_ALIAS_TITLE',1,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_ALIAS_DESCRIPTION',72,'bottom','#jform_alias',2,2,'administrator/index.php?option=com_contact&view=contact&layout=edit','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(73,8,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_DETAILS_TITLE',1,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_DETAILS_DESCRIPTION',73,'bottom','.col-lg-9',0,1,'administrator/index.php?option=com_contact&view=contact&layout=edit','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(74,8,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_STATUS_TITLE',1,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_STATUS_DESCRIPTION',74,'bottom','#jform_published',2,3,'administrator/index.php?option=com_contact&view=contact&layout=edit','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(75,8,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_CATEGORY_TITLE',1,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_CATEGORY_DESCRIPTION',75,'top','joomla-field-fancy-select .choices[data-type=select-one]',2,3,'administrator/index.php?option=com_contact&view=contact&layout=edit','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(76,8,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_FEATURED_TITLE',1,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_FEATURED_DESCRIPTION',76,'bottom','#jform_featured0',2,3,'administrator/index.php?option=com_contact&view=contact&layout=edit','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(77,8,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_ACCESS_TITLE',1,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_ACCESS_DESCRIPTION',77,'bottom','#jform_access',2,3,'administrator/index.php?option=com_contact&view=contact&layout=edit','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(78,8,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_TAGS_TITLE',1,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_TAGS_DESCRIPTION',78,'top','joomla-field-fancy-select .choices[data-type=select-multiple]',2,3,'administrator/index.php?option=com_contact&view=contact&layout=edit','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(79,8,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_VERSIONNOTE_TITLE',1,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_VERSIONNOTE_DESCRIPTION',79,'top','#jform_version_note',2,2,'administrator/index.php?option=com_contact&view=contact&layout=edit','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(80,8,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_SAVECLOSE_TITLE',1,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_SAVECLOSE_DESCRIPTION',80,'bottom','#save-group-children-save .button-save',2,1,'administrator/index.php?option=com_contact&view=contact&layout=edit','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(81,8,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_CONGRATULATIONS_TITLE',1,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_CONGRATULATIONS_DESCRIPTION',81,'bottom','',0,1,'administrator/index.php?option=com_contact&view=contact&layout=edit','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(82,9,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_NEW_TITLE',1,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_NEW_DESCRIPTION',82,'bottom','.button-new',2,1,'administrator/index.php?option=com_newsfeeds&view=newsfeeds','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(83,9,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_TITLE_TITLE',1,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_TITLE_DESCRIPTION',83,'bottom','#jform_name',2,2,'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(84,9,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_ALIAS_TITLE',1,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_ALIAS_DESCRIPTION',84,'bottom','#jform_alias',2,2,'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(85,9,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_LINK_TITLE',1,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_LINK_DESCRIPTION',85,'bottom','#jform_link',2,2,'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(86,9,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_DESCRIPTION_TITLE',1,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_DESCRIPTION_DESCRIPTION',86,'bottom','#jform_description,#jform_description_ifr',2,3,'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(87,9,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_STATUS_TITLE',1,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_STATUS_DESCRIPTION',87,'bottom','#jform_published',2,3,'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(88,9,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_CATEGORY_TITLE',1,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_CATEGORY_DESCRIPTION',88,'top','joomla-field-fancy-select .choices[data-type=select-one]',2,3,'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(89,9,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_ACCESS_TITLE',1,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_ACCESS_DESCRIPTION',89,'bottom','#jform_access',2,3,'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(90,9,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_TAGS_TITLE',1,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_TAGS_DESCRIPTION',90,'top','joomla-field-fancy-select .choices[data-type=select-multiple]',2,3,'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(91,9,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_VERSIONNOTE_TITLE',1,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_VERSIONNOTE_DESCRIPTION',91,'top','#jform_version_note',2,2,'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(92,9,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_SAVECLOSE_TITLE',1,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_SAVECLOSE_DESCRIPTION',92,'bottom','#save-group-children-save .button-save',2,1,'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(93,9,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_CONGRATULATIONS_TITLE',1,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_CONGRATULATIONS_DESCRIPTION',93,'bottom','',0,1,'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(94,10,'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_NEW_TITLE',1,'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_NEW_DESCRIPTION',94,'bottom','.button-new',2,1,'administrator/index.php?option=com_finder&view=filters','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(95,10,'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_TITLE_TITLE',1,'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_TITLE_DESCRIPTION',95,'bottom','#jform_title',2,2,'administrator/index.php?option=com_finder&view=filter&layout=edit','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(96,10,'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_ALIAS_TITLE',1,'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_ALIAS_DESCRIPTION',96,'bottom','#jform_alias',2,2,'administrator/index.php?option=com_finder&view=filter&layout=edit','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(97,10,'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_CONTENT_TITLE',1,'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_CONTENT_DESCRIPTION',97,'bottom','.col-lg-9',0,1,'administrator/index.php?option=com_finder&view=filter&layout=edit','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(98,10,'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_STATUS_TITLE',1,'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_STATUS_DESCRIPTION',98,'bottom','#jform_state',2,3,'administrator/index.php?option=com_finder&view=filter&layout=edit','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(99,10,'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_SAVECLOSE_TITLE',1,'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_SAVECLOSE_DESCRIPTION',99,'bottom','#save-group-children-save .button-save',2,1,'administrator/index.php?option=com_finder&view=filter&layout=edit','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(100,10,'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_CONGRATULATIONS_TITLE',1,'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_CONGRATULATIONS_DESCRIPTION',100,'bottom','',0,1,'administrator/index.php?option=com_finder&view=filter&layout=edit','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(101,11,'COM_GUIDEDTOURS_TOUR_USERS_STEP_NEW_TITLE',1,'COM_GUIDEDTOURS_TOUR_USERS_STEP_NEW_DESCRIPTION',101,'bottom','.button-new',2,1,'administrator/index.php?option=com_users&view=user&layout=edit','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(102,11,'COM_GUIDEDTOURS_TOUR_USERS_STEP_NAME_TITLE',1,'COM_GUIDEDTOURS_TOUR_USERS_STEP_NAME_DESCRIPTION',102,'bottom','#jform_name',2,2,'administrator/index.php?option=com_users&view=user&layout=edit','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(103,11,'COM_GUIDEDTOURS_TOUR_USERS_STEP_LOGINNAME_TITLE',1,'COM_GUIDEDTOURS_TOUR_USERS_STEP_LOGINNAME_DESCRIPTION',103,'bottom','#jform_username',2,2,'administrator/index.php?option=com_users&view=user&layout=edit','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(104,11,'COM_GUIDEDTOURS_TOUR_USERS_STEP_PASSWORD_TITLE',1,'COM_GUIDEDTOURS_TOUR_USERS_STEP_PASSWORD_DESCRIPTION',104,'bottom','#jform_password',2,2,'administrator/index.php?option=com_users&view=user&layout=edit','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(105,11,'COM_GUIDEDTOURS_TOUR_USERS_STEP_PASSWORD2_TITLE',1,'COM_GUIDEDTOURS_TOUR_USERS_STEP_PASSWORD2_DESCRIPTION',105,'bottom','#jform_password2',2,2,'administrator/index.php?option=com_users&view=user&layout=edit','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(106,11,'COM_GUIDEDTOURS_TOUR_USERS_STEP_EMAIL_TITLE',1,'COM_GUIDEDTOURS_TOUR_USERS_STEP_EMAIL_DESCRIPTION',106,'bottom','#jform_email',2,2,'administrator/index.php?option=com_users&view=user&layout=edit','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(107,11,'COM_GUIDEDTOURS_TOUR_USERS_STEP_SYSTEMEMAIL_TITLE',1,'COM_GUIDEDTOURS_TOUR_USERS_STEP_SYSTEMEMAIL_DESCRIPTION',107,'top','#jform_sendEmail0',2,3,'administrator/index.php?option=com_users&view=user&layout=edit','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(108,11,'COM_GUIDEDTOURS_TOUR_USERS_STEP_STATUS_TITLE',1,'COM_GUIDEDTOURS_TOUR_USERS_STEP_STATUS_DESCRIPTION',108,'top','#jform_block0',2,3,'administrator/index.php?option=com_users&view=user&layout=edit','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(109,11,'COM_GUIDEDTOURS_TOUR_USERS_STEP_PASSWORDRESET_TITLE',1,'COM_GUIDEDTOURS_TOUR_USERS_STEP_PASSWORDRESET_DESCRIPTION',109,'top','#jform_requireReset0',2,3,'administrator/index.php?option=com_users&view=user&layout=edit','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(110,11,'COM_GUIDEDTOURS_TOUR_USERS_STEP_SAVECLOSE_TITLE',1,'COM_GUIDEDTOURS_TOUR_USERS_STEP_SAVECLOSE_DESCRIPTION',110,'bottom','#save-group-children-save .button-save',2,1,'administrator/index.php?option=com_users&view=user&layout=edit','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(111,11,'COM_GUIDEDTOURS_TOUR_USERS_STEP_CONGRATULATIONS_TITLE',1,'COM_GUIDEDTOURS_TOUR_USERS_STEP_CONGRATULATIONS_DESCRIPTION',111,'bottom','',0,1,'administrator/index.php?option=com_users&view=user&layout=edit','2023-07-05 17:43:40',0,'2023-07-05 17:43:40',0,NULL,NULL,'*','',NULL),
(112,12,'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_MENUS_TITLE',1,'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_MENUS_DESCRIPTION',1,'right','#sidebarmenu',0,1,'','2026-06-04 13:10:35',0,'2026-06-04 13:10:35',0,NULL,NULL,'*','',NULL),
(113,12,'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_QUICKACCESS_TITLE',1,'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_QUICKACCESS_DESCRIPTION',2,'center','',0,1,'','2026-06-04 13:10:35',0,'2026-06-04 13:10:35',0,NULL,NULL,'*','',NULL),
(114,12,'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_NOTIFICATIONS_TITLE',1,'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_NOTIFICATIONS_DESCRIPTION',3,'left','.quickicons-for-update_quickicon .card',0,1,'','2026-06-04 13:10:35',0,'2026-06-04 13:10:35',0,NULL,NULL,'*','',NULL),
(115,12,'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_TOPBAR_TITLE',1,'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_TOPBAR_DESCRIPTION',4,'bottom','#header',0,1,'','2026-06-04 13:10:35',0,'2026-06-04 13:10:35',0,NULL,NULL,'*','',NULL),
(116,12,'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_FINALWORDS_TITLE',1,'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_FINALWORDS_DESCRIPTION',5,'right','#sidebarmenu nav > ul:first-of-type > li:last-child',0,1,'','2026-06-04 13:10:35',0,'2026-06-04 13:10:35',0,NULL,NULL,'*','',NULL),
(118,1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_AUTOSTART_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_AUTOSTART_DESCRIPTION',6,'bottom','#jform_autostart0',2,3,'','2026-06-04 13:10:35',0,'2026-06-04 13:10:35',0,NULL,NULL,'*','',NULL),
(121,16,'COM_GUIDEDTOURS_TOUR_WHATSNEW_6_0_STEP_0_TITLE',1,'COM_GUIDEDTOURS_TOUR_WHATSNEW_6_0_STEP_0_DESCRIPTION',0,'center','',0,1,'','2026-06-04 13:12:22',0,'2026-06-04 13:12:22',0,NULL,NULL,'*','','{\"required\":1,\"requiredvalue\":\"\"}'),
(122,16,'COM_GUIDEDTOURS_TOUR_WHATSNEW_6_0_STEP_1_TITLE',1,'COM_GUIDEDTOURS_TOUR_WHATSNEW_6_0_STEP_1_DESCRIPTION',0,'right','#sidebarmenu nav > ul:first-of-type > li:last-child',0,1,'','2026-06-04 13:12:22',0,'2026-06-04 13:12:22',0,NULL,NULL,'*','','\"{\"required\":1,\"requiredvalue\":\"\"}\"'),
(123,17,'COM_GUIDEDTOURS_TOUR_WHATSNEW_6_1_STEP_0_TITLE',1,'COM_GUIDEDTOURS_TOUR_WHATSNEW_6_1_STEP_0_DESCRIPTION',0,'right','#sidebarmenu nav > ul:first-of-type > li:last-child',0,1,'','2026-06-04 13:12:22',0,'2026-06-04 13:12:22',0,NULL,NULL,'*','','{\"required\":1,\"requiredvalue\":\"\"}');
/*!40000 ALTER TABLE `adtifuja_guidedtour_steps` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtifuja_guidedtours`
--

DROP TABLE IF EXISTS `adtifuja_guidedtours`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtifuja_guidedtours` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `uid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `description` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `extensions` text NOT NULL,
  `url` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `checked_out_time` datetime DEFAULT NULL,
  `checked_out` int(10) unsigned DEFAULT NULL,
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `language` varchar(7) NOT NULL,
  `note` varchar(255) NOT NULL DEFAULT '',
  `access` int(10) unsigned NOT NULL DEFAULT 0,
  `autostart` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_state` (`published`),
  KEY `idx_language` (`language`),
  KEY `idx_uid` (`uid`(191))
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtifuja_guidedtours`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtifuja_guidedtours` WRITE;
/*!40000 ALTER TABLE `adtifuja_guidedtours` DISABLE KEYS */;
INSERT INTO `adtifuja_guidedtours` VALUES
(1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_TITLE','joomla-guidedtours','COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_DESCRIPTION',1,'[\"com_guidedtours\"]','administrator/index.php?option=com_guidedtours&view=tours','2023-07-05 17:43:39',0,'2023-07-05 17:43:39',0,NULL,NULL,1,'*','',1,0),
(2,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_TITLE','joomla-guidedtoursteps','COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_DESCRIPTION',2,'[\"com_guidedtours\"]','administrator/index.php?option=com_guidedtours&view=tours','2023-07-05 17:43:39',0,'2023-07-05 17:43:39',0,NULL,NULL,1,'*','',1,0),
(3,'COM_GUIDEDTOURS_TOUR_ARTICLES_TITLE','joomla-articles','COM_GUIDEDTOURS_TOUR_ARTICLES_DESCRIPTION',3,'[\"com_content\",\"com_categories\"]','administrator/index.php?option=com_content&view=articles','2023-07-05 17:43:39',0,'2023-07-05 17:43:39',0,NULL,NULL,1,'*','',1,0),
(4,'COM_GUIDEDTOURS_TOUR_CATEGORIES_TITLE','joomla-categories','COM_GUIDEDTOURS_TOUR_CATEGORIES_DESCRIPTION',4,'[\"com_content\",\"com_categories\"]','administrator/index.php?option=com_categories&view=categories&extension=com_content','2023-07-05 17:43:39',0,'2023-07-05 17:43:39',0,NULL,NULL,1,'*','',1,0),
(5,'COM_GUIDEDTOURS_TOUR_MENUS_TITLE','joomla-menus','COM_GUIDEDTOURS_TOUR_MENUS_DESCRIPTION',5,'[\"com_menus\"]','administrator/index.php?option=com_menus&view=menus','2023-07-05 17:43:39',0,'2023-07-05 17:43:39',0,NULL,NULL,1,'*','',1,0),
(6,'COM_GUIDEDTOURS_TOUR_TAGS_TITLE','joomla-tags','COM_GUIDEDTOURS_TOUR_TAGS_DESCRIPTION',6,'[\"com_tags\"]','administrator/index.php?option=com_tags&view=tags','2023-07-05 17:43:39',0,'2023-07-05 17:43:39',0,NULL,NULL,1,'*','',1,0),
(7,'COM_GUIDEDTOURS_TOUR_BANNERS_TITLE','joomla-banners','COM_GUIDEDTOURS_TOUR_BANNERS_DESCRIPTION',7,'[\"com_banners\"]','administrator/index.php?option=com_banners&view=banners','2023-07-05 17:43:39',0,'2023-07-05 17:43:39',0,NULL,NULL,1,'*','',1,0),
(8,'COM_GUIDEDTOURS_TOUR_CONTACTS_TITLE','joomla-contacts','COM_GUIDEDTOURS_TOUR_CONTACTS_DESCRIPTION',8,'[\"com_contact\"]','administrator/index.php?option=com_contact&view=contacts','2023-07-05 17:43:39',0,'2023-07-05 17:43:39',0,NULL,NULL,1,'*','',1,0),
(9,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_TITLE','joomla-newsfeeds','COM_GUIDEDTOURS_TOUR_NEWSFEEDS_DESCRIPTION',9,'[\"com_newsfeeds\"]','administrator/index.php?option=com_newsfeeds&view=newsfeeds','2023-07-05 17:43:39',0,'2023-07-05 17:43:39',0,NULL,NULL,1,'*','',1,0),
(10,'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_TITLE','joomla-smartsearch','COM_GUIDEDTOURS_TOUR_SMARTSEARCH_DESCRIPTION',10,'[\"com_finder\"]','administrator/index.php?option=com_finder&view=filters','2023-07-05 17:43:39',0,'2023-07-05 17:43:39',0,NULL,NULL,1,'*','',1,0),
(11,'COM_GUIDEDTOURS_TOUR_USERS_TITLE','joomla-users','COM_GUIDEDTOURS_TOUR_USERS_DESCRIPTION',11,'[\"com_users\"]','administrator/index.php?option=com_users&view=users','2023-07-05 17:43:39',0,'2023-07-05 17:43:39',0,NULL,NULL,1,'*','',1,0),
(12,'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_TITLE','joomla-welcome','COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_DESCRIPTION',1,'[\"com_cpanel\"]','administrator/index.php','2026-06-04 13:10:35',0,'2026-06-04 13:10:35',0,NULL,NULL,1,'*','',1,0),
(16,'COM_GUIDEDTOURS_TOUR_WHATSNEW_6_0_TITLE','joomla-whatsnew-6-0','COM_GUIDEDTOURS_TOUR_WHATSNEW_6_0_DESCRIPTION',0,'[\"com_cpanel\"]','administrator/index.php','2026-06-04 13:12:22',0,'2026-06-04 13:12:22',0,NULL,NULL,1,'*','',1,0),
(17,'COM_GUIDEDTOURS_TOUR_WHATSNEW_6_1_TITLE','joomla-whatsnew-6-1','COM_GUIDEDTOURS_TOUR_WHATSNEW_6_1_DESCRIPTION',0,'[\"com_cpanel\"]','administrator/index.php','2026-06-04 13:12:22',0,'2026-06-04 13:12:22',0,NULL,NULL,1,'*','',1,1);
/*!40000 ALTER TABLE `adtifuja_guidedtours` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtifuja_history`
--

DROP TABLE IF EXISTS `adtifuja_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtifuja_history` (
  `version_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` varchar(50) NOT NULL,
  `version_note` varchar(255) NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL,
  `editor_user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `character_count` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=auto delete; 1=keep',
  `is_current` tinyint(4) NOT NULL DEFAULT 0,
  `is_legacy` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`version_id`),
  KEY `idx_ucm_item_id` (`item_id`),
  KEY `idx_save_date` (`save_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtifuja_history`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtifuja_history` WRITE;
/*!40000 ALTER TABLE `adtifuja_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `adtifuja_history` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtifuja_languages`
--

DROP TABLE IF EXISTS `adtifuja_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtifuja_languages` (
  `lang_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT 0,
  `lang_code` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text DEFAULT NULL,
  `metadesc` mediumtext NOT NULL,
  `sitename` varchar(1024) NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT 0,
  `access` int(10) unsigned NOT NULL DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtifuja_languages`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtifuja_languages` WRITE;
/*!40000 ALTER TABLE `adtifuja_languages` DISABLE KEYS */;
INSERT INTO `adtifuja_languages` VALUES
(1,0,'en-GB','English (UK)','English (UK)','en','en','','','','',1,1,1);
/*!40000 ALTER TABLE `adtifuja_languages` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtifuja_mail_templates`
--

DROP TABLE IF EXISTS `adtifuja_mail_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtifuja_mail_templates` (
  `template_id` varchar(127) NOT NULL DEFAULT '',
  `extension` varchar(127) NOT NULL DEFAULT '',
  `language` char(7) NOT NULL DEFAULT '',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `htmlbody` mediumtext NOT NULL,
  `attachments` text NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`template_id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtifuja_mail_templates`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtifuja_mail_templates` WRITE;
/*!40000 ALTER TABLE `adtifuja_mail_templates` DISABLE KEYS */;
INSERT INTO `adtifuja_mail_templates` VALUES
('com_actionlogs.notification','com_actionlogs','','COM_ACTIONLOGS_EMAIL_SUBJECT','COM_ACTIONLOGS_EMAIL_BODY','COM_ACTIONLOGS_EMAIL_HTMLBODY','','{\"tags\":[\"messages\",\"message\",\"date\",\"extension\",\"username\",\"ip_address\"]}'),
('com_config.test_mail','com_config','','COM_CONFIG_SENDMAIL_SUBJECT','COM_CONFIG_SENDMAIL_BODY','','','{\"tags\":[\"sitename\",\"method\"]}'),
('com_contact.mail','com_contact','','COM_CONTACT_ENQUIRY_SUBJECT','COM_CONTACT_ENQUIRY_TEXT','','','{\"tags\":[\"sitename\",\"name\",\"email\",\"subject\",\"body\",\"url\",\"customfields\"]}'),
('com_contact.mail.copy','com_contact','','COM_CONTACT_COPYSUBJECT_OF','COM_CONTACT_COPYTEXT_OF','','','{\"tags\":[\"sitename\",\"name\",\"email\",\"subject\",\"body\",\"url\",\"customfields\",\"contactname\"]}'),
('com_joomlaupdate.update.failed','com_joomlaupdate','','COM_JOOMLAUPDATE_UPDATE_FAILED_MAIL_SUBJECT','COM_JOOMLAUPDATE_UPDATE_FAILED_MAIL_BODY','','','{\"tags\":[\"newversion\",\"oldversion\",\"sitename\",\"url\"]}'),
('com_joomlaupdate.update.success','com_joomlaupdate','','COM_JOOMLAUPDATE_UPDATE_SUCCESS_MAIL_SUBJECT','COM_JOOMLAUPDATE_UPDATE_SUCCESS_MAIL_BODY','','','{\"tags\":[\"newversion\",\"oldversion\",\"sitename\",\"url\"]}'),
('com_messages.new_message','com_messages','','COM_MESSAGES_NEW_MESSAGE','COM_MESSAGES_NEW_MESSAGE_BODY','','','{\"tags\":[\"subject\",\"message\",\"fromname\",\"sitename\",\"siteurl\",\"fromemail\",\"toname\",\"toemail\"]}'),
('com_privacy.notification.admin.export','com_privacy','','COM_PRIVACY_EMAIL_ADMIN_REQUEST_SUBJECT_EXPORT_REQUEST','COM_PRIVACY_EMAIL_ADMIN_REQUEST_BODY_EXPORT_REQUEST','','','{\"tags\":[\"sitename\",\"url\",\"tokenurl\",\"formurl\",\"token\"]}'),
('com_privacy.notification.admin.remove','com_privacy','','COM_PRIVACY_EMAIL_ADMIN_REQUEST_SUBJECT_REMOVE_REQUEST','COM_PRIVACY_EMAIL_ADMIN_REQUEST_BODY_REMOVE_REQUEST','','','{\"tags\":[\"sitename\",\"url\",\"tokenurl\",\"formurl\",\"token\"]}'),
('com_privacy.notification.export','com_privacy','','COM_PRIVACY_EMAIL_REQUEST_SUBJECT_EXPORT_REQUEST','COM_PRIVACY_EMAIL_REQUEST_BODY_EXPORT_REQUEST','','','{\"tags\":[\"sitename\",\"url\",\"tokenurl\",\"formurl\",\"token\"]}'),
('com_privacy.notification.remove','com_privacy','','COM_PRIVACY_EMAIL_REQUEST_SUBJECT_REMOVE_REQUEST','COM_PRIVACY_EMAIL_REQUEST_BODY_REMOVE_REQUEST','','','{\"tags\":[\"sitename\",\"url\",\"tokenurl\",\"formurl\",\"token\"]}'),
('com_privacy.userdataexport','com_privacy','','COM_PRIVACY_EMAIL_DATA_EXPORT_COMPLETED_SUBJECT','COM_PRIVACY_EMAIL_DATA_EXPORT_COMPLETED_BODY','','','{\"tags\":[\"sitename\",\"url\"]}'),
('com_users.massmail.mail','com_users','','COM_USERS_MASSMAIL_MAIL_SUBJECT','COM_USERS_MASSMAIL_MAIL_BODY','','','{\"tags\":[\"subject\",\"body\",\"subjectprefix\",\"bodysuffix\"]}'),
('com_users.password_reset','com_users','','COM_USERS_EMAIL_PASSWORD_RESET_SUBJECT','COM_USERS_EMAIL_PASSWORD_RESET_BODY','','','{\"tags\":[\"name\",\"email\",\"sitename\",\"link_text\",\"link_html\",\"token\"]}'),
('com_users.registration.admin.new_notification','com_users','','COM_USERS_EMAIL_ACCOUNT_DETAILS','COM_USERS_EMAIL_REGISTERED_NOTIFICATION_TO_ADMIN_BODY','','','{\"tags\":[\"name\",\"sitename\",\"siteurl\",\"username\"]}'),
('com_users.registration.admin.verification_request','com_users','','COM_USERS_EMAIL_ACTIVATE_WITH_ADMIN_ACTIVATION_SUBJECT','COM_USERS_EMAIL_ACTIVATE_WITH_ADMIN_ACTIVATION_BODY','','','{\"tags\":[\"name\",\"sitename\",\"email\",\"username\",\"activate\"]}'),
('com_users.registration.user.admin_activated','com_users','','COM_USERS_EMAIL_ACTIVATED_BY_ADMIN_ACTIVATION_SUBJECT','COM_USERS_EMAIL_ACTIVATED_BY_ADMIN_ACTIVATION_BODY','','','{\"tags\":[\"name\",\"sitename\",\"siteurl\",\"username\"]}'),
('com_users.registration.user.admin_activation','com_users','','COM_USERS_EMAIL_ACCOUNT_DETAILS','COM_USERS_EMAIL_REGISTERED_WITH_ADMIN_ACTIVATION_BODY_NOPW','','','{\"tags\":[\"name\",\"sitename\",\"activate\",\"siteurl\",\"username\"]}'),
('com_users.registration.user.admin_activation_w_pw','com_users','','COM_USERS_EMAIL_ACCOUNT_DETAILS','COM_USERS_EMAIL_REGISTERED_WITH_ADMIN_ACTIVATION_BODY','','','{\"tags\":[\"name\",\"sitename\",\"activate\",\"siteurl\",\"username\",\"password_clear\"]}'),
('com_users.registration.user.registration_mail','com_users','','COM_USERS_EMAIL_ACCOUNT_DETAILS','COM_USERS_EMAIL_REGISTERED_BODY_NOPW','','','{\"tags\":[\"name\",\"sitename\",\"siteurl\",\"username\"]}'),
('com_users.registration.user.registration_mail_w_pw','com_users','','COM_USERS_EMAIL_ACCOUNT_DETAILS','COM_USERS_EMAIL_REGISTERED_BODY','','','{\"tags\":[\"name\",\"sitename\",\"siteurl\",\"username\",\"password_clear\"]}'),
('com_users.registration.user.self_activation','com_users','','COM_USERS_EMAIL_ACCOUNT_DETAILS','COM_USERS_EMAIL_REGISTERED_WITH_ACTIVATION_BODY_NOPW','','','{\"tags\":[\"name\",\"sitename\",\"activate\",\"siteurl\",\"username\"]}'),
('com_users.registration.user.self_activation_w_pw','com_users','','COM_USERS_EMAIL_ACCOUNT_DETAILS','COM_USERS_EMAIL_REGISTERED_WITH_ACTIVATION_BODY','','','{\"tags\":[\"name\",\"sitename\",\"activate\",\"siteurl\",\"username\",\"password_clear\"]}'),
('com_users.reminder','com_users','','COM_USERS_EMAIL_USERNAME_REMINDER_SUBJECT','COM_USERS_EMAIL_USERNAME_REMINDER_BODY','','','{\"tags\":[\"name\",\"username\",\"sitename\",\"email\",\"link_text\",\"link_html\"]}'),
('plg_content_joomla.newarticle','plg_content_joomla','','PLG_CONTENT_JOOMLA_NEW_ARTICLE_SUBJECT','PLG_CONTENT_JOOMLA_NEW_ARTICLE_BODY','','','{\"tags\":[\"sitename\",\"name\",\"email\",\"title\",\"url\"]}'),
('plg_multifactorauth_email.mail','plg_multifactorauth_email','','PLG_MULTIFACTORAUTH_EMAIL_EMAIL_SUBJECT','PLG_MULTIFACTORAUTH_EMAIL_EMAIL_BODY','','','{\"tags\":[\"code\",\"sitename\",\"siteurl\",\"username\",\"email\",\"fullname\"]}'),
('plg_system_tasknotification.failure_mail','plg_system_tasknotification','','PLG_SYSTEM_TASK_NOTIFICATION_FAILURE_MAIL_SUBJECT','PLG_SYSTEM_TASK_NOTIFICATION_FAILURE_MAIL_BODY','','','{\"tags\": [\"task_id\", \"task_title\", \"exit_code\", \"exec_data_time\", \"task_output\"]}'),
('plg_system_tasknotification.fatal_recovery_mail','plg_system_tasknotification','','PLG_SYSTEM_TASK_NOTIFICATION_FATAL_MAIL_SUBJECT','PLG_SYSTEM_TASK_NOTIFICATION_FATAL_MAIL_BODY','','','{\"tags\": [\"task_id\", \"task_title\"]}'),
('plg_system_tasknotification.orphan_mail','plg_system_tasknotification','','PLG_SYSTEM_TASK_NOTIFICATION_ORPHAN_MAIL_SUBJECT','PLG_SYSTEM_TASK_NOTIFICATION_ORPHAN_MAIL_BODY','','','{\"tags\": [\"task_id\", \"task_title\"]}'),
('plg_system_tasknotification.success_mail','plg_system_tasknotification','','PLG_SYSTEM_TASK_NOTIFICATION_SUCCESS_MAIL_SUBJECT','PLG_SYSTEM_TASK_NOTIFICATION_SUCCESS_MAIL_BODY','','','{\"tags\":[\"task_id\", \"task_title\", \"exec_data_time\", \"task_output\"]}'),
('plg_task_privacyconsent.request.reminder','plg_task_privacyconsent','','PLG_TASK_PRIVACYCONSENT_EMAIL_REMIND_SUBJECT','PLG_TASK_PRIVACYCONSENT_EMAIL_REMIND_BODY','','','{\"tags\":[\"sitename\",\"url\",\"tokenurl\",\"formurl\",\"token\"]}'),
('plg_task_updatenotification.mail','plg_task_updatenotification','','PLG_TASK_UPDATENOTIFICATION_EMAIL_SUBJECT','PLG_TASK_UPDATENOTIFICATION_EMAIL_BODY','','','{\"tags\":[\"newversion\",\"curversion\",\"sitename\",\"url\",\"link\",\"releasenews\"]}'),
('plg_user_joomla.mail','plg_user_joomla','','PLG_USER_JOOMLA_NEW_USER_EMAIL_SUBJECT','PLG_USER_JOOMLA_NEW_USER_EMAIL_BODY','','','{\"tags\":[\"name\",\"sitename\",\"url\",\"username\",\"password\",\"email\"]}');
/*!40000 ALTER TABLE `adtifuja_mail_templates` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtifuja_menu`
--

DROP TABLE IF EXISTS `adtifuja_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtifuja_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT 1 COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `browserNav` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT 0,
  `params` mediumtext NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT 0,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`(100),`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_language` (`language`),
  KEY `idx_alias` (`alias`(100)),
  KEY `idx_path` (`path`(100))
) ENGINE=InnoDB AUTO_INCREMENT=602 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtifuja_menu`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtifuja_menu` WRITE;
/*!40000 ALTER TABLE `adtifuja_menu` DISABLE KEYS */;
INSERT INTO `adtifuja_menu` VALUES
(1,'','Menu_Item_Root','root','','','','',1,0,0,0,NULL,NULL,0,0,'',0,'',0,183,0,'*',0,NULL,NULL),
(2,'main','com_banners','Banners','','Banners','index.php?option=com_banners','component',1,1,1,4,NULL,NULL,0,0,'class:bookmark',0,'',1,10,0,'*',1,NULL,NULL),
(3,'main','com_banners','Banners','','Banners/Banners','index.php?option=com_banners&view=banners','component',1,2,2,4,NULL,NULL,0,0,'class:banners',0,'',2,3,0,'*',1,NULL,NULL),
(4,'main','com_banners_categories','Categories','','Banners/Categories','index.php?option=com_categories&view=categories&extension=com_banners','component',1,2,2,6,NULL,NULL,0,0,'class:banners-cat',0,'',4,5,0,'*',1,NULL,NULL),
(5,'main','com_banners_clients','Clients','','Banners/Clients','index.php?option=com_banners&view=clients','component',1,2,2,4,NULL,NULL,0,0,'class:banners-clients',0,'',6,7,0,'*',1,NULL,NULL),
(6,'main','com_banners_tracks','Tracks','','Banners/Tracks','index.php?option=com_banners&view=tracks','component',1,2,2,4,NULL,NULL,0,0,'class:banners-tracks',0,'',8,9,0,'*',1,NULL,NULL),
(7,'main','com_contact','Contacts','','Contacts','index.php?option=com_contact','component',1,1,1,8,NULL,NULL,0,0,'class:address-book',0,'',99,110,0,'*',1,NULL,NULL),
(8,'main','com_contact_contacts','Contacts','','Contacts/Contacts','index.php?option=com_contact&view=contacts','component',1,7,2,8,NULL,NULL,0,0,'class:contact',0,'',100,101,0,'*',1,NULL,NULL),
(9,'main','com_contact_categories','Categories','','Contacts/Categories','index.php?option=com_categories&view=categories&extension=com_contact','component',1,7,2,6,NULL,NULL,0,0,'class:contact-cat',0,'',102,103,0,'*',1,NULL,NULL),
(13,'main','com_newsfeeds','News Feeds','','News Feeds','index.php?option=com_newsfeeds','component',1,1,1,17,NULL,NULL,0,0,'class:rss',0,'',111,116,0,'*',1,NULL,NULL),
(14,'main','com_newsfeeds_feeds','Feeds','','News Feeds/Feeds','index.php?option=com_newsfeeds&view=newsfeeds','component',1,13,2,17,NULL,NULL,0,0,'class:newsfeeds',0,'',112,113,0,'*',1,NULL,NULL),
(15,'main','com_newsfeeds_categories','Categories','','News Feeds/Categories','index.php?option=com_categories&view=categories&extension=com_newsfeeds','component',1,13,2,6,NULL,NULL,0,0,'class:newsfeeds-cat',0,'',114,115,0,'*',1,NULL,NULL),
(21,'main','com_finder','Smart Search','','Smart Search','index.php?option=com_finder','component',1,1,1,27,NULL,NULL,0,0,'class:search-plus',0,'',117,128,0,'*',1,NULL,NULL),
(201,'usermenu','Your Profile','your-profile','','your-profile','index.php?option=com_users&view=profile','component',1,1,1,25,NULL,NULL,0,2,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',129,130,0,'*',0,NULL,NULL),
(229,'mainmenu','Single Contact','single-contact','','joomla/contact-component/single-contact','index.php?option=com_contact&view=contact&id=1','component',1,270,3,8,NULL,NULL,0,1,'',0,'{\"presentation_style\":\"\",\"show_contact_category\":\"\",\"show_contact_list\":\"\",\"show_tags\":\"\",\"show_name\":\"\",\"show_position\":\"\",\"show_email\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"\",\"show_postcode\":\"\",\"show_country\":\"\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_misc\":\"\",\"show_image\":\"\",\"allow_vcard\":\"\",\"show_articles\":\"\",\"show_links\":\"\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"show_email_form\":\"\",\"show_email_copy\":\"\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"\",\"custom_reply\":\"\",\"redirect\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"dropdown_position\":\"right\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"1\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}',69,70,0,'*',0,NULL,NULL),
(251,'mainmenu','Contact Categories','contact-categories','','joomla/contact-component/contact-categories','index.php?option=com_contact&view=categories&id=16','component',1,270,3,8,NULL,NULL,0,1,'',0,'{\"show_base_description\":\"\",\"categories_description\":\"\",\"maxLevelcat\":\"\",\"show_empty_categories_cat\":\"\",\"show_subcat_desc_cat\":\"\",\"show_cat_items_cat\":\"\",\"show_category_title\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"maxLevel\":\"-1\",\"show_empty_categories\":\"\",\"show_subcat_desc\":\"\",\"show_cat_items\":\"\",\"filter_field\":\"\",\"show_pagination_limit\":\"\",\"show_headings\":\"\",\"show_position_headings\":\"\",\"show_email_headings\":\"\",\"show_telephone_headings\":\"\",\"show_mobile_headings\":\"\",\"show_fax_headings\":\"\",\"show_suburb_headings\":\"\",\"show_state_headings\":\"\",\"show_country_headings\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"presentation_style\":\"sliders\",\"show_contact_category\":\"\",\"show_contact_list\":\"\",\"show_name\":\"\",\"show_position\":\"\",\"show_email\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"\",\"show_postcode\":\"\",\"show_country\":\"\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_misc\":\"\",\"show_image\":\"\",\"allow_vcard\":\"\",\"show_articles\":\"\",\"show_links\":\"1\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"show_email_form\":\"\",\"show_email_copy\":\"\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"\",\"custom_reply\":\"\",\"redirect\":\"\",\"show_feed_link\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"dropdown_position\":\"right\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"1\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}',65,66,0,'*',0,NULL,NULL),
(252,'mainmenu','News Feed Categories','new-feed-categories','','joomla/other-components/news-feeds-component/new-feed-categories','index.php?option=com_newsfeeds&view=categories&id=0','component',1,267,4,17,NULL,NULL,0,1,'',0,'{\"show_base_description\":\"\",\"categories_description\":\"\",\"maxLevelcat\":\"\",\"show_empty_categories_cat\":\"\",\"show_subcat_desc_cat\":\"\",\"show_cat_items_cat\":\"\",\"show_category_title\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_subcat_desc\":\"\",\"show_cat_items\":\"\",\"filter_field\":\"\",\"show_pagination_limit\":\"\",\"show_headings\":\"\",\"show_articles\":\"\",\"show_link\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"show_feed_image\":\"\",\"show_feed_description\":\"\",\"show_item_description\":\"\",\"feed_character_count\":\"0\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"dropdown_position\":\"right\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"1\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}',86,87,0,'*',0,NULL,NULL),
(253,'mainmenu','News Feed Category','news-feed-category','','joomla/other-components/news-feeds-component/news-feed-category','index.php?option=com_newsfeeds&view=category&id=17','component',1,267,4,17,NULL,NULL,0,1,'',0,'{\"show_category_title\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"maxLevel\":\"-1\",\"show_empty_categories\":\"\",\"show_subcat_desc\":\"\",\"show_cat_items\":\"\",\"filter_field\":\"\",\"show_pagination_limit\":\"\",\"show_headings\":\"\",\"show_articles\":\"\",\"show_link\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"show_feed_image\":\"\",\"show_feed_description\":\"\",\"show_item_description\":\"\",\"feed_character_count\":\"0\",\"feed_display_order\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"dropdown_position\":\"right\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"1\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}',90,91,0,'*',0,NULL,NULL),
(254,'mainmenu','Single News Feed','single-news-feed','','joomla/other-components/news-feeds-component/single-news-feed','index.php?option=com_newsfeeds&view=newsfeed&id=4','component',1,267,4,17,NULL,NULL,0,1,'',0,'{\"show_feed_image\":\"\",\"show_feed_description\":\"\",\"show_item_description\":\"\",\"show_tags\":\"\",\"feed_character_count\":\"0\",\"feed_display_order\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"dropdown_position\":\"right\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"1\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}',88,89,0,'*',0,NULL,NULL),
(257,'mainmenu','Single Article','single-article','','joomla/content-component/single-article','index.php?option=com_content&view=article&id=73','component',1,266,3,22,NULL,NULL,0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"dropdown_position\":\"right\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"1\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}',53,54,0,'*',0,NULL,NULL),
(259,'mainmenu','Article Category Blog','article-category-blog','','joomla/content-component/article-category-blog','index.php?option=com_content&view=category&layout=blog&id=79','component',1,266,3,22,NULL,NULL,0,1,'',0,'{\"layout_type\":\"blog\",\"show_category_heading_title_text\":\"\",\"show_category_title\":\"\",\"show_description\":\"0\",\"show_description_image\":\"0\",\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_no_articles\":\"\",\"show_subcat_desc\":\"\",\"show_cat_num_articles\":\"\",\"show_cat_tags\":\"\",\"page_subheading\":\"\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"4\",\"num_columns\":\"2\",\"num_links\":\"4\",\"multi_column_order\":\"\",\"show_subcategory_content\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"2\",\"show_pagination_results\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"1\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"dropdown_position\":\"right\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"1\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}',55,56,0,'*',0,NULL,NULL),
(260,'mainmenu','Article Category List','article-category-list','','joomla/content-component/article-category-list','index.php?option=com_content&view=category&id=19','component',1,266,3,22,NULL,NULL,0,1,'',0,'{\"show_category_title\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_no_articles\":\"\",\"show_category_heading_title\":\"\",\"show_subcat_desc\":\"\",\"show_cat_num_articles\":\"\",\"show_cat_tags\":\"\",\"page_subheading\":\"\",\"show_pagination_limit\":\"\",\"filter_field\":\"\",\"show_headings\":\"\",\"list_show_date\":\"\",\"date_format\":\"\",\"list_show_hits\":\"\",\"list_show_author\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"alpha\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"display_num\":\"10\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"dropdown_position\":\"right\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"1\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}',57,58,0,'*',0,NULL,NULL),
(262,'mainmenu','Featured Articles','featured-articles','','joomla/content-component/featured-articles','index.php?option=com_content&view=featured','component',1,266,3,22,NULL,NULL,0,1,'',0,'{\"featured_categories\":[\"\"],\"layout_type\":\"blog\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"4\",\"num_columns\":\"2\",\"num_links\":\"4\",\"multi_column_order\":\"1\",\"orderby_pri\":\"\",\"orderby_sec\":\"front\",\"order_date\":\"\",\"show_pagination\":\"2\",\"show_pagination_results\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"1\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"dropdown_position\":\"right\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"1\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}',59,60,0,'*',0,NULL,NULL),
(263,'mainmenu','Submit Article','submit-article','','joomla/content-component/submit-article','index.php?option=com_content&view=form&layout=edit','component',1,266,3,22,NULL,NULL,0,3,'',0,'{\"enable_category\":\"0\",\"catid\":\"19\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"dropdown_position\":\"right\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"1\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}',61,62,0,'*',0,NULL,NULL),
(266,'mainmenu','Content Component','content-component','','joomla/content-component','#','url',1,280,2,0,NULL,NULL,0,1,' ',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu-anchor_rel\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"dropdown_position\":\"right\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"0\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}',52,63,0,'*',0,NULL,NULL),
(267,'mainmenu','News Feeds Component','news-feeds-component','','joomla/other-components/news-feeds-component','index.php?option=com_content&view=article&id=60','component',1,268,3,22,NULL,NULL,0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"Newsfeeds Categories View \",\"show_page_heading\":1,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"dropdown_position\":\"left\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"1\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}',85,92,0,'*',0,NULL,NULL),
(268,'mainmenu','Other Components','other-components','','joomla/other-components','#','url',1,280,2,0,NULL,NULL,0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"dropdown_position\":\"right\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"1\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}',84,97,0,'*',0,NULL,NULL),
(270,'mainmenu','Contact Component','contact-component','','joomla/contact-component','#','url',1,280,2,0,NULL,NULL,0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"dropdown_position\":\"right\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"1\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}',64,73,0,'*',0,NULL,NULL),
(271,'mainmenu','Users Component','users-component','','joomla/users-component','#','url',1,280,2,0,NULL,NULL,0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"dropdown_position\":\"right\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"1\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}',74,83,0,'*',0,NULL,NULL),
(275,'mainmenu','Contact Single Category','contact-single-category','','joomla/contact-component/contact-single-category','index.php?option=com_contact&view=category&catid=26&id=36','component',1,270,3,8,NULL,NULL,0,1,'',0,'{\"show_category_title\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"maxLevel\":\"-1\",\"show_empty_categories\":\"\",\"show_subcat_desc\":\"\",\"show_cat_items\":\"\",\"filter_field\":\"\",\"show_pagination_limit\":\"\",\"show_headings\":\"\",\"show_position_headings\":\"\",\"show_email_headings\":\"\",\"show_telephone_headings\":\"\",\"show_mobile_headings\":\"\",\"show_fax_headings\":\"\",\"show_suburb_headings\":\"\",\"show_state_headings\":\"\",\"show_country_headings\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"initial_sort\":\"\",\"presentation_style\":\"sliders\",\"show_contact_category\":\"\",\"show_contact_list\":\"\",\"show_name\":\"\",\"show_position\":\"\",\"show_email\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"\",\"show_postcode\":\"\",\"show_country\":\"\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_misc\":\"\",\"show_image\":\"\",\"allow_vcard\":\"\",\"show_articles\":\"\",\"show_links\":\"1\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"show_email_form\":\"\",\"show_email_copy\":\"\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"\",\"custom_reply\":\"\",\"redirect\":\"\",\"show_feed_link\":\"1\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"dropdown_position\":\"right\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"1\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}',67,68,0,'*',0,NULL,NULL),
(276,'mainmenu','Search Components','search-component','','joomla/other-components/search-component','index.php?option=com_content&view=article&id=39','component',1,268,3,22,NULL,NULL,0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"dropdown_position\":\"left\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"1\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}',93,94,0,'*',0,NULL,NULL),
(278,'mainmenu','Blog','blog','','blog','index.php?option=com_content&view=category&layout=blog&id=79','component',1,1,1,22,NULL,NULL,0,1,' ',0,'{\"layout_type\":\"blog\",\"show_category_heading_title_text\":\"\",\"show_category_title\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_no_articles\":\"\",\"show_subcat_desc\":\"\",\"show_cat_num_articles\":\"\",\"show_cat_tags\":\"\",\"page_subheading\":\"\",\"num_leading_articles\":\"\",\"num_intro_articles\":\"\",\"num_columns\":\"\",\"num_links\":\"\",\"multi_column_order\":\"\",\"show_subcategory_content\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"show_featured\":\"\",\"article_layout\":\"_:default\",\"show_title\":\"1\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"0\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"menulayout\":\"{\\\"width\\\":600,\\\"menuItem\\\":1,\\\"menuAlign\\\":\\\"right\\\",\\\"layout\\\":[{\\\"type\\\":\\\"row\\\",\\\"attr\\\":[{\\\"type\\\":\\\"column\\\",\\\"colGrid\\\":12,\\\"menuParentId\\\":\\\"278\\\",\\\"moduleId\\\":\\\"\\\"}]}]}\",\"megamenu\":\"0\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"1\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}',25,32,0,'*',0,NULL,NULL),
(279,'mainmenu','Pages','pages','','pages','#','url',1,1,1,0,NULL,NULL,0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menulayout\":\"{\\\"width\\\":600,\\\"menuItem\\\":1,\\\"menuAlign\\\":\\\"right\\\",\\\"layout\\\":[{\\\"type\\\":\\\"row\\\",\\\"attr\\\":[{\\\"type\\\":\\\"column\\\",\\\"colGrid\\\":12,\\\"menuParentId\\\":\\\"\\\",\\\"moduleId\\\":\\\"\\\"}]}]}\",\"megamenu\":\"0\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"0\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}',17,22,0,'*',0,NULL,NULL),
(280,'mainmenu','Joomla!','joomla','','joomla','','separator',1,1,1,0,NULL,NULL,0,1,' ',0,'{\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"menulayout\":\"{\\\"width\\\":800,\\\"menuItem\\\":4,\\\"menuAlign\\\":\\\"full\\\",\\\"layout\\\":[{\\\"type\\\":\\\"row\\\",\\\"attr\\\":[{\\\"type\\\":\\\"column\\\",\\\"colGrid\\\":3,\\\"menuParentId\\\":\\\"266\\\",\\\"moduleId\\\":\\\"\\\"},{\\\"type\\\":\\\"column\\\",\\\"colGrid\\\":3,\\\"menuParentId\\\":\\\"270\\\",\\\"moduleId\\\":\\\"\\\"},{\\\"type\\\":\\\"column\\\",\\\"colGrid\\\":3,\\\"menuParentId\\\":\\\"271\\\",\\\"moduleId\\\":\\\"\\\"},{\\\"type\\\":\\\"column\\\",\\\"colGrid\\\":3,\\\"menuParentId\\\":\\\"268\\\",\\\"moduleId\\\":\\\"\\\"}]}]}\",\"megamenu\":\"1\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"0\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}',51,98,0,'*',0,NULL,NULL),
(402,'mainmenu','Login Form','login-form','','joomla/users-component/login-form','index.php?option=com_users&view=login','component',1,271,3,25,NULL,NULL,0,1,' ',0,'{\"loginredirectchoice\":\"1\",\"login_redirect_url\":\"\",\"login_redirect_menuitem\":\"\",\"logindescription_show\":\"1\",\"login_description\":\"\",\"login_image\":\"\",\"logoutredirectchoice\":\"1\",\"logout_redirect_url\":\"\",\"logout_redirect_menuitem\":\"\",\"logoutdescription_show\":\"1\",\"logout_description\":\"\",\"logout_image\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"0\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"dropdown_position\":\"right\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"1\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}',75,76,0,'*',0,NULL,NULL),
(403,'mainmenu','User Profile','user-profile','','joomla/users-component/user-profile','index.php?option=com_users&view=profile','component',1,271,3,25,NULL,NULL,0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"dropdown_position\":\"right\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"1\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}',77,78,0,'*',0,NULL,NULL),
(404,'mainmenu','Edit User Profile','edit-user-profile','','joomla/users-component/edit-user-profile','index.php?option=com_users&view=profile&layout=edit','component',1,271,3,25,NULL,NULL,0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"dropdown_position\":\"right\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"1\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}',79,80,0,'*',0,NULL,NULL),
(405,'mainmenu','Registration Form','registration-form','','joomla/users-component/registration-form','index.php?option=com_users&view=registration','component',1,271,3,25,NULL,NULL,0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"dropdown_position\":\"right\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"1\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}',81,82,0,'*',0,NULL,NULL),
(437,'mainmenu','Home','home','','home','index.php?option=com_sppagebuilder&view=page&id=1','component',1,1,1,10039,NULL,NULL,0,1,' ',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"0\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"menulayout\":\"{\\\"width\\\":600,\\\"menuItem\\\":1,\\\"menuAlign\\\":\\\"right\\\",\\\"layout\\\":[{\\\"type\\\":\\\"row\\\",\\\"attr\\\":[{\\\"type\\\":\\\"column\\\",\\\"colGrid\\\":12,\\\"menuParentId\\\":\\\"\\\",\\\"moduleId\\\":\\\"\\\"}]}]}\",\"megamenu\":\"0\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"0\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}',11,16,1,'*',0,NULL,NULL),
(449,'usermenu','Submit an Article','submit-an-article','','submit-an-article','index.php?option=com_content&view=form&layout=edit','component',1,1,1,22,NULL,NULL,0,3,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',131,132,0,'*',0,NULL,NULL),
(450,'usermenu','Submit a Web Link','submit-a-web-link','','submit-a-web-link','index.php?option=com_weblinks&view=form&layout=edit','component',1,1,1,21,NULL,NULL,0,3,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',133,134,0,'*',0,NULL,NULL),
(452,'mainmenu','Featured Contacts','featured-contacts','','joomla/contact-component/featured-contacts','index.php?option=com_contact&view=featured&id=16','component',1,270,3,8,NULL,NULL,0,1,'',0,'{\"show_pagination_limit\":\"\",\"show_headings\":\"\",\"show_position_headings\":\"\",\"show_email_headings\":\"\",\"show_telephone_headings\":\"\",\"show_mobile_headings\":\"\",\"show_fax_headings\":\"\",\"show_suburb_headings\":\"\",\"show_state_headings\":\"\",\"show_country_headings\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"presentation_style\":\"sliders\",\"show_name\":\"\",\"show_position\":\"\",\"show_email\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"\",\"show_postcode\":\"\",\"show_country\":\"\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_misc\":\"\",\"show_image\":\"\",\"allow_vcard\":\"\",\"show_articles\":\"\",\"show_links\":\"1\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"show_email_form\":\"\",\"show_email_copy\":\"\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"\",\"custom_reply\":\"\",\"redirect\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":1,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"dropdown_position\":\"right\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"1\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}',71,72,0,'*',0,NULL,NULL),
(466,'mainmenu','Smart Search','smart-search','','joomla/other-components/smart-search','index.php?option=com_finder&view=search','component',1,268,3,27,NULL,NULL,0,1,'',0,'{\"show_date_filters\":\"\",\"show_advanced\":\"\",\"expand_advanced\":\"\",\"show_description\":\"\",\"description_length\":255,\"show_url\":\"\",\"show_pagination_limit\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"allow_empty_query\":\"0\",\"show_suggested_query\":\"1\",\"show_explained_query\":\"1\",\"sort_order\":\"\",\"sort_direction\":\"\",\"show_feed\":\"0\",\"show_feed_text\":\"0\",\"show_feed_link\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"dropdown_position\":\"right\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"1\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}',95,96,0,'*',0,NULL,NULL),
(471,'main','com_tags','com-tags','','com-tags','index.php?option=com_tags','component',1,1,1,29,NULL,NULL,0,1,'class:tags',0,'',135,136,0,'',1,NULL,NULL),
(475,'partners','JoomShaper','joomshaper','','joomshaper','http://www.joomshaper.com/','url',1,1,1,0,NULL,NULL,0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"dropdown_position\":\"right\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"0\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}',137,138,0,'*',0,NULL,NULL),
(476,'partners','Themeum','themeum','','themeum','http://www.themeum.com/','url',1,1,1,0,NULL,NULL,0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"dropdown_position\":\"right\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"0\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}',139,140,0,'*',0,NULL,NULL),
(477,'partners','ShapeBootstrap','shapebootstrap','','shapebootstrap','http://shapebootstrap.net/','url',1,1,1,0,NULL,NULL,0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"dropdown_position\":\"right\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"0\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}',141,142,0,'*',0,NULL,NULL),
(479,'partners','Page Builder','page-builder','','page-builder','http://www.joomshaper.com/page-builder','url',1,1,1,0,NULL,NULL,0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"dropdown_position\":\"right\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"0\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}',143,144,0,'*',0,NULL,NULL),
(481,'quicklink','Helix 3 Framework','helix-framework','','helix-framework','http://www.joomshaper.com/helix3','url',1,1,1,0,NULL,NULL,0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menulayout\":\"{\\\"width\\\":600,\\\"menuItem\\\":1,\\\"menuAlign\\\":\\\"right\\\",\\\"layout\\\":[{\\\"type\\\":\\\"row\\\",\\\"attr\\\":[{\\\"type\\\":\\\"column\\\",\\\"colGrid\\\":12,\\\"menuParentId\\\":\\\"481\\\",\\\"moduleId\\\":\\\"\\\"}]}]}\",\"megamenu\":\"0\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"0\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}',145,146,0,'*',0,NULL,NULL),
(482,'quicklink','Documentation','documentation','','documentation','http://www.joomshaper.com/documentation/','url',1,1,1,0,NULL,NULL,0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"dropdown_position\":\"right\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"0\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}',147,148,0,'*',0,NULL,NULL),
(483,'quicklink','Demo Page Builder ','demo-pagebuilder','','demo-pagebuilder','http://demo.joomshaper.com/page-builder/','url',1,1,1,0,NULL,NULL,0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"dropdown_position\":\"right\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"0\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}',149,150,0,'*',0,NULL,NULL),
(484,'quicklink','Plans & Pricing','plan-pricing','','plan-pricing','http://www.joomshaper.com/join-now','url',1,1,1,0,NULL,NULL,0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"dropdown_position\":\"right\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"0\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}',151,152,0,'*',0,NULL,NULL),
(487,'mainmenu','Coming Soon','2015-02-02-15-01-12','','pages/2015-02-02-15-01-12','?tmpl=comingsoon','url',1,279,2,0,NULL,NULL,0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menulayout\":\"{\\\"width\\\":600,\\\"menuItem\\\":1,\\\"menuAlign\\\":\\\"right\\\",\\\"layout\\\":[{\\\"type\\\":\\\"row\\\",\\\"attr\\\":[{\\\"type\\\":\\\"column\\\",\\\"colGrid\\\":12,\\\"menuParentId\\\":\\\"487\\\",\\\"moduleId\\\":\\\"\\\"}]}]}\",\"megamenu\":\"0\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"0\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}',18,19,0,'*',0,NULL,NULL),
(488,'mainmenu','404 Page','2015-02-02-15-05-34','','pages/2015-02-02-15-05-34','index.php?option=com_404','url',1,279,2,0,NULL,NULL,0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"dropdown_position\":\"right\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"0\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}',20,21,0,'*',0,NULL,NULL),
(489,'mainmenu','Portfolio','portfolio','','home/portfolio','index.php?option=com_sppagebuilder&view=page&id=6','component',1,437,2,10039,NULL,NULL,0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"dropdown_position\":\"right\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"0\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}',14,15,0,'*',0,NULL,NULL),
(490,'mainmenu','Corporate','corporate','','home/corporate','index.php?option=com_sppagebuilder&view=page&id=2','component',1,437,2,10039,NULL,NULL,0,1,' ',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"0\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"dropdown_position\":\"right\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"0\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}',12,13,0,'*',0,NULL,NULL),
(492,'mainmenu','Blog With Right Sidebar','blog-with-right-sidebar','','blog/blog-with-right-sidebar','index.php?option=com_content&view=category&layout=blog&id=79','component',1,278,2,22,NULL,NULL,0,1,'',0,'{\"layout_type\":\"blog\",\"show_category_heading_title_text\":\"\",\"show_category_title\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_no_articles\":\"\",\"show_subcat_desc\":\"\",\"show_cat_num_articles\":\"\",\"show_cat_tags\":\"\",\"page_subheading\":\"\",\"num_leading_articles\":\"\",\"num_intro_articles\":\"\",\"num_columns\":\"\",\"num_links\":\"\",\"multi_column_order\":\"\",\"show_subcategory_content\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"show_title\":\"1\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"dropdown_position\":\"right\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"1\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}',26,27,0,'*',0,NULL,NULL),
(493,'mainmenu','Blog With Left Sidebar','blog-with-left-sidebar','','blog/blog-with-left-sidebar','index.php?option=com_content&view=category&layout=blog&id=79','component',1,278,2,22,NULL,NULL,0,1,'',0,'{\"layout_type\":\"blog\",\"show_category_heading_title_text\":\"\",\"show_category_title\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_no_articles\":\"\",\"show_subcat_desc\":\"\",\"show_cat_num_articles\":\"\",\"show_cat_tags\":\"\",\"page_subheading\":\"\",\"num_leading_articles\":\"\",\"num_intro_articles\":\"\",\"num_columns\":\"\",\"num_links\":\"\",\"multi_column_order\":\"\",\"show_subcategory_content\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"show_title\":\"1\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"dropdown_position\":\"right\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"1\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}',28,29,0,'*',0,NULL,NULL),
(494,'mainmenu','Standard Post Format','standard-post-format','','post-formats/standard-post-format','index.php?option=com_content&view=article&id=73','component',1,503,2,22,NULL,NULL,0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"dropdown_position\":\"right\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"1\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}',34,35,0,'*',0,NULL,NULL),
(495,'mainmenu','Video Post Format','video-post-format','','post-formats/video-post-format','index.php?option=com_content&view=article&id=72','component',1,503,2,22,NULL,NULL,0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"dropdown_position\":\"right\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"1\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}',36,37,0,'*',0,NULL,NULL),
(496,'mainmenu','Gallery Post Format','gallery-post-format','','post-formats/gallery-post-format','index.php?option=com_content&view=article&id=74','component',1,503,2,22,NULL,NULL,0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"dropdown_position\":\"right\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"1\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}',40,41,0,'*',0,NULL,NULL),
(497,'mainmenu','Audio Post Format','audio-post-format','','post-formats/audio-post-format','index.php?option=com_content&view=article&id=75','component',1,503,2,22,NULL,NULL,0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"dropdown_position\":\"right\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"1\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}',38,39,0,'*',0,NULL,NULL),
(498,'mainmenu','Image Post Format','image-post-format','','post-formats/image-post-format','index.php?option=com_content&view=article&id=73','component',1,503,2,22,NULL,NULL,0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"dropdown_position\":\"right\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"1\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}',48,49,0,'*',0,NULL,NULL),
(499,'mainmenu','Link Post Format','link-post-format','','post-formats/link-post-format','index.php?option=com_content&view=article&id=76','component',1,503,2,22,NULL,NULL,0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"dropdown_position\":\"right\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"1\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}',42,43,0,'*',0,NULL,NULL),
(500,'mainmenu','Status Post Format','status-post-format','','post-formats/status-post-format','index.php?option=com_content&view=article&id=71','component',1,503,2,22,NULL,NULL,0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"dropdown_position\":\"right\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"1\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}',46,47,0,'*',0,NULL,NULL),
(501,'mainmenu','Quote Post Format','quote-post-format','','post-formats/quote-post-format','index.php?option=com_content&view=article&id=77','component',1,503,2,22,NULL,NULL,0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"dropdown_position\":\"right\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"1\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}',44,45,0,'*',0,NULL,NULL),
(502,'mainmenu','Portfolio','portfolio-2','','portfolio-2','index.php?option=com_spsimpleportfolio&view=items','component',1,1,1,10007,NULL,NULL,0,1,' ',0,'{\"show_filter\":\"1\",\"category_id\":\"\",\"layout_type\":\"gallery_nospace\",\"columns\":\"4\",\"thumbnail_type\":\"square\",\"limit\":\"12\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"0\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"menulayout\":\"{\\\"width\\\":600,\\\"menuItem\\\":1,\\\"menuAlign\\\":\\\"right\\\",\\\"layout\\\":[{\\\"type\\\":\\\"row\\\",\\\"attr\\\":[{\\\"type\\\":\\\"column\\\",\\\"colGrid\\\":12,\\\"menuParentId\\\":\\\"502\\\",\\\"moduleId\\\":\\\"\\\"}]}]}\",\"megamenu\":\"0\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"1\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}',23,24,0,'*',0,NULL,NULL),
(503,'mainmenu','Post Formats','post-formats','','post-formats','#','url',1,1,1,19,NULL,NULL,0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menulayout\":\"{\\\"width\\\":600,\\\"menuItem\\\":1,\\\"menuAlign\\\":\\\"right\\\",\\\"layout\\\":[{\\\"type\\\":\\\"row\\\",\\\"attr\\\":[{\\\"type\\\":\\\"column\\\",\\\"colGrid\\\":12,\\\"menuParentId\\\":\\\"503\\\",\\\"moduleId\\\":\\\"\\\"}]}]}\",\"megamenu\":\"0\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"0\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}',33,50,0,'*',0,NULL,NULL),
(504,'mainmenu','Article Category Blog','article-category-blog-2','','blog/article-category-blog-2','index.php?option=com_content&view=category&layout=blog&id=79','component',1,278,2,22,NULL,NULL,0,1,'',0,'{\"layout_type\":\"blog\",\"show_category_heading_title_text\":\"\",\"show_category_title\":\"\",\"show_description\":\"0\",\"show_description_image\":\"0\",\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_no_articles\":\"\",\"show_subcat_desc\":\"\",\"show_cat_num_articles\":\"\",\"show_cat_tags\":\"\",\"page_subheading\":\"\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"4\",\"num_columns\":\"2\",\"num_links\":\"4\",\"multi_column_order\":\"\",\"show_subcategory_content\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"2\",\"show_pagination_results\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"1\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"dropdown_position\":\"right\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"1\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}',30,31,0,'*',0,NULL,NULL),
(521,'main','com_associations','multilingual-associations','','multilingual-associations','index.php?option=com_associations','component',1,1,1,34,NULL,NULL,0,1,'class:associations',0,'{}',153,154,0,'*',1,NULL,NULL),
(558,'main','-','1668430677-7909','','Contacts/1668430677-7909','#','separator',1,7,2,33,NULL,NULL,0,0,' ',0,'{}',104,105,0,'*',1,NULL,NULL),
(559,'main','mod_menu_fields','contact-custom-fields','','Contacts/contact-custom-fields','index.php?option=com_fields&context=com_contact.contact','component',1,7,2,33,NULL,NULL,0,0,' ',0,'{}',106,107,0,'*',1,NULL,NULL),
(560,'main','mod_menu_fields_group','contact-custom-fields-group','','Contacts/contact-custom-fields-group','index.php?option=com_fields&view=groups&context=com_contact.contact','component',1,7,2,33,NULL,NULL,0,0,' ',0,'{}',108,109,0,'*',1,NULL,NULL),
(561,'main','-','1668430677-7933','','Smart Search/1668430677-7933','#','separator',1,21,2,27,NULL,NULL,0,0,' ',0,'{}',118,119,0,'*',1,NULL,NULL),
(562,'main','com_finder_index','smart-search-index','','Smart Search/smart-search-index','index.php?option=com_finder&view=index','component',1,21,2,27,NULL,NULL,0,0,' ',0,'{}',120,121,0,'*',1,NULL,NULL),
(563,'main','com_finder_maps','smart-search-maps','','Smart Search/smart-search-maps','index.php?option=com_finder&view=maps','component',1,21,2,27,NULL,NULL,0,0,' ',0,'{}',122,123,0,'*',1,NULL,NULL),
(564,'main','com_finder_filters','smart-search-filters','','Smart Search/smart-search-filters','index.php?option=com_finder&view=filters','component',1,21,2,27,NULL,NULL,0,0,' ',0,'{}',124,125,0,'*',1,NULL,NULL),
(565,'main','com_finder_searches','smart-search-searches','','Smart Search/smart-search-searches','index.php?option=com_finder&view=searches','component',1,21,2,27,NULL,NULL,0,0,' ',0,'{}',126,127,0,'*',1,NULL,NULL),
(566,'main','Search','search','','search','index.php?option=com_search','component',1,1,1,19,NULL,NULL,0,1,'class:search',0,'{}',155,156,0,'',1,NULL,NULL),
(587,'main','COM_SPPAGEBUILDER','com-sppagebuilder','','com-sppagebuilder','index.php?option=com_sppagebuilder&view=editor','component',1,1,1,10039,NULL,NULL,0,1,'class:component',0,'{}',157,170,0,'',1,NULL,NULL),
(588,'main','COM_SPPAGEBUILDER_ADMIN_MENU_PAGES','com-sppagebuilder-admin-menu-pages','','com-sppagebuilder/com-sppagebuilder-admin-menu-pages','index.php?option=com_sppagebuilder&view=editor&tmpl=component','component',1,587,2,10039,NULL,NULL,0,1,'class:component',0,'{}',158,159,0,'',1,NULL,NULL),
(589,'main','COM_SPPAGEBUILDER_ADMIN_MENU_DYNAMIC_CONTENT','com-sppagebuilder-admin-menu-dynamic-content','','com-sppagebuilder/com-sppagebuilder-admin-menu-dynamic-content','index.php?option=com_sppagebuilder&view=editor&tmpl=component#/dynamic-content','component',1,587,2,10039,NULL,NULL,0,1,'class:component',0,'{}',160,161,0,'',1,NULL,NULL),
(590,'main','COM_SPPAGEBUILDER_ADMIN_MENU_MEDIA','com-sppagebuilder-admin-menu-media','','com-sppagebuilder/com-sppagebuilder-admin-menu-media','index.php?option=com_sppagebuilder&view=editor&tmpl=component#/media-manager','component',1,587,2,10039,NULL,NULL,0,1,'class:component',0,'{}',162,163,0,'',1,NULL,NULL),
(591,'main','COM_SPPAGEBUILDER_ADMIN_MENU_CATEGORIES','com-sppagebuilder-admin-menu-categories','','com-sppagebuilder/com-sppagebuilder-admin-menu-categories','index.php?option=com_categories&extension=com_sppagebuilder','component',1,587,2,10039,NULL,NULL,0,1,'class:component',0,'{}',164,165,0,'',1,NULL,NULL),
(592,'main','COM_SPPAGEBUILDER_ADMIN_MENU_EASYSTOE','com-sppagebuilder-admin-menu-easystoe','','com-sppagebuilder/com-sppagebuilder-admin-menu-easystoe','index.php?option=com_sppagebuilder&view=editor&tmpl=component#/editor/storefront','component',1,587,2,10039,NULL,NULL,0,1,'class:component',0,'{}',166,167,0,'',1,NULL,NULL),
(593,'main','COM_SPPAGEBUILDER_ADMIN_MENU_SETTINGS','com-sppagebuilder-admin-menu-settings','','com-sppagebuilder/com-sppagebuilder-admin-menu-settings','index.php?option=com_sppagebuilder&view=editor&tmpl=component#/settings','component',1,587,2,10039,NULL,NULL,0,1,'class:component',0,'{}',168,169,0,'',1,NULL,NULL),
(594,'main','COM_SPSIMPLEPORTFOLIO','com-spsimpleportfolio','','com-spsimpleportfolio','index.php?option=com_spsimpleportfolio','component',1,1,1,10007,NULL,NULL,0,1,'class:component',0,'{}',171,178,0,'',1,NULL,NULL),
(595,'main','COM_SPSIMPLEPORTFOLIO_ITEMS','com-spsimpleportfolio-items','','com-spsimpleportfolio/com-spsimpleportfolio-items','index.php?option=com_spsimpleportfolio&view=items','component',1,594,2,10007,NULL,NULL,0,1,'class:component',0,'{}',172,173,0,'',1,NULL,NULL),
(596,'main','COM_SPSIMPLEPORTFOLIO_CATEGORIES','com-spsimpleportfolio-categories','','com-spsimpleportfolio/com-spsimpleportfolio-categories','index.php?option=com_categories&view=categories&extension=com_spsimpleportfolio','component',1,594,2,10007,NULL,NULL,0,1,'class:component',0,'{}',174,175,0,'',1,NULL,NULL),
(597,'main','COM_SPSIMPLEPORTFOLIO_TAGS','com-spsimpleportfolio-tags','','com-spsimpleportfolio/com-spsimpleportfolio-tags','index.php?option=com_spsimpleportfolio&view=tags','component',1,594,2,10007,NULL,NULL,0,1,'class:component',0,'{}',176,177,0,'',1,NULL,NULL),
(600,'main','COM_QSBUILDER','com-qsbuilder','','com-qsbuilder','index.php?option=com_qsbuilder','component',1,1,1,10147,NULL,NULL,0,1,'class:component',0,'{}',179,182,0,'',1,NULL,NULL),
(601,'main','Build Quick Start Pack','build-quick-start-pack','','com-qsbuilder/build-quick-start-pack','index.php?option=com_qsbuilder&tmpl=component','component',1,600,2,10147,NULL,NULL,0,1,'class:code',0,'{}',180,181,0,'',1,NULL,NULL);
/*!40000 ALTER TABLE `adtifuja_menu` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtifuja_menu_types`
--

DROP TABLE IF EXISTS `adtifuja_menu_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtifuja_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT 0,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  `client_id` int(11) NOT NULL DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtifuja_menu_types`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtifuja_menu_types` WRITE;
/*!40000 ALTER TABLE `adtifuja_menu_types` DISABLE KEYS */;
INSERT INTO `adtifuja_menu_types` VALUES
(2,0,'usermenu','User Menu','A Menu for logged-in Users',0,2),
(4,0,'mainmenu','Main Menu','Main Menu',0,4),
(8,0,'partners','Our Partmers','',0,8),
(9,0,'quicklink','Quick Link','',0,9);
/*!40000 ALTER TABLE `adtifuja_menu_types` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtifuja_messages`
--

DROP TABLE IF EXISTS `adtifuja_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtifuja_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT 0,
  `user_id_to` int(10) unsigned NOT NULL DEFAULT 0,
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `date_time` datetime NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT 0,
  `priority` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtifuja_messages`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtifuja_messages` WRITE;
/*!40000 ALTER TABLE `adtifuja_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `adtifuja_messages` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtifuja_messages_cfg`
--

DROP TABLE IF EXISTS `adtifuja_messages_cfg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtifuja_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtifuja_messages_cfg`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtifuja_messages_cfg` WRITE;
/*!40000 ALTER TABLE `adtifuja_messages_cfg` DISABLE KEYS */;
/*!40000 ALTER TABLE `adtifuja_messages_cfg` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtifuja_modules`
--

DROP TABLE IF EXISTS `adtifuja_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtifuja_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'FK to the #__assets table.',
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `position` varchar(50) NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT 0,
  `module` varchar(50) DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT 0,
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `params` mediumtext NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT 0,
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtifuja_modules`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtifuja_modules` WRITE;
/*!40000 ALTER TABLE `adtifuja_modules` DISABLE KEYS */;
INSERT INTO `adtifuja_modules` VALUES
(2,0,'Login','','',1,'login',NULL,NULL,NULL,NULL,1,'mod_login',1,1,'',1,'*'),
(3,0,'Popular Articles','','',3,'cpanel',NULL,NULL,NULL,NULL,1,'mod_popular',3,1,'{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}',1,'*'),
(4,0,'Recently Added Articles','','',4,'cpanel',NULL,NULL,NULL,NULL,1,'mod_latest',3,1,'{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}',1,'*'),
(8,0,'Toolbar','','',1,'toolbar',NULL,NULL,NULL,NULL,1,'mod_toolbar',3,1,'',1,'*'),
(9,0,'Notifications','','',3,'icon',NULL,NULL,NULL,NULL,1,'mod_quickicon',3,1,'{\"context\":\"update_quickicon\",\"header_icon\":\"fas fa-sync\",\"show_global\":\"0\",\"show_checkin\":\"0\",\"show_cache\":\"0\",\"show_users\":\"0\",\"show_articles\":\"0\",\"show_categories\":\"0\",\"show_media\":\"0\",\"show_menuItems\":\"0\",\"show_modules\":\"0\",\"show_plugins\":\"0\",\"show_templates\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"style\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}',1,'*'),
(10,0,'Logged-in Users','','',2,'cpanel',NULL,NULL,NULL,NULL,1,'mod_logged',3,1,'{\"count\":\"5\",\"name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}',1,'*'),
(12,0,'Admin Menu','','',1,'menu',NULL,NULL,NULL,NULL,1,'mod_menu',3,1,'{\"layout\":\"\",\"moduleclass_sfx\":\"\",\"shownew\":\"1\",\"showhelp\":\"1\",\"cache\":\"0\"}',1,'*'),
(13,0,'Admin Submenu','','',1,'submenu',NULL,NULL,NULL,NULL,1,'mod_submenu',3,1,'',1,'*'),
(14,0,'User Status','','',2,'status',NULL,NULL,NULL,NULL,1,'mod_status',3,1,'',1,'*'),
(15,0,'Title','','',1,'title',NULL,NULL,NULL,NULL,1,'mod_title',3,1,'',1,'*'),
(17,185,'Breadcrumbs','','',1,'breadcrumb',NULL,NULL,NULL,NULL,1,'mod_breadcrumbs',1,1,'{\"showHere\":\"1\",\"showHome\":\"1\",\"homeText\":\"\",\"showLast\":\"1\",\"separator\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\",\"icon\":\"\",\"background_color\":\"\",\"color\":\"\",\"padding\":\"\",\"margin\":\"\"}',0,'*'),
(79,0,'Multilanguage status','','',2,'status',NULL,NULL,NULL,NULL,0,'mod_multilangstatus',3,1,'{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),
(86,0,'Joomla Version','','',1,'status',NULL,NULL,NULL,NULL,1,'mod_version',3,1,'{\"format\":\"short\",\"product\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),
(94,187,'About Helix','','<p>Ball tip biltong pork belly frankfurter shankle jerky leberkas pig kielbasa kay boudin alcatra short loin.</p>\r\n<p>Jowl salami leberkas turkey pork brisket meatball turducken flank bilto porke belly ball tip. pork belly frankf urtane bilto</p>',1,'bottom1',NULL,NULL,NULL,NULL,1,'mod_custom',1,1,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),
(95,188,'Latest News','','',1,'bottom2',NULL,NULL,NULL,NULL,1,'mod_articles_latest',1,1,'{\"catid\":[79],\"count\":3,\"show_featured\":\"\",\"ordering\":\"c_dsc\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),
(96,189,'Our Partners','','',1,'bottom3',NULL,NULL,NULL,NULL,1,'mod_menu',1,1,'{\"menutype\":\"partners\",\"base\":\"\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\",\"icon\":\"\",\"background_color\":\"\",\"color\":\"\",\"padding\":\"\",\"margin\":\"\"}',0,'*'),
(97,190,'Quick Link','','',1,'bottom4',NULL,NULL,NULL,NULL,1,'mod_menu',1,1,'{\"menutype\":\"quicklink\",\"base\":\"\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),
(98,202,'Portfolio Module','','',1,'pagebuilder',NULL,NULL,NULL,NULL,1,'mod_spsimpleportfolio',1,1,'{\"show_filter\":\"0\",\"layout_type\":\"gallery_nospace\",\"columns\":\"4\",\"thumbnail_type\":\"square\",\"limit\":\"4\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\",\"icon\":\"\",\"background_color\":\"\",\"color\":\"\",\"padding\":\"\",\"margin\":\"\"}',0,'*'),
(99,203,'Latest News','','',2,'right',NULL,NULL,NULL,NULL,1,'mod_articles_latest',1,1,'{\"catid\":[\"79\"],\"count\":\"6\",\"show_featured\":\"\",\"ordering\":\"c_dsc\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\",\"icon\":\"\",\"background_color\":\"\",\"color\":\"\",\"padding\":\"\",\"margin\":\"\"}',0,'*'),
(101,205,'Information','','',3,'right',NULL,NULL,NULL,NULL,1,'mod_menu',1,1,'{\"menutype\":\"partners\",\"base\":\"\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\",\"icon\":\"\",\"background_color\":\"\",\"color\":\"\",\"padding\":\"\",\"margin\":\"\"}',0,'*'),
(103,207,'Latest News','','',2,'left',NULL,NULL,NULL,NULL,1,'mod_articles_latest',1,1,'{\"catid\":[\"79\"],\"count\":\"6\",\"show_featured\":\"\",\"ordering\":\"c_dsc\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\",\"icon\":\"\",\"background_color\":\"\",\"color\":\"\",\"padding\":\"\",\"margin\":\"\"}',0,'*'),
(104,208,'Information','','',3,'left',NULL,NULL,NULL,NULL,1,'mod_menu',1,1,'{\"menutype\":\"partners\",\"base\":\"\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\",\"icon\":\"\",\"background_color\":\"\",\"color\":\"\",\"padding\":\"\",\"margin\":\"\"}',0,'*'),
(105,209,'Off Canvas Menu','','',3,'offcanvas',NULL,NULL,NULL,NULL,1,'mod_menu',1,0,'{\"menutype\":\"mainmenu\",\"base\":\"\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),
(107,211,'Portfolio Module -  Portfolio Home','','',1,'pagebuilder',NULL,NULL,NULL,NULL,1,'mod_spsimpleportfolio',1,1,'{\"show_filter\":\"1\",\"layout_type\":\"gallery_nospace\",\"columns\":\"4\",\"thumbnail_type\":\"square\",\"limit\":\"12\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\",\"icon\":\"\",\"background_color\":\"\",\"color\":\"\",\"padding\":\"\",\"margin\":\"\"}',0,'*'),
(111,226,'SP Page Builder','','',0,'',NULL,NULL,NULL,NULL,0,'mod_sppagebuilder',1,1,'',0,'*'),
(112,0,'Login Support','','',1,'sidebar',NULL,NULL,NULL,NULL,1,'mod_loginsupport',1,1,'{\"forum_url\":\"https://forum.joomla.org/\",\"documentation_url\":\"https://docs.joomla.org/\",\"news_url\":\"https://www.joomla.org/announcements.html\",\"automatic_title\":1,\"prepare_content\":1,\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',1,'*'),
(113,0,'System Dashboard','','',1,'cpanel-system',NULL,NULL,NULL,NULL,1,'mod_submenu',1,0,'{\"menutype\":\"*\",\"preset\":\"system\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\",\"style\":\"System-none\"}',1,'*'),
(114,0,'Content Dashboard','','',1,'cpanel-content',NULL,NULL,NULL,NULL,1,'mod_submenu',1,0,'{\"menutype\":\"*\",\"preset\":\"content\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"3\",\"header_tag\":\"h2\",\"header_class\":\"\",\"style\":\"System-none\"}',1,'*'),
(115,0,'Menus Dashboard','','',1,'cpanel-menus',NULL,NULL,NULL,NULL,1,'mod_submenu',1,0,'{\"menutype\":\"*\",\"preset\":\"menus\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\",\"style\":\"System-none\"}',1,'*'),
(116,0,'Components Dashboard','','',1,'cpanel-components',NULL,NULL,NULL,NULL,1,'mod_submenu',1,0,'{\"menutype\":\"*\",\"preset\":\"components\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\",\"style\":\"System-none\"}',1,'*'),
(117,0,'Users Dashboard','','',1,'cpanel-users',NULL,NULL,NULL,NULL,1,'mod_submenu',1,0,'{\"menutype\":\"*\",\"preset\":\"users\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\",\"style\":\"System-none\"}',1,'*'),
(118,0,'Popular Articles','','',3,'cpanel-content',NULL,NULL,NULL,NULL,1,'mod_popular',3,1,'{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\", \"bootstrap_size\":\"12\"}',1,'*'),
(119,0,'Recently Added Articles','','',4,'cpanel-content',NULL,NULL,NULL,NULL,1,'mod_latest',3,1,'{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\", \"bootstrap_size\":\"12\"}',1,'*'),
(120,0,'Logged-in Users','','',2,'cpanel-users',NULL,NULL,NULL,NULL,1,'mod_logged',3,1,'{\"count\":\"5\",\"name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\", \"bootstrap_size\":\"12\"}',1,'*'),
(121,0,'Frontend Link','','',5,'status',NULL,NULL,NULL,NULL,1,'mod_frontend',1,1,'',1,'*'),
(122,0,'Messages','','',4,'status',NULL,NULL,NULL,NULL,1,'mod_messages',3,1,'',1,'*'),
(123,0,'Post Install Messages','','',3,'status',NULL,NULL,NULL,NULL,1,'mod_post_installation_messages',3,1,'',1,'*'),
(124,0,'User Status','','',6,'status',NULL,NULL,NULL,NULL,1,'mod_user',3,1,'',1,'*'),
(125,0,'Site','','',1,'icon',NULL,NULL,NULL,NULL,1,'mod_quickicon',1,1,'{\"context\":\"site_quickicon\",\"header_icon\":\"fas fa-desktop\",\"show_users\":\"1\",\"show_articles\":\"1\",\"show_categories\":\"1\",\"show_media\":\"1\",\"show_menuItems\":\"1\",\"show_modules\":\"1\",\"show_plugins\":\"1\",\"show_templates\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"style\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}',1,'*'),
(126,0,'System','','',2,'icon',NULL,NULL,NULL,NULL,1,'mod_quickicon',1,1,'{\"context\":\"system_quickicon\",\"header_icon\":\"fas fa-wrench\",\"show_global\":\"1\",\"show_checkin\":\"1\",\"show_cache\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"style\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}',1,'*'),
(127,0,'3rd Party','','',4,'icon',NULL,NULL,NULL,NULL,1,'mod_quickicon',1,1,'{\"context\":\"mod_quickicon\",\"header_icon\":\"fas fa-boxes\",\"load_plugins\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"style\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}',1,'*'),
(128,0,'Help Dashboard','','',1,'cpanel-help',NULL,NULL,NULL,NULL,1,'mod_submenu',1,0,'{\"menutype\":\"*\",\"preset\":\"help\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"style\":\"System-none\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h2\",\"header_class\":\"\"}',1,'*'),
(129,0,'Privacy Requests','','',1,'cpanel-privacy',NULL,NULL,NULL,NULL,1,'mod_privacy_dashboard',1,1,'{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"static\",\"style\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h2\",\"header_class\":\"\"}',1,'*'),
(130,0,'Privacy Status','','',1,'cpanel-privacy',NULL,NULL,NULL,NULL,1,'mod_privacy_status',1,1,'{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"static\",\"style\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h2\",\"header_class\":\"\"}',1,'*'),
(131,227,'Search','',NULL,2,'offcanvas',NULL,NULL,NULL,NULL,1,'mod_finder',1,0,'{\"searchfilter\":\"\",\"show_autosuggest\":1,\"show_advanced\":0,\"show_label\":1,\"alt_label\":\"\",\"show_button\":0,\"opensearch\":1,\"opensearch_name\":\"\",\"set_itemid\":0,\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),
(132,228,'Search','',NULL,1,'left',NULL,NULL,NULL,NULL,1,'mod_finder',1,0,'{\"searchfilter\":\"\",\"show_autosuggest\":1,\"show_advanced\":0,\"show_label\":1,\"alt_label\":\"\",\"show_button\":0,\"opensearch\":1,\"opensearch_name\":\"\",\"set_itemid\":0,\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),
(133,229,'Search','',NULL,1,'right',NULL,NULL,NULL,NULL,1,'mod_finder',1,0,'{\"searchfilter\":\"\",\"show_autosuggest\":1,\"show_advanced\":0,\"show_label\":1,\"alt_label\":\"\",\"show_button\":0,\"opensearch\":1,\"opensearch_name\":\"\",\"set_itemid\":0,\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),
(134,0,'Guided Tours','','',1,'status',NULL,NULL,NULL,NULL,1,'mod_guidedtours',1,1,'',1,'*');
/*!40000 ALTER TABLE `adtifuja_modules` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtifuja_modules_menu`
--

DROP TABLE IF EXISTS `adtifuja_modules_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtifuja_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT 0,
  `menuid` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtifuja_modules_menu`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtifuja_modules_menu` WRITE;
/*!40000 ALTER TABLE `adtifuja_modules_menu` DISABLE KEYS */;
INSERT INTO `adtifuja_modules_menu` VALUES
(1,101),
(2,0),
(3,0),
(4,0),
(6,0),
(7,0),
(8,0),
(9,0),
(10,0),
(12,0),
(13,0),
(14,0),
(15,0),
(17,0),
(20,0),
(22,234),
(22,238),
(22,242),
(22,243),
(22,244),
(22,296),
(22,399),
(22,400),
(25,294),
(26,-463),
(26,-462),
(26,-433),
(26,-432),
(26,-431),
(26,-430),
(26,-429),
(26,-427),
(26,-400),
(26,-399),
(26,-296),
(26,-244),
(26,-243),
(26,-242),
(26,-238),
(26,-234),
(32,309),
(45,303),
(57,238),
(57,427),
(57,429),
(57,430),
(57,431),
(57,432),
(57,433),
(57,462),
(57,463),
(79,0),
(86,0),
(87,238),
(87,427),
(87,429),
(87,430),
(87,431),
(87,432),
(87,433),
(87,462),
(87,463),
(94,0),
(95,0),
(96,0),
(97,0),
(98,0),
(99,492),
(101,492),
(103,493),
(104,493),
(105,0),
(107,0),
(112,0),
(113,0),
(114,0),
(115,0),
(116,0),
(117,0),
(118,0),
(119,0),
(120,0),
(121,0),
(122,0),
(123,0),
(124,0),
(125,0),
(126,0),
(127,0),
(128,0),
(129,0),
(130,0),
(131,0),
(132,493),
(133,492),
(134,0);
/*!40000 ALTER TABLE `adtifuja_modules_menu` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtifuja_newsfeeds`
--

DROP TABLE IF EXISTS `adtifuja_newsfeeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtifuja_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT 0,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `link` varchar(2048) NOT NULL DEFAULT '',
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `numarticles` int(10) unsigned NOT NULL DEFAULT 1,
  `cache_time` int(10) unsigned NOT NULL DEFAULT 3600,
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `rtl` tinyint(4) NOT NULL DEFAULT 0,
  `access` int(10) unsigned NOT NULL DEFAULT 0,
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL DEFAULT 0,
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL,
  `modified_by` int(10) unsigned NOT NULL DEFAULT 0,
  `metakey` text DEFAULT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  `description` text NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT 1,
  `hits` int(10) unsigned NOT NULL DEFAULT 0,
  `images` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtifuja_newsfeeds`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtifuja_newsfeeds` WRITE;
/*!40000 ALTER TABLE `adtifuja_newsfeeds` DISABLE KEYS */;
/*!40000 ALTER TABLE `adtifuja_newsfeeds` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtifuja_overrider`
--

DROP TABLE IF EXISTS `adtifuja_overrider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtifuja_overrider` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtifuja_overrider`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtifuja_overrider` WRITE;
/*!40000 ALTER TABLE `adtifuja_overrider` DISABLE KEYS */;
/*!40000 ALTER TABLE `adtifuja_overrider` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtifuja_postinstall_messages`
--

DROP TABLE IF EXISTS `adtifuja_postinstall_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtifuja_postinstall_messages` (
  `postinstall_message_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `extension_id` bigint(20) NOT NULL DEFAULT 700 COMMENT 'FK to #__extensions',
  `title_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) NOT NULL DEFAULT '',
  `language_extension` varchar(255) NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(4) NOT NULL DEFAULT 1,
  `type` varchar(10) NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`postinstall_message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtifuja_postinstall_messages`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtifuja_postinstall_messages` WRITE;
/*!40000 ALTER TABLE `adtifuja_postinstall_messages` DISABLE KEYS */;
INSERT INTO `adtifuja_postinstall_messages` VALUES
(1,247,'COM_CPANEL_WELCOME_BEGINNERS_TITLE','COM_CPANEL_WELCOME_BEGINNERS_MESSAGE','','com_cpanel',1,'message','','','','','3.2.0',1),
(2,247,'COM_CPANEL_MSG_STATS_COLLECTION_TITLE','COM_CPANEL_MSG_STATS_COLLECTION_BODY','','com_cpanel',1,'message','','','admin://components/com_admin/postinstall/statscollection.php','admin_postinstall_statscollection_condition','3.5.0',1),
(3,247,'PLG_SYSTEM_HTTPHEADERS_POSTINSTALL_INTRODUCTION_TITLE','PLG_SYSTEM_HTTPHEADERS_POSTINSTALL_INTRODUCTION_BODY','PLG_SYSTEM_HTTPHEADERS_POSTINSTALL_INTRODUCTION_ACTION','plg_system_httpheaders',1,'action','site://plugins/system/httpheaders/postinstall/introduction.php','httpheaders_postinstall_action','site://plugins/system/httpheaders/postinstall/introduction.php','httpheaders_postinstall_condition','4.0.0',1),
(4,247,'COM_USERS_POSTINSTALL_MULTIFACTORAUTH_TITLE','COM_USERS_POSTINSTALL_MULTIFACTORAUTH_BODY','COM_USERS_POSTINSTALL_MULTIFACTORAUTH_ACTION','com_users',1,'action','admin://components/com_users/postinstall/multifactorauth.php','com_users_postinstall_mfa_action','admin://components/com_users/postinstall/multifactorauth.php','com_users_postinstall_mfa_condition','4.2.0',1),
(5,247,'COM_JOOMLAUPDATE_POSTINSTALL_MSG_AUTOMATED_UPDATES_TITLE','COM_JOOMLAUPDATE_POSTINSTALL_MSG_AUTOMATED_UPDATES_DESCRIPTION','COM_JOOMLAUPDATE_POSTINSTALL_MSG_AUTOMATED_UPDATES_ACTION','com_joomlaupdate',1,'action','admin://components/com_joomlaupdate/postinstall/autoupdate.php','com_joomlaupdate_postinstall_autoupdate_action','admin://components/com_joomlaupdate/postinstall/autoupdate.php','com_joomlaupdate_postinstall_autoupdate_condition','5.4.0',1);
/*!40000 ALTER TABLE `adtifuja_postinstall_messages` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtifuja_privacy_consents`
--

DROP TABLE IF EXISTS `adtifuja_privacy_consents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtifuja_privacy_consents` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `state` int(11) NOT NULL DEFAULT 1,
  `created` datetime NOT NULL,
  `subject` varchar(255) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `remind` tinyint(4) NOT NULL DEFAULT 0,
  `token` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtifuja_privacy_consents`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtifuja_privacy_consents` WRITE;
/*!40000 ALTER TABLE `adtifuja_privacy_consents` DISABLE KEYS */;
/*!40000 ALTER TABLE `adtifuja_privacy_consents` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtifuja_privacy_requests`
--

DROP TABLE IF EXISTS `adtifuja_privacy_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtifuja_privacy_requests` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL DEFAULT '',
  `requested_at` datetime NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `request_type` varchar(25) NOT NULL DEFAULT '',
  `confirm_token` varchar(100) NOT NULL DEFAULT '',
  `confirm_token_created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtifuja_privacy_requests`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtifuja_privacy_requests` WRITE;
/*!40000 ALTER TABLE `adtifuja_privacy_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `adtifuja_privacy_requests` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtifuja_redirect_links`
--

DROP TABLE IF EXISTS `adtifuja_redirect_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtifuja_redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(2048) NOT NULL,
  `new_url` varchar(2048) DEFAULT NULL,
  `referer` varchar(2048) NOT NULL,
  `comment` varchar(255) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT 0,
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  `header` smallint(6) NOT NULL DEFAULT 301,
  PRIMARY KEY (`id`),
  KEY `idx_old_url` (`old_url`(100)),
  KEY `idx_link_modified` (`modified_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtifuja_redirect_links`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtifuja_redirect_links` WRITE;
/*!40000 ALTER TABLE `adtifuja_redirect_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `adtifuja_redirect_links` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtifuja_scheduler_logs`
--

DROP TABLE IF EXISTS `adtifuja_scheduler_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtifuja_scheduler_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `taskname` varchar(255) NOT NULL DEFAULT '',
  `tasktype` varchar(128) NOT NULL COMMENT 'unique identifier for job defined by plugin',
  `duration` decimal(5,3) NOT NULL,
  `jobid` int(10) unsigned NOT NULL,
  `taskid` int(10) unsigned NOT NULL,
  `exitcode` int(11) NOT NULL,
  `lastdate` datetime DEFAULT NULL COMMENT 'Timestamp of last run',
  `nextdate` datetime DEFAULT NULL COMMENT 'Timestamp of next (planned) run, referred for execution on trigger',
  PRIMARY KEY (`id`),
  KEY `idx_taskname` (`taskname`),
  KEY `idx_tasktype` (`tasktype`),
  KEY `idx_lastdate` (`lastdate`),
  KEY `idx_nextdate` (`nextdate`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtifuja_scheduler_logs`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtifuja_scheduler_logs` WRITE;
/*!40000 ALTER TABLE `adtifuja_scheduler_logs` DISABLE KEYS */;
INSERT INTO `adtifuja_scheduler_logs` VALUES
(1,'Update Notification','Joomla! Update Notification',1.343,3,3,0,'2026-08-19 22:30:36','2026-08-20 04:30:36'),
(2,'Session GC','Session Data Purge',0.001,2,3,0,'2026-08-19 22:30:39','2026-08-20 22:30:39'),
(3,'Rotate Logs','Rotate Logs',0.001,1,2,0,'2026-08-19 22:30:43','2026-09-18 06:47:00');
/*!40000 ALTER TABLE `adtifuja_scheduler_logs` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtifuja_scheduler_tasks`
--

DROP TABLE IF EXISTS `adtifuja_scheduler_tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtifuja_scheduler_tasks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(128) NOT NULL COMMENT 'unique identifier for job defined by plugin',
  `execution_rules` text DEFAULT NULL COMMENT 'Execution Rules, Unprocessed',
  `cron_rules` text DEFAULT NULL COMMENT 'Processed execution rules, crontab-like JSON form',
  `state` tinyint(4) NOT NULL DEFAULT 0,
  `last_exit_code` int(11) NOT NULL DEFAULT 0 COMMENT 'Exit code when job was last run',
  `last_execution` datetime DEFAULT NULL COMMENT 'Timestamp of last run',
  `next_execution` datetime DEFAULT NULL COMMENT 'Timestamp of next (planned) run, referred for execution on trigger',
  `times_executed` int(11) DEFAULT 0 COMMENT 'Count of successful triggers',
  `times_failed` int(11) DEFAULT 0 COMMENT 'Count of failures',
  `locked` datetime DEFAULT NULL,
  `priority` smallint(6) NOT NULL DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0 COMMENT 'Configurable list ordering',
  `cli_exclusive` smallint(6) NOT NULL DEFAULT 0 COMMENT 'If 1, the task is only accessible via CLI',
  `params` text NOT NULL,
  `note` text DEFAULT NULL,
  `created` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL DEFAULT 0,
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_type` (`type`),
  KEY `idx_state` (`state`),
  KEY `idx_last_exit` (`last_exit_code`),
  KEY `idx_next_exec` (`next_execution`),
  KEY `idx_locked` (`locked`),
  KEY `idx_priority` (`priority`),
  KEY `idx_cli_exclusive` (`cli_exclusive`),
  KEY `idx_checked_out` (`checked_out`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtifuja_scheduler_tasks`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtifuja_scheduler_tasks` WRITE;
/*!40000 ALTER TABLE `adtifuja_scheduler_tasks` DISABLE KEYS */;
INSERT INTO `adtifuja_scheduler_tasks` VALUES
(1,234,'Rotate Logs','rotation.logs','{\"rule-type\":\"interval-days\",\"interval-days\":30,\"exec-time\":\"06:47\",\"exec-day\":\"04\"}','{\"type\":\"interval\",\"exp\":\"P30D\"}',1,0,'2026-08-19 22:30:44','2026-09-18 06:47:00',2,0,NULL,0,0,0,'{\"logstokeep\":1}',NULL,'2026-06-04 07:10:35',908,NULL,NULL),
(2,235,'Session GC','session.gc','{\"rule-type\":\"interval-hours\",\"interval-hours\":24,\"exec-time\":\"07:10\",\"exec-day\":\"04\"}','{\"type\":\"interval\",\"exp\":\"PT24H\"}',1,0,'2026-08-19 22:30:39','2026-08-20 22:30:39',3,0,NULL,0,0,0,'{\"enable_session_gc\":1,\"enable_session_metadata_gc\":1}',NULL,'2026-06-04 07:10:35',908,NULL,NULL),
(3,236,'Update Notification','update.notification','{\"rule-type\":\"interval-hours\",\"interval-hours\":6,\"exec-time\":\"06:47\",\"exec-day\":\"04\"}','{\"type\":\"interval\",\"exp\":\"PT6H\"}',1,0,'2026-08-19 22:30:36','2026-08-20 04:30:36',3,0,NULL,0,0,0,'{\"email\":\"\",\"language_override\":\"\"}',NULL,'2026-06-04 07:10:35',908,NULL,NULL);
/*!40000 ALTER TABLE `adtifuja_scheduler_tasks` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtifuja_schemaorg`
--

DROP TABLE IF EXISTS `adtifuja_schemaorg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtifuja_schemaorg` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `itemId` int(10) unsigned DEFAULT NULL,
  `context` varchar(100) DEFAULT NULL,
  `schemaType` varchar(100) DEFAULT NULL,
  `schema` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtifuja_schemaorg`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtifuja_schemaorg` WRITE;
/*!40000 ALTER TABLE `adtifuja_schemaorg` DISABLE KEYS */;
/*!40000 ALTER TABLE `adtifuja_schemaorg` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtifuja_schemas`
--

DROP TABLE IF EXISTS `adtifuja_schemas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtifuja_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtifuja_schemas`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtifuja_schemas` WRITE;
/*!40000 ALTER TABLE `adtifuja_schemas` DISABLE KEYS */;
INSERT INTO `adtifuja_schemas` VALUES
(700,'6.1.0-2026-03-13'),
(10007,'2.2.0'),
(10039,'6.6.2');
/*!40000 ALTER TABLE `adtifuja_schemas` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtifuja_session`
--

DROP TABLE IF EXISTS `adtifuja_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtifuja_session` (
  `session_id` varbinary(192) NOT NULL,
  `client_id` tinyint(3) unsigned DEFAULT NULL,
  `guest` tinyint(3) unsigned DEFAULT 1,
  `time` int(11) NOT NULL DEFAULT 0,
  `data` mediumtext DEFAULT NULL,
  `userid` int(11) DEFAULT 0,
  `username` varchar(150) DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `userid` (`userid`),
  KEY `time` (`time`),
  KEY `client_id_guest` (`client_id`,`guest`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtifuja_session`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtifuja_session` WRITE;
/*!40000 ALTER TABLE `adtifuja_session` DISABLE KEYS */;
INSERT INTO `adtifuja_session` VALUES
(0x6339663435356334643936383335323836323463633037643862366163666531,0,1,1787178620,'joomla|s:700:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjM6e3M6Nzoic2Vzc2lvbiI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo3OiJjb3VudGVyIjtpOjE7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNzg3MTc4NjE5O3M6NDoibGFzdCI7aToxNzg3MTc4NjE5O3M6Mzoibm93IjtpOjE3ODcxNzg2MTk7fXM6NToidG9rZW4iO3M6MzI6ImNmZDFjOTU1NjBiMzA3MjM0ZmNiOGFkMzU1MjRlNDNjIjt9czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6MTI6IgAqAHNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7aTowO319czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjEyOiIAKgBzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";',0,''),
(0x6439363766363065343432666265393663656665623430386463333738613238,0,1,1787178665,'joomla|s:700:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjM6e3M6Nzoic2Vzc2lvbiI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo3OiJjb3VudGVyIjtpOjg7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNzg3MTc4NjM2O3M6NDoibGFzdCI7aToxNzg3MTc4NjUxO3M6Mzoibm93IjtpOjE3ODcxNzg2NjQ7fXM6NToidG9rZW4iO3M6MzI6ImJiYjYwY2UzMDlhZjhkNzJhNjIwNDFjZDJkYmJhMWQ3Ijt9czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6MTI6IgAqAHNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7aTowO319czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjEyOiIAKgBzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";',0,'');
/*!40000 ALTER TABLE `adtifuja_session` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtifuja_spmedia`
--

DROP TABLE IF EXISTS `adtifuja_spmedia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtifuja_spmedia` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(255) NOT NULL DEFAULT '',
  `thumb` varchar(255) NOT NULL DEFAULT '',
  `alt` varchar(255) NOT NULL DEFAULT '',
  `caption` varchar(2048) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `type` varchar(100) NOT NULL DEFAULT 'image',
  `media_attr` varchar(5120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '{}',
  `extension` varchar(100) NOT NULL DEFAULT '',
  `created_on` datetime NOT NULL,
  `created_by` bigint(20) NOT NULL DEFAULT 0,
  `modified_on` datetime NOT NULL,
  `modified_by` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtifuja_spmedia`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtifuja_spmedia` WRITE;
/*!40000 ALTER TABLE `adtifuja_spmedia` DISABLE KEYS */;
/*!40000 ALTER TABLE `adtifuja_spmedia` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtifuja_sppagebuilder`
--

DROP TABLE IF EXISTS `adtifuja_sppagebuilder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtifuja_sppagebuilder` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL DEFAULT '',
  `text` mediumtext NOT NULL,
  `content` mediumtext DEFAULT NULL,
  `extension` varchar(255) NOT NULL DEFAULT 'com_sppagebuilder',
  `extension_view` varchar(255) NOT NULL DEFAULT 'page',
  `view_id` bigint(20) NOT NULL DEFAULT 0,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `published` tinyint(4) NOT NULL DEFAULT 1,
  `catid` int(11) NOT NULL DEFAULT 0,
  `access` int(11) NOT NULL DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `created_on` datetime NOT NULL,
  `created_by` bigint(20) NOT NULL DEFAULT 0,
  `modified` datetime NOT NULL,
  `modified_by` bigint(20) NOT NULL DEFAULT 0,
  `checked_out` int(11) NOT NULL DEFAULT 0,
  `checked_out_time` datetime DEFAULT NULL,
  `attribs` varchar(5120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '[]',
  `og_title` varchar(255) NOT NULL DEFAULT '',
  `og_image` varchar(255) NOT NULL DEFAULT '',
  `og_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language` char(7) NOT NULL DEFAULT '',
  `hits` bigint(20) NOT NULL DEFAULT 0,
  `css` longtext NOT NULL,
  `version` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtifuja_sppagebuilder`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtifuja_sppagebuilder` WRITE;
/*!40000 ALTER TABLE `adtifuja_sppagebuilder` DISABLE KEYS */;
INSERT INTO `adtifuja_sppagebuilder` VALUES
(1,217,'Home','[{\"id\":\"ecZzjbKx54VFLY4IIyPyY\",\"visibility\":true,\"collapse\":false,\"settings\":{\"fit_columns\":{\"xxl\":true,\"xl\":true,\"lg\":true,\"md\":true,\"sm\":false,\"xs\":false},\"background_type\":\"image\",\"background_gradient\":{\"color\":\"#00c6fb\",\"color2\":\"#005bea\",\"deg\":\"45\",\"type\":\"linear\"},\"background_image\":{\"src\":\"images\\/feature-bg1.jpg\"},\"background_parallax\":\"0\",\"background_repeat\":\"no-repeat\",\"background_size\":\"cover\",\"background_size_custom\":{\"unit\":\"px\"},\"background_attachment\":\"scroll\",\"background_position\":\"50% 50%\",\"background_position_custom_x\":{\"unit\":\"px\"},\"background_position_custom_y\":{\"unit\":\"px\"},\"external_background_video\":0,\"background_video_ogv\":{\"src\":\"\"},\"video_loop\":1,\"overlay_type\":\"overlay_none\",\"gradient_overlay\":{\"color\":\"rgba(127, 0, 255, 0.8)\",\"color2\":\"rgba(225, 0, 255, 0.7)\",\"deg\":\"45\",\"type\":\"linear\"},\"pattern_overlay\":\"\",\"overlay_pattern_color\":\"\",\"blend_mode\":\"normal\",\"columns_align_center\":0,\"columns_content_alignment\":\"center\",\"fullscreen\":0,\"no_gutter\":0,\"row_width\":{\"unit\":\"px\"},\"row_max_width\":{\"unit\":\"px\"},\"row_min_width\":{\"unit\":\"px\"},\"padding\":{\"xxl\":\"170px 0px 170px 0px\",\"xl\":\"170px 0px 170px 0px\",\"lg\":\"150px 0px 150px 0px\",\"md\":\"130px 0px 130px 0px\",\"sm\":\"100px 0px 100px 0px\",\"xs\":\"100px 0px 100px 0px\"},\"margin\":{\"xxl\":\"0px 0px 0px 0px\",\"xl\":\"0px 0px 0px 0px\",\"lg\":\"0px 0px 0px 0px\",\"md\":\"0px 0px 0px 0px\",\"sm\":\"0px 0px 0px 0px\",\"xs\":\"0px 0px 0px 0px\"},\"row_border\":0,\"row_border_style\":\"solid\",\"row_boxshadow\":{\"ho\":0,\"vo\":0,\"blur\":0,\"spread\":0,\"color\":\"#FFFFFF\",\"inset\":false,\"enabled\":false},\"show_top_shape\":\"\",\"shape_name\":\"clouds-flat\",\"shape_color\":\"#e5e5e5\",\"shape_width\":{\"xxl\":\"\",\"xl\":100,\"lg\":100,\"md\":100,\"sm\":100,\"xs\":100},\"shape_height\":\"\",\"shape_flip\":false,\"shape_invert\":false,\"shape_to_front\":false,\"show_bottom_shape\":\"\",\"bottom_shape_name\":\"clouds-opacity\",\"bottom_shape_color\":\"#e5e5e5\",\"bottom_shape_width\":{\"xl\":100},\"bottom_shape_height\":\"\",\"bottom_shape_flip\":false,\"bottom_shape_invert\":false,\"bottom_shape_to_front\":false,\"heading_selector\":\"h3\",\"title_fontsize\":\"\",\"title_fontweight\":\"\",\"title_position\":\"center\",\"admin_label\":\"\",\"hidden_xs\":\"\",\"hidden_sm\":\"\",\"hidden_md\":\"\",\"enable_animation\":\"1\",\"animationduration\":\"300\",\"animationdelay\":\"0\",\"instFormId\":1668366208607},\"layout\":\"12\",\"columns\":[{\"id\":\"kvBsEc-bzHIIIAdlbjhEV\",\"class_name\":\"row-column\",\"visibility\":true,\"settings\":{\"background_type\":\"none\",\"background_gradient\":{\"color\":\"#00c6fb\",\"color2\":\"#005bea\",\"deg\":\"45\",\"type\":\"linear\"},\"background_image\":{\"src\":\"\"},\"background_repeat\":\"no-repeat\",\"background_size\":\"cover\",\"background_size_custom\":{\"unit\":\"px\"},\"background_attachment\":\"scroll\",\"background_position\":\"0 0\",\"background_position_custom_x\":{\"unit\":\"px\"},\"background_position_custom_y\":{\"unit\":\"px\"},\"overlay_type\":\"overlay_color\",\"gradient_overlay\":{\"color\":\"rgba(127, 0, 255, 0.8)\",\"color2\":\"rgba(225, 0, 255, 0.7)\",\"deg\":\"45\",\"type\":\"linear\"},\"pattern_overlay\":{\"src\":\"\"},\"overlay_pattern_color\":\"\",\"blend_mode\":\"normal\",\"use_border\":0,\"border_width\":\"\",\"boxshadow\":\"0 0 0 0 #FFFFFF\",\"items_align_center\":0,\"items_content_alignment\":\"center\",\"tablet_order\":\"\",\"mobile_order\":\"\",\"hidden_xs\":\"\",\"hidden_sm\":\"\",\"hidden_md\":\"\",\"enable_animation\":\"1\",\"animationduration\":\"300\",\"animationdelay\":\"0\"},\"addons\":[{\"id\":\"tjFwiMtAXE3UQd8LqX_2f\",\"name\":\"feature\",\"visibility\":true,\"settings\":{\"icon_boxshadow\":\"0 0 0 0 #ffffff\",\"addon_hover_boxshadow\":\"0 0 0 0 #ffffff\",\"global_padding\":\"\",\"global_margin\":\"\",\"global_background_type\":\"none\",\"global_background_gradient\":{\"color\":\"#00c6fb\",\"color2\":\"#005bea\",\"deg\":\"45\",\"type\":\"linear\"},\"global_background_image\":{\"src\":\"\"},\"global_background_repeat\":\"no-repeat\",\"global_background_size\":\"cover\",\"global_background_attachment\":\"inherit\",\"global_background_position\":\"50% 50%\",\"global_use_overlay\":0,\"global_overlay_type\":\"overlay_none\",\"global_gradient_overlay\":{\"color\":\"rgba(127, 0, 255, 0.8)\",\"color2\":\"rgba(225, 0, 255, 0.7)\",\"deg\":\"45\",\"type\":\"linear\"},\"global_pattern_overlay\":{\"src\":\"\"},\"global_overlay_pattern_color\":\"\",\"blend_mode\":\"normal\",\"global_user_border\":0,\"global_border_width\":{\"xxl\":\"\",\"xl\":\"\",\"lg\":\"\",\"md\":\"\",\"sm\":\"\",\"xs\":\"\"},\"global_border_radius\":{\"xxl\":\"\",\"xl\":\"\",\"lg\":\"\",\"md\":\"\",\"sm\":\"\",\"xs\":\"\"},\"global_boxshadow\":\"0 0 0 0 #FFFFFF\",\"global_use_animation\":0,\"global_animationduration\":\"300\",\"global_animationdelay\":\"0\",\"class\":\"\",\"global_custom_css\":\"\",\"global_custom_position\":0,\"global_seclect_position\":\"relative\",\"global_addon_position_left\":{\"unit\":\"px\"},\"global_addon_position_top\":{\"unit\":\"px\"},\"use_global_width\":\"0\",\"hidden_md\":\"0\",\"hidden_sm\":\"0\",\"hidden_xs\":\"0\",\"acl\":\"\",\"admin_label\":\"\",\"while_scroll_view\":[{\"enable_while_scroll_view\":0,\"scrolling_options\":\"fullpage\",\"on_scroll_actions\":[{\"id\":\"b3fdc1c1e6bfde5942ea\",\"index\":0,\"keyframe\":0,\"name\":\"move\",\"property\":{\"x\":\"0\",\"y\":\"-100\",\"z\":\"0\"},\"range\":{\"max\":500,\"min\":-500,\"stop\":1},\"single\":true,\"title\":\"Move\"},{\"id\":\"936e0225e6dc8edfba7d\",\"index\":1,\"keyframe\":100,\"name\":\"move\",\"property\":{\"x\":0,\"y\":0,\"z\":0},\"range\":{\"max\":500,\"min\":-500,\"stop\":1},\"single\":true,\"title\":\"Move\"}],\"transition_origin_x\":\"center\",\"transition_origin_y\":\"center\",\"enable_tablet\":0,\"enable_mobile\":0}],\"mouse_movement\":[{\"enable_tilt_effect\":0,\"mouse_tilt_direction\":\"direct\",\"mouse_tilt_speed\":\"1\",\"mouse_tilt_max\":\"15\",\"enable_tablet\":0,\"enable_mobile\":0}],\"title\":\"HELIX3 FRAMEWORK\",\"heading_selector\":\"h1\",\"text\":\"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore. sed do eiusmod tempor incididunt ut labore et dolore\",\"feature_type\":\"image\",\"title_position\":\"\",\"icon_name\":\"fas fa-trophy\",\"feature_image\":{\"src\":\"\",\"height\":\"\",\"width\":\"\"},\"feature_image_alt\":\"\",\"feature_image_width\":{\"xl\":50},\"icon_size\":{\"xxl\":36,\"xl\":36,\"lg\":36,\"md\":36,\"sm\":36,\"xs\":36},\"icon_color\":\"#3366FF\",\"url_appear\":\"title\",\"btn_type\":\"primary\",\"btn_appearance\":\"\",\"btn_shape\":\"rounded\",\"link_btn_padding_bottom\":\"\",\"btn_size\":\"lg\",\"button_padding\":{\"xxl\":\"8px 22px 10px 22px\",\"xl\":\"8px 22px 10px 22px\",\"lg\":\"8px 22px 10px 22px\",\"md\":\"8px 22px 10px 22px\",\"sm\":\"8px 22px 10px 22px\",\"xs\":\"8px 22px 10px 22px\"},\"btn_block\":\"\",\"button_margin\":{\"xxl\":\"30px 0px 0px 0px\",\"xl\":\"30px 0px 0px 0px\",\"lg\":\"30px 0px 0px 0px\",\"md\":\"30px 0px 0px 0px\",\"sm\":\"30px 0px 0px 0px\",\"xs\":\"30px 0px 0px 0px\"},\"btn_icon_position\":\"left\",\"btn_color\":\"#FFFFFF\",\"btn_background_color\":\"#3366FF\",\"btn_background_gradient\":{\"color\":\"#3366FF\",\"color2\":\"#0037DD\",\"deg\":\"45\",\"type\":\"linear\"},\"link_btn_border_color\":\"\",\"btn_color_hover\":\"#FFFFFF\",\"btn_background_color_hover\":\"#0037DD\",\"btn_background_gradient_hover\":{\"color\":\"#0037DD\",\"color2\":\"#3366FF\",\"deg\":\"45\",\"type\":\"linear\"},\"link_btn_hover_color\":\"\",\"link_btn_border_hover_color\":\"\",\"alignment\":{\"xxl\":\"center\",\"xl\":\"center\",\"lg\":\"center\",\"md\":\"center\",\"sm\":\"center\",\"xs\":\"center\"},\"text_padding\":{\"xxl\":\"   \",\"xl\":\"   \",\"lg\":\"   \",\"md\":\"   \",\"sm\":\"   \",\"xs\":\"   \"},\"icon_padding\":{\"xxl\":\"   \",\"xl\":\"   \",\"lg\":\"   \",\"md\":\"   \",\"sm\":\"   \",\"xs\":\"   \"},\"feature_image_margin\":{\"xxl\":\"   \",\"xl\":\"   \",\"lg\":\"   \",\"md\":\"   \",\"sm\":\"   \",\"xs\":\"   \"},\"btn_text\":\"Download Now!\",\"title_typography\":{\"font\":\"\",\"weight\":900,\"uppercase\":false,\"underline\":false,\"italic\":false,\"size\":{\"md\":{\"value\":\"60\",\"unit\":\"px\"},\"sm\":{\"value\":\"50\",\"unit\":\"px\"},\"xs\":{\"value\":\"40\",\"unit\":\"px\"},\"lg\":{\"value\":\"64\",\"unit\":\"px\"},\"xl\":{\"value\":\"72\",\"unit\":\"px\"},\"xxl\":{\"value\":\"\",\"unit\":\"px\"}},\"line_height\":{\"xxl\":{\"value\":\"\",\"unit\":\"px\"},\"xl\":{\"value\":\"72\",\"unit\":\"px\"},\"lg\":{\"value\":\"64\",\"unit\":\"px\"},\"md\":{\"value\":\"60\",\"unit\":\"px\"},\"sm\":{\"value\":\"50\",\"unit\":\"px\"},\"xs\":{\"value\":\"40\",\"unit\":\"px\"}},\"letter_spacing\":{\"md\":{\"value\":\"\",\"unit\":\"px\"},\"sm\":{\"value\":\"\",\"unit\":\"px\"},\"xs\":{\"value\":\"\",\"unit\":\"px\"},\"lg\":{\"value\":\"\",\"unit\":\"px\"},\"xl\":{\"value\":\"\",\"unit\":\"px\"},\"xxl\":{\"value\":\"\",\"unit\":\"px\"}}},\"content_typography\":{\"font\":\"\",\"weight\":300,\"uppercase\":false,\"underline\":false,\"italic\":false,\"size\":{\"md\":{\"value\":\"\",\"unit\":\"px\"},\"sm\":{\"value\":\"\",\"unit\":\"px\"},\"xs\":{\"value\":\"\",\"unit\":\"px\"},\"lg\":{\"value\":\"\",\"unit\":\"px\"},\"xl\":{\"value\":\"18\",\"unit\":\"px\"},\"xxl\":{\"value\":\"\",\"unit\":\"px\"}},\"line_height\":{\"xxl\":{\"value\":\"\",\"unit\":\"px\"},\"xl\":{\"value\":\"26\",\"unit\":\"px\"},\"lg\":{\"value\":\"\",\"unit\":\"px\"},\"md\":{\"value\":\"\",\"unit\":\"px\"},\"sm\":{\"value\":\"\",\"unit\":\"px\"},\"xs\":{\"value\":\"\",\"unit\":\"px\"}},\"letter_spacing\":{\"md\":{\"value\":\"\",\"unit\":\"px\"},\"sm\":{\"value\":\"\",\"unit\":\"px\"},\"xs\":{\"value\":\"\",\"unit\":\"px\"},\"lg\":{\"value\":\"\",\"unit\":\"px\"},\"xl\":{\"value\":\"\",\"unit\":\"px\"},\"xxl\":{\"value\":\"\",\"unit\":\"px\"}}},\"title_margin_top\":{\"xxl\":\"\",\"xl\":\"0\",\"lg\":\"\",\"md\":\"\",\"sm\":\"\",\"xs\":\"\",\"unit\":\"px\"},\"title_margin_bottom\":{\"xxl\":\"\",\"xl\":\"20\",\"lg\":\"\",\"md\":\"\",\"sm\":\"\",\"xs\":\"\"},\"title_text_color\":\"#ffffff\",\"addon_color\":\"#ffffff\",\"btn_typography\":{\"font\":\"\",\"weight\":400,\"uppercase\":false,\"underline\":false,\"italic\":false,\"size\":{\"md\":{\"value\":\"\",\"unit\":\"px\"},\"sm\":{\"value\":\"\",\"unit\":\"px\"},\"xs\":{\"value\":\"\",\"unit\":\"px\"},\"lg\":{\"value\":\"\",\"unit\":\"px\"},\"xl\":{\"value\":\"\",\"unit\":\"px\"},\"xxl\":{\"value\":\"\",\"unit\":\"px\"}},\"line_height\":{\"xxl\":{\"value\":\"\",\"unit\":\"px\"},\"xl\":{\"value\":\"\",\"unit\":\"px\"},\"lg\":{\"value\":\"\",\"unit\":\"px\"},\"md\":{\"value\":\"\",\"unit\":\"px\"},\"sm\":{\"value\":\"\",\"unit\":\"px\"},\"xs\":{\"value\":\"\",\"unit\":\"px\"}},\"letter_spacing\":{\"md\":{\"value\":\"\",\"unit\":\"px\"},\"sm\":{\"value\":\"\",\"unit\":\"px\"},\"xs\":{\"value\":\"\",\"unit\":\"px\"},\"lg\":{\"value\":\"\",\"unit\":\"px\"},\"xl\":{\"value\":\"\",\"unit\":\"px\"},\"xxl\":{\"value\":\"\",\"unit\":\"px\"}}},\"btn_url\":{\"url\":\"https:\\/\\/www.joomshaper.com\\/helix\",\"type\":\"url\",\"new_tab\":false,\"nofollow\":false}},\"icon\":\"<svg viewBox=\\\"0 0 32 32\\\" xmlns=\\\"http:\\/\\/www.w3.org\\/2000\\/svg\\\"><path opacity=\\\".5\\\" fill-rule=\\\"evenodd\\\" clip-rule=\\\"evenodd\\\" d=\\\"M29 26a1 1 0 01-1 1H4a1 1 0 110-2h24a1 1 0 011 1zM24 31a1 1 0 01-1 1H8a1 1 0 110-2h15a1 1 0 011 1z\\\" fill=\\\"currentColor\\\"\\/><path fill-rule=\\\"evenodd\\\" clip-rule=\\\"evenodd\\\" d=\\\"M16.458 0c.423 0 .81.24.996.62l2.63 5.327 5.882.86a1.111 1.111 0 01.614 1.895l-4.255 4.144 1.005 5.855a1.111 1.111 0 01-1.613 1.171l-5.259-2.765-5.26 2.765a1.111 1.111 0 01-1.611-1.17l1.004-5.856-4.255-4.144a1.111 1.111 0 01.614-1.895l5.882-.86L15.462.62c.187-.379.573-.619.996-.619zm0 3.621l-1.892 3.833a1.111 1.111 0 01-.836.608l-4.232.618 3.062 2.982c.262.255.382.623.32.984l-.723 4.211 3.784-1.99c.324-.17.71-.17 1.034 0l3.784 1.99-.723-4.21a1.11 1.11 0 01.32-.985l3.062-2.982-4.232-.618a1.111 1.111 0 01-.836-.608l-1.892-3.833z\\\" fill=\\\"currentColor\\\"\\/><\\/svg>\",\"title\":\"Feature Box\",\"parent\":false}],\"width\":{\"xxl\":\"100%\",\"xl\":\"100%\",\"lg\":\"100%\",\"md\":\"100%\",\"sm\":\"100%\",\"xs\":\"100%\"}}],\"parent\":false},{\"layout\":\"3,3,3,3\",\"settings\":{\"fullscreen\":0,\"margin\":{\"xxl\":\"\",\"xl\":\"   \",\"lg\":\"   \",\"md\":\"   \",\"sm\":\"   \",\"xs\":\"   \"},\"padding\":{\"xxl\":\"\",\"xl\":\"100px 0px 100px 0px\",\"lg\":\"100px 0px 100px 0px\",\"md\":\"100px 0px 100px 0px\",\"sm\":\"50px 0px 50px 0px\",\"xs\":\"50px 0px 50px 0px\"},\"class\":\"\",\"id\":\"\",\"background_video_ogv\":\"\",\"background_video_mp4\":\"\",\"background_video\":0,\"background_image\":\"\",\"color\":\"\",\"background_color\":\"\",\"subtitle_fontsize\":\"\",\"subtitle\":\"\",\"title_margin_bottom\":\"\",\"title_margin_top\":\"\",\"title_text_color\":\"\",\"title_fontsize\":\"\",\"title\":\"\",\"instFormId\":1510554358,\"hidden_xs\":0,\"hidden_sm\":0,\"hidden_md\":0,\"fit_columns\":{\"xxl\":true,\"xl\":true,\"lg\":true,\"md\":true,\"sm\":false,\"xs\":false}},\"id\":1510554358,\"visibility\":1,\"columns\":[{\"class_name\":\"col-sm-3\",\"settings\":{\"class\":\"\",\"animationdelay\":100,\"animationduration\":300,\"animation\":\"fadeInDown\",\"padding\":{\"xxl\":\"\",\"xl\":\"   \",\"lg\":\"   \",\"md\":\"   \",\"sm\":\"   \",\"xs\":\"   \"},\"color\":\"\",\"background\":\"\",\"instFormId\":1510554359,\"items_align_center\":0},\"id\":1510554359,\"addons\":[{\"name\":\"feature\",\"title\":\"Feature Box\",\"id\":1510554360,\"settings\":{\"admin_label\":\"\",\"title\":\"Fully Responsive\",\"heading_selector\":\"h3\",\"title_fontsize\":\"\",\"title_fontweight\":\"\",\"title_text_color\":\"\",\"title_url\":\"\",\"title_position\":\"after\",\"feature_type\":\"icon\",\"feature_image\":\"\",\"icon_name\":\"fa-laptop\",\"icon_size\":\"42\",\"icon_color\":\"\",\"icon_background\":\"\",\"icon_border_color\":\"\",\"icon_border_width\":\"\",\"icon_border_radius\":\"\",\"icon_margin_top\":\"0\",\"icon_margin_bottom\":\"\",\"icon_padding\":{\"xxl\":\"\",\"xl\":\"   \",\"lg\":\"   \",\"md\":\"   \",\"sm\":\"   \",\"xs\":\"   \"},\"text\":\"Sirloin pork loine beefb andoe uillen capicola shank swine chuck flank tritip picola kevin filet mignon\",\"alignment\":\"sppb-text-center\",\"class\":\"\",\"instFormId\":1510554360,\"text_padding\":{\"xxl\":\"\",\"xl\":\"   \",\"lg\":\"   \",\"md\":\"   \",\"sm\":\"   \",\"xs\":\"   \"},\"global_use_background\":0,\"global_user_border\":0,\"global_margin\":{\"xxl\":\"\",\"xl\":\"   \",\"lg\":\"   \",\"md\":\"   \",\"sm\":\"   \",\"xs\":\"   \"},\"global_padding\":{\"xxl\":\"\",\"xl\":\"   \",\"lg\":\"   \",\"md\":\"   \",\"sm\":\"   \",\"xs\":\"   \"},\"global_use_animation\":0},\"visibility\":1,\"icon\":\"<svg viewBox=\\\"0 0 32 32\\\" xmlns=\\\"http:\\/\\/www.w3.org\\/2000\\/svg\\\"><path opacity=\\\".5\\\" fill-rule=\\\"evenodd\\\" clip-rule=\\\"evenodd\\\" d=\\\"M29 26a1 1 0 01-1 1H4a1 1 0 110-2h24a1 1 0 011 1zM24 31a1 1 0 01-1 1H8a1 1 0 110-2h15a1 1 0 011 1z\\\" fill=\\\"currentColor\\\"\\/><path fill-rule=\\\"evenodd\\\" clip-rule=\\\"evenodd\\\" d=\\\"M16.458 0c.423 0 .81.24.996.62l2.63 5.327 5.882.86a1.111 1.111 0 01.614 1.895l-4.255 4.144 1.005 5.855a1.111 1.111 0 01-1.613 1.171l-5.259-2.765-5.26 2.765a1.111 1.111 0 01-1.611-1.17l1.004-5.856-4.255-4.144a1.111 1.111 0 01.614-1.895l5.882-.86L15.462.62c.187-.379.573-.619.996-.619zm0 3.621l-1.892 3.833a1.111 1.111 0 01-.836.608l-4.232.618 3.062 2.982c.262.255.382.623.32.984l-.723 4.211 3.784-1.99c.324-.17.71-.17 1.034 0l3.784 1.99-.723-4.21a1.11 1.11 0 01.32-.985l3.062-2.982-4.232-.618a1.111 1.111 0 01-.836-.608l-1.892-3.833z\\\" fill=\\\"currentColor\\\"\\/><\\/svg>\"}],\"visibility\":1,\"width\":{\"xxl\":\"25%\",\"xl\":\"25%\",\"lg\":\"25%\",\"md\":\"25%\",\"sm\":\"100%\",\"xs\":\"100%\"}},{\"class_name\":\"col-sm-3\",\"settings\":{\"class\":\"\",\"animationdelay\":200,\"animationduration\":500,\"animation\":\"fadeInDown\",\"padding\":\"\",\"color\":\"\",\"background\":\"\"},\"id\":1510554361,\"addons\":[{\"name\":\"feature\",\"title\":\"Feature Box\",\"id\":1510554362,\"settings\":{\"admin_label\":\"\",\"title\":\"Unique Design\",\"heading_selector\":\"h3\",\"title_fontsize\":\"\",\"title_fontweight\":\"\",\"title_text_color\":\"\",\"title_url\":\"\",\"title_position\":\"after\",\"feature_type\":\"icon\",\"feature_image\":\"\",\"icon_name\":\"fa-dashboard\",\"icon_size\":\"42\",\"icon_color\":\"\",\"icon_background\":\"\",\"icon_border_color\":\"\",\"icon_border_width\":\"\",\"icon_border_radius\":\"\",\"icon_margin_top\":\"0\",\"icon_margin_bottom\":\"\",\"icon_padding\":\"\",\"text\":\"pork sirloi loine beefb andoe uillen capicola shank swine chuck flank tritip picola kevin filet mignon\",\"alignment\":\"sppb-text-center\",\"class\":\"\"},\"visibility\":1,\"icon\":\"<svg viewBox=\\\"0 0 32 32\\\" xmlns=\\\"http:\\/\\/www.w3.org\\/2000\\/svg\\\"><path opacity=\\\".5\\\" fill-rule=\\\"evenodd\\\" clip-rule=\\\"evenodd\\\" d=\\\"M29 26a1 1 0 01-1 1H4a1 1 0 110-2h24a1 1 0 011 1zM24 31a1 1 0 01-1 1H8a1 1 0 110-2h15a1 1 0 011 1z\\\" fill=\\\"currentColor\\\"\\/><path fill-rule=\\\"evenodd\\\" clip-rule=\\\"evenodd\\\" d=\\\"M16.458 0c.423 0 .81.24.996.62l2.63 5.327 5.882.86a1.111 1.111 0 01.614 1.895l-4.255 4.144 1.005 5.855a1.111 1.111 0 01-1.613 1.171l-5.259-2.765-5.26 2.765a1.111 1.111 0 01-1.611-1.17l1.004-5.856-4.255-4.144a1.111 1.111 0 01.614-1.895l5.882-.86L15.462.62c.187-.379.573-.619.996-.619zm0 3.621l-1.892 3.833a1.111 1.111 0 01-.836.608l-4.232.618 3.062 2.982c.262.255.382.623.32.984l-.723 4.211 3.784-1.99c.324-.17.71-.17 1.034 0l3.784 1.99-.723-4.21a1.11 1.11 0 01.32-.985l3.062-2.982-4.232-.618a1.111 1.111 0 01-.836-.608l-1.892-3.833z\\\" fill=\\\"currentColor\\\"\\/><\\/svg>\"}],\"visibility\":1,\"width\":{\"xxl\":\"25%\",\"xl\":\"25%\",\"lg\":\"25%\",\"md\":\"25%\",\"sm\":\"100%\",\"xs\":\"100%\"}},{\"class_name\":\"col-sm-3\",\"settings\":{\"class\":\"\",\"animationdelay\":300,\"animationduration\":500,\"animation\":\"fadeInDown\",\"padding\":\"\",\"color\":\"\",\"background\":\"\"},\"id\":1510554363,\"addons\":[{\"name\":\"feature\",\"title\":\"Feature Box\",\"id\":1510554364,\"settings\":{\"admin_label\":\"\",\"title\":\"Easy to Customize\",\"heading_selector\":\"h3\",\"title_fontsize\":\"\",\"title_fontweight\":\"\",\"title_text_color\":\"\",\"title_url\":\"\",\"title_position\":\"after\",\"feature_type\":\"icon\",\"feature_image\":\"\",\"icon_name\":\"fa-gear\",\"icon_size\":\"42\",\"icon_color\":\"\",\"icon_background\":\"\",\"icon_border_color\":\"\",\"icon_border_width\":\"\",\"icon_border_radius\":\"\",\"icon_margin_top\":\"0\",\"icon_margin_bottom\":\"\",\"icon_padding\":\"\",\"text\":\"andoe sirloin pork loine beefb uillen capicola shank swine chuck flank tritip picola kevin filet mignon\",\"alignment\":\"sppb-text-center\",\"class\":\"\"},\"visibility\":1,\"icon\":\"<svg viewBox=\\\"0 0 32 32\\\" xmlns=\\\"http:\\/\\/www.w3.org\\/2000\\/svg\\\"><path opacity=\\\".5\\\" fill-rule=\\\"evenodd\\\" clip-rule=\\\"evenodd\\\" d=\\\"M29 26a1 1 0 01-1 1H4a1 1 0 110-2h24a1 1 0 011 1zM24 31a1 1 0 01-1 1H8a1 1 0 110-2h15a1 1 0 011 1z\\\" fill=\\\"currentColor\\\"\\/><path fill-rule=\\\"evenodd\\\" clip-rule=\\\"evenodd\\\" d=\\\"M16.458 0c.423 0 .81.24.996.62l2.63 5.327 5.882.86a1.111 1.111 0 01.614 1.895l-4.255 4.144 1.005 5.855a1.111 1.111 0 01-1.613 1.171l-5.259-2.765-5.26 2.765a1.111 1.111 0 01-1.611-1.17l1.004-5.856-4.255-4.144a1.111 1.111 0 01.614-1.895l5.882-.86L15.462.62c.187-.379.573-.619.996-.619zm0 3.621l-1.892 3.833a1.111 1.111 0 01-.836.608l-4.232.618 3.062 2.982c.262.255.382.623.32.984l-.723 4.211 3.784-1.99c.324-.17.71-.17 1.034 0l3.784 1.99-.723-4.21a1.11 1.11 0 01.32-.985l3.062-2.982-4.232-.618a1.111 1.111 0 01-.836-.608l-1.892-3.833z\\\" fill=\\\"currentColor\\\"\\/><\\/svg>\"}],\"visibility\":1,\"width\":{\"xxl\":\"25%\",\"xl\":\"25%\",\"lg\":\"25%\",\"md\":\"25%\",\"sm\":\"100%\",\"xs\":\"100%\"}},{\"class_name\":\"col-sm-3\",\"settings\":{\"class\":\"\",\"animationdelay\":400,\"animationduration\":500,\"animation\":\"fadeInDown\",\"padding\":\"\",\"color\":\"\",\"background\":\"\"},\"id\":1510554365,\"addons\":[{\"name\":\"feature\",\"title\":\"Feature Box\",\"id\":1510554366,\"settings\":{\"admin_label\":\"\",\"title\":\"Awesome Support\",\"heading_selector\":\"h3\",\"title_fontsize\":\"\",\"title_fontweight\":\"\",\"title_text_color\":\"\",\"title_url\":\"\",\"title_position\":\"after\",\"feature_type\":\"icon\",\"feature_image\":\"\",\"icon_name\":\"fa-envelope\",\"icon_size\":\"42\",\"icon_color\":\"\",\"icon_background\":\"\",\"icon_border_color\":\"\",\"icon_border_width\":\"\",\"icon_border_radius\":\"\",\"icon_margin_top\":\"0\",\"icon_margin_bottom\":\"\",\"icon_padding\":\"\",\"text\":\"picola sirloin pork loine beefb andoe uillen capicola shank swine chuck flank tritip kevin filet mignon\",\"alignment\":\"sppb-text-center\",\"class\":\"\"},\"visibility\":1,\"icon\":\"<svg viewBox=\\\"0 0 32 32\\\" xmlns=\\\"http:\\/\\/www.w3.org\\/2000\\/svg\\\"><path opacity=\\\".5\\\" fill-rule=\\\"evenodd\\\" clip-rule=\\\"evenodd\\\" d=\\\"M29 26a1 1 0 01-1 1H4a1 1 0 110-2h24a1 1 0 011 1zM24 31a1 1 0 01-1 1H8a1 1 0 110-2h15a1 1 0 011 1z\\\" fill=\\\"currentColor\\\"\\/><path fill-rule=\\\"evenodd\\\" clip-rule=\\\"evenodd\\\" d=\\\"M16.458 0c.423 0 .81.24.996.62l2.63 5.327 5.882.86a1.111 1.111 0 01.614 1.895l-4.255 4.144 1.005 5.855a1.111 1.111 0 01-1.613 1.171l-5.259-2.765-5.26 2.765a1.111 1.111 0 01-1.611-1.17l1.004-5.856-4.255-4.144a1.111 1.111 0 01.614-1.895l5.882-.86L15.462.62c.187-.379.573-.619.996-.619zm0 3.621l-1.892 3.833a1.111 1.111 0 01-.836.608l-4.232.618 3.062 2.982c.262.255.382.623.32.984l-.723 4.211 3.784-1.99c.324-.17.71-.17 1.034 0l3.784 1.99-.723-4.21a1.11 1.11 0 01.32-.985l3.062-2.982-4.232-.618a1.111 1.111 0 01-.836-.608l-1.892-3.833z\\\" fill=\\\"currentColor\\\"\\/><\\/svg>\"}],\"visibility\":1,\"width\":{\"xxl\":\"25%\",\"xl\":\"25%\",\"lg\":\"25%\",\"md\":\"25%\",\"sm\":\"100%\",\"xs\":\"100%\"}}],\"collapse\":\"\",\"title\":\"Row\"},{\"layout\":\"6,6\",\"settings\":{\"fullscreen\":0,\"margin\":{\"xxl\":\"\",\"xl\":\"   \",\"lg\":\"   \",\"md\":\"   \",\"sm\":\"   \",\"xs\":\"   \"},\"padding\":{\"xxl\":\"\",\"xl\":\"100px 0px 100px 0px\",\"lg\":\"100px 0px 100px 0px\",\"md\":\"100px 0px 100px 0px\",\"sm\":\"50px 0px 50px 0px\",\"xs\":\"50px 0px 50px 0px\"},\"class\":\"\",\"id\":\"\",\"background_video_ogv\":\"\",\"background_video_mp4\":\"\",\"background_video\":0,\"background_image\":\"\",\"color\":\"\",\"background_color\":\"#f5f5f5\",\"subtitle_fontsize\":\"\",\"subtitle\":\"\",\"title_margin_bottom\":\"\",\"title_margin_top\":\"\",\"title_text_color\":\"\",\"title_fontsize\":\"\",\"title\":\"\",\"instFormId\":1510554367,\"columns_align_center\":0,\"no_gutter\":0,\"hidden_xs\":0,\"hidden_sm\":0,\"hidden_md\":0,\"fit_columns\":{\"xxl\":true,\"xl\":true,\"lg\":true,\"md\":true,\"sm\":false,\"xs\":false}},\"id\":1510554367,\"visibility\":1,\"columns\":[{\"class_name\":\"col-sm-6\",\"settings\":{\"background\":\"\",\"color\":\"\",\"padding\":\"\",\"animation\":\"fadeInLeft\",\"animationduration\":300,\"animationdelay\":300,\"class\":\"\"},\"id\":1510554368,\"addons\":[{\"name\":\"video\",\"title\":\"Video\",\"id\":1510554369,\"settings\":{\"admin_label\":\"\",\"title\":\"\",\"heading_selector\":\"h3\",\"title_fontsize\":\"\",\"title_fontweight\":\"\",\"title_text_color\":\"\",\"title_margin_top\":\"\",\"title_margin_bottom\":\"\",\"url\":\"http:\\/\\/vimeo.com\\/130884965\",\"class\":\"\"},\"visibility\":1,\"icon\":\"<svg viewBox=\\\"0 0 32 32\\\" xmlns=\\\"http:\\/\\/www.w3.org\\/2000\\/svg\\\"><g opacity=\\\".5\\\" fill-rule=\\\"evenodd\\\" clip-rule=\\\"evenodd\\\" fill=\\\"currentColor\\\"><path d=\\\"M30.1 22.1H1.9c-.5 0-.9.4-.9.9s.4 1 .9 1H8v6.1c0 .5.5.9 1 .9s.9-.4.9-.9V24h5.2v6.1c0 .5.4.9.9.9s.9-.4.9-.9V24h5.2v6.1c0 .5.4.9.9.9s.9-.4.9-.9V24H30c.5 0 .9-.4.9-.9.1-.6-.3-1-.8-1zM1.9 9.9H30c.6 0 1-.4 1-.9s-.4-1-.9-1H24V1.9c0-.5-.5-.9-1-.9s-.9.4-.9.9V8h-5.2V1.9c0-.5-.4-.9-.9-.9s-.9.4-.9.9V8H9.9V1.9c0-.5-.4-.9-.9-.9s-1 .4-1 .9V8H1.9c-.5 0-.9.5-.9 1s.4.9.9.9z\\\"\\/><\\/g><path fill-rule=\\\"evenodd\\\" clip-rule=\\\"evenodd\\\" d=\\\"M2.1 27.6c0 1.2 1 2.2 2.2 2.2h23.2c1.2 0 2.2-1 2.2-2.2V4.4c0-1.2-1-2.2-2.2-2.2H4.4c-1.2 0-2.2 1-2.2 2.2v23.2h-.1zm2.3 4.2c-2.3 0-4.2-1.9-4.2-4.2V4.4C.2 2 2 .2 4.4.2h23.2c2.3 0 4.2 1.9 4.2 4.2v23.2c0 2.3-1.9 4.2-4.2 4.2H4.4z\\\" fill=\\\"currentColor\\\"\\/><path d=\\\"M19.5 15c.6.5.6 1.5 0 1.9l-3.9 2.8c-.7.5-1.7 0-1.7-1V13c0-.9 1-1.5 1.7-1l3.9 3z\\\" fill=\\\"currentColor\\\"\\/><\\/svg>\"}],\"visibility\":1,\"width\":{\"xxl\":\"50%\",\"xl\":\"50%\",\"lg\":\"50%\",\"md\":\"50%\",\"sm\":\"100%\",\"xs\":\"100%\"}},{\"class_name\":\"col-sm-6\",\"settings\":{\"class\":\"\",\"animationdelay\":300,\"animationduration\":300,\"animation\":\"fadeInRight\",\"padding\":\"\",\"color\":\"\",\"background\":\"\"},\"id\":1510554370,\"addons\":[{\"name\":\"text_block\",\"title\":\"Text Block\",\"id\":1510554371,\"settings\":{\"admin_label\":\"\",\"title\":\"Helix3 Overview\",\"heading_selector\":\"h3\",\"title_fontsize\":\"\",\"title_fontweight\":\"\",\"title_text_color\":\"\",\"title_margin_top\":\"\",\"title_margin_bottom\":\"\",\"text\":\"The Helix Framework is one of the best light and feature rich responsive framework for Joomla templating. It is so easy to develop and control of Joomla templates for you and your clients. Helix framework will make your experience of creating website much smoother than ever before. <br \\/><br \\/>Sirloin pork loine beefb andoe uillen capicola shank swine chuck flank tritip picola kevin filet mignon\",\"alignment\":\"sppb-text-left\",\"class\":\"\"},\"visibility\":1,\"icon\":\"<svg viewBox=\\\"0 0 32 32\\\" xmlns=\\\"http:\\/\\/www.w3.org\\/2000\\/svg\\\"><path d=\\\"M23.055 10.419c0-.885-.717-1.602-1.602-1.602H10.547a1.602 1.602 0 000 3.204h3.825v10.118a1.628 1.628 0 103.256 0V12.02h3.825c.885 0 1.602-.718 1.602-1.602z\\\" fill=\\\"currentColor\\\"\\/><path opacity=\\\".5\\\" fill-rule=\\\"evenodd\\\" clip-rule=\\\"evenodd\\\" d=\\\"M5.18 3.42c-.95 0-1.721.758-1.721 1.693V8.5c0 .668-.55 1.21-1.23 1.21A1.22 1.22 0 011 8.5V5.113C1 2.84 2.872 1 5.18 1h2.951c.68 0 1.23.542 1.23 1.21 0 .668-.55 1.21-1.23 1.21h-2.95zM26.82 28.58c.95 0 1.721-.758 1.721-1.693V23.5c0-.668.55-1.21 1.23-1.21.678 0 1.229.542 1.229 1.21v3.387C31 29.16 29.128 31 26.82 31h-2.951a1.22 1.22 0 01-1.23-1.21c0-.668.55-1.21 1.23-1.21h2.95zM26.82 3.42c.95 0 1.721.758 1.721 1.693V8.5c0 .668.55 1.21 1.23 1.21A1.22 1.22 0 0031 8.5V5.113C31 2.84 29.128 1 26.82 1h-2.951c-.68 0-1.23.542-1.23 1.21 0 .668.55 1.21 1.23 1.21h2.95zM5.18 28.58c-.95 0-1.721-.758-1.721-1.693V23.5c0-.668-.55-1.21-1.23-1.21A1.22 1.22 0 001 23.5v3.387C1 29.16 2.872 31 5.18 31h2.951a1.22 1.22 0 001.23-1.21c0-.668-.55-1.21-1.23-1.21h-2.95z\\\" fill=\\\"currentColor\\\"\\/><\\/svg>\"},{\"name\":\"empty_space\",\"title\":\"Empty Space\",\"id\":1510554372,\"settings\":{\"admin_label\":\"\",\"gap\":\"30\",\"hidden_md\":\"0\",\"hidden_sm\":\"0\",\"hidden_xs\":\"0\",\"class\":\"\"},\"visibility\":1,\"icon\":\"<svg viewBox=\\\"0 0 32 32\\\" xmlns=\\\"http:\\/\\/www.w3.org\\/2000\\/svg\\\"><path d=\\\"M18.5 13.6h-4.9c-.3 0-.5-.4-.3-.7l2.5-2.5c.2-.2.4-.2.5 0l2.5 2.5c.2.2 0 .7-.3.7zM13.5 18.3h4.9c.3 0 .5.4.3.7l-2.5 2.5c-.2.2-.4.2-.5 0L13.2 19c-.2-.3 0-.7.3-.7z\\\" fill=\\\"currentColor\\\"\\/><path opacity=\\\".5\\\" fill-rule=\\\"evenodd\\\" clip-rule=\\\"evenodd\\\" d=\\\"M29 22.9H2.7c-.9 0-1.7.8-1.7 1.7v5.7c0 .9.8 1.7 1.7 1.7.9 0 1.7-.8 1.7-1.7v-4h22.9v4c0 .9.8 1.7 1.7 1.7.9 0 1.7-.8 1.7-1.7v-5.7c0-1-.8-1.7-1.7-1.7zM29 0c-.9 0-1.7.8-1.7 1.7v4H4.4v-4C4.4.8 3.7 0 2.7 0S1 .8 1 1.7v5.7c0 .9.8 1.7 1.7 1.7H29c.9 0 1.7-.8 1.7-1.7V1.7C30.7.8 29.9 0 29 0z\\\" fill=\\\"currentColor\\\"\\/><\\/svg>\"},{\"name\":\"button\",\"title\":\"Button\",\"id\":1510554373,\"settings\":{\"admin_label\":\"\",\"text\":\"Documentation\",\"url\":\"http:\\/\\/www.joomshaper.com\\/documentation\\/\",\"size\":\"lg\",\"type\":\"primary\",\"icon\":\"\",\"target\":\"\",\"block\":\"\",\"margin\":\"\",\"class\":\"\"},\"visibility\":1,\"icon\":\"<svg viewBox=\\\"0 0 32 32\\\" xmlns=\\\"http:\\/\\/www.w3.org\\/2000\\/svg\\\"><path fill-rule=\\\"evenodd\\\" clip-rule=\\\"evenodd\\\" d=\\\"M0 8a4 4 0 014-4h24a4 4 0 014 4v9a4 4 0 01-4 4h-.5a1 1 0 110-2h.5a2 2 0 002-2V8a2 2 0 00-2-2H4a2 2 0 00-2 2v9a2 2 0 002 2h9a1 1 0 110 2H4a4 4 0 01-4-4V8z\\\" fill=\\\"currentColor\\\"\\/><path opacity=\\\".5\\\" fill-rule=\\\"evenodd\\\" clip-rule=\\\"evenodd\\\" d=\\\"M16.004 12.669l1.526 9.46c.05.408.508.611.864.408l2.645-1.882 3.612 5.137c.508.661 2.034-.407 1.577-1.068l-3.612-5.188 2.696-1.832c.305-.254.305-.762-.05-.966l-8.393-4.68a.604.604 0 00-.865.611z\\\" fill=\\\"currentColor\\\"\\/><\\/svg>\"}],\"visibility\":1,\"width\":{\"xxl\":\"50%\",\"xl\":\"50%\",\"lg\":\"50%\",\"md\":\"50%\",\"sm\":\"100%\",\"xs\":\"100%\"}}],\"collapse\":\"\",\"title\":\"Row\"},{\"layout\":12,\"settings\":{\"fullscreen\":1,\"margin\":{\"xxl\":\"   \",\"xl\":\"100px 0px 0px \",\"lg\":\"   \",\"md\":\"   \",\"sm\":\"   \",\"xs\":\"40px 0px 0px 0px\"},\"padding\":{\"xxl\":\"   \",\"xl\":\"   \",\"lg\":\"   \",\"md\":\"   \",\"sm\":\"   \",\"xs\":\"   \"},\"class\":\"\",\"id\":\"\",\"background_video_ogv\":\"\",\"background_video_mp4\":\"\",\"background_video\":0,\"background_image\":\"\",\"color\":\"\",\"background_color\":\"\",\"title_position\":\"sppb-text-center\",\"subtitle_fontsize\":\"\",\"subtitle\":\"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip\\n\\n\\n\\n\\n\",\"title_margin_bottom\":\"20\",\"title_margin_top\":\"0\",\"title_text_color\":\"#333333\",\"title_fontsize\":\"36\",\"heading_selector\":\"h2\",\"title\":\"Showcase\",\"fit_columns\":{\"xxl\":true,\"xl\":true,\"lg\":true,\"md\":true,\"sm\":true,\"xs\":true},\"instFormId\":1510554374,\"row_boxshadow\":{\"ho\":null,\"vo\":null,\"blur\":null,\"spread\":null,\"color\":\"\",\"inset\":false,\"enabled\":false},\"background_type\":\"none\"},\"id\":1510554374,\"visibility\":1,\"columns\":[{\"class_name\":\"col-sm-12\",\"settings\":{\"class\":\"\",\"animationdelay\":\"\",\"animationduration\":\"\",\"animation\":\"\",\"padding\":\"\",\"color\":\"\",\"background\":\"\"},\"id\":1510554375,\"addons\":[{\"name\":\"empty_space\",\"title\":\"Empty Space\",\"id\":1510554376,\"settings\":{\"admin_label\":\"\",\"gap\":\"20\",\"hidden_md\":\"0\",\"hidden_sm\":\"0\",\"hidden_xs\":\"0\",\"class\":\"\"},\"visibility\":1,\"icon\":\"<svg viewBox=\\\"0 0 32 32\\\" xmlns=\\\"http:\\/\\/www.w3.org\\/2000\\/svg\\\"><path d=\\\"M18.5 13.6h-4.9c-.3 0-.5-.4-.3-.7l2.5-2.5c.2-.2.4-.2.5 0l2.5 2.5c.2.2 0 .7-.3.7zM13.5 18.3h4.9c.3 0 .5.4.3.7l-2.5 2.5c-.2.2-.4.2-.5 0L13.2 19c-.2-.3 0-.7.3-.7z\\\" fill=\\\"currentColor\\\"\\/><path opacity=\\\".5\\\" fill-rule=\\\"evenodd\\\" clip-rule=\\\"evenodd\\\" d=\\\"M29 22.9H2.7c-.9 0-1.7.8-1.7 1.7v5.7c0 .9.8 1.7 1.7 1.7.9 0 1.7-.8 1.7-1.7v-4h22.9v4c0 .9.8 1.7 1.7 1.7.9 0 1.7-.8 1.7-1.7v-5.7c0-1-.8-1.7-1.7-1.7zM29 0c-.9 0-1.7.8-1.7 1.7v4H4.4v-4C4.4.8 3.7 0 2.7 0S1 .8 1 1.7v5.7c0 .9.8 1.7 1.7 1.7H29c.9 0 1.7-.8 1.7-1.7V1.7C30.7.8 29.9 0 29 0z\\\" fill=\\\"currentColor\\\"\\/><\\/svg>\"},{\"name\":\"module\",\"title\":\"Joomla Module\",\"id\":1510554377,\"settings\":{\"admin_label\":\"\",\"title\":\"\",\"heading_selector\":\"h3\",\"title_fontsize\":\"\",\"title_fontweight\":\"\",\"title_text_color\":\"\",\"title_margin_top\":\"\",\"title_margin_bottom\":\"\",\"module_type\":\"module\",\"id\":\"98\",\"position\":\"\",\"class\":\"\",\"global_boxshadow\":\"\",\"global_overlay_type\":\"overlay_color\"},\"visibility\":1,\"icon\":\"<svg viewBox=\\\"0 0 32 32\\\" xmlns=\\\"http:\\/\\/www.w3.org\\/2000\\/svg\\\"><path d=\\\"M5.005 1C6.821.994 8.391 2.176 8.849 3.923c.065.25.136.315.407.218 1.234-.443 2.449-.289 3.638.212.917.386 1.712.97 2.461 1.62.117.102.13.16.013.275-.846.803-1.686 1.613-2.52 2.429-.135.135-.22.096-.348 0-.375-.27-.789-.482-1.267-.514-1.124-.077-2.255.79-2.565 1.972-.265 1.015.097 1.87.724 2.64.51.623 1.13 1.144 1.7 1.709a402.759 402.759 0 004.115 4.015c.245.238.22.353-.013.572-.808.77-1.596 1.554-2.384 2.344-.155.16-.246.2-.427.013-2.358-2.364-4.742-4.709-7.094-7.085-1.189-1.208-2.01-3.335-.943-5.236.168-.308-.11-.25-.24-.283-1-.244-1.815-.77-2.383-1.625-.885-1.336-.956-2.724-.22-4.13.66-1.285 2.01-2.063 3.502-2.069z\\\" fill=\\\"currentColor\\\"\\/><path opacity=\\\".5\\\" d=\\\"M28.129 10.732c0 1.337-.524 2.493-1.28 3.553-.239.327-.51.63-.762.95-.116.148-.194.135-.323 0a207.68 207.68 0 00-2.352-2.415c-.155-.154-.168-.263-.039-.456.485-.707.672-1.471.24-2.261-.479-.887-1.222-1.465-2.262-1.548-1.085-.084-1.919.462-2.636 1.194-1.693 1.748-3.36 3.514-5.046 5.262-.31.32-.226.347-.581.006-.834-.803-1.66-1.612-2.5-2.409-.156-.148-.175-.238-.007-.398 2.351-2.326 4.677-4.69 7.055-6.99 1.286-1.24 3.36-1.895 5.188-.905.226.122.252.025.304-.167.413-1.632 1.44-2.666 3.095-3.039 2.203-.494 4.432 1.067 4.736 3.283.284 2.081-.912 3.88-2.966 4.445-.226.058-.24.129-.168.328.097.25.155.507.22.764.077.27.09.534.084.803zM11.13 27.936a3.725 3.725 0 01-1.861-.43c-.252-.136-.297-.046-.349.173a3.93 3.93 0 01-3.67 2.98c-1.906.052-3.514-1.04-4.044-2.755-.627-2.03.626-4.195 2.778-4.754.29-.077.317-.148.213-.418-.484-1.297-.245-2.537.394-3.726.375-.694.847-1.31 1.376-1.888.143-.154.233-.16.388-.013.788.79 1.583 1.567 2.371 2.351.09.09.149.154.052.296-.924 1.432-.53 2.723 1.04 3.43 1.163.52 2.203.186 3.108-.572.788-.662 1.499-1.407 2.235-2.12 1.183-1.15 2.365-2.3 3.54-3.456.169-.167.272-.199.46-.013.82.842 1.66 1.67 2.5 2.5.142.14.162.23 0 .378-2.41 2.236-4.8 4.49-7.23 6.713a4.933 4.933 0 01-3.301 1.324z\\\" fill=\\\"currentColor\\\"\\/><path d=\\\"M27.01 31a3.803 3.803 0 01-3.682-2.884c-.084-.322-.18-.328-.465-.238-1.39.417-2.694.103-3.935-.559-.691-.373-1.305-.86-1.893-1.381-.148-.135-.18-.219-.02-.373.789-.77 1.57-1.548 2.346-2.338.162-.167.252-.135.414-.013.62.475 1.292.765 2.093.501.86-.282 1.667-1.387 1.712-2.3.045-1.021-.4-1.843-1.085-2.543-1.622-1.664-3.263-3.315-4.891-4.966-.22-.219-.575-.437-.595-.681-.02-.25.381-.443.601-.655.64-.63 1.292-1.253 1.932-1.89.149-.153.233-.14.375.007 2.274 2.326 4.574 4.638 6.829 6.977 1.221 1.265 1.893 3.417.93 5.203-.122.225-.013.264.168.308 1.628.424 2.598 1.478 2.946 3.09.524 2.429-1.35 4.754-3.78 4.735z\\\" fill=\\\"currentColor\\\"\\/><\\/svg>\"}],\"visibility\":1,\"width\":{\"xxl\":\"100%\",\"xl\":\"100%\",\"lg\":\"100%\",\"md\":\"100%\",\"sm\":\"100%\",\"xs\":\"100%\"}}],\"collapse\":\"\",\"title\":\"Row\"},{\"id\":\"I2ZzxeJb-d1KAqFJJEOFg\",\"visibility\":true,\"collapse\":false,\"settings\":{\"fit_columns\":{\"xxl\":true,\"xl\":true,\"lg\":true,\"md\":true,\"sm\":false,\"xs\":false},\"background_type\":\"color\",\"background_gradient\":{\"color\":\"#00c6fb\",\"color2\":\"#005bea\",\"deg\":\"45\",\"type\":\"linear\"},\"background_image\":{\"src\":\"\"},\"background_parallax\":\"0\",\"background_repeat\":\"no-repeat\",\"background_size\":\"cover\",\"background_size_custom\":{\"unit\":\"px\"},\"background_attachment\":\"fixed\",\"background_position\":\"0 0\",\"background_position_custom_x\":{\"unit\":\"px\"},\"background_position_custom_y\":{\"unit\":\"px\"},\"external_background_video\":0,\"background_video_ogv\":{\"src\":\"\"},\"video_loop\":1,\"overlay_type\":\"overlay_none\",\"gradient_overlay\":{\"color\":\"rgba(127, 0, 255, 0.8)\",\"color2\":\"rgba(225, 0, 255, 0.7)\",\"deg\":\"45\",\"type\":\"linear\"},\"pattern_overlay\":\"\",\"overlay_pattern_color\":\"\",\"blend_mode\":\"normal\",\"columns_align_center\":0,\"columns_content_alignment\":\"center\",\"fullscreen\":0,\"no_gutter\":0,\"row_width\":{\"unit\":\"px\"},\"row_max_width\":{\"unit\":\"px\"},\"row_min_width\":{\"unit\":\"px\"},\"padding\":{\"xxl\":\"100px 0px 100px 0px\",\"xl\":\"100px 0px 100px 0px\",\"lg\":\"100px 0px 100px 0px\",\"md\":\"100px 0px 100px 0px\",\"sm\":\"100px 0px 100px 0px\",\"xs\":\"60px 0px 40px 0px\"},\"margin\":{\"xxl\":\"0px 0px 0px 0px\",\"xl\":\"0px 0px 0px 0px\",\"lg\":\"0px 0px 0px 0px\",\"md\":\"0px 0px 0px 0px\",\"sm\":\"0px 0px 0px 0px\",\"xs\":\"0px 0px 0px 0px\"},\"row_border\":0,\"row_border_style\":\"solid\",\"row_boxshadow\":{\"ho\":0,\"vo\":0,\"blur\":0,\"spread\":0,\"color\":\"#FFFFFF\",\"inset\":false,\"enabled\":false},\"show_top_shape\":\"\",\"shape_name\":\"clouds-flat\",\"shape_color\":\"#e5e5e5\",\"shape_width\":{\"xxl\":\"\",\"xl\":100,\"lg\":100,\"md\":100,\"sm\":100,\"xs\":100},\"shape_height\":\"\",\"shape_flip\":false,\"shape_invert\":false,\"shape_to_front\":false,\"show_bottom_shape\":\"\",\"bottom_shape_name\":\"clouds-opacity\",\"bottom_shape_color\":\"#e5e5e5\",\"bottom_shape_width\":{\"xl\":100},\"bottom_shape_height\":\"\",\"bottom_shape_flip\":false,\"bottom_shape_invert\":false,\"bottom_shape_to_front\":false,\"heading_selector\":\"h3\",\"title_fontsize\":\"\",\"title_fontweight\":\"\",\"title_position\":\"center\",\"admin_label\":\"\",\"hidden_xs\":\"\",\"hidden_sm\":\"\",\"hidden_md\":\"\",\"enable_animation\":\"1\",\"animationduration\":\"300\",\"animationdelay\":\"0\",\"instFormId\":\"I2ZzxeJb-d1KAqFJJEOFg\",\"background_color\":\"#f5f5f5\"},\"layout\":\"12\",\"columns\":[{\"id\":\"F3JkQmuHtCkek7Gi2uqKC\",\"class_name\":\"row-column\",\"visibility\":true,\"settings\":{\"background_type\":\"none\",\"background_gradient\":{\"color\":\"#00c6fb\",\"color2\":\"#005bea\",\"deg\":\"45\",\"type\":\"linear\"},\"background_image\":{\"src\":\"\"},\"background_repeat\":\"no-repeat\",\"background_size\":\"cover\",\"background_size_custom\":{\"unit\":\"px\"},\"background_attachment\":\"scroll\",\"background_position\":\"0 0\",\"background_position_custom_x\":{\"unit\":\"px\"},\"background_position_custom_y\":{\"unit\":\"px\"},\"overlay_type\":\"overlay_color\",\"gradient_overlay\":{\"color\":\"rgba(127, 0, 255, 0.8)\",\"color2\":\"rgba(225, 0, 255, 0.7)\",\"deg\":\"45\",\"type\":\"linear\"},\"pattern_overlay\":{\"src\":\"\"},\"overlay_pattern_color\":\"\",\"blend_mode\":\"normal\",\"use_border\":0,\"border_width\":\"\",\"boxshadow\":\"0 0 0 0 #FFFFFF\",\"items_align_center\":0,\"items_content_alignment\":\"center\",\"tablet_order\":\"\",\"mobile_order\":\"\",\"hidden_xs\":\"\",\"hidden_sm\":\"\",\"hidden_md\":\"\",\"enable_animation\":\"1\",\"animationduration\":\"300\",\"animationdelay\":\"0\"},\"addons\":[{\"id\":\"EJmfyqh6lJgxoUq0ElO6h\",\"name\":\"helixtestimonialpro\",\"visibility\":true,\"settings\":{\"sp_testimonialpro_item\":[{\"title\":\"Nanchel Culy\",\"avatar\":{\"src\":\"images\\/testimonial.png\"},\"message\":\"Helix is a Awesome Framework for Joomla. It\\u2019s able me to easily customize the Joomla Templates Thanks to Helix Team. Really Appreciate it.\"},{\"title\":\"Jony Daku\",\"avatar\":{\"src\":\"images\\/testimonial.png\"},\"message\":\"Helix is a Awesome Framework for Joomla. It\\u2019s able me to easily customize the Joomla Templates Thanks to Helix Team. Really Appreciate it.\"},{\"title\":\"Michel Cattar\",\"avatar\":{\"src\":\"images\\/testimonial.png\"},\"message\":\"Helix is a Awesome Framework for Joomla. It\\u2019s able me to easily customize the Joomla Templates Thanks to Helix Team. Really Appreciate it.\"}],\"global_padding\":{\"xxl\":\"   \",\"xl\":\"   \",\"lg\":\"   \",\"md\":\"   \",\"sm\":\"   \",\"xs\":\"   \"},\"global_margin\":{\"xxl\":\"   \",\"xl\":\"   \",\"lg\":\"   \",\"md\":\"   \",\"sm\":\"   \",\"xs\":\"   \"},\"global_background_type\":\"none\",\"global_background_gradient\":{\"color\":\"#00c6fb\",\"color2\":\"#005bea\",\"deg\":\"45\",\"type\":\"linear\"},\"global_background_image\":{\"src\":\"\"},\"global_background_repeat\":\"no-repeat\",\"global_background_size\":\"cover\",\"global_background_attachment\":\"inherit\",\"global_background_position\":\"50% 50%\",\"global_use_overlay\":0,\"global_overlay_type\":\"overlay_none\",\"global_gradient_overlay\":{\"color\":\"rgba(127, 0, 255, 0.8)\",\"color2\":\"rgba(225, 0, 255, 0.7)\",\"deg\":\"45\",\"type\":\"linear\"},\"global_pattern_overlay\":{\"src\":\"\"},\"global_overlay_pattern_color\":\"\",\"blend_mode\":\"normal\",\"global_user_border\":0,\"global_border_width\":{\"xxl\":\"\",\"xl\":\"\",\"lg\":\"\",\"md\":\"\",\"sm\":\"\",\"xs\":\"\"},\"global_border_radius\":{\"xxl\":\"\",\"xl\":\"\",\"lg\":\"\",\"md\":\"\",\"sm\":\"\",\"xs\":\"\"},\"global_boxshadow\":{\"ho\":0,\"vo\":0,\"blur\":0,\"spread\":0,\"color\":\"#FFFFFF\",\"inset\":false,\"enabled\":false},\"global_use_animation\":0,\"global_animationduration\":\"300\",\"global_animationdelay\":\"0\",\"class\":\"\",\"global_custom_css\":\"\",\"global_custom_position\":0,\"global_seclect_position\":\"relative\",\"global_addon_position_left\":{\"unit\":\"px\"},\"global_addon_position_top\":{\"unit\":\"px\"},\"use_global_width\":\"0\",\"hidden_md\":\"0\",\"hidden_sm\":\"0\",\"hidden_xs\":\"0\",\"acl\":\"\",\"admin_label\":\"\",\"while_scroll_view\":[{\"enable_while_scroll_view\":0,\"scrolling_options\":\"fullpage\",\"on_scroll_actions\":[{\"id\":\"b3fdc1c1e6bfde5942ea\",\"index\":0,\"keyframe\":0,\"name\":\"move\",\"property\":{\"x\":\"0\",\"y\":\"-100\",\"z\":\"0\"},\"range\":{\"max\":500,\"min\":-500,\"stop\":1},\"single\":true,\"title\":\"Move\"},{\"id\":\"936e0225e6dc8edfba7d\",\"index\":1,\"keyframe\":100,\"name\":\"move\",\"property\":{\"x\":0,\"y\":0,\"z\":0},\"range\":{\"max\":500,\"min\":-500,\"stop\":1},\"single\":true,\"title\":\"Move\"}],\"transition_origin_x\":\"center\",\"transition_origin_y\":\"center\",\"enable_tablet\":0,\"enable_mobile\":0}],\"mouse_movement\":[{\"enable_tilt_effect\":0,\"mouse_tilt_direction\":\"direct\",\"mouse_tilt_speed\":\"1\",\"mouse_tilt_max\":\"15\",\"enable_tablet\":0,\"enable_mobile\":0}],\"autoplay\":1,\"interval\":5,\"speed\":600,\"controls\":false,\"arrow_controls\":true,\"arrow_icon\":\"bottom-left\",\"arrow_margin\":{\"xxl\":\"5px 5px 0px 5px\",\"xl\":\"5px 5px 0px 5px\",\"lg\":\"5px 5px 0px 5px\",\"md\":\"5px 5px 0px 5px\",\"sm\":\"5px 5px 0px 5px\",\"xs\":\"5px 5px 0px 5px\"},\"tab_arrows\":\"normal\",\"arrow_color\":\"\",\"arrow_border_color\":\"\",\"avatar_width\":{\"xxl\":\"76\",\"xl\":\"76\",\"lg\":\"76\",\"md\":\"76\",\"sm\":\"76\",\"xs\":\"76\"},\"avatar_shape\":\"sppb-avatar-circle\",\"avatar_on_top\":1,\"show_quote\":false,\"icon_size\":{\"xxl\":48,\"xl\":48,\"lg\":48,\"md\":48,\"sm\":48,\"xs\":48},\"icon_color\":\"#EDEEF2\",\"content_alignment\":{\"xxl\":\"center\",\"xl\":\"center\",\"lg\":\"center\",\"md\":\"center\",\"sm\":\"center\",\"xs\":\"center\"},\"instFormId\":\"EJmfyqh6lJgxoUq0ElO6h\",\"name_typography\":{\"font\":\"\",\"weight\":700,\"uppercase\":false,\"underline\":false,\"italic\":false,\"size\":{\"md\":{\"value\":\"\",\"unit\":\"px\"},\"sm\":{\"value\":\"\",\"unit\":\"px\"},\"xs\":{\"value\":\"\",\"unit\":\"px\"},\"lg\":{\"value\":\"\",\"unit\":\"px\"},\"xl\":{\"value\":\"14\",\"unit\":\"px\"},\"xxl\":{\"value\":\"\",\"unit\":\"px\"}},\"line_height\":{\"xxl\":{\"value\":\"\",\"unit\":\"px\"},\"xl\":{\"value\":\"24\",\"unit\":\"px\"},\"lg\":{\"value\":\"\",\"unit\":\"px\"},\"md\":{\"value\":\"\",\"unit\":\"px\"},\"sm\":{\"value\":\"\",\"unit\":\"px\"},\"xs\":{\"value\":\"\",\"unit\":\"px\"}},\"letter_spacing\":{\"md\":{\"value\":\"\",\"unit\":\"px\"},\"sm\":{\"value\":\"\",\"unit\":\"px\"},\"xs\":{\"value\":\"\",\"unit\":\"px\"},\"lg\":{\"value\":\"\",\"unit\":\"px\"},\"xl\":{\"value\":\"\",\"unit\":\"px\"},\"xxl\":{\"value\":\"\",\"unit\":\"px\"}}},\"content_typography\":{\"font\":\"\",\"weight\":\"\",\"uppercase\":false,\"underline\":false,\"italic\":false,\"size\":{\"md\":{\"value\":\"\",\"unit\":\"px\"},\"sm\":{\"value\":\"\",\"unit\":\"px\"},\"xs\":{\"value\":\"\",\"unit\":\"px\"},\"lg\":{\"value\":\"\",\"unit\":\"px\"},\"xl\":{\"value\":\"18\",\"unit\":\"px\"},\"xxl\":{\"value\":\"\",\"unit\":\"px\"}},\"line_height\":{\"xxl\":{\"value\":\"\",\"unit\":\"px\"},\"xl\":{\"value\":\"26\",\"unit\":\"px\"},\"lg\":{\"value\":\"\",\"unit\":\"px\"},\"md\":{\"value\":\"\",\"unit\":\"px\"},\"sm\":{\"value\":\"\",\"unit\":\"px\"},\"xs\":{\"value\":\"\",\"unit\":\"px\"}},\"letter_spacing\":{\"md\":{\"value\":\"\",\"unit\":\"px\"},\"sm\":{\"value\":\"\",\"unit\":\"px\"},\"xs\":{\"value\":\"\",\"unit\":\"px\"},\"lg\":{\"value\":\"\",\"unit\":\"px\"},\"xl\":{\"value\":\"\",\"unit\":\"px\"},\"xxl\":{\"value\":\"\",\"unit\":\"px\"}}},\"arrow_height\":\"28\",\"arrow_width\":\"28\",\"arrow_font_size\":\"14\",\"arrow_border_width\":\"\",\"row_boxshadow\":{\"ho\":null,\"vo\":null,\"blur\":null,\"spread\":null,\"color\":\"\",\"inset\":false,\"enabled\":false},\"background_type\":\"none\"},\"icon\":\"<svg viewBox=\\\"0 0 32 32\\\" xmlns=\\\"http:\\/\\/www.w3.org\\/2000\\/svg\\\"><path d=\\\"M12 3.329c0 .507.412.92.92.92h1.039v.394c0 .704-.485 1.3-1.144 1.464-.197.049-.364.21-.364.412V7.65c0 .203.165.37.367.348a3.384 3.384 0 003.007-3.355V.92a.92.92 0 00-.92-.919H12.92A.92.92 0 0012 .92v2.409zM16.8 3.329c0 .507.412.92.92.92h1.039v.394c0 .704-.485 1.3-1.144 1.464-.197.049-.364.21-.364.412V7.65c0 .203.165.37.367.348a3.384 3.384 0 003.007-3.355V.92a.92.92 0 00-.92-.919H17.72a.92.92 0 00-.92.92v2.409z\\\" fill=\\\"currentColor\\\"\\/><path opacity=\\\".5\\\" fill-rule=\\\"evenodd\\\" clip-rule=\\\"evenodd\\\" d=\\\"M2 13c0-.552.464-1 1.037-1h25.926c.573 0 1.037.448 1.037 1s-.464 1-1.037 1H3.037C2.464 14 2 13.552 2 13zM2 17c0-.552.464-1 1.037-1h25.926c.573 0 1.037.448 1.037 1s-.464 1-1.037 1H3.037C2.464 18 2 17.552 2 17zM10 21a1 1 0 011-1h10a1 1 0 110 2H11a1 1 0 01-1-1z\\\" fill=\\\"currentColor\\\"\\/><circle opacity=\\\".5\\\" cx=\\\"10.5\\\" cy=\\\"30.5\\\" r=\\\"1.5\\\" fill=\\\"currentColor\\\"\\/><circle opacity=\\\".5\\\" cx=\\\"22.5\\\" cy=\\\"30.5\\\" r=\\\"1.5\\\" fill=\\\"currentColor\\\"\\/><circle cx=\\\"16.5\\\" cy=\\\"30.5\\\" r=\\\"1.5\\\" fill=\\\"currentColor\\\"\\/><\\/svg>\",\"title\":\"COM_SPPAGEBUILDER_ADDON_HELIX_TESTIMONIAL_PRO\",\"parent\":false}],\"width\":{\"xxl\":\"100%\",\"xl\":\"100%\",\"lg\":\"100%\",\"md\":\"100%\",\"sm\":\"100%\",\"xs\":\"100%\"}}],\"parent\":false},{\"layout\":\"6,6\",\"settings\":{\"fullscreen\":0,\"margin\":{\"xxl\":\"\",\"xl\":\"   \",\"lg\":\"   \",\"md\":\"   \",\"sm\":\"   \",\"xs\":\"   \"},\"padding\":{\"xxl\":\"\",\"xl\":\"100px 0px 100px 0px\",\"lg\":\"100px 0px 100px 0px\",\"md\":\"100px 0px 100px 0px\",\"sm\":\"50px 0px 50px 0px\",\"xs\":\"50px 0px 50px 0px\"},\"class\":\"\",\"id\":\"\",\"background_video_ogv\":\"\",\"background_video_mp4\":\"\",\"background_video\":0,\"background_image\":\"\",\"color\":\"\",\"background_color\":\"\",\"subtitle_fontsize\":\"\",\"subtitle\":\"\",\"title_margin_bottom\":\"\",\"title_margin_top\":\"\",\"title_text_color\":\"\",\"title_fontsize\":\"\",\"title\":\"\",\"instFormId\":1510554381,\"hidden_xs\":0,\"hidden_sm\":0,\"hidden_md\":0,\"fit_columns\":{\"xxl\":true,\"xl\":true,\"lg\":true,\"md\":true,\"sm\":false,\"xs\":false}},\"id\":1510554381,\"visibility\":1,\"columns\":[{\"class_name\":\"col-sm-6\",\"settings\":{\"background\":\"\",\"color\":\"\",\"padding\":\"\",\"animation\":\"fadeInLeft\",\"animationduration\":500,\"animationdelay\":300,\"class\":\"\"},\"id\":1510554382,\"addons\":[{\"name\":\"text_block\",\"title\":\"Text Block\",\"id\":1510554383,\"settings\":{\"admin_label\":\"\",\"title\":\"Highly Compatible\",\"heading_selector\":\"h3\",\"title_fontsize\":\"\",\"title_fontweight\":\"\",\"title_text_color\":\"\",\"title_margin_top\":\"\",\"title_margin_bottom\":\"\",\"text\":\"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. <br \\/><br \\/>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident\",\"alignment\":\"sppb-text-left\",\"class\":\"\"},\"visibility\":1,\"icon\":\"<svg viewBox=\\\"0 0 32 32\\\" xmlns=\\\"http:\\/\\/www.w3.org\\/2000\\/svg\\\"><path d=\\\"M23.055 10.419c0-.885-.717-1.602-1.602-1.602H10.547a1.602 1.602 0 000 3.204h3.825v10.118a1.628 1.628 0 103.256 0V12.02h3.825c.885 0 1.602-.718 1.602-1.602z\\\" fill=\\\"currentColor\\\"\\/><path opacity=\\\".5\\\" fill-rule=\\\"evenodd\\\" clip-rule=\\\"evenodd\\\" d=\\\"M5.18 3.42c-.95 0-1.721.758-1.721 1.693V8.5c0 .668-.55 1.21-1.23 1.21A1.22 1.22 0 011 8.5V5.113C1 2.84 2.872 1 5.18 1h2.951c.68 0 1.23.542 1.23 1.21 0 .668-.55 1.21-1.23 1.21h-2.95zM26.82 28.58c.95 0 1.721-.758 1.721-1.693V23.5c0-.668.55-1.21 1.23-1.21.678 0 1.229.542 1.229 1.21v3.387C31 29.16 29.128 31 26.82 31h-2.951a1.22 1.22 0 01-1.23-1.21c0-.668.55-1.21 1.23-1.21h2.95zM26.82 3.42c.95 0 1.721.758 1.721 1.693V8.5c0 .668.55 1.21 1.23 1.21A1.22 1.22 0 0031 8.5V5.113C31 2.84 29.128 1 26.82 1h-2.951c-.68 0-1.23.542-1.23 1.21 0 .668.55 1.21 1.23 1.21h2.95zM5.18 28.58c-.95 0-1.721-.758-1.721-1.693V23.5c0-.668-.55-1.21-1.23-1.21A1.22 1.22 0 001 23.5v3.387C1 29.16 2.872 31 5.18 31h2.951a1.22 1.22 0 001.23-1.21c0-.668-.55-1.21-1.23-1.21h-2.95z\\\" fill=\\\"currentColor\\\"\\/><\\/svg>\"}],\"visibility\":1,\"width\":{\"xxl\":\"50%\",\"xl\":\"50%\",\"lg\":\"50%\",\"md\":\"50%\",\"sm\":\"100%\",\"xs\":\"100%\"}},{\"class_name\":\"col-sm-6 active-column-parent\",\"settings\":{\"class\":\"\",\"animationdelay\":300,\"animationduration\":500,\"animation\":\"fadeInRight\",\"padding\":\"\",\"color\":\"\",\"background\":\"\"},\"id\":1510554384,\"addons\":[{\"name\":\"empty_space\",\"title\":\"Empty Space\",\"id\":1510554385,\"settings\":{\"admin_label\":\"\",\"gap\":\"55\",\"hidden_md\":\"0\",\"hidden_sm\":\"0\",\"hidden_xs\":\"0\",\"class\":\"\"},\"visibility\":1,\"icon\":\"<svg viewBox=\\\"0 0 32 32\\\" xmlns=\\\"http:\\/\\/www.w3.org\\/2000\\/svg\\\"><path d=\\\"M18.5 13.6h-4.9c-.3 0-.5-.4-.3-.7l2.5-2.5c.2-.2.4-.2.5 0l2.5 2.5c.2.2 0 .7-.3.7zM13.5 18.3h4.9c.3 0 .5.4.3.7l-2.5 2.5c-.2.2-.4.2-.5 0L13.2 19c-.2-.3 0-.7.3-.7z\\\" fill=\\\"currentColor\\\"\\/><path opacity=\\\".5\\\" fill-rule=\\\"evenodd\\\" clip-rule=\\\"evenodd\\\" d=\\\"M29 22.9H2.7c-.9 0-1.7.8-1.7 1.7v5.7c0 .9.8 1.7 1.7 1.7.9 0 1.7-.8 1.7-1.7v-4h22.9v4c0 .9.8 1.7 1.7 1.7.9 0 1.7-.8 1.7-1.7v-5.7c0-1-.8-1.7-1.7-1.7zM29 0c-.9 0-1.7.8-1.7 1.7v4H4.4v-4C4.4.8 3.7 0 2.7 0S1 .8 1 1.7v5.7c0 .9.8 1.7 1.7 1.7H29c.9 0 1.7-.8 1.7-1.7V1.7C30.7.8 29.9 0 29 0z\\\" fill=\\\"currentColor\\\"\\/><\\/svg>\"},{\"name\":\"image\",\"title\":\"Image\",\"id\":1510554386,\"settings\":{\"admin_label\":\"\",\"title\":\"\",\"heading_selector\":\"h3\",\"title_fontsize\":\"\",\"title_fontweight\":\"\",\"title_text_color\":\"\",\"title_margin_top\":\"\",\"title_margin_bottom\":\"\",\"image\":\"images\\/compatible.png\",\"alt_text\":\"\",\"position\":\"sppb-text-left\",\"link\":\"\",\"target\":\"\",\"class\":\"\"},\"visibility\":1,\"icon\":\"<svg viewBox=\\\"0 0 32 32\\\" xmlns=\\\"http:\\/\\/www.w3.org\\/2000\\/svg\\\"><path opacity=\\\".5\\\" fill-rule=\\\"evenodd\\\" clip-rule=\\\"evenodd\\\" d=\\\"M31.288 17.393l-9.718 5.9a5 5 0 01-5.8-.435l-3.622-3.024a3 3 0 00-3.583-.197l-6.781 4.504-1.106-1.666 6.78-4.504a5 5 0 015.971.327l3.623 3.025a3 3 0 003.48.261l9.718-5.9 1.038 1.71z\\\" fill=\\\"currentColor\\\"\\/><path opacity=\\\".5\\\" fill-rule=\\\"evenodd\\\" clip-rule=\\\"evenodd\\\" d=\\\"M19.077 10.154a2.077 2.077 0 100 4.154 2.077 2.077 0 000-4.154zM15 12.23a4.077 4.077 0 118.154 0 4.077 4.077 0 01-8.154 0z\\\" fill=\\\"currentColor\\\"\\/><path fill-rule=\\\"evenodd\\\" clip-rule=\\\"evenodd\\\" d=\\\"M29 4H3a1 1 0 00-1 1v22.308a1 1 0 001 1h26a1 1 0 001-1V5a1 1 0 00-1-1zM3 2a3 3 0 00-3 3v22.308a3 3 0 003 3h26a3 3 0 003-3V5a3 3 0 00-3-3H3z\\\" fill=\\\"currentColor\\\"\\/><\\/svg>\"}],\"visibility\":1,\"width\":{\"xxl\":\"50%\",\"xl\":\"50%\",\"lg\":\"50%\",\"md\":\"50%\",\"sm\":\"100%\",\"xs\":\"100%\"}}],\"collapse\":\"\",\"title\":\"Row\"},{\"id\":\"dmz-ZJ1xlsrxb7xkYzzt6\",\"visibility\":true,\"collapse\":false,\"settings\":{\"fit_columns\":{\"xxl\":true,\"xl\":true,\"lg\":true,\"md\":true,\"sm\":false,\"xs\":false},\"background_type\":\"image\",\"background_gradient\":{\"color\":\"#00c6fb\",\"color2\":\"#005bea\",\"deg\":\"45\",\"type\":\"linear\"},\"background_image\":{\"src\":\"images\\/cta-bg.jpg\"},\"background_parallax\":\"0\",\"background_repeat\":\"no-repeat\",\"background_size\":\"cover\",\"background_size_custom\":{\"unit\":\"px\"},\"background_attachment\":\"fixed\",\"background_position\":\"50% 50%\",\"background_position_custom_x\":{\"unit\":\"px\"},\"background_position_custom_y\":{\"unit\":\"px\"},\"external_background_video\":0,\"background_video_ogv\":{\"src\":\"\"},\"video_loop\":1,\"overlay_type\":\"overlay_none\",\"gradient_overlay\":{\"color\":\"rgba(127, 0, 255, 0.8)\",\"color2\":\"rgba(225, 0, 255, 0.7)\",\"deg\":\"45\",\"type\":\"linear\"},\"pattern_overlay\":\"\",\"overlay_pattern_color\":\"\",\"blend_mode\":\"normal\",\"columns_align_center\":0,\"columns_content_alignment\":\"center\",\"fullscreen\":0,\"no_gutter\":0,\"row_width\":{\"unit\":\"px\"},\"row_max_width\":{\"unit\":\"px\"},\"row_min_width\":{\"unit\":\"px\"},\"padding\":{\"xxl\":\"100px 0px 100px 0px\",\"xl\":\"100px 0px 100px 0px\",\"lg\":\"100px 0px 100px 0px\",\"md\":\"100px 0px 100px 0px\",\"sm\":\"100px 0px 100px 0px\",\"xs\":\"100px 0px 100px 0px\"},\"margin\":{\"xxl\":\"0px 0px 0px 0px\",\"xl\":\"0px 0px 0px 0px\",\"lg\":\"0px 0px 0px 0px\",\"md\":\"0px 0px 0px 0px\",\"sm\":\"0px 0px 0px 0px\",\"xs\":\"0px 0px 0px 0px\"},\"row_border\":0,\"row_border_style\":\"solid\",\"row_boxshadow\":{\"ho\":0,\"vo\":0,\"blur\":0,\"spread\":0,\"color\":\"#FFFFFF\",\"inset\":false,\"enabled\":false},\"show_top_shape\":\"\",\"shape_name\":\"clouds-flat\",\"shape_color\":\"#e5e5e5\",\"shape_width\":{\"xxl\":\"\",\"xl\":100,\"lg\":100,\"md\":100,\"sm\":100,\"xs\":100},\"shape_height\":\"\",\"shape_flip\":false,\"shape_invert\":false,\"shape_to_front\":false,\"show_bottom_shape\":\"\",\"bottom_shape_name\":\"clouds-opacity\",\"bottom_shape_color\":\"#e5e5e5\",\"bottom_shape_width\":{\"xl\":100},\"bottom_shape_height\":\"\",\"bottom_shape_flip\":false,\"bottom_shape_invert\":false,\"bottom_shape_to_front\":false,\"heading_selector\":\"h3\",\"title_fontsize\":\"\",\"title_fontweight\":\"\",\"title_position\":\"center\",\"admin_label\":\"\",\"hidden_xs\":\"\",\"hidden_sm\":\"\",\"hidden_md\":\"\",\"enable_animation\":\"1\",\"animationduration\":\"300\",\"animationdelay\":\"0\",\"instFormId\":1668400114365,\"global_boxshadow\":{\"ho\":null,\"vo\":null,\"blur\":null,\"spread\":null,\"color\":\"\",\"inset\":false,\"enabled\":false},\"global_background_type\":\"none\"},\"layout\":\"12\",\"columns\":[{\"id\":\"IyGk88zdpa9c4TVaiA6KV\",\"class_name\":\"row-column\",\"visibility\":true,\"settings\":{\"background_type\":\"none\",\"background_gradient\":{\"color\":\"#00c6fb\",\"color2\":\"#005bea\",\"deg\":\"45\",\"type\":\"linear\"},\"background_image\":{\"src\":\"\"},\"background_repeat\":\"no-repeat\",\"background_size\":\"cover\",\"background_size_custom\":{\"unit\":\"px\"},\"background_attachment\":\"scroll\",\"background_position\":\"0 0\",\"background_position_custom_x\":{\"unit\":\"px\"},\"background_position_custom_y\":{\"unit\":\"px\"},\"overlay_type\":\"overlay_color\",\"gradient_overlay\":{\"color\":\"rgba(127, 0, 255, 0.8)\",\"color2\":\"rgba(225, 0, 255, 0.7)\",\"deg\":\"45\",\"type\":\"linear\"},\"pattern_overlay\":{\"src\":\"\"},\"overlay_pattern_color\":\"\",\"blend_mode\":\"normal\",\"use_border\":0,\"border_width\":\"\",\"boxshadow\":\"0 0 0 0 #FFFFFF\",\"items_align_center\":0,\"items_content_alignment\":\"center\",\"tablet_order\":\"\",\"mobile_order\":\"\",\"hidden_xs\":\"\",\"hidden_sm\":\"\",\"hidden_md\":\"\",\"enable_animation\":\"1\",\"animationduration\":\"300\",\"animationdelay\":\"0\"},\"addons\":[{\"id\":\"FL18gbvbVktzK7XfkVOGs\",\"name\":\"feature\",\"visibility\":true,\"settings\":{\"icon_boxshadow\":\"0 0 0 0 #ffffff\",\"addon_hover_boxshadow\":\"0 0 0 0 #ffffff\",\"global_padding\":\"\",\"global_margin\":\"\",\"global_background_type\":\"none\",\"global_background_gradient\":{\"color\":\"#00c6fb\",\"color2\":\"#005bea\",\"deg\":\"45\",\"type\":\"linear\"},\"global_background_image\":{\"src\":\"\"},\"global_background_repeat\":\"no-repeat\",\"global_background_size\":\"cover\",\"global_background_attachment\":\"inherit\",\"global_background_position\":\"50% 50%\",\"global_use_overlay\":0,\"global_overlay_type\":\"overlay_none\",\"global_gradient_overlay\":{\"color\":\"rgba(127, 0, 255, 0.8)\",\"color2\":\"rgba(225, 0, 255, 0.7)\",\"deg\":\"45\",\"type\":\"linear\"},\"global_pattern_overlay\":{\"src\":\"\"},\"global_overlay_pattern_color\":\"\",\"blend_mode\":\"normal\",\"global_user_border\":0,\"global_border_width\":{\"xxl\":\"\",\"xl\":\"\",\"lg\":\"\",\"md\":\"\",\"sm\":\"\",\"xs\":\"\"},\"global_border_radius\":{\"xxl\":\"\",\"xl\":\"\",\"lg\":\"\",\"md\":\"\",\"sm\":\"\",\"xs\":\"\"},\"global_boxshadow\":\"0 0 0 0 #FFFFFF\",\"global_use_animation\":0,\"global_animationduration\":\"300\",\"global_animationdelay\":\"0\",\"class\":\"\",\"global_custom_css\":\"\",\"global_custom_position\":0,\"global_seclect_position\":\"relative\",\"global_addon_position_left\":{\"unit\":\"px\"},\"global_addon_position_top\":{\"unit\":\"px\"},\"use_global_width\":\"0\",\"hidden_md\":\"0\",\"hidden_sm\":\"0\",\"hidden_xs\":\"0\",\"acl\":\"\",\"admin_label\":\"\",\"while_scroll_view\":[{\"enable_while_scroll_view\":0,\"scrolling_options\":\"fullpage\",\"on_scroll_actions\":[{\"id\":\"b3fdc1c1e6bfde5942ea\",\"index\":0,\"keyframe\":0,\"name\":\"move\",\"property\":{\"x\":\"0\",\"y\":\"-100\",\"z\":\"0\"},\"range\":{\"max\":500,\"min\":-500,\"stop\":1},\"single\":true,\"title\":\"Move\"},{\"id\":\"936e0225e6dc8edfba7d\",\"index\":1,\"keyframe\":100,\"name\":\"move\",\"property\":{\"x\":0,\"y\":0,\"z\":0},\"range\":{\"max\":500,\"min\":-500,\"stop\":1},\"single\":true,\"title\":\"Move\"}],\"transition_origin_x\":\"center\",\"transition_origin_y\":\"center\",\"enable_tablet\":0,\"enable_mobile\":0}],\"mouse_movement\":[{\"enable_tilt_effect\":0,\"mouse_tilt_direction\":\"direct\",\"mouse_tilt_speed\":\"1\",\"mouse_tilt_max\":\"15\",\"enable_tablet\":0,\"enable_mobile\":0}],\"title\":\"Ready to our latest creation Helix III\",\"heading_selector\":\"h2\",\"text\":\"<br data-mce-bogus=\\\"1\\\">\",\"feature_type\":\"image\",\"title_position\":\"\",\"icon_name\":\"fas fa-trophy\",\"feature_image\":{\"src\":\"\",\"height\":\"\",\"width\":\"\"},\"feature_image_alt\":\"\",\"feature_image_width\":{\"xl\":50},\"icon_size\":{\"xxl\":36,\"xl\":36,\"lg\":36,\"md\":36,\"sm\":36,\"xs\":36},\"icon_color\":\"#3366FF\",\"url_appear\":\"title\",\"btn_type\":\"primary\",\"btn_appearance\":\"\",\"btn_shape\":\"rounded\",\"link_btn_padding_bottom\":\"\",\"btn_size\":\"lg\",\"button_padding\":{\"xxl\":\"8px 22px 10px 22px\",\"xl\":\"8px 22px 10px 22px\",\"lg\":\"8px 22px 10px 22px\",\"md\":\"8px 22px 10px 22px\",\"sm\":\"8px 22px 10px 22px\",\"xs\":\"8px 22px 10px 22px\"},\"btn_block\":\"\",\"button_margin\":{\"xxl\":\"0px 0px 0px 0px\",\"xl\":\"0px 0px 0px 0px\",\"lg\":\"0px 0px 0px 0px\",\"md\":\"0px 0px 0px 0px\",\"sm\":\"0px 0px 0px 0px\",\"xs\":\"0px 0px 0px 0px\"},\"btn_icon_position\":\"left\",\"btn_color\":\"#FFFFFF\",\"btn_background_color\":\"#3366FF\",\"btn_background_gradient\":{\"color\":\"#3366FF\",\"color2\":\"#0037DD\",\"deg\":\"45\",\"type\":\"linear\"},\"link_btn_border_color\":\"\",\"btn_color_hover\":\"#FFFFFF\",\"btn_background_color_hover\":\"#0037DD\",\"btn_background_gradient_hover\":{\"color\":\"#0037DD\",\"color2\":\"#3366FF\",\"deg\":\"45\",\"type\":\"linear\"},\"link_btn_hover_color\":\"\",\"link_btn_border_hover_color\":\"\",\"alignment\":{\"xxl\":\"center\",\"xl\":\"center\",\"lg\":\"center\",\"md\":\"center\",\"sm\":\"center\",\"xs\":\"center\"},\"feature_image_margin\":{\"xxl\":\"   \",\"xl\":\"   \",\"lg\":\"   \",\"md\":\"   \",\"sm\":\"   \",\"xs\":\"   \"},\"text_padding\":{\"xxl\":\"0px 0px 0px 0px\",\"xl\":\"   \",\"lg\":\"   \",\"md\":\"   \",\"sm\":\"   \",\"xs\":\"   \"},\"btn_url\":{\"url\":\"http:\\/\\/www.joomshaper.com\\/helix\",\"type\":\"url\",\"new_tab\":false,\"nofollow\":false},\"btn_text\":\"Download Now!\",\"title_text_color\":\"#ffffff\",\"title_margin_bottom\":{\"xxl\":\"0\",\"xl\":\"15\",\"lg\":\"\",\"md\":\"\",\"sm\":\"\",\"xs\":\"\"},\"title_typography\":{\"font\":\"\",\"weight\":600,\"uppercase\":false,\"underline\":false,\"italic\":false,\"size\":{\"md\":{\"value\":\"36\",\"unit\":\"px\"},\"sm\":{\"value\":\"30\",\"unit\":\"px\"},\"xs\":{\"value\":\"30\",\"unit\":\"px\"},\"lg\":{\"value\":\"36\",\"unit\":\"px\"},\"xl\":{\"value\":\"36\",\"unit\":\"px\"},\"xxl\":{\"value\":\"36\",\"unit\":\"px\"}},\"line_height\":{\"xxl\":{\"value\":\"36\",\"unit\":\"px\"},\"xl\":{\"value\":\"36\",\"unit\":\"px\"},\"lg\":{\"value\":\"36\",\"unit\":\"px\"},\"md\":{\"value\":\"36\",\"unit\":\"px\"},\"sm\":{\"value\":\"30\",\"unit\":\"px\"},\"xs\":{\"value\":\"30\",\"unit\":\"px\"}},\"letter_spacing\":{\"md\":{\"value\":\"\",\"unit\":\"px\"},\"sm\":{\"value\":\"\",\"unit\":\"px\"},\"xs\":{\"value\":\"\",\"unit\":\"px\"},\"lg\":{\"value\":\"\",\"unit\":\"px\"},\"xl\":{\"value\":\"\",\"unit\":\"px\"},\"xxl\":{\"value\":\"\",\"unit\":\"px\"}}},\"title_margin_top\":{\"xxl\":\"0\",\"xl\":\"\",\"lg\":\"\",\"md\":\"\",\"sm\":\"\",\"xs\":\"\",\"unit\":\"px\"}},\"icon\":\"<svg viewBox=\\\"0 0 32 32\\\" xmlns=\\\"http:\\/\\/www.w3.org\\/2000\\/svg\\\"><path opacity=\\\".5\\\" fill-rule=\\\"evenodd\\\" clip-rule=\\\"evenodd\\\" d=\\\"M29 26a1 1 0 01-1 1H4a1 1 0 110-2h24a1 1 0 011 1zM24 31a1 1 0 01-1 1H8a1 1 0 110-2h15a1 1 0 011 1z\\\" fill=\\\"currentColor\\\"\\/><path fill-rule=\\\"evenodd\\\" clip-rule=\\\"evenodd\\\" d=\\\"M16.458 0c.423 0 .81.24.996.62l2.63 5.327 5.882.86a1.111 1.111 0 01.614 1.895l-4.255 4.144 1.005 5.855a1.111 1.111 0 01-1.613 1.171l-5.259-2.765-5.26 2.765a1.111 1.111 0 01-1.611-1.17l1.004-5.856-4.255-4.144a1.111 1.111 0 01.614-1.895l5.882-.86L15.462.62c.187-.379.573-.619.996-.619zm0 3.621l-1.892 3.833a1.111 1.111 0 01-.836.608l-4.232.618 3.062 2.982c.262.255.382.623.32.984l-.723 4.211 3.784-1.99c.324-.17.71-.17 1.034 0l3.784 1.99-.723-4.21a1.11 1.11 0 01.32-.985l3.062-2.982-4.232-.618a1.111 1.111 0 01-.836-.608l-1.892-3.833z\\\" fill=\\\"currentColor\\\"\\/><\\/svg>\",\"title\":\"Feature Box\",\"parent\":false}],\"width\":{\"xxl\":\"100%\",\"xl\":\"100%\",\"lg\":\"100%\",\"md\":\"100%\",\"sm\":\"100%\",\"xs\":\"100%\"}}],\"parent\":false}]',NULL,'com_sppagebuilder','page',0,0,1,0,1,0,'2015-01-22 07:12:35',675,'2023-07-05 11:44:43',494,0,'0000-00-00 00:00:00','{\"meta_description\":\"\",\"meta_keywords\":\"\",\"robots\":\"\",\"seo_spacer\":\"\",\"og_type\":\"website\"}','','','','*',3761,'',''),
(2,221,'Corporate','[{\"layout\":\"6,6\",\"settings\":{\"title\":\"\",\"heading_selector\":\"h1\",\"title_fontsize\":\"\",\"title_text_color\":\"\",\"title_margin_top\":\"\",\"title_margin_bottom\":\"\",\"subtitle\":\"\",\"subtitle_fontsize\":\"\",\"title_position\":\"sppb-text-center\",\"background_color\":\"\",\"color\":\"\",\"background_image\":\"images\\/slider.jpg\",\"background_repeat\":\"no-repeat\",\"background_size\":\"cover\",\"background_attachment\":\"inherit\",\"background_position\":\"50% 50%\",\"background_video\":0,\"background_video_mp4\":\"\",\"background_video_ogv\":\"\",\"id\":\"\",\"class\":\"\",\"padding\":\"10px 0 0\",\"margin\":\"\",\"fullscreen\":0,\"fit_columns\":{\"xxl\":true,\"xl\":true,\"lg\":true,\"md\":true,\"sm\":false,\"xs\":false}},\"id\":1481002171,\"visibility\":1,\"columns\":[{\"class_name\":\"col-sm-6\",\"settings\":{\"background\":\"\",\"color\":\"\",\"padding\":\"\",\"animation\":\"fadeInLeftBig\",\"animationduration\":300,\"animationdelay\":300,\"class\":\"\"},\"id\":1481002172,\"addons\":[{\"name\":\"feature\",\"title\":\"Feature Box\",\"id\":1481002174,\"settings\":{\"admin_label\":\"\",\"title\":\"Clean and Unique Free  Joomla Template\",\"heading_selector\":\"h3\",\"title_position\":\"before\",\"title_fontsize\":\"48\",\"title_lineheight\":\"\",\"title_fontstyle\":null,\"title_letterspace\":\"0\",\"title_fontweight\":\"\",\"title_text_color\":\"#333333\",\"title_margin_top\":\"\",\"title_margin_bottom\":\"\",\"title_url\":\"\",\"url_appear\":\"title\",\"feature_type\":\"icon\",\"feature_image\":\"\",\"icon_name\":\"\",\"icon_size\":\"\",\"icon_color\":\"\",\"icon_background\":\"\",\"icon_border_color\":\"\",\"icon_border_width\":\"\",\"icon_border_radius\":\"\",\"icon_margin_top\":\"\",\"icon_margin_bottom\":\"\",\"icon_padding\":{\"xxl\":\"\",\"xl\":\"   \",\"lg\":\"   \",\"md\":\"   \",\"sm\":\"   \",\"xs\":\"   \"},\"text\":\"Lorem ipsum dolor sit amet consectetur adipisicing elit sed do eiusmod temporconsectetur adipisicing elit sed do.\",\"alignment\":\"sppb-text-left\",\"class\":\"\",\"global_text_color\":\"\",\"global_link_color\":\"\",\"global_link_hover_color\":\"\",\"global_use_background\":0,\"global_background_color\":\"\",\"global_background_image\":\"\",\"global_background_repeat\":\"no-repeat\",\"global_background_size\":\"cover\",\"global_background_attachment\":\"inherit\",\"global_user_border\":0,\"global_border_width\":\"\",\"global_border_color\":\"\",\"global_boder_style\":\"none\",\"global_border_radius\":\"\",\"global_margin\":{\"xxl\":\"\",\"xl\":\"100px   \",\"lg\":\"100px   \",\"md\":\"100px   \",\"sm\":\"   \",\"xs\":\"   \"},\"global_padding\":{\"xxl\":\"\",\"xl\":\"   \",\"lg\":\"   \",\"md\":\"   \",\"sm\":\"   \",\"xs\":\"   \"},\"global_use_animation\":0,\"global_animation\":\"\",\"global_animationduration\":\"300\",\"global_animationdelay\":\"0\",\"hidden_md\":\"0\",\"hidden_sm\":\"0\",\"hidden_xs\":\"0\",\"instFormId\":1481002174,\"text_padding\":{\"xxl\":\"\",\"xl\":\"   \",\"lg\":\"   \",\"md\":\"   \",\"sm\":\"   \",\"xs\":\"   \"}},\"visibility\":1,\"icon\":\"<svg viewBox=\\\"0 0 32 32\\\" xmlns=\\\"http:\\/\\/www.w3.org\\/2000\\/svg\\\"><path opacity=\\\".5\\\" fill-rule=\\\"evenodd\\\" clip-rule=\\\"evenodd\\\" d=\\\"M29 26a1 1 0 01-1 1H4a1 1 0 110-2h24a1 1 0 011 1zM24 31a1 1 0 01-1 1H8a1 1 0 110-2h15a1 1 0 011 1z\\\" fill=\\\"currentColor\\\"\\/><path fill-rule=\\\"evenodd\\\" clip-rule=\\\"evenodd\\\" d=\\\"M16.458 0c.423 0 .81.24.996.62l2.63 5.327 5.882.86a1.111 1.111 0 01.614 1.895l-4.255 4.144 1.005 5.855a1.111 1.111 0 01-1.613 1.171l-5.259-2.765-5.26 2.765a1.111 1.111 0 01-1.611-1.17l1.004-5.856-4.255-4.144a1.111 1.111 0 01.614-1.895l5.882-.86L15.462.62c.187-.379.573-.619.996-.619zm0 3.621l-1.892 3.833a1.111 1.111 0 01-.836.608l-4.232.618 3.062 2.982c.262.255.382.623.32.984l-.723 4.211 3.784-1.99c.324-.17.71-.17 1.034 0l3.784 1.99-.723-4.21a1.11 1.11 0 01.32-.985l3.062-2.982-4.232-.618a1.111 1.111 0 01-.836-.608l-1.892-3.833z\\\" fill=\\\"currentColor\\\"\\/><\\/svg>\"},{\"name\":\"button\",\"title\":\"Button\",\"id\":1481002175,\"settings\":{\"admin_label\":\"\",\"text\":\"Download Now!\",\"fontstyle\":null,\"letterspace\":\"0\",\"url\":\"http:\\/\\/www.joomshaper.com\\/helix\",\"target\":\"_blank\",\"type\":\"primary\",\"appearance\":\"\",\"background_color\":\"#444444\",\"color\":\"#ffffff\",\"background_color_hover\":\"#222222\",\"color_hover\":\"#ffffff\",\"size\":\"lg\",\"shape\":\"rounded\",\"block\":\"\",\"icon\":\"\",\"icon_position\":\"left\",\"class\":\"\",\"global_text_color\":\"\",\"global_link_color\":\"\",\"global_link_hover_color\":\"\",\"global_use_background\":\"0\",\"global_background_color\":\"\",\"global_background_image\":\"\",\"global_background_repeat\":\"no-repeat\",\"global_background_size\":\"cover\",\"global_background_attachment\":\"inherit\",\"global_user_border\":\"0\",\"global_border_width\":\"\",\"global_border_color\":\"\",\"global_boder_style\":\"none\",\"global_border_radius\":\"\",\"global_margin\":\"30px 0px 0px 0px\",\"global_padding\":\"\",\"global_use_animation\":\"0\",\"global_animation\":\"\",\"global_animationduration\":\"300\",\"global_animationdelay\":\"0\",\"hidden_md\":\"0\",\"hidden_sm\":\"0\",\"hidden_xs\":\"0\"},\"visibility\":1,\"icon\":\"<svg viewBox=\\\"0 0 32 32\\\" xmlns=\\\"http:\\/\\/www.w3.org\\/2000\\/svg\\\"><path fill-rule=\\\"evenodd\\\" clip-rule=\\\"evenodd\\\" d=\\\"M0 8a4 4 0 014-4h24a4 4 0 014 4v9a4 4 0 01-4 4h-.5a1 1 0 110-2h.5a2 2 0 002-2V8a2 2 0 00-2-2H4a2 2 0 00-2 2v9a2 2 0 002 2h9a1 1 0 110 2H4a4 4 0 01-4-4V8z\\\" fill=\\\"currentColor\\\"\\/><path opacity=\\\".5\\\" fill-rule=\\\"evenodd\\\" clip-rule=\\\"evenodd\\\" d=\\\"M16.004 12.669l1.526 9.46c.05.408.508.611.864.408l2.645-1.882 3.612 5.137c.508.661 2.034-.407 1.577-1.068l-3.612-5.188 2.696-1.832c.305-.254.305-.762-.05-.966l-8.393-4.68a.604.604 0 00-.865.611z\\\" fill=\\\"currentColor\\\"\\/><\\/svg>\"}],\"visibility\":1,\"width\":{\"xxl\":\"50%\",\"xl\":\"50%\",\"lg\":\"50%\",\"md\":\"50%\",\"sm\":\"100%\",\"xs\":\"100%\"}},{\"class_name\":\"col-sm-6\",\"settings\":{\"class\":\"\",\"animationdelay\":300,\"animationduration\":300,\"animation\":\"fadeInRightBig\",\"padding\":\"\",\"color\":\"\",\"background\":\"\"},\"id\":1481002176,\"addons\":[{\"name\":\"image\",\"title\":\"Image\",\"id\":1481002177,\"settings\":{\"title\":\"\",\"heading_selector\":\"h3\",\"title_fontsize\":\"\",\"title_fontweight\":\"\",\"title_text_color\":\"\",\"title_margin_top\":\"\",\"title_margin_bottom\":\"\",\"image\":\"images\\/slide1.png\",\"position\":\"sppb-text-center\",\"link\":\"http:\\/\\/\",\"target\":\"\",\"class\":\"\"},\"visibility\":1,\"icon\":\"<svg viewBox=\\\"0 0 32 32\\\" xmlns=\\\"http:\\/\\/www.w3.org\\/2000\\/svg\\\"><path opacity=\\\".5\\\" fill-rule=\\\"evenodd\\\" clip-rule=\\\"evenodd\\\" d=\\\"M31.288 17.393l-9.718 5.9a5 5 0 01-5.8-.435l-3.622-3.024a3 3 0 00-3.583-.197l-6.781 4.504-1.106-1.666 6.78-4.504a5 5 0 015.971.327l3.623 3.025a3 3 0 003.48.261l9.718-5.9 1.038 1.71z\\\" fill=\\\"currentColor\\\"\\/><path opacity=\\\".5\\\" fill-rule=\\\"evenodd\\\" clip-rule=\\\"evenodd\\\" d=\\\"M19.077 10.154a2.077 2.077 0 100 4.154 2.077 2.077 0 000-4.154zM15 12.23a4.077 4.077 0 118.154 0 4.077 4.077 0 01-8.154 0z\\\" fill=\\\"currentColor\\\"\\/><path fill-rule=\\\"evenodd\\\" clip-rule=\\\"evenodd\\\" d=\\\"M29 4H3a1 1 0 00-1 1v22.308a1 1 0 001 1h26a1 1 0 001-1V5a1 1 0 00-1-1zM3 2a3 3 0 00-3 3v22.308a3 3 0 003 3h26a3 3 0 003-3V5a3 3 0 00-3-3H3z\\\" fill=\\\"currentColor\\\"\\/><\\/svg>\"}],\"visibility\":1,\"width\":{\"xxl\":\"50%\",\"xl\":\"50%\",\"lg\":\"50%\",\"md\":\"50%\",\"sm\":\"100%\",\"xs\":\"100%\"}}],\"collapse\":\"\",\"title\":\"Row\"},{\"layout\":\"3,3,3,3\",\"settings\":{\"title\":\"Our Services\",\"heading_selector\":\"h2\",\"title_fontsize\":\"36\",\"title_text_color\":\"\",\"title_margin_top\":\"0\",\"title_margin_bottom\":\"20\",\"subtitle\":\"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip\",\"subtitle_fontsize\":\"\",\"title_position\":\"sppb-text-center\",\"background_color\":\"#f5f5f5\",\"color\":\"\",\"background_image\":\"\",\"background_video\":0,\"background_video_mp4\":\"\",\"background_video_ogv\":\"\",\"id\":\"\",\"class\":\"\",\"padding\":{\"xxl\":\"\",\"xl\":\"100px 0px 100px 0px\",\"lg\":\"100px 0px 100px 0px\",\"md\":\"100px 0px 100px 0px\",\"sm\":\"50px 0px 50px 0px\",\"xs\":\"50px 0px 50px 0px\"},\"margin\":{\"xxl\":\"\",\"xl\":\"0px   \",\"lg\":\"0px   \",\"md\":\"0px   \",\"sm\":\"   \",\"xs\":\"   \"},\"fullscreen\":0,\"instFormId\":1481002178,\"columns_align_center\":0,\"no_gutter\":0,\"hidden_xs\":0,\"hidden_sm\":0,\"hidden_md\":0,\"fit_columns\":{\"xxl\":true,\"xl\":true,\"lg\":true,\"md\":true,\"sm\":false,\"xs\":false}},\"id\":1481002178,\"visibility\":1,\"columns\":[{\"class_name\":\"col-sm-3\",\"settings\":{\"background\":\"\",\"color\":\"\",\"padding\":\"\",\"animation\":\"fadeInDown\",\"animationduration\":300,\"animationdelay\":100,\"class\":\"\"},\"id\":1481002179,\"addons\":[{\"name\":\"feature\",\"title\":\"Feature Box\",\"id\":1481002181,\"settings\":{\"title\":\"Fully Responsive\",\"heading_selector\":\"h3\",\"title_fontsize\":\"\",\"title_fontweight\":\"\",\"title_text_color\":\"\",\"title_position\":\"after\",\"feature_type\":\"icon\",\"feature_image\":\"\",\"icon_name\":\"fa-laptop\",\"icon_size\":\"42\",\"icon_color\":\"\",\"icon_background\":\"\",\"icon_border_color\":\"\",\"icon_border_width\":\"\",\"icon_border_radius\":\"\",\"icon_margin_top\":\"0\",\"icon_margin_bottom\":\"\",\"icon_padding\":\"\",\"text\":\"Sirloin pork loine beefb andoe uillen capicola shank swine chuck flank tritip picola kevin filet mignon\",\"alignment\":\"sppb-text-center\",\"class\":\"\"},\"visibility\":1,\"icon\":\"<svg viewBox=\\\"0 0 32 32\\\" xmlns=\\\"http:\\/\\/www.w3.org\\/2000\\/svg\\\"><path opacity=\\\".5\\\" fill-rule=\\\"evenodd\\\" clip-rule=\\\"evenodd\\\" d=\\\"M29 26a1 1 0 01-1 1H4a1 1 0 110-2h24a1 1 0 011 1zM24 31a1 1 0 01-1 1H8a1 1 0 110-2h15a1 1 0 011 1z\\\" fill=\\\"currentColor\\\"\\/><path fill-rule=\\\"evenodd\\\" clip-rule=\\\"evenodd\\\" d=\\\"M16.458 0c.423 0 .81.24.996.62l2.63 5.327 5.882.86a1.111 1.111 0 01.614 1.895l-4.255 4.144 1.005 5.855a1.111 1.111 0 01-1.613 1.171l-5.259-2.765-5.26 2.765a1.111 1.111 0 01-1.611-1.17l1.004-5.856-4.255-4.144a1.111 1.111 0 01.614-1.895l5.882-.86L15.462.62c.187-.379.573-.619.996-.619zm0 3.621l-1.892 3.833a1.111 1.111 0 01-.836.608l-4.232.618 3.062 2.982c.262.255.382.623.32.984l-.723 4.211 3.784-1.99c.324-.17.71-.17 1.034 0l3.784 1.99-.723-4.21a1.11 1.11 0 01.32-.985l3.062-2.982-4.232-.618a1.111 1.111 0 01-.836-.608l-1.892-3.833z\\\" fill=\\\"currentColor\\\"\\/><\\/svg>\"}],\"visibility\":1,\"width\":{\"xxl\":\"25%\",\"xl\":\"25%\",\"lg\":\"25%\",\"md\":\"25%\",\"sm\":\"100%\",\"xs\":\"100%\"}},{\"class_name\":\"col-sm-3\",\"settings\":{\"background\":\"\",\"color\":\"\",\"padding\":\"\",\"animation\":\"fadeInDown\",\"animationduration\":300,\"animationdelay\":200,\"class\":\"\"},\"id\":1481002182,\"addons\":[{\"name\":\"feature\",\"title\":\"Feature Box\",\"id\":1481002184,\"settings\":{\"title\":\"Unique Design\",\"heading_selector\":\"h3\",\"title_fontsize\":\"\",\"title_fontweight\":\"\",\"title_text_color\":\"\",\"title_position\":\"after\",\"feature_type\":\"icon\",\"feature_image\":\"\",\"icon_name\":\"fa-dashboard\",\"icon_size\":\"42\",\"icon_color\":\"\",\"icon_background\":\"\",\"icon_border_color\":\"\",\"icon_border_width\":\"\",\"icon_border_radius\":\"\",\"icon_margin_top\":\"0\",\"icon_margin_bottom\":\"\",\"icon_padding\":\"\",\"text\":\"Sirloin pork loine beefb andoe uillen capicola shank swine chuck flank tritip picola kevin filet mignon\",\"alignment\":\"sppb-text-center\",\"class\":\"\"},\"visibility\":1,\"icon\":\"<svg viewBox=\\\"0 0 32 32\\\" xmlns=\\\"http:\\/\\/www.w3.org\\/2000\\/svg\\\"><path opacity=\\\".5\\\" fill-rule=\\\"evenodd\\\" clip-rule=\\\"evenodd\\\" d=\\\"M29 26a1 1 0 01-1 1H4a1 1 0 110-2h24a1 1 0 011 1zM24 31a1 1 0 01-1 1H8a1 1 0 110-2h15a1 1 0 011 1z\\\" fill=\\\"currentColor\\\"\\/><path fill-rule=\\\"evenodd\\\" clip-rule=\\\"evenodd\\\" d=\\\"M16.458 0c.423 0 .81.24.996.62l2.63 5.327 5.882.86a1.111 1.111 0 01.614 1.895l-4.255 4.144 1.005 5.855a1.111 1.111 0 01-1.613 1.171l-5.259-2.765-5.26 2.765a1.111 1.111 0 01-1.611-1.17l1.004-5.856-4.255-4.144a1.111 1.111 0 01.614-1.895l5.882-.86L15.462.62c.187-.379.573-.619.996-.619zm0 3.621l-1.892 3.833a1.111 1.111 0 01-.836.608l-4.232.618 3.062 2.982c.262.255.382.623.32.984l-.723 4.211 3.784-1.99c.324-.17.71-.17 1.034 0l3.784 1.99-.723-4.21a1.11 1.11 0 01.32-.985l3.062-2.982-4.232-.618a1.111 1.111 0 01-.836-.608l-1.892-3.833z\\\" fill=\\\"currentColor\\\"\\/><\\/svg>\"}],\"visibility\":1,\"width\":{\"xxl\":\"25%\",\"xl\":\"25%\",\"lg\":\"25%\",\"md\":\"25%\",\"sm\":\"100%\",\"xs\":\"100%\"}},{\"class_name\":\"col-sm-3\",\"settings\":{\"background\":\"\",\"color\":\"\",\"padding\":\"\",\"animation\":\"fadeInDown\",\"animationduration\":300,\"animationdelay\":300,\"class\":\"\"},\"id\":1481002185,\"addons\":[{\"name\":\"feature\",\"title\":\"Feature Box\",\"id\":1481002187,\"settings\":{\"title\":\"Easy to Customize\",\"heading_selector\":\"h3\",\"title_fontsize\":\"\",\"title_fontweight\":\"\",\"title_text_color\":\"\",\"title_position\":\"after\",\"feature_type\":\"icon\",\"feature_image\":\"\",\"icon_name\":\"fa-gear\",\"icon_size\":\"42\",\"icon_color\":\"\",\"icon_background\":\"\",\"icon_border_color\":\"\",\"icon_border_width\":\"\",\"icon_border_radius\":\"\",\"icon_margin_top\":\"0\",\"icon_margin_bottom\":\"\",\"icon_padding\":\"\",\"text\":\"Sirloin pork loine beefb andoe uillen capicola shank swine chuck flank tritip picola kevin filet mignon\",\"alignment\":\"sppb-text-center\",\"class\":\"\"},\"visibility\":1,\"icon\":\"<svg viewBox=\\\"0 0 32 32\\\" xmlns=\\\"http:\\/\\/www.w3.org\\/2000\\/svg\\\"><path opacity=\\\".5\\\" fill-rule=\\\"evenodd\\\" clip-rule=\\\"evenodd\\\" d=\\\"M29 26a1 1 0 01-1 1H4a1 1 0 110-2h24a1 1 0 011 1zM24 31a1 1 0 01-1 1H8a1 1 0 110-2h15a1 1 0 011 1z\\\" fill=\\\"currentColor\\\"\\/><path fill-rule=\\\"evenodd\\\" clip-rule=\\\"evenodd\\\" d=\\\"M16.458 0c.423 0 .81.24.996.62l2.63 5.327 5.882.86a1.111 1.111 0 01.614 1.895l-4.255 4.144 1.005 5.855a1.111 1.111 0 01-1.613 1.171l-5.259-2.765-5.26 2.765a1.111 1.111 0 01-1.611-1.17l1.004-5.856-4.255-4.144a1.111 1.111 0 01.614-1.895l5.882-.86L15.462.62c.187-.379.573-.619.996-.619zm0 3.621l-1.892 3.833a1.111 1.111 0 01-.836.608l-4.232.618 3.062 2.982c.262.255.382.623.32.984l-.723 4.211 3.784-1.99c.324-.17.71-.17 1.034 0l3.784 1.99-.723-4.21a1.11 1.11 0 01.32-.985l3.062-2.982-4.232-.618a1.111 1.111 0 01-.836-.608l-1.892-3.833z\\\" fill=\\\"currentColor\\\"\\/><\\/svg>\"}],\"visibility\":1,\"width\":{\"xxl\":\"25%\",\"xl\":\"25%\",\"lg\":\"25%\",\"md\":\"25%\",\"sm\":\"100%\",\"xs\":\"100%\"}},{\"class_name\":\"col-sm-3\",\"settings\":{\"background\":\"\",\"color\":\"\",\"padding\":\"\",\"animation\":\"fadeInDown\",\"animationduration\":300,\"animationdelay\":400,\"class\":\"\"},\"id\":1481002188,\"addons\":[{\"name\":\"feature\",\"title\":\"Feature Box\",\"id\":1481002190,\"settings\":{\"title\":\"Awesome Support\",\"heading_selector\":\"h3\",\"title_fontsize\":\"\",\"title_fontweight\":\"\",\"title_text_color\":\"\",\"title_position\":\"after\",\"feature_type\":\"icon\",\"feature_image\":\"\",\"icon_name\":\"fa-envelope\",\"icon_size\":\"42\",\"icon_color\":\"\",\"icon_background\":\"\",\"icon_border_color\":\"\",\"icon_border_width\":\"\",\"icon_border_radius\":\"\",\"icon_margin_top\":\"0\",\"icon_margin_bottom\":\"\",\"icon_padding\":\"\",\"text\":\"Sirloin pork loine beefb andoe uillen capicola shank swine chuck flank tritip picola kevin filet mignon\",\"alignment\":\"sppb-text-center\",\"class\":\"\"},\"visibility\":1,\"icon\":\"<svg viewBox=\\\"0 0 32 32\\\" xmlns=\\\"http:\\/\\/www.w3.org\\/2000\\/svg\\\"><path opacity=\\\".5\\\" fill-rule=\\\"evenodd\\\" clip-rule=\\\"evenodd\\\" d=\\\"M29 26a1 1 0 01-1 1H4a1 1 0 110-2h24a1 1 0 011 1zM24 31a1 1 0 01-1 1H8a1 1 0 110-2h15a1 1 0 011 1z\\\" fill=\\\"currentColor\\\"\\/><path fill-rule=\\\"evenodd\\\" clip-rule=\\\"evenodd\\\" d=\\\"M16.458 0c.423 0 .81.24.996.62l2.63 5.327 5.882.86a1.111 1.111 0 01.614 1.895l-4.255 4.144 1.005 5.855a1.111 1.111 0 01-1.613 1.171l-5.259-2.765-5.26 2.765a1.111 1.111 0 01-1.611-1.17l1.004-5.856-4.255-4.144a1.111 1.111 0 01.614-1.895l5.882-.86L15.462.62c.187-.379.573-.619.996-.619zm0 3.621l-1.892 3.833a1.111 1.111 0 01-.836.608l-4.232.618 3.062 2.982c.262.255.382.623.32.984l-.723 4.211 3.784-1.99c.324-.17.71-.17 1.034 0l3.784 1.99-.723-4.21a1.11 1.11 0 01.32-.985l3.062-2.982-4.232-.618a1.111 1.111 0 01-.836-.608l-1.892-3.833z\\\" fill=\\\"currentColor\\\"\\/><\\/svg>\"}],\"visibility\":1,\"width\":{\"xxl\":\"25%\",\"xl\":\"25%\",\"lg\":\"25%\",\"md\":\"25%\",\"sm\":\"100%\",\"xs\":\"100%\"}}],\"collapse\":\"\",\"title\":\"Row\"},{\"id\":\"huTgXkI7pEEJDiUHoKGWM\",\"visibility\":true,\"collapse\":false,\"settings\":{\"fit_columns\":{\"xxl\":true,\"xl\":true,\"lg\":true,\"md\":true,\"sm\":false,\"xs\":false},\"background_type\":\"none\",\"background_gradient\":{\"color\":\"#00c6fb\",\"color2\":\"#005bea\",\"deg\":\"45\",\"type\":\"linear\"},\"background_image\":{\"src\":\"\"},\"background_parallax\":\"0\",\"background_repeat\":\"no-repeat\",\"background_size\":\"cover\",\"background_size_custom\":{\"unit\":\"px\"},\"background_attachment\":\"fixed\",\"background_position\":\"0 0\",\"background_position_custom_x\":{\"unit\":\"px\"},\"background_position_custom_y\":{\"unit\":\"px\"},\"external_background_video\":0,\"background_video_ogv\":{\"src\":\"\"},\"video_loop\":1,\"overlay_type\":\"overlay_none\",\"gradient_overlay\":{\"color\":\"rgba(127, 0, 255, 0.8)\",\"color2\":\"rgba(225, 0, 255, 0.7)\",\"deg\":\"45\",\"type\":\"linear\"},\"pattern_overlay\":\"\",\"overlay_pattern_color\":\"\",\"blend_mode\":\"normal\",\"columns_align_center\":0,\"columns_content_alignment\":\"center\",\"fullscreen\":true,\"no_gutter\":0,\"row_width\":{\"unit\":\"px\"},\"row_max_width\":{\"unit\":\"px\"},\"row_min_width\":{\"unit\":\"px\"},\"padding\":{\"xxl\":\"0px 0px 0px 0px\",\"xl\":\"0px 0px 0px 0px\",\"lg\":\"0px 0px 0px 0px\",\"md\":\"0px 0px 0px 0px\",\"sm\":\"0px 0px 0px 0px\",\"xs\":\"0px 0px 0px 0px\"},\"margin\":{\"xxl\":\"0px 0px 0px 0px\",\"xl\":\"0px 0px 0px 0px\",\"lg\":\"0px 0px 0px 0px\",\"md\":\"0px 0px 0px 0px\",\"sm\":\"0px 0px 0px 0px\",\"xs\":\"0px 0px 0px 0px\"},\"row_border\":0,\"row_border_style\":\"solid\",\"row_boxshadow\":{\"ho\":0,\"vo\":0,\"blur\":0,\"spread\":0,\"color\":\"#FFFFFF\",\"inset\":false,\"enabled\":false},\"show_top_shape\":\"\",\"shape_name\":\"clouds-flat\",\"shape_color\":\"#e5e5e5\",\"shape_width\":{\"xxl\":\"\",\"xl\":100,\"lg\":100,\"md\":100,\"sm\":100,\"xs\":100},\"shape_height\":\"\",\"shape_flip\":false,\"shape_invert\":false,\"shape_to_front\":false,\"show_bottom_shape\":\"\",\"bottom_shape_name\":\"clouds-opacity\",\"bottom_shape_color\":\"#e5e5e5\",\"bottom_shape_width\":{\"xl\":100},\"bottom_shape_height\":\"\",\"bottom_shape_flip\":false,\"bottom_shape_invert\":false,\"bottom_shape_to_front\":false,\"heading_selector\":\"h3\",\"title_fontsize\":\"\",\"title_fontweight\":\"\",\"title_position\":\"center\",\"admin_label\":\"\",\"hidden_xs\":\"\",\"hidden_sm\":\"\",\"hidden_md\":\"\",\"enable_animation\":\"1\",\"animationduration\":\"300\",\"animationdelay\":\"0\",\"instFormId\":1668417136060,\"boxshadow\":{\"ho\":null,\"vo\":null,\"blur\":null,\"spread\":null,\"color\":\"\",\"inset\":false,\"enabled\":false},\"global_boxshadow\":{\"ho\":null,\"vo\":null,\"blur\":null,\"spread\":null,\"color\":\"\",\"inset\":false,\"enabled\":false},\"global_background_type\":\"none\"},\"layout\":\"6.0+6.0\",\"columns\":[{\"id\":\"Xj_KiWA43SswzKpz54e4b\",\"class_name\":\"row-column\",\"visibility\":true,\"settings\":{\"background_type\":\"image\",\"background_gradient\":{\"color\":\"#00c6fb\",\"color2\":\"#005bea\",\"deg\":\"45\",\"type\":\"linear\"},\"background_image\":{\"src\":\"images\\/corporate.jpg\"},\"background_repeat\":\"no-repeat\",\"background_size\":\"cover\",\"background_size_custom\":{\"unit\":\"px\"},\"background_attachment\":\"scroll\",\"background_position\":\"50% 50%\",\"background_position_custom_x\":{\"unit\":\"px\"},\"background_position_custom_y\":{\"unit\":\"px\"},\"overlay_type\":\"overlay_color\",\"gradient_overlay\":{\"color\":\"rgba(127, 0, 255, 0.8)\",\"color2\":\"rgba(225, 0, 255, 0.7)\",\"deg\":\"45\",\"type\":\"linear\"},\"pattern_overlay\":{\"src\":\"\"},\"overlay_pattern_color\":\"\",\"blend_mode\":\"normal\",\"use_border\":0,\"border_width\":\"\",\"boxshadow\":{\"ho\":0,\"vo\":0,\"blur\":0,\"spread\":0,\"color\":\"#FFFFFF\",\"inset\":false,\"enabled\":false},\"items_align_center\":0,\"items_content_alignment\":\"center\",\"tablet_order\":\"\",\"mobile_order\":\"\",\"hidden_xs\":\"\",\"hidden_sm\":\"\",\"hidden_md\":\"\",\"enable_animation\":\"1\",\"animationduration\":\"300\",\"animationdelay\":\"0\",\"instFormId\":1668417136061,\"row_boxshadow\":{\"ho\":null,\"vo\":null,\"blur\":null,\"spread\":null,\"color\":\"\",\"inset\":false,\"enabled\":false},\"padding\":{\"xxl\":\"   \",\"xl\":\"   \",\"lg\":\"   \",\"md\":\"   \",\"sm\":\"200px 0px 200px 0px\",\"xs\":\"150px 0px 150px 0px\"},\"margin\":{\"xxl\":\"   \",\"xl\":\"   \",\"lg\":\"   \",\"md\":\"   \",\"sm\":\"   \",\"xs\":\"   \"},\"global_boxshadow\":{\"ho\":null,\"vo\":null,\"blur\":null,\"spread\":null,\"color\":\"\",\"inset\":false,\"enabled\":false},\"global_background_type\":\"none\"},\"addons\":[],\"width\":{\"xxl\":\"50.000000%\",\"xl\":\"50.000000%\",\"lg\":\"50.000000%\",\"md\":\"50.000000%\",\"sm\":\"100%\",\"xs\":\"100%\"}},{\"id\":\"-K67DzqGg-Y3FzeKbWuH2\",\"class_name\":\"row-column\",\"visibility\":true,\"settings\":{\"background_type\":\"none\",\"background_gradient\":{\"color\":\"#00c6fb\",\"color2\":\"#005bea\",\"deg\":\"45\",\"type\":\"linear\"},\"background_image\":{\"src\":\"\"},\"background_repeat\":\"no-repeat\",\"background_size\":\"cover\",\"background_size_custom\":{\"unit\":\"px\"},\"background_attachment\":\"scroll\",\"background_position\":\"0 0\",\"background_position_custom_x\":{\"unit\":\"px\"},\"background_position_custom_y\":{\"unit\":\"px\"},\"overlay_type\":\"overlay_color\",\"gradient_overlay\":{\"color\":\"rgba(127, 0, 255, 0.8)\",\"color2\":\"rgba(225, 0, 255, 0.7)\",\"deg\":\"45\",\"type\":\"linear\"},\"pattern_overlay\":{\"src\":\"\"},\"overlay_pattern_color\":\"\",\"blend_mode\":\"normal\",\"use_border\":0,\"border_width\":\"\",\"boxshadow\":{\"ho\":0,\"vo\":0,\"blur\":0,\"spread\":0,\"color\":\"#FFFFFF\",\"inset\":false,\"enabled\":false},\"items_align_center\":0,\"items_content_alignment\":\"center\",\"tablet_order\":\"\",\"mobile_order\":\"\",\"hidden_xs\":\"\",\"hidden_sm\":\"\",\"hidden_md\":\"\",\"enable_animation\":\"1\",\"animationduration\":\"300\",\"animationdelay\":\"0\",\"instFormId\":1668417136059,\"global_boxshadow\":{\"ho\":null,\"vo\":null,\"blur\":null,\"spread\":null,\"color\":\"\",\"inset\":false,\"enabled\":false},\"global_background_type\":\"none\",\"padding\":{\"xxl\":\"   \",\"xl\":\"0px 0px 0px 50px\",\"lg\":\"   \",\"md\":\"0px 0px 0px 0px\",\"sm\":\"0px 14% 0px 16%\",\"xs\":\"0px 15px 0px 15px\"},\"margin\":{\"xxl\":\"   \",\"xl\":\"   \",\"lg\":\"   \",\"md\":\"   \",\"sm\":\"   \",\"xs\":\"   \"},\"class\":\"right-content\"},\"addons\":[{\"id\":\"CIhmZVhsRYA-xibLsGnF1\",\"name\":\"text_block\",\"visibility\":true,\"settings\":{\"global_padding\":{\"xxl\":\"   \",\"xl\":\"   \",\"lg\":\"   \",\"md\":\"   \",\"sm\":\"   \",\"xs\":\"   \"},\"global_margin\":{\"xxl\":\"   \",\"xl\":\"120px 0px 10px 0px\",\"lg\":\"   \",\"md\":\"100px 0px 0px 0px\",\"sm\":\"80px 0px 0px 0px\",\"xs\":\"   \"},\"global_background_type\":\"none\",\"global_background_gradient\":{\"color\":\"#00c6fb\",\"color2\":\"#005bea\",\"deg\":\"45\",\"type\":\"linear\"},\"global_background_image\":{\"src\":\"\"},\"global_background_repeat\":\"no-repeat\",\"global_background_size\":\"cover\",\"global_background_attachment\":\"inherit\",\"global_background_position\":\"50% 50%\",\"global_use_overlay\":0,\"global_overlay_type\":\"overlay_none\",\"global_gradient_overlay\":{\"color\":\"rgba(127, 0, 255, 0.8)\",\"color2\":\"rgba(225, 0, 255, 0.7)\",\"deg\":\"45\",\"type\":\"linear\"},\"global_pattern_overlay\":{\"src\":\"\"},\"global_overlay_pattern_color\":\"\",\"blend_mode\":\"normal\",\"global_user_border\":0,\"global_border_width\":{\"xxl\":\"\",\"xl\":\"\",\"lg\":\"\",\"md\":\"\",\"sm\":\"\",\"xs\":\"\"},\"global_border_radius\":{\"xxl\":\"\",\"xl\":\"\",\"lg\":\"\",\"md\":\"\",\"sm\":\"\",\"xs\":\"\"},\"global_boxshadow\":{\"ho\":0,\"vo\":0,\"blur\":0,\"spread\":0,\"color\":\"#FFFFFF\",\"inset\":false,\"enabled\":false},\"global_use_animation\":0,\"global_animationduration\":\"300\",\"global_animationdelay\":\"0\",\"class\":\"\",\"global_custom_css\":\"\",\"global_custom_position\":0,\"global_seclect_position\":\"relative\",\"global_addon_position_left\":{\"unit\":\"px\"},\"global_addon_position_top\":{\"unit\":\"px\"},\"use_global_width\":true,\"hidden_md\":\"0\",\"hidden_sm\":\"0\",\"hidden_xs\":\"0\",\"acl\":\"\",\"admin_label\":\"\",\"while_scroll_view\":[{\"enable_while_scroll_view\":0,\"scrolling_options\":\"fullpage\",\"on_scroll_actions\":[{\"id\":\"b3fdc1c1e6bfde5942ea\",\"index\":0,\"keyframe\":0,\"name\":\"move\",\"property\":{\"x\":\"0\",\"y\":\"-100\",\"z\":\"0\"},\"range\":{\"max\":500,\"min\":-500,\"stop\":1},\"single\":true,\"title\":\"Move\"},{\"id\":\"936e0225e6dc8edfba7d\",\"index\":1,\"keyframe\":100,\"name\":\"move\",\"property\":{\"x\":0,\"y\":0,\"z\":0},\"range\":{\"max\":500,\"min\":-500,\"stop\":1},\"single\":true,\"title\":\"Move\"}],\"transition_origin_x\":\"center\",\"transition_origin_y\":\"center\",\"enable_tablet\":0,\"enable_mobile\":0}],\"mouse_movement\":[{\"enable_tilt_effect\":0,\"mouse_tilt_direction\":\"direct\",\"mouse_tilt_speed\":\"1\",\"mouse_tilt_max\":\"15\",\"enable_tablet\":0,\"enable_mobile\":0}],\"text\":\"<br data-mce-bogus=\\\"1\\\">\",\"dropcap\":0,\"heading_selector\":\"h3\",\"title\":\"We Build our products to Represent our Values\",\"title_margin_top\":{\"xxl\":\"\",\"xl\":\"0\",\"lg\":\"\",\"md\":\"\",\"sm\":\"\",\"xs\":\"\"},\"title_margin_bottom\":{\"xxl\":\"\",\"xl\":\"0\",\"lg\":\"\",\"md\":\"\",\"sm\":\"\",\"xs\":\"\"},\"title_typography\":{\"font\":\"\",\"weight\":\"\",\"uppercase\":false,\"underline\":false,\"italic\":false,\"size\":{\"md\":{\"value\":\"\",\"unit\":\"px\"},\"sm\":{\"value\":\"\",\"unit\":\"px\"},\"xs\":{\"value\":\"\",\"unit\":\"px\"},\"lg\":{\"value\":\"\",\"unit\":\"px\"},\"xl\":{\"value\":\"24\",\"unit\":\"px\"},\"xxl\":{\"value\":\"\",\"unit\":\"px\"}},\"line_height\":{\"xxl\":{\"value\":\"\",\"unit\":\"px\"},\"xl\":{\"value\":\"26\",\"unit\":\"px\"},\"lg\":{\"value\":\"\",\"unit\":\"px\"},\"md\":{\"value\":\"\",\"unit\":\"px\"},\"sm\":{\"value\":\"\",\"unit\":\"px\"},\"xs\":{\"value\":\"\",\"unit\":\"px\"}},\"letter_spacing\":{\"md\":{\"value\":\"\",\"unit\":\"px\"},\"sm\":{\"value\":\"\",\"unit\":\"px\"},\"xs\":{\"value\":\"\",\"unit\":\"px\"},\"lg\":{\"value\":\"\",\"unit\":\"px\"},\"xl\":{\"value\":\"\",\"unit\":\"px\"},\"xxl\":{\"value\":\"\",\"unit\":\"px\"}}},\"text_typography\":{\"font\":\"\",\"weight\":\"\",\"uppercase\":false,\"underline\":false,\"italic\":false,\"size\":{\"md\":{\"value\":\"\",\"unit\":\"px\"},\"sm\":{\"value\":\"\",\"unit\":\"px\"},\"xs\":{\"value\":\"\",\"unit\":\"px\"},\"lg\":{\"value\":\"\",\"unit\":\"px\"},\"xl\":{\"value\":\"\",\"unit\":\"px\"},\"xxl\":{\"value\":\"\",\"unit\":\"px\"}},\"line_height\":{\"xxl\":{\"value\":\"\",\"unit\":\"px\"},\"xl\":{\"value\":\"\",\"unit\":\"px\"},\"lg\":{\"value\":\"\",\"unit\":\"px\"},\"md\":{\"value\":\"\",\"unit\":\"px\"},\"sm\":{\"value\":\"\",\"unit\":\"px\"},\"xs\":{\"value\":\"\",\"unit\":\"px\"}},\"letter_spacing\":{\"md\":{\"value\":\"\",\"unit\":\"px\"},\"sm\":{\"value\":\"\",\"unit\":\"px\"},\"xs\":{\"value\":\"\",\"unit\":\"px\"},\"lg\":{\"value\":\"\",\"unit\":\"px\"},\"xl\":{\"value\":\"\",\"unit\":\"px\"},\"xxl\":{\"value\":\"\",\"unit\":\"px\"}}},\"instFormId\":\"CIhmZVhsRYA-xibLsGnF1\",\"boxshadow\":{\"ho\":null,\"vo\":null,\"blur\":null,\"spread\":null,\"color\":\"\",\"inset\":false,\"enabled\":false},\"background_type\":\"none\",\"overlay_type\":\"overlay_color\",\"global_width\":{\"xxl\":\"\",\"xl\":\"50\",\"lg\":\"80\",\"md\":\"\",\"sm\":\"100\",\"xs\":\"100\"},\"row_boxshadow\":{\"ho\":null,\"vo\":null,\"blur\":null,\"spread\":null,\"color\":\"\",\"inset\":false,\"enabled\":false}},\"icon\":\"<svg viewBox=\\\"0 0 32 32\\\" xmlns=\\\"http:\\/\\/www.w3.org\\/2000\\/svg\\\"><path d=\\\"M23.055 10.419c0-.885-.717-1.602-1.602-1.602H10.547a1.602 1.602 0 000 3.204h3.825v10.118a1.628 1.628 0 103.256 0V12.02h3.825c.885 0 1.602-.718 1.602-1.602z\\\" fill=\\\"currentColor\\\"\\/><path opacity=\\\".5\\\" fill-rule=\\\"evenodd\\\" clip-rule=\\\"evenodd\\\" d=\\\"M5.18 3.42c-.95 0-1.721.758-1.721 1.693V8.5c0 .668-.55 1.21-1.23 1.21A1.22 1.22 0 011 8.5V5.113C1 2.84 2.872 1 5.18 1h2.951c.68 0 1.23.542 1.23 1.21 0 .668-.55 1.21-1.23 1.21h-2.95zM26.82 28.58c.95 0 1.721-.758 1.721-1.693V23.5c0-.668.55-1.21 1.23-1.21.678 0 1.229.542 1.229 1.21v3.387C31 29.16 29.128 31 26.82 31h-2.951a1.22 1.22 0 01-1.23-1.21c0-.668.55-1.21 1.23-1.21h2.95zM26.82 3.42c.95 0 1.721.758 1.721 1.693V8.5c0 .668.55 1.21 1.23 1.21A1.22 1.22 0 0031 8.5V5.113C31 2.84 29.128 1 26.82 1h-2.951c-.68 0-1.23.542-1.23 1.21 0 .668.55 1.21 1.23 1.21h2.95zM5.18 28.58c-.95 0-1.721-.758-1.721-1.693V23.5c0-.668-.55-1.21-1.23-1.21A1.22 1.22 0 001 23.5v3.387C1 29.16 2.872 31 5.18 31h2.951a1.22 1.22 0 001.23-1.21c0-.668-.55-1.21-1.23-1.21h-2.95z\\\" fill=\\\"currentColor\\\"\\/><\\/svg>\",\"title\":\"Text Block\",\"parent\":false},{\"id\":\"I-WIQF2cJ19LJnU44kvkG\",\"name\":\"text_block\",\"visibility\":true,\"settings\":{\"global_padding\":{\"xxl\":\"   \",\"xl\":\"   \",\"lg\":\"   \",\"md\":\"   \",\"sm\":\"   \",\"xs\":\"   \"},\"global_margin\":{\"xxl\":\"   \",\"xl\":\"0px 0px 25px 0px\",\"lg\":\"   \",\"md\":\"   \",\"sm\":\"   \",\"xs\":\"   \"},\"global_background_type\":\"none\",\"global_background_gradient\":{\"color\":\"#00c6fb\",\"color2\":\"#005bea\",\"deg\":\"45\",\"type\":\"linear\"},\"global_background_image\":{\"src\":\"\"},\"global_background_repeat\":\"no-repeat\",\"global_background_size\":\"cover\",\"global_background_attachment\":\"inherit\",\"global_background_position\":\"50% 50%\",\"global_use_overlay\":0,\"global_overlay_type\":\"overlay_none\",\"global_gradient_overlay\":{\"color\":\"rgba(127, 0, 255, 0.8)\",\"color2\":\"rgba(225, 0, 255, 0.7)\",\"deg\":\"45\",\"type\":\"linear\"},\"global_pattern_overlay\":{\"src\":\"\"},\"global_overlay_pattern_color\":\"\",\"blend_mode\":\"normal\",\"global_user_border\":0,\"global_border_width\":{\"xxl\":\"\",\"xl\":\"\",\"lg\":\"\",\"md\":\"\",\"sm\":\"\",\"xs\":\"\"},\"global_border_radius\":{\"xxl\":\"\",\"xl\":\"\",\"lg\":\"\",\"md\":\"\",\"sm\":\"\",\"xs\":\"\"},\"global_boxshadow\":{\"ho\":0,\"vo\":0,\"blur\":0,\"spread\":0,\"color\":\"#FFFFFF\",\"inset\":false,\"enabled\":false},\"global_use_animation\":0,\"global_animationduration\":\"300\",\"global_animationdelay\":\"0\",\"class\":\"\",\"global_custom_css\":\"\",\"global_custom_position\":false,\"global_seclect_position\":\"relative\",\"global_addon_position_left\":{\"unit\":\"px\"},\"global_addon_position_top\":{\"unit\":\"px\"},\"use_global_width\":true,\"hidden_md\":\"0\",\"hidden_sm\":\"0\",\"hidden_xs\":\"0\",\"acl\":\"\",\"admin_label\":\"\",\"while_scroll_view\":[{\"enable_while_scroll_view\":0,\"scrolling_options\":\"fullpage\",\"on_scroll_actions\":[{\"id\":\"b3fdc1c1e6bfde5942ea\",\"index\":0,\"keyframe\":0,\"name\":\"move\",\"property\":{\"x\":\"0\",\"y\":\"-100\",\"z\":\"0\"},\"range\":{\"max\":500,\"min\":-500,\"stop\":1},\"single\":true,\"title\":\"Move\"},{\"id\":\"936e0225e6dc8edfba7d\",\"index\":1,\"keyframe\":100,\"name\":\"move\",\"property\":{\"x\":0,\"y\":0,\"z\":0},\"range\":{\"max\":500,\"min\":-500,\"stop\":1},\"single\":true,\"title\":\"Move\"}],\"transition_origin_x\":\"center\",\"transition_origin_y\":\"center\",\"enable_tablet\":0,\"enable_mobile\":0}],\"mouse_movement\":[{\"enable_tilt_effect\":0,\"mouse_tilt_direction\":\"direct\",\"mouse_tilt_speed\":\"1\",\"mouse_tilt_max\":\"15\",\"enable_tablet\":0,\"enable_mobile\":0}],\"text\":\"The Helix Framework is one of the best light and feature rich responsive framework for Joomla templating. It is so easy to develop and control of Joomla templates for you and your clients. Helix framework will make your experience of creating website much smoother than ever before.\",\"dropcap\":0,\"heading_selector\":\"h3\",\"text_typography\":{\"font\":\"\",\"weight\":100,\"uppercase\":false,\"underline\":false,\"italic\":false,\"size\":{\"md\":{\"value\":\"\",\"unit\":\"px\"},\"sm\":{\"value\":\"\",\"unit\":\"px\"},\"xs\":{\"value\":\"\",\"unit\":\"px\"},\"lg\":{\"value\":\"\",\"unit\":\"px\"},\"xl\":{\"value\":\"14\",\"unit\":\"px\"},\"xxl\":{\"value\":\"\",\"unit\":\"px\"}},\"line_height\":{\"xxl\":{\"value\":\"\",\"unit\":\"px\"},\"xl\":{\"value\":\"24\",\"unit\":\"px\"},\"lg\":{\"value\":\"\",\"unit\":\"px\"},\"md\":{\"value\":\"\",\"unit\":\"px\"},\"sm\":{\"value\":\"\",\"unit\":\"px\"},\"xs\":{\"value\":\"\",\"unit\":\"px\"}},\"letter_spacing\":{\"md\":{\"value\":\"\",\"unit\":\"px\"},\"sm\":{\"value\":\"\",\"unit\":\"px\"},\"xs\":{\"value\":\"\",\"unit\":\"px\"},\"lg\":{\"value\":\"\",\"unit\":\"px\"},\"xl\":{\"value\":\"\",\"unit\":\"px\"},\"xxl\":{\"value\":\"\",\"unit\":\"px\"}}},\"instFormId\":\"I-WIQF2cJ19LJnU44kvkG\",\"boxshadow\":{\"ho\":null,\"vo\":null,\"blur\":null,\"spread\":null,\"color\":\"\",\"inset\":false,\"enabled\":false},\"background_type\":\"none\",\"global_width\":{\"xxl\":\"\",\"xl\":\"58\",\"lg\":\"80\",\"md\":\"\",\"sm\":\"100\",\"xs\":\"100\"}},\"icon\":\"<svg viewBox=\\\"0 0 32 32\\\" xmlns=\\\"http:\\/\\/www.w3.org\\/2000\\/svg\\\"><path d=\\\"M23.055 10.419c0-.885-.717-1.602-1.602-1.602H10.547a1.602 1.602 0 000 3.204h3.825v10.118a1.628 1.628 0 103.256 0V12.02h3.825c.885 0 1.602-.718 1.602-1.602z\\\" fill=\\\"currentColor\\\"\\/><path opacity=\\\".5\\\" fill-rule=\\\"evenodd\\\" clip-rule=\\\"evenodd\\\" d=\\\"M5.18 3.42c-.95 0-1.721.758-1.721 1.693V8.5c0 .668-.55 1.21-1.23 1.21A1.22 1.22 0 011 8.5V5.113C1 2.84 2.872 1 5.18 1h2.951c.68 0 1.23.542 1.23 1.21 0 .668-.55 1.21-1.23 1.21h-2.95zM26.82 28.58c.95 0 1.721-.758 1.721-1.693V23.5c0-.668.55-1.21 1.23-1.21.678 0 1.229.542 1.229 1.21v3.387C31 29.16 29.128 31 26.82 31h-2.951a1.22 1.22 0 01-1.23-1.21c0-.668.55-1.21 1.23-1.21h2.95zM26.82 3.42c.95 0 1.721.758 1.721 1.693V8.5c0 .668.55 1.21 1.23 1.21A1.22 1.22 0 0031 8.5V5.113C31 2.84 29.128 1 26.82 1h-2.951c-.68 0-1.23.542-1.23 1.21 0 .668.55 1.21 1.23 1.21h2.95zM5.18 28.58c-.95 0-1.721-.758-1.721-1.693V23.5c0-.668-.55-1.21-1.23-1.21A1.22 1.22 0 001 23.5v3.387C1 29.16 2.872 31 5.18 31h2.951a1.22 1.22 0 001.23-1.21c0-.668-.55-1.21-1.23-1.21h-2.95z\\\" fill=\\\"currentColor\\\"\\/><\\/svg>\",\"title\":\"Text Block\",\"parent\":false},{\"id\":\"yLMn1AdF2ySIJmE4AEqpW\",\"name\":\"text_block\",\"visibility\":true,\"settings\":{\"global_padding\":{\"xxl\":\"   \",\"xl\":\"   \",\"lg\":\"   \",\"md\":\"   \",\"sm\":\"   \",\"xs\":\"   \"},\"global_margin\":{\"xxl\":\"   \",\"xl\":\"0px 0px 120px 0px\",\"lg\":\"   \",\"md\":\"0px 0px 100px 0px\",\"sm\":\"0px 0px 80px 0px\",\"xs\":\"   \"},\"global_background_type\":\"none\",\"global_background_gradient\":{\"color\":\"#00c6fb\",\"color2\":\"#005bea\",\"deg\":\"45\",\"type\":\"linear\"},\"global_background_image\":{\"src\":\"\"},\"global_background_repeat\":\"no-repeat\",\"global_background_size\":\"cover\",\"global_background_attachment\":\"inherit\",\"global_background_position\":\"50% 50%\",\"global_use_overlay\":0,\"global_overlay_type\":\"overlay_none\",\"global_gradient_overlay\":{\"color\":\"rgba(127, 0, 255, 0.8)\",\"color2\":\"rgba(225, 0, 255, 0.7)\",\"deg\":\"45\",\"type\":\"linear\"},\"global_pattern_overlay\":{\"src\":\"\"},\"global_overlay_pattern_color\":\"\",\"blend_mode\":\"normal\",\"global_user_border\":0,\"global_border_width\":{\"xxl\":\"\",\"xl\":\"\",\"lg\":\"\",\"md\":\"\",\"sm\":\"\",\"xs\":\"\"},\"global_border_radius\":{\"xxl\":\"\",\"xl\":\"\",\"lg\":\"\",\"md\":\"\",\"sm\":\"\",\"xs\":\"\"},\"global_boxshadow\":{\"ho\":0,\"vo\":0,\"blur\":0,\"spread\":0,\"color\":\"#FFFFFF\",\"inset\":false,\"enabled\":false},\"global_use_animation\":0,\"global_animationduration\":\"300\",\"global_animationdelay\":\"0\",\"class\":\"\",\"global_custom_css\":\"\",\"global_custom_position\":false,\"global_seclect_position\":\"relative\",\"global_addon_position_left\":{\"unit\":\"px\"},\"global_addon_position_top\":{\"unit\":\"px\"},\"use_global_width\":true,\"hidden_md\":\"0\",\"hidden_sm\":\"0\",\"hidden_xs\":\"0\",\"acl\":\"\",\"admin_label\":\"\",\"while_scroll_view\":[{\"enable_while_scroll_view\":0,\"scrolling_options\":\"fullpage\",\"on_scroll_actions\":[{\"id\":\"b3fdc1c1e6bfde5942ea\",\"index\":0,\"keyframe\":0,\"name\":\"move\",\"property\":{\"x\":\"0\",\"y\":\"-100\",\"z\":\"0\"},\"range\":{\"max\":500,\"min\":-500,\"stop\":1},\"single\":true,\"title\":\"Move\"},{\"id\":\"936e0225e6dc8edfba7d\",\"index\":1,\"keyframe\":100,\"name\":\"move\",\"property\":{\"x\":0,\"y\":0,\"z\":0},\"range\":{\"max\":500,\"min\":-500,\"stop\":1},\"single\":true,\"title\":\"Move\"}],\"transition_origin_x\":\"center\",\"transition_origin_y\":\"center\",\"enable_tablet\":0,\"enable_mobile\":0}],\"mouse_movement\":[{\"enable_tilt_effect\":0,\"mouse_tilt_direction\":\"direct\",\"mouse_tilt_speed\":\"1\",\"mouse_tilt_max\":\"15\",\"enable_tablet\":0,\"enable_mobile\":0}],\"text\":\"It is so easy to develop and control of Joomla templates for you and your clients. Helix framework will make your experience of creating website much smoother than ever before.\",\"dropcap\":0,\"heading_selector\":\"h3\",\"text_typography\":{\"font\":\"\",\"weight\":100,\"uppercase\":false,\"underline\":false,\"italic\":false,\"size\":{\"md\":{\"value\":\"\",\"unit\":\"px\"},\"sm\":{\"value\":\"\",\"unit\":\"px\"},\"xs\":{\"value\":\"\",\"unit\":\"px\"},\"lg\":{\"value\":\"\",\"unit\":\"px\"},\"xl\":{\"value\":\"14\",\"unit\":\"px\"},\"xxl\":{\"value\":\"\",\"unit\":\"px\"}},\"line_height\":{\"xxl\":{\"value\":\"\",\"unit\":\"px\"},\"xl\":{\"value\":\"24\",\"unit\":\"px\"},\"lg\":{\"value\":\"\",\"unit\":\"px\"},\"md\":{\"value\":\"\",\"unit\":\"px\"},\"sm\":{\"value\":\"\",\"unit\":\"px\"},\"xs\":{\"value\":\"\",\"unit\":\"px\"}},\"letter_spacing\":{\"md\":{\"value\":\"\",\"unit\":\"px\"},\"sm\":{\"value\":\"\",\"unit\":\"px\"},\"xs\":{\"value\":\"\",\"unit\":\"px\"},\"lg\":{\"value\":\"\",\"unit\":\"px\"},\"xl\":{\"value\":\"\",\"unit\":\"px\"},\"xxl\":{\"value\":\"\",\"unit\":\"px\"}}},\"instFormId\":\"yLMn1AdF2ySIJmE4AEqpW\",\"boxshadow\":{\"ho\":null,\"vo\":null,\"blur\":null,\"spread\":null,\"color\":\"\",\"inset\":false,\"enabled\":false},\"background_type\":\"none\",\"global_width\":{\"xxl\":\"\",\"xl\":\"58\",\"lg\":\"80\",\"md\":\"\",\"sm\":\"100\",\"xs\":\"100\"}},\"icon\":\"<svg viewBox=\\\"0 0 32 32\\\" xmlns=\\\"http:\\/\\/www.w3.org\\/2000\\/svg\\\"><path d=\\\"M23.055 10.419c0-.885-.717-1.602-1.602-1.602H10.547a1.602 1.602 0 000 3.204h3.825v10.118a1.628 1.628 0 103.256 0V12.02h3.825c.885 0 1.602-.718 1.602-1.602z\\\" fill=\\\"currentColor\\\"\\/><path opacity=\\\".5\\\" fill-rule=\\\"evenodd\\\" clip-rule=\\\"evenodd\\\" d=\\\"M5.18 3.42c-.95 0-1.721.758-1.721 1.693V8.5c0 .668-.55 1.21-1.23 1.21A1.22 1.22 0 011 8.5V5.113C1 2.84 2.872 1 5.18 1h2.951c.68 0 1.23.542 1.23 1.21 0 .668-.55 1.21-1.23 1.21h-2.95zM26.82 28.58c.95 0 1.721-.758 1.721-1.693V23.5c0-.668.55-1.21 1.23-1.21.678 0 1.229.542 1.229 1.21v3.387C31 29.16 29.128 31 26.82 31h-2.951a1.22 1.22 0 01-1.23-1.21c0-.668.55-1.21 1.23-1.21h2.95zM26.82 3.42c.95 0 1.721.758 1.721 1.693V8.5c0 .668.55 1.21 1.23 1.21A1.22 1.22 0 0031 8.5V5.113C31 2.84 29.128 1 26.82 1h-2.951c-.68 0-1.23.542-1.23 1.21 0 .668.55 1.21 1.23 1.21h2.95zM5.18 28.58c-.95 0-1.721-.758-1.721-1.693V23.5c0-.668-.55-1.21-1.23-1.21A1.22 1.22 0 001 23.5v3.387C1 29.16 2.872 31 5.18 31h2.951a1.22 1.22 0 001.23-1.21c0-.668-.55-1.21-1.23-1.21h-2.95z\\\" fill=\\\"currentColor\\\"\\/><\\/svg>\",\"title\":\"Text Block\",\"parent\":false}],\"width\":{\"xxl\":\"50.000000%\",\"xl\":\"50.000000%\",\"lg\":\"50.000000%\",\"md\":\"50.000000%\",\"sm\":\"100%\",\"xs\":\"100%\"}}],\"parent\":false},{\"id\":\"mEbDnv_1gmHkRbGemzzeU\",\"visibility\":true,\"collapse\":false,\"settings\":{\"fit_columns\":{\"xxl\":true,\"xl\":true,\"lg\":true,\"md\":true,\"sm\":false,\"xs\":false},\"background_type\":\"color\",\"background_gradient\":{\"color\":\"#00c6fb\",\"color2\":\"#005bea\",\"deg\":\"45\",\"type\":\"linear\"},\"background_image\":{\"src\":\"\"},\"background_parallax\":\"0\",\"background_repeat\":\"no-repeat\",\"background_size\":\"cover\",\"background_size_custom\":{\"unit\":\"px\"},\"background_attachment\":\"fixed\",\"background_position\":\"0 0\",\"background_position_custom_x\":{\"unit\":\"px\"},\"background_position_custom_y\":{\"unit\":\"px\"},\"external_background_video\":0,\"background_video_ogv\":{\"src\":\"\"},\"video_loop\":1,\"overlay_type\":\"overlay_none\",\"gradient_overlay\":{\"color\":\"rgba(127, 0, 255, 0.8)\",\"color2\":\"rgba(225, 0, 255, 0.7)\",\"deg\":\"45\",\"type\":\"linear\"},\"pattern_overlay\":\"\",\"overlay_pattern_color\":\"\",\"blend_mode\":\"normal\",\"columns_align_center\":0,\"columns_content_alignment\":\"center\",\"fullscreen\":0,\"no_gutter\":0,\"row_width\":{\"unit\":\"px\"},\"row_max_width\":{\"unit\":\"px\"},\"row_min_width\":{\"unit\":\"px\"},\"padding\":{\"xxl\":\"100px 0px 100px 0px\",\"xl\":\"100px 0px 100px 0px\",\"lg\":\"100px 0px 100px 0px\",\"md\":\"100px 0px 100px 0px\",\"sm\":\"100px 0px 100px 0px\",\"xs\":\"70px 0px 40px 0px\"},\"margin\":{\"xxl\":\"0px 0px 0px 0px\",\"xl\":\"0px 0px 0px 0px\",\"lg\":\"0px 0px 0px 0px\",\"md\":\"0px 0px 0px 0px\",\"sm\":\"0px 0px 0px 0px\",\"xs\":\"0px 0px 0px 0px\"},\"row_border\":0,\"row_border_style\":\"solid\",\"row_boxshadow\":{\"ho\":0,\"vo\":0,\"blur\":0,\"spread\":0,\"color\":\"#FFFFFF\",\"inset\":false,\"enabled\":false},\"show_top_shape\":\"\",\"shape_name\":\"clouds-flat\",\"shape_color\":\"#e5e5e5\",\"shape_width\":{\"xxl\":\"\",\"xl\":100,\"lg\":100,\"md\":100,\"sm\":100,\"xs\":100},\"shape_height\":\"\",\"shape_flip\":false,\"shape_invert\":false,\"shape_to_front\":false,\"show_bottom_shape\":\"\",\"bottom_shape_name\":\"clouds-opacity\",\"bottom_shape_color\":\"#e5e5e5\",\"bottom_shape_width\":{\"xl\":100},\"bottom_shape_height\":\"\",\"bottom_shape_flip\":false,\"bottom_shape_invert\":false,\"bottom_shape_to_front\":false,\"heading_selector\":\"h3\",\"title_fontsize\":\"\",\"title_fontweight\":\"\",\"title_position\":\"center\",\"admin_label\":\"\",\"hidden_xs\":\"\",\"hidden_sm\":\"\",\"hidden_md\":\"\",\"enable_animation\":\"1\",\"animationduration\":\"300\",\"animationdelay\":\"0\",\"instFormId\":\"mEbDnv_1gmHkRbGemzzeU\",\"background_color\":\"#f5f5f5\"},\"layout\":\"12\",\"columns\":[{\"id\":\"pi7u8GACbsrxVN57wDAja\",\"class_name\":\"row-column\",\"visibility\":true,\"settings\":{\"background_type\":\"none\",\"background_gradient\":{\"color\":\"#00c6fb\",\"color2\":\"#005bea\",\"deg\":\"45\",\"type\":\"linear\"},\"background_image\":{\"src\":\"\"},\"background_repeat\":\"no-repeat\",\"background_size\":\"cover\",\"background_size_custom\":{\"unit\":\"px\"},\"background_attachment\":\"scroll\",\"background_position\":\"0 0\",\"background_position_custom_x\":{\"unit\":\"px\"},\"background_position_custom_y\":{\"unit\":\"px\"},\"overlay_type\":\"overlay_color\",\"gradient_overlay\":{\"color\":\"rgba(127, 0, 255, 0.8)\",\"color2\":\"rgba(225, 0, 255, 0.7)\",\"deg\":\"45\",\"type\":\"linear\"},\"pattern_overlay\":{\"src\":\"\"},\"overlay_pattern_color\":\"\",\"blend_mode\":\"normal\",\"use_border\":0,\"border_width\":\"\",\"boxshadow\":\"0 0 0 0 #FFFFFF\",\"items_align_center\":0,\"items_content_alignment\":\"center\",\"tablet_order\":\"\",\"mobile_order\":\"\",\"hidden_xs\":\"\",\"hidden_sm\":\"\",\"hidden_md\":\"\",\"enable_animation\":\"1\",\"animationduration\":\"300\",\"animationdelay\":\"0\"},\"addons\":[{\"id\":\"lscaWQxL2LkWN0CHjdudK\",\"name\":\"helixtestimonialpro\",\"visibility\":true,\"settings\":{\"sp_testimonialpro_item\":[{\"title\":\"Nanchel Culy\",\"avatar\":{\"src\":\"images\\/testimonial.png\"},\"message\":\"Helix is a Awesome Framework for Joomla. It\\u2019s able me to easily customize the Joomla Templates Thanks to Helix Team. Really Appreciate it.\"},{\"title\":\"Jony Daku\",\"avatar\":{\"src\":\"images\\/testimonial.png\"},\"message\":\"Helix is a Awesome Framework for Joomla. It\\u2019s able me to easily customize the Joomla Templates Thanks to Helix Team. Really Appreciate it.\"},{\"title\":\"Michel Cattar\",\"avatar\":{\"src\":\"images\\/testimonial.png\"},\"message\":\"Helix is a Awesome Framework for Joomla. It\\u2019s able me to easily customize the Joomla Templates Thanks to Helix Team. Really Appreciate it.\"}],\"global_padding\":{\"xxl\":\"   \",\"xl\":\"   \",\"lg\":\"   \",\"md\":\"   \",\"sm\":\"   \",\"xs\":\"   \"},\"global_margin\":{\"xxl\":\"   \",\"xl\":\"   \",\"lg\":\"   \",\"md\":\"   \",\"sm\":\"   \",\"xs\":\"   \"},\"global_background_type\":\"none\",\"global_background_gradient\":{\"color\":\"#00c6fb\",\"color2\":\"#005bea\",\"deg\":\"45\",\"type\":\"linear\"},\"global_background_image\":{\"src\":\"\"},\"global_background_repeat\":\"no-repeat\",\"global_background_size\":\"cover\",\"global_background_attachment\":\"inherit\",\"global_background_position\":\"50% 50%\",\"global_use_overlay\":0,\"global_overlay_type\":\"overlay_none\",\"global_gradient_overlay\":{\"color\":\"rgba(127, 0, 255, 0.8)\",\"color2\":\"rgba(225, 0, 255, 0.7)\",\"deg\":\"45\",\"type\":\"linear\"},\"global_pattern_overlay\":{\"src\":\"\"},\"global_overlay_pattern_color\":\"\",\"blend_mode\":\"normal\",\"global_user_border\":0,\"global_border_width\":{\"xxl\":\"\",\"xl\":\"\",\"lg\":\"\",\"md\":\"\",\"sm\":\"\",\"xs\":\"\"},\"global_border_radius\":{\"xxl\":\"\",\"xl\":\"\",\"lg\":\"\",\"md\":\"\",\"sm\":\"\",\"xs\":\"\"},\"global_boxshadow\":{\"ho\":0,\"vo\":0,\"blur\":0,\"spread\":0,\"color\":\"#FFFFFF\",\"inset\":false,\"enabled\":false},\"global_use_animation\":0,\"global_animationduration\":\"300\",\"global_animationdelay\":\"0\",\"class\":\"\",\"global_custom_css\":\"\",\"global_custom_position\":0,\"global_seclect_position\":\"relative\",\"global_addon_position_left\":{\"unit\":\"px\"},\"global_addon_position_top\":{\"unit\":\"px\"},\"use_global_width\":\"0\",\"hidden_md\":\"0\",\"hidden_sm\":\"0\",\"hidden_xs\":\"0\",\"acl\":\"\",\"admin_label\":\"\",\"while_scroll_view\":[{\"enable_while_scroll_view\":0,\"scrolling_options\":\"fullpage\",\"on_scroll_actions\":[{\"id\":\"b3fdc1c1e6bfde5942ea\",\"index\":0,\"keyframe\":0,\"name\":\"move\",\"property\":{\"x\":\"0\",\"y\":\"-100\",\"z\":\"0\"},\"range\":{\"max\":500,\"min\":-500,\"stop\":1},\"single\":true,\"title\":\"Move\"},{\"id\":\"936e0225e6dc8edfba7d\",\"index\":1,\"keyframe\":100,\"name\":\"move\",\"property\":{\"x\":0,\"y\":0,\"z\":0},\"range\":{\"max\":500,\"min\":-500,\"stop\":1},\"single\":true,\"title\":\"Move\"}],\"transition_origin_x\":\"center\",\"transition_origin_y\":\"center\",\"enable_tablet\":0,\"enable_mobile\":0}],\"mouse_movement\":[{\"enable_tilt_effect\":0,\"mouse_tilt_direction\":\"direct\",\"mouse_tilt_speed\":\"1\",\"mouse_tilt_max\":\"15\",\"enable_tablet\":0,\"enable_mobile\":0}],\"autoplay\":1,\"interval\":5,\"speed\":600,\"controls\":false,\"arrow_controls\":true,\"arrow_icon\":\"bottom-left\",\"arrow_margin\":{\"xxl\":\"5px 5px 0px 5px\",\"xl\":\"5px 5px 0px 5px\",\"lg\":\"5px 5px 0px 5px\",\"md\":\"5px 5px 0px 5px\",\"sm\":\"5px 5px 0px 5px\",\"xs\":\"5px 5px 0px 5px\"},\"tab_arrows\":\"normal\",\"arrow_color\":\"\",\"arrow_border_color\":\"\",\"avatar_width\":{\"xxl\":\"76\",\"xl\":\"76\",\"lg\":\"76\",\"md\":\"76\",\"sm\":\"76\",\"xs\":\"76\"},\"avatar_shape\":\"sppb-avatar-circle\",\"avatar_on_top\":1,\"show_quote\":false,\"icon_size\":{\"xxl\":48,\"xl\":48,\"lg\":48,\"md\":48,\"sm\":48,\"xs\":48},\"icon_color\":\"#EDEEF2\",\"content_alignment\":{\"xxl\":\"center\",\"xl\":\"center\",\"lg\":\"center\",\"md\":\"center\",\"sm\":\"center\",\"xs\":\"center\"},\"instFormId\":\"lscaWQxL2LkWN0CHjdudK\",\"name_typography\":{\"font\":\"\",\"weight\":700,\"uppercase\":false,\"underline\":false,\"italic\":false,\"size\":{\"md\":{\"value\":\"\",\"unit\":\"px\"},\"sm\":{\"value\":\"\",\"unit\":\"px\"},\"xs\":{\"value\":\"\",\"unit\":\"px\"},\"lg\":{\"value\":\"\",\"unit\":\"px\"},\"xl\":{\"value\":\"14\",\"unit\":\"px\"},\"xxl\":{\"value\":\"\",\"unit\":\"px\"}},\"line_height\":{\"xxl\":{\"value\":\"\",\"unit\":\"px\"},\"xl\":{\"value\":\"24\",\"unit\":\"px\"},\"lg\":{\"value\":\"\",\"unit\":\"px\"},\"md\":{\"value\":\"\",\"unit\":\"px\"},\"sm\":{\"value\":\"\",\"unit\":\"px\"},\"xs\":{\"value\":\"\",\"unit\":\"px\"}},\"letter_spacing\":{\"md\":{\"value\":\"\",\"unit\":\"px\"},\"sm\":{\"value\":\"\",\"unit\":\"px\"},\"xs\":{\"value\":\"\",\"unit\":\"px\"},\"lg\":{\"value\":\"\",\"unit\":\"px\"},\"xl\":{\"value\":\"\",\"unit\":\"px\"},\"xxl\":{\"value\":\"\",\"unit\":\"px\"}}},\"content_typography\":{\"font\":\"\",\"weight\":\"\",\"uppercase\":false,\"underline\":false,\"italic\":false,\"size\":{\"md\":{\"value\":\"\",\"unit\":\"px\"},\"sm\":{\"value\":\"\",\"unit\":\"px\"},\"xs\":{\"value\":\"\",\"unit\":\"px\"},\"lg\":{\"value\":\"\",\"unit\":\"px\"},\"xl\":{\"value\":\"18\",\"unit\":\"px\"},\"xxl\":{\"value\":\"\",\"unit\":\"px\"}},\"line_height\":{\"xxl\":{\"value\":\"\",\"unit\":\"px\"},\"xl\":{\"value\":\"26\",\"unit\":\"px\"},\"lg\":{\"value\":\"\",\"unit\":\"px\"},\"md\":{\"value\":\"\",\"unit\":\"px\"},\"sm\":{\"value\":\"\",\"unit\":\"px\"},\"xs\":{\"value\":\"\",\"unit\":\"px\"}},\"letter_spacing\":{\"md\":{\"value\":\"\",\"unit\":\"px\"},\"sm\":{\"value\":\"\",\"unit\":\"px\"},\"xs\":{\"value\":\"\",\"unit\":\"px\"},\"lg\":{\"value\":\"\",\"unit\":\"px\"},\"xl\":{\"value\":\"\",\"unit\":\"px\"},\"xxl\":{\"value\":\"\",\"unit\":\"px\"}}},\"arrow_height\":\"28\",\"arrow_width\":\"28\",\"arrow_font_size\":\"14\",\"arrow_border_width\":\"\"},\"icon\":\"<svg viewBox=\\\"0 0 32 32\\\" xmlns=\\\"http:\\/\\/www.w3.org\\/2000\\/svg\\\"><path d=\\\"M12 3.329c0 .507.412.92.92.92h1.039v.394c0 .704-.485 1.3-1.144 1.464-.197.049-.364.21-.364.412V7.65c0 .203.165.37.367.348a3.384 3.384 0 003.007-3.355V.92a.92.92 0 00-.92-.919H12.92A.92.92 0 0012 .92v2.409zM16.8 3.329c0 .507.412.92.92.92h1.039v.394c0 .704-.485 1.3-1.144 1.464-.197.049-.364.21-.364.412V7.65c0 .203.165.37.367.348a3.384 3.384 0 003.007-3.355V.92a.92.92 0 00-.92-.919H17.72a.92.92 0 00-.92.92v2.409z\\\" fill=\\\"currentColor\\\"\\/><path opacity=\\\".5\\\" fill-rule=\\\"evenodd\\\" clip-rule=\\\"evenodd\\\" d=\\\"M2 13c0-.552.464-1 1.037-1h25.926c.573 0 1.037.448 1.037 1s-.464 1-1.037 1H3.037C2.464 14 2 13.552 2 13zM2 17c0-.552.464-1 1.037-1h25.926c.573 0 1.037.448 1.037 1s-.464 1-1.037 1H3.037C2.464 18 2 17.552 2 17zM10 21a1 1 0 011-1h10a1 1 0 110 2H11a1 1 0 01-1-1z\\\" fill=\\\"currentColor\\\"\\/><circle opacity=\\\".5\\\" cx=\\\"10.5\\\" cy=\\\"30.5\\\" r=\\\"1.5\\\" fill=\\\"currentColor\\\"\\/><circle opacity=\\\".5\\\" cx=\\\"22.5\\\" cy=\\\"30.5\\\" r=\\\"1.5\\\" fill=\\\"currentColor\\\"\\/><circle cx=\\\"16.5\\\" cy=\\\"30.5\\\" r=\\\"1.5\\\" fill=\\\"currentColor\\\"\\/><\\/svg>\",\"title\":\"Helix Testimonial Pro\",\"parent\":false}],\"width\":{\"xxl\":\"100%\",\"xl\":\"100%\",\"lg\":\"100%\",\"md\":\"100%\",\"sm\":\"100%\",\"xs\":\"100%\"}}],\"parent\":false},{\"layout\":\"3,3,3,3\",\"settings\":{\"title\":\"\",\"heading_selector\":\"h1\",\"title_fontsize\":\"\",\"title_text_color\":\"\",\"title_margin_top\":\"\",\"title_margin_bottom\":\"\",\"subtitle\":\"\",\"subtitle_fontsize\":\"\",\"title_position\":\"sppb-text-center\",\"background_color\":\"\",\"color\":\"\",\"background_image\":\"images\\/client-bg.png\",\"background_repeat\":\"no-repeat\",\"background_size\":\"cover\",\"background_attachment\":\"inherit\",\"background_position\":\"50% 50%\",\"background_video\":0,\"background_video_mp4\":\"\",\"background_video_ogv\":\"\",\"id\":\"\",\"class\":\"\",\"padding\":{\"xxl\":\"\",\"xl\":\"70px 0px 70px 0px\",\"lg\":\"70px 0px 70px 0px\",\"md\":\"70px 0px 70px 0px\",\"sm\":\"   \",\"xs\":\"   \"},\"margin\":{\"xxl\":\"\",\"xl\":\"0px   \",\"lg\":\"0px   \",\"md\":\"0px   \",\"sm\":\"   \",\"xs\":\"   \"},\"fullscreen\":0,\"instFormId\":1481002197,\"columns_align_center\":0,\"no_gutter\":0,\"hidden_xs\":0,\"hidden_sm\":0,\"hidden_md\":0,\"fit_columns\":{\"xxl\":true,\"xl\":true,\"lg\":true,\"md\":true,\"sm\":false,\"xs\":false}},\"id\":1481002197,\"visibility\":1,\"columns\":[{\"class_name\":\"col-sm-3\",\"settings\":{\"background\":\"\",\"color\":\"\",\"padding\":\"\",\"animation\":\"zoomIn\",\"animationduration\":400,\"animationdelay\":300,\"class\":\"\"},\"id\":1481002198,\"addons\":[{\"name\":\"image\",\"title\":\"Image\",\"id\":1481002199,\"settings\":{\"title\":\"\",\"heading_selector\":\"h3\",\"title_fontsize\":\"\",\"title_fontweight\":\"\",\"title_text_color\":\"\",\"title_margin_top\":\"\",\"title_margin_bottom\":\"\",\"image\":\"images\\/client1.png\",\"position\":\"sppb-text-center\",\"link\":\"http:\\/\\/www.joomshaper.com\\/\",\"target\":\"\",\"class\":\"\"},\"visibility\":1,\"icon\":\"<svg viewBox=\\\"0 0 32 32\\\" xmlns=\\\"http:\\/\\/www.w3.org\\/2000\\/svg\\\"><path opacity=\\\".5\\\" fill-rule=\\\"evenodd\\\" clip-rule=\\\"evenodd\\\" d=\\\"M31.288 17.393l-9.718 5.9a5 5 0 01-5.8-.435l-3.622-3.024a3 3 0 00-3.583-.197l-6.781 4.504-1.106-1.666 6.78-4.504a5 5 0 015.971.327l3.623 3.025a3 3 0 003.48.261l9.718-5.9 1.038 1.71z\\\" fill=\\\"currentColor\\\"\\/><path opacity=\\\".5\\\" fill-rule=\\\"evenodd\\\" clip-rule=\\\"evenodd\\\" d=\\\"M19.077 10.154a2.077 2.077 0 100 4.154 2.077 2.077 0 000-4.154zM15 12.23a4.077 4.077 0 118.154 0 4.077 4.077 0 01-8.154 0z\\\" fill=\\\"currentColor\\\"\\/><path fill-rule=\\\"evenodd\\\" clip-rule=\\\"evenodd\\\" d=\\\"M29 4H3a1 1 0 00-1 1v22.308a1 1 0 001 1h26a1 1 0 001-1V5a1 1 0 00-1-1zM3 2a3 3 0 00-3 3v22.308a3 3 0 003 3h26a3 3 0 003-3V5a3 3 0 00-3-3H3z\\\" fill=\\\"currentColor\\\"\\/><\\/svg>\"}],\"visibility\":1,\"width\":{\"xxl\":\"25%\",\"xl\":\"25%\",\"lg\":\"25%\",\"md\":\"25%\",\"sm\":\"100%\",\"xs\":\"100%\"}},{\"class_name\":\"col-sm-3\",\"settings\":{\"background\":\"\",\"color\":\"\",\"padding\":\"\",\"animation\":\"zoomIn\",\"animationduration\":400,\"animationdelay\":450,\"class\":\"\"},\"id\":1481002200,\"addons\":[{\"name\":\"image\",\"title\":\"Image\",\"id\":1481002201,\"settings\":{\"title\":\"\",\"heading_selector\":\"h3\",\"title_fontsize\":\"\",\"title_fontweight\":\"\",\"title_text_color\":\"\",\"title_margin_top\":\"\",\"title_margin_bottom\":\"\",\"image\":\"images\\/client2.png\",\"position\":\"sppb-text-center\",\"link\":\"http:\\/\\/www.joomshaper.com\\/\",\"target\":\"\",\"class\":\"\"},\"visibility\":1,\"icon\":\"<svg viewBox=\\\"0 0 32 32\\\" xmlns=\\\"http:\\/\\/www.w3.org\\/2000\\/svg\\\"><path opacity=\\\".5\\\" fill-rule=\\\"evenodd\\\" clip-rule=\\\"evenodd\\\" d=\\\"M31.288 17.393l-9.718 5.9a5 5 0 01-5.8-.435l-3.622-3.024a3 3 0 00-3.583-.197l-6.781 4.504-1.106-1.666 6.78-4.504a5 5 0 015.971.327l3.623 3.025a3 3 0 003.48.261l9.718-5.9 1.038 1.71z\\\" fill=\\\"currentColor\\\"\\/><path opacity=\\\".5\\\" fill-rule=\\\"evenodd\\\" clip-rule=\\\"evenodd\\\" d=\\\"M19.077 10.154a2.077 2.077 0 100 4.154 2.077 2.077 0 000-4.154zM15 12.23a4.077 4.077 0 118.154 0 4.077 4.077 0 01-8.154 0z\\\" fill=\\\"currentColor\\\"\\/><path fill-rule=\\\"evenodd\\\" clip-rule=\\\"evenodd\\\" d=\\\"M29 4H3a1 1 0 00-1 1v22.308a1 1 0 001 1h26a1 1 0 001-1V5a1 1 0 00-1-1zM3 2a3 3 0 00-3 3v22.308a3 3 0 003 3h26a3 3 0 003-3V5a3 3 0 00-3-3H3z\\\" fill=\\\"currentColor\\\"\\/><\\/svg>\"}],\"visibility\":1,\"width\":{\"xxl\":\"25%\",\"xl\":\"25%\",\"lg\":\"25%\",\"md\":\"25%\",\"sm\":\"100%\",\"xs\":\"100%\"}},{\"class_name\":\"col-sm-3\",\"settings\":{\"background\":\"\",\"color\":\"\",\"padding\":\"\",\"animation\":\"zoomIn\",\"animationduration\":400,\"animationdelay\":600,\"class\":\"\"},\"id\":1481002202,\"addons\":[{\"name\":\"image\",\"title\":\"Image\",\"id\":1481002203,\"settings\":{\"title\":\"\",\"heading_selector\":\"h3\",\"title_fontsize\":\"\",\"title_fontweight\":\"\",\"title_text_color\":\"\",\"title_margin_top\":\"\",\"title_margin_bottom\":\"\",\"image\":\"images\\/client3.png\",\"position\":\"sppb-text-center\",\"link\":\"http:\\/\\/www.joomshaper.com\\/\",\"target\":\"\",\"class\":\"\"},\"visibility\":1,\"icon\":\"<svg viewBox=\\\"0 0 32 32\\\" xmlns=\\\"http:\\/\\/www.w3.org\\/2000\\/svg\\\"><path opacity=\\\".5\\\" fill-rule=\\\"evenodd\\\" clip-rule=\\\"evenodd\\\" d=\\\"M31.288 17.393l-9.718 5.9a5 5 0 01-5.8-.435l-3.622-3.024a3 3 0 00-3.583-.197l-6.781 4.504-1.106-1.666 6.78-4.504a5 5 0 015.971.327l3.623 3.025a3 3 0 003.48.261l9.718-5.9 1.038 1.71z\\\" fill=\\\"currentColor\\\"\\/><path opacity=\\\".5\\\" fill-rule=\\\"evenodd\\\" clip-rule=\\\"evenodd\\\" d=\\\"M19.077 10.154a2.077 2.077 0 100 4.154 2.077 2.077 0 000-4.154zM15 12.23a4.077 4.077 0 118.154 0 4.077 4.077 0 01-8.154 0z\\\" fill=\\\"currentColor\\\"\\/><path fill-rule=\\\"evenodd\\\" clip-rule=\\\"evenodd\\\" d=\\\"M29 4H3a1 1 0 00-1 1v22.308a1 1 0 001 1h26a1 1 0 001-1V5a1 1 0 00-1-1zM3 2a3 3 0 00-3 3v22.308a3 3 0 003 3h26a3 3 0 003-3V5a3 3 0 00-3-3H3z\\\" fill=\\\"currentColor\\\"\\/><\\/svg>\"}],\"visibility\":1,\"width\":{\"xxl\":\"25%\",\"xl\":\"25%\",\"lg\":\"25%\",\"md\":\"25%\",\"sm\":\"100%\",\"xs\":\"100%\"}},{\"class_name\":\"col-sm-3 active-column-parent\",\"settings\":{\"background\":\"\",\"color\":\"\",\"padding\":\"\",\"animation\":\"zoomIn\",\"animationduration\":400,\"animationdelay\":750,\"class\":\"\"},\"id\":1481002204,\"addons\":[{\"name\":\"image\",\"title\":\"Image\",\"id\":1481002205,\"settings\":{\"title\":\"\",\"heading_selector\":\"h3\",\"title_fontsize\":\"\",\"title_fontweight\":\"\",\"title_text_color\":\"\",\"title_margin_top\":\"\",\"title_margin_bottom\":\"\",\"image\":\"images\\/client4.png\",\"position\":\"sppb-text-center\",\"link\":\"http:\\/\\/www.joomshaper.com\\/\",\"target\":\"\",\"class\":\"\"},\"visibility\":1,\"icon\":\"<svg viewBox=\\\"0 0 32 32\\\" xmlns=\\\"http:\\/\\/www.w3.org\\/2000\\/svg\\\"><path opacity=\\\".5\\\" fill-rule=\\\"evenodd\\\" clip-rule=\\\"evenodd\\\" d=\\\"M31.288 17.393l-9.718 5.9a5 5 0 01-5.8-.435l-3.622-3.024a3 3 0 00-3.583-.197l-6.781 4.504-1.106-1.666 6.78-4.504a5 5 0 015.971.327l3.623 3.025a3 3 0 003.48.261l9.718-5.9 1.038 1.71z\\\" fill=\\\"currentColor\\\"\\/><path opacity=\\\".5\\\" fill-rule=\\\"evenodd\\\" clip-rule=\\\"evenodd\\\" d=\\\"M19.077 10.154a2.077 2.077 0 100 4.154 2.077 2.077 0 000-4.154zM15 12.23a4.077 4.077 0 118.154 0 4.077 4.077 0 01-8.154 0z\\\" fill=\\\"currentColor\\\"\\/><path fill-rule=\\\"evenodd\\\" clip-rule=\\\"evenodd\\\" d=\\\"M29 4H3a1 1 0 00-1 1v22.308a1 1 0 001 1h26a1 1 0 001-1V5a1 1 0 00-1-1zM3 2a3 3 0 00-3 3v22.308a3 3 0 003 3h26a3 3 0 003-3V5a3 3 0 00-3-3H3z\\\" fill=\\\"currentColor\\\"\\/><\\/svg>\"}],\"visibility\":1,\"width\":{\"xxl\":\"25%\",\"xl\":\"25%\",\"lg\":\"25%\",\"md\":\"25%\",\"sm\":\"100%\",\"xs\":\"100%\"}}],\"collapse\":\"\",\"title\":\"Row\"}]',NULL,'com_sppagebuilder','page',0,0,1,0,1,0,'2015-01-22 07:12:35',675,'2022-01-05 12:10:06',675,0,'0000-00-00 00:00:00','[]','','','','*',101,'',''),
(6,222,'Portfolio','[{\"id\":\"vI55no3i-nz2C2TDFfJtA\",\"visibility\":true,\"collapse\":false,\"settings\":{\"fit_columns\":{\"xxl\":true,\"xl\":true,\"lg\":true,\"md\":true,\"sm\":false,\"xs\":false},\"background_type\":\"image\",\"background_gradient\":{\"color\":\"#00c6fb\",\"color2\":\"#005bea\",\"deg\":\"45\",\"type\":\"linear\"},\"background_image\":{\"src\":\"images\\/featured-bg2.jpg\"},\"background_parallax\":\"0\",\"background_repeat\":\"no-repeat\",\"background_size\":\"cover\",\"background_size_custom\":{\"unit\":\"px\"},\"background_attachment\":\"scroll\",\"background_position\":\"50% 50%\",\"background_position_custom_x\":{\"unit\":\"px\"},\"background_position_custom_y\":{\"unit\":\"px\"},\"external_background_video\":0,\"background_video_ogv\":{\"src\":\"\"},\"video_loop\":1,\"overlay_type\":\"overlay_none\",\"gradient_overlay\":{\"color\":\"rgba(127, 0, 255, 0.8)\",\"color2\":\"rgba(225, 0, 255, 0.7)\",\"deg\":\"45\",\"type\":\"linear\"},\"pattern_overlay\":\"\",\"overlay_pattern_color\":\"\",\"blend_mode\":\"normal\",\"columns_align_center\":0,\"columns_content_alignment\":\"center\",\"fullscreen\":0,\"no_gutter\":0,\"row_width\":{\"unit\":\"px\"},\"row_max_width\":{\"unit\":\"px\"},\"row_min_width\":{\"unit\":\"px\"},\"padding\":{\"xxl\":\"170px 0px 170px 0px\",\"xl\":\"170px 0px 170px 0px\",\"lg\":\"150px 0px 150px 0px\",\"md\":\"130px 0px 130px 0px\",\"sm\":\"100px 0px 100px 0px\",\"xs\":\"100px 0px 100px 0px\"},\"margin\":{\"xxl\":\"0px 0px 0px 0px\",\"xl\":\"0px 0px 0px 0px\",\"lg\":\"0px 0px 0px 0px\",\"md\":\"0px 0px 0px 0px\",\"sm\":\"0px 0px 0px 0px\",\"xs\":\"0px 0px 0px 0px\"},\"row_border\":0,\"row_border_style\":\"solid\",\"row_boxshadow\":{\"ho\":0,\"vo\":0,\"blur\":0,\"spread\":0,\"color\":\"#FFFFFF\",\"inset\":false,\"enabled\":false},\"show_top_shape\":\"\",\"shape_name\":\"clouds-flat\",\"shape_color\":\"#e5e5e5\",\"shape_width\":{\"xxl\":\"\",\"xl\":100,\"lg\":100,\"md\":100,\"sm\":100,\"xs\":100},\"shape_height\":\"\",\"shape_flip\":false,\"shape_invert\":false,\"shape_to_front\":false,\"show_bottom_shape\":\"\",\"bottom_shape_name\":\"clouds-opacity\",\"bottom_shape_color\":\"#e5e5e5\",\"bottom_shape_width\":{\"xl\":100},\"bottom_shape_height\":\"\",\"bottom_shape_flip\":false,\"bottom_shape_invert\":false,\"bottom_shape_to_front\":false,\"heading_selector\":\"h3\",\"title_fontsize\":\"\",\"title_fontweight\":\"\",\"title_position\":\"center\",\"admin_label\":\"\",\"hidden_xs\":\"\",\"hidden_sm\":\"\",\"hidden_md\":\"\",\"enable_animation\":\"1\",\"animationduration\":\"300\",\"animationdelay\":\"0\",\"instFormId\":\"vI55no3i-nz2C2TDFfJtA\"},\"layout\":\"12\",\"columns\":[{\"id\":\"RqS_mq3U6Gd7W3in7f_l2\",\"class_name\":\"row-column\",\"visibility\":true,\"settings\":{\"background_type\":\"none\",\"background_gradient\":{\"color\":\"#00c6fb\",\"color2\":\"#005bea\",\"deg\":\"45\",\"type\":\"linear\"},\"background_image\":{\"src\":\"\"},\"background_repeat\":\"no-repeat\",\"background_size\":\"cover\",\"background_size_custom\":{\"unit\":\"px\"},\"background_attachment\":\"scroll\",\"background_position\":\"0 0\",\"background_position_custom_x\":{\"unit\":\"px\"},\"background_position_custom_y\":{\"unit\":\"px\"},\"overlay_type\":\"overlay_color\",\"gradient_overlay\":{\"color\":\"rgba(127, 0, 255, 0.8)\",\"color2\":\"rgba(225, 0, 255, 0.7)\",\"deg\":\"45\",\"type\":\"linear\"},\"pattern_overlay\":{\"src\":\"\"},\"overlay_pattern_color\":\"\",\"blend_mode\":\"normal\",\"use_border\":0,\"border_width\":\"\",\"boxshadow\":\"0 0 0 0 #FFFFFF\",\"items_align_center\":0,\"items_content_alignment\":\"center\",\"tablet_order\":\"\",\"mobile_order\":\"\",\"hidden_xs\":\"\",\"hidden_sm\":\"\",\"hidden_md\":\"\",\"enable_animation\":\"1\",\"animationduration\":\"300\",\"animationdelay\":\"0\"},\"addons\":[{\"id\":\"tz_zYDkWAwW-PyJBh0Ev4\",\"name\":\"feature\",\"visibility\":true,\"settings\":{\"icon_boxshadow\":\"0 0 0 0 #ffffff\",\"addon_hover_boxshadow\":\"0 0 0 0 #ffffff\",\"global_padding\":\"\",\"global_margin\":\"\",\"global_background_type\":\"none\",\"global_background_gradient\":{\"color\":\"#00c6fb\",\"color2\":\"#005bea\",\"deg\":\"45\",\"type\":\"linear\"},\"global_background_image\":{\"src\":\"\"},\"global_background_repeat\":\"no-repeat\",\"global_background_size\":\"cover\",\"global_background_attachment\":\"inherit\",\"global_background_position\":\"50% 50%\",\"global_use_overlay\":0,\"global_overlay_type\":\"overlay_none\",\"global_gradient_overlay\":{\"color\":\"rgba(127, 0, 255, 0.8)\",\"color2\":\"rgba(225, 0, 255, 0.7)\",\"deg\":\"45\",\"type\":\"linear\"},\"global_pattern_overlay\":{\"src\":\"\"},\"global_overlay_pattern_color\":\"\",\"blend_mode\":\"normal\",\"global_user_border\":0,\"global_border_width\":{\"xxl\":\"\",\"xl\":\"\",\"lg\":\"\",\"md\":\"\",\"sm\":\"\",\"xs\":\"\"},\"global_border_radius\":{\"xxl\":\"\",\"xl\":\"\",\"lg\":\"\",\"md\":\"\",\"sm\":\"\",\"xs\":\"\"},\"global_boxshadow\":\"0 0 0 0 #FFFFFF\",\"global_use_animation\":0,\"global_animationduration\":\"300\",\"global_animationdelay\":\"0\",\"class\":\"\",\"global_custom_css\":\"\",\"global_custom_position\":0,\"global_seclect_position\":\"relative\",\"global_addon_position_left\":{\"unit\":\"px\"},\"global_addon_position_top\":{\"unit\":\"px\"},\"use_global_width\":\"0\",\"hidden_md\":\"0\",\"hidden_sm\":\"0\",\"hidden_xs\":\"0\",\"acl\":\"\",\"admin_label\":\"\",\"while_scroll_view\":[{\"enable_while_scroll_view\":0,\"scrolling_options\":\"fullpage\",\"on_scroll_actions\":[{\"id\":\"b3fdc1c1e6bfde5942ea\",\"index\":0,\"keyframe\":0,\"name\":\"move\",\"property\":{\"x\":\"0\",\"y\":\"-100\",\"z\":\"0\"},\"range\":{\"max\":500,\"min\":-500,\"stop\":1},\"single\":true,\"title\":\"Move\"},{\"id\":\"936e0225e6dc8edfba7d\",\"index\":1,\"keyframe\":100,\"name\":\"move\",\"property\":{\"x\":0,\"y\":0,\"z\":0},\"range\":{\"max\":500,\"min\":-500,\"stop\":1},\"single\":true,\"title\":\"Move\"}],\"transition_origin_x\":\"center\",\"transition_origin_y\":\"center\",\"enable_tablet\":0,\"enable_mobile\":0}],\"mouse_movement\":[{\"enable_tilt_effect\":0,\"mouse_tilt_direction\":\"direct\",\"mouse_tilt_speed\":\"1\",\"mouse_tilt_max\":\"15\",\"enable_tablet\":0,\"enable_mobile\":0}],\"title\":\"FREE JOOMLA TEMPLATE\",\"heading_selector\":\"h1\",\"text\":\"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore. sed do eiusmod tempor incididunt ut labore et dolore\",\"feature_type\":\"image\",\"title_position\":\"\",\"icon_name\":\"fas fa-trophy\",\"feature_image\":{\"src\":\"\",\"height\":\"\",\"width\":\"\"},\"feature_image_alt\":\"\",\"feature_image_width\":{\"xl\":50},\"icon_size\":{\"xxl\":36,\"xl\":36,\"lg\":36,\"md\":36,\"sm\":36,\"xs\":36},\"icon_color\":\"#3366FF\",\"url_appear\":\"title\",\"btn_type\":\"primary\",\"btn_appearance\":\"\",\"btn_shape\":\"rounded\",\"link_btn_padding_bottom\":\"\",\"btn_size\":\"lg\",\"button_padding\":{\"xxl\":\"8px 22px 10px 22px\",\"xl\":\"8px 22px 10px 22px\",\"lg\":\"8px 22px 10px 22px\",\"md\":\"8px 22px 10px 22px\",\"sm\":\"8px 22px 10px 22px\",\"xs\":\"8px 22px 10px 22px\"},\"btn_block\":\"\",\"button_margin\":{\"xxl\":\"30px 0px 0px 0px\",\"xl\":\"30px 0px 0px 0px\",\"lg\":\"30px 0px 0px 0px\",\"md\":\"30px 0px 0px 0px\",\"sm\":\"30px 0px 0px 0px\",\"xs\":\"30px 0px 0px 0px\"},\"btn_icon_position\":\"left\",\"btn_color\":\"#FFFFFF\",\"btn_background_color\":\"#3366FF\",\"btn_background_gradient\":{\"color\":\"#3366FF\",\"color2\":\"#0037DD\",\"deg\":\"45\",\"type\":\"linear\"},\"link_btn_border_color\":\"\",\"btn_color_hover\":\"#FFFFFF\",\"btn_background_color_hover\":\"#0037DD\",\"btn_background_gradient_hover\":{\"color\":\"#0037DD\",\"color2\":\"#3366FF\",\"deg\":\"45\",\"type\":\"linear\"},\"link_btn_hover_color\":\"\",\"link_btn_border_hover_color\":\"\",\"alignment\":{\"xxl\":\"center\",\"xl\":\"center\",\"lg\":\"center\",\"md\":\"center\",\"sm\":\"center\",\"xs\":\"center\"},\"text_padding\":{\"xxl\":\"   \",\"xl\":\"   \",\"lg\":\"   \",\"md\":\"   \",\"sm\":\"   \",\"xs\":\"   \"},\"icon_padding\":{\"xxl\":\"   \",\"xl\":\"   \",\"lg\":\"   \",\"md\":\"   \",\"sm\":\"   \",\"xs\":\"   \"},\"feature_image_margin\":{\"xxl\":\"   \",\"xl\":\"   \",\"lg\":\"   \",\"md\":\"   \",\"sm\":\"   \",\"xs\":\"   \"},\"btn_text\":\"Download Now!\",\"title_typography\":{\"font\":\"\",\"weight\":900,\"uppercase\":false,\"underline\":false,\"italic\":false,\"size\":{\"md\":{\"value\":\"60\",\"unit\":\"px\"},\"sm\":{\"value\":\"50\",\"unit\":\"px\"},\"xs\":{\"value\":\"40\",\"unit\":\"px\"},\"lg\":{\"value\":\"64\",\"unit\":\"px\"},\"xl\":{\"value\":\"72\",\"unit\":\"px\"},\"xxl\":{\"value\":\"\",\"unit\":\"px\"}},\"line_height\":{\"xxl\":{\"value\":\"\",\"unit\":\"px\"},\"xl\":{\"value\":\"72\",\"unit\":\"px\"},\"lg\":{\"value\":\"64\",\"unit\":\"px\"},\"md\":{\"value\":\"60\",\"unit\":\"px\"},\"sm\":{\"value\":\"50\",\"unit\":\"px\"},\"xs\":{\"value\":\"40\",\"unit\":\"px\"}},\"letter_spacing\":{\"md\":{\"value\":\"\",\"unit\":\"px\"},\"sm\":{\"value\":\"\",\"unit\":\"px\"},\"xs\":{\"value\":\"\",\"unit\":\"px\"},\"lg\":{\"value\":\"\",\"unit\":\"px\"},\"xl\":{\"value\":\"\",\"unit\":\"px\"},\"xxl\":{\"value\":\"\",\"unit\":\"px\"}}},\"content_typography\":{\"font\":\"\",\"weight\":300,\"uppercase\":false,\"underline\":false,\"italic\":false,\"size\":{\"md\":{\"value\":\"\",\"unit\":\"px\"},\"sm\":{\"value\":\"\",\"unit\":\"px\"},\"xs\":{\"value\":\"\",\"unit\":\"px\"},\"lg\":{\"value\":\"\",\"unit\":\"px\"},\"xl\":{\"value\":\"18\",\"unit\":\"px\"},\"xxl\":{\"value\":\"\",\"unit\":\"px\"}},\"line_height\":{\"xxl\":{\"value\":\"\",\"unit\":\"px\"},\"xl\":{\"value\":\"26\",\"unit\":\"px\"},\"lg\":{\"value\":\"\",\"unit\":\"px\"},\"md\":{\"value\":\"\",\"unit\":\"px\"},\"sm\":{\"value\":\"\",\"unit\":\"px\"},\"xs\":{\"value\":\"\",\"unit\":\"px\"}},\"letter_spacing\":{\"md\":{\"value\":\"\",\"unit\":\"px\"},\"sm\":{\"value\":\"\",\"unit\":\"px\"},\"xs\":{\"value\":\"\",\"unit\":\"px\"},\"lg\":{\"value\":\"\",\"unit\":\"px\"},\"xl\":{\"value\":\"\",\"unit\":\"px\"},\"xxl\":{\"value\":\"\",\"unit\":\"px\"}}},\"title_margin_top\":{\"xxl\":\"\",\"xl\":\"0\",\"lg\":\"\",\"md\":\"\",\"sm\":\"\",\"xs\":\"\",\"unit\":\"px\"},\"title_margin_bottom\":{\"xxl\":\"\",\"xl\":\"20\",\"lg\":\"\",\"md\":\"\",\"sm\":\"\",\"xs\":\"\"},\"title_text_color\":\"#ffffff\",\"addon_color\":\"#ffffff\",\"btn_typography\":{\"font\":\"\",\"weight\":400,\"uppercase\":false,\"underline\":false,\"italic\":false,\"size\":{\"md\":{\"value\":\"\",\"unit\":\"px\"},\"sm\":{\"value\":\"\",\"unit\":\"px\"},\"xs\":{\"value\":\"\",\"unit\":\"px\"},\"lg\":{\"value\":\"\",\"unit\":\"px\"},\"xl\":{\"value\":\"\",\"unit\":\"px\"},\"xxl\":{\"value\":\"\",\"unit\":\"px\"}},\"line_height\":{\"xxl\":{\"value\":\"\",\"unit\":\"px\"},\"xl\":{\"value\":\"\",\"unit\":\"px\"},\"lg\":{\"value\":\"\",\"unit\":\"px\"},\"md\":{\"value\":\"\",\"unit\":\"px\"},\"sm\":{\"value\":\"\",\"unit\":\"px\"},\"xs\":{\"value\":\"\",\"unit\":\"px\"}},\"letter_spacing\":{\"md\":{\"value\":\"\",\"unit\":\"px\"},\"sm\":{\"value\":\"\",\"unit\":\"px\"},\"xs\":{\"value\":\"\",\"unit\":\"px\"},\"lg\":{\"value\":\"\",\"unit\":\"px\"},\"xl\":{\"value\":\"\",\"unit\":\"px\"},\"xxl\":{\"value\":\"\",\"unit\":\"px\"}}},\"btn_url\":{\"url\":\"https:\\/\\/www.joomshaper.com\\/helix\",\"type\":\"url\",\"new_tab\":false,\"nofollow\":false}},\"icon\":\"<svg viewBox=\\\"0 0 32 32\\\" xmlns=\\\"http:\\/\\/www.w3.org\\/2000\\/svg\\\"><path opacity=\\\".5\\\" fill-rule=\\\"evenodd\\\" clip-rule=\\\"evenodd\\\" d=\\\"M29 26a1 1 0 01-1 1H4a1 1 0 110-2h24a1 1 0 011 1zM24 31a1 1 0 01-1 1H8a1 1 0 110-2h15a1 1 0 011 1z\\\" fill=\\\"currentColor\\\"\\/><path fill-rule=\\\"evenodd\\\" clip-rule=\\\"evenodd\\\" d=\\\"M16.458 0c.423 0 .81.24.996.62l2.63 5.327 5.882.86a1.111 1.111 0 01.614 1.895l-4.255 4.144 1.005 5.855a1.111 1.111 0 01-1.613 1.171l-5.259-2.765-5.26 2.765a1.111 1.111 0 01-1.611-1.17l1.004-5.856-4.255-4.144a1.111 1.111 0 01.614-1.895l5.882-.86L15.462.62c.187-.379.573-.619.996-.619zm0 3.621l-1.892 3.833a1.111 1.111 0 01-.836.608l-4.232.618 3.062 2.982c.262.255.382.623.32.984l-.723 4.211 3.784-1.99c.324-.17.71-.17 1.034 0l3.784 1.99-.723-4.21a1.11 1.11 0 01.32-.985l3.062-2.982-4.232-.618a1.111 1.111 0 01-.836-.608l-1.892-3.833z\\\" fill=\\\"currentColor\\\"\\/><\\/svg>\",\"title\":\"Feature Box\",\"parent\":false}],\"width\":{\"xxl\":\"100%\",\"xl\":\"100%\",\"lg\":\"100%\",\"md\":\"100%\",\"sm\":\"100%\",\"xs\":\"100%\"}}],\"parent\":false},{\"layout\":\"3,3,3,3\",\"settings\":{\"title\":\"\",\"title_fontsize\":\"\",\"title_text_color\":\"\",\"title_margin_top\":\"\",\"title_margin_bottom\":\"\",\"subtitle\":\"\",\"subtitle_fontsize\":\"\",\"background_color\":\"#f5f5f5\",\"color\":\"\",\"background_image\":\"\",\"background_video\":0,\"background_video_mp4\":\"\",\"background_video_ogv\":\"\",\"id\":\"\",\"class\":\"\",\"padding\":\"70px 0  5px\",\"margin\":\"0px\",\"fullscreen\":0,\"fit_columns\":{\"xxl\":true,\"xl\":true,\"lg\":true,\"md\":true,\"sm\":false,\"xs\":false}},\"id\":1641384684,\"visibility\":1,\"columns\":[{\"class_name\":\"col-sm-3\",\"settings\":{\"background\":\"\",\"color\":\"\",\"padding\":\"\",\"animation\":\"fadeInDown\",\"animationduration\":300,\"animationdelay\":100,\"class\":\"\"},\"id\":1641384685,\"addons\":[{\"name\":\"feature\",\"title\":\"Feature Box\",\"id\":1641384686,\"settings\":{\"title\":\"Fully Responsive\",\"heading_selector\":\"h3\",\"title_fontsize\":\"\",\"title_text_color\":\"\",\"title_position\":\"after\",\"feature_type\":\"icon\",\"feature_image\":\"\",\"icon_name\":\"fa-laptop\",\"icon_size\":\"42\",\"icon_color\":\"\",\"icon_background\":\"\",\"icon_border_color\":\"\",\"icon_border_width\":\"\",\"icon_border_radius\":\"\",\"icon_margin_top\":\"0\",\"icon_margin_bottom\":\"\",\"icon_padding\":\"\",\"text\":\"Sirloin pork loine beefb andoe uillen capicola shank swine chuck flank tritip picola kevin filet mignon\",\"alignment\":\"sppb-text-center\",\"class\":\"\"},\"visibility\":1,\"icon\":\"<svg viewBox=\\\"0 0 32 32\\\" xmlns=\\\"http:\\/\\/www.w3.org\\/2000\\/svg\\\"><path opacity=\\\".5\\\" fill-rule=\\\"evenodd\\\" clip-rule=\\\"evenodd\\\" d=\\\"M29 26a1 1 0 01-1 1H4a1 1 0 110-2h24a1 1 0 011 1zM24 31a1 1 0 01-1 1H8a1 1 0 110-2h15a1 1 0 011 1z\\\" fill=\\\"currentColor\\\"\\/><path fill-rule=\\\"evenodd\\\" clip-rule=\\\"evenodd\\\" d=\\\"M16.458 0c.423 0 .81.24.996.62l2.63 5.327 5.882.86a1.111 1.111 0 01.614 1.895l-4.255 4.144 1.005 5.855a1.111 1.111 0 01-1.613 1.171l-5.259-2.765-5.26 2.765a1.111 1.111 0 01-1.611-1.17l1.004-5.856-4.255-4.144a1.111 1.111 0 01.614-1.895l5.882-.86L15.462.62c.187-.379.573-.619.996-.619zm0 3.621l-1.892 3.833a1.111 1.111 0 01-.836.608l-4.232.618 3.062 2.982c.262.255.382.623.32.984l-.723 4.211 3.784-1.99c.324-.17.71-.17 1.034 0l3.784 1.99-.723-4.21a1.11 1.11 0 01.32-.985l3.062-2.982-4.232-.618a1.111 1.111 0 01-.836-.608l-1.892-3.833z\\\" fill=\\\"currentColor\\\"\\/><\\/svg>\"}],\"visibility\":1,\"width\":{\"xxl\":\"25%\",\"xl\":\"25%\",\"lg\":\"25%\",\"md\":\"25%\",\"sm\":\"100%\",\"xs\":\"100%\"}},{\"class_name\":\"col-sm-3\",\"settings\":{\"background\":\"\",\"color\":\"\",\"padding\":\"\",\"animation\":\"fadeInDown\",\"animationduration\":500,\"animationdelay\":200,\"class\":\"\"},\"id\":1641384687,\"addons\":[{\"name\":\"feature\",\"title\":\"Feature Box\",\"id\":1641384688,\"settings\":{\"title\":\"Unique Design\",\"heading_selector\":\"h3\",\"title_fontsize\":\"\",\"title_text_color\":\"\",\"title_position\":\"after\",\"feature_type\":\"icon\",\"feature_image\":\"\",\"icon_name\":\"fa-dashboard\",\"icon_size\":\"42\",\"icon_color\":\"\",\"icon_background\":\"\",\"icon_border_color\":\"\",\"icon_border_width\":\"\",\"icon_border_radius\":\"\",\"icon_margin_top\":\"0\",\"icon_margin_bottom\":\"\",\"icon_padding\":\"\",\"text\":\"Sirloin pork loine beefb andoe uillen capicola shank swine chuck flank tritip picola kevin filet mignon\",\"alignment\":\"sppb-text-center\",\"class\":\"\"},\"visibility\":1,\"icon\":\"<svg viewBox=\\\"0 0 32 32\\\" xmlns=\\\"http:\\/\\/www.w3.org\\/2000\\/svg\\\"><path opacity=\\\".5\\\" fill-rule=\\\"evenodd\\\" clip-rule=\\\"evenodd\\\" d=\\\"M29 26a1 1 0 01-1 1H4a1 1 0 110-2h24a1 1 0 011 1zM24 31a1 1 0 01-1 1H8a1 1 0 110-2h15a1 1 0 011 1z\\\" fill=\\\"currentColor\\\"\\/><path fill-rule=\\\"evenodd\\\" clip-rule=\\\"evenodd\\\" d=\\\"M16.458 0c.423 0 .81.24.996.62l2.63 5.327 5.882.86a1.111 1.111 0 01.614 1.895l-4.255 4.144 1.005 5.855a1.111 1.111 0 01-1.613 1.171l-5.259-2.765-5.26 2.765a1.111 1.111 0 01-1.611-1.17l1.004-5.856-4.255-4.144a1.111 1.111 0 01.614-1.895l5.882-.86L15.462.62c.187-.379.573-.619.996-.619zm0 3.621l-1.892 3.833a1.111 1.111 0 01-.836.608l-4.232.618 3.062 2.982c.262.255.382.623.32.984l-.723 4.211 3.784-1.99c.324-.17.71-.17 1.034 0l3.784 1.99-.723-4.21a1.11 1.11 0 01.32-.985l3.062-2.982-4.232-.618a1.111 1.111 0 01-.836-.608l-1.892-3.833z\\\" fill=\\\"currentColor\\\"\\/><\\/svg>\"}],\"visibility\":1,\"width\":{\"xxl\":\"25%\",\"xl\":\"25%\",\"lg\":\"25%\",\"md\":\"25%\",\"sm\":\"100%\",\"xs\":\"100%\"}},{\"class_name\":\"col-sm-3\",\"settings\":{\"background\":\"\",\"color\":\"\",\"padding\":\"\",\"animation\":\"fadeInDown\",\"animationduration\":500,\"animationdelay\":300,\"class\":\"\"},\"id\":1641384689,\"addons\":[{\"name\":\"feature\",\"title\":\"Feature Box\",\"id\":1641384690,\"settings\":{\"title\":\"Easy to Customize\",\"heading_selector\":\"h3\",\"title_fontsize\":\"\",\"title_text_color\":\"\",\"title_position\":\"after\",\"feature_type\":\"icon\",\"feature_image\":\"\",\"icon_name\":\"fa-gear\",\"icon_size\":\"42\",\"icon_color\":\"\",\"icon_background\":\"\",\"icon_border_color\":\"\",\"icon_border_width\":\"\",\"icon_border_radius\":\"\",\"icon_margin_top\":\"0\",\"icon_margin_bottom\":\"\",\"icon_padding\":\"\",\"text\":\"Sirloin pork loine beefb andoe uillen capicola shank swine chuck flank tritip picola kevin filet mignon\",\"alignment\":\"sppb-text-center\",\"class\":\"\"},\"visibility\":1,\"icon\":\"<svg viewBox=\\\"0 0 32 32\\\" xmlns=\\\"http:\\/\\/www.w3.org\\/2000\\/svg\\\"><path opacity=\\\".5\\\" fill-rule=\\\"evenodd\\\" clip-rule=\\\"evenodd\\\" d=\\\"M29 26a1 1 0 01-1 1H4a1 1 0 110-2h24a1 1 0 011 1zM24 31a1 1 0 01-1 1H8a1 1 0 110-2h15a1 1 0 011 1z\\\" fill=\\\"currentColor\\\"\\/><path fill-rule=\\\"evenodd\\\" clip-rule=\\\"evenodd\\\" d=\\\"M16.458 0c.423 0 .81.24.996.62l2.63 5.327 5.882.86a1.111 1.111 0 01.614 1.895l-4.255 4.144 1.005 5.855a1.111 1.111 0 01-1.613 1.171l-5.259-2.765-5.26 2.765a1.111 1.111 0 01-1.611-1.17l1.004-5.856-4.255-4.144a1.111 1.111 0 01.614-1.895l5.882-.86L15.462.62c.187-.379.573-.619.996-.619zm0 3.621l-1.892 3.833a1.111 1.111 0 01-.836.608l-4.232.618 3.062 2.982c.262.255.382.623.32.984l-.723 4.211 3.784-1.99c.324-.17.71-.17 1.034 0l3.784 1.99-.723-4.21a1.11 1.11 0 01.32-.985l3.062-2.982-4.232-.618a1.111 1.111 0 01-.836-.608l-1.892-3.833z\\\" fill=\\\"currentColor\\\"\\/><\\/svg>\"}],\"visibility\":1,\"width\":{\"xxl\":\"25%\",\"xl\":\"25%\",\"lg\":\"25%\",\"md\":\"25%\",\"sm\":\"100%\",\"xs\":\"100%\"}},{\"class_name\":\"col-sm-3\",\"settings\":{\"background\":\"\",\"color\":\"\",\"padding\":\"\",\"animation\":\"fadeInDown\",\"animationduration\":500,\"animationdelay\":400,\"class\":\"\"},\"id\":1641384691,\"addons\":[{\"name\":\"feature\",\"title\":\"Feature Box\",\"id\":1641384692,\"settings\":{\"title\":\"Awesome Support\",\"heading_selector\":\"h3\",\"title_fontsize\":\"\",\"title_text_color\":\"\",\"title_position\":\"after\",\"feature_type\":\"icon\",\"feature_image\":\"\",\"icon_name\":\"fa-envelope\",\"icon_size\":\"42\",\"icon_color\":\"\",\"icon_background\":\"\",\"icon_border_color\":\"\",\"icon_border_width\":\"\",\"icon_border_radius\":\"\",\"icon_margin_top\":\"0\",\"icon_margin_bottom\":\"\",\"icon_padding\":\"\",\"text\":\"Sirloin pork loine beefb andoe uillen capicola shank swine chuck flank tritip picola kevin filet mignon\",\"alignment\":\"sppb-text-center\",\"class\":\"\"},\"visibility\":1,\"icon\":\"<svg viewBox=\\\"0 0 32 32\\\" xmlns=\\\"http:\\/\\/www.w3.org\\/2000\\/svg\\\"><path opacity=\\\".5\\\" fill-rule=\\\"evenodd\\\" clip-rule=\\\"evenodd\\\" d=\\\"M29 26a1 1 0 01-1 1H4a1 1 0 110-2h24a1 1 0 011 1zM24 31a1 1 0 01-1 1H8a1 1 0 110-2h15a1 1 0 011 1z\\\" fill=\\\"currentColor\\\"\\/><path fill-rule=\\\"evenodd\\\" clip-rule=\\\"evenodd\\\" d=\\\"M16.458 0c.423 0 .81.24.996.62l2.63 5.327 5.882.86a1.111 1.111 0 01.614 1.895l-4.255 4.144 1.005 5.855a1.111 1.111 0 01-1.613 1.171l-5.259-2.765-5.26 2.765a1.111 1.111 0 01-1.611-1.17l1.004-5.856-4.255-4.144a1.111 1.111 0 01.614-1.895l5.882-.86L15.462.62c.187-.379.573-.619.996-.619zm0 3.621l-1.892 3.833a1.111 1.111 0 01-.836.608l-4.232.618 3.062 2.982c.262.255.382.623.32.984l-.723 4.211 3.784-1.99c.324-.17.71-.17 1.034 0l3.784 1.99-.723-4.21a1.11 1.11 0 01.32-.985l3.062-2.982-4.232-.618a1.111 1.111 0 01-.836-.608l-1.892-3.833z\\\" fill=\\\"currentColor\\\"\\/><\\/svg>\"}],\"visibility\":1,\"width\":{\"xxl\":\"25%\",\"xl\":\"25%\",\"lg\":\"25%\",\"md\":\"25%\",\"sm\":\"100%\",\"xs\":\"100%\"}}],\"collapse\":\"\",\"title\":\"Row\"},{\"layout\":\"3,3,3,3\",\"settings\":{\"title\":\"\",\"title_fontsize\":\"\",\"title_text_color\":\"\",\"title_margin_top\":\"\",\"title_margin_bottom\":\"\",\"subtitle\":\"\",\"subtitle_fontsize\":\"\",\"background_color\":\"#f5f5f5\",\"color\":\"\",\"background_image\":\"\",\"background_video\":0,\"background_video_mp4\":\"\",\"background_video_ogv\":\"\",\"id\":\"\",\"class\":\"\",\"padding\":{\"xxl\":\"\",\"xl\":\"50px 0px 100px 0px\",\"lg\":\"50px 0px 100px 0px\",\"md\":\"50px 0px 100px 0px\",\"sm\":\"   \",\"xs\":\"   \"},\"margin\":{\"xxl\":\"\",\"xl\":\"   \",\"lg\":\"   \",\"md\":\"   \",\"sm\":\"   \",\"xs\":\"   \"},\"fullscreen\":0,\"instFormId\":1641384693,\"columns_align_center\":0,\"no_gutter\":0,\"hidden_xs\":0,\"hidden_sm\":0,\"hidden_md\":0,\"fit_columns\":{\"xxl\":true,\"xl\":true,\"lg\":true,\"md\":true,\"sm\":false,\"xs\":false}},\"id\":1641384693,\"visibility\":1,\"columns\":[{\"class_name\":\"col-sm-3\",\"settings\":{\"background\":\"\",\"color\":\"\",\"padding\":\"\",\"animation\":\"fadeInDown\",\"animationduration\":300,\"animationdelay\":100,\"class\":\"\"},\"id\":1641384694,\"addons\":[{\"name\":\"feature\",\"title\":\"Feature Box\",\"id\":1641384695,\"settings\":{\"title\":\"Page Builder\",\"heading_selector\":\"h3\",\"title_fontsize\":\"\",\"title_text_color\":\"\",\"title_position\":\"after\",\"feature_type\":\"icon\",\"feature_image\":\"\",\"icon_name\":\"fa-arrows\",\"icon_size\":\"42\",\"icon_color\":\"\",\"icon_background\":\"\",\"icon_border_color\":\"\",\"icon_border_width\":\"\",\"icon_border_radius\":\"\",\"icon_margin_top\":\"0\",\"icon_margin_bottom\":\"\",\"icon_padding\":\"\",\"text\":\"Sirloin pork loine beefb andoe uillen capicola shank swine chuck flank tritip picola kevin filet mignon\",\"alignment\":\"sppb-text-center\",\"class\":\"\"},\"visibility\":1,\"icon\":\"<svg viewBox=\\\"0 0 32 32\\\" xmlns=\\\"http:\\/\\/www.w3.org\\/2000\\/svg\\\"><path opacity=\\\".5\\\" fill-rule=\\\"evenodd\\\" clip-rule=\\\"evenodd\\\" d=\\\"M29 26a1 1 0 01-1 1H4a1 1 0 110-2h24a1 1 0 011 1zM24 31a1 1 0 01-1 1H8a1 1 0 110-2h15a1 1 0 011 1z\\\" fill=\\\"currentColor\\\"\\/><path fill-rule=\\\"evenodd\\\" clip-rule=\\\"evenodd\\\" d=\\\"M16.458 0c.423 0 .81.24.996.62l2.63 5.327 5.882.86a1.111 1.111 0 01.614 1.895l-4.255 4.144 1.005 5.855a1.111 1.111 0 01-1.613 1.171l-5.259-2.765-5.26 2.765a1.111 1.111 0 01-1.611-1.17l1.004-5.856-4.255-4.144a1.111 1.111 0 01.614-1.895l5.882-.86L15.462.62c.187-.379.573-.619.996-.619zm0 3.621l-1.892 3.833a1.111 1.111 0 01-.836.608l-4.232.618 3.062 2.982c.262.255.382.623.32.984l-.723 4.211 3.784-1.99c.324-.17.71-.17 1.034 0l3.784 1.99-.723-4.21a1.11 1.11 0 01.32-.985l3.062-2.982-4.232-.618a1.111 1.111 0 01-.836-.608l-1.892-3.833z\\\" fill=\\\"currentColor\\\"\\/><\\/svg>\"}],\"visibility\":1,\"width\":{\"xxl\":\"25%\",\"xl\":\"25%\",\"lg\":\"25%\",\"md\":\"25%\",\"sm\":\"100%\",\"xs\":\"100%\"}},{\"class_name\":\"col-sm-3\",\"settings\":{\"background\":\"\",\"color\":\"\",\"padding\":\"\",\"animation\":\"fadeInDown\",\"animationduration\":500,\"animationdelay\":200,\"class\":\"\"},\"id\":1641384696,\"addons\":[{\"name\":\"feature\",\"title\":\"Feature Box\",\"id\":1641384697,\"settings\":{\"title\":\"Mega Menu\",\"heading_selector\":\"h3\",\"title_fontsize\":\"\",\"title_text_color\":\"\",\"title_position\":\"after\",\"feature_type\":\"icon\",\"feature_image\":\"\",\"icon_name\":\"fa-list\",\"icon_size\":\"42\",\"icon_color\":\"\",\"icon_background\":\"\",\"icon_border_color\":\"\",\"icon_border_width\":\"\",\"icon_border_radius\":\"\",\"icon_margin_top\":\"0\",\"icon_margin_bottom\":\"\",\"icon_padding\":\"\",\"text\":\"Sirloin pork loine beefb andoe uillen capicola shank swine chuck flank tritip picola kevin filet mignon\",\"alignment\":\"sppb-text-center\",\"class\":\"\"},\"visibility\":1,\"icon\":\"<svg viewBox=\\\"0 0 32 32\\\" xmlns=\\\"http:\\/\\/www.w3.org\\/2000\\/svg\\\"><path opacity=\\\".5\\\" fill-rule=\\\"evenodd\\\" clip-rule=\\\"evenodd\\\" d=\\\"M29 26a1 1 0 01-1 1H4a1 1 0 110-2h24a1 1 0 011 1zM24 31a1 1 0 01-1 1H8a1 1 0 110-2h15a1 1 0 011 1z\\\" fill=\\\"currentColor\\\"\\/><path fill-rule=\\\"evenodd\\\" clip-rule=\\\"evenodd\\\" d=\\\"M16.458 0c.423 0 .81.24.996.62l2.63 5.327 5.882.86a1.111 1.111 0 01.614 1.895l-4.255 4.144 1.005 5.855a1.111 1.111 0 01-1.613 1.171l-5.259-2.765-5.26 2.765a1.111 1.111 0 01-1.611-1.17l1.004-5.856-4.255-4.144a1.111 1.111 0 01.614-1.895l5.882-.86L15.462.62c.187-.379.573-.619.996-.619zm0 3.621l-1.892 3.833a1.111 1.111 0 01-.836.608l-4.232.618 3.062 2.982c.262.255.382.623.32.984l-.723 4.211 3.784-1.99c.324-.17.71-.17 1.034 0l3.784 1.99-.723-4.21a1.11 1.11 0 01.32-.985l3.062-2.982-4.232-.618a1.111 1.111 0 01-.836-.608l-1.892-3.833z\\\" fill=\\\"currentColor\\\"\\/><\\/svg>\"}],\"visibility\":1,\"width\":{\"xxl\":\"25%\",\"xl\":\"25%\",\"lg\":\"25%\",\"md\":\"25%\",\"sm\":\"100%\",\"xs\":\"100%\"}},{\"class_name\":\"col-sm-3\",\"settings\":{\"background\":\"\",\"color\":\"\",\"padding\":\"\",\"animation\":\"fadeInDown\",\"animationduration\":500,\"animationdelay\":300,\"class\":\"\"},\"id\":1641384698,\"addons\":[{\"name\":\"feature\",\"title\":\"Feature Box\",\"id\":1641384699,\"settings\":{\"title\":\"Layout Builder\",\"heading_selector\":\"h3\",\"title_fontsize\":\"\",\"title_text_color\":\"\",\"title_position\":\"after\",\"feature_type\":\"icon\",\"feature_image\":\"\",\"icon_name\":\"fa-check-square-o\",\"icon_size\":\"42\",\"icon_color\":\"\",\"icon_background\":\"\",\"icon_border_color\":\"\",\"icon_border_width\":\"\",\"icon_border_radius\":\"\",\"icon_margin_top\":\"0\",\"icon_margin_bottom\":\"\",\"icon_padding\":\"\",\"text\":\"Sirloin pork loine beefb andoe uillen capicola shank swine chuck flank tritip picola kevin filet mignon\",\"alignment\":\"sppb-text-center\",\"class\":\"\"},\"visibility\":1,\"icon\":\"<svg viewBox=\\\"0 0 32 32\\\" xmlns=\\\"http:\\/\\/www.w3.org\\/2000\\/svg\\\"><path opacity=\\\".5\\\" fill-rule=\\\"evenodd\\\" clip-rule=\\\"evenodd\\\" d=\\\"M29 26a1 1 0 01-1 1H4a1 1 0 110-2h24a1 1 0 011 1zM24 31a1 1 0 01-1 1H8a1 1 0 110-2h15a1 1 0 011 1z\\\" fill=\\\"currentColor\\\"\\/><path fill-rule=\\\"evenodd\\\" clip-rule=\\\"evenodd\\\" d=\\\"M16.458 0c.423 0 .81.24.996.62l2.63 5.327 5.882.86a1.111 1.111 0 01.614 1.895l-4.255 4.144 1.005 5.855a1.111 1.111 0 01-1.613 1.171l-5.259-2.765-5.26 2.765a1.111 1.111 0 01-1.611-1.17l1.004-5.856-4.255-4.144a1.111 1.111 0 01.614-1.895l5.882-.86L15.462.62c.187-.379.573-.619.996-.619zm0 3.621l-1.892 3.833a1.111 1.111 0 01-.836.608l-4.232.618 3.062 2.982c.262.255.382.623.32.984l-.723 4.211 3.784-1.99c.324-.17.71-.17 1.034 0l3.784 1.99-.723-4.21a1.11 1.11 0 01.32-.985l3.062-2.982-4.232-.618a1.111 1.111 0 01-.836-.608l-1.892-3.833z\\\" fill=\\\"currentColor\\\"\\/><\\/svg>\"}],\"visibility\":1,\"width\":{\"xxl\":\"25%\",\"xl\":\"25%\",\"lg\":\"25%\",\"md\":\"25%\",\"sm\":\"100%\",\"xs\":\"100%\"}},{\"class_name\":\"col-sm-3\",\"settings\":{\"background\":\"\",\"color\":\"\",\"padding\":\"\",\"animation\":\"fadeInDown\",\"animationduration\":500,\"animationdelay\":400,\"class\":\"\"},\"id\":1641384700,\"addons\":[{\"name\":\"feature\",\"title\":\"Feature Box\",\"id\":1641384701,\"settings\":{\"title\":\"Google Font\",\"heading_selector\":\"h3\",\"title_fontsize\":\"\",\"title_text_color\":\"\",\"title_position\":\"after\",\"feature_type\":\"icon\",\"feature_image\":\"\",\"icon_name\":\"fa-google\",\"icon_size\":\"42\",\"icon_color\":\"\",\"icon_background\":\"\",\"icon_border_color\":\"\",\"icon_border_width\":\"\",\"icon_border_radius\":\"\",\"icon_margin_top\":\"0\",\"icon_margin_bottom\":\"\",\"icon_padding\":\"\",\"text\":\"Sirloin pork loine beefb andoe uillen capicola shank swine chuck flank tritip picola kevin filet mignon\",\"alignment\":\"sppb-text-center\",\"class\":\"\"},\"visibility\":1,\"icon\":\"<svg viewBox=\\\"0 0 32 32\\\" xmlns=\\\"http:\\/\\/www.w3.org\\/2000\\/svg\\\"><path opacity=\\\".5\\\" fill-rule=\\\"evenodd\\\" clip-rule=\\\"evenodd\\\" d=\\\"M29 26a1 1 0 01-1 1H4a1 1 0 110-2h24a1 1 0 011 1zM24 31a1 1 0 01-1 1H8a1 1 0 110-2h15a1 1 0 011 1z\\\" fill=\\\"currentColor\\\"\\/><path fill-rule=\\\"evenodd\\\" clip-rule=\\\"evenodd\\\" d=\\\"M16.458 0c.423 0 .81.24.996.62l2.63 5.327 5.882.86a1.111 1.111 0 01.614 1.895l-4.255 4.144 1.005 5.855a1.111 1.111 0 01-1.613 1.171l-5.259-2.765-5.26 2.765a1.111 1.111 0 01-1.611-1.17l1.004-5.856-4.255-4.144a1.111 1.111 0 01.614-1.895l5.882-.86L15.462.62c.187-.379.573-.619.996-.619zm0 3.621l-1.892 3.833a1.111 1.111 0 01-.836.608l-4.232.618 3.062 2.982c.262.255.382.623.32.984l-.723 4.211 3.784-1.99c.324-.17.71-.17 1.034 0l3.784 1.99-.723-4.21a1.11 1.11 0 01.32-.985l3.062-2.982-4.232-.618a1.111 1.111 0 01-.836-.608l-1.892-3.833z\\\" fill=\\\"currentColor\\\"\\/><\\/svg>\"}],\"visibility\":1,\"width\":{\"xxl\":\"25%\",\"xl\":\"25%\",\"lg\":\"25%\",\"md\":\"25%\",\"sm\":\"100%\",\"xs\":\"100%\"}}],\"collapse\":\"\",\"title\":\"Row\"},{\"layout\":12,\"settings\":{\"title\":\"Showcase\",\"heading_selector\":\"h2\",\"title_fontsize\":\"36\",\"title_text_color\":\"#333333\",\"title_margin_top\":\"0\",\"title_margin_bottom\":\"20\",\"subtitle\":\"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip\\n\\n\\n\\n\\n\",\"subtitle_fontsize\":\"\",\"title_position\":\"sppb-text-center\",\"background_color\":\"\",\"color\":\"\",\"background_image\":\"\",\"background_video\":0,\"background_video_mp4\":\"\",\"background_video_ogv\":\"\",\"id\":\"\",\"class\":\"\",\"padding\":\"\",\"margin\":\"100px 0px 0px\",\"fullscreen\":1,\"fit_columns\":{\"xxl\":true,\"xl\":true,\"lg\":true,\"md\":true,\"sm\":true,\"xs\":true}},\"id\":1641384702,\"visibility\":1,\"columns\":[{\"class_name\":\"col-sm-12\",\"settings\":{\"background\":\"\",\"color\":\"\",\"padding\":\"\",\"animation\":\"\",\"animationduration\":\"\",\"animationdelay\":\"\",\"class\":\"\"},\"id\":1641384703,\"addons\":[{\"name\":\"empty_space\",\"title\":\"Empty Space\",\"id\":1641384704,\"settings\":{\"gap\":\"20\",\"class\":\"\"},\"visibility\":1,\"icon\":\"<svg viewBox=\\\"0 0 32 32\\\" xmlns=\\\"http:\\/\\/www.w3.org\\/2000\\/svg\\\"><path d=\\\"M18.5 13.6h-4.9c-.3 0-.5-.4-.3-.7l2.5-2.5c.2-.2.4-.2.5 0l2.5 2.5c.2.2 0 .7-.3.7zM13.5 18.3h4.9c.3 0 .5.4.3.7l-2.5 2.5c-.2.2-.4.2-.5 0L13.2 19c-.2-.3 0-.7.3-.7z\\\" fill=\\\"currentColor\\\"\\/><path opacity=\\\".5\\\" fill-rule=\\\"evenodd\\\" clip-rule=\\\"evenodd\\\" d=\\\"M29 22.9H2.7c-.9 0-1.7.8-1.7 1.7v5.7c0 .9.8 1.7 1.7 1.7.9 0 1.7-.8 1.7-1.7v-4h22.9v4c0 .9.8 1.7 1.7 1.7.9 0 1.7-.8 1.7-1.7v-5.7c0-1-.8-1.7-1.7-1.7zM29 0c-.9 0-1.7.8-1.7 1.7v4H4.4v-4C4.4.8 3.7 0 2.7 0S1 .8 1 1.7v5.7c0 .9.8 1.7 1.7 1.7H29c.9 0 1.7-.8 1.7-1.7V1.7C30.7.8 29.9 0 29 0z\\\" fill=\\\"currentColor\\\"\\/><\\/svg>\"},{\"name\":\"module\",\"title\":\"Joomla Module\",\"id\":1641384705,\"settings\":{\"title\":\"\",\"heading_selector\":\"h3\",\"title_fontsize\":\"\",\"title_text_color\":\"\",\"title_margin_top\":\"\",\"title_margin_bottom\":\"\",\"id\":\"107\",\"class\":\"\",\"global_boxshadow\":\"\",\"global_overlay_type\":\"overlay_color\"},\"visibility\":1,\"icon\":\"<svg viewBox=\\\"0 0 32 32\\\" xmlns=\\\"http:\\/\\/www.w3.org\\/2000\\/svg\\\"><path d=\\\"M5.005 1C6.821.994 8.391 2.176 8.849 3.923c.065.25.136.315.407.218 1.234-.443 2.449-.289 3.638.212.917.386 1.712.97 2.461 1.62.117.102.13.16.013.275-.846.803-1.686 1.613-2.52 2.429-.135.135-.22.096-.348 0-.375-.27-.789-.482-1.267-.514-1.124-.077-2.255.79-2.565 1.972-.265 1.015.097 1.87.724 2.64.51.623 1.13 1.144 1.7 1.709a402.759 402.759 0 004.115 4.015c.245.238.22.353-.013.572-.808.77-1.596 1.554-2.384 2.344-.155.16-.246.2-.427.013-2.358-2.364-4.742-4.709-7.094-7.085-1.189-1.208-2.01-3.335-.943-5.236.168-.308-.11-.25-.24-.283-1-.244-1.815-.77-2.383-1.625-.885-1.336-.956-2.724-.22-4.13.66-1.285 2.01-2.063 3.502-2.069z\\\" fill=\\\"currentColor\\\"\\/><path opacity=\\\".5\\\" d=\\\"M28.129 10.732c0 1.337-.524 2.493-1.28 3.553-.239.327-.51.63-.762.95-.116.148-.194.135-.323 0a207.68 207.68 0 00-2.352-2.415c-.155-.154-.168-.263-.039-.456.485-.707.672-1.471.24-2.261-.479-.887-1.222-1.465-2.262-1.548-1.085-.084-1.919.462-2.636 1.194-1.693 1.748-3.36 3.514-5.046 5.262-.31.32-.226.347-.581.006-.834-.803-1.66-1.612-2.5-2.409-.156-.148-.175-.238-.007-.398 2.351-2.326 4.677-4.69 7.055-6.99 1.286-1.24 3.36-1.895 5.188-.905.226.122.252.025.304-.167.413-1.632 1.44-2.666 3.095-3.039 2.203-.494 4.432 1.067 4.736 3.283.284 2.081-.912 3.88-2.966 4.445-.226.058-.24.129-.168.328.097.25.155.507.22.764.077.27.09.534.084.803zM11.13 27.936a3.725 3.725 0 01-1.861-.43c-.252-.136-.297-.046-.349.173a3.93 3.93 0 01-3.67 2.98c-1.906.052-3.514-1.04-4.044-2.755-.627-2.03.626-4.195 2.778-4.754.29-.077.317-.148.213-.418-.484-1.297-.245-2.537.394-3.726.375-.694.847-1.31 1.376-1.888.143-.154.233-.16.388-.013.788.79 1.583 1.567 2.371 2.351.09.09.149.154.052.296-.924 1.432-.53 2.723 1.04 3.43 1.163.52 2.203.186 3.108-.572.788-.662 1.499-1.407 2.235-2.12 1.183-1.15 2.365-2.3 3.54-3.456.169-.167.272-.199.46-.013.82.842 1.66 1.67 2.5 2.5.142.14.162.23 0 .378-2.41 2.236-4.8 4.49-7.23 6.713a4.933 4.933 0 01-3.301 1.324z\\\" fill=\\\"currentColor\\\"\\/><path d=\\\"M27.01 31a3.803 3.803 0 01-3.682-2.884c-.084-.322-.18-.328-.465-.238-1.39.417-2.694.103-3.935-.559-.691-.373-1.305-.86-1.893-1.381-.148-.135-.18-.219-.02-.373.789-.77 1.57-1.548 2.346-2.338.162-.167.252-.135.414-.013.62.475 1.292.765 2.093.501.86-.282 1.667-1.387 1.712-2.3.045-1.021-.4-1.843-1.085-2.543-1.622-1.664-3.263-3.315-4.891-4.966-.22-.219-.575-.437-.595-.681-.02-.25.381-.443.601-.655.64-.63 1.292-1.253 1.932-1.89.149-.153.233-.14.375.007 2.274 2.326 4.574 4.638 6.829 6.977 1.221 1.265 1.893 3.417.93 5.203-.122.225-.013.264.168.308 1.628.424 2.598 1.478 2.946 3.09.524 2.429-1.35 4.754-3.78 4.735z\\\" fill=\\\"currentColor\\\"\\/><\\/svg>\"}],\"visibility\":1,\"width\":{\"xxl\":\"100%\",\"xl\":\"100%\",\"lg\":\"100%\",\"md\":\"100%\",\"sm\":\"100%\",\"xs\":\"100%\"}}],\"collapse\":\"\",\"title\":\"Row\"},{\"id\":\"zxaSLz27kwrOSRYo9VSYw\",\"visibility\":true,\"collapse\":false,\"settings\":{\"fit_columns\":{\"xxl\":true,\"xl\":true,\"lg\":true,\"md\":true,\"sm\":false,\"xs\":false},\"background_type\":\"color\",\"background_gradient\":{\"color\":\"#00c6fb\",\"color2\":\"#005bea\",\"deg\":\"45\",\"type\":\"linear\"},\"background_image\":{\"src\":\"\"},\"background_parallax\":\"0\",\"background_repeat\":\"no-repeat\",\"background_size\":\"cover\",\"background_size_custom\":{\"unit\":\"px\"},\"background_attachment\":\"fixed\",\"background_position\":\"0 0\",\"background_position_custom_x\":{\"unit\":\"px\"},\"background_position_custom_y\":{\"unit\":\"px\"},\"external_background_video\":0,\"background_video_ogv\":{\"src\":\"\"},\"video_loop\":1,\"overlay_type\":\"overlay_none\",\"gradient_overlay\":{\"color\":\"rgba(127, 0, 255, 0.8)\",\"color2\":\"rgba(225, 0, 255, 0.7)\",\"deg\":\"45\",\"type\":\"linear\"},\"pattern_overlay\":\"\",\"overlay_pattern_color\":\"\",\"blend_mode\":\"normal\",\"columns_align_center\":0,\"columns_content_alignment\":\"center\",\"fullscreen\":0,\"no_gutter\":0,\"row_width\":{\"unit\":\"px\"},\"row_max_width\":{\"unit\":\"px\"},\"row_min_width\":{\"unit\":\"px\"},\"padding\":{\"xxl\":\"100px 0px 100px 0px\",\"xl\":\"100px 0px 100px 0px\",\"lg\":\"100px 0px 100px 0px\",\"md\":\"100px 0px 100px 0px\",\"sm\":\"100px 0px 100px 0px\",\"xs\":\"60px 0px 60px 0px\"},\"margin\":{\"xxl\":\"0px 0px 0px 0px\",\"xl\":\"0px 0px 0px 0px\",\"lg\":\"0px 0px 0px 0px\",\"md\":\"0px 0px 0px 0px\",\"sm\":\"0px 0px 0px 0px\",\"xs\":\"0px 0px 0px 0px\"},\"row_border\":0,\"row_border_style\":\"solid\",\"row_boxshadow\":{\"ho\":0,\"vo\":0,\"blur\":0,\"spread\":0,\"color\":\"#FFFFFF\",\"inset\":false,\"enabled\":false},\"show_top_shape\":\"\",\"shape_name\":\"clouds-flat\",\"shape_color\":\"#e5e5e5\",\"shape_width\":{\"xxl\":\"\",\"xl\":100,\"lg\":100,\"md\":100,\"sm\":100,\"xs\":100},\"shape_height\":\"\",\"shape_flip\":false,\"shape_invert\":false,\"shape_to_front\":false,\"show_bottom_shape\":\"\",\"bottom_shape_name\":\"clouds-opacity\",\"bottom_shape_color\":\"#e5e5e5\",\"bottom_shape_width\":{\"xl\":100},\"bottom_shape_height\":\"\",\"bottom_shape_flip\":false,\"bottom_shape_invert\":false,\"bottom_shape_to_front\":false,\"heading_selector\":\"h3\",\"title_fontsize\":\"\",\"title_fontweight\":\"\",\"title_position\":\"center\",\"admin_label\":\"\",\"hidden_xs\":\"\",\"hidden_sm\":\"\",\"hidden_md\":\"\",\"enable_animation\":\"1\",\"animationduration\":\"300\",\"animationdelay\":\"0\",\"instFormId\":\"zxaSLz27kwrOSRYo9VSYw\",\"background_color\":\"#f5f5f5\"},\"layout\":\"12\",\"columns\":[{\"id\":\"9WkOZoau2V75CjhZf-Ziv\",\"class_name\":\"row-column\",\"visibility\":true,\"settings\":{\"background_type\":\"none\",\"background_gradient\":{\"color\":\"#00c6fb\",\"color2\":\"#005bea\",\"deg\":\"45\",\"type\":\"linear\"},\"background_image\":{\"src\":\"\"},\"background_repeat\":\"no-repeat\",\"background_size\":\"cover\",\"background_size_custom\":{\"unit\":\"px\"},\"background_attachment\":\"scroll\",\"background_position\":\"0 0\",\"background_position_custom_x\":{\"unit\":\"px\"},\"background_position_custom_y\":{\"unit\":\"px\"},\"overlay_type\":\"overlay_color\",\"gradient_overlay\":{\"color\":\"rgba(127, 0, 255, 0.8)\",\"color2\":\"rgba(225, 0, 255, 0.7)\",\"deg\":\"45\",\"type\":\"linear\"},\"pattern_overlay\":{\"src\":\"\"},\"overlay_pattern_color\":\"\",\"blend_mode\":\"normal\",\"use_border\":0,\"border_width\":\"\",\"boxshadow\":\"0 0 0 0 #FFFFFF\",\"items_align_center\":0,\"items_content_alignment\":\"center\",\"tablet_order\":\"\",\"mobile_order\":\"\",\"hidden_xs\":\"\",\"hidden_sm\":\"\",\"hidden_md\":\"\",\"enable_animation\":\"1\",\"animationduration\":\"300\",\"animationdelay\":\"0\"},\"addons\":[{\"id\":\"gLnLujjaOGtPv5T5O5WRD\",\"name\":\"helixtestimonialpro\",\"visibility\":true,\"settings\":{\"sp_testimonialpro_item\":[{\"title\":\"Nanchel Culy\",\"avatar\":{\"src\":\"images\\/testimonial.png\"},\"message\":\"Helix is a Awesome Framework for Joomla. It\\u2019s able me to easily customize the Joomla Templates Thanks to Helix Team. Really Appreciate it.\"},{\"title\":\"Jony Daku\",\"avatar\":{\"src\":\"images\\/testimonial.png\"},\"message\":\"Helix is a Awesome Framework for Joomla. It\\u2019s able me to easily customize the Joomla Templates Thanks to Helix Team. Really Appreciate it.\"},{\"title\":\"Michel Cattar\",\"avatar\":{\"src\":\"images\\/testimonial.png\"},\"message\":\"Helix is a Awesome Framework for Joomla. It\\u2019s able me to easily customize the Joomla Templates Thanks to Helix Team. Really Appreciate it.\"}],\"global_padding\":{\"xxl\":\"   \",\"xl\":\"   \",\"lg\":\"   \",\"md\":\"   \",\"sm\":\"   \",\"xs\":\"   \"},\"global_margin\":{\"xxl\":\"   \",\"xl\":\"   \",\"lg\":\"   \",\"md\":\"   \",\"sm\":\"   \",\"xs\":\"   \"},\"global_background_type\":\"none\",\"global_background_gradient\":{\"color\":\"#00c6fb\",\"color2\":\"#005bea\",\"deg\":\"45\",\"type\":\"linear\"},\"global_background_image\":{\"src\":\"\"},\"global_background_repeat\":\"no-repeat\",\"global_background_size\":\"cover\",\"global_background_attachment\":\"inherit\",\"global_background_position\":\"50% 50%\",\"global_use_overlay\":0,\"global_overlay_type\":\"overlay_none\",\"global_gradient_overlay\":{\"color\":\"rgba(127, 0, 255, 0.8)\",\"color2\":\"rgba(225, 0, 255, 0.7)\",\"deg\":\"45\",\"type\":\"linear\"},\"global_pattern_overlay\":{\"src\":\"\"},\"global_overlay_pattern_color\":\"\",\"blend_mode\":\"normal\",\"global_user_border\":0,\"global_border_width\":{\"xxl\":\"\",\"xl\":\"\",\"lg\":\"\",\"md\":\"\",\"sm\":\"\",\"xs\":\"\"},\"global_border_radius\":{\"xxl\":\"\",\"xl\":\"\",\"lg\":\"\",\"md\":\"\",\"sm\":\"\",\"xs\":\"\"},\"global_boxshadow\":{\"ho\":0,\"vo\":0,\"blur\":0,\"spread\":0,\"color\":\"#FFFFFF\",\"inset\":false,\"enabled\":false},\"global_use_animation\":0,\"global_animationduration\":\"300\",\"global_animationdelay\":\"0\",\"class\":\"\",\"global_custom_css\":\"\",\"global_custom_position\":0,\"global_seclect_position\":\"relative\",\"global_addon_position_left\":{\"unit\":\"px\"},\"global_addon_position_top\":{\"unit\":\"px\"},\"use_global_width\":\"0\",\"hidden_md\":\"0\",\"hidden_sm\":\"0\",\"hidden_xs\":\"0\",\"acl\":\"\",\"admin_label\":\"\",\"while_scroll_view\":[{\"enable_while_scroll_view\":0,\"scrolling_options\":\"fullpage\",\"on_scroll_actions\":[{\"id\":\"b3fdc1c1e6bfde5942ea\",\"index\":0,\"keyframe\":0,\"name\":\"move\",\"property\":{\"x\":\"0\",\"y\":\"-100\",\"z\":\"0\"},\"range\":{\"max\":500,\"min\":-500,\"stop\":1},\"single\":true,\"title\":\"Move\"},{\"id\":\"936e0225e6dc8edfba7d\",\"index\":1,\"keyframe\":100,\"name\":\"move\",\"property\":{\"x\":0,\"y\":0,\"z\":0},\"range\":{\"max\":500,\"min\":-500,\"stop\":1},\"single\":true,\"title\":\"Move\"}],\"transition_origin_x\":\"center\",\"transition_origin_y\":\"center\",\"enable_tablet\":0,\"enable_mobile\":0}],\"mouse_movement\":[{\"enable_tilt_effect\":0,\"mouse_tilt_direction\":\"direct\",\"mouse_tilt_speed\":\"1\",\"mouse_tilt_max\":\"15\",\"enable_tablet\":0,\"enable_mobile\":0}],\"autoplay\":1,\"interval\":5,\"speed\":600,\"controls\":false,\"arrow_controls\":true,\"arrow_icon\":\"bottom-left\",\"arrow_margin\":{\"xxl\":\"5px 5px 0px 5px\",\"xl\":\"5px 5px 0px 5px\",\"lg\":\"5px 5px 0px 5px\",\"md\":\"5px 5px 0px 5px\",\"sm\":\"5px 5px 0px 5px\",\"xs\":\"5px 5px 0px 5px\"},\"tab_arrows\":\"normal\",\"arrow_color\":\"\",\"arrow_border_color\":\"\",\"avatar_width\":{\"xxl\":\"76\",\"xl\":\"76\",\"lg\":\"76\",\"md\":\"76\",\"sm\":\"76\",\"xs\":\"76\"},\"avatar_shape\":\"sppb-avatar-circle\",\"avatar_on_top\":1,\"show_quote\":false,\"icon_size\":{\"xxl\":48,\"xl\":48,\"lg\":48,\"md\":48,\"sm\":48,\"xs\":48},\"icon_color\":\"#EDEEF2\",\"content_alignment\":{\"xxl\":\"center\",\"xl\":\"center\",\"lg\":\"center\",\"md\":\"center\",\"sm\":\"center\",\"xs\":\"center\"},\"instFormId\":\"gLnLujjaOGtPv5T5O5WRD\",\"name_typography\":{\"font\":\"\",\"weight\":700,\"uppercase\":false,\"underline\":false,\"italic\":false,\"size\":{\"md\":{\"value\":\"\",\"unit\":\"px\"},\"sm\":{\"value\":\"\",\"unit\":\"px\"},\"xs\":{\"value\":\"\",\"unit\":\"px\"},\"lg\":{\"value\":\"\",\"unit\":\"px\"},\"xl\":{\"value\":\"14\",\"unit\":\"px\"},\"xxl\":{\"value\":\"\",\"unit\":\"px\"}},\"line_height\":{\"xxl\":{\"value\":\"\",\"unit\":\"px\"},\"xl\":{\"value\":\"24\",\"unit\":\"px\"},\"lg\":{\"value\":\"\",\"unit\":\"px\"},\"md\":{\"value\":\"\",\"unit\":\"px\"},\"sm\":{\"value\":\"\",\"unit\":\"px\"},\"xs\":{\"value\":\"\",\"unit\":\"px\"}},\"letter_spacing\":{\"md\":{\"value\":\"\",\"unit\":\"px\"},\"sm\":{\"value\":\"\",\"unit\":\"px\"},\"xs\":{\"value\":\"\",\"unit\":\"px\"},\"lg\":{\"value\":\"\",\"unit\":\"px\"},\"xl\":{\"value\":\"\",\"unit\":\"px\"},\"xxl\":{\"value\":\"\",\"unit\":\"px\"}}},\"content_typography\":{\"font\":\"\",\"weight\":\"\",\"uppercase\":false,\"underline\":false,\"italic\":false,\"size\":{\"md\":{\"value\":\"\",\"unit\":\"px\"},\"sm\":{\"value\":\"\",\"unit\":\"px\"},\"xs\":{\"value\":\"\",\"unit\":\"px\"},\"lg\":{\"value\":\"\",\"unit\":\"px\"},\"xl\":{\"value\":\"18\",\"unit\":\"px\"},\"xxl\":{\"value\":\"\",\"unit\":\"px\"}},\"line_height\":{\"xxl\":{\"value\":\"\",\"unit\":\"px\"},\"xl\":{\"value\":\"26\",\"unit\":\"px\"},\"lg\":{\"value\":\"\",\"unit\":\"px\"},\"md\":{\"value\":\"\",\"unit\":\"px\"},\"sm\":{\"value\":\"\",\"unit\":\"px\"},\"xs\":{\"value\":\"\",\"unit\":\"px\"}},\"letter_spacing\":{\"md\":{\"value\":\"\",\"unit\":\"px\"},\"sm\":{\"value\":\"\",\"unit\":\"px\"},\"xs\":{\"value\":\"\",\"unit\":\"px\"},\"lg\":{\"value\":\"\",\"unit\":\"px\"},\"xl\":{\"value\":\"\",\"unit\":\"px\"},\"xxl\":{\"value\":\"\",\"unit\":\"px\"}}},\"arrow_height\":\"28\",\"arrow_width\":\"28\",\"arrow_font_size\":\"14\",\"arrow_border_width\":\"\",\"row_boxshadow\":{\"ho\":null,\"vo\":null,\"blur\":null,\"spread\":null,\"color\":\"\",\"inset\":false,\"enabled\":false},\"background_type\":\"none\",\"overlay_type\":\"overlay_none\"},\"icon\":\"<svg viewBox=\\\"0 0 32 32\\\" xmlns=\\\"http:\\/\\/www.w3.org\\/2000\\/svg\\\"><path d=\\\"M12 3.329c0 .507.412.92.92.92h1.039v.394c0 .704-.485 1.3-1.144 1.464-.197.049-.364.21-.364.412V7.65c0 .203.165.37.367.348a3.384 3.384 0 003.007-3.355V.92a.92.92 0 00-.92-.919H12.92A.92.92 0 0012 .92v2.409zM16.8 3.329c0 .507.412.92.92.92h1.039v.394c0 .704-.485 1.3-1.144 1.464-.197.049-.364.21-.364.412V7.65c0 .203.165.37.367.348a3.384 3.384 0 003.007-3.355V.92a.92.92 0 00-.92-.919H17.72a.92.92 0 00-.92.92v2.409z\\\" fill=\\\"currentColor\\\"\\/><path opacity=\\\".5\\\" fill-rule=\\\"evenodd\\\" clip-rule=\\\"evenodd\\\" d=\\\"M2 13c0-.552.464-1 1.037-1h25.926c.573 0 1.037.448 1.037 1s-.464 1-1.037 1H3.037C2.464 14 2 13.552 2 13zM2 17c0-.552.464-1 1.037-1h25.926c.573 0 1.037.448 1.037 1s-.464 1-1.037 1H3.037C2.464 18 2 17.552 2 17zM10 21a1 1 0 011-1h10a1 1 0 110 2H11a1 1 0 01-1-1z\\\" fill=\\\"currentColor\\\"\\/><circle opacity=\\\".5\\\" cx=\\\"10.5\\\" cy=\\\"30.5\\\" r=\\\"1.5\\\" fill=\\\"currentColor\\\"\\/><circle opacity=\\\".5\\\" cx=\\\"22.5\\\" cy=\\\"30.5\\\" r=\\\"1.5\\\" fill=\\\"currentColor\\\"\\/><circle cx=\\\"16.5\\\" cy=\\\"30.5\\\" r=\\\"1.5\\\" fill=\\\"currentColor\\\"\\/><\\/svg>\",\"title\":\"Helix Testimonial Pro\",\"parent\":false}],\"width\":{\"xxl\":\"100%\",\"xl\":\"100%\",\"lg\":\"100%\",\"md\":\"100%\",\"sm\":\"100%\",\"xs\":\"100%\"}}],\"parent\":false},{\"id\":\"SOvqcnlB08C5i4x3FPNxK\",\"visibility\":true,\"collapse\":false,\"settings\":{\"fit_columns\":{\"xxl\":true,\"xl\":true,\"lg\":true,\"md\":true,\"sm\":false,\"xs\":false},\"background_type\":\"image\",\"background_gradient\":{\"color\":\"#00c6fb\",\"color2\":\"#005bea\",\"deg\":\"45\",\"type\":\"linear\"},\"background_image\":{\"src\":\"images\\/cta-bg.jpg\"},\"background_parallax\":\"0\",\"background_repeat\":\"no-repeat\",\"background_size\":\"cover\",\"background_size_custom\":{\"unit\":\"px\"},\"background_attachment\":\"fixed\",\"background_position\":\"50% 50%\",\"background_position_custom_x\":{\"unit\":\"px\"},\"background_position_custom_y\":{\"unit\":\"px\"},\"external_background_video\":0,\"background_video_ogv\":{\"src\":\"\"},\"video_loop\":1,\"overlay_type\":\"overlay_none\",\"gradient_overlay\":{\"color\":\"rgba(127, 0, 255, 0.8)\",\"color2\":\"rgba(225, 0, 255, 0.7)\",\"deg\":\"45\",\"type\":\"linear\"},\"pattern_overlay\":\"\",\"overlay_pattern_color\":\"\",\"blend_mode\":\"normal\",\"columns_align_center\":0,\"columns_content_alignment\":\"center\",\"fullscreen\":0,\"no_gutter\":0,\"row_width\":{\"unit\":\"px\"},\"row_max_width\":{\"unit\":\"px\"},\"row_min_width\":{\"unit\":\"px\"},\"padding\":{\"xxl\":\"100px 0px 100px 0px\",\"xl\":\"100px 0px 100px 0px\",\"lg\":\"100px 0px 100px 0px\",\"md\":\"100px 0px 100px 0px\",\"sm\":\"100px 0px 100px 0px\",\"xs\":\"100px 0px 100px 0px\"},\"margin\":{\"xxl\":\"0px 0px 0px 0px\",\"xl\":\"0px 0px 0px 0px\",\"lg\":\"0px 0px 0px 0px\",\"md\":\"0px 0px 0px 0px\",\"sm\":\"0px 0px 0px 0px\",\"xs\":\"0px 0px 0px 0px\"},\"row_border\":0,\"row_border_style\":\"solid\",\"row_boxshadow\":{\"ho\":0,\"vo\":0,\"blur\":0,\"spread\":0,\"color\":\"#FFFFFF\",\"inset\":false,\"enabled\":false},\"show_top_shape\":\"\",\"shape_name\":\"clouds-flat\",\"shape_color\":\"#e5e5e5\",\"shape_width\":{\"xxl\":\"\",\"xl\":100,\"lg\":100,\"md\":100,\"sm\":100,\"xs\":100},\"shape_height\":\"\",\"shape_flip\":false,\"shape_invert\":false,\"shape_to_front\":false,\"show_bottom_shape\":\"\",\"bottom_shape_name\":\"clouds-opacity\",\"bottom_shape_color\":\"#e5e5e5\",\"bottom_shape_width\":{\"xl\":100},\"bottom_shape_height\":\"\",\"bottom_shape_flip\":false,\"bottom_shape_invert\":false,\"bottom_shape_to_front\":false,\"heading_selector\":\"h3\",\"title_fontsize\":\"\",\"title_fontweight\":\"\",\"title_position\":\"center\",\"admin_label\":\"\",\"hidden_xs\":\"\",\"hidden_sm\":\"\",\"hidden_md\":\"\",\"enable_animation\":\"1\",\"animationduration\":\"300\",\"animationdelay\":\"0\",\"instFormId\":1668400114365,\"global_boxshadow\":{\"ho\":null,\"vo\":null,\"blur\":null,\"spread\":null,\"color\":\"\",\"inset\":false,\"enabled\":false},\"global_background_type\":\"none\"},\"layout\":\"12\",\"columns\":[{\"id\":\"TIkb6SF359dvUx1H8A_QI\",\"class_name\":\"row-column\",\"visibility\":true,\"settings\":{\"background_type\":\"none\",\"background_gradient\":{\"color\":\"#00c6fb\",\"color2\":\"#005bea\",\"deg\":\"45\",\"type\":\"linear\"},\"background_image\":{\"src\":\"\"},\"background_repeat\":\"no-repeat\",\"background_size\":\"cover\",\"background_size_custom\":{\"unit\":\"px\"},\"background_attachment\":\"scroll\",\"background_position\":\"0 0\",\"background_position_custom_x\":{\"unit\":\"px\"},\"background_position_custom_y\":{\"unit\":\"px\"},\"overlay_type\":\"overlay_color\",\"gradient_overlay\":{\"color\":\"rgba(127, 0, 255, 0.8)\",\"color2\":\"rgba(225, 0, 255, 0.7)\",\"deg\":\"45\",\"type\":\"linear\"},\"pattern_overlay\":{\"src\":\"\"},\"overlay_pattern_color\":\"\",\"blend_mode\":\"normal\",\"use_border\":0,\"border_width\":\"\",\"boxshadow\":\"0 0 0 0 #FFFFFF\",\"items_align_center\":0,\"items_content_alignment\":\"center\",\"tablet_order\":\"\",\"mobile_order\":\"\",\"hidden_xs\":\"\",\"hidden_sm\":\"\",\"hidden_md\":\"\",\"enable_animation\":\"1\",\"animationduration\":\"300\",\"animationdelay\":\"0\"},\"addons\":[{\"id\":\"yZjn9mswQ9P7jFLf4BjKE\",\"name\":\"feature\",\"visibility\":true,\"settings\":{\"icon_boxshadow\":\"0 0 0 0 #ffffff\",\"addon_hover_boxshadow\":\"0 0 0 0 #ffffff\",\"global_padding\":\"\",\"global_margin\":\"\",\"global_background_type\":\"none\",\"global_background_gradient\":{\"color\":\"#00c6fb\",\"color2\":\"#005bea\",\"deg\":\"45\",\"type\":\"linear\"},\"global_background_image\":{\"src\":\"\"},\"global_background_repeat\":\"no-repeat\",\"global_background_size\":\"cover\",\"global_background_attachment\":\"inherit\",\"global_background_position\":\"50% 50%\",\"global_use_overlay\":0,\"global_overlay_type\":\"overlay_none\",\"global_gradient_overlay\":{\"color\":\"rgba(127, 0, 255, 0.8)\",\"color2\":\"rgba(225, 0, 255, 0.7)\",\"deg\":\"45\",\"type\":\"linear\"},\"global_pattern_overlay\":{\"src\":\"\"},\"global_overlay_pattern_color\":\"\",\"blend_mode\":\"normal\",\"global_user_border\":0,\"global_border_width\":{\"xxl\":\"\",\"xl\":\"\",\"lg\":\"\",\"md\":\"\",\"sm\":\"\",\"xs\":\"\"},\"global_border_radius\":{\"xxl\":\"\",\"xl\":\"\",\"lg\":\"\",\"md\":\"\",\"sm\":\"\",\"xs\":\"\"},\"global_boxshadow\":\"0 0 0 0 #FFFFFF\",\"global_use_animation\":0,\"global_animationduration\":\"300\",\"global_animationdelay\":\"0\",\"class\":\"\",\"global_custom_css\":\"\",\"global_custom_position\":0,\"global_seclect_position\":\"relative\",\"global_addon_position_left\":{\"unit\":\"px\"},\"global_addon_position_top\":{\"unit\":\"px\"},\"use_global_width\":\"0\",\"hidden_md\":\"0\",\"hidden_sm\":\"0\",\"hidden_xs\":\"0\",\"acl\":\"\",\"admin_label\":\"\",\"while_scroll_view\":[{\"enable_while_scroll_view\":0,\"scrolling_options\":\"fullpage\",\"on_scroll_actions\":[{\"id\":\"b3fdc1c1e6bfde5942ea\",\"index\":0,\"keyframe\":0,\"name\":\"move\",\"property\":{\"x\":\"0\",\"y\":\"-100\",\"z\":\"0\"},\"range\":{\"max\":500,\"min\":-500,\"stop\":1},\"single\":true,\"title\":\"Move\"},{\"id\":\"936e0225e6dc8edfba7d\",\"index\":1,\"keyframe\":100,\"name\":\"move\",\"property\":{\"x\":0,\"y\":0,\"z\":0},\"range\":{\"max\":500,\"min\":-500,\"stop\":1},\"single\":true,\"title\":\"Move\"}],\"transition_origin_x\":\"center\",\"transition_origin_y\":\"center\",\"enable_tablet\":0,\"enable_mobile\":0}],\"mouse_movement\":[{\"enable_tilt_effect\":0,\"mouse_tilt_direction\":\"direct\",\"mouse_tilt_speed\":\"1\",\"mouse_tilt_max\":\"15\",\"enable_tablet\":0,\"enable_mobile\":0}],\"title\":\"Ready to our latest creation Helix III\",\"heading_selector\":\"h2\",\"text\":\"<br data-mce-bogus=\\\"1\\\">\",\"feature_type\":\"image\",\"title_position\":\"\",\"icon_name\":\"fas fa-trophy\",\"feature_image\":{\"src\":\"\",\"height\":\"\",\"width\":\"\"},\"feature_image_alt\":\"\",\"feature_image_width\":{\"xl\":50},\"icon_size\":{\"xxl\":36,\"xl\":36,\"lg\":36,\"md\":36,\"sm\":36,\"xs\":36},\"icon_color\":\"#3366FF\",\"url_appear\":\"title\",\"btn_type\":\"primary\",\"btn_appearance\":\"\",\"btn_shape\":\"rounded\",\"link_btn_padding_bottom\":\"\",\"btn_size\":\"lg\",\"button_padding\":{\"xxl\":\"8px 22px 10px 22px\",\"xl\":\"8px 22px 10px 22px\",\"lg\":\"8px 22px 10px 22px\",\"md\":\"8px 22px 10px 22px\",\"sm\":\"8px 22px 10px 22px\",\"xs\":\"8px 22px 10px 22px\"},\"btn_block\":\"\",\"button_margin\":{\"xxl\":\"0px 0px 0px 0px\",\"xl\":\"0px 0px 0px 0px\",\"lg\":\"0px 0px 0px 0px\",\"md\":\"0px 0px 0px 0px\",\"sm\":\"0px 0px 0px 0px\",\"xs\":\"0px 0px 0px 0px\"},\"btn_icon_position\":\"left\",\"btn_color\":\"#FFFFFF\",\"btn_background_color\":\"#3366FF\",\"btn_background_gradient\":{\"color\":\"#3366FF\",\"color2\":\"#0037DD\",\"deg\":\"45\",\"type\":\"linear\"},\"link_btn_border_color\":\"\",\"btn_color_hover\":\"#FFFFFF\",\"btn_background_color_hover\":\"#0037DD\",\"btn_background_gradient_hover\":{\"color\":\"#0037DD\",\"color2\":\"#3366FF\",\"deg\":\"45\",\"type\":\"linear\"},\"link_btn_hover_color\":\"\",\"link_btn_border_hover_color\":\"\",\"alignment\":{\"xxl\":\"center\",\"xl\":\"center\",\"lg\":\"center\",\"md\":\"center\",\"sm\":\"center\",\"xs\":\"center\"},\"feature_image_margin\":{\"xxl\":\"   \",\"xl\":\"   \",\"lg\":\"   \",\"md\":\"   \",\"sm\":\"   \",\"xs\":\"   \"},\"text_padding\":{\"xxl\":\"0px 0px 0px 0px\",\"xl\":\"   \",\"lg\":\"   \",\"md\":\"   \",\"sm\":\"   \",\"xs\":\"   \"},\"btn_url\":{\"url\":\"http:\\/\\/www.joomshaper.com\\/helix\",\"type\":\"url\",\"new_tab\":false,\"nofollow\":false},\"btn_text\":\"Download Now!\",\"title_text_color\":\"#ffffff\",\"title_margin_bottom\":{\"xxl\":\"0\",\"xl\":\"15\",\"lg\":\"\",\"md\":\"\",\"sm\":\"\",\"xs\":\"\"},\"title_typography\":{\"font\":\"\",\"weight\":600,\"uppercase\":false,\"underline\":false,\"italic\":false,\"size\":{\"md\":{\"value\":\"36\",\"unit\":\"px\"},\"sm\":{\"value\":\"30\",\"unit\":\"px\"},\"xs\":{\"value\":\"30\",\"unit\":\"px\"},\"lg\":{\"value\":\"36\",\"unit\":\"px\"},\"xl\":{\"value\":\"36\",\"unit\":\"px\"},\"xxl\":{\"value\":\"36\",\"unit\":\"px\"}},\"line_height\":{\"xxl\":{\"value\":\"36\",\"unit\":\"px\"},\"xl\":{\"value\":\"36\",\"unit\":\"px\"},\"lg\":{\"value\":\"36\",\"unit\":\"px\"},\"md\":{\"value\":\"36\",\"unit\":\"px\"},\"sm\":{\"value\":\"30\",\"unit\":\"px\"},\"xs\":{\"value\":\"30\",\"unit\":\"px\"}},\"letter_spacing\":{\"md\":{\"value\":\"\",\"unit\":\"px\"},\"sm\":{\"value\":\"\",\"unit\":\"px\"},\"xs\":{\"value\":\"\",\"unit\":\"px\"},\"lg\":{\"value\":\"\",\"unit\":\"px\"},\"xl\":{\"value\":\"\",\"unit\":\"px\"},\"xxl\":{\"value\":\"\",\"unit\":\"px\"}}},\"title_margin_top\":{\"xxl\":\"0\",\"xl\":\"\",\"lg\":\"\",\"md\":\"\",\"sm\":\"\",\"xs\":\"\",\"unit\":\"px\"}},\"icon\":\"<svg viewBox=\\\"0 0 32 32\\\" xmlns=\\\"http:\\/\\/www.w3.org\\/2000\\/svg\\\"><path opacity=\\\".5\\\" fill-rule=\\\"evenodd\\\" clip-rule=\\\"evenodd\\\" d=\\\"M29 26a1 1 0 01-1 1H4a1 1 0 110-2h24a1 1 0 011 1zM24 31a1 1 0 01-1 1H8a1 1 0 110-2h15a1 1 0 011 1z\\\" fill=\\\"currentColor\\\"\\/><path fill-rule=\\\"evenodd\\\" clip-rule=\\\"evenodd\\\" d=\\\"M16.458 0c.423 0 .81.24.996.62l2.63 5.327 5.882.86a1.111 1.111 0 01.614 1.895l-4.255 4.144 1.005 5.855a1.111 1.111 0 01-1.613 1.171l-5.259-2.765-5.26 2.765a1.111 1.111 0 01-1.611-1.17l1.004-5.856-4.255-4.144a1.111 1.111 0 01.614-1.895l5.882-.86L15.462.62c.187-.379.573-.619.996-.619zm0 3.621l-1.892 3.833a1.111 1.111 0 01-.836.608l-4.232.618 3.062 2.982c.262.255.382.623.32.984l-.723 4.211 3.784-1.99c.324-.17.71-.17 1.034 0l3.784 1.99-.723-4.21a1.11 1.11 0 01.32-.985l3.062-2.982-4.232-.618a1.111 1.111 0 01-.836-.608l-1.892-3.833z\\\" fill=\\\"currentColor\\\"\\/><\\/svg>\",\"title\":\"Feature Box\",\"parent\":false}],\"width\":{\"xxl\":\"100%\",\"xl\":\"100%\",\"lg\":\"100%\",\"md\":\"100%\",\"sm\":\"100%\",\"xs\":\"100%\"}}],\"parent\":false}]',NULL,'com_sppagebuilder','page',0,0,1,0,1,0,'2015-01-22 07:12:35',675,'2022-01-05 12:13:59',675,0,'0000-00-00 00:00:00','[]','','','','*',99,'','');
/*!40000 ALTER TABLE `adtifuja_sppagebuilder` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtifuja_sppagebuilder_addonlist`
--

DROP TABLE IF EXISTS `adtifuja_sppagebuilder_addonlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtifuja_sppagebuilder_addonlist` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `is_favorite` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtifuja_sppagebuilder_addonlist`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtifuja_sppagebuilder_addonlist` WRITE;
/*!40000 ALTER TABLE `adtifuja_sppagebuilder_addonlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `adtifuja_sppagebuilder_addonlist` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtifuja_sppagebuilder_addons`
--

DROP TABLE IF EXISTS `adtifuja_sppagebuilder_addons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtifuja_sppagebuilder_addons` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `code` mediumtext NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `created` datetime NOT NULL,
  `created_by` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtifuja_sppagebuilder_addons`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtifuja_sppagebuilder_addons` WRITE;
/*!40000 ALTER TABLE `adtifuja_sppagebuilder_addons` DISABLE KEYS */;
/*!40000 ALTER TABLE `adtifuja_sppagebuilder_addons` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtifuja_sppagebuilder_assets`
--

DROP TABLE IF EXISTS `adtifuja_sppagebuilder_assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtifuja_sppagebuilder_assets` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` varchar(100) NOT NULL DEFAULT '',
  `name` varchar(100) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `assets` text NOT NULL,
  `css_path` text DEFAULT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT 1,
  `access` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtifuja_sppagebuilder_assets`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtifuja_sppagebuilder_assets` WRITE;
/*!40000 ALTER TABLE `adtifuja_sppagebuilder_assets` DISABLE KEYS */;
/*!40000 ALTER TABLE `adtifuja_sppagebuilder_assets` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtifuja_sppagebuilder_collection_fields`
--

DROP TABLE IF EXISTS `adtifuja_sppagebuilder_collection_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtifuja_sppagebuilder_collection_fields` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `collection_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(255) NOT NULL DEFAULT '' COMMENT 'title, alias, text, rich-text, image, video, datetime, link, number, switch, color, option, file, checkbox, reference, multi-reference, divider, and more',
  `description` text DEFAULT NULL,
  `options` text DEFAULT NULL,
  `max_length` int(10) unsigned DEFAULT NULL,
  `min_length` int(10) unsigned DEFAULT NULL,
  `default_value` text DEFAULT NULL,
  `placeholder` varchar(255) DEFAULT NULL,
  `required` tinyint(4) NOT NULL DEFAULT 0,
  `reference_collection_id` bigint(20) unsigned DEFAULT NULL,
  `is_textarea` tinyint(4) NOT NULL DEFAULT 0,
  `show_time` tinyint(4) NOT NULL DEFAULT 0,
  `file_extensions` varchar(300) DEFAULT NULL COMMENT 'Comma separated extensions for file type',
  `number_format` varchar(100) DEFAULT NULL COMMENT 'Available values: decimal, integer. NULL for allow both.',
  `allow_negative` tinyint(4) NOT NULL DEFAULT 0,
  `number_unit` varchar(100) DEFAULT NULL COMMENT 'Available values: percent, degree. NULL for no unit.',
  `number_step` decimal(13,2) DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `created` datetime NOT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `modified` datetime NOT NULL DEFAULT current_timestamp(),
  `modified_by` bigint(20) DEFAULT NULL,
  `is_single_location` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_collection_id` (`collection_id`),
  CONSTRAINT `adtifuja_sppagebuilder_collection_fields_ibfk_1` FOREIGN KEY (`collection_id`) REFERENCES `adtifuja_sppagebuilder_collections` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtifuja_sppagebuilder_collection_fields`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtifuja_sppagebuilder_collection_fields` WRITE;
/*!40000 ALTER TABLE `adtifuja_sppagebuilder_collection_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `adtifuja_sppagebuilder_collection_fields` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtifuja_sppagebuilder_collection_imports`
--

DROP TABLE IF EXISTS `adtifuja_sppagebuilder_collection_imports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtifuja_sppagebuilder_collection_imports` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `data` text DEFAULT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtifuja_sppagebuilder_collection_imports`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtifuja_sppagebuilder_collection_imports` WRITE;
/*!40000 ALTER TABLE `adtifuja_sppagebuilder_collection_imports` DISABLE KEYS */;
/*!40000 ALTER TABLE `adtifuja_sppagebuilder_collection_imports` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtifuja_sppagebuilder_collection_item_values`
--

DROP TABLE IF EXISTS `adtifuja_sppagebuilder_collection_item_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtifuja_sppagebuilder_collection_item_values` (
  `item_id` bigint(20) unsigned NOT NULL,
  `field_id` bigint(20) unsigned NOT NULL,
  `value` text DEFAULT NULL,
  `reference_item_id` bigint(20) unsigned DEFAULT NULL COMMENT 'The reference item id from the #__sppagebuilder_collection_items table.',
  KEY `item_id` (`item_id`),
  KEY `field_id` (`field_id`),
  KEY `reference_item_id` (`reference_item_id`),
  CONSTRAINT `adtifuja_sppagebuilder_collection_item_values_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `adtifuja_sppagebuilder_collection_items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `adtifuja_sppagebuilder_collection_item_values_ibfk_2` FOREIGN KEY (`field_id`) REFERENCES `adtifuja_sppagebuilder_collection_fields` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `adtifuja_sppagebuilder_collection_item_values_ibfk_3` FOREIGN KEY (`reference_item_id`) REFERENCES `adtifuja_sppagebuilder_collection_items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtifuja_sppagebuilder_collection_item_values`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtifuja_sppagebuilder_collection_item_values` WRITE;
/*!40000 ALTER TABLE `adtifuja_sppagebuilder_collection_item_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `adtifuja_sppagebuilder_collection_item_values` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtifuja_sppagebuilder_collection_items`
--

DROP TABLE IF EXISTS `adtifuja_sppagebuilder_collection_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtifuja_sppagebuilder_collection_items` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `collection_id` bigint(20) unsigned NOT NULL,
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `access` int(10) unsigned NOT NULL DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `language` char(7) NOT NULL DEFAULT '*',
  `created` datetime NOT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `modified` datetime NOT NULL DEFAULT current_timestamp(),
  `modified_by` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_collection_id` (`collection_id`),
  CONSTRAINT `adtifuja_sppagebuilder_collection_items_ibfk_1` FOREIGN KEY (`collection_id`) REFERENCES `adtifuja_sppagebuilder_collections` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtifuja_sppagebuilder_collection_items`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtifuja_sppagebuilder_collection_items` WRITE;
/*!40000 ALTER TABLE `adtifuja_sppagebuilder_collection_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `adtifuja_sppagebuilder_collection_items` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtifuja_sppagebuilder_collections`
--

DROP TABLE IF EXISTS `adtifuja_sppagebuilder_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtifuja_sppagebuilder_collections` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `published` tinyint(4) NOT NULL DEFAULT 1,
  `access` int(10) unsigned NOT NULL DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `language` char(7) NOT NULL DEFAULT '*',
  `created` datetime NOT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `modified` datetime NOT NULL DEFAULT current_timestamp(),
  `modified_by` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtifuja_sppagebuilder_collections`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtifuja_sppagebuilder_collections` WRITE;
/*!40000 ALTER TABLE `adtifuja_sppagebuilder_collections` DISABLE KEYS */;
/*!40000 ALTER TABLE `adtifuja_sppagebuilder_collections` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtifuja_sppagebuilder_colors`
--

DROP TABLE IF EXISTS `adtifuja_sppagebuilder_colors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtifuja_sppagebuilder_colors` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `colors` text DEFAULT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtifuja_sppagebuilder_colors`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtifuja_sppagebuilder_colors` WRITE;
/*!40000 ALTER TABLE `adtifuja_sppagebuilder_colors` DISABLE KEYS */;
/*!40000 ALTER TABLE `adtifuja_sppagebuilder_colors` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtifuja_sppagebuilder_comments`
--

DROP TABLE IF EXISTS `adtifuja_sppagebuilder_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtifuja_sppagebuilder_comments` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `source_type` varchar(50) NOT NULL DEFAULT 'article',
  `item_id` bigint(20) unsigned NOT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `content` text NOT NULL,
  `replies` int(11) NOT NULL DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `published` tinyint(1) NOT NULL DEFAULT 0,
  `access` int(10) unsigned NOT NULL DEFAULT 0,
  `checked_out` int(11) NOT NULL DEFAULT 0,
  `checked_out_time` datetime DEFAULT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created_on` datetime NOT NULL DEFAULT current_timestamp(),
  `modified` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtifuja_sppagebuilder_comments`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtifuja_sppagebuilder_comments` WRITE;
/*!40000 ALTER TABLE `adtifuja_sppagebuilder_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `adtifuja_sppagebuilder_comments` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtifuja_sppagebuilder_fonts`
--

DROP TABLE IF EXISTS `adtifuja_sppagebuilder_fonts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtifuja_sppagebuilder_fonts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `family_name` varchar(100) NOT NULL DEFAULT '',
  `data` text DEFAULT NULL,
  `type` enum('google','local') DEFAULT 'google',
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `family_name` (`family_name`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtifuja_sppagebuilder_fonts`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtifuja_sppagebuilder_fonts` WRITE;
/*!40000 ALTER TABLE `adtifuja_sppagebuilder_fonts` DISABLE KEYS */;
/*!40000 ALTER TABLE `adtifuja_sppagebuilder_fonts` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtifuja_sppagebuilder_image_shapes`
--

DROP TABLE IF EXISTS `adtifuja_sppagebuilder_image_shapes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtifuja_sppagebuilder_image_shapes` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `shape` text DEFAULT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtifuja_sppagebuilder_image_shapes`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtifuja_sppagebuilder_image_shapes` WRITE;
/*!40000 ALTER TABLE `adtifuja_sppagebuilder_image_shapes` DISABLE KEYS */;
/*!40000 ALTER TABLE `adtifuja_sppagebuilder_image_shapes` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtifuja_sppagebuilder_integrations`
--

DROP TABLE IF EXISTS `adtifuja_sppagebuilder_integrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtifuja_sppagebuilder_integrations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `component` varchar(255) NOT NULL DEFAULT '',
  `plugin` mediumtext NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtifuja_sppagebuilder_integrations`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtifuja_sppagebuilder_integrations` WRITE;
/*!40000 ALTER TABLE `adtifuja_sppagebuilder_integrations` DISABLE KEYS */;
/*!40000 ALTER TABLE `adtifuja_sppagebuilder_integrations` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtifuja_sppagebuilder_languages`
--

DROP TABLE IF EXISTS `adtifuja_sppagebuilder_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtifuja_sppagebuilder_languages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) DEFAULT NULL,
  `lang_tag` varchar(255) NOT NULL DEFAULT '',
  `lang_key` varchar(100) DEFAULT NULL,
  `version` varchar(255) NOT NULL DEFAULT '',
  `state` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtifuja_sppagebuilder_languages`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtifuja_sppagebuilder_languages` WRITE;
/*!40000 ALTER TABLE `adtifuja_sppagebuilder_languages` DISABLE KEYS */;
/*!40000 ALTER TABLE `adtifuja_sppagebuilder_languages` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtifuja_sppagebuilder_likes`
--

DROP TABLE IF EXISTS `adtifuja_sppagebuilder_likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtifuja_sppagebuilder_likes` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `comment_id` bigint(20) NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_comment_id` (`comment_id`),
  CONSTRAINT `adtifuja_sppagebuilder_likes_ibfk_1` FOREIGN KEY (`comment_id`) REFERENCES `adtifuja_sppagebuilder_comments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtifuja_sppagebuilder_likes`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtifuja_sppagebuilder_likes` WRITE;
/*!40000 ALTER TABLE `adtifuja_sppagebuilder_likes` DISABLE KEYS */;
/*!40000 ALTER TABLE `adtifuja_sppagebuilder_likes` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtifuja_sppagebuilder_presets`
--

DROP TABLE IF EXISTS `adtifuja_sppagebuilder_presets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtifuja_sppagebuilder_presets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `addon_name` varchar(255) NOT NULL DEFAULT '',
  `preset` mediumtext NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `created` datetime NOT NULL,
  `created_by` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtifuja_sppagebuilder_presets`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtifuja_sppagebuilder_presets` WRITE;
/*!40000 ALTER TABLE `adtifuja_sppagebuilder_presets` DISABLE KEYS */;
/*!40000 ALTER TABLE `adtifuja_sppagebuilder_presets` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtifuja_sppagebuilder_sections`
--

DROP TABLE IF EXISTS `adtifuja_sppagebuilder_sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtifuja_sppagebuilder_sections` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `section` mediumtext NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `created` datetime NOT NULL,
  `created_by` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtifuja_sppagebuilder_sections`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtifuja_sppagebuilder_sections` WRITE;
/*!40000 ALTER TABLE `adtifuja_sppagebuilder_sections` DISABLE KEYS */;
/*!40000 ALTER TABLE `adtifuja_sppagebuilder_sections` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtifuja_sppagebuilder_typography`
--

DROP TABLE IF EXISTS `adtifuja_sppagebuilder_typography`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtifuja_sppagebuilder_typography` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `typography` text DEFAULT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtifuja_sppagebuilder_typography`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtifuja_sppagebuilder_typography` WRITE;
/*!40000 ALTER TABLE `adtifuja_sppagebuilder_typography` DISABLE KEYS */;
/*!40000 ALTER TABLE `adtifuja_sppagebuilder_typography` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtifuja_sppagebuilder_versions`
--

DROP TABLE IF EXISTS `adtifuja_sppagebuilder_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtifuja_sppagebuilder_versions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `page_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `content` mediumtext DEFAULT NULL,
  `css` longtext NOT NULL,
  `attribs` varchar(5120) NOT NULL DEFAULT '[]',
  `og_title` varchar(255) NOT NULL DEFAULT '',
  `og_image` varchar(255) NOT NULL DEFAULT '',
  `og_description` varchar(255) NOT NULL DEFAULT '',
  `note` text DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `created_on` datetime NOT NULL,
  `created_by` bigint(20) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_page_id` (`page_id`),
  KEY `idx_page_created` (`page_id`,`created_on`),
  KEY `idx_active` (`active`),
  CONSTRAINT `fk_sppagebuilder_versions_page` FOREIGN KEY (`page_id`) REFERENCES `adtifuja_sppagebuilder` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtifuja_sppagebuilder_versions`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtifuja_sppagebuilder_versions` WRITE;
/*!40000 ALTER TABLE `adtifuja_sppagebuilder_versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `adtifuja_sppagebuilder_versions` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtifuja_spsimpleportfolio_items`
--

DROP TABLE IF EXISTS `adtifuja_spsimpleportfolio_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtifuja_spsimpleportfolio_items` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(55) NOT NULL,
  `catid` int(11) NOT NULL,
  `image` text NOT NULL,
  `thumbnail` text NOT NULL,
  `video` text NOT NULL,
  `description` mediumtext DEFAULT NULL,
  `client` varchar(100) NOT NULL,
  `client_avatar` text NOT NULL,
  `tagids` text NOT NULL,
  `url` text NOT NULL,
  `published` tinyint(4) NOT NULL DEFAULT 1,
  `language` varchar(255) NOT NULL DEFAULT '*',
  `access` int(11) NOT NULL DEFAULT 1,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `created_by` bigint(20) NOT NULL DEFAULT 0,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` bigint(20) NOT NULL DEFAULT 0,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `checked_out` bigint(20) DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtifuja_spsimpleportfolio_items`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtifuja_spsimpleportfolio_items` WRITE;
/*!40000 ALTER TABLE `adtifuja_spsimpleportfolio_items` DISABLE KEYS */;
INSERT INTO `adtifuja_spsimpleportfolio_items` VALUES
(1,'Responsive news Template','responsive-news-template',0,'images/showcase/showcase01.jpg','','','<p style=\"border: 0px; margin: 0px 0px 24px; padding: 0px; vertical-align: baseline; font-family: Georgia, \'Bitstream Charter\', serif; font-size: 16px; line-height: 24px; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: 0px 0px; background-repeat: initial;\">Bacon ipsum dolor amet pork belly turducken strip steak meatloaf short ribs corned beef. Sausage landjaeger frankfurter leberkas chicken. Ball tip short loin picanha cow sausage. Short loin swine sausage, shank tail ham ball tip jerky boudin.</p>\r\n<p style=\"border: 0px; margin: 0px 0px 24px; padding: 0px; vertical-align: baseline; font-family: Georgia, \'Bitstream Charter\', serif; font-size: 16px; line-height: 24px; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: 0px 0px; background-repeat: initial;\">Sirloin pork loin beef andouille capicola shank swine chuck flank tri-tip. Capicola kevin filet mignon porchetta doner short ribs flank. Capicola pork chop turducken, ground round shoulder ribeye cupim doner jowl. Turkey shank pork belly jerky salami.</p>\r\n<p style=\"border: 0px; margin: 0px 0px 24px; padding: 0px; vertical-align: baseline; font-family: Georgia, \'Bitstream Charter\', serif; font-size: 16px; line-height: 24px; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: 0px 0px; background-repeat: initial;\">Chicken kevin pastrami tenderloin, tail corned beef prosciutto sirloin ribeye beef ribs pork chop tri-tip swine meatball. Pork chop swine porchetta fatback, strip steak filet mignon ham beef chicken meatloaf. Drumstick spare ribs corned beef, cow andouille cupim shankle pork beef ribs bacon flank salami leberkas. Shank turducken t-bone corned beef ground round shoulder cow beef ribs leberkas ribeye pork venison kevin meatloaf landjaeger. Ball tip jowl tongue venison. Ground round cow pork loin, sirloin venison cupim ham hock hamburger.</p>','','','[\"4\"]','',1,'*',1,0,391,'2015-01-22 12:04:57',391,'2015-01-23 10:40:23',NULL,NULL),
(2,'Free Joomla Template','free-joomla-template',0,'images/showcase/showcase02.jpg','','','<p style=\"border: 0px; margin: 0px 0px 24px; padding: 0px; vertical-align: baseline; font-family: Georgia, \'Bitstream Charter\', serif; font-size: 16px; line-height: 24px; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: 0px 0px; background-repeat: initial;\">Bacon ipsum dolor amet pork belly turducken strip steak meatloaf short ribs corned beef. Sausage landjaeger frankfurter leberkas chicken. Ball tip short loin picanha cow sausage. Short loin swine sausage, shank tail ham ball tip jerky boudin.</p>\r\n<p style=\"border: 0px; margin: 0px 0px 24px; padding: 0px; vertical-align: baseline; font-family: Georgia, \'Bitstream Charter\', serif; font-size: 16px; line-height: 24px; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: 0px 0px; background-repeat: initial;\">Sirloin pork loin beef andouille capicola shank swine chuck flank tri-tip. Capicola kevin filet mignon porchetta doner short ribs flank. Capicola pork chop turducken, ground round shoulder ribeye cupim doner jowl. Turkey shank pork belly jerky salami.</p>\r\n<p style=\"border: 0px; margin: 0px 0px 24px; padding: 0px; vertical-align: baseline; font-family: Georgia, \'Bitstream Charter\', serif; font-size: 16px; line-height: 24px; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: 0px 0px; background-repeat: initial;\">Chicken kevin pastrami tenderloin, tail corned beef prosciutto sirloin ribeye beef ribs pork chop tri-tip swine meatball. Pork chop swine porchetta fatback, strip steak filet mignon ham beef chicken meatloaf. Drumstick spare ribs corned beef, cow andouille cupim shankle pork beef ribs bacon flank salami leberkas. Shank turducken t-bone corned beef ground round shoulder cow beef ribs leberkas ribeye pork venison kevin meatloaf landjaeger. Ball tip jowl tongue venison. Ground round cow pork loin, sirloin venison cupim ham hock hamburger.</p>','','','[\"1\"]','',1,'*',1,0,391,'2015-01-22 12:05:55',391,'2015-01-23 10:40:31',NULL,NULL),
(3,'Helix Free Template','helix-free-template',0,'images/showcase/showcase03.jpg','','','<p style=\"border: 0px; margin: 0px 0px 24px; padding: 0px; vertical-align: baseline; font-family: Georgia, \'Bitstream Charter\', serif; font-size: 16px; line-height: 24px; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: 0px 0px; background-repeat: initial;\">Bacon ipsum dolor amet pork belly turducken strip steak meatloaf short ribs corned beef. Sausage landjaeger frankfurter leberkas chicken. Ball tip short loin picanha cow sausage. Short loin swine sausage, shank tail ham ball tip jerky boudin.</p>\r\n<p style=\"border: 0px; margin: 0px 0px 24px; padding: 0px; vertical-align: baseline; font-family: Georgia, \'Bitstream Charter\', serif; font-size: 16px; line-height: 24px; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: 0px 0px; background-repeat: initial;\">Sirloin pork loin beef andouille capicola shank swine chuck flank tri-tip. Capicola kevin filet mignon porchetta doner short ribs flank. Capicola pork chop turducken, ground round shoulder ribeye cupim doner jowl. Turkey shank pork belly jerky salami.</p>\r\n<p style=\"border: 0px; margin: 0px 0px 24px; padding: 0px; vertical-align: baseline; font-family: Georgia, \'Bitstream Charter\', serif; font-size: 16px; line-height: 24px; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: 0px 0px; background-repeat: initial;\">Chicken kevin pastrami tenderloin, tail corned beef prosciutto sirloin ribeye beef ribs pork chop tri-tip swine meatball. Pork chop swine porchetta fatback, strip steak filet mignon ham beef chicken meatloaf. Drumstick spare ribs corned beef, cow andouille cupim shankle pork beef ribs bacon flank salami leberkas. Shank turducken t-bone corned beef ground round shoulder cow beef ribs leberkas ribeye pork venison kevin meatloaf landjaeger. Ball tip jowl tongue venison. Ground round cow pork loin, sirloin venison cupim ham hock hamburger.</p>','','','[\"1\"]','',1,'*',1,0,391,'2015-01-22 12:06:32',391,'2015-01-23 10:40:03',NULL,NULL),
(4,'Corporate Template','corporate-template',0,'images/showcase/showcase04.jpg','','','<p style=\"border: 0px; margin: 0px 0px 24px; padding: 0px; vertical-align: baseline; font-family: Georgia, \'Bitstream Charter\', serif; font-size: 16px; line-height: 24px; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: 0px 0px; background-repeat: initial;\">Bacon ipsum dolor amet pork belly turducken strip steak meatloaf short ribs corned beef. Sausage landjaeger frankfurter leberkas chicken. Ball tip short loin picanha cow sausage. Short loin swine sausage, shank tail ham ball tip jerky boudin.</p>\r\n<p style=\"border: 0px; margin: 0px 0px 24px; padding: 0px; vertical-align: baseline; font-family: Georgia, \'Bitstream Charter\', serif; font-size: 16px; line-height: 24px; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: 0px 0px; background-repeat: initial;\">Sirloin pork loin beef andouille capicola shank swine chuck flank tri-tip. Capicola kevin filet mignon porchetta doner short ribs flank. Capicola pork chop turducken, ground round shoulder ribeye cupim doner jowl. Turkey shank pork belly jerky salami.</p>\r\n<p style=\"border: 0px; margin: 0px 0px 24px; padding: 0px; vertical-align: baseline; font-family: Georgia, \'Bitstream Charter\', serif; font-size: 16px; line-height: 24px; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: 0px 0px; background-repeat: initial;\">Chicken kevin pastrami tenderloin, tail corned beef prosciutto sirloin ribeye beef ribs pork chop tri-tip swine meatball. Pork chop swine porchetta fatback, strip steak filet mignon ham beef chicken meatloaf. Drumstick spare ribs corned beef, cow andouille cupim shankle pork beef ribs bacon flank salami leberkas. Shank turducken t-bone corned beef ground round shoulder cow beef ribs leberkas ribeye pork venison kevin meatloaf landjaeger. Ball tip jowl tongue venison. Ground round cow pork loin, sirloin venison cupim ham hock hamburger.</p>','','','[\"3\"]','',1,'*',1,0,391,'2015-01-22 12:07:01',391,'2015-01-23 10:29:07',NULL,NULL),
(5,'SP Page Builder','sp-page-builder',0,'images/showcase/showcase05.jpg','','','<p style=\"border: 0px; margin: 0px 0px 24px; padding: 0px; vertical-align: baseline; font-family: Georgia, \'Bitstream Charter\', serif; font-size: 16px; line-height: 24px; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: 0px 0px; background-repeat: initial;\">Bacon ipsum dolor amet pork belly turducken strip steak meatloaf short ribs corned beef. Sausage landjaeger frankfurter leberkas chicken. Ball tip short loin picanha cow sausage. Short loin swine sausage, shank tail ham ball tip jerky boudin.</p>\r\n<p style=\"border: 0px; margin: 0px 0px 24px; padding: 0px; vertical-align: baseline; font-family: Georgia, \'Bitstream Charter\', serif; font-size: 16px; line-height: 24px; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: 0px 0px; background-repeat: initial;\">Sirloin pork loin beef andouille capicola shank swine chuck flank tri-tip. Capicola kevin filet mignon porchetta doner short ribs flank. Capicola pork chop turducken, ground round shoulder ribeye cupim doner jowl. Turkey shank pork belly jerky salami.</p>\r\n<p style=\"border: 0px; margin: 0px 0px 24px; padding: 0px; vertical-align: baseline; font-family: Georgia, \'Bitstream Charter\', serif; font-size: 16px; line-height: 24px; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: 0px 0px; background-repeat: initial;\">Chicken kevin pastrami tenderloin, tail corned beef prosciutto sirloin ribeye beef ribs pork chop tri-tip swine meatball. Pork chop swine porchetta fatback, strip steak filet mignon ham beef chicken meatloaf. Drumstick spare ribs corned beef, cow andouille cupim shankle pork beef ribs bacon flank salami leberkas. Shank turducken t-bone corned beef ground round shoulder cow beef ribs leberkas ribeye pork venison kevin meatloaf landjaeger. Ball tip jowl tongue venison. Ground round cow pork loin, sirloin venison cupim ham hock hamburger.</p>','','','[\"2\"]','',1,'*',1,0,391,'2015-01-22 12:07:30',391,'2015-01-23 10:28:54',NULL,NULL),
(6,'Organic Life Template','organic-life-template',0,'images/showcase/showcase06.jpg','','','<p>Bacon ipsum dolor amet pork belly turducken strip steak meatloaf short ribs corned beef. Sausage landjaeger frankfurter leberkas chicken. Ball tip short loin picanha cow sausage. Short loin swine sausage, shank tail ham ball tip jerky boudin.</p>\r\n<p>Sirloin pork loin beef andouille capicola shank swine chuck flank tri-tip. Capicola kevin filet mignon porchetta doner short ribs flank. Capicola pork chop turducken, ground round shoulder ribeye cupim doner jowl. Turkey shank pork belly jerky salami. Chicken kevin pastrami tenderloin, tail corned beef prosciutto sirloin ribeye beef ribs pork chop tri-tip swine meatball.</p>\r\n<p>Pork chop swine porchetta fatback, strip steak filet mignon ham beef chicken meatloaf. Drumstick spare ribs corned beef, cow andouille cupim shankle pork beef ribs bacon flank salami leberkas. Shank turducken t-bone corned beef ground round shoulder cow beef ribs leberkas ribeye pork venison kevin meatloaf landjaeger. Ball tip jowl tongue venison. Ground round cow pork loin, sirloin venison cupim ham hock hamburger.</p>','','','[\"1\"]','',1,'*',1,0,391,'2015-01-23 10:06:10',391,'2015-01-23 10:28:42',NULL,NULL),
(7,'Helix V3 Free Template','helix-v3-free-template',0,'images/showcase/showcase07.jpg','','','<p style=\"border: 0px; margin: 0px 0px 24px; padding: 0px; vertical-align: baseline; font-family: Georgia, \'Bitstream Charter\', serif; font-size: 16px; line-height: 24px; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: 0px 0px; background-repeat: initial;\">Bacon ipsum dolor amet pork belly turducken strip steak meatloaf short ribs corned beef. Sausage landjaeger frankfurter leberkas chicken. Ball tip short loin picanha cow sausage. Short loin swine sausage, shank tail ham ball tip jerky boudin.</p>\r\n<p style=\"border: 0px; margin: 0px 0px 24px; padding: 0px; vertical-align: baseline; font-family: Georgia, \'Bitstream Charter\', serif; font-size: 16px; line-height: 24px; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: 0px 0px; background-repeat: initial;\">Sirloin pork loin beef andouille capicola shank swine chuck flank tri-tip. Capicola kevin filet mignon porchetta doner short ribs flank. Capicola pork chop turducken, ground round shoulder ribeye cupim doner jowl. Turkey shank pork belly jerky salami.</p>\r\n<p style=\"border: 0px; margin: 0px 0px 24px; padding: 0px; vertical-align: baseline; font-family: Georgia, \'Bitstream Charter\', serif; font-size: 16px; line-height: 24px; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: 0px 0px; background-repeat: initial;\">Chicken kevin pastrami tenderloin, tail corned beef prosciutto sirloin ribeye beef ribs pork chop tri-tip swine meatball. Pork chop swine porchetta fatback, strip steak filet mignon ham beef chicken meatloaf. Drumstick spare ribs corned beef, cow andouille cupim shankle pork beef ribs bacon flank salami leberkas. Shank turducken t-bone corned beef ground round shoulder cow beef ribs leberkas ribeye pork venison kevin meatloaf landjaeger. Ball tip jowl tongue venison. Ground round cow pork loin, sirloin venison cupim ham hock hamburger.</p>','','','[\"2\"]','',1,'*',1,0,391,'2015-01-23 10:07:16',391,'2015-01-23 10:28:29',NULL,NULL),
(8,'Optima Premium Template','optima-premium-template',0,'images/showcase/showcase08.jpg','','','<p style=\"border: 0px; margin: 0px 0px 24px; padding: 0px; vertical-align: baseline; font-family: Georgia, \'Bitstream Charter\', serif; font-size: 16px; line-height: 24px; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: 0px 0px; background-repeat: initial;\">Bacon ipsum dolor amet pork belly turducken strip steak meatloaf short ribs corned beef. Sausage landjaeger frankfurter leberkas chicken. Ball tip short loin picanha cow sausage. Short loin swine sausage, shank tail ham ball tip jerky boudin.</p>\r\n<p style=\"border: 0px; margin: 0px 0px 24px; padding: 0px; vertical-align: baseline; font-family: Georgia, \'Bitstream Charter\', serif; font-size: 16px; line-height: 24px; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: 0px 0px; background-repeat: initial;\">Sirloin pork loin beef andouille capicola shank swine chuck flank tri-tip. Capicola kevin filet mignon porchetta doner short ribs flank. Capicola pork chop turducken, ground round shoulder ribeye cupim doner jowl. Turkey shank pork belly jerky salami.</p>\r\n<p style=\"border: 0px; margin: 0px 0px 24px; padding: 0px; vertical-align: baseline; font-family: Georgia, \'Bitstream Charter\', serif; font-size: 16px; line-height: 24px; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: 0px 0px; background-repeat: initial;\">Chicken kevin pastrami tenderloin, tail corned beef prosciutto sirloin ribeye beef ribs pork chop tri-tip swine meatball. Pork chop swine porchetta fatback, strip steak filet mignon ham beef chicken meatloaf. Drumstick spare ribs corned beef, cow andouille cupim shankle pork beef ribs bacon flank salami leberkas. Shank turducken t-bone corned beef ground round shoulder cow beef ribs leberkas ribeye pork venison kevin meatloaf landjaeger. Ball tip jowl tongue venison. Ground round cow pork loin, sirloin venison cupim ham hock hamburger.</p>','','','[\"2\"]','',1,'*',1,0,391,'2015-01-23 10:08:10',391,'2015-01-23 10:28:18',NULL,NULL),
(9,'Vocal Music Theme','vocal-music-theme',0,'images/showcase/showcase09.jpg','','','<p style=\"border: 0px; margin: 0px 0px 24px; padding: 0px; vertical-align: baseline; font-family: Georgia, \'Bitstream Charter\', serif; font-size: 16px; line-height: 24px; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: 0px 0px; background-repeat: initial;\">Bacon ipsum dolor amet pork belly turducken strip steak meatloaf short ribs corned beef. Sausage landjaeger frankfurter leberkas chicken. Ball tip short loin picanha cow sausage. Short loin swine sausage, shank tail ham ball tip jerky boudin.</p>\r\n<p style=\"border: 0px; margin: 0px 0px 24px; padding: 0px; vertical-align: baseline; font-family: Georgia, \'Bitstream Charter\', serif; font-size: 16px; line-height: 24px; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: 0px 0px; background-repeat: initial;\">Sirloin pork loin beef andouille capicola shank swine chuck flank tri-tip. Capicola kevin filet mignon porchetta doner short ribs flank. Capicola pork chop turducken, ground round shoulder ribeye cupim doner jowl. Turkey shank pork belly jerky salami.</p>\r\n<p style=\"border: 0px; margin: 0px 0px 24px; padding: 0px; vertical-align: baseline; font-family: Georgia, \'Bitstream Charter\', serif; font-size: 16px; line-height: 24px; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: 0px 0px; background-repeat: initial;\">Chicken kevin pastrami tenderloin, tail corned beef prosciutto sirloin ribeye beef ribs pork chop tri-tip swine meatball. Pork chop swine porchetta fatback, strip steak filet mignon ham beef chicken meatloaf. Drumstick spare ribs corned beef, cow andouille cupim shankle pork beef ribs bacon flank salami leberkas. Shank turducken t-bone corned beef ground round shoulder cow beef ribs leberkas ribeye pork venison kevin meatloaf landjaeger. Ball tip jowl tongue venison. Ground round cow pork loin, sirloin venison cupim ham hock hamburger.</p>','','','[\"4\"]','',1,'*',1,0,391,'2015-01-23 10:08:46',391,'2015-01-23 10:28:04',NULL,NULL),
(10,'Travel Premium Theme','travel-premium-theme',0,'images/showcase/showcase10.jpg','','','<p style=\"border: 0px; margin: 0px 0px 24px; padding: 0px; vertical-align: baseline; font-family: Georgia, \'Bitstream Charter\', serif; font-size: 16px; line-height: 24px; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: 0px 0px; background-repeat: initial;\">Bacon ipsum dolor amet pork belly turducken strip steak meatloaf short ribs corned beef. Sausage landjaeger frankfurter leberkas chicken. Ball tip short loin picanha cow sausage. Short loin swine sausage, shank tail ham ball tip jerky boudin.</p>\r\n<p style=\"border: 0px; margin: 0px 0px 24px; padding: 0px; vertical-align: baseline; font-family: Georgia, \'Bitstream Charter\', serif; font-size: 16px; line-height: 24px; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: 0px 0px; background-repeat: initial;\">Sirloin pork loin beef andouille capicola shank swine chuck flank tri-tip. Capicola kevin filet mignon porchetta doner short ribs flank. Capicola pork chop turducken, ground round shoulder ribeye cupim doner jowl. Turkey shank pork belly jerky salami.</p>\r\n<p style=\"border: 0px; margin: 0px 0px 24px; padding: 0px; vertical-align: baseline; font-family: Georgia, \'Bitstream Charter\', serif; font-size: 16px; line-height: 24px; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: 0px 0px; background-repeat: initial;\">Chicken kevin pastrami tenderloin, tail corned beef prosciutto sirloin ribeye beef ribs pork chop tri-tip swine meatball. Pork chop swine porchetta fatback, strip steak filet mignon ham beef chicken meatloaf. Drumstick spare ribs corned beef, cow andouille cupim shankle pork beef ribs bacon flank salami leberkas. Shank turducken t-bone corned beef ground round shoulder cow beef ribs leberkas ribeye pork venison kevin meatloaf landjaeger. Ball tip jowl tongue venison. Ground round cow pork loin, sirloin venison cupim ham hock hamburger.</p>','','','[\"1\"]','',1,'*',1,0,391,'2015-01-23 10:09:23',391,'2015-01-23 10:27:52',NULL,NULL),
(11,'Free Magazine Theme','free-magazine-theme',0,'images/showcase/showcase11.jpg','','','<p style=\"border: 0px; margin: 0px 0px 24px; padding: 0px; vertical-align: baseline; font-family: Georgia, \'Bitstream Charter\', serif; font-size: 16px; line-height: 24px; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: 0px 0px; background-repeat: initial;\">Bacon ipsum dolor amet pork belly turducken strip steak meatloaf short ribs corned beef. Sausage landjaeger frankfurter leberkas chicken. Ball tip short loin picanha cow sausage. Short loin swine sausage, shank tail ham ball tip jerky boudin.</p>\r\n<p style=\"border: 0px; margin: 0px 0px 24px; padding: 0px; vertical-align: baseline; font-family: Georgia, \'Bitstream Charter\', serif; font-size: 16px; line-height: 24px; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: 0px 0px; background-repeat: initial;\">Sirloin pork loin beef andouille capicola shank swine chuck flank tri-tip. Capicola kevin filet mignon porchetta doner short ribs flank. Capicola pork chop turducken, ground round shoulder ribeye cupim doner jowl. Turkey shank pork belly jerky salami.</p>\r\n<p style=\"border: 0px; margin: 0px 0px 24px; padding: 0px; vertical-align: baseline; font-family: Georgia, \'Bitstream Charter\', serif; font-size: 16px; line-height: 24px; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: 0px 0px; background-repeat: initial;\">Chicken kevin pastrami tenderloin, tail corned beef prosciutto sirloin ribeye beef ribs pork chop tri-tip swine meatball. Pork chop swine porchetta fatback, strip steak filet mignon ham beef chicken meatloaf. Drumstick spare ribs corned beef, cow andouille cupim shankle pork beef ribs bacon flank salami leberkas. Shank turducken t-bone corned beef ground round shoulder cow beef ribs leberkas ribeye pork venison kevin meatloaf landjaeger. Ball tip jowl tongue venison. Ground round cow pork loin, sirloin venison cupim ham hock hamburger.</p>','','','[\"4\"]','',1,'*',1,0,391,'2015-01-23 10:09:59',391,'2015-01-23 10:27:42',NULL,NULL),
(12,'Minima Joomla Template','minima-joomla-template',0,'images/showcase/showcase12.jpg','','','<p style=\"border: 0px; margin: 0px 0px 24px; padding: 0px; vertical-align: baseline; font-family: Georgia, \'Bitstream Charter\', serif; font-size: 16px; line-height: 24px; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: 0px 0px; background-repeat: initial;\">Bacon ipsum dolor amet pork belly turducken strip steak meatloaf short ribs corned beef. Sausage landjaeger frankfurter leberkas chicken. Ball tip short loin picanha cow sausage. Short loin swine sausage, shank tail ham ball tip jerky boudin.</p>\r\n<p style=\"border: 0px; margin: 0px 0px 24px; padding: 0px; vertical-align: baseline; font-family: Georgia, \'Bitstream Charter\', serif; font-size: 16px; line-height: 24px; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: 0px 0px; background-repeat: initial;\">Sirloin pork loin beef andouille capicola shank swine chuck flank tri-tip. Capicola kevin filet mignon porchetta doner short ribs flank. Capicola pork chop turducken, ground round shoulder ribeye cupim doner jowl. Turkey shank pork belly jerky salami.</p>\r\n<p style=\"border: 0px; margin: 0px 0px 24px; padding: 0px; vertical-align: baseline; font-family: Georgia, \'Bitstream Charter\', serif; font-size: 16px; line-height: 24px; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: 0px 0px; background-repeat: initial;\">Chicken kevin pastrami tenderloin, tail corned beef prosciutto sirloin ribeye beef ribs pork chop tri-tip swine meatball. Pork chop swine porchetta fatback, strip steak filet mignon ham beef chicken meatloaf. Drumstick spare ribs corned beef, cow andouille cupim shankle pork beef ribs bacon flank salami leberkas. Shank turducken t-bone corned beef ground round shoulder cow beef ribs leberkas ribeye pork venison kevin meatloaf landjaeger. Ball tip jowl tongue venison. Ground round cow pork loin, sirloin venison cupim ham hock hamburger.</p>','','','[\"1\"]','',1,'*',1,0,391,'2015-01-23 10:10:38',391,'2015-01-23 10:27:30',NULL,NULL);
/*!40000 ALTER TABLE `adtifuja_spsimpleportfolio_items` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtifuja_spsimpleportfolio_tags`
--

DROP TABLE IF EXISTS `adtifuja_spsimpleportfolio_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtifuja_spsimpleportfolio_tags` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(55) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtifuja_spsimpleportfolio_tags`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtifuja_spsimpleportfolio_tags` WRITE;
/*!40000 ALTER TABLE `adtifuja_spsimpleportfolio_tags` DISABLE KEYS */;
INSERT INTO `adtifuja_spsimpleportfolio_tags` VALUES
(1,'Joomla','joomla'),
(2,'Responsive','responsive'),
(3,'Corporate','corporate'),
(4,'Magazine','magazine');
/*!40000 ALTER TABLE `adtifuja_spsimpleportfolio_tags` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtifuja_tags`
--

DROP TABLE IF EXISTS `adtifuja_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtifuja_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT 0,
  `lft` int(11) NOT NULL DEFAULT 0,
  `rgt` int(11) NOT NULL DEFAULT 0,
  `level` int(10) unsigned NOT NULL DEFAULT 0,
  `path` varchar(400) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT 0,
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT 0,
  `params` mediumtext NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL DEFAULT '',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `created_time` datetime NOT NULL,
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `modified_time` datetime NOT NULL,
  `images` mediumtext NOT NULL,
  `urls` mediumtext NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT 0,
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT 1,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tag_idx` (`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_language` (`language`),
  KEY `idx_path` (`path`(100)),
  KEY `idx_alias` (`alias`(100))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtifuja_tags`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtifuja_tags` WRITE;
/*!40000 ALTER TABLE `adtifuja_tags` DISABLE KEYS */;
INSERT INTO `adtifuja_tags` VALUES
(1,0,0,1,0,'','ROOT','root','','',1,NULL,NULL,1,'','','','',908,'2022-11-13 18:54:38','',908,'2022-11-13 18:54:38','','',0,'*',1,NULL,NULL);
/*!40000 ALTER TABLE `adtifuja_tags` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtifuja_template_overrides`
--

DROP TABLE IF EXISTS `adtifuja_template_overrides`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtifuja_template_overrides` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) NOT NULL DEFAULT '',
  `hash_id` varchar(255) NOT NULL DEFAULT '',
  `extension_id` int(11) DEFAULT 0,
  `state` tinyint(4) NOT NULL DEFAULT 0,
  `action` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `created_date` datetime NOT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_extension_id` (`extension_id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtifuja_template_overrides`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtifuja_template_overrides` WRITE;
/*!40000 ALTER TABLE `adtifuja_template_overrides` DISABLE KEYS */;
INSERT INTO `adtifuja_template_overrides` VALUES
(1,'shaper_helix3','L2h0bWwvY29tX3NlYXJjaC9zZWFyY2gvZGVmYXVsdF9mb3JtLnBocA==',10003,1,'Extension Update',0,'2022-11-14 13:21:57','2022-11-14 13:21:57'),
(2,'shaper_helix3','L2h0bWwvY29tX2NvbnRhY3QvY29udGFjdC9kZWZhdWx0X2Zvcm0ucGhw',10003,1,'Joomla Update',0,'2023-07-05 11:43:40','2026-06-04 07:10:35'),
(3,'shaper_helix3','L2h0bWwvY29tX2NvbnRlbnQvY2F0ZWdvcnkvYmxvZ19pdGVtLnBocA==',10003,1,'Joomla Update',0,'2023-07-05 11:43:40','2026-06-04 07:10:35'),
(4,'shaper_helix3','L2h0bWwvY29tX2NvbnRlbnQvY2F0ZWdvcnkvYmxvZy5waHA=',10003,1,'Joomla Update',0,'2023-07-05 11:43:40','2026-06-04 07:10:35'),
(5,'shaper_helix3','L2h0bWwvY29tX2NvbnRlbnQvYXJ0aWNsZS9kZWZhdWx0LnBocA==',10003,1,'Joomla Update',0,'2023-07-05 11:43:40','2026-06-04 07:10:35'),
(6,'shaper_helix3','L2h0bWwvY29tX2NvbnRlbnQvYXJ0aWNsZS9kZWZhdWx0X2xpbmtzLnBocA==',10003,1,'Joomla Update',0,'2023-07-05 11:43:40','2026-06-04 07:12:22'),
(7,'shaper_helix3','L2h0bWwvY29tX2NvbnRlbnQvYXJjaGl2ZS9kZWZhdWx0X2l0ZW1zLnBocA==',10003,1,'Joomla Update',0,'2023-07-05 11:43:40','2026-06-04 07:10:35'),
(8,'shaper_helix3','L2h0bWwvY29tX2NvbnRlbnQvZm9ybS9lZGl0LnBocA==',10003,1,'Joomla Update',0,'2023-07-05 11:43:40','2026-06-04 07:12:22'),
(9,'shaper_helix3','L2h0bWwvY29tX2NvbnRlbnQvZmVhdHVyZWQvZGVmYXVsdF9pdGVtLnBocA==',10003,1,'Joomla Update',0,'2023-07-05 11:43:40','2026-06-04 07:10:35'),
(10,'shaper_helix3','L2h0bWwvY29tX2ZpbmRlci9zZWFyY2gvZGVmYXVsdF9mb3JtLnBocA==',10003,1,'Joomla Update',0,'2023-07-05 11:43:40','2026-06-04 07:10:35'),
(11,'shaper_helix3','L2h0bWwvY29tX2ZpbmRlci9zZWFyY2gvZGVmYXVsdF9yZXN1bHQucGhw',10003,1,'Joomla Update',0,'2023-07-05 11:43:40','2026-06-04 07:10:35'),
(12,'shaper_helix3','L2h0bWwvY29tX2ZpbmRlci9zZWFyY2gvZGVmYXVsdF9yZXN1bHRzLnBocA==',10003,1,'Joomla Update',0,'2023-07-05 11:43:40','2026-06-04 07:10:35'),
(13,'shaper_helix3','L2h0bWwvY29tX3VzZXJzL2xvZ2luL2RlZmF1bHRfbG9naW4ucGhw',10003,1,'Joomla Update',0,'2023-07-05 11:43:40','2026-06-04 07:12:22'),
(14,'shaper_helix3','L2h0bWwvY29tX3VzZXJzL2xvZ2luL2RlZmF1bHRfbG9nb3V0LnBocA==',10003,1,'Joomla Update',0,'2023-07-05 11:43:40','2026-06-04 07:10:35'),
(15,'shaper_helix3','L2h0bWwvY29tX3VzZXJzL3JlZ2lzdHJhdGlvbi9kZWZhdWx0LnBocA==',10003,1,'Joomla Update',0,'2023-07-05 11:43:40','2026-06-04 07:12:22'),
(16,'shaper_helix3','L2h0bWwvY29tX3VzZXJzL3JlbWluZC9kZWZhdWx0LnBocA==',10003,1,'Joomla Update',0,'2023-07-05 11:43:40','2026-06-04 07:12:22'),
(17,'shaper_helix3','L2h0bWwvY29tX3VzZXJzL3Jlc2V0L2NvbXBsZXRlLnBocA==',10003,1,'Joomla Update',0,'2023-07-05 11:43:40','2026-06-04 07:12:22'),
(18,'shaper_helix3','L2h0bWwvY29tX3VzZXJzL3Jlc2V0L2NvbmZpcm0ucGhw',10003,1,'Joomla Update',0,'2023-07-05 11:43:40','2026-06-04 07:12:22'),
(19,'shaper_helix3','L2h0bWwvY29tX3VzZXJzL3Jlc2V0L2RlZmF1bHQucGhw',10003,1,'Joomla Update',0,'2023-07-05 11:43:40','2026-06-04 07:12:22'),
(20,'shaper_helix3','L2h0bWwvbGF5b3V0cy9qb29tbGEvY29udGVudC9jYXRlZ29yaWVzX2RlZmF1bHRfaXRlbXMucGhw',10003,1,'Joomla Update',0,'2023-07-05 11:43:40',NULL),
(21,'shaper_helix3','L2h0bWwvbGF5b3V0cy9qb29tbGEvY29udGVudC9jYXRlZ29yeV9kZWZhdWx0LnBocA==',10003,1,'Joomla Update',0,'2023-07-05 11:43:40','2023-07-05 11:43:40'),
(22,'shaper_helix3','L2h0bWwvbGF5b3V0cy9qb29tbGEvY29udGVudC9pY29ucy9jcmVhdGUucGhw',10003,1,'Joomla Update',0,'2023-07-05 11:43:40','2026-06-04 07:12:22'),
(23,'shaper_helix3','L2h0bWwvbGF5b3V0cy9qb29tbGEvY29udGVudC9pbmZvX2Jsb2NrL2F1dGhvci5waHA=',10003,1,'Joomla Update',0,'2023-07-05 11:43:40','2026-06-04 07:10:35'),
(24,'shaper_helix3','L2h0bWwvbGF5b3V0cy9qb29tbGEvZWRpdC9mcm9udGVkaXRpbmdfbW9kdWxlcy5waHA=',10003,1,'Joomla Update',0,'2023-07-05 11:43:40','2026-06-04 07:10:35'),
(25,'shaper_helix3','L2h0bWwvbGF5b3V0cy9qb29tbGEvZWRpdC9wYXJhbXMucGhw',10003,1,'Joomla Update',0,'2023-07-05 11:43:40','2026-06-04 07:10:35'),
(26,'shaper_helix3','L2h0bWwvbGF5b3V0cy9qb29tbGEvZWRpdG9ycy9idXR0b25zL2J1dHRvbi5waHA=',10003,1,'Joomla Update',0,'2023-07-05 11:43:40','2026-06-04 07:10:35'),
(27,'shaper_helix3','L2h0bWwvbGF5b3V0cy9saWJyYXJpZXMvaHRtbC9ib290c3RyYXAvbW9kYWwvbWFpbi5waHA=',10003,1,'Joomla Update',0,'2023-07-05 11:43:40','2026-06-04 07:10:35'),
(28,'shaper_helix3','L2h0bWwvbW9kX21lbnUvZGVmYXVsdF91cmwucGhw',10003,1,'Joomla Update',0,'2023-07-05 11:43:40','2026-06-04 07:12:22'),
(29,'shaper_helix3','L2h0bWwvbW9kX21lbnUvZGVmYXVsdF9jb21wb25lbnQucGhw',10003,1,'Joomla Update',0,'2023-07-05 11:43:40','2026-06-04 07:12:22'),
(30,'shaper_helix3','L2h0bWwvbW9kX2FydGljbGVzX2NhdGVnb3JpZXMvZGVmYXVsdF9pdGVtcy5waHA=',10003,1,'Joomla Update',0,'2023-07-05 11:43:40','2026-06-04 07:10:35'),
(31,'shaper_helix3','L2h0bWwvbW9kX2JyZWFkY3J1bWJzL2RlZmF1bHQucGhw',10003,1,'Joomla Update',0,'2023-07-05 11:43:40','2026-06-04 07:10:35'),
(32,'shaper_helix3','L2h0bWwvbW9kX2xvZ2luL2RlZmF1bHQucGhw',10003,1,'Joomla Update',0,'2023-07-05 11:43:40','2026-06-04 07:10:35'),
(33,'shaper_helix3','L2h0bWwvbW9kX2xvZ2luL2RlZmF1bHRfbG9nb3V0LnBocA==',10003,1,'Joomla Update',0,'2023-07-05 11:43:40','2026-06-04 07:10:35'),
(34,'shaper_helix3','L2h0bWwvY29tX2NvbnRlbnQvYXJjaGl2ZS9kZWZhdWx0LnBocA==',10003,1,'Joomla Update',0,'2026-06-04 07:09:16','2026-07-15 10:34:58'),
(35,'shaper_helix3','L2h0bWwvbGF5b3V0cy9qb29tbGEvcGFnaW5hdGlvbi9saW5rLnBocA==',10003,1,'Joomla Update',0,'2026-06-04 07:09:16','2026-06-04 07:09:16'),
(36,'shaper_helix3','L2h0bWwvbW9kX21lbnUvZGVmYXVsdC5waHA=',10003,1,'Joomla Update',0,'2026-06-04 07:09:16','2026-06-04 07:12:22'),
(37,'shaper_helix3','L2h0bWwvY29tX2NvbnRlbnQvY2F0ZWdvcnkvYmxvZ19saW5rcy5waHA=',10003,1,'Joomla Update',0,'2026-06-04 07:10:35','2026-06-04 07:10:35'),
(38,'shaper_helix3','L2h0bWwvY29tX2NvbnRlbnQvZmVhdHVyZWQvZGVmYXVsdC5waHA=',10003,1,'Joomla Update',0,'2026-06-04 07:10:35','2026-06-04 07:10:35'),
(39,'shaper_helix3','L2h0bWwvY29tX2NvbnRlbnQvZmVhdHVyZWQvZGVmYXVsdF9saW5rcy5waHA=',10003,1,'Joomla Update',0,'2026-06-04 07:10:35','2026-06-04 07:10:35'),
(40,'shaper_helix3','L2h0bWwvY29tX2ZpbmRlci9zZWFyY2gvZGVmYXVsdC5waHA=',10003,1,'Joomla Update',0,'2026-06-04 07:10:35','2026-06-04 07:10:35'),
(41,'shaper_helix3','L2h0bWwvY29tX3VzZXJzL2xvZ2luL2RlZmF1bHQucGhw',10003,1,'Joomla Update',0,'2026-06-04 07:10:35','2026-06-04 07:10:35'),
(42,'shaper_helix3','L2h0bWwvY29tX3VzZXJzL3JlZ2lzdHJhdGlvbi9jb21wbGV0ZS5waHA=',10003,1,'Joomla Update',0,'2026-06-04 07:10:35','2026-06-04 07:10:35'),
(43,'shaper_helix3','L2h0bWwvbGF5b3V0cy9qb29tbGEvY29udGVudC90YWdzLnBocA==',10003,1,'Joomla Update',0,'2026-06-04 07:10:35','2026-06-04 07:10:35'),
(44,'shaper_helix3','L2h0bWwvbGF5b3V0cy9qb29tbGEvY29udGVudC9ibG9nX3N0eWxlX2RlZmF1bHRfaXRlbV90aXRsZS5waHA=',10003,1,'Joomla Update',0,'2026-06-04 07:10:35','2026-06-04 07:10:35'),
(45,'shaper_helix3','L2h0bWwvbGF5b3V0cy9qb29tbGEvY29udGVudC9mdWxsX2ltYWdlLnBocA==',10003,1,'Joomla Update',0,'2026-06-04 07:10:35','2026-06-04 07:10:35'),
(46,'shaper_helix3','L2h0bWwvbGF5b3V0cy9qb29tbGEvY29udGVudC9pbmZvX2Jsb2NrL21vZGlmeV9kYXRlLnBocA==',10003,1,'Joomla Update',0,'2026-06-04 07:10:35','2026-06-04 07:10:35'),
(47,'shaper_helix3','L2h0bWwvbGF5b3V0cy9qb29tbGEvY29udGVudC9pbmZvX2Jsb2NrL2NhdGVnb3J5LnBocA==',10003,1,'Joomla Update',0,'2026-06-04 07:10:35','2026-06-04 07:10:35'),
(48,'shaper_helix3','L2h0bWwvbGF5b3V0cy9qb29tbGEvY29udGVudC9pbmZvX2Jsb2NrL2NyZWF0ZV9kYXRlLnBocA==',10003,1,'Joomla Update',0,'2026-06-04 07:10:35','2026-06-04 07:10:35'),
(49,'shaper_helix3','L2h0bWwvbGF5b3V0cy9qb29tbGEvY29udGVudC9pbmZvX2Jsb2NrL2hpdHMucGhw',10003,1,'Joomla Update',0,'2026-06-04 07:10:35','2026-06-04 07:10:35'),
(50,'shaper_helix3','L2h0bWwvbGF5b3V0cy9qb29tbGEvY29udGVudC9pbmZvX2Jsb2NrL3B1Ymxpc2hfZGF0ZS5waHA=',10003,1,'Joomla Update',0,'2026-06-04 07:10:35','2026-06-04 07:10:35'),
(51,'shaper_helix3','L2h0bWwvbGF5b3V0cy9qb29tbGEvY29udGVudC9pbmZvX2Jsb2NrL3BhcmVudF9jYXRlZ29yeS5waHA=',10003,1,'Joomla Update',0,'2026-06-04 07:10:35','2026-06-04 07:10:35'),
(52,'shaper_helix3','L2h0bWwvbGF5b3V0cy9qb29tbGEvY29udGVudC9pbnRyb19pbWFnZS5waHA=',10003,1,'Joomla Update',0,'2026-06-04 07:10:35','2026-06-04 07:10:35'),
(53,'shaper_helix3','L2h0bWwvbGF5b3V0cy9qb29tbGEvY29udGVudC9vcHRpb25zX2RlZmF1bHQucGhw',10003,1,'Joomla Update',0,'2026-06-04 07:10:35','2026-06-04 07:10:35'),
(54,'shaper_helix3','L2h0bWwvbGF5b3V0cy9qb29tbGEvY29udGVudC9yZWFkbW9yZS5waHA=',10003,1,'Joomla Update',0,'2026-06-04 07:10:35','2026-06-04 07:10:35'),
(55,'shaper_helix3','L2h0bWwvbGF5b3V0cy9qb29tbGEvZWRpdG9ycy9idXR0b25zLnBocA==',10003,1,'Joomla Update',0,'2026-06-04 07:10:35','2026-06-04 07:10:35'),
(56,'shaper_helix3','L2h0bWwvbGF5b3V0cy9qb29tbGEvc3lzdGVtL21lc3NhZ2UucGhw',10003,1,'Joomla Update',0,'2026-06-04 07:10:35','2026-07-15 10:34:58'),
(57,'shaper_helix3','L2h0bWwvbGF5b3V0cy9qb29tbGEvcGFnaW5hdGlvbi9saW5rcy5waHA=',10003,1,'Joomla Update',0,'2026-06-04 07:10:35','2026-06-04 07:10:35'),
(58,'shaper_helix3','L2h0bWwvbW9kX21lbnUvZGVmYXVsdF9oZWFkaW5nLnBocA==',10003,1,'Joomla Update',0,'2026-06-04 07:10:35','2026-06-04 07:12:22'),
(59,'shaper_helix3','L2h0bWwvbW9kX21lbnUvZGVmYXVsdF9zZXBhcmF0b3IucGhw',10003,1,'Joomla Update',0,'2026-06-04 07:10:35','2026-06-04 07:12:22'),
(60,'shaper_helix3','L2h0bWwvbW9kX2FydGljbGVzX2xhdGVzdC9kZWZhdWx0LnBocA==',10003,1,'Joomla Update',0,'2026-06-04 07:10:35','2026-06-04 07:10:35'),
(61,'shaper_helix3','L2h0bWwvcGxnX2NvbnRlbnRfcGFnZW5hdmlnYXRpb24vZGVmYXVsdC5waHA=',10003,1,'Joomla Update',0,'2026-06-04 07:10:35','2026-06-04 07:10:35');
/*!40000 ALTER TABLE `adtifuja_template_overrides` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtifuja_template_styles`
--

DROP TABLE IF EXISTS `adtifuja_template_styles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtifuja_template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` mediumtext NOT NULL,
  `inheritable` tinyint(4) NOT NULL DEFAULT 0,
  `parent` varchar(50) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_client_id` (`client_id`),
  KEY `idx_client_id_home` (`client_id`,`home`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtifuja_template_styles`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtifuja_template_styles` WRITE;
/*!40000 ALTER TABLE `adtifuja_template_styles` DISABLE KEYS */;
INSERT INTO `adtifuja_template_styles` VALUES
(10,'shaper_helix3',0,'1','shaper_helix3 - Default','{\"container_width\":\"1140\",\"preloader\":\"0\",\"preloader_animation\":\"circle\",\"preloader_bg\":\"#f5f5f5\",\"preloader_tx\":\"#333333\",\"goto_top\":\"0\",\"sticky_header\":\"1\",\"favicon\":\"\",\"boxed_layout\":\"0\",\"logo_type\":\"image\",\"logo_position\":\"logo\",\"logo_load_pos\":\"default\",\"logo_image\":\"\",\"logo_image_2x\":\"\",\"mobile_logo\":\"\",\"logo_text\":\"\",\"logo_slogan\":\"\",\"body_bg_image\":\"\",\"body_bg_repeat\":\"inherit\",\"body_bg_size\":\"inherit\",\"body_bg_attachment\":\"inherit\",\"body_bg_position\":\"0 0\",\"enabled_copyright\":\"1\",\"copyright_position\":\"footer1\",\"copyright_load_pos\":\"default\",\"copyright\":\"\\u00a9{year} Your Company. All Rights Reserved. Designed By JoomShaper\",\"show_social_icons\":\"1\",\"social_position\":\"top1\",\"social_load_pos\":\"default\",\"facebook\":\"http:\\/\\/www.facebook.com\\/joomshaper\",\"twitter\":\"http:\\/\\/twitter.com\\/joomshaper\",\"pinterest\":\"http:\\/\\/pinterest.com\\/joomshaper\",\"linkedin\":\"#\",\"dribbble\":\"https:\\/\\/dribbble.com\\/joomshaper\",\"behance\":\"#\",\"youtube\":\"#\",\"flickr\":\"#\",\"skype\":\"#\",\"whatsapp\":\"\",\"vk\":\"\",\"custom\":\"fa-vk #\",\"enable_contactinfo\":\"1\",\"contact_position\":\"top2\",\"contact_phone\":\"+228 872 4444\",\"contact_mobile\":\"+775 872 4444\",\"contact_email\":\"contact@email.com\",\"contact_time\":\"Mon - Fri 8:00 - 17:30\",\"comingsoon_mode\":\"0\",\"comingsoon_bg\":\"images\\/cta-bg.jpg\",\"comingsoon_logo\":\"\",\"comingsoon_title\":\"Coming Soon Title\",\"comingsoon_date\":\"05-10-2018\",\"comingsoon_content\":\"Coming soon content\",\"error_bg\":\"images\\/cta-bg.jpg\",\"error_logo\":\"\",\"preset\":\"preset1\",\"preset1_bg\":\"#ffffff\",\"preset1_text\":\"#000000\",\"preset1_major\":\"#22b8f0\",\"preset1_megabg\":\"#ffffff\",\"preset1_megatx\":\"#141414\",\"preset2_bg\":\"#ffffff\",\"preset2_text\":\"#000000\",\"preset2_major\":\"#3d449a\",\"preset2_megabg\":\"#ffffff\",\"preset2_megatx\":\"#333333\",\"preset3_bg\":\"#ffffff\",\"preset3_text\":\"#000000\",\"preset3_major\":\"#2bb673\",\"preset3_megabg\":\"#ffffff\",\"preset3_megatx\":\"#333333\",\"preset4_bg\":\"#ffffff\",\"preset4_text\":\"#000000\",\"preset4_major\":\"#eb4947\",\"preset4_megabg\":\"#ffffff\",\"preset4_megatx\":\"#333333\",\"layoutlist\":\"default.json\",\"layout\":\"[{\\\"type\\\":\\\"row\\\",\\\"layout\\\":\\\"66\\\",\\\"settings\\\":{\\\"bg_position\\\":\\\"contain\\\",\\\"bg_img_size\\\":\\\"cover\\\",\\\"bg_repeat\\\":\\\"no-repeat\\\",\\\"md_hidden\\\":0,\\\"ms_hidden\\\":0,\\\"xs_hidden\\\":0,\\\"text_color\\\":\\\"#ffffff\\\",\\\"bg_image\\\":\\\"images\\/powered_by.png\\\",\\\"bg_color\\\":\\\"#f02222\\\",\\\"custom_class\\\":\\\"\\\",\\\"fluidrow\\\":0,\\\"margin\\\":\\\"\\\",\\\"padding\\\":\\\"\\\",\\\"hidden_md\\\":0,\\\"hidden_sm\\\":0,\\\"hidden_xs\\\":0,\\\"link_hover_color\\\":\\\"\\\",\\\"link_color\\\":\\\"\\\",\\\"background_position\\\":\\\"0 0\\\",\\\"background_attachment\\\":\\\"fixed\\\",\\\"background_size\\\":\\\"cover\\\",\\\"background_repeat\\\":\\\"no-repeat\\\",\\\"background_image\\\":\\\"\\\",\\\"color\\\":\\\"#999999\\\",\\\"background_color\\\":\\\"#f5f5f5\\\",\\\"name\\\":\\\"Top Bar\\\"},\\\"attr\\\":[{\\\"type\\\":\\\"sp_col\\\",\\\"className\\\":\\\"layout-column col-sm-6\\\",\\\"settings\\\":{\\\"xs_col\\\":\\\"col-xs-12\\\",\\\"sm_col\\\":\\\"\\\",\\\"hidden_md\\\":0,\\\"hidden_sm\\\":0,\\\"hidden_xs\\\":0,\\\"xs_hidden\\\":0,\\\"ms_hidden\\\":0,\\\"md_hidden\\\":0,\\\"custom_class\\\":\\\"\\\",\\\"name\\\":\\\"top1\\\",\\\"column_type\\\":0,\\\"sortableitem\\\":\\\"[object Object]\\\"}},{\\\"type\\\":\\\"sp_col\\\",\\\"className\\\":\\\"layout-column col-sm-6 column-active\\\",\\\"settings\\\":{\\\"xs_col\\\":\\\"col-xs-12\\\",\\\"sm_col\\\":\\\"\\\",\\\"hidden_md\\\":0,\\\"hidden_sm\\\":0,\\\"hidden_xs\\\":0,\\\"column_type\\\":0,\\\"name\\\":\\\"top2\\\",\\\"custom_class\\\":\\\"\\\",\\\"xs_hidden\\\":0,\\\"ms_hidden\\\":0,\\\"md_hidden\\\":0,\\\"sortableitem\\\":\\\"[object Object]\\\"}}]},{\\\"type\\\":\\\"row\\\",\\\"layout\\\":\\\"39\\\",\\\"settings\\\":{\\\"name\\\":\\\"Header\\\",\\\"background_color\\\":\\\"\\\",\\\"color\\\":\\\"\\\",\\\"background_image\\\":\\\"\\\",\\\"link_color\\\":\\\"\\\",\\\"link_hover_color\\\":\\\"\\\",\\\"hidden_xs\\\":0,\\\"hidden_sm\\\":0,\\\"hidden_md\\\":0,\\\"padding\\\":\\\"\\\",\\\"margin\\\":\\\"\\\",\\\"fluidrow\\\":0,\\\"custom_class\\\":\\\"\\\"},\\\"attr\\\":[{\\\"type\\\":\\\"sp_col\\\",\\\"className\\\":\\\"layout-column col-sm-3\\\",\\\"settings\\\":{\\\"column_type\\\":0,\\\"name\\\":\\\"logo\\\",\\\"hidden_xs\\\":0,\\\"hidden_sm\\\":0,\\\"hidden_md\\\":0,\\\"sm_col\\\":\\\"\\\",\\\"xs_col\\\":\\\"col-xs-8\\\",\\\"custom_class\\\":\\\"\\\",\\\"xs_hidden\\\":0,\\\"ms_hidden\\\":0,\\\"md_hidden\\\":0,\\\"sortableitem\\\":\\\"[object Object]\\\"}},{\\\"type\\\":\\\"sp_col\\\",\\\"className\\\":\\\"layout-column col-sm-9\\\",\\\"settings\\\":{\\\"column_type\\\":0,\\\"name\\\":\\\"menu\\\",\\\"hidden_xs\\\":0,\\\"hidden_sm\\\":0,\\\"hidden_md\\\":0,\\\"sm_col\\\":\\\"\\\",\\\"xs_col\\\":\\\"col-xs-4\\\",\\\"custom_class\\\":\\\"\\\",\\\"xs_hidden\\\":0,\\\"ms_hidden\\\":0,\\\"md_hidden\\\":0,\\\"sortableitem\\\":\\\"[object Object]\\\"}}]},{\\\"type\\\":\\\"row\\\",\\\"layout\\\":12,\\\"settings\\\":{\\\"custom_class\\\":\\\"\\\",\\\"fluidrow\\\":1,\\\"margin\\\":\\\"\\\",\\\"padding\\\":\\\"\\\",\\\"hidden_md\\\":0,\\\"hidden_sm\\\":0,\\\"hidden_xs\\\":0,\\\"link_hover_color\\\":\\\"\\\",\\\"link_color\\\":\\\"\\\",\\\"background_image\\\":\\\"\\\",\\\"color\\\":\\\"\\\",\\\"background_color\\\":\\\"\\\",\\\"name\\\":\\\"Page Title\\\"},\\\"attr\\\":[{\\\"type\\\":\\\"sp_col\\\",\\\"className\\\":\\\"layout-column col-sm-12\\\",\\\"settings\\\":{\\\"custom_class\\\":\\\"\\\",\\\"xs_col\\\":\\\"\\\",\\\"sm_col\\\":\\\"\\\",\\\"hidden_md\\\":0,\\\"hidden_sm\\\":0,\\\"hidden_xs\\\":0,\\\"name\\\":\\\"title\\\",\\\"column_type\\\":0}}]},{\\\"type\\\":\\\"row\\\",\\\"layout\\\":\\\"363\\\",\\\"settings\\\":{\\\"custom_class\\\":\\\"\\\",\\\"md_hidden\\\":0,\\\"ms_hidden\\\":0,\\\"xs_hidden\\\":0,\\\"link_hover_color\\\":\\\"\\\",\\\"link_color\\\":\\\"\\\",\\\"text_color\\\":\\\"\\\",\\\"bg_image\\\":\\\"\\\",\\\"bg_color\\\":\\\"\\\",\\\"name\\\":\\\"Main Body\\\"},\\\"attr\\\":[{\\\"type\\\":\\\"sp_col\\\",\\\"className\\\":\\\"layout-column col-sm-3\\\",\\\"settings\\\":{\\\"column_type\\\":0,\\\"name\\\":\\\"left\\\",\\\"xs_hidden\\\":0,\\\"ms_hidden\\\":0,\\\"md_hidden\\\":0,\\\"custom_class\\\":\\\"custom-class\\\",\\\"sortableitem\\\":\\\"[object Object]\\\"}},{\\\"type\\\":\\\"sp_col\\\",\\\"className\\\":\\\"layout-column col-sm-6\\\",\\\"settings\\\":{\\\"column_type\\\":1,\\\"name\\\":\\\"\\\",\\\"custom_class\\\":\\\"\\\",\\\"md_hidden\\\":0,\\\"ms_hidden\\\":0,\\\"xs_hidden\\\":0,\\\"sortableitem\\\":\\\"[object Object]\\\"}},{\\\"type\\\":\\\"sp_col\\\",\\\"className\\\":\\\"layout-column col-sm-3\\\",\\\"settings\\\":{\\\"custom_class\\\":\\\"class2\\\",\\\"md_hidden\\\":0,\\\"ms_hidden\\\":0,\\\"xs_hidden\\\":0,\\\"name\\\":\\\"right\\\",\\\"column_type\\\":0,\\\"sortableitem\\\":\\\"[object Object]\\\"}}]},{\\\"type\\\":\\\"row\\\",\\\"layout\\\":\\\"3333\\\",\\\"settings\\\":{\\\"name\\\":\\\"Bottom\\\",\\\"background_color\\\":\\\"#f5f5f5\\\",\\\"color\\\":\\\"\\\",\\\"background_image\\\":\\\"\\\",\\\"link_color\\\":\\\"\\\",\\\"link_hover_color\\\":\\\"\\\",\\\"hidden_xs\\\":0,\\\"hidden_sm\\\":0,\\\"hidden_md\\\":0,\\\"padding\\\":\\\"100px 0px\\\",\\\"margin\\\":\\\"\\\",\\\"fluidrow\\\":0,\\\"custom_class\\\":\\\"\\\"},\\\"attr\\\":[{\\\"type\\\":\\\"sp_col\\\",\\\"className\\\":\\\"layout-column col-sm-3\\\",\\\"settings\\\":{\\\"column_type\\\":0,\\\"name\\\":\\\"bottom1\\\",\\\"hidden_xs\\\":0,\\\"hidden_sm\\\":0,\\\"hidden_md\\\":0,\\\"sm_col\\\":\\\"col-sm-6\\\",\\\"xs_col\\\":\\\"\\\",\\\"custom_class\\\":\\\"\\\",\\\"sortableitem\\\":\\\"[object Object]\\\"}},{\\\"type\\\":\\\"sp_col\\\",\\\"className\\\":\\\"layout-column col-sm-3\\\",\\\"settings\\\":{\\\"column_type\\\":0,\\\"name\\\":\\\"bottom2\\\",\\\"hidden_xs\\\":0,\\\"hidden_sm\\\":0,\\\"hidden_md\\\":0,\\\"sm_col\\\":\\\"col-sm-6\\\",\\\"xs_col\\\":\\\"\\\",\\\"custom_class\\\":\\\"\\\"}},{\\\"type\\\":\\\"sp_col\\\",\\\"className\\\":\\\"layout-column col-sm-3\\\",\\\"settings\\\":{\\\"custom_class\\\":\\\"\\\",\\\"xs_col\\\":\\\"\\\",\\\"sm_col\\\":\\\"col-sm-6\\\",\\\"hidden_md\\\":0,\\\"hidden_sm\\\":0,\\\"hidden_xs\\\":0,\\\"name\\\":\\\"bottom3\\\",\\\"column_type\\\":0}},{\\\"type\\\":\\\"sp_col\\\",\\\"className\\\":\\\"layout-column col-sm-3\\\",\\\"settings\\\":{\\\"custom_class\\\":\\\"\\\",\\\"xs_col\\\":\\\"\\\",\\\"sm_col\\\":\\\"col-sm-6\\\",\\\"hidden_md\\\":0,\\\"hidden_sm\\\":0,\\\"hidden_xs\\\":0,\\\"name\\\":\\\"bottom4\\\",\\\"column_type\\\":0}}]},{\\\"type\\\":\\\"row\\\",\\\"layout\\\":12,\\\"settings\\\":{\\\"custom_class\\\":\\\"\\\",\\\"md_hidden\\\":0,\\\"ms_hidden\\\":0,\\\"xs_hidden\\\":0,\\\"link_hover_color\\\":\\\"\\\",\\\"link_color\\\":\\\"\\\",\\\"text_color\\\":\\\"\\\",\\\"bg_image\\\":\\\"\\\",\\\"bg_color\\\":\\\"\\\",\\\"name\\\":\\\"Footer\\\"},\\\"attr\\\":[{\\\"type\\\":\\\"sp_col\\\",\\\"className\\\":\\\"layout-column col-sm-12\\\",\\\"settings\\\":{\\\"xs_col\\\":\\\"\\\",\\\"sm_col\\\":\\\"\\\",\\\"hidden_md\\\":0,\\\"hidden_sm\\\":0,\\\"hidden_xs\\\":0,\\\"column_type\\\":0,\\\"name\\\":\\\"footer1\\\",\\\"xs_hidden\\\":0,\\\"ms_hidden\\\":0,\\\"md_hidden\\\":0,\\\"custom_class\\\":\\\"\\\",\\\"sortableitem\\\":\\\"[object Object]\\\"}}]}]\",\"menu\":\"mainmenu\",\"menu_type\":\"mega_offcanvas\",\"dropdown_width\":\"\",\"menu_animation\":\"menu-slide-down\",\"offcanvas_animation\":\"default\",\"gfont_api\":\"\",\"enable_body_font\":\"1\",\"body_font\":\"{\\\"fontFamily\\\":\\\"Open Sans\\\",\\\"fontWeight\\\":\\\"300\\\",\\\"fontSubset\\\":\\\"cyrillic\\\",\\\"fontSize\\\":\\\"\\\"}\",\"enable_h1_font\":\"1\",\"h1_font\":\"{\\\"fontFamily\\\":\\\"Open Sans\\\",\\\"fontWeight\\\":\\\"300\\\",\\\"fontSubset\\\":\\\"cyrillic\\\",\\\"fontSize\\\":\\\"\\\"}\",\"enable_h2_font\":\"1\",\"h2_font\":\"{\\\"fontFamily\\\":\\\"Open Sans\\\",\\\"fontWeight\\\":\\\"600\\\",\\\"fontSubset\\\":\\\"latin\\\",\\\"fontSize\\\":\\\"\\\"}\",\"enable_h3_font\":\"1\",\"h3_font\":\"{\\\"fontFamily\\\":\\\"Open Sans\\\",\\\"fontWeight\\\":\\\"regular\\\",\\\"fontSubset\\\":\\\"latin\\\",\\\"fontSize\\\":\\\"\\\"}\",\"enable_h4_font\":\"1\",\"h4_font\":\"{\\\"fontFamily\\\":\\\"Open Sans\\\",\\\"fontWeight\\\":\\\"regular\\\",\\\"fontSubset\\\":\\\"latin\\\",\\\"fontSize\\\":\\\"\\\"}\",\"enable_h5_font\":\"1\",\"h5_font\":\"{\\\"fontFamily\\\":\\\"Open Sans\\\",\\\"fontWeight\\\":\\\"800\\\",\\\"fontSubset\\\":\\\"latin\\\",\\\"fontSize\\\":\\\"\\\"}\",\"enable_h6_font\":\"1\",\"h6_font\":\"{\\\"fontFamily\\\":\\\"Open Sans\\\",\\\"fontWeight\\\":\\\"800\\\",\\\"fontSubset\\\":\\\"latin\\\",\\\"fontSize\\\":\\\"\\\"}\",\"enable_navigation_font\":\"0\",\"navigation_font\":\"{\\\"fontFamily\\\":\\\"Open Sans\\\",\\\"fontWeight\\\":\\\"regular\\\",\\\"fontSubset\\\":\\\"latin\\\",\\\"fontSize\\\":\\\"\\\"}\",\"enable_custom_font\":\"0\",\"custom_font\":\"{\\\"fontFamily\\\":\\\"ABeeZee\\\",\\\"fontWeight\\\":\\\"regular\\\",\\\"fontSubset\\\":\\\"latin\\\",\\\"fontSize\\\":\\\"\\\"}\",\"custom_font_selectors\":\"\",\"before_head\":\"\",\"before_body\":\"\",\"custom_css\":\"\",\"custom_js\":\"\",\"compress_css\":\"0\",\"compress_js\":\"0\",\"exclude_js\":\"\",\"lessoption\":\"1\",\"show_post_format\":\"1\",\"commenting_engine\":\"disqus\",\"disqus_subdomain\":\"\",\"disqus_devmode\":\"0\",\"intensedebate_acc\":\"\",\"fb_appID\":\"\",\"fb_width\":\"500\",\"fb_cpp\":\"10\",\"comments_count\":\"0\",\"social_share\":\"1\",\"image_small\":\"0\",\"image_small_size\":\"100X100\",\"image_thumbnail\":\"1\",\"image_thumbnail_size\":\"200X200\",\"image_medium\":\"0\",\"image_medium_size\":\"300X300\",\"image_large\":\"0\",\"image_large_size\":\"600X600\",\"blog_list_image\":\"default\"}',0,''),
(11,'atum',1,'1','Atum - Default','{\"hue\": \"hsl(214, 63%, 20%)\", \"bg-light\": \"#f0f4fb\", \"loginLogo\": \"\", \"text-dark\": \"#495057\", \"link-color\": \"#2a69b8\", \"monochrome\": \"0\", \"text-light\": \"#ffffff\", \"colorScheme\": \"os\", \"loginLogoAlt\": \"\", \"special-color\": \"#001b4c\", \"logoBrandLarge\": \"\", \"logoBrandSmall\": \"\", \"logoBrandLargeAlt\": \"\", \"logoBrandSmallAlt\": \"\"}',1,''),
(12,'cassiopeia',0,'0','Cassiopeia - Default','{}',1,''),
(13,'cassiopeia_extended',0,'0','Cassiopeia Extended - Default','{\"brand\":\"1\",\"logoFile\":\"\",\"siteTitle\":\"\",\"siteDescription\":\"\",\"useFontScheme\":\"0\",\"systemFontBody\":\"\",\"systemFontHeading\":\"\",\"colorName\":\"colors_standard\",\"fluidContainer\":\"0\",\"stickyHeader\":\"0\",\"backTop\":\"0\",\"colorSettings\":\"0\",\"headerbg\":\"rgb(193, 205, 207)\",\"headercolor\":\"rgb(23, 23, 23)\",\"bodybg\":\"rgb(254, 254, 254)\",\"bodycolor\":\"rgb(23, 23, 23)\",\"linkcolor\":\"rgb(29, 121, 137)\",\"linkcolorh\":\"rgb(14, 59, 67)\",\"btnbg\":\"rgb(206, 60, 55)\",\"btnbgh\":\"rgb(131, 35, 32)\",\"btncolor\":\"rgb(254, 254, 254)\",\"btncolorh\":\"rgb(254, 254, 254)\",\"footerbg\":\"rgb(29, 121, 137)\",\"footercolor\":\"rgb(254, 254, 254)\",\"fontSettings\":\"0\",\"bodysize\":\"1\",\"h1size\":\"2\",\"h2size\":\"1.7\",\"h3size\":\"1.5\"}',0,'cassiopeia');
/*!40000 ALTER TABLE `adtifuja_template_styles` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtifuja_tuf_metadata`
--

DROP TABLE IF EXISTS `adtifuja_tuf_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtifuja_tuf_metadata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT 0,
  `root` text DEFAULT NULL,
  `targets` text DEFAULT NULL,
  `snapshot` text DEFAULT NULL,
  `timestamp` text DEFAULT NULL,
  `mirrors` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Secure TUF Updates';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtifuja_tuf_metadata`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtifuja_tuf_metadata` WRITE;
/*!40000 ALTER TABLE `adtifuja_tuf_metadata` DISABLE KEYS */;
INSERT INTO `adtifuja_tuf_metadata` VALUES
(1,1,'{\"signed\":{\"_type\":\"root\",\"spec_version\":\"1.0\",\"version\":16,\"expires\":\"2027-09-17T18:55:11Z\",\"keys\":{\"00e432b504508246e2bd536dd6c13e55e8b3256f0be9f767fae26da6c2a28663\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"250f8d293c49817a83909dead96ad82b62f7ac16844cf589f8d2f0e0b15cab21\"}},\"07eb082f367c034a95878687f6648aa76d93652b6ee73e58817053d89af6c44f\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"9b2af2d9b9727227735253d795bd27ea8f0e294a5f3603e822dc5052b44802b9\"}},\"179d107f20a2354ac5bd9a1f32a2df1763c0059617f0c132bebeb4816a1a8637\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"159a4195cbafce2bb959f09ab2b36a2127b8967f94d389f65f1e7892fccfe8b8\"}},\"192ad7343e7d431533d9577fd957b6f924680177db4dc6c0e146dad6810a90a4\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"042b66e1431a1f5c2c15b4a16ea60f23f466851b58e9ff057dbfc2a5e0d821d1\"}},\"1b1b1dd55b2c1c7258714cf1c1ae06f23e4607b28c762d016a9d81c48ffe5669\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"a18e5ebabc19d5d5984b601a292ece61ba3662ab2d071dc520da5bd4f8948799\"}},\"273e94e5477e306ad6de75be1524860e219e265ff9a57c81ababd0691e45706c\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"1cb6702338830ef1c9e76a022fed27172d475bbaace754d8141ebc96dad8b15f\"}},\"284c8164fd395e9178dc66929787f0650cda6acff0fd769ef697203d7553c481\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"546cdff30cc1ad6dd5f3d1e173672d94bd61a9507199af064142f70cde8de4e3\"}},\"2dcaf3d0e552f150792f7c636d45429246dcfa34ac35b46a44f5c87cd17d457e\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"cb0a7a131961a20edea051d6dc2b091fb650bd399bd8514adb67b3c60db9f8f9\"}},\"31dd7c7290d664c9b88c0dead2697175293ea7df81b7f24153a37370fd3901c3\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"589d029a68b470deff1ca16dbf3eea6b5b3fcba0ae7bb52c468abc7fb058b2a2\"}},\"9e41a9d62d94c6a1c8a304f62c5bd72d84a9f286f27e8327cedeacb09e5156cc\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"6043c8bacc76ac5c9750f45454dd865c6ca1fc57d69e14cc192cfd420f6a66a9\"}},\"9eabc37383b243cd236375c66693db385911914b52556e1ec05fc70ed45e1bfe\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"a4b8509488f1c29ab0b1f610e7452fbec78b4f33f1fba5a418d6ff087c567429\"}},\"a1a4b7fdbeedfdeff12d7776de098a2f8de8d2ab7bfe10062a281b3819b078c1\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"ea764b0b475b3c396627ac6689cbd8f54a5f93e87b6f5e3eb44a7ccafb542ff3\"}},\"a599a27a3ec4d520059c591338759dc401006b1c4cb1db85a286e667253d28b6\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"45e416d24d13a60ace5ab028827d5cfc8ba177bb9466bf2acd8efa6e3547911a\"}},\"ba3914be50eea8ecf6d5e7a8d3564dbbad99415d9cc229b9ee081ed86f69f803\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"1cbfa7dcac9659e5a8a946ec999bd28f53b451e38ce5827980bed2686098cf19\"}},\"bfee044dd4574a281c9b7c0b6829913ef292c66c0512d1091a298cfca8493da9\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"6eb44460e5914e8e0df726ddb90bd1f3771b8ce5af19b40fb01ac5a85b023a6f\"}},\"c9fe1ff72da60a30ea5e612fa2ef4ca329fb46d9e1965b811bf9f2de44ffdf18\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"390d45fce58e41fec922092b138eaf719ed2036c8722bd694a6832ab6ca18409\"}},\"e2229942b0fc1e6d7f82adf258e5bdadac10046d1470b7ec459c9eb4e076026b\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"ad1950e117b29ebe7a38635a2e574123e07571e4f9a011783e053b5f15d2562a\"}},\"ecc851a051c8d6439331ff0a37c7727321fc39896a34f950f73638b8a7cb472e\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"5d451915bc2b93a0e4e4745bc6a8b292d58996d50e0fb66c78c7827152a65879\"}}},\"roles\":{\"root\":{\"keyids\":[\"1b1b1dd55b2c1c7258714cf1c1ae06f23e4607b28c762d016a9d81c48ffe5669\",\"2dcaf3d0e552f150792f7c636d45429246dcfa34ac35b46a44f5c87cd17d457e\",\"192ad7343e7d431533d9577fd957b6f924680177db4dc6c0e146dad6810a90a4\"],\"threshold\":1},\"snapshot\":{\"keyids\":[\"07eb082f367c034a95878687f6648aa76d93652b6ee73e58817053d89af6c44f\",\"2dcaf3d0e552f150792f7c636d45429246dcfa34ac35b46a44f5c87cd17d457e\",\"ecc851a051c8d6439331ff0a37c7727321fc39896a34f950f73638b8a7cb472e\",\"e2229942b0fc1e6d7f82adf258e5bdadac10046d1470b7ec459c9eb4e076026b\",\"bfee044dd4574a281c9b7c0b6829913ef292c66c0512d1091a298cfca8493da9\",\"9eabc37383b243cd236375c66693db385911914b52556e1ec05fc70ed45e1bfe\",\"273e94e5477e306ad6de75be1524860e219e265ff9a57c81ababd0691e45706c\",\"00e432b504508246e2bd536dd6c13e55e8b3256f0be9f767fae26da6c2a28663\",\"179d107f20a2354ac5bd9a1f32a2df1763c0059617f0c132bebeb4816a1a8637\",\"a1a4b7fdbeedfdeff12d7776de098a2f8de8d2ab7bfe10062a281b3819b078c1\",\"192ad7343e7d431533d9577fd957b6f924680177db4dc6c0e146dad6810a90a4\",\"a599a27a3ec4d520059c591338759dc401006b1c4cb1db85a286e667253d28b6\",\"284c8164fd395e9178dc66929787f0650cda6acff0fd769ef697203d7553c481\",\"ba3914be50eea8ecf6d5e7a8d3564dbbad99415d9cc229b9ee081ed86f69f803\",\"c9fe1ff72da60a30ea5e612fa2ef4ca329fb46d9e1965b811bf9f2de44ffdf18\"],\"threshold\":1},\"targets\":{\"keyids\":[\"31dd7c7290d664c9b88c0dead2697175293ea7df81b7f24153a37370fd3901c3\",\"ecc851a051c8d6439331ff0a37c7727321fc39896a34f950f73638b8a7cb472e\",\"e2229942b0fc1e6d7f82adf258e5bdadac10046d1470b7ec459c9eb4e076026b\",\"bfee044dd4574a281c9b7c0b6829913ef292c66c0512d1091a298cfca8493da9\",\"9eabc37383b243cd236375c66693db385911914b52556e1ec05fc70ed45e1bfe\",\"273e94e5477e306ad6de75be1524860e219e265ff9a57c81ababd0691e45706c\",\"00e432b504508246e2bd536dd6c13e55e8b3256f0be9f767fae26da6c2a28663\",\"179d107f20a2354ac5bd9a1f32a2df1763c0059617f0c132bebeb4816a1a8637\",\"a1a4b7fdbeedfdeff12d7776de098a2f8de8d2ab7bfe10062a281b3819b078c1\",\"284c8164fd395e9178dc66929787f0650cda6acff0fd769ef697203d7553c481\",\"c9fe1ff72da60a30ea5e612fa2ef4ca329fb46d9e1965b811bf9f2de44ffdf18\"],\"threshold\":1},\"timestamp\":{\"keyids\":[\"9e41a9d62d94c6a1c8a304f62c5bd72d84a9f286f27e8327cedeacb09e5156cc\"],\"threshold\":1}},\"consistent_snapshot\":true},\"signatures\":[{\"keyid\":\"1b1b1dd55b2c1c7258714cf1c1ae06f23e4607b28c762d016a9d81c48ffe5669\",\"sig\":\"45cabce9321e0091f9a88a862d250c35f6efede25c7c6eab6cbf738d176c366308bb24cedc80812244259a0d56fd796b2ebd13f98d6aba5c8220df4f136a8504\"}]}','{\"signed\":{\"_type\":\"targets\",\"spec_version\":\"1.0\",\"version\":109,\"expires\":\"2026-11-18T18:57:57Z\",\"targets\":{\"Joomla_5.1.2-Stable-Upgrade_Package.zip\":{\"length\":28134889,\"hashes\":{\"sha512\":\"d6b46cdedb9b31d01a607fe4c2f3a830a3265ed6ae5c0cb7b0f836b1b016ee7c639bd8948df00baf1b61a87f2fc71368a80b39e67ef9ec2b8842ee0ab09a620f\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 5.1.2 Release\",\"downloads\":[{\"url\":\"https://downloads.joomla.org/cms/joomla5/5-1-2/Joomla_5.1.2-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/5.1.2/Joomla_5.1.2-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://update.joomla.org/releases/5.1.2/Joomla_5.1.2-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://www.joomla.org/announcements/release-news/5909-joomla-5-1-2-and-joomla-4-4-6-security-and-bug-fix-release.html\",\"title\":\"Joomla! 5.1.2 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 5.1.2\",\"php_minimum\":\"8.1.0\",\"channel\":\"6.x\",\"stability\":\"Stable\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"11.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(5\\\\.[0-4])|^(4\\\\.4)\"},\"type\":\"file\",\"version\":\"5.1.2\"}},\"Joomla_5.4.1-Stable-Update_Package.zip\":{\"length\":30009045,\"hashes\":{\"sha512\":\"aeddd1143cd574ff3f6e9bc7d7c67bf5d21dc1b404d98498a691b1fff12f5d245b48424f97155f20e2807e4ee2c1aed7313fae3ab8c0d27a08a20947c166c43e\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 5.4.1 Release\",\"downloads\":[{\"url\":\"https://downloads.joomla.org/cms/joomla5/5-4-1/Joomla_5.4.1-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/5.4.1/Joomla_5.4.1-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://update.joomla.org/releases/5.4.1/Joomla_5.4.1-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://www.joomla.org/announcements/release-news/5941-joomla-6-0-1-and-5-4-1-bugfix-release.html\",\"title\":\"Joomla! 5.4.1 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 5.4.1\",\"php_minimum\":\"8.1.0\",\"channel\":\"5.x\",\"stability\":\"Stable\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"11.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(5\\\\.[0-4])|^(4\\\\.4)\"},\"type\":\"file\",\"version\":\"5.4.1\"}},\"Joomla_5.4.2-Stable-Update_Package.zip\":{\"length\":30316442,\"hashes\":{\"sha512\":\"e83add95a43103ec2d6ccada9e33a29fa6feb2d8e27b6bd16376f4a75d9b588c029b1f24c97b0772e3a6eb0e20d2b8e0e3526cf2af242d90c280ef63abeddaa9\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 5.4.2 Release\",\"downloads\":[{\"url\":\"https://downloads.joomla.org/cms/joomla5/5-4-2/Joomla_5.4.2-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/5.4.2/Joomla_5.4.2-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://update.joomla.org/releases/5.4.2/Joomla_5.4.2-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://www.joomla.org/announcements/release-news/5942-joomla-6-0-2-and-5-4-2-security-bugfix-release.html\",\"title\":\"Joomla! 5.4.2 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 5.4.2\",\"php_minimum\":\"8.1.0\",\"channel\":\"5.x\",\"stability\":\"Stable\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"11.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(5\\\\.[0-4])|^(4\\\\.4)\"},\"type\":\"file\",\"version\":\"5.4.2\"}},\"Joomla_5.4.3-Stable-Update_Package.zip\":{\"length\":30403970,\"hashes\":{\"sha512\":\"63901b3cca37a59fe8028e0adb01eda3bb3669dc410c21b1ab7cb040997980c75d2d52b242d053800a542f4d60cf6a15e5fdabc963014c35aef80f6b8b02857f\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 5.4.3 Release\",\"downloads\":[{\"url\":\"https://downloads.joomla.org/cms/joomla5/5-4-3/Joomla_5.4.3-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/5.4.3/Joomla_5.4.3-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://update.joomla.org/releases/5.4.3/Joomla_5.4.3-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://www.joomla.org/announcements/release-news/5943-joomla-6-0-3-and-5-4-3-bugfix-release.html\",\"title\":\"Joomla! 5.4.3 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 5.4.3\",\"php_minimum\":\"8.1.0\",\"channel\":\"5.x\",\"stability\":\"Stable\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"11.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(5\\\\.[0-4])|^(4\\\\.4)\"},\"type\":\"file\",\"version\":\"5.4.3\"}},\"Joomla_5.4.4-Stable-Update_Package.zip\":{\"length\":30488702,\"hashes\":{\"sha512\":\"56497e3c1bf1b9b21e8149a15e36dd1590f6adffd13b38005af40afdf2a33761fbacc9628c5ea6b0e21eb04fb1ca20ca9bc96b2add4b626ed0b567f43994a65e\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 5.4.4 Release\",\"downloads\":[{\"url\":\"https://downloads.joomla.org/cms/joomla5/5-4-4/Joomla_5.4.4-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/5.4.4/Joomla_5.4.4-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://update.joomla.org/releases/5.4.4/Joomla_5.4.4-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://www.joomla.org/announcements/release-news/5944-joomla-6-0-4-5-4-4-security-bugfix-release.html\",\"title\":\"Joomla! 5.4.4 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 5.4.4\",\"php_minimum\":\"8.1.0\",\"channel\":\"5.x\",\"stability\":\"Stable\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"11.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(5\\\\.[0-4])|^(4\\\\.4)\"},\"type\":\"file\",\"version\":\"5.4.4\"}},\"Joomla_5.4.5-Stable-Update_Package.zip\":{\"length\":30498375,\"hashes\":{\"sha512\":\"c4ebb9a6782c6ef1a3fe58231b78dbf301e212f0f33325e2a17e8014331dab5dee99ebaf2f90eb3e795d1c24ddc55d9485dba095e3f76d0780a80d0f61204ef2\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 5.4.5 Release\",\"downloads\":[{\"url\":\"https://downloads.joomla.org/cms/joomla5/5-4-5/Joomla_5.4.5-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/5.4.5/Joomla_5.4.5-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://update.joomla.org/releases/5.4.5/Joomla_5.4.5-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://www.joomla.org/announcements/release-news/5951-joomla-5-4-5-bugfix-release.html\",\"title\":\"Joomla! 5.4.5 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 5.4.5\",\"php_minimum\":\"8.1.0\",\"channel\":\"5.x\",\"stability\":\"Stable\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"11.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(5\\\\.[0-4])|^(4\\\\.4)\"},\"type\":\"file\",\"version\":\"5.4.5\"}},\"Joomla_5.4.5-rc1-Release_Candidate-Update_Package.zip\":{\"length\":30498394,\"hashes\":{\"sha512\":\"902e15b690f8bb33de3d139bc861362bd9f073fef506ce150bdc0f29bf8bde6c10aefa0518bb4f57f39576117913cddf59a8c325c7a517c21d7b6b1aea48aee8\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 5.4.5-rc1 Release\",\"downloads\":[{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/5.4.5-rc1/Joomla_5.4.5-rc1-Release_Candidate-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://github.com/joomla/joomla-cms/releases/tag/5.4.5-rc1\",\"title\":\"Joomla! 5.4.5-rc1 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 5.4.5-rc1\",\"php_minimum\":\"8.1.0\",\"channel\":\"5.x\",\"stability\":\"RC\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"11.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(5\\\\.[0-4])|^(4\\\\.4)\"},\"type\":\"file\",\"version\":\"5.4.5-rc1\"}},\"Joomla_5.4.6-Stable-Update_Package.zip\":{\"length\":31661279,\"hashes\":{\"sha512\":\"40d8b14c59c9af7ad098247a70d195c307f31597365cc4b5133b7ffc896c236b3266b45fc6c05879624c96e7f1af26b66ef3c371482b54b130b9faa65622f2fd\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 5.4.6 Release\",\"downloads\":[{\"url\":\"https://downloads.joomla.org/cms/joomla5/5-4-6/Joomla_5.4.6-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/5.4.6/Joomla_5.4.6-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://update.joomla.org/releases/5.4.6/Joomla_5.4.6-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://www.joomla.org/announcements/release-news/5954-joomla-6-1-1-5-4-6-security-bugfix-release.html\",\"title\":\"Joomla! 5.4.6 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 5.4.6\",\"php_minimum\":\"8.1.0\",\"channel\":\"5.x\",\"stability\":\"Stable\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"11.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(5\\\\.[0-4])|^(4\\\\.4)\"},\"type\":\"file\",\"version\":\"5.4.6\"}},\"Joomla_5.4.6-rc1-Release_Candidate-Update_Package.zip\":{\"length\":31656827,\"hashes\":{\"sha512\":\"e327d1ce0979ad1b10d46d7ba30abd55bd61299d0ac627f99d00310a84f45811573cf153976b0f32d2047c2d9ad72fd59d42594617439ec7250aff7e85801c97\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 5.4.6-rc1 Release\",\"downloads\":[{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/5.4.6-rc1/Joomla_5.4.6-rc1-Release_Candidate-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://github.com/joomla/joomla-cms/releases/tag/5.4.6-rc1\",\"title\":\"Joomla! 5.4.6-rc1 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 5.4.6-rc1\",\"php_minimum\":\"8.1.0\",\"channel\":\"5.x\",\"stability\":\"RC\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"11.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(5\\\\.[0-4])|^(4\\\\.4)\"},\"type\":\"file\",\"version\":\"5.4.6-rc1\"}},\"Joomla_5.4.7-Stable-Update_Package.zip\":{\"length\":31851429,\"hashes\":{\"sha512\":\"e1abbac01fe804d4eb64b1327ace9db4356e39a8782ab547b5257be308ea9215badec27821eae936b9a2db2f120fc175357f54ac3ca5af2313ec2af52eb44223\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 5.4.7 Release\",\"downloads\":[{\"url\":\"https://downloads.joomla.org/cms/joomla5/5-4-7/Joomla_5.4.7-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/5.4.7/Joomla_5.4.7-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://update.joomla.org/releases/5.4.7/Joomla_5.4.7-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://www.joomla.org/announcements/release-news/5955-joomla-6-1-2-5-4-7-security-bugfix-release.html\",\"title\":\"Joomla! 5.4.7 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 5.4.7\",\"php_minimum\":\"8.1.0\",\"channel\":\"5.x\",\"stability\":\"Stable\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"11.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(5\\\\.[0-4])|^(4\\\\.4)\"},\"type\":\"file\",\"version\":\"5.4.7\"}},\"Joomla_5.4.7-rc1-Release_Candidate-Update_Package.zip\":{\"length\":31847733,\"hashes\":{\"sha512\":\"e70bdb5ceceb837fe99ee49ca0bbc0f7bfeade3e024dba5a90a8d84e56079c13a231a93dcb6d637b6b07b22e7d98c8f894fc6a2de614f0544f48550c3e15506b\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 5.4.7-rc1 Release\",\"downloads\":[{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/5.4.7-rc1/Joomla_5.4.7-rc1-Release_Candidate-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://github.com/joomla/joomla-cms/releases/tag/5.4.7-rc1\",\"title\":\"Joomla! 5.4.7-rc1 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 5.4.7-rc1\",\"php_minimum\":\"8.1.0\",\"channel\":\"5.x\",\"stability\":\"RC\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"11.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(5\\\\.[0-4])|^(4\\\\.4)\"},\"type\":\"file\",\"version\":\"5.4.7-rc1\"}},\"Joomla_5.4.8-Stable-Update_Package.zip\":{\"length\":31921433,\"hashes\":{\"sha512\":\"86e9451f94887dbbee1475596fb91d58c2650e12cebfa976d2e0962e94e71d93683b42ce2d911cc9911ea42ca28e9c341dd002ddd8814f41a372e1732a5d0b3e\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 5.4.8 Release\",\"downloads\":[{\"url\":\"https://downloads.joomla.org/cms/joomla5/5-4-8/Joomla_5.4.8-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/5.4.8/Joomla_5.4.8-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://update.joomla.org/releases/5.4.8/Joomla_5.4.8-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://www.joomla.org/announcements/release-news/5957-joomla-6-1-3-5-4-8-security-bugfix-release.html\",\"title\":\"Joomla! 5.4.8 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 5.4.8\",\"php_minimum\":\"8.1.0\",\"channel\":\"5.x\",\"stability\":\"Stable\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"11.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(5\\\\.[0-4])|^(4\\\\.4)\"},\"type\":\"file\",\"version\":\"5.4.8\"}},\"Joomla_5.4.8-rc1-Release_Candidate-Update_Package.zip\":{\"length\":31919278,\"hashes\":{\"sha512\":\"442ec82e57c50d317895fc85bb53cd0fc6abd6937ee3d32da0abfdbc75c7476a1a4817f686aa687c269c2d6ef0bdbb3d3ea2413b6220958a21d8a5623709deea\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 5.4.8-rc1 Release\",\"downloads\":[{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/5.4.8-rc1/Joomla_5.4.8-rc1-Release_Candidate-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://github.com/joomla/joomla-cms/releases/tag/5.4.8-rc1\",\"title\":\"Joomla! 5.4.8-rc1 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 5.4.8-rc1\",\"php_minimum\":\"8.1.0\",\"channel\":\"5.x\",\"stability\":\"RC\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"11.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(5\\\\.[0-4])|^(4\\\\.4)\"},\"type\":\"file\",\"version\":\"5.4.8-rc1\"}},\"Joomla_5.4.8-rc2-Release_Candidate-Update_Package.zip\":{\"length\":31919276,\"hashes\":{\"sha512\":\"201c6ab2a5f4a44950067856379865a1af5ea61c875ce90510ab2f9c9c0f4f9aa087048a7f469ed698bb41b532f87c8ebf3caaf1aa2ded754b3edc591e2eb280\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 5.4.8-rc2 Release\",\"downloads\":[{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/5.4.8-rc2/Joomla_5.4.8-rc2-Release_Candidate-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://github.com/joomla/joomla-cms/releases/tag/5.4.8-rc2\",\"title\":\"Joomla! 5.4.8-rc2 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 5.4.8-rc2\",\"php_minimum\":\"8.1.0\",\"channel\":\"5.x\",\"stability\":\"RC\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"11.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(5\\\\.[0-4])|^(4\\\\.4)\"},\"type\":\"file\",\"version\":\"5.4.8-rc2\"}},\"Joomla_6.0.1-Stable-Update_Package.zip\":{\"length\":30247182,\"hashes\":{\"sha512\":\"38f8dd3ff1fd48b9973193a4484591b3b9f4a7516eb7640ff1687d84c81d4dc8cd05f6f58b9f48172bae41a466442f4a5af4a23e3d63869aeb1b05f4fdd6512e\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 6.0.1 Release\",\"downloads\":[{\"url\":\"https://downloads.joomla.org/cms/joomla6/6-0-1/Joomla_6.0.1-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/6.0.1/Joomla_6.0.1-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://update.joomla.org/releases/6.0.1/Joomla_6.0.1-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://www.joomla.org/announcements/release-news/5941-joomla-6-0-1-and-5-4-1-bugfix-release.html\",\"title\":\"Joomla! 6.0.1 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 6.0.1\",\"php_minimum\":\"8.3.0\",\"channel\":\"6.x\",\"stability\":\"Stable\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"12.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(6\\\\.[0-4])|^(5\\\\.4)\"},\"type\":\"file\",\"version\":\"6.0.1\"}},\"Joomla_6.0.2-Stable-Update_Package.zip\":{\"length\":30555623,\"hashes\":{\"sha512\":\"c0cff255fcf8e0359453c18365f4906afcce115981a5114e3388da583ad192bde320c8bdd191cd8ca4e55ad5585c9c4cd098c2e1661d8a109d37b94340e4b6a6\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 6.0.2 Release\",\"downloads\":[{\"url\":\"https://downloads.joomla.org/cms/joomla6/6-0-2/Joomla_6.0.2-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/6.0.2/Joomla_6.0.2-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://update.joomla.org/releases/6.0.2/Joomla_6.0.2-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://www.joomla.org/announcements/release-news/5942-joomla-6-0-2-and-5-4-2-security-bugfix-release.html\",\"title\":\"Joomla! 6.0.2 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 6.0.2\",\"php_minimum\":\"8.3.0\",\"channel\":\"6.x\",\"stability\":\"Stable\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"12.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(6\\\\.[0-4])|^(5\\\\.4)\"},\"type\":\"file\",\"version\":\"6.0.2\"}},\"Joomla_6.0.3-Stable-Update_Package.zip\":{\"length\":30645479,\"hashes\":{\"sha512\":\"212a681935d260925cbb15e0fa4d9c9e40978aa32ab7137ff1e0775be26eaa6634317521ec8a411aed3f76990758cbe4dcec3c86186458238dc45f8a3886e5dc\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 6.0.3 Release\",\"downloads\":[{\"url\":\"https://downloads.joomla.org/cms/joomla6/6-0-3/Joomla_6.0.3-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/6.0.3/Joomla_6.0.3-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://update.joomla.org/releases/6.0.3/Joomla_6.0.3-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://www.joomla.org/announcements/release-news/5943-joomla-6-0-3-and-5-4-3-bugfix-release.html\",\"title\":\"Joomla! 6.0.3 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 6.0.3\",\"php_minimum\":\"8.3.0\",\"channel\":\"6.x\",\"stability\":\"Stable\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"12.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(6\\\\.[0-4])|^(5\\\\.4)\"},\"type\":\"file\",\"version\":\"6.0.3\"}},\"Joomla_6.0.4-Stable-Update_Package.zip\":{\"length\":30730380,\"hashes\":{\"sha512\":\"39de3d222482dc1d6ba3041c9cbfb259dbf17762d917af59906c1c5c43b5da5016d5fb54d788f8b866fb473e4b57e3f1780db74be115300c181897c75e38c2e5\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 6.0.4 Release\",\"downloads\":[{\"url\":\"https://downloads.joomla.org/cms/joomla6/6-0-4/Joomla_6.0.4-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/6.0.4/Joomla_6.0.4-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://update.joomla.org/releases/6.0.4/Joomla_6.0.4-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://www.joomla.org/announcements/release-news/5944-joomla-6-0-4-5-4-4-security-bugfix-release.html\",\"title\":\"Joomla! 6.0.4 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 6.0.4\",\"php_minimum\":\"8.3.0\",\"channel\":\"6.x\",\"stability\":\"Stable\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"12.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(6\\\\.[0-4])|^(5\\\\.4)\"},\"type\":\"file\",\"version\":\"6.0.4\"}},\"Joomla_6.1.0-Stable-Update_Package.zip\":{\"length\":31441199,\"hashes\":{\"sha512\":\"e066487307a7952450d4f37ce97a576ae185728793d081c98416db9bb2a830fa4cfea0c5f6c7828bb91523cd26d6120c0d5111fc39962fa71cd875a8983c2c1a\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 6.1.0 Release\",\"downloads\":[{\"url\":\"https://downloads.joomla.org/cms/joomla6/6-1-0/Joomla_6.1.0-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/6.1.0/Joomla_6.1.0-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://update.joomla.org/releases/6.1.0/Joomla_6.1.0-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://www.joomla.org/announcements/release-news/5950-joomla-6-1-is-here.html\",\"title\":\"Joomla! 6.1.0 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 6.1.0\",\"php_minimum\":\"8.3.0\",\"channel\":\"6.x\",\"stability\":\"Stable\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"12.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(6\\\\.[0-4])|^(5\\\\.4)\"},\"type\":\"file\",\"version\":\"6.1.0\"}},\"Joomla_6.1.0-alpha2-Alpha-Full_Package.zip\":{\"length\":33107068,\"hashes\":{\"sha512\":\"be9711e1bda18981f077369105399eff9e8ab9203cad43d2c5385689e32db7bc6e11f3b5e406194dd9c2d7f5892bb92c6702cf5436badf3d971150ffcfda0a72\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 6.1.0-alpha2 Release\",\"downloads\":[{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/6.1.0-alpha2/Joomla_6.1.0-alpha2-Alpha-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://developer.joomla.org/news/1015-joomla-6-1-alpha2-see-how-its-coming-together.html\",\"title\":\"Joomla! 6.1.0-alpha2 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 6.1.0-alpha2\",\"php_minimum\":\"8.3.0\",\"channel\":\"6.x\",\"stability\":\"Alpha\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"12.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(6\\\\.[0-4])|^(5\\\\.4)\"},\"type\":\"file\",\"version\":\"6.1.0-alpha2\"}},\"Joomla_6.1.0-alpha2-Alpha-Update_Package.zip\":{\"length\":30736927,\"hashes\":{\"sha512\":\"388790c8b32f624e5b33531f4a41eefa85b5273e76e20a847b01c7eaa59367939317581e5f75ade6c024f25894740c9651ce2faaa330ac8a7fb863434c170879\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 6.1.0-alpha2 Release\",\"downloads\":[{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/6.1.0-alpha2/Joomla_6.1.0-alpha2-Alpha-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://developer.joomla.org/news/1015-joomla-6-1-alpha2-see-how-its-coming-together.html\",\"title\":\"Joomla! 6.1.0-alpha2 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 6.1.0-alpha2\",\"php_minimum\":\"8.3.0\",\"channel\":\"6.x\",\"stability\":\"Alpha\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"12.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(6\\\\.[0-4])|^(5\\\\.4)\"},\"type\":\"file\",\"version\":\"6.1.0-alpha2\"}},\"Joomla_6.1.0-alpha3-Alpha-Full_Package.zip\":{\"length\":33216519,\"hashes\":{\"sha512\":\"16eb1fb81ef4b0c2f3ebca14538945d291623f544d77946e556fc2f17561bda55c256be4f56c0f5034609bbc10e7dcbf0995691b0cd613f5dc58658fe964333b\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 6.1.0-alpha3 Release\",\"downloads\":[{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/6.1.0-alpha3/Joomla_6.1.0-alpha3-Alpha-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://developer.joomla.org/news/1018-joomla-6-1-alpha3-wrapping-up-the-alpha-phase.html\",\"title\":\"Joomla! 6.1.0-alpha3 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 6.1.0-alpha3\",\"php_minimum\":\"8.3.0\",\"channel\":\"6.x\",\"stability\":\"Alpha\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"12.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(6\\\\.[0-4])|^(5\\\\.4)\"},\"type\":\"file\",\"version\":\"6.1.0-alpha3\"}},\"Joomla_6.1.0-alpha3-Alpha-Update_Package.zip\":{\"length\":30842460,\"hashes\":{\"sha512\":\"9290f78cdba43c0bbb4e9b812a1e06cd548e6a4e14b51529d50d5acab3fdb4f7ab5cc6828655596159af41962b51f5a14008a26f06e3f9c5b3781f309cb52a19\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 6.1.0-alpha3 Release\",\"downloads\":[{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/6.1.0-alpha3/Joomla_6.1.0-alpha3-Alpha-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://developer.joomla.org/news/1018-joomla-6-1-alpha3-wrapping-up-the-alpha-phase.html\",\"title\":\"Joomla! 6.1.0-alpha3 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 6.1.0-alpha3\",\"php_minimum\":\"8.3.0\",\"channel\":\"6.x\",\"stability\":\"Alpha\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"12.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(6\\\\.[0-4])|^(5\\\\.4)\"},\"type\":\"file\",\"version\":\"6.1.0-alpha3\"}},\"Joomla_6.1.0-beta3-Beta-Update_Package.zip\":{\"length\":31413826,\"hashes\":{\"sha512\":\"9f03df89f3112706026cd9e99f4e3e1cc46a706db8492957e093ae416aadc568b422bcebbf74d45ffc07072d011c0d64e64e9891adcc3f56326da22ccb62d449\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 6.1.0-beta3 Release\",\"downloads\":[{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/6.1.0-beta3/Joomla_6.1.0-beta3-Beta-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://developer.joomla.org/news/1026-joomla-6-1-beta3-help-make-it-stable.html\",\"title\":\"Joomla! 6.1.0-beta3 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 6.1.0-beta3\",\"php_minimum\":\"8.3.0\",\"channel\":\"6.x\",\"stability\":\"Beta\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"12.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(6\\\\.[0-4])|^(5\\\\.4)\"},\"type\":\"file\",\"version\":\"6.1.0-beta3\"}},\"Joomla_6.1.0-rc1-Release_Candidate-Update_Package.zip\":{\"length\":31432633,\"hashes\":{\"sha512\":\"6b06981c9e3dc2f0345fc7ef6372d14fa4d84f5f8f424465139dd0ec9c596cf297a554a61b0bcbe02d1c4b494f5e8f1abb821f715222f1f3610045ea7c5f60cc\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 6.1.0-rc1 Release\",\"downloads\":[{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/6.1.0-rc1/Joomla_6.1.0-rc1-Release_Candidate-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://www.joomla.org/news/5945-joomla-6-1-release-candidate-test-the-final-package.html\",\"title\":\"Joomla! 6.1.0-rc1 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 6.1.0-rc1\",\"php_minimum\":\"8.3.0\",\"channel\":\"6.x\",\"stability\":\"RC\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"12.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(6\\\\.[0-4])|^(5\\\\.4)\"},\"type\":\"file\",\"version\":\"6.1.0-rc1\"}},\"Joomla_6.1.0-rc2-Release_Candidate-Update_Package.zip\":{\"length\":31433359,\"hashes\":{\"sha512\":\"b9b85aa048c26face653f9fb62f4ca28c294fa2a9c643aed73b581742d07db6d9d0b3169b4f7a437d1b233fe4771e0efe6395280a22139afa0a459908ba5d9b3\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 6.1.0-rc2 Release\",\"downloads\":[{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/6.1.0-rc2/Joomla_6.1.0-rc2-Release_Candidate-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://www.joomla.org/announcements/release-news/5949-joomla-6-1-release-candidate-2-test-the-final-package.html\",\"title\":\"Joomla! 6.1.0-rc2 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 6.1.0-rc2\",\"php_minimum\":\"8.3.0\",\"channel\":\"6.x\",\"stability\":\"RC\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"12.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(6\\\\.[0-4])|^(5\\\\.4)\"},\"type\":\"file\",\"version\":\"6.1.0-rc2\"}},\"Joomla_6.1.0-rc3-Release_Candidate-Update_Package.zip\":{\"length\":31441220,\"hashes\":{\"sha512\":\"5e66b9407f56f0d5d948a85743872e034a1e45b2d8b0cd876cbedb16edcfe39a32f95172677e2a12514a062aae8e1eb94ca3612ea1adb757c3911865cf2e242b\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 6.1.0-rc3 Release\",\"downloads\":[{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/6.1.0-rc3/Joomla_6.1.0-rc3-Release_Candidate-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://www.joomla.org/announcements/release-news/5952-joomla-6-1-release-candidate-3-test-the-final-package.html\",\"title\":\"Joomla! 6.1.0-rc3 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 6.1.0-rc3\",\"php_minimum\":\"8.3.0\",\"channel\":\"6.x\",\"stability\":\"RC\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"12.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(6\\\\.[0-4])|^(5\\\\.4)\"},\"type\":\"file\",\"version\":\"6.1.0-rc3\"}},\"Joomla_6.1.1-Stable-Update_Package.zip\":{\"length\":32594982,\"hashes\":{\"sha512\":\"17deb752b2b3cfa828d9537bc216cfd48202f60fba9cee7e40998fc69012a0089144a0f9468fef0010ccd202da63638a1d5dc130726d23f15b96defe49e65685\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 6.1.1 Release\",\"downloads\":[{\"url\":\"https://downloads.joomla.org/cms/joomla6/6-1-1/Joomla_6.1.1-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/6.1.1/Joomla_6.1.1-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://update.joomla.org/releases/6.1.1/Joomla_6.1.1-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://www.joomla.org/announcements/release-news/5954-joomla-6-1-1-5-4-6-security-bugfix-release.html\",\"title\":\"Joomla! 6.1.1 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 6.1.1\",\"php_minimum\":\"8.3.0\",\"channel\":\"6.x\",\"stability\":\"Stable\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"12.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(6\\\\.[0-4])|^(5\\\\.4)\"},\"type\":\"file\",\"version\":\"6.1.1\"}},\"Joomla_6.1.1-rc1-Release_Candidate-Update_Package.zip\":{\"length\":32593613,\"hashes\":{\"sha512\":\"92ecff9ab0d49f82954709c781ba899899ac51d53c755b02f020d8c4b4c1947c8640519d2e1467ffdef53809ede6382f0da8255ae537ab38aea02be3dec421ca\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 6.1.1-rc1 Release\",\"downloads\":[{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/6.1.1-rc1/Joomla_6.1.1-rc1-Release_Candidate-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://github.com/joomla/joomla-cms/releases/tag/6.1.1-rc1\",\"title\":\"Joomla! 6.1.1-rc1 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 6.1.1-rc1\",\"php_minimum\":\"8.3.0\",\"channel\":\"6.x\",\"stability\":\"RC\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"12.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(6\\\\.[0-4])|^(5\\\\.4)\"},\"type\":\"file\",\"version\":\"6.1.1-rc1\"}},\"Joomla_6.1.2-Stable-Update_Package.zip\":{\"length\":32955671,\"hashes\":{\"sha512\":\"92583e1301ddd9b8715fec76b1157ca8d7f2201d6e7e53127d307c430c1e78a0a32d8db552540fb15bb899fc5fb2ca0e91c18537b6034c408742e0148973576b\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 6.1.2 Release\",\"downloads\":[{\"url\":\"https://downloads.joomla.org/cms/joomla6/6-1-2/Joomla_6.1.2-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/6.1.2/Joomla_6.1.2-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://update.joomla.org/releases/6.1.2/Joomla_6.1.2-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://www.joomla.org/announcements/release-news/5955-joomla-6-1-2-5-4-7-security-bugfix-release.html\",\"title\":\"Joomla! 6.1.2 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 6.1.2\",\"php_minimum\":\"8.3.0\",\"channel\":\"6.x\",\"stability\":\"Stable\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"12.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(6\\\\.[0-4])|^(5\\\\.4)\"},\"type\":\"file\",\"version\":\"6.1.2\"}},\"Joomla_6.1.2-rc1-Release_Candidate-Update_Package.zip\":{\"length\":32944838,\"hashes\":{\"sha512\":\"d006b3e855dfbed2dde9e4cdaccbac53a3fdee1c5ad6912a8a77fc29579dcb3119d1845d712c2272e51a95414619684baa76dbc83690ed716d6b0b261abfcc2a\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 6.1.2-rc1 Release\",\"downloads\":[{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/6.1.2-rc1/Joomla_6.1.2-rc1-Release_Candidate-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://github.com/joomla/joomla-cms/releases/tag/6.1.2-rc1\",\"title\":\"Joomla! 6.1.2-rc1 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 6.1.2-rc1\",\"php_minimum\":\"8.3.0\",\"channel\":\"6.x\",\"stability\":\"RC\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"12.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(6\\\\.[0-4])|^(5\\\\.4)\"},\"type\":\"file\",\"version\":\"6.1.2-rc1\"}},\"Joomla_6.1.2-rc2-Release_Candidate-Update_Package.zip\":{\"length\":32947291,\"hashes\":{\"sha512\":\"e55782640120cabe47188b443a57f9a178b15fc140a6aef65226298ed2b0e16d88d82ccae2f9be9fd70a00a6582f429a16e5e39fe9b95a4858f48b2a39b36455\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 6.1.2-rc2 Release\",\"downloads\":[{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/6.1.2-rc2/Joomla_6.1.2-rc2-Release_Candidate-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://github.com/joomla/joomla-cms/releases/tag/6.1.2-rc2\",\"title\":\"Joomla! 6.1.2-rc2 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 6.1.2-rc2\",\"php_minimum\":\"8.3.0\",\"channel\":\"6.x\",\"stability\":\"RC\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"12.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(6\\\\.[0-4])|^(5\\\\.4)\"},\"type\":\"file\",\"version\":\"6.1.2-rc2\"}},\"Joomla_6.1.2-rc3-Release_Candidate-Update_Package.zip\":{\"length\":32951517,\"hashes\":{\"sha512\":\"b846e7b89c3dde8fe81e59b4a6664dea72197d1a6ca2e10a6318417ab8439268c57e17c0ff89361e4afbdfc1510321874a711cdd9684fcf9ce842ece1638789e\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 6.1.2-rc3 Release\",\"downloads\":[{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/6.1.2-rc3/Joomla_6.1.2-rc3-Release_Candidate-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://github.com/joomla/joomla-cms/releases/edit/6.1.2-rc3\",\"title\":\"Joomla! 6.1.2-rc3 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 6.1.2-rc3\",\"php_minimum\":\"8.3.0\",\"channel\":\"6.x\",\"stability\":\"RC\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"12.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(6\\\\.[0-4])|^(5\\\\.4)\"},\"type\":\"file\",\"version\":\"6.1.2-rc3\"}},\"Joomla_6.1.3-Stable-Update_Package.zip\":{\"length\":33023112,\"hashes\":{\"sha512\":\"91b4eae07ddc73626dc11da88de88b7752528def632e58f4f502ef3e56510c9f7e15ca66e06a8541291ea5dbefb32657194c065366927da6aba184dbeebdd610\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 6.1.3 Release\",\"downloads\":[{\"url\":\"https://downloads.joomla.org/cms/joomla6/6-1-3/Joomla_6.1.3-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/6.1.3/Joomla_6.1.3-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://update.joomla.org/releases/6.1.3/Joomla_6.1.3-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://www.joomla.org/announcements/release-news/5957-joomla-6-1-3-5-4-8-security-bugfix-release.html\",\"title\":\"Joomla! 6.1.3 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 6.1.3\",\"php_minimum\":\"8.3.0\",\"channel\":\"6.x\",\"stability\":\"Stable\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"12.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(6\\\\.[0-4])|^(5\\\\.4)\"},\"type\":\"file\",\"version\":\"6.1.3\"}},\"Joomla_6.1.3-rc1-Release_Candidate-Update_Package.zip\":{\"length\":33001951,\"hashes\":{\"sha512\":\"71eee7cfa031b2977e07dbfe69bc73fd8c55b40bb658b2d8bde9ebf7670921ded81f3ea279a798fc8b7ce24c3047454e1fc40a22e23f7054fdbcb0d457113d25\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 6.1.3-rc2 Release\",\"downloads\":[{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/6.1.3-rc2/Joomla_6.1.3-rc2-Release_Candidate-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://github.com/joomla/joomla-cms/releases/tag/6.1.3-rc2\",\"title\":\"Joomla! 6.1.3-rc2 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 6.1.3-rc2\",\"php_minimum\":\"8.3.0\",\"channel\":\"6.x\",\"stability\":\"RC\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"12.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(6\\\\.[0-4])|^(5\\\\.4)\"},\"type\":\"file\",\"version\":\"6.1.3-rc2\"}},\"Joomla_6.1.3-rc2-Release_Candidate-Update_Package.zip\":{\"length\":33020933,\"hashes\":{\"sha512\":\"dfb9a965e3edc8d8dbebe00ab567b4417c2e4e385cebe381c50f081c2dadebfd646ae20fd670fb01f25a3182b002aed147200362ceac85825eb1f22148f63947\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 6.1.3-rc2 Release\",\"downloads\":[{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/6.1.3-rc2/Joomla_6.1.3-rc2-Release_Candidate-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://github.com/joomla/joomla-cms/releases/tag/6.1.3-rc2\",\"title\":\"Joomla! 6.1.3-rc2 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 6.1.3-rc2\",\"php_minimum\":\"8.3.0\",\"channel\":\"6.x\",\"stability\":\"RC\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"12.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(6\\\\.[0-4])|^(5\\\\.4)\"},\"type\":\"file\",\"version\":\"6.1.3-rc2\"}},\"Joomla_6.2.0-alpha3-Alpha-Update_Package.zip\":{\"length\":32173625,\"hashes\":{\"sha512\":\"b966f0cd9b89ebd29066f333333cd98e27f889f5bb03248bc13c4aae4df34916b03b7f3779b2e0b2c325ba46c3a479cec163d5c141ebf2df94db86611dfc7d16\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 6.2.0-alpha3 Release\",\"downloads\":[{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/6.2.0-alpha3/Joomla_6.2.0-alpha3-Alpha-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://developer.joomla.org/news/1067-joomla-6-2-alpha3-one-step-closer-to-beta.html\",\"title\":\"Joomla! 6.2.0-alpha3 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 6.2.0-alpha3\",\"php_minimum\":\"8.3.0\",\"channel\":\"6.x\",\"stability\":\"Alpha\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"12.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(6\\\\.[0-4])|^(5\\\\.4)\"},\"type\":\"file\",\"version\":\"6.2.0-alpha3\"}},\"Joomla_6.2.0-beta1-Beta-Update_Package.zip\":{\"length\":32310957,\"hashes\":{\"sha512\":\"c3a7cd4b44de8e495744b9e8c9ba270ccb4baaca6fbf77b4077bf424bfb71b2bbc266a5ca47f13b53c2f7adca835cd5c0c7c42e1cfe40b46df3db577e5d9cc34\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 6.2.0-beta1 Release\",\"downloads\":[{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/6.2.0-beta1/Joomla_6.2.0-beta1-Beta-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://developer.joomla.org/news/1078-joomla-6-2-beta-1-the-next-phase-starts-now.html\",\"title\":\"Joomla! 6.2.0-beta1 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 6.2.0-beta1\",\"php_minimum\":\"8.3.0\",\"channel\":\"6.x\",\"stability\":\"Beta\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"12.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(6\\\\.[0-4])|^(5\\\\.4)\"},\"type\":\"file\",\"version\":\"6.2.0-beta1\"}}}},\"signatures\":[{\"keyid\":\"c9fe1ff72da60a30ea5e612fa2ef4ca329fb46d9e1965b811bf9f2de44ffdf18\",\"sig\":\"bbe00def429589a0146fdafc0089b37eda7866c3a906ba3bbb7a991e4fa00bd4ffdeee006a5a010582e4b49c62dcc0123cc419dde2b0cd9bc5bb80c90411cd09\"},{\"keyid\":\"284c8164fd395e9178dc66929787f0650cda6acff0fd769ef697203d7553c481\",\"sig\":\"51f5ec7d3851f232646bcf911031c4df53f442a93943a6d6fd973e36205c05fa87863fa3de43d5dbb2b8b8b5413a5cd7034fa73322347f44de4a1b9644221705\"}]}','{\"signed\":{\"_type\":\"snapshot\",\"spec_version\":\"1.0\",\"version\":125,\"expires\":\"2027-03-16T19:03:48Z\",\"meta\":{\"targets.json\":{\"length\":41140,\"hashes\":{\"sha512\":\"20b4bec3d64342e54f2ebdf24a3d847151792ac10bccce74bbbfbf1f77c3838b79fa5a9febb0b6bbedbd0dd6212e5d05a1b2e827513b22f1f895dff62954dfc2\"},\"version\":109}}},\"signatures\":[{\"keyid\":\"c9fe1ff72da60a30ea5e612fa2ef4ca329fb46d9e1965b811bf9f2de44ffdf18\",\"sig\":\"54430c46f5964b5839f4590be34566f55897a12017efd7b1eb37d68aa0d3b18dac853b5a7af52697606911a44c8844637e11013157dec1d06014123647c05f06\"}]}','{\"signed\":{\"_type\":\"timestamp\",\"spec_version\":\"1.0\",\"version\":1203,\"expires\":\"2026-08-21T19:07:43Z\",\"meta\":{\"snapshot.json\":{\"length\":534,\"hashes\":{\"sha512\":\"132cb7c65a65176f95a15deb87f3c36f61a5530d6d4a4d6a0dd69abe8ae059768f95dafddbcb99107eec6891be2e002a99d13655ea979ff310daf7199ade5a8c\"},\"version\":125}}},\"signatures\":[{\"keyid\":\"9e41a9d62d94c6a1c8a304f62c5bd72d84a9f286f27e8327cedeacb09e5156cc\",\"sig\":\"67e81d4677f818d7de957b9f9883c1a6f1df2e31fd65a606f19fad790dc503a224fa3b21a8280693f02d34c8a928e9dc2b0be4aa92094246366d2733a27c670b\"}]}',NULL);
/*!40000 ALTER TABLE `adtifuja_tuf_metadata` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtifuja_ucm_base`
--

DROP TABLE IF EXISTS `adtifuja_ucm_base`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtifuja_ucm_base` (
  `ucm_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(11) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL,
  PRIMARY KEY (`ucm_id`),
  KEY `idx_ucm_item_id` (`ucm_item_id`),
  KEY `idx_ucm_type_id` (`ucm_type_id`),
  KEY `idx_ucm_language_id` (`ucm_language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtifuja_ucm_base`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtifuja_ucm_base` WRITE;
/*!40000 ALTER TABLE `adtifuja_ucm_base` DISABLE KEYS */;
/*!40000 ALTER TABLE `adtifuja_ucm_base` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtifuja_ucm_content`
--

DROP TABLE IF EXISTS `adtifuja_ucm_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtifuja_ucm_content` (
  `core_content_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `core_type_alias` varchar(400) NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(400) NOT NULL DEFAULT '',
  `core_alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `core_body` mediumtext DEFAULT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT 0,
  `core_checked_out_time` datetime DEFAULT NULL,
  `core_checked_out_user_id` int(10) unsigned DEFAULT NULL,
  `core_access` int(10) unsigned NOT NULL DEFAULT 0,
  `core_params` text DEFAULT NULL,
  `core_featured` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `core_metadata` varchar(2048) NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `core_created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL,
  `core_modified_user_id` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL,
  `core_language` char(7) NOT NULL DEFAULT '',
  `core_publish_up` datetime DEFAULT NULL,
  `core_publish_down` datetime DEFAULT NULL,
  `core_content_item_id` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'ID from the individual type table',
  `asset_id` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'FK to the #__assets table.',
  `core_images` text DEFAULT NULL,
  `core_urls` text DEFAULT NULL,
  `core_hits` int(10) unsigned NOT NULL DEFAULT 0,
  `core_version` int(10) unsigned NOT NULL DEFAULT 1,
  `core_ordering` int(11) NOT NULL DEFAULT 0,
  `core_metakey` text DEFAULT NULL,
  `core_metadesc` text DEFAULT NULL,
  `core_catid` int(10) unsigned NOT NULL DEFAULT 0,
  `core_xreference` varchar(50) NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`core_content_id`),
  KEY `tag_idx` (`core_state`,`core_access`),
  KEY `idx_access` (`core_access`),
  KEY `idx_language` (`core_language`),
  KEY `idx_modified_time` (`core_modified_time`),
  KEY `idx_created_time` (`core_created_time`),
  KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  KEY `idx_core_created_user_id` (`core_created_user_id`),
  KEY `idx_core_type_id` (`core_type_id`),
  KEY `idx_alias` (`core_alias`(100)),
  KEY `idx_title` (`core_title`(100)),
  KEY `idx_content_type` (`core_type_alias`(100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Contains core content data in name spaced fields';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtifuja_ucm_content`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtifuja_ucm_content` WRITE;
/*!40000 ALTER TABLE `adtifuja_ucm_content` DISABLE KEYS */;
/*!40000 ALTER TABLE `adtifuja_ucm_content` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtifuja_update_sites`
--

DROP TABLE IF EXISTS `adtifuja_update_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtifuja_update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` mediumtext NOT NULL,
  `enabled` int(11) DEFAULT 0,
  `last_check_timestamp` bigint(20) DEFAULT 0,
  `extra_query` varchar(1000) DEFAULT '',
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  PRIMARY KEY (`update_site_id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Update Sites';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtifuja_update_sites`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtifuja_update_sites` WRITE;
/*!40000 ALTER TABLE `adtifuja_update_sites` DISABLE KEYS */;
INSERT INTO `adtifuja_update_sites` VALUES
(1,'Joomla! Core','tuf','https://update.joomla.org/cms/',1,1787178638,'',NULL,NULL),
(3,'Accredited Joomla! Translations','collection','https://update.joomla.org/language/translationlist_6.xml',1,1784111673,'',NULL,NULL),
(4,'Joomla! Update Component','extension','https://update.joomla.org/core/extensions/com_joomlaupdate.xml',1,1784111698,'',NULL,NULL),
(38,'SP Simple Portfolio Module','extension','http://www.joomshaper.com/updates/mod-sp-simple-portfolio.xml',1,1784111685,'',NULL,NULL),
(39,'System - Helix3 Framework','extension','https://www.joomshaper.com/updates/plg-system-helix3.xml',1,1784111686,'',NULL,NULL),
(40,'Helix3 - Ajax','extension','http://www.joomshaper.com/updates/plg-ajax-helix3.xml',1,1784111686,'',NULL,NULL),
(41,'shaper_helix3','extension','https://www.joomshaper.com/updates/shaper_helix3.xml',1,1784111687,'',NULL,NULL),
(42,'SP Page Builder','extension','https://www.joomshaper.com/updates/com-sp-page-builder-lite-next.xml',1,1784111687,'',NULL,NULL),
(43,'SP Simple Portfolio','extension','http://www.joomshaper.com/updates/com-sp-simple-portfolio.xml',1,1784111687,'',NULL,NULL),
(44,'Search Update Site','extension','https://raw.githubusercontent.com/joomla-extensions/search/main/manifest.xml',1,1784111688,'',NULL,NULL);
/*!40000 ALTER TABLE `adtifuja_update_sites` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtifuja_update_sites_extensions`
--

DROP TABLE IF EXISTS `adtifuja_update_sites_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtifuja_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT 0,
  `extension_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Links extensions to update sites';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtifuja_update_sites_extensions`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtifuja_update_sites_extensions` WRITE;
/*!40000 ALTER TABLE `adtifuja_update_sites_extensions` DISABLE KEYS */;
INSERT INTO `adtifuja_update_sites_extensions` VALUES
(1,700),
(3,802),
(4,28),
(38,10008),
(39,10002),
(40,10001),
(40,10145),
(41,10003),
(42,10039),
(43,10007),
(44,10093);
/*!40000 ALTER TABLE `adtifuja_update_sites_extensions` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtifuja_updates`
--

DROP TABLE IF EXISTS `adtifuja_updates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtifuja_updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT 0,
  `extension_id` int(11) DEFAULT 0,
  `name` varchar(100) DEFAULT '',
  `description` mediumtext NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(4) DEFAULT 0,
  `version` varchar(32) DEFAULT '',
  `data` mediumtext NOT NULL,
  `detailsurl` mediumtext NOT NULL,
  `infourl` mediumtext NOT NULL,
  `changelogurl` text DEFAULT NULL,
  `extra_query` varchar(1000) DEFAULT '',
  PRIMARY KEY (`update_id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Available Updates';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtifuja_updates`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtifuja_updates` WRITE;
/*!40000 ALTER TABLE `adtifuja_updates` DISABLE KEYS */;
INSERT INTO `adtifuja_updates` VALUES
(54,3,0,'Afrikaans','','pkg_af-ZA','package','',0,'6.0.3.1','','https://update.joomla.org/language/details6/af-ZA_details.xml','','',''),
(55,3,0,'Belarusian','','pkg_be-BY','package','',0,'6.1.1.1','','https://update.joomla.org/language/details6/be-BY_details.xml','','',''),
(56,3,0,'Bulgarian','','pkg_bg-BG','package','',0,'6.0.3.1','','https://update.joomla.org/language/details6/bg-BG_details.xml','','',''),
(57,3,0,'Catalan','','pkg_ca-ES','package','',0,'6.1.2.1','','https://update.joomla.org/language/details6/ca-ES_details.xml','','',''),
(58,3,0,'Chinese, Simplified','','pkg_zh-CN','package','',0,'6.0.1.4','','https://update.joomla.org/language/details6/zh-CN_details.xml','','',''),
(59,3,0,'Chinese, Traditional','','pkg_zh-TW','package','',0,'6.0.4.1','','https://update.joomla.org/language/details6/zh-TW_details.xml','','',''),
(60,3,0,'Croatian','','pkg_hr-HR','package','',0,'6.0.3.2','','https://update.joomla.org/language/details6/hr-HR_details.xml','','',''),
(61,3,0,'Czech','','pkg_cs-CZ','package','',0,'6.1.1.1','','https://update.joomla.org/language/details6/cs-CZ_details.xml','','',''),
(62,3,0,'Danish','','pkg_da-DK','package','',0,'6.1.2.1','','https://update.joomla.org/language/details6/da-DK_details.xml','','',''),
(63,3,0,'Dutch','','pkg_nl-NL','package','',0,'6.1.2.1','','https://update.joomla.org/language/details6/nl-NL_details.xml','','',''),
(64,3,0,'English, Australia','','pkg_en-AU','package','',0,'6.1.1.1','','https://update.joomla.org/language/details6/en-AU_details.xml','','',''),
(65,3,0,'English, Canada','','pkg_en-CA','package','',0,'6.1.1.1','','https://update.joomla.org/language/details6/en-CA_details.xml','','',''),
(66,3,0,'English, New Zealand','','pkg_en-NZ','package','',0,'6.1.1.1','','https://update.joomla.org/language/details6/en-NZ_details.xml','','',''),
(67,3,0,'English, USA','','pkg_en-US','package','',0,'6.1.1.2','','https://update.joomla.org/language/details6/en-US_details.xml','','',''),
(68,3,0,'Estonian','','pkg_et-EE','package','',0,'6.0.3.1','','https://update.joomla.org/language/details6/et-EE_details.xml','','',''),
(69,3,0,'Finnish','','pkg_fi-FI','package','',0,'6.1.0.1','','https://update.joomla.org/language/details6/fi-FI_details.xml','','',''),
(70,3,0,'Flemish','','pkg_nl-BE','package','',0,'6.1.2.1','','https://update.joomla.org/language/details6/nl-BE_details.xml','','',''),
(71,3,0,'French','','pkg_fr-FR','package','',0,'6.1.2.1','','https://update.joomla.org/language/details6/fr-FR_details.xml','','',''),
(72,3,0,'French, Canada','','pkg_fr-CA','package','',0,'6.1.1.1','','https://update.joomla.org/language/details6/fr-CA_details.xml','','',''),
(73,3,0,'Georgian','','pkg_ka-GE','package','',0,'6.1.2.1','','https://update.joomla.org/language/details6/ka-GE_details.xml','','',''),
(74,3,0,'German','','pkg_de-DE','package','',0,'6.1.2.1','','https://update.joomla.org/language/details6/de-DE_details.xml','','',''),
(75,3,0,'German, Austria','','pkg_de-AT','package','',0,'6.1.2.1','','https://update.joomla.org/language/details6/de-AT_details.xml','','',''),
(76,3,0,'German, Liechtenstein','','pkg_de-LI','package','',0,'6.1.2.1','','https://update.joomla.org/language/details6/de-LI_details.xml','','',''),
(77,3,0,'German, Luxembourg','','pkg_de-LU','package','',0,'6.1.2.1','','https://update.joomla.org/language/details6/de-LU_details.xml','','',''),
(78,3,0,'German, Switzerland','','pkg_de-CH','package','',0,'6.1.2.1','','https://update.joomla.org/language/details6/de-CH_details.xml','','',''),
(79,3,0,'Greek','','pkg_el-GR','package','',0,'6.1.2.1','','https://update.joomla.org/language/details6/el-GR_details.xml','','',''),
(80,3,0,'Hungarian','','pkg_hu-HU','package','',0,'6.1.1.1','','https://update.joomla.org/language/details6/hu-HU_details.xml','','',''),
(81,3,0,'Italian','','pkg_it-IT','package','',0,'6.1.2.1','','https://update.joomla.org/language/details6/it-IT_details.xml','','',''),
(82,3,0,'Japanese','','pkg_ja-JP','package','',0,'6.1.1.1','','https://update.joomla.org/language/details6/ja-JP_details.xml','','',''),
(83,3,0,'Laotian','','pkg_lo-LA','package','',0,'6.0.4.1','','https://update.joomla.org/language/details6/lo-LA_details.xml','','',''),
(84,3,0,'Latvian','','pkg_lv-LV','package','',0,'6.0.3.1','','https://update.joomla.org/language/details6/lv-LV_details.xml','','',''),
(85,3,0,'Lithuanian','','pkg_lt-LT','package','',0,'6.0.3.1','','https://update.joomla.org/language/details6/lt-LT_details.xml','','',''),
(86,3,0,'Malay','','pkg_ms-MY','package','',0,'6.1.2.1','','https://update.joomla.org/language/details6/ms-MY_details.xml','','',''),
(87,3,0,'Norwegian Bokmål','','pkg_nb-NO','package','',0,'6.0.3.1','','https://update.joomla.org/language/details6/nb-NO_details.xml','','',''),
(88,3,0,'Persian Farsi','','pkg_fa-IR','package','',0,'6.1.2.1','','https://update.joomla.org/language/details6/fa-IR_details.xml','','',''),
(89,3,0,'Polish','','pkg_pl-PL','package','',0,'6.0.0.1','','https://update.joomla.org/language/details6/pl-PL_details.xml','','',''),
(90,3,0,'Portuguese, Brazil','','pkg_pt-BR','package','',0,'6.0.3.1','','https://update.joomla.org/language/details6/pt-BR_details.xml','','',''),
(91,3,0,'Portuguese, Portugal','','pkg_pt-PT','package','',0,'6.1.0.1','','https://update.joomla.org/language/details6/pt-PT_details.xml','','',''),
(92,3,0,'Romanian','','pkg_ro-RO','package','',0,'6.0.0.1','','https://update.joomla.org/language/details6/ro-RO_details.xml','','',''),
(93,3,0,'Russian','','pkg_ru-RU','package','',0,'6.1.1.1','','https://update.joomla.org/language/details6/ru-RU_details.xml','','',''),
(94,3,0,'Serbian, Cyrillic','','pkg_sr-RS','package','',0,'6.1.1.1','','https://update.joomla.org/language/details6/sr-RS_details.xml','','',''),
(95,3,0,'Serbian, Latin','','pkg_sr-YU','package','',0,'6.0.4.1','','https://update.joomla.org/language/details6/sr-YU_details.xml','','',''),
(96,3,0,'Slovak','','pkg_sk-SK','package','',0,'6.1.0.1','','https://update.joomla.org/language/details6/sk-SK_details.xml','','',''),
(97,3,0,'Slovenian','','pkg_sl-SI','package','',0,'6.1.2.1','','https://update.joomla.org/language/details6/sl-SI_details.xml','','',''),
(98,3,0,'Spanish','','pkg_es-ES','package','',0,'6.1.2.1','','https://update.joomla.org/language/details6/es-ES_details.xml','','',''),
(99,3,0,'Swedish','','pkg_sv-SE','package','',0,'6.1.2.1','','https://update.joomla.org/language/details6/sv-SE_details.xml','','',''),
(100,3,0,'Tamil, India','','pkg_ta-IN','package','',0,'6.1.2.1','','https://update.joomla.org/language/details6/ta-IN_details.xml','','',''),
(101,3,0,'Thai','','pkg_th-TH','package','',0,'6.0.0.2','','https://update.joomla.org/language/details6/th-TH_details.xml','','',''),
(102,3,0,'Turkish','','pkg_tr-TR','package','',0,'6.1.2.2','','https://update.joomla.org/language/details6/tr-TR_details.xml','','',''),
(103,3,0,'Ukrainian','','pkg_uk-UA','package','',0,'6.0.0.1','','https://update.joomla.org/language/details6/uk-UA_details.xml','','',''),
(104,3,0,'Welsh','','pkg_cy-GB','package','',0,'6.1.2.1','','https://update.joomla.org/language/details6/cy-GB_details.xml','','',''),
(109,1,700,'Joomla! 6.1.3','Joomla! 6.1.3 Release','joomla','file','',0,'6.1.3','','https://update.joomla.org/cms/','https://www.joomla.org/announcements/release-news/5957-joomla-6-1-3-5-4-8-security-bugfix-release.html',NULL,'');
/*!40000 ALTER TABLE `adtifuja_updates` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtifuja_user_keys`
--

DROP TABLE IF EXISTS `adtifuja_user_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtifuja_user_keys` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(150) NOT NULL,
  `token` varchar(255) NOT NULL,
  `series` varchar(191) NOT NULL,
  `time` varchar(200) NOT NULL,
  `uastring` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `series` (`series`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtifuja_user_keys`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtifuja_user_keys` WRITE;
/*!40000 ALTER TABLE `adtifuja_user_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `adtifuja_user_keys` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtifuja_user_mfa`
--

DROP TABLE IF EXISTS `adtifuja_user_mfa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtifuja_user_mfa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `method` varchar(100) NOT NULL,
  `default` tinyint(4) NOT NULL DEFAULT 0,
  `options` mediumtext NOT NULL,
  `created_on` datetime NOT NULL,
  `last_used` datetime DEFAULT NULL,
  `tries` int(11) NOT NULL DEFAULT 0,
  `last_try` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Multi-factor Authentication settings';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtifuja_user_mfa`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtifuja_user_mfa` WRITE;
/*!40000 ALTER TABLE `adtifuja_user_mfa` DISABLE KEYS */;
/*!40000 ALTER TABLE `adtifuja_user_mfa` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtifuja_user_notes`
--

DROP TABLE IF EXISTS `adtifuja_user_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtifuja_user_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `catid` int(10) unsigned NOT NULL DEFAULT 0,
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT 0,
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `created_user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `created_time` datetime NOT NULL,
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `modified_time` datetime NOT NULL,
  `review_time` datetime DEFAULT NULL,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtifuja_user_notes`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtifuja_user_notes` WRITE;
/*!40000 ALTER TABLE `adtifuja_user_notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `adtifuja_user_notes` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtifuja_user_profiles`
--

DROP TABLE IF EXISTS `adtifuja_user_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtifuja_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0,
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Simple user profile storage table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtifuja_user_profiles`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtifuja_user_profiles` WRITE;
/*!40000 ALTER TABLE `adtifuja_user_profiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `adtifuja_user_profiles` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtifuja_user_usergroup_map`
--

DROP TABLE IF EXISTS `adtifuja_user_usergroup_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtifuja_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtifuja_user_usergroup_map`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtifuja_user_usergroup_map` WRITE;
/*!40000 ALTER TABLE `adtifuja_user_usergroup_map` DISABLE KEYS */;
INSERT INTO `adtifuja_user_usergroup_map` VALUES
(908,8);
/*!40000 ALTER TABLE `adtifuja_user_usergroup_map` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtifuja_usergroups`
--

DROP TABLE IF EXISTS `adtifuja_usergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtifuja_usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtifuja_usergroups`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtifuja_usergroups` WRITE;
/*!40000 ALTER TABLE `adtifuja_usergroups` DISABLE KEYS */;
INSERT INTO `adtifuja_usergroups` VALUES
(1,0,1,18,'Public'),
(2,1,8,15,'Registered'),
(3,2,9,14,'Author'),
(4,3,10,13,'Editor'),
(5,4,11,12,'Publisher'),
(6,1,4,7,'Manager'),
(7,6,5,6,'Administrator'),
(8,1,16,17,'Super Users'),
(9,1,2,3,'Guest');
/*!40000 ALTER TABLE `adtifuja_usergroups` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtifuja_users`
--

DROP TABLE IF EXISTS `adtifuja_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtifuja_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(400) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT 0,
  `sendEmail` tinyint(4) DEFAULT 0,
  `registerDate` datetime NOT NULL,
  `lastvisitDate` datetime DEFAULT NULL,
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `lastResetTime` datetime DEFAULT NULL COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT 0 COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) NOT NULL DEFAULT '' COMMENT 'Backup Codes',
  `requireReset` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'Require user to reset password on next login',
  `authProvider` varchar(100) NOT NULL DEFAULT '' COMMENT 'Name of used authentication plugin',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_username` (`username`),
  KEY `idx_name` (`name`(100)),
  KEY `idx_block` (`block`),
  KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=909 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtifuja_users`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtifuja_users` WRITE;
/*!40000 ALTER TABLE `adtifuja_users` DISABLE KEYS */;
INSERT INTO `adtifuja_users` VALUES
(908,'ADT Test User Account','adt-webmaster','changeme@adt-installation-bootstrap.uk','$2y$12$imFlpczA/TEeO5cyLA/VseY/C/Vz5rK2mxkqNdx6CsXqNuk8PX06i',0,1,'2026-08-19 22:29:57',NULL,'0','',NULL,0,'','',0,'');
/*!40000 ALTER TABLE `adtifuja_users` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtifuja_viewlevels`
--

DROP TABLE IF EXISTS `adtifuja_viewlevels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtifuja_viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT 0,
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtifuja_viewlevels`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtifuja_viewlevels` WRITE;
/*!40000 ALTER TABLE `adtifuja_viewlevels` DISABLE KEYS */;
INSERT INTO `adtifuja_viewlevels` VALUES
(1,'Public',0,'[1]'),
(2,'Registered',2,'[6,2,8]'),
(3,'Special',3,'[6,3,8]'),
(5,'Guest',1,'[9]'),
(6,'Super Users',4,'[8]');
/*!40000 ALTER TABLE `adtifuja_viewlevels` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtifuja_webauthn_credentials`
--

DROP TABLE IF EXISTS `adtifuja_webauthn_credentials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtifuja_webauthn_credentials` (
  `id` varchar(1000) NOT NULL COMMENT 'Credential ID',
  `user_id` varchar(128) NOT NULL COMMENT 'User handle',
  `label` varchar(190) NOT NULL COMMENT 'Human readable label',
  `credential` mediumtext NOT NULL COMMENT 'Credential source data, JSON format',
  PRIMARY KEY (`id`(100)),
  KEY `user_id` (`user_id`(100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtifuja_webauthn_credentials`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtifuja_webauthn_credentials` WRITE;
/*!40000 ALTER TABLE `adtifuja_webauthn_credentials` DISABLE KEYS */;
/*!40000 ALTER TABLE `adtifuja_webauthn_credentials` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtifuja_workflow_associations`
--

DROP TABLE IF EXISTS `adtifuja_workflow_associations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtifuja_workflow_associations` (
  `item_id` int(11) NOT NULL DEFAULT 0 COMMENT 'Extension table id value',
  `stage_id` int(11) NOT NULL COMMENT 'Foreign Key to #__workflow_stages.id',
  `extension` varchar(50) NOT NULL,
  PRIMARY KEY (`item_id`,`extension`),
  KEY `idx_item_stage_extension` (`item_id`,`stage_id`,`extension`),
  KEY `idx_item_id` (`item_id`),
  KEY `idx_stage_id` (`stage_id`),
  KEY `idx_extension` (`extension`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtifuja_workflow_associations`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtifuja_workflow_associations` WRITE;
/*!40000 ALTER TABLE `adtifuja_workflow_associations` DISABLE KEYS */;
INSERT INTO `adtifuja_workflow_associations` VALUES
(1,1,'com_content.article'),
(8,1,'com_content.article'),
(9,1,'com_content.article'),
(10,1,'com_content.article'),
(21,1,'com_content.article'),
(22,1,'com_content.article'),
(24,1,'com_content.article'),
(32,1,'com_content.article'),
(35,1,'com_content.article'),
(38,1,'com_content.article'),
(39,1,'com_content.article'),
(47,1,'com_content.article'),
(48,1,'com_content.article'),
(50,1,'com_content.article'),
(52,1,'com_content.article'),
(53,1,'com_content.article'),
(60,1,'com_content.article'),
(71,1,'com_content.article'),
(72,1,'com_content.article'),
(73,1,'com_content.article'),
(74,1,'com_content.article'),
(75,1,'com_content.article'),
(76,1,'com_content.article'),
(77,1,'com_content.article');
/*!40000 ALTER TABLE `adtifuja_workflow_associations` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtifuja_workflow_stages`
--

DROP TABLE IF EXISTS `adtifuja_workflow_stages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtifuja_workflow_stages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(11) DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `workflow_id` int(11) NOT NULL,
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `default` tinyint(4) NOT NULL DEFAULT 0,
  `position` text DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `checked_out` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_workflow_id` (`workflow_id`),
  KEY `idx_checked_out` (`checked_out`),
  KEY `idx_title` (`title`(191)),
  KEY `idx_asset_id` (`asset_id`),
  KEY `idx_default` (`default`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtifuja_workflow_stages`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtifuja_workflow_stages` WRITE;
/*!40000 ALTER TABLE `adtifuja_workflow_stages` DISABLE KEYS */;
INSERT INTO `adtifuja_workflow_stages` VALUES
(1,0,1,1,1,'COM_WORKFLOW_BASIC_STAGE','',1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `adtifuja_workflow_stages` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtifuja_workflow_transitions`
--

DROP TABLE IF EXISTS `adtifuja_workflow_transitions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtifuja_workflow_transitions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(11) DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `workflow_id` int(11) NOT NULL,
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `from_stage_id` int(11) NOT NULL,
  `to_stage_id` int(11) NOT NULL,
  `options` text NOT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `checked_out` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_title` (`title`(191)),
  KEY `idx_asset_id` (`asset_id`),
  KEY `idx_checked_out` (`checked_out`),
  KEY `idx_from_stage_id` (`from_stage_id`),
  KEY `idx_to_stage_id` (`to_stage_id`),
  KEY `idx_workflow_id` (`workflow_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtifuja_workflow_transitions`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtifuja_workflow_transitions` WRITE;
/*!40000 ALTER TABLE `adtifuja_workflow_transitions` DISABLE KEYS */;
INSERT INTO `adtifuja_workflow_transitions` VALUES
(1,0,1,1,1,'UNPUBLISH','',-1,1,'{\"publishing\":\"0\"}',NULL,NULL),
(2,0,2,1,1,'PUBLISH','',-1,1,'{\"publishing\":\"1\"}',NULL,NULL),
(3,0,3,1,1,'TRASH','',-1,1,'{\"publishing\":\"-2\"}',NULL,NULL),
(4,0,4,1,1,'ARCHIVE','',-1,1,'{\"publishing\":\"2\"}',NULL,NULL),
(5,0,5,1,1,'FEATURE','',-1,1,'{\"featuring\":\"1\"}',NULL,NULL),
(6,0,6,1,1,'UNFEATURE','',-1,1,'{\"featuring\":\"0\"}',NULL,NULL),
(7,0,7,1,1,'PUBLISH_AND_FEATURE','',-1,1,'{\"publishing\":\"1\",\"featuring\":\"1\"}',NULL,NULL);
/*!40000 ALTER TABLE `adtifuja_workflow_transitions` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `adtifuja_workflows`
--

DROP TABLE IF EXISTS `adtifuja_workflows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `adtifuja_workflows` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(11) DEFAULT 0,
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `extension` varchar(50) NOT NULL,
  `default` tinyint(4) NOT NULL DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `checked_out_time` datetime DEFAULT NULL,
  `checked_out` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_asset_id` (`asset_id`),
  KEY `idx_title` (`title`(191)),
  KEY `idx_extension` (`extension`),
  KEY `idx_default` (`default`),
  KEY `idx_created` (`created`),
  KEY `idx_created_by` (`created_by`),
  KEY `idx_modified` (`modified`),
  KEY `idx_modified_by` (`modified_by`),
  KEY `idx_checked_out` (`checked_out`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adtifuja_workflows`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `adtifuja_workflows` WRITE;
/*!40000 ALTER TABLE `adtifuja_workflows` DISABLE KEYS */;
INSERT INTO `adtifuja_workflows` VALUES
(1,0,1,'COM_WORKFLOW_BASIC_WORKFLOW','','com_content.article',1,1,'2022-11-14 18:57:49',0,'2022-11-14 18:57:49',0,NULL,NULL);
/*!40000 ALTER TABLE `adtifuja_workflows` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Dumping routines for database 'nc2rktidon'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2026-08-19 23:48:11
DROP TABLE IF EXISTS `zzzz`;
CREATE TABLE `zzzz` ( `idxx` int(10) unsigned NOT NULL, PRIMARY KEY (`idxx`) ) Engine=INNODB CHARSET=utf8mb4;
