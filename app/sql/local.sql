-- MySQL dump 10.13  Distrib 8.0.16, for macos10.14 (x86_64)
--
-- Host: localhost    Database: local
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
INSERT INTO `wp_commentmeta` VALUES (1,1,'_wp_trash_meta_status','1');
INSERT INTO `wp_commentmeta` VALUES (2,1,'_wp_trash_meta_time','1632391073');
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2021-07-08 15:00:47','2021-07-08 15:00:47','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.',0,'trash','','comment',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_nextend2_image_storage`
--

DROP TABLE IF EXISTS `wp_nextend2_image_storage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_nextend2_image_storage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hash` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hash` (`hash`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_nextend2_image_storage`
--

LOCK TABLES `wp_nextend2_image_storage` WRITE;
/*!40000 ALTER TABLE `wp_nextend2_image_storage` DISABLE KEYS */;
INSERT INTO `wp_nextend2_image_storage` VALUES (1,'a35afddd5f5bd42b2e330c677c7cf722','$upload$/2021/10/BobAdaMarriage.jpg','eyJkZXNrdG9wLXJldGluYSI6eyJpbWFnZSI6IiJ9LCJ0YWJsZXQiOnsiaW1hZ2UiOiIifSwibW9iaWxlIjp7ImltYWdlIjoiIn19');
INSERT INTO `wp_nextend2_image_storage` VALUES (2,'a31ab805bd0fdc01e91218c3bffd1829','$upload$/2021/10/BobRegulySmokejumper-scaled.jpg','eyJkZXNrdG9wLXJldGluYSI6eyJpbWFnZSI6IiJ9LCJ0YWJsZXQiOnsiaW1hZ2UiOiIifSwibW9iaWxlIjp7ImltYWdlIjoiIn19');
INSERT INTO `wp_nextend2_image_storage` VALUES (3,'f60ea73bfcfb4a1653273e5a1d35b525','$upload$/2021/10/BobRegulySmokejumper2.jpg','eyJkZXNrdG9wLXJldGluYSI6eyJpbWFnZSI6IiJ9LCJ0YWJsZXQiOnsiaW1hZ2UiOiIifSwibW9iaWxlIjp7ImltYWdlIjoiIn19');
INSERT INTO `wp_nextend2_image_storage` VALUES (4,'7f3cdf8f2518f6d03417a232a5aa92d2','$upload$/2021/10/BobRegulyTorontoStara-scaled.jpg','eyJkZXNrdG9wLXJldGluYSI6eyJpbWFnZSI6IiJ9LCJ0YWJsZXQiOnsiaW1hZ2UiOiIifSwibW9iaWxlIjp7ImltYWdlIjoiIn19');
INSERT INTO `wp_nextend2_image_storage` VALUES (5,'24b085e06175dec5d7e47188f49286c7','$upload$/2021/10/regulyNewsroom.jpg','eyJkZXNrdG9wLXJldGluYSI6eyJpbWFnZSI6IiJ9LCJ0YWJsZXQiOnsiaW1hZ2UiOiIifSwibW9iaWxlIjp7ImltYWdlIjoiIn19');
INSERT INTO `wp_nextend2_image_storage` VALUES (6,'8e3740c8c1c0bb87d3964f7dd8efb6e3','$upload$/2021/10/regulyNewsroom2-scaled.jpg','eyJkZXNrdG9wLXJldGluYSI6eyJpbWFnZSI6IiJ9LCJ0YWJsZXQiOnsiaW1hZ2UiOiIifSwibW9iaWxlIjp7ImltYWdlIjoiIn19');
/*!40000 ALTER TABLE `wp_nextend2_image_storage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_nextend2_section_storage`
--

DROP TABLE IF EXISTS `wp_nextend2_section_storage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_nextend2_section_storage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `application` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `section` varchar(128) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `referencekey` varchar(128) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `system` int(11) NOT NULL DEFAULT '0',
  `editable` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `system` (`system`),
  KEY `editable` (`editable`),
  KEY `application` (`application`,`section`(50),`referencekey`(50)),
  KEY `application_2` (`application`,`section`(50))
) ENGINE=InnoDB AUTO_INCREMENT=10014 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_nextend2_section_storage`
--

LOCK TABLES `wp_nextend2_section_storage` WRITE;
/*!40000 ALTER TABLE `wp_nextend2_section_storage` DISABLE KEYS */;
INSERT INTO `wp_nextend2_section_storage` VALUES (10000,'smartslider','settings','','{\"n2_ss3_version\":\"3.5.0.11\\/b:release-3.5.0.11\\/r:2a442a1570d7e95765a11de6b41feca863a1f81b\"}',0,1);
INSERT INTO `wp_nextend2_section_storage` VALUES (10002,'smartslider','tutorial','GettingStarted','1',0,1);
INSERT INTO `wp_nextend2_section_storage` VALUES (10005,'system','fonts','default-family','Georgia,Arial',1,1);
INSERT INTO `wp_nextend2_section_storage` VALUES (10006,'system','fonts','preset-families','Abel\r\nArial\r\nArimo\r\nAverage\r\nBevan\r\nBitter\r\n\'Bree Serif\'\r\nCabin\r\nCalligraffitti\r\nChewy\r\nComfortaa\r\n\'Covered By Your Grace\'\r\n\'Crafty Girls\'\r\n\'Dancing Script\'\r\n\'Noto Sans\'\r\n\'Noto Serif\'\r\n\'Francois One\'\r\n\'Fredoka One\'\r\n\'Gloria Hallelujah\'\r\n\'Happy Monkey\'\r\n\'Josefin Slab\'\r\nLato\r\nLobster\r\n\'Luckiest Guy\'\r\nMontserrat\r\n\'Nova Square\'\r\nNunito\r\n\'Open Sans\'\r\nOswald\r\nOxygen\r\nPacifico\r\n\'Permanent Marker\'\r\n\'Playfair Display\'\r\n\'PT Sans\'\r\n\'Poiret One\'\r\nRaleway\r\nRoboto\r\n\'Rock Salt\'\r\nQuicksand\r\nSatisfy\r\n\'Squada One\'\r\n\'The Girl Next Door\'\r\n\'Titillium Web\'\r\n\'Varela Round\'\r\nVollkorn\r\n\'Walter Turncoat\'',1,1);
INSERT INTO `wp_nextend2_section_storage` VALUES (10007,'system','fonts','plugins','{\"google-enabled\":\"1\",\"google-enabled-backend\":\"1\",\"google-style-100\":\"0\",\"google-style-100italic\":\"0\",\"google-style-200\":\"0\",\"google-style-200italic\":\"0\",\"google-style-300\":\"1\",\"google-style-300italic\":\"1\",\"google-style-400\":\"1\",\"google-style-400italic\":\"0\",\"google-style-500\":\"0\",\"google-style-500italic\":\"0\",\"google-style-600\":\"0\",\"google-style-600italic\":\"0\",\"google-style-700\":\"0\",\"google-style-700italic\":\"0\",\"google-style-800\":\"0\",\"google-style-800italic\":\"0\",\"google-style-900\":\"0\",\"google-style-900italic\":\"0\"}',1,1);
INSERT INTO `wp_nextend2_section_storage` VALUES (10008,'cache','notweb/n2-ss-2','data.manifest','{\"generator\":[]}',0,1);
INSERT INTO `wp_nextend2_section_storage` VALUES (10009,'cache','notweb/n2-ss-2','variations.manifest','1',0,1);
INSERT INTO `wp_nextend2_section_storage` VALUES (10010,'cache','notweb/n2-ss-2','slideren_US1.manifest','{\"hash\":\"\",\"nextCacheRefresh\":2145916800,\"currentPath\":\"c95f106a5b3c0c210cb19bb00c3905c1\",\"version\":\"3.5.0.11\"}',0,1);
INSERT INTO `wp_nextend2_section_storage` VALUES (10011,'cache','notweb/n2-ss-2','slideren_US1','{\"html\":\"<div class=\\\"n2-section-smartslider fitvidsignore  n2_clear\\\" data-ssid=\\\"2\\\" tabindex=\\\"0\\\" role=\\\"region\\\" aria-label=\\\"Slider\\\"><div id=\\\"n2-ss-2-align\\\" class=\\\"n2-ss-align\\\"><div class=\\\"n2-padding\\\"><div id=\\\"n2-ss-2\\\" data-creator=\\\"Smart Slider 3\\\" data-responsive=\\\"auto\\\" class=\\\"n2-ss-slider n2-ow n2-has-hover n2notransition  \\\"><div class=\\\"n2-ss-slider-wrapper-inside\\\">\\n        <div class=\\\"n2-ss-slider-1 n2_ss__touch_element n2-ow\\\" style=\\\"\\\">\\n            <div class=\\\"n2-ss-slider-2 n2-ow\\\">\\n                                                <div class=\\\"n2-ss-slider-3 n2-ow\\\" style=\\\"\\\">\\n\\n                    <div class=\\\"n2-ss-slide-backgrounds n2-ow-all\\\"><div class=\\\"n2-ss-slide-background\\\" data-public-id=\\\"1\\\" data-mode=\\\"fill\\\"><div class=\\\"n2-ss-slide-background-image\\\" data-blur=\\\"0\\\" data-alt=\\\"\\\" data-title=\\\"\\\"><picture><img src=\\\"\\/\\/localhost:10013\\/wp-content\\/uploads\\/2021\\/10\\/BobAdaMarriage.jpg\\\" alt=\\\"\\\" title=\\\"\\\" loading=\\\"lazy\\\" class=\\\"skip-lazy\\\" data-skip-lazy=\\\"1\\\"><\\/picture><\\/div><\\/div><div class=\\\"n2-ss-slide-background\\\" data-public-id=\\\"2\\\" data-mode=\\\"fill\\\"><div class=\\\"n2-ss-slide-background-image\\\" data-blur=\\\"0\\\" data-alt=\\\"\\\" data-title=\\\"\\\"><picture><img src=\\\"\\/\\/localhost:10013\\/wp-content\\/uploads\\/2021\\/10\\/BobRegulySmokejumper-scaled.jpg\\\" alt=\\\"\\\" title=\\\"\\\" loading=\\\"lazy\\\" class=\\\"skip-lazy\\\" data-skip-lazy=\\\"1\\\"><\\/picture><\\/div><\\/div><div class=\\\"n2-ss-slide-background\\\" data-public-id=\\\"3\\\" data-mode=\\\"fill\\\"><div class=\\\"n2-ss-slide-background-image\\\" data-blur=\\\"0\\\" data-alt=\\\"\\\" data-title=\\\"\\\"><picture><img src=\\\"\\/\\/localhost:10013\\/wp-content\\/uploads\\/2021\\/10\\/BobRegulySmokejumper2.jpg\\\" alt=\\\"\\\" title=\\\"\\\" loading=\\\"lazy\\\" class=\\\"skip-lazy\\\" data-skip-lazy=\\\"1\\\"><\\/picture><\\/div><\\/div><div class=\\\"n2-ss-slide-background\\\" data-public-id=\\\"4\\\" data-mode=\\\"fill\\\"><div class=\\\"n2-ss-slide-background-image\\\" data-blur=\\\"0\\\" data-alt=\\\"\\\" data-title=\\\"\\\"><picture><img src=\\\"\\/\\/localhost:10013\\/wp-content\\/uploads\\/2021\\/10\\/BobRegulyTorontoStara-scaled.jpg\\\" alt=\\\"\\\" title=\\\"\\\" loading=\\\"lazy\\\" class=\\\"skip-lazy\\\" data-skip-lazy=\\\"1\\\"><\\/picture><\\/div><\\/div><div class=\\\"n2-ss-slide-background\\\" data-public-id=\\\"5\\\" data-mode=\\\"fill\\\"><div class=\\\"n2-ss-slide-background-image\\\" data-blur=\\\"0\\\" data-alt=\\\"\\\" data-title=\\\"\\\"><picture><img src=\\\"\\/\\/localhost:10013\\/wp-content\\/uploads\\/2021\\/10\\/regulyNewsroom.jpg\\\" alt=\\\"\\\" title=\\\"\\\" loading=\\\"lazy\\\" class=\\\"skip-lazy\\\" data-skip-lazy=\\\"1\\\"><\\/picture><\\/div><\\/div><div class=\\\"n2-ss-slide-background\\\" data-public-id=\\\"6\\\" data-mode=\\\"fill\\\"><div class=\\\"n2-ss-slide-background-image\\\" data-blur=\\\"0\\\" data-alt=\\\"\\\" data-title=\\\"\\\"><picture><img src=\\\"\\/\\/localhost:10013\\/wp-content\\/uploads\\/2021\\/10\\/regulyNewsroom2-scaled.jpg\\\" alt=\\\"\\\" title=\\\"\\\" loading=\\\"lazy\\\" class=\\\"skip-lazy\\\" data-skip-lazy=\\\"1\\\"><\\/picture><\\/div><\\/div><\\/div>                    <div class=\\\"n2-ss-slider-4 n2-ow\\\">\\n                        <svg xmlns=\\\"http:\\/\\/www.w3.org\\/2000\\/svg\\\" viewBox=\\\"0 0 1200 600\\\" data-related-device=\\\"desktopPortrait\\\" class=\\\"n2-ow n2-ss-preserve-size n2-ss-preserve-size--slider n2-ss-slide-limiter\\\"><\\/svg><div data-first=\\\"1\\\" data-slide-duration=\\\"0\\\" data-id=\\\"3\\\" data-slide-public-id=\\\"1\\\" data-title=\\\"nw-wo-reguly-vietnam-0330\\\" class=\\\"n2-ss-slide n2-ow  n2-ss-slide-3\\\"><div role=\\\"note\\\" class=\\\"n2-ss-slide--focus\\\">nw-wo-reguly-vietnam-0330<\\/div><div class=\\\"n2-ss-layers-container n2-ss-slide-limiter n2-ow\\\"><div class=\\\"n2-ss-layer n2-ow n-uc-Y7OGrjjAnNbv\\\" data-sstype=\\\"slide\\\" data-pm=\\\"default\\\"><\\/div><\\/div><\\/div><div data-slide-duration=\\\"0\\\" data-id=\\\"4\\\" data-slide-public-id=\\\"2\\\" data-title=\\\"reguly05ob6\\\" class=\\\"n2-ss-slide n2-ow  n2-ss-slide-4\\\"><div role=\\\"note\\\" class=\\\"n2-ss-slide--focus\\\">reguly05ob6<\\/div><div class=\\\"n2-ss-layers-container n2-ss-slide-limiter n2-ow\\\"><div class=\\\"n2-ss-layer n2-ow n-uc-kDrWpbmH1JO9\\\" data-sstype=\\\"slide\\\" data-pm=\\\"default\\\"><\\/div><\\/div><\\/div><div data-slide-duration=\\\"0\\\" data-id=\\\"5\\\" data-slide-public-id=\\\"3\\\" data-title=\\\"reguly05ob7\\\" class=\\\"n2-ss-slide n2-ow  n2-ss-slide-5\\\"><div role=\\\"note\\\" class=\\\"n2-ss-slide--focus\\\">reguly05ob7<\\/div><div class=\\\"n2-ss-layers-container n2-ss-slide-limiter n2-ow\\\"><div class=\\\"n2-ss-layer n2-ow n-uc-qKx8GeUNFauQ\\\" data-sstype=\\\"slide\\\" data-pm=\\\"default\\\"><\\/div><\\/div><\\/div><div data-slide-duration=\\\"0\\\" data-id=\\\"6\\\" data-slide-public-id=\\\"4\\\" data-title=\\\"reguly05ob1\\\" class=\\\"n2-ss-slide n2-ow  n2-ss-slide-6\\\"><div role=\\\"note\\\" class=\\\"n2-ss-slide--focus\\\">reguly05ob1<\\/div><div class=\\\"n2-ss-layers-container n2-ss-slide-limiter n2-ow\\\"><div class=\\\"n2-ss-layer n2-ow n-uc-9jWogT6McGF0\\\" data-sstype=\\\"slide\\\" data-pm=\\\"default\\\"><\\/div><\\/div><\\/div><div data-slide-duration=\\\"0\\\" data-id=\\\"7\\\" data-slide-public-id=\\\"5\\\" data-title=\\\"nw-wo-reguly-vietnam-0330\\\" class=\\\"n2-ss-slide n2-ow  n2-ss-slide-7\\\"><div role=\\\"note\\\" class=\\\"n2-ss-slide--focus\\\">nw-wo-reguly-vietnam-0330<\\/div><div class=\\\"n2-ss-layers-container n2-ss-slide-limiter n2-ow\\\"><div class=\\\"n2-ss-layer n2-ow n-uc-ML6M5FWJrrq6\\\" data-sstype=\\\"slide\\\" data-pm=\\\"default\\\"><\\/div><\\/div><\\/div><div data-slide-duration=\\\"0\\\" data-id=\\\"8\\\" data-slide-public-id=\\\"6\\\" data-title=\\\"reguly05ob2\\\" class=\\\"n2-ss-slide n2-ow  n2-ss-slide-8\\\"><div role=\\\"note\\\" class=\\\"n2-ss-slide--focus\\\">reguly05ob2<\\/div><div class=\\\"n2-ss-layers-container n2-ss-slide-limiter n2-ow\\\"><div class=\\\"n2-ss-layer n2-ow n-uc-aB07gsBMXXZ7\\\" data-sstype=\\\"slide\\\" data-pm=\\\"default\\\"><\\/div><\\/div><\\/div>                    <\\/div>\\n\\n                                    <\\/div>\\n            <\\/div>\\n        <\\/div>\\n        <div class=\\\"n2-ss-slider-controls n2-ss-slider-controls-absolute-left-center\\\"><div style=\\\"--widget-offset:15px;\\\" class=\\\"n2-ss-widget nextend-arrow n2-ow-all nextend-arrow-previous  nextend-arrow-animated-fade\\\" data-hide-mobileportrait=\\\"1\\\" id=\\\"n2-ss-2-arrow-previous\\\" role=\\\"button\\\" aria-label=\\\"previous arrow\\\" tabindex=\\\"0\\\"><img width=\\\"32\\\" height=\\\"32\\\" class=\\\"skip-lazy\\\" data-skip-lazy=\\\"1\\\" src=\\\"data:image\\/svg+xml;base64,PHN2ZyB3aWR0aD0iMzIiIGhlaWdodD0iMzIiIHZpZXdCb3g9IjAgMCAzMiAzMiIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxwYXRoIGQ9Ik0xMS40MzMgMTUuOTkyTDIyLjY5IDUuNzEyYy4zOTMtLjM5LjM5My0xLjAzIDAtMS40Mi0uMzkzLS4zOS0xLjAzLS4zOS0xLjQyMyAwbC0xMS45OCAxMC45NGMtLjIxLjIxLS4zLjQ5LS4yODUuNzYtLjAxNS4yOC4wNzUuNTYuMjg0Ljc3bDExLjk4IDEwLjk0Yy4zOTMuMzkgMS4wMy4zOSAxLjQyNCAwIC4zOTMtLjQuMzkzLTEuMDMgMC0xLjQybC0xMS4yNTctMTAuMjkiCiAgICAgICAgICBmaWxsPSIjZmZmZmZmIiBvcGFjaXR5PSIwLjgiIGZpbGwtcnVsZT0iZXZlbm9kZCIvPgo8L3N2Zz4=\\\" alt=\\\"previous arrow\\\"><\\/div><\\/div><div class=\\\"n2-ss-slider-controls n2-ss-slider-controls-absolute-right-center\\\"><div style=\\\"--widget-offset:15px;\\\" class=\\\"n2-ss-widget nextend-arrow n2-ow-all nextend-arrow-next  nextend-arrow-animated-fade\\\" data-hide-mobileportrait=\\\"1\\\" id=\\\"n2-ss-2-arrow-next\\\" role=\\\"button\\\" aria-label=\\\"next arrow\\\" tabindex=\\\"0\\\"><img width=\\\"32\\\" height=\\\"32\\\" class=\\\"skip-lazy\\\" data-skip-lazy=\\\"1\\\" src=\\\"data:image\\/svg+xml;base64,PHN2ZyB3aWR0aD0iMzIiIGhlaWdodD0iMzIiIHZpZXdCb3g9IjAgMCAzMiAzMiIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxwYXRoIGQ9Ik0xMC43MjIgNC4yOTNjLS4zOTQtLjM5LTEuMDMyLS4zOS0xLjQyNyAwLS4zOTMuMzktLjM5MyAxLjAzIDAgMS40MmwxMS4yODMgMTAuMjgtMTEuMjgzIDEwLjI5Yy0uMzkzLjM5LS4zOTMgMS4wMiAwIDEuNDIuMzk1LjM5IDEuMDMzLjM5IDEuNDI3IDBsMTIuMDA3LTEwLjk0Yy4yMS0uMjEuMy0uNDkuMjg0LS43Ny4wMTQtLjI3LS4wNzYtLjU1LS4yODYtLjc2TDEwLjcyIDQuMjkzeiIKICAgICAgICAgIGZpbGw9IiNmZmZmZmYiIG9wYWNpdHk9IjAuOCIgZmlsbC1ydWxlPSJldmVub2RkIi8+Cjwvc3ZnPg==\\\" alt=\\\"next arrow\\\"><\\/div><\\/div><\\/div><\\/div><ss3-loader><\\/ss3-loader><\\/div><\\/div><div class=\\\"n2_clear\\\"><\\/div><\\/div>\",\"assets\":{\"css\":{\"staticGroupPreload\":{\"smartslider\":\"\\/Users\\/jimross\\/Local Sites\\/eric-reguly\\/app\\/public\\/wp-content\\/plugins\\/smart-slider-3\\/Public\\/SmartSlider3\\/Application\\/Frontend\\/Assets\\/dist\\/smartslider.min.css\"},\"staticGroup\":[],\"files\":[],\"urls\":[],\"codes\":[],\"firstCodes\":[],\"inline\":{\"n2-ss-2\":\"div#n2-ss-2 .n2-ss-slider-1{display:grid;position:relative;}div#n2-ss-2 .n2-ss-slider-2{display:grid;position:relative;overflow:hidden;padding:0px 0px 0px 0px;border:0px solid RGBA(62,62,62,1);border-radius:0px;background-clip:padding-box;background-repeat:repeat;background-position:50% 50%;background-size:cover;background-attachment:scroll;z-index:1;}div#n2-ss-2:not(.n2-ss-loaded) .n2-ss-slider-2{background-image:none !important;}div#n2-ss-2 .n2-ss-slider-3{display:grid;grid-template-areas:\'cover\';position:relative;overflow:hidden;z-index:10;}div#n2-ss-2 .n2-ss-slider-3 > *{grid-area:cover;}div#n2-ss-2 .n2-ss-slide-backgrounds,div#n2-ss-2 .n2-ss-slider-3 > .n2-ss-divider{position:relative;}div#n2-ss-2 .n2-ss-slide-backgrounds{z-index:10;}div#n2-ss-2 .n2-ss-slide-backgrounds > *{overflow:hidden;}div#n2-ss-2 .n2-ss-slide-background{transform:translateX(-100000px);}div#n2-ss-2 .n2-ss-slider-4{place-self:center;position:relative;width:100%;height:100%;z-index:20;display:grid;grid-template-areas:\'slide\';}div#n2-ss-2 .n2-ss-slider-4 > *{grid-area:slide;}div#n2-ss-2.n2-ss-full-page--constrain-ratio .n2-ss-slider-4{height:auto;}div#n2-ss-2 .n2-ss-slide{display:grid;place-items:center;grid-auto-columns:100%;position:relative;z-index:20;-webkit-backface-visibility:hidden;transform:translateX(-100000px);}div#n2-ss-2 .n2-ss-slide{perspective:1500px;}div#n2-ss-2 .n2-ss-slide-active{z-index:21;}.n2-ss-background-animation{position:absolute;top:0;left:0;width:100%;height:100%;z-index:3;}div#n2-ss-2 .nextend-arrow{cursor:pointer;overflow:hidden;line-height:0 !important;z-index:18;}div#n2-ss-2 .nextend-arrow img{position:relative;display:block;}div#n2-ss-2 .nextend-arrow img.n2-arrow-hover-img{display:none;}div#n2-ss-2 .nextend-arrow:HOVER img.n2-arrow-hover-img{display:inline;}div#n2-ss-2 .nextend-arrow:HOVER img.n2-arrow-normal-img{display:none;}div#n2-ss-2 .nextend-arrow-animated{overflow:hidden;}div#n2-ss-2 .nextend-arrow-animated > div{position:relative;}div#n2-ss-2 .nextend-arrow-animated .n2-active{position:absolute;}div#n2-ss-2 .nextend-arrow-animated-fade{transition:background 0.3s, opacity 0.4s;}div#n2-ss-2 .nextend-arrow-animated-horizontal > div{transition:all 0.4s;transform:none;}div#n2-ss-2 .nextend-arrow-animated-horizontal .n2-active{top:0;}div#n2-ss-2 .nextend-arrow-previous.nextend-arrow-animated-horizontal .n2-active{left:100%;}div#n2-ss-2 .nextend-arrow-next.nextend-arrow-animated-horizontal .n2-active{right:100%;}div#n2-ss-2 .nextend-arrow-previous.nextend-arrow-animated-horizontal:HOVER > div,div#n2-ss-2 .nextend-arrow-previous.nextend-arrow-animated-horizontal:FOCUS > div{transform:translateX(-100%);}div#n2-ss-2 .nextend-arrow-next.nextend-arrow-animated-horizontal:HOVER > div,div#n2-ss-2 .nextend-arrow-next.nextend-arrow-animated-horizontal:FOCUS > div{transform:translateX(100%);}div#n2-ss-2 .nextend-arrow-animated-vertical > div{transition:all 0.4s;transform:none;}div#n2-ss-2 .nextend-arrow-animated-vertical .n2-active{left:0;}div#n2-ss-2 .nextend-arrow-previous.nextend-arrow-animated-vertical .n2-active{top:100%;}div#n2-ss-2 .nextend-arrow-next.nextend-arrow-animated-vertical .n2-active{bottom:100%;}div#n2-ss-2 .nextend-arrow-previous.nextend-arrow-animated-vertical:HOVER > div,div#n2-ss-2 .nextend-arrow-previous.nextend-arrow-animated-vertical:FOCUS > div{transform:translateY(-100%);}div#n2-ss-2 .nextend-arrow-next.nextend-arrow-animated-vertical:HOVER > div,div#n2-ss-2 .nextend-arrow-next.nextend-arrow-animated-vertical:FOCUS > div{transform:translateY(100%);}div#n2-ss-2 .n2-ss-slide-limiter{max-width:1200px;}div#n2-ss-2 .nextend-arrow img{width: 32px}@media (min-width: 1200px){div#n2-ss-2 [data-hide-desktopportrait=\\\"1\\\"]{display: none !important;}}@media (orientation: landscape) and (max-width: 1199px) and (min-width: 901px),(orientation: portrait) and (max-width: 1199px) and (min-width: 701px){div#n2-ss-2 [data-hide-tabletportrait=\\\"1\\\"]{display: none !important;}}@media (orientation: landscape) and (max-width: 900px),(orientation: portrait) and (max-width: 700px){div#n2-ss-2 [data-hide-mobileportrait=\\\"1\\\"]{display: none !important;}div#n2-ss-2 .nextend-arrow img{width: 16px}}\"},\"globalInline\":[]},\"less\":{\"staticGroupPreload\":[],\"staticGroup\":[],\"files\":[],\"urls\":[],\"codes\":[],\"firstCodes\":[],\"inline\":[],\"globalInline\":[]},\"js\":{\"staticGroupPreload\":[],\"staticGroup\":{\"smartslider-frontend\":\"\\/Users\\/jimross\\/Local Sites\\/eric-reguly\\/app\\/public\\/wp-content\\/plugins\\/smart-slider-3\\/Public\\/SmartSlider3\\/Application\\/Frontend\\/Assets\\/dist\\/smartslider-frontend.min.js\",\"ss-simple\":\"\\/Users\\/jimross\\/Local Sites\\/eric-reguly\\/app\\/public\\/wp-content\\/plugins\\/smart-slider-3\\/Public\\/SmartSlider3\\/Slider\\/SliderType\\/Simple\\/Assets\\/dist\\/ss-simple.min.js\",\"w-arrow-image\":\"\\/Users\\/jimross\\/Local Sites\\/eric-reguly\\/app\\/public\\/wp-content\\/plugins\\/smart-slider-3\\/Public\\/SmartSlider3\\/Widget\\/Arrow\\/ArrowImage\\/Assets\\/dist\\/w-arrow-image.min.js\"},\"files\":[],\"urls\":[],\"codes\":[],\"firstCodes\":[],\"inline\":[\"_N2.r([\\\"documentReady\\\",\\\"smartslider-frontend\\\",\\\"SmartSliderWidgetArrowImage\\\",\\\"ss-simple\\\"],function(){new _N2.SmartSliderSimple(\'n2-ss-2\', {\\\"admin\\\":false,\\\"callbacks\\\":\\\"\\\",\\\"background.video.mobile\\\":1,\\\"alias\\\":{\\\"id\\\":0,\\\"smoothScroll\\\":0,\\\"slideSwitch\\\":0,\\\"scroll\\\":1},\\\"align\\\":\\\"normal\\\",\\\"isDelayed\\\":0,\\\"responsive\\\":{\\\"mediaQueries\\\":{\\\"all\\\":false,\\\"desktopportrait\\\":[\\\"(min-width: 1200px)\\\"],\\\"tabletportrait\\\":[\\\"(orientation: landscape) and (max-width: 1199px) and (min-width: 901px)\\\",\\\"(orientation: portrait) and (max-width: 1199px) and (min-width: 701px)\\\"],\\\"mobileportrait\\\":[\\\"(orientation: landscape) and (max-width: 900px)\\\",\\\"(orientation: portrait) and (max-width: 700px)\\\"]},\\\"base\\\":{\\\"slideOuterWidth\\\":1200,\\\"slideOuterHeight\\\":600,\\\"sliderWidth\\\":1200,\\\"sliderHeight\\\":600,\\\"slideWidth\\\":1200,\\\"slideHeight\\\":600},\\\"hideOn\\\":{\\\"desktopLandscape\\\":false,\\\"desktopPortrait\\\":false,\\\"tabletLandscape\\\":false,\\\"tabletPortrait\\\":false,\\\"mobileLandscape\\\":false,\\\"mobilePortrait\\\":false},\\\"onResizeEnabled\\\":true,\\\"type\\\":\\\"auto\\\",\\\"sliderHeightBasedOn\\\":\\\"real\\\",\\\"focusUser\\\":1,\\\"focusEdge\\\":\\\"auto\\\",\\\"breakpoints\\\":[{\\\"device\\\":\\\"tabletPortrait\\\",\\\"type\\\":\\\"max-screen-width\\\",\\\"portraitWidth\\\":1199,\\\"landscapeWidth\\\":1199},{\\\"device\\\":\\\"mobilePortrait\\\",\\\"type\\\":\\\"max-screen-width\\\",\\\"portraitWidth\\\":700,\\\"landscapeWidth\\\":900}],\\\"enabledDevices\\\":{\\\"desktopLandscape\\\":0,\\\"desktopPortrait\\\":1,\\\"tabletLandscape\\\":0,\\\"tabletPortrait\\\":1,\\\"mobileLandscape\\\":0,\\\"mobilePortrait\\\":1},\\\"sizes\\\":{\\\"desktopPortrait\\\":{\\\"width\\\":1200,\\\"height\\\":600,\\\"max\\\":3000,\\\"min\\\":1200},\\\"tabletPortrait\\\":{\\\"width\\\":701,\\\"height\\\":350,\\\"customHeight\\\":false,\\\"max\\\":1199,\\\"min\\\":701},\\\"mobilePortrait\\\":{\\\"width\\\":320,\\\"height\\\":160,\\\"customHeight\\\":false,\\\"max\\\":900,\\\"min\\\":320}},\\\"overflowHiddenPage\\\":0,\\\"focus\\\":{\\\"offsetTop\\\":\\\"#wpadminbar\\\",\\\"offsetBottom\\\":\\\"\\\"}},\\\"controls\\\":{\\\"mousewheel\\\":0,\\\"touch\\\":\\\"horizontal\\\",\\\"keyboard\\\":1,\\\"blockCarouselInteraction\\\":1},\\\"playWhenVisible\\\":1,\\\"playWhenVisibleAt\\\":0.5,\\\"lazyLoad\\\":0,\\\"lazyLoadNeighbor\\\":0,\\\"blockrightclick\\\":0,\\\"maintainSession\\\":0,\\\"autoplay\\\":{\\\"enabled\\\":0,\\\"start\\\":1,\\\"duration\\\":8000,\\\"autoplayLoop\\\":1,\\\"allowReStart\\\":0,\\\"pause\\\":{\\\"click\\\":1,\\\"mouse\\\":\\\"enter\\\",\\\"mediaStarted\\\":1},\\\"resume\\\":{\\\"click\\\":0,\\\"mouse\\\":0,\\\"mediaEnded\\\":1,\\\"slidechanged\\\":0},\\\"interval\\\":1,\\\"intervalModifier\\\":\\\"loop\\\",\\\"intervalSlide\\\":\\\"current\\\"},\\\"perspective\\\":1500,\\\"layerMode\\\":{\\\"playOnce\\\":0,\\\"playFirstLayer\\\":1,\\\"mode\\\":\\\"skippable\\\",\\\"inAnimation\\\":\\\"mainInEnd\\\"},\\\"bgAnimations\\\":0,\\\"mainanimation\\\":{\\\"type\\\":\\\"horizontal\\\",\\\"duration\\\":800,\\\"delay\\\":0,\\\"ease\\\":\\\"easeOutQuad\\\",\\\"shiftedBackgroundAnimation\\\":0},\\\"carousel\\\":1,\\\"initCallbacks\\\":function(){new _N2.SmartSliderWidgetArrowImage(this);}});});\"],\"globalInline\":[]},\"googleFonts\":{\"staticGroupPreload\":[],\"staticGroup\":[],\"files\":[],\"urls\":[],\"codes\":[],\"firstCodes\":[],\"inline\":[],\"globalInline\":[]},\"image\":{\"images\":[\"\\/\\/localhost:10013\\/wp-content\\/uploads\\/2021\\/10\\/BobAdaMarriage.jpg\",\"\\/\\/localhost:10013\\/wp-content\\/uploads\\/2021\\/10\\/BobRegulySmokejumper-scaled.jpg\",\"\\/\\/localhost:10013\\/wp-content\\/uploads\\/2021\\/10\\/BobRegulySmokejumper2.jpg\",\"\\/\\/localhost:10013\\/wp-content\\/uploads\\/2021\\/10\\/BobRegulyTorontoStara-scaled.jpg\",\"\\/\\/localhost:10013\\/wp-content\\/uploads\\/2021\\/10\\/regulyNewsroom.jpg\",\"\\/\\/localhost:10013\\/wp-content\\/uploads\\/2021\\/10\\/regulyNewsroom2-scaled.jpg\"]}}}',0,1);
INSERT INTO `wp_nextend2_section_storage` VALUES (10012,'smartslider','free','dismissNewsletterDashboard','1',0,1);
INSERT INTO `wp_nextend2_section_storage` VALUES (10013,'smartslider','sliderChanged','2','1',0,1);
/*!40000 ALTER TABLE `wp_nextend2_section_storage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_nextend2_smartslider3_generators`
--

DROP TABLE IF EXISTS `wp_nextend2_smartslider3_generators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_nextend2_smartslider3_generators` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group` varchar(254) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `type` varchar(254) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_nextend2_smartslider3_generators`
--

LOCK TABLES `wp_nextend2_smartslider3_generators` WRITE;
/*!40000 ALTER TABLE `wp_nextend2_smartslider3_generators` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_nextend2_smartslider3_generators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_nextend2_smartslider3_sliders`
--

DROP TABLE IF EXISTS `wp_nextend2_smartslider3_sliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_nextend2_smartslider3_sliders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alias` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `type` varchar(30) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `params` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'published',
  `time` datetime NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `time` (`time`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_nextend2_smartslider3_sliders`
--

LOCK TABLES `wp_nextend2_smartslider3_sliders` WRITE;
/*!40000 ALTER TABLE `wp_nextend2_smartslider3_sliders` DISABLE KEYS */;
INSERT INTO `wp_nextend2_smartslider3_sliders` VALUES (1,NULL,'Tutorial Slider','simple','{\"aria-label\":\"Slider\",\"alias-id\":\"\",\"alias-smoothscroll\":\"\",\"alias-slideswitch\":\"\",\"background\":\"\",\"background-fixed\":\"0\",\"background-size\":\"cover\",\"background-color\":\"FFFFFF00\",\"backgroundVideoMp4\":\"\",\"backgroundVideoMuted\":\"1\",\"backgroundVideoLoop\":\"1\",\"backgroundVideoMode\":\"fill\",\"align\":\"normal\",\"margin\":\"0|*|0|*|0|*|0\",\"padding\":\"0|*|0|*|0|*|0\",\"perspective\":\"1000\",\"border-width\":\"0\",\"border-color\":\"3E3E3Eff\",\"border-radius\":\"0\",\"slider-preset\":\"\",\"slider-css\":\"\",\"width\":\"1200\",\"height\":\"600\",\"mobileportrait\":\"1\",\"mobilelandscape\":\"1\",\"tabletportrait\":\"1\",\"tabletlandscape\":\"1\",\"desktopportrait\":\"1\",\"desktoplandscape\":\"1\",\"responsiveLimitSlideWidth\":\"1\",\"responsiveSlideWidthDesktopLandscape\":\"0\",\"responsiveSlideWidthMaxDesktopLandscape\":\"1600\",\"responsiveSlideWidth\":\"0\",\"responsiveSlideWidthMax\":\"3000\",\"responsiveSlideWidthTabletLandscape\":\"0\",\"responsiveSlideWidthMaxTabletLandscape\":\"1200\",\"responsiveSlideWidthTablet\":\"0\",\"responsiveSlideWidthMaxTablet\":\"3000\",\"responsiveSlideWidthMobileLandscape\":\"0\",\"responsiveSlideWidthMaxMobileLandscape\":\"740\",\"responsiveSlideWidthMobile\":\"0\",\"responsiveSlideWidthMaxMobile\":\"480\",\"responsive-breakpoint-desktop-portrait\":\"1440\",\"responsive-breakpoint-desktop-portrait-landscape\":\"1440\",\"responsive-breakpoint-tablet-landscape\":\"1300\",\"responsive-breakpoint-tablet-landscape-landscape\":\"1300\",\"responsive-breakpoint-tablet-portrait\":\"1199\",\"responsive-breakpoint-tablet-portrait-landscape\":\"1199\",\"responsive-breakpoint-mobile-landscape\":\"900\",\"responsive-breakpoint-mobile-landscape-landscape\":\"1050\",\"responsive-breakpoint-mobile-portrait\":\"700\",\"responsive-breakpoint-mobile-portrait-landscape\":\"900\",\"responsive-breakpoint-desktop-landscape-enabled\":\"0\",\"responsive-breakpoint-tablet-landscape-enabled\":\"0\",\"responsive-breakpoint-tablet-portrait-enabled\":\"1\",\"responsive-breakpoint-mobile-landscape-enabled\":\"0\",\"responsive-breakpoint-mobile-portrait-enabled\":\"1\",\"responsive-breakpoint-global\":\"0\",\"breakpoints-orientation\":\"portrait\",\"responsive-mode\":\"fullwidth\",\"responsiveSliderHeightMin\":\"0\",\"responsiveForceFull\":\"1\",\"responsiveForceFullOverflowX\":\"body\",\"responsiveForceFullHorizontalSelector\":\"body\",\"slider-size-override\":\"0\",\"slider-size-override-mobile-portrait\":\"0\",\"mobile-portrait-width\":\"320\",\"mobile-portrait-height\":\"568\",\"slider-size-override-mobile-landscape\":\"0\",\"mobile-landscape-width\":\"568\",\"mobile-landscape-height\":\"320\",\"slider-size-override-tablet-portrait\":\"0\",\"tablet-portrait-width\":\"768\",\"tablet-portrait-height\":\"1024\",\"slider-size-override-tablet-landscape\":\"0\",\"tablet-landscape-width\":\"1024\",\"tablet-landscape-height\":\"768\",\"slider-size-override-desktop-landscape\":\"0\",\"desktop-landscape-width\":\"1440\",\"desktop-landscape-height\":\"900\",\"controlsTouch\":\"horizontal\",\"controlsScroll\":\"0\",\"controlsKeyboard\":\"1\",\"widget-arrow-enabled\":\"0\",\"widgetarrow\":\"imageEmpty\",\"widget-arrow-previous\":\"thin-horizontal.svg\",\"widget-arrow-previous-image\":\"\",\"widget-arrow-previous-color\":\"ffffffcc\",\"widget-arrow-previous-hover\":\"1\",\"widget-arrow-previous-hover-color\":\"ffffffff\",\"widget-arrow-mirror\":\"1\",\"widget-arrow-next\":\"thin-horizontal.svg\",\"widget-arrow-next-image\":\"\",\"widget-arrow-next-color\":\"ffffffcc\",\"widget-arrow-next-hover\":\"0\",\"widget-arrow-next-hover-color\":\"ffffffcc\",\"widget-arrow-style\":\"\",\"widget-arrow-previous-position-mode\":\"simple\",\"widget-arrow-previous-position-area\":\"6\",\"widget-arrow-previous-position-stack\":\"1\",\"widget-arrow-previous-position-offset\":\"15\",\"widget-arrow-previous-position-horizontal\":\"left\",\"widget-arrow-previous-position-horizontal-position\":\"0\",\"widget-arrow-previous-position-horizontal-unit\":\"px\",\"widget-arrow-previous-position-vertical\":\"top\",\"widget-arrow-previous-position-vertical-position\":\"0\",\"widget-arrow-previous-position-vertical-unit\":\"px\",\"widget-arrow-next-position-mode\":\"simple\",\"widget-arrow-next-position-area\":\"7\",\"widget-arrow-next-position-stack\":\"1\",\"widget-arrow-next-position-offset\":\"15\",\"widget-arrow-next-position-horizontal\":\"left\",\"widget-arrow-next-position-horizontal-position\":\"0\",\"widget-arrow-next-position-horizontal-unit\":\"px\",\"widget-arrow-next-position-vertical\":\"top\",\"widget-arrow-next-position-vertical-position\":\"0\",\"widget-arrow-next-position-vertical-unit\":\"px\",\"widget-arrow-animation\":\"fade\",\"widget-arrow-previous-alt\":\"previous arrow\",\"widget-arrow-next-alt\":\"next arrow\",\"widget-arrow-base64\":\"1\",\"widget-arrow-display-hover\":\"0\",\"widget-arrow-display-mobileportrait\":\"0\",\"widget-arrow-display-mobilelandscape\":\"0\",\"widget-arrow-display-tabletportrait\":\"1\",\"widget-arrow-display-tabletlandscape\":\"1\",\"widget-arrow-display-desktopportrait\":\"1\",\"widget-arrow-display-desktoplandscape\":\"1\",\"widget-arrow-exclude-slides\":\"\",\"widget-bullet-enabled\":\"1\",\"widgetbullet\":\"transition\",\"widget-bullet-position-mode\":\"simple\",\"widget-bullet-position-area\":\"10\",\"widget-bullet-position-stack\":\"1\",\"widget-bullet-position-offset\":\"5\",\"widget-bullet-position-horizontal\":\"left\",\"widget-bullet-position-horizontal-position\":\"0\",\"widget-bullet-position-horizontal-unit\":\"px\",\"widget-bullet-position-vertical\":\"top\",\"widget-bullet-position-vertical-position\":\"0\",\"widget-bullet-position-vertical-unit\":\"px\",\"widget-bullet-action\":\"click\",\"widget-bullet-style\":\"{\\\"data\\\":[{\\\"backgroundcolor\\\":\\\"00000000\\\",\\\"opacity\\\":100,\\\"padding\\\":\\\"5|*|5|*|5|*|5|*|px\\\",\\\"boxshadow\\\":\\\"0|*|0|*|0|*|0|*|000000ff\\\",\\\"border\\\":\\\"2|*|solid|*|ffffffcc\\\",\\\"borderradius\\\":\\\"50\\\",\\\"extra\\\":\\\"margin: 4px;\\\"},{\\\"extra\\\":\\\"\\\",\\\"backgroundcolor\\\":\\\"ffffffcc\\\",\\\"border\\\":\\\"2|*|solid|*|ffffffcc\\\"}]}\",\"widget-bullet-bar\":\"\",\"widget-bullet-bar-full-size\":\"0\",\"widget-bullet-align\":\"center\",\"widget-bullet-orientation\":\"auto\",\"widget-bullet-thumbnail-show-image\":\"0\",\"widget-bullet-thumbnail-width\":\"60\",\"widget-bullet-thumbnail-height\":\"60\",\"widget-bullet-thumbnail-style\":\"{\\\"data\\\":[{\\\"backgroundcolor\\\":\\\"00000080\\\",\\\"padding\\\":\\\"3|*|3|*|3|*|3|*|px\\\",\\\"boxshadow\\\":\\\"0|*|0|*|0|*|0|*|000000ff\\\",\\\"border\\\":\\\"0|*|solid|*|000000ff\\\",\\\"borderradius\\\":\\\"3\\\",\\\"extra\\\":\\\"margin: 5px;\\\"}]}\",\"widget-bullet-thumbnail-side\":\"before\",\"widget-bullet-display-hover\":\"0\",\"widget-bullet-display-mobileportrait\":\"1\",\"widget-bullet-display-mobilelandscape\":\"1\",\"widget-bullet-display-tabletportrait\":\"1\",\"widget-bullet-display-tabletlandscape\":\"1\",\"widget-bullet-display-desktopportrait\":\"1\",\"widget-bullet-display-desktoplandscape\":\"1\",\"widget-bullet-exclude-slides\":\"\",\"widget-bar-enabled\":\"0\",\"widgetbar\":\"horizontal\",\"widget-bar-position-mode\":\"simple\",\"widget-bar-position-area\":\"10\",\"widget-bar-position-stack\":\"1\",\"widget-bar-position-offset\":\"30\",\"widget-bar-position-horizontal\":\"left\",\"widget-bar-position-horizontal-position\":\"0\",\"widget-bar-position-horizontal-unit\":\"px\",\"widget-bar-position-vertical\":\"top\",\"widget-bar-position-vertical-position\":\"0\",\"widget-bar-position-vertical-unit\":\"px\",\"widget-bar-animate\":\"0\",\"widget-bar-style\":\"{\\\"data\\\":[{\\\"backgroundcolor\\\":\\\"000000ab\\\",\\\"padding\\\":\\\"5|*|20|*|5|*|20|*|px\\\",\\\"boxshadow\\\":\\\"0|*|0|*|0|*|0|*|000000ff\\\",\\\"border\\\":\\\"0|*|solid|*|000000ff\\\",\\\"borderradius\\\":\\\"40\\\",\\\"extra\\\":\\\"\\\"}]}\",\"widget-bar-show-title\":\"1\",\"widget-bar-font-title\":\"{\\\"data\\\":[{\\\"color\\\":\\\"ffffffff\\\",\\\"size\\\":\\\"14||px\\\",\\\"tshadow\\\":\\\"0|*|0|*|0|*|000000c7\\\",\\\"afont\\\":\\\"Montserrat\\\",\\\"lineheight\\\":\\\"1.3\\\",\\\"bold\\\":0,\\\"italic\\\":0,\\\"underline\\\":0,\\\"align\\\":\\\"left\\\",\\\"extra\\\":\\\"vertical-align: middle;\\\"},{\\\"color\\\":\\\"fc2828ff\\\",\\\"afont\\\":\\\"google(@import url(http://fonts.googleapis.com/css?family=Raleway);),Arial\\\",\\\"size\\\":\\\"25||px\\\"},{}]}\",\"widget-bar-show-description\":\"1\",\"widget-bar-font-description\":\"{\\\"data\\\":[{\\\"color\\\":\\\"ffffffff\\\",\\\"size\\\":\\\"14||px\\\",\\\"tshadow\\\":\\\"0|*|0|*|0|*|000000c7\\\",\\\"afont\\\":\\\"Montserrat\\\",\\\"lineheight\\\":\\\"1.3\\\",\\\"bold\\\":0,\\\"italic\\\":1,\\\"underline\\\":0,\\\"align\\\":\\\"left\\\",\\\"extra\\\":\\\"vertical-align: middle;\\\"},{\\\"color\\\":\\\"fc2828ff\\\",\\\"afont\\\":\\\"Raleway,Arial\\\",\\\"size\\\":\\\"25||px\\\"},{}]}\",\"widget-bar-slide-count\":\"0\",\"widget-bar-width\":\"100%\",\"widget-bar-full-width\":\"0\",\"widget-bar-separator\":\" - \",\"widget-bar-align\":\"center\",\"widget-bar-display-hover\":\"0\",\"widget-bar-display-mobileportrait\":\"1\",\"widget-bar-display-mobilelandscape\":\"1\",\"widget-bar-display-tabletportrait\":\"1\",\"widget-bar-display-tabletlandscape\":\"1\",\"widget-bar-display-desktopportrait\":\"1\",\"widget-bar-display-desktoplandscape\":\"1\",\"widget-bar-exclude-slides\":\"\",\"widget-thumbnail-enabled\":\"0\",\"widgetthumbnail\":\"default\",\"widget-thumbnail-show-image\":\"1\",\"widget-thumbnail-width\":\"100\",\"widget-thumbnail-height\":\"60\",\"widget-thumbnail-position-mode\":\"simple\",\"widget-thumbnail-position-area\":\"12\",\"widget-thumbnail-position-stack\":\"1\",\"widget-thumbnail-position-offset\":\"0\",\"widget-thumbnail-position-horizontal\":\"left\",\"widget-thumbnail-position-horizontal-position\":\"0\",\"widget-thumbnail-position-horizontal-unit\":\"px\",\"widget-thumbnail-position-vertical\":\"top\",\"widget-thumbnail-position-vertical-position\":\"0\",\"widget-thumbnail-position-vertical-unit\":\"px\",\"widget-thumbnail-action\":\"click\",\"widget-thumbnail-align-content\":\"start\",\"widget-thumbnail-style-bar\":\"{\\\"data\\\":[{\\\"backgroundcolor\\\":\\\"242424ff\\\",\\\"padding\\\":\\\"3|*|3|*|3|*|3|*|px\\\",\\\"boxshadow\\\":\\\"0|*|0|*|0|*|0|*|000000ff\\\",\\\"border\\\":\\\"0|*|solid|*|000000ff\\\",\\\"borderradius\\\":\\\"0\\\",\\\"extra\\\":\\\"\\\"}]}\",\"widget-thumbnail-style-slides\":\"{\\\"data\\\":[{\\\"backgroundcolor\\\":\\\"00000000\\\",\\\"padding\\\":\\\"0|*|0|*|0|*|0|*|px\\\",\\\"boxshadow\\\":\\\"0|*|0|*|0|*|0|*|000000ff\\\",\\\"border\\\":\\\"0|*|solid|*|ffffff00\\\",\\\"borderradius\\\":\\\"0\\\",\\\"opacity\\\":\\\"40\\\",\\\"extra\\\":\\\"margin: 3px;\\ntransition: all 0.4s;\\nbackground-size: cover;\\\"},{\\\"border\\\":\\\"0|*|solid|*|ffffffcc\\\",\\\"opacity\\\":\\\"100\\\",\\\"extra\\\":\\\"\\\"}]}\",\"widget-thumbnail-title-style\":\"{\\\"data\\\":[{\\\"backgroundcolor\\\":\\\"000000ab\\\",\\\"padding\\\":\\\"3|*|10|*|3|*|10|*|px\\\",\\\"boxshadow\\\":\\\"0|*|0|*|0|*|0|*|000000ff\\\",\\\"border\\\":\\\"0|*|solid|*|000000ff\\\",\\\"borderradius\\\":\\\"0\\\",\\\"extra\\\":\\\"bottom: 0;\\nleft: 0;\\\"}]}\",\"widget-thumbnail-title\":\"0\",\"widget-thumbnail-title-font\":\"{\\\"data\\\":[{\\\"color\\\":\\\"ffffffff\\\",\\\"size\\\":\\\"12||px\\\",\\\"tshadow\\\":\\\"0|*|0|*|0|*|000000ab\\\",\\\"afont\\\":\\\"Montserrat\\\",\\\"lineheight\\\":\\\"1.2\\\",\\\"bold\\\":0,\\\"italic\\\":0,\\\"underline\\\":0,\\\"align\\\":\\\"left\\\"},{\\\"color\\\":\\\"fc2828ff\\\",\\\"afont\\\":\\\"google(@import url(http://fonts.googleapis.com/css?family=Raleway);),Arial\\\",\\\"size\\\":\\\"25||px\\\"},{}]}\",\"widget-thumbnail-description\":\"0\",\"widget-thumbnail-description-font\":\"{\\\"data\\\":[{\\\"color\\\":\\\"ffffffff\\\",\\\"size\\\":\\\"12||px\\\",\\\"tshadow\\\":\\\"0|*|0|*|0|*|000000ab\\\",\\\"afont\\\":\\\"Montserrat\\\",\\\"lineheight\\\":\\\"1.3\\\",\\\"bold\\\":0,\\\"italic\\\":0,\\\"underline\\\":0,\\\"align\\\":\\\"left\\\"},{\\\"color\\\":\\\"fc2828ff\\\",\\\"afont\\\":\\\"google(@import url(http://fonts.googleapis.com/css?family=Raleway);),Arial\\\",\\\"size\\\":\\\"25||px\\\"},{}]}\",\"widget-thumbnail-caption-placement\":\"overlay\",\"widget-thumbnail-caption-size\":\"100\",\"widget-thumbnail-arrow\":\"1\",\"widget-thumbnail-arrow-width\":\"26\",\"widget-thumbnail-arrow-offset\":\"0\",\"widget-thumbnail-arrow-prev-alt\":\"previous arrow\",\"widget-thumbnail-arrow-next-alt\":\"next arrow\",\"widget-thumbnail-arrow-image\":\"\",\"widget-thumbnail-group\":\"1\",\"widget-thumbnail-invert-group-direction\":\"0\",\"widget-thumbnail-orientation\":\"auto\",\"widget-thumbnail-size\":\"100%\",\"widget-thumbnail-display-hover\":\"0\",\"widget-thumbnail-display-mobileportrait\":\"1\",\"widget-thumbnail-display-mobilelandscape\":\"1\",\"widget-thumbnail-display-tabletportrait\":\"1\",\"widget-thumbnail-display-tabletlandscape\":\"1\",\"widget-thumbnail-display-desktopportrait\":\"1\",\"widget-thumbnail-display-desktoplandscape\":\"1\",\"widget-thumbnail-exclude-slides\":\"\",\"widget-shadow-enabled\":\"0\",\"widgetshadow\":\"shadow\",\"widget-shadow-shadow\":\"dark.png\",\"widget-shadow-shadow-image\":\"\",\"widget-shadow-width\":\"100%\",\"widget-shadow-display-mobileportrait\":\"1\",\"widget-shadow-display-mobilelandscape\":\"1\",\"widget-shadow-display-tabletportrait\":\"1\",\"widget-shadow-display-tabletlandscape\":\"1\",\"widget-shadow-display-desktopportrait\":\"1\",\"widget-shadow-display-desktoplandscape\":\"1\",\"widget-shadow-exclude-slides\":\"\",\"widget-fullscreen-enabled\":\"0\",\"widgetfullscreen\":\"image\",\"widget-fullscreen-tonormal\":\"full1.svg\",\"widget-fullscreen-tonormal-image\":\"\",\"widget-fullscreen-tonormal-color\":\"ffffffcc\",\"widget-fullscreen-mirror\":\"1\",\"widget-fullscreen-tofull\":\"full1.svg\",\"widget-fullscreen-tofull-image\":\"\",\"widget-fullscreen-tofull-color\":\"ffffffcc\",\"widget-fullscreen-style\":\"{\\\"data\\\":[{\\\"backgroundcolor\\\":\\\"000000ab\\\",\\\"padding\\\":\\\"10|*|10|*|10|*|10|*|px\\\",\\\"boxshadow\\\":\\\"0|*|0|*|0|*|0|*|000000ff\\\",\\\"border\\\":\\\"0|*|solid|*|000000ff\\\",\\\"borderradius\\\":\\\"3\\\",\\\"extra\\\":\\\"\\\"},{\\\"backgroundcolor\\\":\\\"000000ab\\\"}]}\",\"widget-fullscreen-position-mode\":\"simple\",\"widget-fullscreen-position-area\":\"4\",\"widget-fullscreen-position-stack\":\"1\",\"widget-fullscreen-position-offset\":\"15\",\"widget-fullscreen-position-horizontal\":\"left\",\"widget-fullscreen-position-horizontal-position\":\"0\",\"widget-fullscreen-position-horizontal-unit\":\"px\",\"widget-fullscreen-position-vertical\":\"top\",\"widget-fullscreen-position-vertical-position\":\"0\",\"widget-fullscreen-position-vertical-unit\":\"px\",\"widget-fullscreen-responsive-desktop\":\"1\",\"widget-fullscreen-responsive-tablet\":\"0.7\",\"widget-fullscreen-responsive-mobile\":\"0.5\",\"widget-fullscreen-display-hover\":\"0\",\"widget-fullscreen-display-mobileportrait\":\"1\",\"widget-fullscreen-display-mobilelandscape\":\"1\",\"widget-fullscreen-display-tabletportrait\":\"1\",\"widget-fullscreen-display-tabletlandscape\":\"1\",\"widget-fullscreen-display-desktopportrait\":\"1\",\"widget-fullscreen-display-desktoplandscape\":\"1\",\"widget-fullscreen-exclude-slides\":\"\",\"widget-html-enabled\":\"0\",\"widgethtml\":\"html\",\"widget-html-position-mode\":\"simple\",\"widget-html-position-area\":\"2\",\"widget-html-position-stack\":\"1\",\"widget-html-position-offset\":\"0\",\"widget-html-position-horizontal\":\"left\",\"widget-html-position-horizontal-position\":\"0\",\"widget-html-position-horizontal-unit\":\"px\",\"widget-html-position-vertical\":\"top\",\"widget-html-position-vertical-position\":\"0\",\"widget-html-position-vertical-unit\":\"px\",\"widget-html-code\":\"\",\"widget-html-display-hover\":\"0\",\"widget-html-display-mobileportrait\":\"1\",\"widget-html-display-mobilelandscape\":\"1\",\"widget-html-display-tabletportrait\":\"1\",\"widget-html-display-tabletlandscape\":\"1\",\"widget-html-display-desktopportrait\":\"1\",\"widget-html-display-desktoplandscape\":\"1\",\"widget-html-exclude-slides\":\"\",\"animation\":\"fade\",\"animation-duration\":\"500\",\"animation-delay\":\"0\",\"animation-easing\":\"easeOutQuad\",\"carousel\":\"1\",\"background-animation\":\"\",\"background-animation-color\":\"333333ff\",\"background-animation-speed\":\"normal\",\"animation-shifted-background-animation\":\"auto\",\"kenburns-animation\":\"50|*|50|*|\",\"kenburns-animation-speed\":\"default\",\"kenburns-animation-strength\":\"default\",\"shape-divider\":\"\",\"particle\":\"\",\"playfirstlayer\":\"1\",\"playonce\":\"0\",\"layer-animation-play-in\":\"end\",\"layer-animation-play-mode\":\"skippable\",\"parallax-enabled\":\"1\",\"parallax-enabled-mobile\":\"0\",\"parallax-3d\":\"0\",\"parallax-animate\":\"1\",\"parallax-horizontal\":\"mouse\",\"parallax-vertical\":\"mouse\",\"parallax-mouse-origin\":\"slider\",\"parallax-scroll-move\":\"both\",\"autoplay\":\"0\",\"autoplayDuration\":\"8000\",\"autoplayStart\":\"1\",\"autoplayAllowReStart\":\"0\",\"autoplayLoop\":\"1\",\"autoplayfinish\":\"1|*|loop|*|current\",\"loop-single-slide\":\"0\",\"autoplayStopClick\":\"1\",\"autoplayStopMouse\":\"0\",\"autoplayStopMedia\":\"1\",\"autoplayResumeClick\":\"0\",\"autoplayResumeMouse\":\"0\",\"autoplayResumeMedia\":\"1\",\"widget-autoplay-enabled\":\"0\",\"widgetautoplay\":\"image\",\"widget-autoplay-play\":\"small-light.svg\",\"widget-autoplay-play-image\":\"\",\"widget-autoplay-play-color\":\"ffffffcc\",\"widget-autoplay-style\":\"{\\\"data\\\":[{\\\"backgroundcolor\\\":\\\"000000ab\\\",\\\"padding\\\":\\\"10|*|10|*|10|*|10|*|px\\\",\\\"boxshadow\\\":\\\"0|*|0|*|0|*|0|*|000000ff\\\",\\\"border\\\":\\\"0|*|solid|*|000000ff\\\",\\\"borderradius\\\":\\\"3\\\",\\\"extra\\\":\\\"\\\"},{\\\"backgroundcolor\\\":\\\"000000ab\\\"}]}\",\"widget-autoplay-mirror\":\"1\",\"widget-autoplay-pause\":\"small-light.svg\",\"widget-autoplay-pause-image\":\"\",\"widget-autoplay-pause-color\":\"ffffffcc\",\"widget-autoplay-responsive-desktop\":\"1\",\"widget-autoplay-responsive-tablet\":\"0.7\",\"widget-autoplay-responsive-mobile\":\"0.5\",\"widget-autoplay-position-mode\":\"simple\",\"widget-autoplay-position-area\":\"4\",\"widget-autoplay-position-stack\":\"1\",\"widget-autoplay-position-offset\":\"15\",\"widget-autoplay-position-horizontal\":\"left\",\"widget-autoplay-position-horizontal-position\":\"0\",\"widget-autoplay-position-horizontal-unit\":\"px\",\"widget-autoplay-position-vertical\":\"top\",\"widget-autoplay-position-vertical-position\":\"0\",\"widget-autoplay-position-vertical-unit\":\"px\",\"widget-autoplay-display-hover\":\"0\",\"widget-autoplay-display-mobileportrait\":\"1\",\"widget-autoplay-display-mobilelandscape\":\"1\",\"widget-autoplay-display-tabletportrait\":\"1\",\"widget-autoplay-display-tabletlandscape\":\"1\",\"widget-autoplay-display-desktopportrait\":\"1\",\"widget-autoplay-display-desktoplandscape\":\"1\",\"widget-autoplay-exclude-slides\":\"\",\"widget-indicator-enabled\":\"0\",\"widgetindicator\":\"pie\",\"widget-indicator-position-mode\":\"simple\",\"widget-indicator-position-area\":\"4\",\"widget-indicator-position-stack\":\"1\",\"widget-indicator-position-offset\":\"15\",\"widget-indicator-position-horizontal\":\"left\",\"widget-indicator-position-horizontal-position\":\"0\",\"widget-indicator-position-horizontal-unit\":\"px\",\"widget-indicator-position-vertical\":\"top\",\"widget-indicator-position-vertical-position\":\"0\",\"widget-indicator-position-vertical-unit\":\"px\",\"widget-indicator-size\":\"25\",\"widget-indicator-thickness\":\"30\",\"widget-indicator-track\":\"000000ab\",\"widget-indicator-bar\":\"ffffffff\",\"widget-indicator-style\":\"\",\"widget-indicator-display-hover\":\"0\",\"widget-indicator-display-mobileportrait\":\"1\",\"widget-indicator-display-mobilelandscape\":\"1\",\"widget-indicator-display-tabletportrait\":\"1\",\"widget-indicator-display-tabletlandscape\":\"1\",\"widget-indicator-display-desktopportrait\":\"1\",\"widget-indicator-display-desktoplandscape\":\"1\",\"widget-indicator-exclude-slides\":\"\",\"imageload\":\"0\",\"imageloadNeighborSlides\":\"0\",\"optimize-scale\":\"0\",\"optimize-quality\":\"70\",\"optimize-thumbnail-scale\":\"0\",\"optimize-thumbnail-quality\":\"70\",\"optimize-slide-width-normal\":\"1920\",\"optimizeThumbnailWidth\":\"100\",\"optimizeThumbnailHeight\":\"60\",\"layer-image-optimize\":\"0\",\"layer-image-width-tablet\":\"800\",\"layer-image-width-mobile\":\"425\",\"layer-image-base64\":\"0\",\"layer-image-base64-size\":\"50\",\"slides-background-video-mobile\":\"1\",\"playWhenVisible\":\"1\",\"playWhenVisibleAt\":\"50\",\"dependency\":\"\",\"delay\":\"0\",\"is-delayed\":\"0\",\"backgroundMode\":\"fill\",\"slide-css\":\"\",\"randomize\":\"0\",\"randomizeFirst\":\"0\",\"randomize-cache\":\"1\",\"variations\":\"5\",\"reverse-slides\":\"0\",\"maximumslidecount\":\"1000\",\"maintain-session\":\"0\",\"global-lightbox\":\"0\",\"global-lightbox-label\":\"0\",\"slide-background-parallax\":\"0\",\"slide-background-parallax-strength\":\"50\",\"bg-parallax-tablet\":\"0\",\"bg-parallax-mobile\":\"0\",\"blockrightclick\":\"0\",\"controlsBlockCarouselInteraction\":\"1\",\"clear-both\":\"1\",\"clear-both-after\":\"1\",\"overflow-hidden-page\":\"0\",\"responsiveFocusUser\":\"1\",\"responsiveFocusEdge\":\"auto\",\"classes\":\"\",\"custom-css-codes\":\"\",\"callbacks\":\"\",\"related-posts\":\"\"}','published','2020-02-25 13:53:41','https://smartslider3.com/wp-content/uploads/slider404/tutorialsliderthumbnail-1.png',0);
INSERT INTO `wp_nextend2_smartslider3_sliders` VALUES (2,NULL,'Bob Reguly Veitnam','simple','{\"thumbnail\":\"\",\"aria-label\":\"\",\"alias-id\":\"\",\"alias-smoothscroll\":\"\",\"alias-slideswitch\":\"\",\"alias-slideswitch-scroll\":\"1\",\"align\":\"normal\",\"margin\":\"0|*|0|*|0|*|0\",\"width\":\"400\",\"height\":\"300\",\"responsiveLimitSlideWidth\":\"1\",\"responsiveSlideWidth\":\"0\",\"responsiveSlideWidthMax\":\"3000\",\"responsiveSlideWidthTablet\":\"0\",\"responsiveSlideWidthMaxTablet\":\"3000\",\"responsiveSlideWidthMobile\":\"0\",\"responsiveSlideWidthMaxMobile\":\"480\",\"responsive-breakpoint-tablet-portrait\":\"1199\",\"responsive-breakpoint-tablet-portrait-landscape\":\"1199\",\"responsive-breakpoint-mobile-portrait\":\"700\",\"responsive-breakpoint-mobile-portrait-landscape\":\"900\",\"responsive-breakpoint-tablet-portrait-enabled\":\"1\",\"responsive-breakpoint-mobile-portrait-enabled\":\"1\",\"responsive-breakpoint-global\":\"0\",\"breakpoints-orientation\":\"landscape\",\"responsive-mode\":\"auto\",\"responsiveScaleDown\":\"1\",\"responsiveScaleUp\":\"1\",\"responsiveSliderHeightMin\":\"0\",\"controlsTouch\":\"horizontal\",\"controlsScroll\":\"0\",\"controlsKeyboard\":\"1\",\"widget-arrow-enabled\":\"1\",\"widgetarrow\":\"imageEmpty\",\"widget-arrow-previous\":\"thin-horizontal.svg\",\"widget-arrow-previous-color\":\"ffffffcc\",\"widget-arrow-previous-hover\":\"0\",\"widget-arrow-previous-hover-color\":\"ffffffcc\",\"widget-arrow-style\":\"\",\"widget-arrow-previous-position-area\":\"6\",\"widget-arrow-previous-position-stack\":\"1\",\"widget-arrow-previous-position-offset\":\"15\",\"widget-arrow-next-position-area\":\"7\",\"widget-arrow-next-position-stack\":\"1\",\"widget-arrow-next-position-offset\":\"15\",\"widget-arrow-previous-alt\":\"previous arrow\",\"widget-arrow-next-alt\":\"next arrow\",\"widget-arrow-base64\":\"1\",\"widget-arrow-display-hover\":\"0\",\"widget-arrow-display-mobileportrait\":\"0\",\"widget-arrow-display-tabletportrait\":\"1\",\"widget-arrow-display-desktopportrait\":\"1\",\"widget-bullet-enabled\":\"0\",\"widgetbullet\":\"transition\",\"widget-bullet-position-area\":\"10\",\"widget-bullet-position-stack\":\"1\",\"widget-bullet-position-offset\":\"10\",\"widget-bullet-style\":\"{\\\"data\\\":[{\\\"backgroundcolor\\\":\\\"000000ab\\\",\\\"padding\\\":\\\"5|*|5|*|5|*|5|*|px\\\",\\\"boxshadow\\\":\\\"0|*|0|*|0|*|0|*|000000ff\\\",\\\"border\\\":\\\"0|*|solid|*|000000ff\\\",\\\"borderradius\\\":\\\"50\\\",\\\"extra\\\":\\\"margin: 4px;\\\"},{\\\"backgroundcolor\\\":\\\"1D81F9FF\\\"}]}\",\"widget-bullet-bar\":\"\",\"widget-bullet-thumbnail-show-image\":\"0\",\"widget-bullet-thumbnail-width\":\"60\",\"widget-bullet-thumbnail-height\":\"60\",\"widget-bullet-thumbnail-style\":\"{\\\"data\\\":[{\\\"backgroundcolor\\\":\\\"00000080\\\",\\\"padding\\\":\\\"3|*|3|*|3|*|3|*|px\\\",\\\"boxshadow\\\":\\\"0|*|0|*|0|*|0|*|000000ff\\\",\\\"border\\\":\\\"0|*|solid|*|000000ff\\\",\\\"borderradius\\\":\\\"3\\\",\\\"extra\\\":\\\"margin: 5px;\\\"}]}\",\"widget-bullet-thumbnail-side\":\"before\",\"widget-bullet-display-hover\":\"0\",\"widget-bullet-display-mobileportrait\":\"1\",\"widget-bullet-display-tabletportrait\":\"1\",\"widget-bullet-display-desktopportrait\":\"1\",\"widget-bar-enabled\":\"0\",\"widgetbar\":\"horizontal\",\"widget-bar-position-area\":\"10\",\"widget-bar-position-stack\":\"1\",\"widget-bar-position-offset\":\"30\",\"widget-bar-animate\":\"0\",\"widget-bar-style\":\"{\\\"data\\\":[{\\\"backgroundcolor\\\":\\\"000000ab\\\",\\\"padding\\\":\\\"5|*|20|*|5|*|20|*|px\\\",\\\"boxshadow\\\":\\\"0|*|0|*|0|*|0|*|000000ff\\\",\\\"border\\\":\\\"0|*|solid|*|000000ff\\\",\\\"borderradius\\\":\\\"40\\\",\\\"extra\\\":\\\"\\\"}]}\",\"widget-bar-show-title\":\"1\",\"widget-bar-font-title\":\"{\\\"data\\\":[{\\\"color\\\":\\\"ffffffff\\\",\\\"size\\\":\\\"14||px\\\",\\\"tshadow\\\":\\\"0|*|0|*|0|*|000000c7\\\",\\\"afont\\\":\\\"Montserrat\\\",\\\"lineheight\\\":\\\"1.3\\\",\\\"bold\\\":0,\\\"italic\\\":0,\\\"underline\\\":0,\\\"align\\\":\\\"left\\\",\\\"extra\\\":\\\"vertical-align: middle;\\\"},{\\\"color\\\":\\\"fc2828ff\\\",\\\"afont\\\":\\\"Raleway,Arial\\\",\\\"size\\\":\\\"25||px\\\"},{}]}\",\"widget-bar-show-description\":\"1\",\"widget-bar-font-description\":\"{\\\"data\\\":[{\\\"color\\\":\\\"ffffffff\\\",\\\"size\\\":\\\"14||px\\\",\\\"tshadow\\\":\\\"0|*|0|*|0|*|000000c7\\\",\\\"afont\\\":\\\"Montserrat\\\",\\\"lineheight\\\":\\\"1.3\\\",\\\"bold\\\":0,\\\"italic\\\":1,\\\"underline\\\":0,\\\"align\\\":\\\"left\\\",\\\"extra\\\":\\\"vertical-align: middle;\\\"},{\\\"color\\\":\\\"fc2828ff\\\",\\\"afont\\\":\\\"Raleway,Arial\\\",\\\"size\\\":\\\"25||px\\\"},{}]}\",\"widget-bar-slide-count\":\"0\",\"widget-bar-full-width\":\"0\",\"widget-bar-separator\":\" - \",\"widget-bar-align\":\"center\",\"widget-bar-display-hover\":\"0\",\"widget-bar-display-mobileportrait\":\"1\",\"widget-bar-display-tabletportrait\":\"1\",\"widget-bar-display-desktopportrait\":\"1\",\"widget-thumbnail-enabled\":\"0\",\"widgetthumbnail\":\"default\",\"widget-thumbnail-width\":\"100\",\"widget-thumbnail-height\":\"60\",\"widget-thumbnail-tablet-width\":\"100\",\"widget-thumbnail-tablet-height\":\"60\",\"widget-thumbnail-mobile-width\":\"100\",\"widget-thumbnail-mobile-height\":\"60\",\"widget-thumbnail-position-area\":\"12\",\"widget-thumbnail-position-stack\":\"1\",\"widget-thumbnail-position-offset\":\"0\",\"widget-thumbnail-align-content\":\"start\",\"widget-thumbnail-style-bar\":\"{\\\"data\\\":[{\\\"backgroundcolor\\\":\\\"242424ff\\\",\\\"padding\\\":\\\"3|*|3|*|3|*|3|*|px\\\",\\\"boxshadow\\\":\\\"0|*|0|*|0|*|0|*|000000ff\\\",\\\"border\\\":\\\"0|*|solid|*|000000ff\\\",\\\"borderradius\\\":\\\"0\\\",\\\"extra\\\":\\\"\\\"}]}\",\"widget-thumbnail-style-slides\":\"{\\\"data\\\":[{\\\"backgroundcolor\\\":\\\"00000000\\\",\\\"padding\\\":\\\"0|*|0|*|0|*|0|*|px\\\",\\\"boxshadow\\\":\\\"0|*|0|*|0|*|0|*|000000ff\\\",\\\"border\\\":\\\"0|*|solid|*|ffffff00\\\",\\\"borderradius\\\":\\\"0\\\",\\\"opacity\\\":\\\"40\\\",\\\"extra\\\":\\\"margin: 3px;\\\\ntransition: all 0.4s;\\\"},{\\\"border\\\":\\\"0|*|solid|*|ffffffcc\\\",\\\"opacity\\\":\\\"100\\\",\\\"extra\\\":\\\"\\\"}]}\",\"widget-thumbnail-title-style\":\"{\\\"data\\\":[{\\\"backgroundcolor\\\":\\\"000000ab\\\",\\\"padding\\\":\\\"3|*|10|*|3|*|10|*|px\\\",\\\"boxshadow\\\":\\\"0|*|0|*|0|*|0|*|000000ff\\\",\\\"border\\\":\\\"0|*|solid|*|000000ff\\\",\\\"borderradius\\\":\\\"0\\\",\\\"extra\\\":\\\"bottom: 0;\\\\nleft: 0;\\\"}]}\",\"widget-thumbnail-title\":\"0\",\"widget-thumbnail-title-font\":\"{\\\"data\\\":[{\\\"color\\\":\\\"ffffffff\\\",\\\"size\\\":\\\"12||px\\\",\\\"tshadow\\\":\\\"0|*|0|*|0|*|000000ab\\\",\\\"afont\\\":\\\"Montserrat\\\",\\\"lineheight\\\":\\\"1.2\\\",\\\"bold\\\":0,\\\"italic\\\":0,\\\"underline\\\":0,\\\"align\\\":\\\"left\\\"},{\\\"color\\\":\\\"fc2828ff\\\",\\\"afont\\\":\\\"Raleway,Arial\\\",\\\"size\\\":\\\"25||px\\\"},{}]}\",\"widget-thumbnail-description\":\"0\",\"widget-thumbnail-description-font\":\"{\\\"data\\\":[{\\\"color\\\":\\\"ffffffff\\\",\\\"size\\\":\\\"12||px\\\",\\\"tshadow\\\":\\\"0|*|0|*|0|*|000000ab\\\",\\\"afont\\\":\\\"Montserrat\\\",\\\"lineheight\\\":\\\"1.3\\\",\\\"bold\\\":0,\\\"italic\\\":0,\\\"underline\\\":0,\\\"align\\\":\\\"left\\\"},{\\\"color\\\":\\\"fc2828ff\\\",\\\"afont\\\":\\\"Raleway,Arial\\\",\\\"size\\\":\\\"25||px\\\"},{}]}\",\"widget-thumbnail-caption-placement\":\"overlay\",\"widget-thumbnail-caption-size\":\"100\",\"widget-thumbnail-display-hover\":\"0\",\"widget-thumbnail-display-mobileportrait\":\"0\",\"widget-thumbnail-display-tabletportrait\":\"1\",\"widget-thumbnail-display-desktopportrait\":\"1\",\"widget-shadow-enabled\":\"0\",\"widgetshadow\":\"shadow\",\"widget-shadow-shadow\":\"dark.png\",\"widget-shadow-display-mobileportrait\":\"0\",\"widget-shadow-display-tabletportrait\":\"1\",\"widget-shadow-display-desktopportrait\":\"1\",\"animation\":\"horizontal\",\"animation-duration\":\"800\",\"background-animation\":\"\",\"background-animation-color\":\"333333ff\",\"background-animation-speed\":\"normal\",\"autoplay\":\"0\",\"autoplayDuration\":\"8000\",\"autoplayStopClick\":\"1\",\"autoplayStopMouse\":\"0\",\"autoplayStopMedia\":\"1\",\"autoplayResumeClick\":\"0\",\"autoplayResumeMouse\":\"0\",\"autoplayResumeMedia\":\"1\",\"widget-autoplay-enabled\":\"0\",\"widgetautoplay\":\"image\",\"widget-autoplay-play\":\"small-light.svg\",\"widget-autoplay-play-color\":\"ffffffcc\",\"widget-autoplay-style\":\"{\\\"data\\\":[{\\\"backgroundcolor\\\":\\\"000000ab\\\",\\\"padding\\\":\\\"10|*|10|*|10|*|10|*|px\\\",\\\"boxshadow\\\":\\\"0|*|0|*|0|*|0|*|000000ff\\\",\\\"border\\\":\\\"0|*|solid|*|000000ff\\\",\\\"borderradius\\\":\\\"3\\\",\\\"extra\\\":\\\"\\\"},{\\\"backgroundcolor\\\":\\\"000000ab\\\"}]}\",\"widget-autoplay-position-area\":\"4\",\"widget-autoplay-position-stack\":\"1\",\"widget-autoplay-position-offset\":\"15\",\"widget-autoplay-display-hover\":\"0\",\"widget-autoplay-display-mobileportrait\":\"1\",\"widget-autoplay-display-tabletportrait\":\"1\",\"widget-autoplay-display-desktopportrait\":\"1\",\"loading-type\":\"\",\"delay\":\"0\",\"playWhenVisible\":\"1\",\"playWhenVisibleAt\":\"50\",\"optimize-scale\":\"0\",\"optimize-quality\":\"70\",\"optimize-slide-width-normal\":\"1920\",\"optimize-thumbnail-scale\":\"0\",\"optimize-thumbnail-quality\":\"70\",\"optimizeThumbnailWidth\":\"100\",\"optimizeThumbnailHeight\":\"60\",\"backgroundMode\":\"fill\",\"controlsBlockCarouselInteraction\":\"1\",\"clear-both\":\"1\",\"clear-both-after\":\"1\",\"overflow-hidden-page\":\"0\",\"responsiveFocusUser\":\"1\",\"responsiveFocusEdge\":\"auto\",\"is-delayed\":\"0\",\"legacy-font-scale\":\"0\",\"classes\":\"\",\"custom-css-codes\":\"\",\"callbacks\":\"\",\"related-posts\":\"\",\"version\":\"3.5.0.11\"}','published','2021-10-01 13:02:26','',1);
/*!40000 ALTER TABLE `wp_nextend2_smartslider3_sliders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_nextend2_smartslider3_sliders_xref`
--

DROP TABLE IF EXISTS `wp_nextend2_smartslider3_sliders_xref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_nextend2_smartslider3_sliders_xref` (
  `group_id` int(11) NOT NULL,
  `slider_id` int(11) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`group_id`,`slider_id`),
  KEY `ordering` (`ordering`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_nextend2_smartslider3_sliders_xref`
--

LOCK TABLES `wp_nextend2_smartslider3_sliders_xref` WRITE;
/*!40000 ALTER TABLE `wp_nextend2_smartslider3_sliders_xref` DISABLE KEYS */;
INSERT INTO `wp_nextend2_smartslider3_sliders_xref` VALUES (0,2,0);
/*!40000 ALTER TABLE `wp_nextend2_smartslider3_sliders_xref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_nextend2_smartslider3_slides`
--

DROP TABLE IF EXISTS `wp_nextend2_smartslider3_slides`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_nextend2_smartslider3_slides` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `slider` int(11) NOT NULL,
  `publish_up` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `published` tinyint(1) NOT NULL,
  `first` int(11) NOT NULL,
  `slide` longtext COLLATE utf8mb4_unicode_520_ci,
  `description` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `ordering` int(11) NOT NULL,
  `generator_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`),
  KEY `publish_up` (`publish_up`),
  KEY `publish_down` (`publish_down`),
  KEY `generator_id` (`generator_id`),
  KEY `ordering` (`ordering`),
  KEY `slider` (`slider`),
  KEY `thumbnail` (`thumbnail`(100))
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_nextend2_smartslider3_slides`
--

LOCK TABLES `wp_nextend2_smartslider3_slides` WRITE;
/*!40000 ALTER TABLE `wp_nextend2_smartslider3_slides` DISABLE KEYS */;
INSERT INTO `wp_nextend2_smartslider3_slides` VALUES (1,'Slide Background',1,'1970-01-01 00:00:00','1970-01-01 00:00:00',1,0,'[{\"type\":\"content\",\"pm\":\"default\",\"desktopportraitfontsize\":100,\"desktopportraitmaxwidth\":1120,\"desktopportraitinneralign\":\"inherit\",\"desktopportraitpadding\":\"0|*|0|*|0|*|0|*|px\",\"desktopportraitselfalign\":\"center\",\"opened\":1,\"id\":\"\",\"uniqueclass\":\"n-uc-IbNOabpfT5aE\",\"generatorvisible\":\"\",\"zindex\":2,\"class\":\"\",\"crop\":\"visible\",\"rotation\":0,\"parallax\":0,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"bgimage\":\"\",\"bgimagex\":50,\"bgimagey\":50,\"bgcolor\":\"00000000\",\"bgcolorgradient\":\"off\",\"bgcolorgradientend\":\"00000000\",\"verticalalign\":\"center\",\"layers\":[{\"type\":\"row\",\"pm\":\"normal\",\"desktopportraitfontsize\":100,\"desktopportraitinneralign\":\"inherit\",\"desktopportraitpadding\":\"10|*|0|*|10|*|0|*|px\",\"desktopportraitgutter\":0,\"desktopportraitwrapafter\":0,\"desktopportraitmargin\":\"0|*|0|*|0|*|0|*|px\",\"desktopportraitheight\":0,\"desktopportraitmaxwidth\":0,\"desktopportraitselfalign\":\"inherit\",\"tabletportraitpadding\":\"10|*|0|*|10|*|0|*|px\",\"tabletportraitgutter\":20,\"mobileportraitpadding\":\"0|*|0|*|0|*|0|*|px\",\"mobileportraitgutter\":20,\"mobileportraitwrapafter\":1,\"mobileportraitmaxwidth\":400,\"mobilelandscapewrapafter\":1,\"opened\":1,\"id\":\"\",\"uniqueclass\":\"n-uc-dtwtw9DVCwgQ\",\"generatorvisible\":\"\",\"zindex\":2,\"class\":\"\",\"crop\":\"visible\",\"rotation\":0,\"parallax\":0,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"href\":\"\",\"href-target\":\"_self\",\"bgimage\":\"\",\"bgimagex\":50,\"bgimagey\":50,\"bgcolor\":\"ffffff00\",\"bgcolorgradient\":\"off\",\"bgcolorgradientend\":\"00000000\",\"borderwidth\":\"1|*|1|*|1|*|1\",\"borderstyle\":\"none\",\"bordercolor\":\"FFFFFFFF\",\"borderradius\":0,\"boxshadow\":\"0|*|0|*|0|*|0|*|00000080\",\"fullwidth\":1,\"stretch\":0,\"name\":\"Row\",\"namesynced\":1,\"cols\":[{\"type\":\"col\",\"pm\":\"default\",\"desktopportraitfontsize\":100,\"desktopportraitmaxwidth\":0,\"desktopportraitinneralign\":\"left\",\"desktopportraitpadding\":\"10|*|10|*|10|*|10|*|px\",\"desktopportraitorder\":0,\"tabletportraitpadding\":\"10|*|0|*|10|*|0|*|px\",\"mobileportraitinneralign\":\"left\",\"mobileportraitpadding\":\"10|*|0|*|10|*|0|*|px\",\"mobileportraitorder\":2,\"opened\":1,\"id\":\"\",\"uniqueclass\":\"n-uc-Fjvyu081qJeK\",\"generatorvisible\":\"\",\"zindex\":2,\"class\":\"\",\"crop\":\"visible\",\"rotation\":0,\"parallax\":0,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"bgimage\":\"\",\"bgimagex\":50,\"bgimagey\":50,\"bgcolor\":\"00000000\",\"bgcolorgradient\":\"off\",\"bgcolorgradientend\":\"00000000\",\"verticalalign\":\"center\",\"colwidth\":\"2/5\",\"href\":\"\",\"href-target\":\"_self\",\"borderradius\":0,\"boxshadow\":\"0|*|0|*|0|*|0|*|00000080\",\"borderwidth\":\"0|*|0|*|0|*|0\",\"borderstyle\":\"solid\",\"bordercolor\":\"ffffffff\",\"name\":\"Column\",\"namesynced\":1,\"layers\":[{\"type\":\"layer\",\"pm\":\"normal\",\"desktopportraitfontsize\":100,\"desktopportraitmargin\":\"0|*|0|*|0|*|0|*|px\",\"desktopportraitheight\":0,\"desktopportraitmaxwidth\":0,\"desktopportraitselfalign\":\"inherit\",\"tabletportraitfontsize\":80,\"mobileportraitfontsize\":60,\"id\":\"\",\"uniqueclass\":\"\",\"generatorvisible\":\"\",\"zindex\":2,\"class\":\"\",\"crop\":\"visible\",\"rotation\":0,\"parallax\":0,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Jeans Store Interior\",\"namesynced\":1,\"item\":{\"type\":\"heading\",\"values\":{\"font\":\"{\\\"data\\\":[{\\\"extra\\\":\\\"\\\",\\\"color\\\":\\\"ffffffff\\\",\\\"size\\\":\\\"36||px\\\",\\\"tshadow\\\":\\\"0|*|0|*|0|*|000000ff\\\",\\\"afont\\\":\\\"Roboto\\\",\\\"lineheight\\\":\\\"1.2\\\",\\\"weight\\\":1,\\\"italic\\\":0,\\\"underline\\\":0,\\\"align\\\":\\\"inherit\\\",\\\"letterspacing\\\":\\\"normal\\\",\\\"wordspacing\\\":\\\"normal\\\",\\\"texttransform\\\":\\\"none\\\"},{\\\"extra\\\":\\\"\\\"}]}\",\"style\":\"\",\"priority\":\"div\",\"fullwidth\":\"1\",\"nowrap\":\"0\",\"heading\":\"01. Slide Background\",\"title\":\"\",\"href\":\"#\",\"href-target\":\"_self\",\"href-rel\":\"\",\"split-text-transform-origin\":\"50|*|50|*|0\",\"split-text-backface-visibility\":\"1\",\"split-text-animation-in\":\"\",\"split-text-delay-in\":\"0\",\"split-text-animation-out\":\"\",\"split-text-delay-out\":\"0\",\"class\":\"\"}}},{\"type\":\"layer\",\"pm\":\"normal\",\"desktopportraitfontsize\":100,\"desktopportraitmargin\":\"0|*|0|*|0|*|0|*|px\",\"desktopportraitheight\":0,\"desktopportraitmaxwidth\":0,\"desktopportraitselfalign\":\"inherit\",\"tabletportraitfontsize\":80,\"mobileportraitfontsize\":70,\"id\":\"\",\"uniqueclass\":\"\",\"generatorvisible\":\"\",\"zindex\":2,\"class\":\"\",\"crop\":\"visible\",\"rotation\":0,\"parallax\":0,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Lorem ipsum dolor sit amet, consect\",\"namesynced\":1,\"item\":{\"type\":\"heading\",\"values\":{\"font\":\"{\\\"data\\\":[{\\\"extra\\\":\\\"\\\",\\\"color\\\":\\\"ffffffb0\\\",\\\"size\\\":\\\"24||px\\\",\\\"tshadow\\\":\\\"0|*|0|*|0|*|000000ff\\\",\\\"afont\\\":\\\"Roboto\\\",\\\"lineheight\\\":\\\"1.3\\\",\\\"weight\\\":300,\\\"italic\\\":0,\\\"underline\\\":0,\\\"align\\\":\\\"inherit\\\",\\\"letterspacing\\\":\\\"normal\\\",\\\"wordspacing\\\":\\\"normal\\\",\\\"texttransform\\\":\\\"none\\\"},{\\\"extra\\\":\\\"\\\"}]}\",\"style\":\"\",\"priority\":\"div\",\"fullwidth\":\"1\",\"nowrap\":\"0\",\"heading\":\"Every slide includes a background, which can be a picture or solid color.\",\"title\":\"\",\"href\":\"#\",\"href-target\":\"_self\",\"href-rel\":\"\",\"split-text-transform-origin\":\"50|*|50|*|0\",\"split-text-backface-visibility\":\"1\",\"split-text-animation-in\":\"\",\"split-text-delay-in\":\"0\",\"split-text-animation-out\":\"\",\"split-text-delay-out\":\"0\",\"class\":\"\"}}},{\"type\":\"layer\",\"pm\":\"normal\",\"desktopportraitfontsize\":100,\"desktopportraitmargin\":\"20|*|0|*|0|*|0|*|px\",\"desktopportraitheight\":0,\"desktopportraitmaxwidth\":0,\"desktopportraitselfalign\":\"inherit\",\"tabletportraitfontsize\":100,\"mobileportraitfontsize\":80,\"mobileportraitmargin\":\"10|*|0|*|0|*|0|*|px\",\"id\":\"\",\"uniqueclass\":\"\",\"generatorvisible\":\"\",\"zindex\":2,\"class\":\"\",\"crop\":\"visible\",\"rotation\":0,\"parallax\":0,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Latest Project\",\"namesynced\":1,\"item\":{\"type\":\"heading\",\"values\":{\"font\":\"{\\\"data\\\":[{\\\"extra\\\":\\\"\\\",\\\"color\\\":\\\"ffffffdb\\\",\\\"size\\\":\\\"14||px\\\",\\\"tshadow\\\":\\\"0|*|0|*|0|*|000000ff\\\",\\\"afont\\\":\\\"Roboto\\\",\\\"lineheight\\\":\\\"1.5\\\",\\\"weight\\\":1,\\\"italic\\\":0,\\\"underline\\\":0,\\\"align\\\":\\\"inherit\\\",\\\"letterspacing\\\":\\\"1px\\\",\\\"wordspacing\\\":\\\"normal\\\",\\\"texttransform\\\":\\\"uppercase\\\"},{\\\"extra\\\":\\\"\\\"}]}\",\"style\":\"\",\"priority\":\"div\",\"fullwidth\":\"1\",\"nowrap\":\"0\",\"heading\":\"Step 1\",\"title\":\"\",\"href\":\"#\",\"href-target\":\"_self\",\"href-rel\":\"\",\"split-text-transform-origin\":\"50|*|50|*|0\",\"split-text-backface-visibility\":\"1\",\"split-text-animation-in\":\"\",\"split-text-delay-in\":\"0\",\"split-text-animation-out\":\"\",\"split-text-delay-out\":\"0\",\"class\":\"\"}}},{\"type\":\"layer\",\"pm\":\"normal\",\"desktopportraitfontsize\":100,\"desktopportraitmargin\":\"0|*|0|*|0|*|0|*|px\",\"desktopportraitheight\":0,\"desktopportraitmaxwidth\":0,\"desktopportraitselfalign\":\"inherit\",\"tabletportraitfontsize\":90,\"mobileportraitfontsize\":70,\"id\":\"\",\"uniqueclass\":\"\",\"generatorvisible\":\"\",\"zindex\":2,\"class\":\"\",\"crop\":\"visible\",\"rotation\":0,\"parallax\":0,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Text\",\"namesynced\":1,\"item\":{\"type\":\"text\",\"values\":{\"font\":\"{\\\"data\\\":[{\\\"extra\\\":\\\"\\\",\\\"color\\\":\\\"ffffffb0\\\",\\\"size\\\":\\\"18||px\\\",\\\"tshadow\\\":\\\"0|*|0|*|0|*|000000ff\\\",\\\"afont\\\":\\\"Roboto\\\",\\\"lineheight\\\":\\\"1.6\\\",\\\"weight\\\":400,\\\"italic\\\":0,\\\"underline\\\":0,\\\"align\\\":\\\"inherit\\\",\\\"letterspacing\\\":\\\"normal\\\",\\\"wordspacing\\\":\\\"normal\\\",\\\"texttransform\\\":\\\"none\\\"},{\\\"extra\\\":\\\"\\\",\\\"color\\\":\\\"1890d7ff\\\"},{\\\"extra\\\":\\\"\\\",\\\"color\\\":\\\"1890d7ff\\\"}]}\",\"style\":\"\",\"content\":\"To change the background click on the label bar and in the layer window select the style tab.\",\"content-tablet-enabled\":\"0\",\"contenttablet\":\"\",\"content-mobile-enabled\":\"0\",\"contentmobile\":\"\"}}},{\"type\":\"layer\",\"pm\":\"normal\",\"desktopportraitfontsize\":100,\"desktopportraitmargin\":\"20|*|0|*|0|*|0|*|px\",\"desktopportraitheight\":0,\"desktopportraitmaxwidth\":0,\"desktopportraitselfalign\":\"inherit\",\"tabletportraitfontsize\":100,\"mobileportraitfontsize\":80,\"mobileportraitmargin\":\"10|*|0|*|0|*|0|*|px\",\"id\":\"\",\"uniqueclass\":\"\",\"generatorvisible\":\"\",\"zindex\":2,\"class\":\"\",\"crop\":\"visible\",\"rotation\":0,\"parallax\":0,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Latest Project\",\"namesynced\":1,\"item\":{\"type\":\"heading\",\"values\":{\"font\":\"{\\\"data\\\":[{\\\"extra\\\":\\\"\\\",\\\"color\\\":\\\"ffffffdb\\\",\\\"size\\\":\\\"14||px\\\",\\\"tshadow\\\":\\\"0|*|0|*|0|*|000000ff\\\",\\\"afont\\\":\\\"Roboto\\\",\\\"lineheight\\\":\\\"1.5\\\",\\\"weight\\\":1,\\\"italic\\\":0,\\\"underline\\\":0,\\\"align\\\":\\\"inherit\\\",\\\"letterspacing\\\":\\\"1px\\\",\\\"wordspacing\\\":\\\"normal\\\",\\\"texttransform\\\":\\\"uppercase\\\"},{\\\"extra\\\":\\\"\\\"}]}\",\"style\":\"\",\"priority\":\"div\",\"fullwidth\":\"1\",\"nowrap\":\"0\",\"heading\":\"Step 2\",\"title\":\"\",\"href\":\"#\",\"href-target\":\"_self\",\"href-rel\":\"\",\"split-text-transform-origin\":\"50|*|50|*|0\",\"split-text-backface-visibility\":\"1\",\"split-text-animation-in\":\"\",\"split-text-delay-in\":\"0\",\"split-text-animation-out\":\"\",\"split-text-delay-out\":\"0\",\"class\":\"\"}}},{\"type\":\"layer\",\"pm\":\"normal\",\"desktopportraitfontsize\":100,\"desktopportraitmargin\":\"0|*|0|*|0|*|0|*|px\",\"desktopportraitheight\":0,\"desktopportraitmaxwidth\":0,\"desktopportraitselfalign\":\"inherit\",\"tabletportraitfontsize\":90,\"mobileportraitfontsize\":70,\"id\":\"\",\"uniqueclass\":\"\",\"generatorvisible\":\"\",\"zindex\":2,\"class\":\"\",\"crop\":\"visible\",\"rotation\":0,\"parallax\":0,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Text\",\"namesynced\":1,\"item\":{\"type\":\"text\",\"values\":{\"font\":\"{\\\"data\\\":[{\\\"extra\\\":\\\"\\\",\\\"color\\\":\\\"ffffffb0\\\",\\\"size\\\":\\\"18||px\\\",\\\"tshadow\\\":\\\"0|*|0|*|0|*|000000ff\\\",\\\"afont\\\":\\\"Roboto\\\",\\\"lineheight\\\":\\\"1.6\\\",\\\"weight\\\":400,\\\"italic\\\":0,\\\"underline\\\":0,\\\"align\\\":\\\"inherit\\\",\\\"letterspacing\\\":\\\"normal\\\",\\\"wordspacing\\\":\\\"normal\\\",\\\"texttransform\\\":\\\"none\\\"},{\\\"extra\\\":\\\"\\\",\\\"color\\\":\\\"1890d7ff\\\"},{\\\"extra\\\":\\\"\\\",\\\"color\\\":\\\"1890d7ff\\\"}]}\",\"style\":\"\",\"content\":\"Choose a source from the background top tab then upload an image or pick a background color.\",\"content-tablet-enabled\":\"0\",\"contenttablet\":\"\",\"content-mobile-enabled\":\"0\",\"contentmobile\":\"\"}}},{\"type\":\"layer\",\"pm\":\"normal\",\"desktopportraitfontsize\":100,\"desktopportraitmargin\":\"20|*|0|*|0|*|0|*|px\",\"desktopportraitheight\":0,\"desktopportraitmaxwidth\":0,\"desktopportraitselfalign\":\"inherit\",\"tabletportraitfontsize\":80,\"mobileportraitfontsize\":80,\"mobileportraitmargin\":\"10|*|0|*|0|*|0|*|px\",\"id\":\"\",\"uniqueclass\":\"\",\"generatorvisible\":\"\",\"zindex\":2,\"class\":\"\",\"crop\":\"visible\",\"rotation\":0,\"parallax\":0,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Read More\",\"namesynced\":1,\"item\":{\"type\":\"button\",\"values\":{\"font\":\"{\\\"data\\\":[{\\\"extra\\\":\\\"\\\",\\\"color\\\":\\\"ffffffff\\\",\\\"size\\\":\\\"14||px\\\",\\\"tshadow\\\":\\\"0|*|0|*|0|*|000000ff\\\",\\\"afont\\\":\\\"Roboto\\\",\\\"lineheight\\\":\\\"1.5\\\",\\\"weight\\\":1,\\\"italic\\\":0,\\\"underline\\\":0,\\\"align\\\":\\\"center\\\",\\\"letterspacing\\\":\\\"1px\\\",\\\"wordspacing\\\":\\\"normal\\\",\\\"texttransform\\\":\\\"none\\\"},{\\\"extra\\\":\\\"\\\",\\\"color\\\":\\\"0568f6ff\\\"}]}\",\"style\":\"{\\\"data\\\":[{\\\"extra\\\":\\\"\\\",\\\"backgroundcolor\\\":\\\"0568f6ff\\\",\\\"opacity\\\":100,\\\"padding\\\":\\\"1|*|2|*|1|*|2|*|em\\\",\\\"boxshadow\\\":\\\"0|*|0|*|0|*|0|*|000000ff\\\",\\\"border\\\":\\\"0|*|solid|*|000000ff\\\",\\\"borderradius\\\":\\\"5\\\"},{\\\"extra\\\":\\\"\\\",\\\"backgroundcolor\\\":\\\"ffffffff\\\"}]}\",\"content\":\"Next Slide\",\"nowrap\":\"1\",\"fullwidth\":\"0\",\"href\":\"NextSlide[]\",\"href-target\":\"_self\",\"href-rel\":\"\",\"class\":\"\",\"icon\":\"\",\"iconsize\":\"100\",\"iconspacing\":\"30\",\"iconplacement\":\"left\"}}}]},{\"type\":\"col\",\"pm\":\"default\",\"desktopportraitfontsize\":100,\"desktopportraitmaxwidth\":0,\"desktopportraitinneralign\":\"left\",\"desktopportraitpadding\":\"0|*|0|*|0|*|0|*|px\",\"desktopportraitorder\":0,\"mobileportraitinneralign\":\"center\",\"mobileportraitorder\":1,\"opened\":1,\"id\":\"\",\"uniqueclass\":\"n-uc-LnImbm1HgUAv\",\"generatorvisible\":\"\",\"zindex\":2,\"class\":\"\",\"crop\":\"visible\",\"rotation\":0,\"parallax\":0,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"bgimage\":\"\",\"bgimagex\":50,\"bgimagey\":50,\"bgcolor\":\"00000000\",\"bgcolorgradient\":\"off\",\"bgcolorgradientend\":\"00000000\",\"verticalalign\":\"center\",\"colwidth\":\"3/5\",\"href\":\"\",\"href-target\":\"_self\",\"borderradius\":0,\"boxshadow\":\"0|*|0|*|0|*|0|*|00000080\",\"borderwidth\":\"0|*|0|*|0|*|0\",\"borderstyle\":\"solid\",\"bordercolor\":\"ffffffff\",\"name\":\"Column\",\"namesynced\":1,\"layers\":[{\"type\":\"layer\",\"pm\":\"normal\",\"desktopportraitfontsize\":100,\"desktopportraitmargin\":\"0|*|0|*|0|*|0|*|px\",\"desktopportraitheight\":0,\"desktopportraitmaxwidth\":0,\"desktopportraitselfalign\":\"inherit\",\"mobileportraitmaxwidth\":300,\"id\":\"\",\"uniqueclass\":\"\",\"generatorvisible\":\"\",\"zindex\":2,\"class\":\"\",\"crop\":\"visible\",\"rotation\":0,\"parallax\":0,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Image\",\"namesynced\":1,\"item\":{\"type\":\"image\",\"values\":{\"image\":\"https://smartslider3.com/wp-content/uploads/slider424/background.png\",\"href\":\"#\",\"href-target\":\"_self\",\"href-rel\":\"\",\"size\":\"auto|*|auto\",\"alt\":\"\",\"title\":\"\",\"href-class\":\"\"}}}]}]}]}]','','https://smartslider3.com/wp-content/uploads/slider424/slidebackground.jpg','{\"type\":\"slide\",\"desktopportraitfontsize\":100,\"desktopportraitpadding\":\"10|*|60|*|10|*|60\",\"tabletportraitpadding\":\"10|*|50|*|10|*|50\",\"mobileportraitpadding\":\"10|*|10|*|35|*|10\",\"record-slides\":0,\"thumbnailType\":\"default\",\"static-slide\":0,\"slide-duration\":0,\"ligthboxImage\":\"\",\"background-animation\":\"\",\"background-animation-color\":\"333333ff\",\"background-animation-speed\":\"default\",\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"href\":\"\",\"href-target\":\"\",\"background-type\":\"image\",\"backgroundColor\":\"ffffff00\",\"backgroundGradient\":\"off\",\"backgroundColorEnd\":\"ffffff00\",\"backgroundColorOverlay\":0,\"backgroundImage\":\"https://smartslider3.com/wp-content/uploads/slider424/slide1.png\",\"backgroundFocusX\":50,\"backgroundFocusY\":50,\"backgroundImageOpacity\":100,\"backgroundImageBlur\":0,\"backgroundAlt\":\"\",\"backgroundTitle\":\"\",\"backgroundMode\":\"default\",\"guides\":\"eyJob3Jpem9udGFsIjpbXSwidmVydGljYWwiOltdfQ==\",\"version\":\"3.4.0\"}',1,0);
INSERT INTO `wp_nextend2_smartslider3_slides` VALUES (2,'Build & Design',1,'1970-01-01 00:00:00','1970-01-01 00:00:00',1,0,'[{\"type\":\"content\",\"pm\":\"default\",\"desktopportraitfontsize\":100,\"desktopportraitmaxwidth\":1120,\"desktopportraitinneralign\":\"inherit\",\"desktopportraitpadding\":\"0|*|0|*|0|*|0|*|px\",\"desktopportraitselfalign\":\"center\",\"opened\":1,\"id\":\"\",\"uniqueclass\":\"n-uc-TPnUuKlAWVoC\",\"generatorvisible\":\"\",\"zindex\":2,\"class\":\"\",\"crop\":\"visible\",\"rotation\":0,\"parallax\":0,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"bgimage\":\"\",\"bgimagex\":50,\"bgimagey\":50,\"bgcolor\":\"00000000\",\"bgcolorgradient\":\"off\",\"bgcolorgradientend\":\"00000000\",\"verticalalign\":\"center\",\"layers\":[{\"type\":\"row\",\"pm\":\"normal\",\"desktopportraitfontsize\":100,\"desktopportraitinneralign\":\"inherit\",\"desktopportraitpadding\":\"10|*|0|*|10|*|0|*|px\",\"desktopportraitgutter\":0,\"desktopportraitwrapafter\":0,\"desktopportraitmargin\":\"0|*|0|*|0|*|0|*|px\",\"desktopportraitheight\":0,\"desktopportraitmaxwidth\":0,\"desktopportraitselfalign\":\"inherit\",\"tabletportraitpadding\":\"10|*|0|*|10|*|0|*|px\",\"tabletportraitgutter\":20,\"mobileportraitinneralign\":\"inherit\",\"mobileportraitpadding\":\"0|*|0|*|0|*|0|*|px\",\"mobileportraitgutter\":20,\"mobileportraitwrapafter\":1,\"mobileportraitmaxwidth\":400,\"mobileportraitselfalign\":\"inherit\",\"mobilelandscapewrapafter\":1,\"opened\":1,\"id\":\"\",\"uniqueclass\":\"n-uc-NmnNQvKK01kO\",\"generatorvisible\":\"\",\"zindex\":2,\"class\":\"\",\"crop\":\"visible\",\"rotation\":0,\"parallax\":0,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"href\":\"\",\"href-target\":\"_self\",\"bgimage\":\"\",\"bgimagex\":50,\"bgimagey\":50,\"bgcolor\":\"ffffff00\",\"bgcolorgradient\":\"off\",\"bgcolorgradientend\":\"00000000\",\"borderwidth\":\"1|*|1|*|1|*|1\",\"borderstyle\":\"none\",\"bordercolor\":\"FFFFFFFF\",\"borderradius\":0,\"boxshadow\":\"0|*|0|*|0|*|0|*|00000080\",\"fullwidth\":1,\"stretch\":0,\"name\":\"Row\",\"namesynced\":1,\"cols\":[{\"type\":\"col\",\"pm\":\"default\",\"desktopportraitfontsize\":100,\"desktopportraitmaxwidth\":0,\"desktopportraitinneralign\":\"left\",\"desktopportraitpadding\":\"10|*|10|*|10|*|10|*|px\",\"desktopportraitorder\":0,\"tabletportraitpadding\":\"10|*|0|*|10|*|0|*|px\",\"mobileportraitmaxwidth\":0,\"mobileportraitinneralign\":\"left\",\"mobileportraitpadding\":\"10|*|0|*|10|*|0|*|px\",\"mobileportraitorder\":2,\"opened\":1,\"id\":\"\",\"uniqueclass\":\"n-uc-R5Jkk06Nmzr4\",\"generatorvisible\":\"\",\"zindex\":2,\"class\":\"\",\"crop\":\"visible\",\"rotation\":0,\"parallax\":0,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"bgimage\":\"\",\"bgimagex\":50,\"bgimagey\":50,\"bgcolor\":\"00000000\",\"bgcolorgradient\":\"off\",\"bgcolorgradientend\":\"00000000\",\"verticalalign\":\"center\",\"colwidth\":\"2/5\",\"href\":\"\",\"href-target\":\"_self\",\"borderradius\":0,\"boxshadow\":\"0|*|0|*|0|*|0|*|00000080\",\"borderwidth\":\"0|*|0|*|0|*|0\",\"borderstyle\":\"solid\",\"bordercolor\":\"ffffffff\",\"name\":\"Column\",\"namesynced\":1,\"layers\":[{\"type\":\"layer\",\"pm\":\"normal\",\"desktopportraitfontsize\":100,\"desktopportraitmargin\":\"0|*|0|*|0|*|0|*|px\",\"desktopportraitheight\":0,\"desktopportraitmaxwidth\":0,\"desktopportraitselfalign\":\"inherit\",\"tabletportraitfontsize\":80,\"mobileportraitfontsize\":60,\"id\":\"\",\"uniqueclass\":\"\",\"generatorvisible\":\"\",\"zindex\":2,\"class\":\"\",\"crop\":\"visible\",\"rotation\":0,\"parallax\":0,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Jeans Store Interior\",\"namesynced\":1,\"item\":{\"type\":\"heading\",\"values\":{\"font\":\"{\\\"data\\\":[{\\\"extra\\\":\\\"\\\",\\\"color\\\":\\\"ffffffff\\\",\\\"size\\\":\\\"36||px\\\",\\\"tshadow\\\":\\\"0|*|0|*|0|*|000000ff\\\",\\\"afont\\\":\\\"Roboto\\\",\\\"lineheight\\\":\\\"1.2\\\",\\\"weight\\\":1,\\\"italic\\\":0,\\\"underline\\\":0,\\\"align\\\":\\\"inherit\\\",\\\"letterspacing\\\":\\\"normal\\\",\\\"wordspacing\\\":\\\"normal\\\",\\\"texttransform\\\":\\\"none\\\"},{\\\"extra\\\":\\\"\\\"}]}\",\"style\":\"\",\"priority\":\"div\",\"fullwidth\":\"1\",\"nowrap\":\"0\",\"heading\":\"02. Build & Design\",\"title\":\"\",\"href\":\"#\",\"href-target\":\"_self\",\"href-rel\":\"\",\"split-text-transform-origin\":\"50|*|50|*|0\",\"split-text-backface-visibility\":\"1\",\"split-text-animation-in\":\"\",\"split-text-delay-in\":\"0\",\"split-text-animation-out\":\"\",\"split-text-delay-out\":\"0\",\"class\":\"\"}}},{\"type\":\"layer\",\"pm\":\"normal\",\"desktopportraitfontsize\":100,\"desktopportraitmargin\":\"0|*|0|*|0|*|0|*|px\",\"desktopportraitheight\":0,\"desktopportraitmaxwidth\":0,\"desktopportraitselfalign\":\"inherit\",\"tabletportraitfontsize\":80,\"mobileportraitfontsize\":70,\"id\":\"\",\"uniqueclass\":\"\",\"generatorvisible\":\"\",\"zindex\":2,\"class\":\"\",\"crop\":\"visible\",\"rotation\":0,\"parallax\":0,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Lorem ipsum dolor sit amet, consect\",\"namesynced\":1,\"item\":{\"type\":\"heading\",\"values\":{\"font\":\"{\\\"data\\\":[{\\\"extra\\\":\\\"\\\",\\\"color\\\":\\\"ffffffb0\\\",\\\"size\\\":\\\"24||px\\\",\\\"tshadow\\\":\\\"0|*|0|*|0|*|000000ff\\\",\\\"afont\\\":\\\"Roboto\\\",\\\"lineheight\\\":\\\"1.3\\\",\\\"weight\\\":300,\\\"italic\\\":0,\\\"underline\\\":0,\\\"align\\\":\\\"inherit\\\",\\\"letterspacing\\\":\\\"normal\\\",\\\"wordspacing\\\":\\\"normal\\\",\\\"texttransform\\\":\\\"none\\\"},{\\\"extra\\\":\\\"\\\"}]}\",\"style\":\"\",\"priority\":\"div\",\"fullwidth\":\"1\",\"nowrap\":\"0\",\"heading\":\"Build any layout with layers and customize your designs limitlessly.\",\"title\":\"\",\"href\":\"#\",\"href-target\":\"_self\",\"href-rel\":\"\",\"split-text-transform-origin\":\"50|*|50|*|0\",\"split-text-backface-visibility\":\"1\",\"split-text-animation-in\":\"\",\"split-text-delay-in\":\"0\",\"split-text-animation-out\":\"\",\"split-text-delay-out\":\"0\",\"class\":\"\"}}},{\"type\":\"layer\",\"pm\":\"normal\",\"desktopportraitfontsize\":100,\"desktopportraitmargin\":\"20|*|0|*|0|*|0|*|px\",\"desktopportraitheight\":0,\"desktopportraitmaxwidth\":0,\"desktopportraitselfalign\":\"inherit\",\"tabletportraitfontsize\":100,\"mobileportraitfontsize\":80,\"mobileportraitmargin\":\"10|*|0|*|0|*|0|*|px\",\"id\":\"\",\"uniqueclass\":\"\",\"generatorvisible\":\"\",\"zindex\":2,\"class\":\"\",\"crop\":\"visible\",\"rotation\":0,\"parallax\":0,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Latest Project\",\"namesynced\":1,\"item\":{\"type\":\"heading\",\"values\":{\"font\":\"{\\\"data\\\":[{\\\"extra\\\":\\\"\\\",\\\"color\\\":\\\"ffffffdb\\\",\\\"size\\\":\\\"14||px\\\",\\\"tshadow\\\":\\\"0|*|0|*|0|*|000000ff\\\",\\\"afont\\\":\\\"Roboto\\\",\\\"lineheight\\\":\\\"1.5\\\",\\\"weight\\\":1,\\\"italic\\\":0,\\\"underline\\\":0,\\\"align\\\":\\\"inherit\\\",\\\"letterspacing\\\":\\\"1px\\\",\\\"wordspacing\\\":\\\"normal\\\",\\\"texttransform\\\":\\\"uppercase\\\"},{\\\"extra\\\":\\\"\\\"}]}\",\"style\":\"\",\"priority\":\"div\",\"fullwidth\":\"1\",\"nowrap\":\"0\",\"heading\":\"Step 1\",\"title\":\"\",\"href\":\"#\",\"href-target\":\"_self\",\"href-rel\":\"\",\"split-text-transform-origin\":\"50|*|50|*|0\",\"split-text-backface-visibility\":\"1\",\"split-text-animation-in\":\"\",\"split-text-delay-in\":\"0\",\"split-text-animation-out\":\"\",\"split-text-delay-out\":\"0\",\"class\":\"\"}}},{\"type\":\"layer\",\"pm\":\"normal\",\"desktopportraitfontsize\":100,\"desktopportraitmargin\":\"0|*|0|*|0|*|0|*|px\",\"desktopportraitheight\":0,\"desktopportraitmaxwidth\":0,\"desktopportraitselfalign\":\"inherit\",\"tabletportraitfontsize\":90,\"mobileportraitfontsize\":70,\"id\":\"\",\"uniqueclass\":\"\",\"generatorvisible\":\"\",\"zindex\":2,\"class\":\"\",\"crop\":\"visible\",\"rotation\":0,\"parallax\":0,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Text\",\"namesynced\":1,\"item\":{\"type\":\"text\",\"values\":{\"font\":\"{\\\"data\\\":[{\\\"extra\\\":\\\"\\\",\\\"color\\\":\\\"ffffffb0\\\",\\\"size\\\":\\\"18||px\\\",\\\"tshadow\\\":\\\"0|*|0|*|0|*|000000ff\\\",\\\"afont\\\":\\\"Roboto\\\",\\\"lineheight\\\":\\\"1.6\\\",\\\"weight\\\":400,\\\"italic\\\":0,\\\"underline\\\":0,\\\"align\\\":\\\"inherit\\\",\\\"letterspacing\\\":\\\"normal\\\",\\\"wordspacing\\\":\\\"normal\\\",\\\"texttransform\\\":\\\"none\\\"},{\\\"extra\\\":\\\"\\\",\\\"color\\\":\\\"1890d7ff\\\"},{\\\"extra\\\":\\\"\\\",\\\"color\\\":\\\"1890d7ff\\\"}]}\",\"style\":\"\",\"content\":\"To add a layer, click the green plus button in the left sidebar and select the type of layer.\",\"content-tablet-enabled\":\"0\",\"contenttablet\":\"\",\"content-mobile-enabled\":\"0\",\"contentmobile\":\"\"}}},{\"type\":\"layer\",\"pm\":\"normal\",\"desktopportraitfontsize\":100,\"desktopportraitmargin\":\"20|*|0|*|0|*|0|*|px\",\"desktopportraitheight\":0,\"desktopportraitmaxwidth\":0,\"desktopportraitselfalign\":\"inherit\",\"tabletportraitfontsize\":100,\"mobileportraitfontsize\":80,\"mobileportraitmargin\":\"10|*|0|*|0|*|0|*|px\",\"id\":\"\",\"uniqueclass\":\"\",\"generatorvisible\":\"\",\"zindex\":2,\"class\":\"\",\"crop\":\"visible\",\"rotation\":0,\"parallax\":0,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Latest Project\",\"namesynced\":1,\"item\":{\"type\":\"heading\",\"values\":{\"font\":\"{\\\"data\\\":[{\\\"extra\\\":\\\"\\\",\\\"color\\\":\\\"ffffffdb\\\",\\\"size\\\":\\\"14||px\\\",\\\"tshadow\\\":\\\"0|*|0|*|0|*|000000ff\\\",\\\"afont\\\":\\\"Roboto\\\",\\\"lineheight\\\":\\\"1.5\\\",\\\"weight\\\":1,\\\"italic\\\":0,\\\"underline\\\":0,\\\"align\\\":\\\"inherit\\\",\\\"letterspacing\\\":\\\"1px\\\",\\\"wordspacing\\\":\\\"normal\\\",\\\"texttransform\\\":\\\"uppercase\\\"},{\\\"extra\\\":\\\"\\\"}]}\",\"style\":\"\",\"priority\":\"div\",\"fullwidth\":\"1\",\"nowrap\":\"0\",\"heading\":\"Step 2\",\"title\":\"\",\"href\":\"#\",\"href-target\":\"_self\",\"href-rel\":\"\",\"split-text-transform-origin\":\"50|*|50|*|0\",\"split-text-backface-visibility\":\"1\",\"split-text-animation-in\":\"\",\"split-text-delay-in\":\"0\",\"split-text-animation-out\":\"\",\"split-text-delay-out\":\"0\",\"class\":\"\"}}},{\"type\":\"layer\",\"pm\":\"normal\",\"desktopportraitfontsize\":100,\"desktopportraitmargin\":\"0|*|0|*|0|*|0|*|px\",\"desktopportraitheight\":0,\"desktopportraitmaxwidth\":0,\"desktopportraitselfalign\":\"inherit\",\"tabletportraitfontsize\":90,\"mobileportraitfontsize\":70,\"id\":\"\",\"uniqueclass\":\"\",\"generatorvisible\":\"\",\"zindex\":2,\"class\":\"\",\"crop\":\"visible\",\"rotation\":0,\"parallax\":0,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Text\",\"namesynced\":1,\"item\":{\"type\":\"text\",\"values\":{\"font\":\"{\\\"data\\\":[{\\\"extra\\\":\\\"\\\",\\\"color\\\":\\\"ffffffb0\\\",\\\"size\\\":\\\"18||px\\\",\\\"tshadow\\\":\\\"0|*|0|*|0|*|000000ff\\\",\\\"afont\\\":\\\"Roboto\\\",\\\"lineheight\\\":\\\"1.6\\\",\\\"weight\\\":400,\\\"italic\\\":0,\\\"underline\\\":0,\\\"align\\\":\\\"inherit\\\",\\\"letterspacing\\\":\\\"normal\\\",\\\"wordspacing\\\":\\\"normal\\\",\\\"texttransform\\\":\\\"none\\\"},{\\\"extra\\\":\\\"\\\",\\\"color\\\":\\\"1890d7ff\\\"},{\\\"extra\\\":\\\"\\\",\\\"color\\\":\\\"1890d7ff\\\"}]}\",\"style\":\"\",\"content\":\"Select any layer and you can edit its content and style properties in the layer window.\",\"content-tablet-enabled\":\"0\",\"contenttablet\":\"\",\"content-mobile-enabled\":\"0\",\"contentmobile\":\"\"}}},{\"type\":\"layer\",\"pm\":\"normal\",\"desktopportraitfontsize\":100,\"desktopportraitmargin\":\"20|*|0|*|0|*|0|*|px\",\"desktopportraitheight\":0,\"desktopportraitmaxwidth\":0,\"desktopportraitselfalign\":\"inherit\",\"tabletportraitfontsize\":80,\"mobileportraitfontsize\":80,\"mobileportraitmargin\":\"10|*|0|*|0|*|0|*|px\",\"id\":\"\",\"uniqueclass\":\"\",\"generatorvisible\":\"\",\"zindex\":2,\"class\":\"\",\"crop\":\"visible\",\"rotation\":0,\"parallax\":0,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Read More\",\"namesynced\":1,\"item\":{\"type\":\"button\",\"values\":{\"font\":\"{\\\"data\\\":[{\\\"extra\\\":\\\"\\\",\\\"color\\\":\\\"ffffffff\\\",\\\"size\\\":\\\"14||px\\\",\\\"tshadow\\\":\\\"0|*|0|*|0|*|000000ff\\\",\\\"afont\\\":\\\"Roboto\\\",\\\"lineheight\\\":\\\"1.5\\\",\\\"weight\\\":1,\\\"italic\\\":0,\\\"underline\\\":0,\\\"align\\\":\\\"center\\\",\\\"letterspacing\\\":\\\"1px\\\",\\\"wordspacing\\\":\\\"normal\\\",\\\"texttransform\\\":\\\"none\\\"},{\\\"extra\\\":\\\"\\\",\\\"color\\\":\\\"0568f6ff\\\"}]}\",\"style\":\"{\\\"data\\\":[{\\\"extra\\\":\\\"\\\",\\\"backgroundcolor\\\":\\\"0568f6ff\\\",\\\"opacity\\\":100,\\\"padding\\\":\\\"1|*|2|*|1|*|2|*|em\\\",\\\"boxshadow\\\":\\\"0|*|0|*|0|*|0|*|000000ff\\\",\\\"border\\\":\\\"0|*|solid|*|000000ff\\\",\\\"borderradius\\\":\\\"5\\\"},{\\\"extra\\\":\\\"\\\",\\\"backgroundcolor\\\":\\\"ffffffff\\\"}]}\",\"content\":\"Next Slide\",\"nowrap\":\"1\",\"fullwidth\":\"0\",\"href\":\"NextSlide[]\",\"href-target\":\"_self\",\"href-rel\":\"\",\"class\":\"\",\"icon\":\"\",\"iconsize\":\"100\",\"iconspacing\":\"30\",\"iconplacement\":\"left\"}}}]},{\"type\":\"col\",\"pm\":\"default\",\"desktopportraitfontsize\":100,\"desktopportraitmaxwidth\":0,\"desktopportraitinneralign\":\"left\",\"desktopportraitpadding\":\"0|*|0|*|0|*|0|*|px\",\"desktopportraitorder\":0,\"mobileportraitinneralign\":\"center\",\"mobileportraitorder\":1,\"opened\":1,\"id\":\"\",\"uniqueclass\":\"n-uc-iYi6ZKk8yeVp\",\"generatorvisible\":\"\",\"zindex\":2,\"class\":\"\",\"crop\":\"visible\",\"rotation\":0,\"parallax\":0,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"bgimage\":\"\",\"bgimagex\":50,\"bgimagey\":50,\"bgcolor\":\"00000000\",\"bgcolorgradient\":\"off\",\"bgcolorgradientend\":\"00000000\",\"verticalalign\":\"center\",\"colwidth\":\"3/5\",\"href\":\"\",\"href-target\":\"_self\",\"borderradius\":0,\"boxshadow\":\"0|*|0|*|0|*|0|*|00000080\",\"borderwidth\":\"0|*|0|*|0|*|0\",\"borderstyle\":\"solid\",\"bordercolor\":\"ffffffff\",\"name\":\"Column\",\"namesynced\":1,\"layers\":[{\"type\":\"layer\",\"pm\":\"normal\",\"desktopportraitfontsize\":100,\"desktopportraitmargin\":\"0|*|0|*|0|*|0|*|px\",\"desktopportraitheight\":0,\"desktopportraitmaxwidth\":0,\"desktopportraitselfalign\":\"inherit\",\"mobileportraitmaxwidth\":300,\"id\":\"\",\"uniqueclass\":\"\",\"generatorvisible\":\"\",\"zindex\":2,\"class\":\"\",\"crop\":\"visible\",\"rotation\":0,\"parallax\":0,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Image\",\"namesynced\":1,\"item\":{\"type\":\"image\",\"values\":{\"image\":\"https://smartslider3.com/wp-content/uploads/slider424/buildanddesign.png\",\"href\":\"#\",\"href-target\":\"_self\",\"href-rel\":\"\",\"size\":\"auto|*|auto\",\"alt\":\"\",\"title\":\"\",\"href-class\":\"\"}}}]}]}]}]','','https://smartslider3.com/wp-content/uploads/slider424/buildanddesign.jpg','{\"type\":\"slide\",\"desktopportraitfontsize\":100,\"desktopportraitpadding\":\"10|*|60|*|10|*|60\",\"tabletportraitpadding\":\"10|*|50|*|10|*|50\",\"mobileportraitpadding\":\"10|*|10|*|35|*|10\",\"record-slides\":0,\"thumbnailType\":\"default\",\"static-slide\":0,\"slide-duration\":0,\"ligthboxImage\":\"\",\"background-animation\":\"\",\"background-animation-color\":\"333333ff\",\"background-animation-speed\":\"default\",\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"href\":\"\",\"href-target\":\"\",\"background-type\":\"image\",\"backgroundColor\":\"ffffff00\",\"backgroundGradient\":\"off\",\"backgroundColorEnd\":\"ffffff00\",\"backgroundColorOverlay\":0,\"backgroundImage\":\"https://smartslider3.com/wp-content/uploads/slider424/slide2.png\",\"backgroundFocusX\":50,\"backgroundFocusY\":50,\"backgroundImageOpacity\":100,\"backgroundImageBlur\":0,\"backgroundAlt\":\"\",\"backgroundTitle\":\"\",\"backgroundMode\":\"default\",\"guides\":\"eyJob3Jpem9udGFsIjpbXSwidmVydGljYWwiOltdfQ==\",\"version\":\"3.4.0\"}',2,0);
INSERT INTO `wp_nextend2_smartslider3_slides` VALUES (3,'nw-wo-reguly-vietnam-0330',2,'1970-01-01 00:00:00','1970-01-01 00:00:00',1,0,'[]','','$upload$/2021/10/BobAdaMarriage.jpg','{\"background-type\":\"image\",\"backgroundImage\":\"$upload$/2021/10/BobAdaMarriage.jpg\",\"version\":\"3.5.0.11\"}',1,0);
INSERT INTO `wp_nextend2_smartslider3_slides` VALUES (4,'reguly05ob6',2,'1970-01-01 00:00:00','1970-01-01 00:00:00',1,0,'[]','','$upload$/2021/10/BobRegulySmokejumper-scaled.jpg','{\"background-type\":\"image\",\"backgroundImage\":\"$upload$/2021/10/BobRegulySmokejumper-scaled.jpg\",\"version\":\"3.5.0.11\"}',2,0);
INSERT INTO `wp_nextend2_smartslider3_slides` VALUES (5,'reguly05ob7',2,'1970-01-01 00:00:00','1970-01-01 00:00:00',1,0,'[]','','$upload$/2021/10/BobRegulySmokejumper2.jpg','{\"background-type\":\"image\",\"backgroundImage\":\"$upload$/2021/10/BobRegulySmokejumper2.jpg\",\"version\":\"3.5.0.11\"}',3,0);
INSERT INTO `wp_nextend2_smartslider3_slides` VALUES (6,'reguly05ob1',2,'1970-01-01 00:00:00','1970-01-01 00:00:00',1,0,'[]','','$upload$/2021/10/BobRegulyTorontoStara-scaled.jpg','{\"background-type\":\"image\",\"backgroundImage\":\"$upload$/2021/10/BobRegulyTorontoStara-scaled.jpg\",\"version\":\"3.5.0.11\"}',4,0);
INSERT INTO `wp_nextend2_smartslider3_slides` VALUES (7,'nw-wo-reguly-vietnam-0330',2,'1970-01-01 00:00:00','1970-01-01 00:00:00',1,0,'[]','','$upload$/2021/10/regulyNewsroom.jpg','{\"background-type\":\"image\",\"backgroundImage\":\"$upload$/2021/10/regulyNewsroom.jpg\",\"version\":\"3.5.0.11\"}',5,0);
INSERT INTO `wp_nextend2_smartslider3_slides` VALUES (8,'reguly05ob2',2,'1970-01-01 00:00:00','1970-01-01 00:00:00',1,0,'[]','','$upload$/2021/10/regulyNewsroom2-scaled.jpg','{\"background-type\":\"image\",\"backgroundImage\":\"$upload$/2021/10/regulyNewsroom2-scaled.jpg\",\"version\":\"3.5.0.11\"}',6,0);
/*!40000 ALTER TABLE `wp_nextend2_smartslider3_slides` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_nf3_action_meta`
--

DROP TABLE IF EXISTS `wp_nf3_action_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_nf3_action_meta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL,
  `key` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_general_ci,
  `meta_key` longtext COLLATE utf8mb4_general_ci,
  `meta_value` longtext COLLATE utf8mb4_general_ci,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_nf3_action_meta`
--

LOCK TABLES `wp_nf3_action_meta` WRITE;
/*!40000 ALTER TABLE `wp_nf3_action_meta` DISABLE KEYS */;
INSERT INTO `wp_nf3_action_meta` VALUES (1,1,'objectType','Action','objectType','Action');
INSERT INTO `wp_nf3_action_meta` VALUES (2,1,'objectDomain','actions','objectDomain','actions');
INSERT INTO `wp_nf3_action_meta` VALUES (3,1,'editActive','','editActive','');
INSERT INTO `wp_nf3_action_meta` VALUES (4,1,'conditions','a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}','conditions','a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}');
INSERT INTO `wp_nf3_action_meta` VALUES (5,1,'payment_gateways','','payment_gateways','');
INSERT INTO `wp_nf3_action_meta` VALUES (6,1,'payment_total','','payment_total','');
INSERT INTO `wp_nf3_action_meta` VALUES (7,1,'tag','','tag','');
INSERT INTO `wp_nf3_action_meta` VALUES (8,1,'to','{wp:admin_email}','to','{wp:admin_email}');
INSERT INTO `wp_nf3_action_meta` VALUES (9,1,'email_subject','Ninja Forms Submission','email_subject','Ninja Forms Submission');
INSERT INTO `wp_nf3_action_meta` VALUES (10,1,'email_message','{fields_table}','email_message','{fields_table}');
INSERT INTO `wp_nf3_action_meta` VALUES (11,1,'from_name','','from_name','');
INSERT INTO `wp_nf3_action_meta` VALUES (12,1,'from_address','','from_address','');
INSERT INTO `wp_nf3_action_meta` VALUES (13,1,'reply_to','','reply_to','');
INSERT INTO `wp_nf3_action_meta` VALUES (14,1,'email_format','html','email_format','html');
INSERT INTO `wp_nf3_action_meta` VALUES (15,1,'cc','','cc','');
INSERT INTO `wp_nf3_action_meta` VALUES (16,1,'bcc','','bcc','');
INSERT INTO `wp_nf3_action_meta` VALUES (17,1,'attach_csv','','attach_csv','');
INSERT INTO `wp_nf3_action_meta` VALUES (18,1,'redirect_url','','redirect_url','');
INSERT INTO `wp_nf3_action_meta` VALUES (19,1,'email_message_plain','','email_message_plain','');
INSERT INTO `wp_nf3_action_meta` VALUES (20,2,'to','{wp:admin_email},{field:email}','to','{wp:admin_email},{field:email}');
INSERT INTO `wp_nf3_action_meta` VALUES (21,2,'subject','This is an email action.','subject','This is an email action.');
INSERT INTO `wp_nf3_action_meta` VALUES (22,2,'message','Hello, Ninja Forms!','message','Hello, Ninja Forms!');
INSERT INTO `wp_nf3_action_meta` VALUES (23,2,'objectType','Action','objectType','Action');
INSERT INTO `wp_nf3_action_meta` VALUES (24,2,'objectDomain','actions','objectDomain','actions');
INSERT INTO `wp_nf3_action_meta` VALUES (25,2,'editActive','','editActive','');
INSERT INTO `wp_nf3_action_meta` VALUES (26,2,'conditions','a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:0:{}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}','conditions','a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:0:{}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}');
INSERT INTO `wp_nf3_action_meta` VALUES (27,2,'payment_gateways','','payment_gateways','');
INSERT INTO `wp_nf3_action_meta` VALUES (28,2,'payment_total','','payment_total','');
INSERT INTO `wp_nf3_action_meta` VALUES (29,2,'tag','','tag','');
INSERT INTO `wp_nf3_action_meta` VALUES (30,2,'email_subject','{field:subject_1631798513617}','email_subject','{field:subject_1631798513617}');
INSERT INTO `wp_nf3_action_meta` VALUES (31,2,'email_message','<p>Thank you for your email. I will get back to you as soon as possible.</p><p><br></p><p>Eric<br></p>','email_message','<p>Thank you for your email. I will get back to you as soon as possible.</p><p><br></p><p>Eric<br></p>');
INSERT INTO `wp_nf3_action_meta` VALUES (32,2,'from_name','','from_name','');
INSERT INTO `wp_nf3_action_meta` VALUES (33,2,'from_address','','from_address','');
INSERT INTO `wp_nf3_action_meta` VALUES (34,2,'reply_to','{field:email}','reply_to','{field:email}');
INSERT INTO `wp_nf3_action_meta` VALUES (35,2,'email_format','html','email_format','html');
INSERT INTO `wp_nf3_action_meta` VALUES (36,2,'cc','','cc','');
INSERT INTO `wp_nf3_action_meta` VALUES (37,2,'bcc','','bcc','');
INSERT INTO `wp_nf3_action_meta` VALUES (38,2,'attach_csv','','attach_csv','');
INSERT INTO `wp_nf3_action_meta` VALUES (39,2,'email_message_plain','','email_message_plain','');
INSERT INTO `wp_nf3_action_meta` VALUES (40,3,'objectType','Action','objectType','Action');
INSERT INTO `wp_nf3_action_meta` VALUES (41,3,'objectDomain','actions','objectDomain','actions');
INSERT INTO `wp_nf3_action_meta` VALUES (42,3,'editActive','','editActive','');
INSERT INTO `wp_nf3_action_meta` VALUES (43,3,'conditions','a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}','conditions','a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}');
INSERT INTO `wp_nf3_action_meta` VALUES (44,3,'payment_gateways','','payment_gateways','');
INSERT INTO `wp_nf3_action_meta` VALUES (45,3,'payment_total','','payment_total','');
INSERT INTO `wp_nf3_action_meta` VALUES (46,3,'tag','','tag','');
INSERT INTO `wp_nf3_action_meta` VALUES (47,3,'to','jim@jimrossphoto.co.uk','to','jim@jimrossphoto.co.uk');
INSERT INTO `wp_nf3_action_meta` VALUES (48,3,'email_subject','{field:subject_1631798513617}','email_subject','{field:subject_1631798513617}');
INSERT INTO `wp_nf3_action_meta` VALUES (49,3,'email_message','<p>{field:message_1632311094131}</p>\n<p>-{field:name} ( {field:email} )</p>','email_message','<p>{field:message_1632311094131}</p>\n<p>-{field:name} ( {field:email} )</p>');
INSERT INTO `wp_nf3_action_meta` VALUES (50,3,'from_name','','from_name','');
INSERT INTO `wp_nf3_action_meta` VALUES (51,3,'from_address','','from_address','');
INSERT INTO `wp_nf3_action_meta` VALUES (52,3,'reply_to','{field:email}','reply_to','{field:email}');
INSERT INTO `wp_nf3_action_meta` VALUES (53,3,'email_format','html','email_format','html');
INSERT INTO `wp_nf3_action_meta` VALUES (54,3,'cc','','cc','');
INSERT INTO `wp_nf3_action_meta` VALUES (55,3,'bcc','','bcc','');
INSERT INTO `wp_nf3_action_meta` VALUES (56,3,'attach_csv','0','attach_csv','0');
INSERT INTO `wp_nf3_action_meta` VALUES (57,3,'email_message_plain','','email_message_plain','');
INSERT INTO `wp_nf3_action_meta` VALUES (58,4,'message','Thank you {field:name} for filling out my form!','message','Thank you {field:name} for filling out my form!');
INSERT INTO `wp_nf3_action_meta` VALUES (59,4,'objectType','Action','objectType','Action');
INSERT INTO `wp_nf3_action_meta` VALUES (60,4,'objectDomain','actions','objectDomain','actions');
INSERT INTO `wp_nf3_action_meta` VALUES (61,4,'editActive','','editActive','');
INSERT INTO `wp_nf3_action_meta` VALUES (62,4,'conditions','a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}','conditions','a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}');
INSERT INTO `wp_nf3_action_meta` VALUES (63,4,'payment_gateways','','payment_gateways','');
INSERT INTO `wp_nf3_action_meta` VALUES (64,4,'payment_total','','payment_total','');
INSERT INTO `wp_nf3_action_meta` VALUES (65,4,'tag','','tag','');
INSERT INTO `wp_nf3_action_meta` VALUES (66,4,'to','{wp:admin_email}','to','{wp:admin_email}');
INSERT INTO `wp_nf3_action_meta` VALUES (67,4,'email_subject','Ninja Forms Submission','email_subject','Ninja Forms Submission');
INSERT INTO `wp_nf3_action_meta` VALUES (68,4,'email_message','{fields_table}','email_message','{fields_table}');
INSERT INTO `wp_nf3_action_meta` VALUES (69,4,'from_name','','from_name','');
INSERT INTO `wp_nf3_action_meta` VALUES (70,4,'from_address','','from_address','');
INSERT INTO `wp_nf3_action_meta` VALUES (71,4,'reply_to','','reply_to','');
INSERT INTO `wp_nf3_action_meta` VALUES (72,4,'email_format','html','email_format','html');
INSERT INTO `wp_nf3_action_meta` VALUES (73,4,'cc','','cc','');
INSERT INTO `wp_nf3_action_meta` VALUES (74,4,'bcc','','bcc','');
INSERT INTO `wp_nf3_action_meta` VALUES (75,4,'attach_csv','','attach_csv','');
INSERT INTO `wp_nf3_action_meta` VALUES (76,4,'redirect_url','','redirect_url','');
INSERT INTO `wp_nf3_action_meta` VALUES (77,4,'success_msg','<p>Form submitted successfully.</p><p>A confirmation email was sent to {field:email}.</p>','success_msg','<p>Form submitted successfully.</p><p>A confirmation email was sent to {field:email}.</p>');
INSERT INTO `wp_nf3_action_meta` VALUES (78,4,'email_message_plain','','email_message_plain','');
INSERT INTO `wp_nf3_action_meta` VALUES (79,1,'success_msg','Your form has been successfully submitted.','success_msg','Your form has been successfully submitted.');
INSERT INTO `wp_nf3_action_meta` VALUES (80,1,'submitter_email','','submitter_email','');
INSERT INTO `wp_nf3_action_meta` VALUES (81,1,'fields-save-toggle','save_all','fields-save-toggle','save_all');
INSERT INTO `wp_nf3_action_meta` VALUES (82,1,'exception_fields','a:0:{}','exception_fields','a:0:{}');
INSERT INTO `wp_nf3_action_meta` VALUES (83,1,'set_subs_to_expire','0','set_subs_to_expire','0');
INSERT INTO `wp_nf3_action_meta` VALUES (84,1,'subs_expire_time','90','subs_expire_time','90');
INSERT INTO `wp_nf3_action_meta` VALUES (85,4,'drawerDisabled','','drawerDisabled','');
INSERT INTO `wp_nf3_action_meta` VALUES (86,2,'drawerDisabled','','drawerDisabled','');
INSERT INTO `wp_nf3_action_meta` VALUES (129,1,'drawerDisabled','','drawerDisabled','');
INSERT INTO `wp_nf3_action_meta` VALUES (130,3,'drawerDisabled','','drawerDisabled','');
/*!40000 ALTER TABLE `wp_nf3_action_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_nf3_actions`
--

DROP TABLE IF EXISTS `wp_nf3_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_nf3_actions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` longtext COLLATE utf8mb4_general_ci,
  `key` longtext COLLATE utf8mb4_general_ci,
  `type` longtext COLLATE utf8mb4_general_ci,
  `active` tinyint(1) DEFAULT '1',
  `parent_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `label` longtext COLLATE utf8mb4_general_ci,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_nf3_actions`
--

LOCK TABLES `wp_nf3_actions` WRITE;
/*!40000 ALTER TABLE `wp_nf3_actions` DISABLE KEYS */;
INSERT INTO `wp_nf3_actions` VALUES (1,'','','save',1,1,'2021-09-16 09:12:47','2021-09-16 10:12:47','Store Submission');
INSERT INTO `wp_nf3_actions` VALUES (2,'','','email',1,1,'2021-09-16 09:12:47','2021-09-16 10:12:47','Email Confirmation');
INSERT INTO `wp_nf3_actions` VALUES (3,'','','email',1,1,'2021-09-16 09:12:47','2021-09-16 10:12:47','Email Notification');
INSERT INTO `wp_nf3_actions` VALUES (4,'','','successmessage',1,1,'2021-09-16 09:12:47','2021-09-16 10:12:47','Success Message');
/*!40000 ALTER TABLE `wp_nf3_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_nf3_chunks`
--

DROP TABLE IF EXISTS `wp_nf3_chunks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_nf3_chunks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `value` longtext COLLATE utf8mb4_general_ci,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_nf3_chunks`
--

LOCK TABLES `wp_nf3_chunks` WRITE;
/*!40000 ALTER TABLE `wp_nf3_chunks` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_nf3_chunks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_nf3_field_meta`
--

DROP TABLE IF EXISTS `wp_nf3_field_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_nf3_field_meta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL,
  `key` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_general_ci,
  `meta_key` longtext COLLATE utf8mb4_general_ci,
  `meta_value` longtext COLLATE utf8mb4_general_ci,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=388 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_nf3_field_meta`
--

LOCK TABLES `wp_nf3_field_meta` WRITE;
/*!40000 ALTER TABLE `wp_nf3_field_meta` DISABLE KEYS */;
INSERT INTO `wp_nf3_field_meta` VALUES (1,1,'label_pos','above','label_pos','above');
INSERT INTO `wp_nf3_field_meta` VALUES (2,1,'required','1','required','1');
INSERT INTO `wp_nf3_field_meta` VALUES (3,1,'order','1','order','1');
INSERT INTO `wp_nf3_field_meta` VALUES (4,1,'placeholder','','placeholder','');
INSERT INTO `wp_nf3_field_meta` VALUES (5,1,'default','','default','');
INSERT INTO `wp_nf3_field_meta` VALUES (6,1,'wrapper_class','','wrapper_class','');
INSERT INTO `wp_nf3_field_meta` VALUES (7,1,'element_class','','element_class','');
INSERT INTO `wp_nf3_field_meta` VALUES (8,1,'objectType','Field','objectType','Field');
INSERT INTO `wp_nf3_field_meta` VALUES (9,1,'objectDomain','fields','objectDomain','fields');
INSERT INTO `wp_nf3_field_meta` VALUES (10,1,'editActive','','editActive','');
INSERT INTO `wp_nf3_field_meta` VALUES (11,1,'container_class','','container_class','');
INSERT INTO `wp_nf3_field_meta` VALUES (12,1,'input_limit','','input_limit','');
INSERT INTO `wp_nf3_field_meta` VALUES (13,1,'input_limit_type','characters','input_limit_type','characters');
INSERT INTO `wp_nf3_field_meta` VALUES (14,1,'input_limit_msg','Character(s) left','input_limit_msg','Character(s) left');
INSERT INTO `wp_nf3_field_meta` VALUES (15,1,'manual_key','','manual_key','');
INSERT INTO `wp_nf3_field_meta` VALUES (16,1,'disable_input','','disable_input','');
INSERT INTO `wp_nf3_field_meta` VALUES (17,1,'admin_label','','admin_label','');
INSERT INTO `wp_nf3_field_meta` VALUES (18,1,'help_text','','help_text','');
INSERT INTO `wp_nf3_field_meta` VALUES (19,1,'desc_text','','desc_text','');
INSERT INTO `wp_nf3_field_meta` VALUES (20,1,'disable_browser_autocomplete','','disable_browser_autocomplete','');
INSERT INTO `wp_nf3_field_meta` VALUES (21,1,'mask','','mask','');
INSERT INTO `wp_nf3_field_meta` VALUES (22,1,'custom_mask','','custom_mask','');
INSERT INTO `wp_nf3_field_meta` VALUES (23,1,'wrap_styles_background-color','','wrap_styles_background-color','');
INSERT INTO `wp_nf3_field_meta` VALUES (24,1,'wrap_styles_border','','wrap_styles_border','');
INSERT INTO `wp_nf3_field_meta` VALUES (25,1,'wrap_styles_border-style','','wrap_styles_border-style','');
INSERT INTO `wp_nf3_field_meta` VALUES (26,1,'wrap_styles_border-color','','wrap_styles_border-color','');
INSERT INTO `wp_nf3_field_meta` VALUES (27,1,'wrap_styles_color','','wrap_styles_color','');
INSERT INTO `wp_nf3_field_meta` VALUES (28,1,'wrap_styles_height','','wrap_styles_height','');
INSERT INTO `wp_nf3_field_meta` VALUES (29,1,'wrap_styles_width','','wrap_styles_width','');
INSERT INTO `wp_nf3_field_meta` VALUES (30,1,'wrap_styles_font-size','','wrap_styles_font-size','');
INSERT INTO `wp_nf3_field_meta` VALUES (31,1,'wrap_styles_margin','','wrap_styles_margin','');
INSERT INTO `wp_nf3_field_meta` VALUES (32,1,'wrap_styles_padding','','wrap_styles_padding','');
INSERT INTO `wp_nf3_field_meta` VALUES (33,1,'wrap_styles_display','','wrap_styles_display','');
INSERT INTO `wp_nf3_field_meta` VALUES (34,1,'wrap_styles_float','','wrap_styles_float','');
INSERT INTO `wp_nf3_field_meta` VALUES (35,1,'wrap_styles_show_advanced_css','0','wrap_styles_show_advanced_css','0');
INSERT INTO `wp_nf3_field_meta` VALUES (36,1,'wrap_styles_advanced','','wrap_styles_advanced','');
INSERT INTO `wp_nf3_field_meta` VALUES (37,1,'label_styles_background-color','','label_styles_background-color','');
INSERT INTO `wp_nf3_field_meta` VALUES (38,1,'label_styles_border','','label_styles_border','');
INSERT INTO `wp_nf3_field_meta` VALUES (39,1,'label_styles_border-style','','label_styles_border-style','');
INSERT INTO `wp_nf3_field_meta` VALUES (40,1,'label_styles_border-color','','label_styles_border-color','');
INSERT INTO `wp_nf3_field_meta` VALUES (41,1,'label_styles_color','','label_styles_color','');
INSERT INTO `wp_nf3_field_meta` VALUES (42,1,'label_styles_height','','label_styles_height','');
INSERT INTO `wp_nf3_field_meta` VALUES (43,1,'label_styles_width','','label_styles_width','');
INSERT INTO `wp_nf3_field_meta` VALUES (44,1,'label_styles_font-size','','label_styles_font-size','');
INSERT INTO `wp_nf3_field_meta` VALUES (45,1,'label_styles_margin','','label_styles_margin','');
INSERT INTO `wp_nf3_field_meta` VALUES (46,1,'label_styles_padding','','label_styles_padding','');
INSERT INTO `wp_nf3_field_meta` VALUES (47,1,'label_styles_display','','label_styles_display','');
INSERT INTO `wp_nf3_field_meta` VALUES (48,1,'label_styles_float','','label_styles_float','');
INSERT INTO `wp_nf3_field_meta` VALUES (49,1,'label_styles_show_advanced_css','0','label_styles_show_advanced_css','0');
INSERT INTO `wp_nf3_field_meta` VALUES (50,1,'label_styles_advanced','','label_styles_advanced','');
INSERT INTO `wp_nf3_field_meta` VALUES (51,1,'element_styles_background-color','','element_styles_background-color','');
INSERT INTO `wp_nf3_field_meta` VALUES (52,1,'element_styles_border','','element_styles_border','');
INSERT INTO `wp_nf3_field_meta` VALUES (53,1,'element_styles_border-style','','element_styles_border-style','');
INSERT INTO `wp_nf3_field_meta` VALUES (54,1,'element_styles_border-color','','element_styles_border-color','');
INSERT INTO `wp_nf3_field_meta` VALUES (55,1,'element_styles_color','','element_styles_color','');
INSERT INTO `wp_nf3_field_meta` VALUES (56,1,'element_styles_height','','element_styles_height','');
INSERT INTO `wp_nf3_field_meta` VALUES (57,1,'element_styles_width','','element_styles_width','');
INSERT INTO `wp_nf3_field_meta` VALUES (58,1,'element_styles_font-size','','element_styles_font-size','');
INSERT INTO `wp_nf3_field_meta` VALUES (59,1,'element_styles_margin','','element_styles_margin','');
INSERT INTO `wp_nf3_field_meta` VALUES (60,1,'element_styles_padding','','element_styles_padding','');
INSERT INTO `wp_nf3_field_meta` VALUES (61,1,'element_styles_display','','element_styles_display','');
INSERT INTO `wp_nf3_field_meta` VALUES (62,1,'element_styles_float','','element_styles_float','');
INSERT INTO `wp_nf3_field_meta` VALUES (63,1,'element_styles_show_advanced_css','0','element_styles_show_advanced_css','0');
INSERT INTO `wp_nf3_field_meta` VALUES (64,1,'element_styles_advanced','','element_styles_advanced','');
INSERT INTO `wp_nf3_field_meta` VALUES (65,1,'cellcid','c3277','cellcid','c3277');
INSERT INTO `wp_nf3_field_meta` VALUES (66,2,'label_pos','above','label_pos','above');
INSERT INTO `wp_nf3_field_meta` VALUES (67,2,'required','1','required','1');
INSERT INTO `wp_nf3_field_meta` VALUES (68,2,'order','2','order','2');
INSERT INTO `wp_nf3_field_meta` VALUES (69,2,'placeholder','','placeholder','');
INSERT INTO `wp_nf3_field_meta` VALUES (70,2,'default','','default','');
INSERT INTO `wp_nf3_field_meta` VALUES (71,2,'wrapper_class','','wrapper_class','');
INSERT INTO `wp_nf3_field_meta` VALUES (72,2,'element_class','','element_class','');
INSERT INTO `wp_nf3_field_meta` VALUES (73,2,'objectType','Field','objectType','Field');
INSERT INTO `wp_nf3_field_meta` VALUES (74,2,'objectDomain','fields','objectDomain','fields');
INSERT INTO `wp_nf3_field_meta` VALUES (75,2,'editActive','','editActive','');
INSERT INTO `wp_nf3_field_meta` VALUES (76,2,'container_class','','container_class','');
INSERT INTO `wp_nf3_field_meta` VALUES (77,2,'admin_label','','admin_label','');
INSERT INTO `wp_nf3_field_meta` VALUES (78,2,'help_text','','help_text','');
INSERT INTO `wp_nf3_field_meta` VALUES (79,2,'desc_text','','desc_text','');
INSERT INTO `wp_nf3_field_meta` VALUES (80,2,'wrap_styles_background-color','','wrap_styles_background-color','');
INSERT INTO `wp_nf3_field_meta` VALUES (81,2,'wrap_styles_border','','wrap_styles_border','');
INSERT INTO `wp_nf3_field_meta` VALUES (82,2,'wrap_styles_border-style','','wrap_styles_border-style','');
INSERT INTO `wp_nf3_field_meta` VALUES (83,2,'wrap_styles_border-color','','wrap_styles_border-color','');
INSERT INTO `wp_nf3_field_meta` VALUES (84,2,'wrap_styles_color','','wrap_styles_color','');
INSERT INTO `wp_nf3_field_meta` VALUES (85,2,'wrap_styles_height','','wrap_styles_height','');
INSERT INTO `wp_nf3_field_meta` VALUES (86,2,'wrap_styles_width','','wrap_styles_width','');
INSERT INTO `wp_nf3_field_meta` VALUES (87,2,'wrap_styles_font-size','','wrap_styles_font-size','');
INSERT INTO `wp_nf3_field_meta` VALUES (88,2,'wrap_styles_margin','','wrap_styles_margin','');
INSERT INTO `wp_nf3_field_meta` VALUES (89,2,'wrap_styles_padding','','wrap_styles_padding','');
INSERT INTO `wp_nf3_field_meta` VALUES (90,2,'wrap_styles_display','','wrap_styles_display','');
INSERT INTO `wp_nf3_field_meta` VALUES (91,2,'wrap_styles_float','','wrap_styles_float','');
INSERT INTO `wp_nf3_field_meta` VALUES (92,2,'wrap_styles_show_advanced_css','0','wrap_styles_show_advanced_css','0');
INSERT INTO `wp_nf3_field_meta` VALUES (93,2,'wrap_styles_advanced','','wrap_styles_advanced','');
INSERT INTO `wp_nf3_field_meta` VALUES (94,2,'label_styles_background-color','','label_styles_background-color','');
INSERT INTO `wp_nf3_field_meta` VALUES (95,2,'label_styles_border','','label_styles_border','');
INSERT INTO `wp_nf3_field_meta` VALUES (96,2,'label_styles_border-style','','label_styles_border-style','');
INSERT INTO `wp_nf3_field_meta` VALUES (97,2,'label_styles_border-color','','label_styles_border-color','');
INSERT INTO `wp_nf3_field_meta` VALUES (98,2,'label_styles_color','','label_styles_color','');
INSERT INTO `wp_nf3_field_meta` VALUES (99,2,'label_styles_height','','label_styles_height','');
INSERT INTO `wp_nf3_field_meta` VALUES (100,2,'label_styles_width','','label_styles_width','');
INSERT INTO `wp_nf3_field_meta` VALUES (101,2,'label_styles_font-size','','label_styles_font-size','');
INSERT INTO `wp_nf3_field_meta` VALUES (102,2,'label_styles_margin','','label_styles_margin','');
INSERT INTO `wp_nf3_field_meta` VALUES (103,2,'label_styles_padding','','label_styles_padding','');
INSERT INTO `wp_nf3_field_meta` VALUES (104,2,'label_styles_display','','label_styles_display','');
INSERT INTO `wp_nf3_field_meta` VALUES (105,2,'label_styles_float','','label_styles_float','');
INSERT INTO `wp_nf3_field_meta` VALUES (106,2,'label_styles_show_advanced_css','0','label_styles_show_advanced_css','0');
INSERT INTO `wp_nf3_field_meta` VALUES (107,2,'label_styles_advanced','','label_styles_advanced','');
INSERT INTO `wp_nf3_field_meta` VALUES (108,2,'element_styles_background-color','','element_styles_background-color','');
INSERT INTO `wp_nf3_field_meta` VALUES (109,2,'element_styles_border','','element_styles_border','');
INSERT INTO `wp_nf3_field_meta` VALUES (110,2,'element_styles_border-style','','element_styles_border-style','');
INSERT INTO `wp_nf3_field_meta` VALUES (111,2,'element_styles_border-color','','element_styles_border-color','');
INSERT INTO `wp_nf3_field_meta` VALUES (112,2,'element_styles_color','','element_styles_color','');
INSERT INTO `wp_nf3_field_meta` VALUES (113,2,'element_styles_height','','element_styles_height','');
INSERT INTO `wp_nf3_field_meta` VALUES (114,2,'element_styles_width','','element_styles_width','');
INSERT INTO `wp_nf3_field_meta` VALUES (115,2,'element_styles_font-size','','element_styles_font-size','');
INSERT INTO `wp_nf3_field_meta` VALUES (116,2,'element_styles_margin','','element_styles_margin','');
INSERT INTO `wp_nf3_field_meta` VALUES (117,2,'element_styles_padding','','element_styles_padding','');
INSERT INTO `wp_nf3_field_meta` VALUES (118,2,'element_styles_display','','element_styles_display','');
INSERT INTO `wp_nf3_field_meta` VALUES (119,2,'element_styles_float','','element_styles_float','');
INSERT INTO `wp_nf3_field_meta` VALUES (120,2,'element_styles_show_advanced_css','0','element_styles_show_advanced_css','0');
INSERT INTO `wp_nf3_field_meta` VALUES (121,2,'element_styles_advanced','','element_styles_advanced','');
INSERT INTO `wp_nf3_field_meta` VALUES (122,2,'cellcid','c3281','cellcid','c3281');
INSERT INTO `wp_nf3_field_meta` VALUES (123,3,'label_pos','above','label_pos','above');
INSERT INTO `wp_nf3_field_meta` VALUES (124,3,'required','1','required','1');
INSERT INTO `wp_nf3_field_meta` VALUES (125,3,'order','4','order','4');
INSERT INTO `wp_nf3_field_meta` VALUES (126,3,'placeholder','','placeholder','');
INSERT INTO `wp_nf3_field_meta` VALUES (127,3,'default','','default','');
INSERT INTO `wp_nf3_field_meta` VALUES (128,3,'wrapper_class','','wrapper_class','');
INSERT INTO `wp_nf3_field_meta` VALUES (129,3,'element_class','','element_class','');
INSERT INTO `wp_nf3_field_meta` VALUES (130,3,'objectType','Field','objectType','Field');
INSERT INTO `wp_nf3_field_meta` VALUES (131,3,'objectDomain','fields','objectDomain','fields');
INSERT INTO `wp_nf3_field_meta` VALUES (132,3,'editActive','','editActive','');
INSERT INTO `wp_nf3_field_meta` VALUES (133,3,'container_class','','container_class','');
INSERT INTO `wp_nf3_field_meta` VALUES (134,3,'input_limit','','input_limit','');
INSERT INTO `wp_nf3_field_meta` VALUES (135,3,'input_limit_type','characters','input_limit_type','characters');
INSERT INTO `wp_nf3_field_meta` VALUES (136,3,'input_limit_msg','Character(s) left','input_limit_msg','Character(s) left');
INSERT INTO `wp_nf3_field_meta` VALUES (137,3,'manual_key','','manual_key','');
INSERT INTO `wp_nf3_field_meta` VALUES (138,3,'disable_input','','disable_input','');
INSERT INTO `wp_nf3_field_meta` VALUES (139,3,'admin_label','','admin_label','');
INSERT INTO `wp_nf3_field_meta` VALUES (140,3,'help_text','','help_text','');
INSERT INTO `wp_nf3_field_meta` VALUES (141,3,'desc_text','','desc_text','');
INSERT INTO `wp_nf3_field_meta` VALUES (142,3,'disable_browser_autocomplete','','disable_browser_autocomplete','');
INSERT INTO `wp_nf3_field_meta` VALUES (143,3,'textarea_rte','','textarea_rte','');
INSERT INTO `wp_nf3_field_meta` VALUES (144,3,'disable_rte_mobile','','disable_rte_mobile','');
INSERT INTO `wp_nf3_field_meta` VALUES (145,3,'textarea_media','','textarea_media','');
INSERT INTO `wp_nf3_field_meta` VALUES (146,3,'wrap_styles_background-color','','wrap_styles_background-color','');
INSERT INTO `wp_nf3_field_meta` VALUES (147,3,'wrap_styles_border','','wrap_styles_border','');
INSERT INTO `wp_nf3_field_meta` VALUES (148,3,'wrap_styles_border-style','','wrap_styles_border-style','');
INSERT INTO `wp_nf3_field_meta` VALUES (149,3,'wrap_styles_border-color','','wrap_styles_border-color','');
INSERT INTO `wp_nf3_field_meta` VALUES (150,3,'wrap_styles_color','','wrap_styles_color','');
INSERT INTO `wp_nf3_field_meta` VALUES (151,3,'wrap_styles_height','','wrap_styles_height','');
INSERT INTO `wp_nf3_field_meta` VALUES (152,3,'wrap_styles_width','','wrap_styles_width','');
INSERT INTO `wp_nf3_field_meta` VALUES (153,3,'wrap_styles_font-size','','wrap_styles_font-size','');
INSERT INTO `wp_nf3_field_meta` VALUES (154,3,'wrap_styles_margin','','wrap_styles_margin','');
INSERT INTO `wp_nf3_field_meta` VALUES (155,3,'wrap_styles_padding','','wrap_styles_padding','');
INSERT INTO `wp_nf3_field_meta` VALUES (156,3,'wrap_styles_display','','wrap_styles_display','');
INSERT INTO `wp_nf3_field_meta` VALUES (157,3,'wrap_styles_float','','wrap_styles_float','');
INSERT INTO `wp_nf3_field_meta` VALUES (158,3,'wrap_styles_show_advanced_css','0','wrap_styles_show_advanced_css','0');
INSERT INTO `wp_nf3_field_meta` VALUES (159,3,'wrap_styles_advanced','','wrap_styles_advanced','');
INSERT INTO `wp_nf3_field_meta` VALUES (160,3,'label_styles_background-color','','label_styles_background-color','');
INSERT INTO `wp_nf3_field_meta` VALUES (161,3,'label_styles_border','','label_styles_border','');
INSERT INTO `wp_nf3_field_meta` VALUES (162,3,'label_styles_border-style','','label_styles_border-style','');
INSERT INTO `wp_nf3_field_meta` VALUES (163,3,'label_styles_border-color','','label_styles_border-color','');
INSERT INTO `wp_nf3_field_meta` VALUES (164,3,'label_styles_color','','label_styles_color','');
INSERT INTO `wp_nf3_field_meta` VALUES (165,3,'label_styles_height','','label_styles_height','');
INSERT INTO `wp_nf3_field_meta` VALUES (166,3,'label_styles_width','','label_styles_width','');
INSERT INTO `wp_nf3_field_meta` VALUES (167,3,'label_styles_font-size','','label_styles_font-size','');
INSERT INTO `wp_nf3_field_meta` VALUES (168,3,'label_styles_margin','','label_styles_margin','');
INSERT INTO `wp_nf3_field_meta` VALUES (169,3,'label_styles_padding','','label_styles_padding','');
INSERT INTO `wp_nf3_field_meta` VALUES (170,3,'label_styles_display','','label_styles_display','');
INSERT INTO `wp_nf3_field_meta` VALUES (171,3,'label_styles_float','','label_styles_float','');
INSERT INTO `wp_nf3_field_meta` VALUES (172,3,'label_styles_show_advanced_css','0','label_styles_show_advanced_css','0');
INSERT INTO `wp_nf3_field_meta` VALUES (173,3,'label_styles_advanced','','label_styles_advanced','');
INSERT INTO `wp_nf3_field_meta` VALUES (174,3,'element_styles_background-color','','element_styles_background-color','');
INSERT INTO `wp_nf3_field_meta` VALUES (175,3,'element_styles_border','','element_styles_border','');
INSERT INTO `wp_nf3_field_meta` VALUES (176,3,'element_styles_border-style','','element_styles_border-style','');
INSERT INTO `wp_nf3_field_meta` VALUES (177,3,'element_styles_border-color','','element_styles_border-color','');
INSERT INTO `wp_nf3_field_meta` VALUES (178,3,'element_styles_color','','element_styles_color','');
INSERT INTO `wp_nf3_field_meta` VALUES (179,3,'element_styles_height','','element_styles_height','');
INSERT INTO `wp_nf3_field_meta` VALUES (180,3,'element_styles_width','','element_styles_width','');
INSERT INTO `wp_nf3_field_meta` VALUES (181,3,'element_styles_font-size','','element_styles_font-size','');
INSERT INTO `wp_nf3_field_meta` VALUES (182,3,'element_styles_margin','','element_styles_margin','');
INSERT INTO `wp_nf3_field_meta` VALUES (183,3,'element_styles_padding','','element_styles_padding','');
INSERT INTO `wp_nf3_field_meta` VALUES (184,3,'element_styles_display','','element_styles_display','');
INSERT INTO `wp_nf3_field_meta` VALUES (185,3,'element_styles_float','','element_styles_float','');
INSERT INTO `wp_nf3_field_meta` VALUES (186,3,'element_styles_show_advanced_css','0','element_styles_show_advanced_css','0');
INSERT INTO `wp_nf3_field_meta` VALUES (187,3,'element_styles_advanced','','element_styles_advanced','');
INSERT INTO `wp_nf3_field_meta` VALUES (188,3,'cellcid','c3284','cellcid','c3284');
INSERT INTO `wp_nf3_field_meta` VALUES (189,4,'processing_label','Processing','processing_label','Processing');
INSERT INTO `wp_nf3_field_meta` VALUES (190,4,'order','6','order','6');
INSERT INTO `wp_nf3_field_meta` VALUES (191,4,'objectType','Field','objectType','Field');
INSERT INTO `wp_nf3_field_meta` VALUES (192,4,'objectDomain','fields','objectDomain','fields');
INSERT INTO `wp_nf3_field_meta` VALUES (193,4,'editActive','','editActive','');
INSERT INTO `wp_nf3_field_meta` VALUES (194,4,'container_class','','container_class','');
INSERT INTO `wp_nf3_field_meta` VALUES (195,4,'element_class','','element_class','');
INSERT INTO `wp_nf3_field_meta` VALUES (196,4,'wrap_styles_background-color','','wrap_styles_background-color','');
INSERT INTO `wp_nf3_field_meta` VALUES (197,4,'wrap_styles_border','','wrap_styles_border','');
INSERT INTO `wp_nf3_field_meta` VALUES (198,4,'wrap_styles_border-style','','wrap_styles_border-style','');
INSERT INTO `wp_nf3_field_meta` VALUES (199,4,'wrap_styles_border-color','','wrap_styles_border-color','');
INSERT INTO `wp_nf3_field_meta` VALUES (200,4,'wrap_styles_color','','wrap_styles_color','');
INSERT INTO `wp_nf3_field_meta` VALUES (201,4,'wrap_styles_height','','wrap_styles_height','');
INSERT INTO `wp_nf3_field_meta` VALUES (202,4,'wrap_styles_width','','wrap_styles_width','');
INSERT INTO `wp_nf3_field_meta` VALUES (203,4,'wrap_styles_font-size','','wrap_styles_font-size','');
INSERT INTO `wp_nf3_field_meta` VALUES (204,4,'wrap_styles_margin','','wrap_styles_margin','');
INSERT INTO `wp_nf3_field_meta` VALUES (205,4,'wrap_styles_padding','','wrap_styles_padding','');
INSERT INTO `wp_nf3_field_meta` VALUES (206,4,'wrap_styles_display','','wrap_styles_display','');
INSERT INTO `wp_nf3_field_meta` VALUES (207,4,'wrap_styles_float','','wrap_styles_float','');
INSERT INTO `wp_nf3_field_meta` VALUES (208,4,'wrap_styles_show_advanced_css','0','wrap_styles_show_advanced_css','0');
INSERT INTO `wp_nf3_field_meta` VALUES (209,4,'wrap_styles_advanced','','wrap_styles_advanced','');
INSERT INTO `wp_nf3_field_meta` VALUES (210,4,'label_styles_background-color','','label_styles_background-color','');
INSERT INTO `wp_nf3_field_meta` VALUES (211,4,'label_styles_border','','label_styles_border','');
INSERT INTO `wp_nf3_field_meta` VALUES (212,4,'label_styles_border-style','','label_styles_border-style','');
INSERT INTO `wp_nf3_field_meta` VALUES (213,4,'label_styles_border-color','','label_styles_border-color','');
INSERT INTO `wp_nf3_field_meta` VALUES (214,4,'label_styles_color','','label_styles_color','');
INSERT INTO `wp_nf3_field_meta` VALUES (215,4,'label_styles_height','','label_styles_height','');
INSERT INTO `wp_nf3_field_meta` VALUES (216,4,'label_styles_width','','label_styles_width','');
INSERT INTO `wp_nf3_field_meta` VALUES (217,4,'label_styles_font-size','','label_styles_font-size','');
INSERT INTO `wp_nf3_field_meta` VALUES (218,4,'label_styles_margin','','label_styles_margin','');
INSERT INTO `wp_nf3_field_meta` VALUES (219,4,'label_styles_padding','','label_styles_padding','');
INSERT INTO `wp_nf3_field_meta` VALUES (220,4,'label_styles_display','','label_styles_display','');
INSERT INTO `wp_nf3_field_meta` VALUES (221,4,'label_styles_float','','label_styles_float','');
INSERT INTO `wp_nf3_field_meta` VALUES (222,4,'label_styles_show_advanced_css','0','label_styles_show_advanced_css','0');
INSERT INTO `wp_nf3_field_meta` VALUES (223,4,'label_styles_advanced','','label_styles_advanced','');
INSERT INTO `wp_nf3_field_meta` VALUES (224,4,'element_styles_background-color','','element_styles_background-color','');
INSERT INTO `wp_nf3_field_meta` VALUES (225,4,'element_styles_border','','element_styles_border','');
INSERT INTO `wp_nf3_field_meta` VALUES (226,4,'element_styles_border-style','','element_styles_border-style','');
INSERT INTO `wp_nf3_field_meta` VALUES (227,4,'element_styles_border-color','','element_styles_border-color','');
INSERT INTO `wp_nf3_field_meta` VALUES (228,4,'element_styles_color','','element_styles_color','');
INSERT INTO `wp_nf3_field_meta` VALUES (229,4,'element_styles_height','','element_styles_height','');
INSERT INTO `wp_nf3_field_meta` VALUES (230,4,'element_styles_width','','element_styles_width','');
INSERT INTO `wp_nf3_field_meta` VALUES (231,4,'element_styles_font-size','','element_styles_font-size','');
INSERT INTO `wp_nf3_field_meta` VALUES (232,4,'element_styles_margin','','element_styles_margin','');
INSERT INTO `wp_nf3_field_meta` VALUES (233,4,'element_styles_padding','','element_styles_padding','');
INSERT INTO `wp_nf3_field_meta` VALUES (234,4,'element_styles_display','','element_styles_display','');
INSERT INTO `wp_nf3_field_meta` VALUES (235,4,'element_styles_float','','element_styles_float','');
INSERT INTO `wp_nf3_field_meta` VALUES (236,4,'element_styles_show_advanced_css','0','element_styles_show_advanced_css','0');
INSERT INTO `wp_nf3_field_meta` VALUES (237,4,'element_styles_advanced','','element_styles_advanced','');
INSERT INTO `wp_nf3_field_meta` VALUES (238,4,'submit_element_hover_styles_background-color','','submit_element_hover_styles_background-color','');
INSERT INTO `wp_nf3_field_meta` VALUES (239,4,'submit_element_hover_styles_border','','submit_element_hover_styles_border','');
INSERT INTO `wp_nf3_field_meta` VALUES (240,4,'submit_element_hover_styles_border-style','','submit_element_hover_styles_border-style','');
INSERT INTO `wp_nf3_field_meta` VALUES (241,4,'submit_element_hover_styles_border-color','','submit_element_hover_styles_border-color','');
INSERT INTO `wp_nf3_field_meta` VALUES (242,4,'submit_element_hover_styles_color','','submit_element_hover_styles_color','');
INSERT INTO `wp_nf3_field_meta` VALUES (243,4,'submit_element_hover_styles_height','','submit_element_hover_styles_height','');
INSERT INTO `wp_nf3_field_meta` VALUES (244,4,'submit_element_hover_styles_width','','submit_element_hover_styles_width','');
INSERT INTO `wp_nf3_field_meta` VALUES (245,4,'submit_element_hover_styles_font-size','','submit_element_hover_styles_font-size','');
INSERT INTO `wp_nf3_field_meta` VALUES (246,4,'submit_element_hover_styles_margin','','submit_element_hover_styles_margin','');
INSERT INTO `wp_nf3_field_meta` VALUES (247,4,'submit_element_hover_styles_padding','','submit_element_hover_styles_padding','');
INSERT INTO `wp_nf3_field_meta` VALUES (248,4,'submit_element_hover_styles_display','','submit_element_hover_styles_display','');
INSERT INTO `wp_nf3_field_meta` VALUES (249,4,'submit_element_hover_styles_float','','submit_element_hover_styles_float','');
INSERT INTO `wp_nf3_field_meta` VALUES (250,4,'submit_element_hover_styles_show_advanced_css','0','submit_element_hover_styles_show_advanced_css','0');
INSERT INTO `wp_nf3_field_meta` VALUES (251,4,'submit_element_hover_styles_advanced','','submit_element_hover_styles_advanced','');
INSERT INTO `wp_nf3_field_meta` VALUES (252,4,'cellcid','c3287','cellcid','c3287');
INSERT INTO `wp_nf3_field_meta` VALUES (253,1,'field_label','Name','field_label','Name');
INSERT INTO `wp_nf3_field_meta` VALUES (254,1,'field_key','name','field_key','name');
INSERT INTO `wp_nf3_field_meta` VALUES (255,2,'field_label','Email','field_label','Email');
INSERT INTO `wp_nf3_field_meta` VALUES (256,2,'field_key','email','field_key','email');
INSERT INTO `wp_nf3_field_meta` VALUES (257,3,'field_label','Message','field_label','Message');
INSERT INTO `wp_nf3_field_meta` VALUES (258,3,'field_key','message','field_key','message');
INSERT INTO `wp_nf3_field_meta` VALUES (259,4,'field_label','Submit','field_label','Submit');
INSERT INTO `wp_nf3_field_meta` VALUES (260,4,'field_key','submit','field_key','submit');
INSERT INTO `wp_nf3_field_meta` VALUES (261,1,'idAttribute','id','idAttribute','id');
INSERT INTO `wp_nf3_field_meta` VALUES (262,1,'label','Name','label','Name');
INSERT INTO `wp_nf3_field_meta` VALUES (263,1,'key','name','key','name');
INSERT INTO `wp_nf3_field_meta` VALUES (264,1,'type','textbox','type','textbox');
INSERT INTO `wp_nf3_field_meta` VALUES (265,1,'created_at','2021-09-16 10:12:46','created_at','2021-09-16 10:12:46');
INSERT INTO `wp_nf3_field_meta` VALUES (266,1,'custom_name_attribute','','custom_name_attribute','');
INSERT INTO `wp_nf3_field_meta` VALUES (267,1,'personally_identifiable','','personally_identifiable','');
INSERT INTO `wp_nf3_field_meta` VALUES (268,1,'value','','value','');
INSERT INTO `wp_nf3_field_meta` VALUES (269,2,'idAttribute','id','idAttribute','id');
INSERT INTO `wp_nf3_field_meta` VALUES (270,2,'label','Email','label','Email');
INSERT INTO `wp_nf3_field_meta` VALUES (271,2,'key','email','key','email');
INSERT INTO `wp_nf3_field_meta` VALUES (272,2,'type','email','type','email');
INSERT INTO `wp_nf3_field_meta` VALUES (273,2,'created_at','2021-09-16 10:12:46','created_at','2021-09-16 10:12:46');
INSERT INTO `wp_nf3_field_meta` VALUES (274,2,'custom_name_attribute','email','custom_name_attribute','email');
INSERT INTO `wp_nf3_field_meta` VALUES (275,2,'personally_identifiable','1','personally_identifiable','1');
INSERT INTO `wp_nf3_field_meta` VALUES (276,2,'value','','value','');
INSERT INTO `wp_nf3_field_meta` VALUES (277,3,'idAttribute','id','idAttribute','id');
INSERT INTO `wp_nf3_field_meta` VALUES (278,3,'label','Message','label','Message');
INSERT INTO `wp_nf3_field_meta` VALUES (279,3,'key','message_1632311094131','key','message_1632311094131');
INSERT INTO `wp_nf3_field_meta` VALUES (280,3,'type','textarea','type','textarea');
INSERT INTO `wp_nf3_field_meta` VALUES (281,3,'created_at','2021-09-16 10:12:46','created_at','2021-09-16 10:12:46');
INSERT INTO `wp_nf3_field_meta` VALUES (282,3,'value','','value','');
INSERT INTO `wp_nf3_field_meta` VALUES (283,4,'idAttribute','id','idAttribute','id');
INSERT INTO `wp_nf3_field_meta` VALUES (284,4,'label','SEND','label','SEND');
INSERT INTO `wp_nf3_field_meta` VALUES (285,4,'key','send_1631882264354','key','send_1631882264354');
INSERT INTO `wp_nf3_field_meta` VALUES (286,4,'type','submit','type','submit');
INSERT INTO `wp_nf3_field_meta` VALUES (287,4,'created_at','2021-09-16 10:12:46','created_at','2021-09-16 10:12:46');
INSERT INTO `wp_nf3_field_meta` VALUES (288,2,'drawerDisabled','','drawerDisabled','');
INSERT INTO `wp_nf3_field_meta` VALUES (299,6,'editActive','','editActive','');
INSERT INTO `wp_nf3_field_meta` VALUES (300,6,'order','4','order','4');
INSERT INTO `wp_nf3_field_meta` VALUES (301,6,'idAttribute','id','idAttribute','id');
INSERT INTO `wp_nf3_field_meta` VALUES (302,6,'label','Anti-Spam','label','Anti-Spam');
INSERT INTO `wp_nf3_field_meta` VALUES (303,6,'type','spam','type','spam');
INSERT INTO `wp_nf3_field_meta` VALUES (304,6,'key','spam_1631791888055','key','spam_1631791888055');
INSERT INTO `wp_nf3_field_meta` VALUES (305,6,'label_pos','default','label_pos','default');
INSERT INTO `wp_nf3_field_meta` VALUES (306,6,'required','1','required','1');
INSERT INTO `wp_nf3_field_meta` VALUES (307,6,'default','','default','');
INSERT INTO `wp_nf3_field_meta` VALUES (308,6,'placeholder','ANSWER','placeholder','ANSWER');
INSERT INTO `wp_nf3_field_meta` VALUES (309,6,'container_class','','container_class','');
INSERT INTO `wp_nf3_field_meta` VALUES (310,6,'element_class','','element_class','');
INSERT INTO `wp_nf3_field_meta` VALUES (311,6,'input_limit','','input_limit','');
INSERT INTO `wp_nf3_field_meta` VALUES (312,6,'input_limit_type','characters','input_limit_type','characters');
INSERT INTO `wp_nf3_field_meta` VALUES (313,6,'input_limit_msg','Character(s) left','input_limit_msg','Character(s) left');
INSERT INTO `wp_nf3_field_meta` VALUES (314,6,'manual_key','1','manual_key','1');
INSERT INTO `wp_nf3_field_meta` VALUES (315,6,'admin_label','','admin_label','');
INSERT INTO `wp_nf3_field_meta` VALUES (316,6,'help_text','','help_text','');
INSERT INTO `wp_nf3_field_meta` VALUES (317,6,'desc_text','<p>4-1<br></p>','desc_text','<p>4-1<br></p>');
INSERT INTO `wp_nf3_field_meta` VALUES (318,6,'spam_answer','3','spam_answer','3');
INSERT INTO `wp_nf3_field_meta` VALUES (319,6,'value','','value','');
INSERT INTO `wp_nf3_field_meta` VALUES (320,6,'drawerDisabled','','drawerDisabled','');
INSERT INTO `wp_nf3_field_meta` VALUES (321,4,'drawerDisabled','','drawerDisabled','');
INSERT INTO `wp_nf3_field_meta` VALUES (331,8,'editActive','','editActive','');
INSERT INTO `wp_nf3_field_meta` VALUES (332,8,'order','5','order','5');
INSERT INTO `wp_nf3_field_meta` VALUES (333,8,'idAttribute','id','idAttribute','id');
INSERT INTO `wp_nf3_field_meta` VALUES (334,8,'label','I\'m not a fan of spam either!   :)','label','I\'m not a fan of spam either!   :)');
INSERT INTO `wp_nf3_field_meta` VALUES (335,8,'type','spam','type','spam');
INSERT INTO `wp_nf3_field_meta` VALUES (336,8,'key','spam_1631793146903','key','spam_1631793146903');
INSERT INTO `wp_nf3_field_meta` VALUES (337,8,'label_pos','default','label_pos','default');
INSERT INTO `wp_nf3_field_meta` VALUES (338,8,'required','1','required','1');
INSERT INTO `wp_nf3_field_meta` VALUES (339,8,'default','','default','');
INSERT INTO `wp_nf3_field_meta` VALUES (340,8,'placeholder','Answer','placeholder','Answer');
INSERT INTO `wp_nf3_field_meta` VALUES (341,8,'container_class','','container_class','');
INSERT INTO `wp_nf3_field_meta` VALUES (342,8,'element_class','','element_class','');
INSERT INTO `wp_nf3_field_meta` VALUES (343,8,'input_limit','','input_limit','');
INSERT INTO `wp_nf3_field_meta` VALUES (344,8,'input_limit_type','characters','input_limit_type','characters');
INSERT INTO `wp_nf3_field_meta` VALUES (345,8,'input_limit_msg','Character(s) left','input_limit_msg','Character(s) left');
INSERT INTO `wp_nf3_field_meta` VALUES (346,8,'manual_key','1','manual_key','1');
INSERT INTO `wp_nf3_field_meta` VALUES (347,8,'admin_label','','admin_label','');
INSERT INTO `wp_nf3_field_meta` VALUES (348,8,'help_text','','help_text','');
INSERT INTO `wp_nf3_field_meta` VALUES (349,8,'desc_text','<p>5 + 4 =<br></p>','desc_text','<p>5 + 4 =<br></p>');
INSERT INTO `wp_nf3_field_meta` VALUES (350,8,'spam_answer','9','spam_answer','9');
INSERT INTO `wp_nf3_field_meta` VALUES (351,8,'value','','value','');
INSERT INTO `wp_nf3_field_meta` VALUES (352,8,'drawerDisabled','','drawerDisabled','');
INSERT INTO `wp_nf3_field_meta` VALUES (353,9,'editActive','','editActive','');
INSERT INTO `wp_nf3_field_meta` VALUES (354,9,'order','3','order','3');
INSERT INTO `wp_nf3_field_meta` VALUES (355,9,'idAttribute','id','idAttribute','id');
INSERT INTO `wp_nf3_field_meta` VALUES (356,9,'label','Subject','label','Subject');
INSERT INTO `wp_nf3_field_meta` VALUES (357,9,'type','textbox','type','textbox');
INSERT INTO `wp_nf3_field_meta` VALUES (358,9,'key','subject_1631798513617','key','subject_1631798513617');
INSERT INTO `wp_nf3_field_meta` VALUES (359,9,'label_pos','default','label_pos','default');
INSERT INTO `wp_nf3_field_meta` VALUES (360,9,'required','','required','');
INSERT INTO `wp_nf3_field_meta` VALUES (361,9,'default','','default','');
INSERT INTO `wp_nf3_field_meta` VALUES (362,9,'placeholder','','placeholder','');
INSERT INTO `wp_nf3_field_meta` VALUES (363,9,'container_class','','container_class','');
INSERT INTO `wp_nf3_field_meta` VALUES (364,9,'element_class','','element_class','');
INSERT INTO `wp_nf3_field_meta` VALUES (365,9,'input_limit','','input_limit','');
INSERT INTO `wp_nf3_field_meta` VALUES (366,9,'input_limit_type','characters','input_limit_type','characters');
INSERT INTO `wp_nf3_field_meta` VALUES (367,9,'input_limit_msg','Character(s) left','input_limit_msg','Character(s) left');
INSERT INTO `wp_nf3_field_meta` VALUES (368,9,'manual_key','','manual_key','');
INSERT INTO `wp_nf3_field_meta` VALUES (369,9,'admin_label','','admin_label','');
INSERT INTO `wp_nf3_field_meta` VALUES (370,9,'help_text','','help_text','');
INSERT INTO `wp_nf3_field_meta` VALUES (371,9,'mask','','mask','');
INSERT INTO `wp_nf3_field_meta` VALUES (372,9,'custom_mask','','custom_mask','');
INSERT INTO `wp_nf3_field_meta` VALUES (373,9,'custom_name_attribute','','custom_name_attribute','');
INSERT INTO `wp_nf3_field_meta` VALUES (374,9,'personally_identifiable','','personally_identifiable','');
INSERT INTO `wp_nf3_field_meta` VALUES (375,9,'value','','value','');
INSERT INTO `wp_nf3_field_meta` VALUES (376,9,'drawerDisabled','','drawerDisabled','');
INSERT INTO `wp_nf3_field_meta` VALUES (387,3,'drawerDisabled','','drawerDisabled','');
/*!40000 ALTER TABLE `wp_nf3_field_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_nf3_fields`
--

DROP TABLE IF EXISTS `wp_nf3_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_nf3_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` longtext COLLATE utf8mb4_general_ci,
  `key` longtext COLLATE utf8mb4_general_ci,
  `type` longtext COLLATE utf8mb4_general_ci,
  `parent_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `field_label` longtext COLLATE utf8mb4_general_ci,
  `field_key` longtext COLLATE utf8mb4_general_ci,
  `order` int(11) DEFAULT NULL,
  `required` bit(1) DEFAULT NULL,
  `default_value` longtext COLLATE utf8mb4_general_ci,
  `label_pos` varchar(15) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `personally_identifiable` bit(1) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_nf3_fields`
--

LOCK TABLES `wp_nf3_fields` WRITE;
/*!40000 ALTER TABLE `wp_nf3_fields` DISABLE KEYS */;
INSERT INTO `wp_nf3_fields` VALUES (1,'Name','name','textbox',1,'2021-09-16 09:12:46','2021-09-16 10:12:46','Name','name',1,_binary '','','above',_binary '\0');
INSERT INTO `wp_nf3_fields` VALUES (2,'Email','email','email',1,'2021-09-16 09:12:46','2021-09-16 10:12:46','Email','email',2,_binary '','','above',_binary '');
INSERT INTO `wp_nf3_fields` VALUES (3,'Message','message_1632311094131','textarea',1,'2021-09-16 09:12:46','2021-09-16 10:12:46','Message','message_1632311094131',4,_binary '','','above',_binary '\0');
INSERT INTO `wp_nf3_fields` VALUES (4,'SEND','send_1631882264354','submit',1,'2021-09-16 09:12:46','2021-09-16 10:12:46','SEND','send_1631882264354',6,_binary '\0','','',_binary '\0');
INSERT INTO `wp_nf3_fields` VALUES (6,'Anti-Spam','spam_1631791888055','spam',1,NULL,NULL,'Anti-Spam','spam_1631791888055',4,_binary '','','default',_binary '\0');
INSERT INTO `wp_nf3_fields` VALUES (8,'I\'m not a fan of spam either!   :)','spam_1631793146903','spam',1,NULL,NULL,'I\'m not a fan of spam either!   :)','spam_1631793146903',5,_binary '','','default',_binary '\0');
INSERT INTO `wp_nf3_fields` VALUES (9,'Subject','subject_1631798513617','textbox',1,NULL,NULL,'Subject','subject_1631798513617',3,_binary '\0','','default',_binary '\0');
/*!40000 ALTER TABLE `wp_nf3_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_nf3_form_meta`
--

DROP TABLE IF EXISTS `wp_nf3_form_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_nf3_form_meta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL,
  `key` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_general_ci,
  `meta_key` longtext COLLATE utf8mb4_general_ci,
  `meta_value` longtext COLLATE utf8mb4_general_ci,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_nf3_form_meta`
--

LOCK TABLES `wp_nf3_form_meta` WRITE;
/*!40000 ALTER TABLE `wp_nf3_form_meta` DISABLE KEYS */;
INSERT INTO `wp_nf3_form_meta` VALUES (1,1,'key','','key','');
INSERT INTO `wp_nf3_form_meta` VALUES (2,1,'created_at','2021-09-16 10:12:45','created_at','2021-09-16 10:12:45');
INSERT INTO `wp_nf3_form_meta` VALUES (3,1,'default_label_pos','above','default_label_pos','above');
INSERT INTO `wp_nf3_form_meta` VALUES (4,1,'conditions','a:0:{}','conditions','a:0:{}');
INSERT INTO `wp_nf3_form_meta` VALUES (5,1,'objectType','Form Setting','objectType','Form Setting');
INSERT INTO `wp_nf3_form_meta` VALUES (6,1,'editActive','1','editActive','1');
INSERT INTO `wp_nf3_form_meta` VALUES (7,1,'show_title','0','show_title','0');
INSERT INTO `wp_nf3_form_meta` VALUES (8,1,'clear_complete','1','clear_complete','1');
INSERT INTO `wp_nf3_form_meta` VALUES (9,1,'hide_complete','1','hide_complete','1');
INSERT INTO `wp_nf3_form_meta` VALUES (10,1,'wrapper_class','','wrapper_class','');
INSERT INTO `wp_nf3_form_meta` VALUES (11,1,'element_class','','element_class','');
INSERT INTO `wp_nf3_form_meta` VALUES (12,1,'add_submit','1','add_submit','1');
INSERT INTO `wp_nf3_form_meta` VALUES (13,1,'logged_in','','logged_in','');
INSERT INTO `wp_nf3_form_meta` VALUES (14,1,'not_logged_in_msg','','not_logged_in_msg','');
INSERT INTO `wp_nf3_form_meta` VALUES (15,1,'sub_limit_number','','sub_limit_number','');
INSERT INTO `wp_nf3_form_meta` VALUES (16,1,'sub_limit_msg','','sub_limit_msg','');
INSERT INTO `wp_nf3_form_meta` VALUES (17,1,'calculations','a:0:{}','calculations','a:0:{}');
INSERT INTO `wp_nf3_form_meta` VALUES (18,1,'formContentData','a:6:{i:0;s:4:\"name\";i:1;s:5:\"email\";i:2;s:21:\"subject_1631798513617\";i:3;s:21:\"message_1632311094131\";i:4;s:18:\"spam_1631793146903\";i:5;s:18:\"send_1631882264354\";}','formContentData','a:6:{i:0;s:4:\"name\";i:1;s:5:\"email\";i:2;s:21:\"subject_1631798513617\";i:3;s:21:\"message_1632311094131\";i:4;s:18:\"spam_1631793146903\";i:5;s:18:\"send_1631882264354\";}');
INSERT INTO `wp_nf3_form_meta` VALUES (19,1,'container_styles_background-color','','container_styles_background-color','');
INSERT INTO `wp_nf3_form_meta` VALUES (20,1,'container_styles_border','','container_styles_border','');
INSERT INTO `wp_nf3_form_meta` VALUES (21,1,'container_styles_border-style','','container_styles_border-style','');
INSERT INTO `wp_nf3_form_meta` VALUES (22,1,'container_styles_border-color','','container_styles_border-color','');
INSERT INTO `wp_nf3_form_meta` VALUES (23,1,'container_styles_color','','container_styles_color','');
INSERT INTO `wp_nf3_form_meta` VALUES (24,1,'container_styles_height','','container_styles_height','');
INSERT INTO `wp_nf3_form_meta` VALUES (25,1,'container_styles_width','','container_styles_width','');
INSERT INTO `wp_nf3_form_meta` VALUES (26,1,'container_styles_font-size','','container_styles_font-size','');
INSERT INTO `wp_nf3_form_meta` VALUES (27,1,'container_styles_margin','','container_styles_margin','');
INSERT INTO `wp_nf3_form_meta` VALUES (28,1,'container_styles_padding','','container_styles_padding','');
INSERT INTO `wp_nf3_form_meta` VALUES (29,1,'container_styles_display','','container_styles_display','');
INSERT INTO `wp_nf3_form_meta` VALUES (30,1,'container_styles_float','','container_styles_float','');
INSERT INTO `wp_nf3_form_meta` VALUES (31,1,'container_styles_show_advanced_css','0','container_styles_show_advanced_css','0');
INSERT INTO `wp_nf3_form_meta` VALUES (32,1,'container_styles_advanced','','container_styles_advanced','');
INSERT INTO `wp_nf3_form_meta` VALUES (33,1,'title_styles_background-color','','title_styles_background-color','');
INSERT INTO `wp_nf3_form_meta` VALUES (34,1,'title_styles_border','','title_styles_border','');
INSERT INTO `wp_nf3_form_meta` VALUES (35,1,'title_styles_border-style','','title_styles_border-style','');
INSERT INTO `wp_nf3_form_meta` VALUES (36,1,'title_styles_border-color','','title_styles_border-color','');
INSERT INTO `wp_nf3_form_meta` VALUES (37,1,'title_styles_color','','title_styles_color','');
INSERT INTO `wp_nf3_form_meta` VALUES (38,1,'title_styles_height','','title_styles_height','');
INSERT INTO `wp_nf3_form_meta` VALUES (39,1,'title_styles_width','','title_styles_width','');
INSERT INTO `wp_nf3_form_meta` VALUES (40,1,'title_styles_font-size','','title_styles_font-size','');
INSERT INTO `wp_nf3_form_meta` VALUES (41,1,'title_styles_margin','','title_styles_margin','');
INSERT INTO `wp_nf3_form_meta` VALUES (42,1,'title_styles_padding','','title_styles_padding','');
INSERT INTO `wp_nf3_form_meta` VALUES (43,1,'title_styles_display','','title_styles_display','');
INSERT INTO `wp_nf3_form_meta` VALUES (44,1,'title_styles_float','','title_styles_float','');
INSERT INTO `wp_nf3_form_meta` VALUES (45,1,'title_styles_show_advanced_css','0','title_styles_show_advanced_css','0');
INSERT INTO `wp_nf3_form_meta` VALUES (46,1,'title_styles_advanced','','title_styles_advanced','');
INSERT INTO `wp_nf3_form_meta` VALUES (47,1,'row_styles_background-color','','row_styles_background-color','');
INSERT INTO `wp_nf3_form_meta` VALUES (48,1,'row_styles_border','','row_styles_border','');
INSERT INTO `wp_nf3_form_meta` VALUES (49,1,'row_styles_border-style','','row_styles_border-style','');
INSERT INTO `wp_nf3_form_meta` VALUES (50,1,'row_styles_border-color','','row_styles_border-color','');
INSERT INTO `wp_nf3_form_meta` VALUES (51,1,'row_styles_color','','row_styles_color','');
INSERT INTO `wp_nf3_form_meta` VALUES (52,1,'row_styles_height','','row_styles_height','');
INSERT INTO `wp_nf3_form_meta` VALUES (53,1,'row_styles_width','','row_styles_width','');
INSERT INTO `wp_nf3_form_meta` VALUES (54,1,'row_styles_font-size','','row_styles_font-size','');
INSERT INTO `wp_nf3_form_meta` VALUES (55,1,'row_styles_margin','','row_styles_margin','');
INSERT INTO `wp_nf3_form_meta` VALUES (56,1,'row_styles_padding','','row_styles_padding','');
INSERT INTO `wp_nf3_form_meta` VALUES (57,1,'row_styles_display','','row_styles_display','');
INSERT INTO `wp_nf3_form_meta` VALUES (58,1,'row_styles_show_advanced_css','0','row_styles_show_advanced_css','0');
INSERT INTO `wp_nf3_form_meta` VALUES (59,1,'row_styles_advanced','','row_styles_advanced','');
INSERT INTO `wp_nf3_form_meta` VALUES (60,1,'row-odd_styles_background-color','','row-odd_styles_background-color','');
INSERT INTO `wp_nf3_form_meta` VALUES (61,1,'row-odd_styles_border','','row-odd_styles_border','');
INSERT INTO `wp_nf3_form_meta` VALUES (62,1,'row-odd_styles_border-style','','row-odd_styles_border-style','');
INSERT INTO `wp_nf3_form_meta` VALUES (63,1,'row-odd_styles_border-color','','row-odd_styles_border-color','');
INSERT INTO `wp_nf3_form_meta` VALUES (64,1,'row-odd_styles_color','','row-odd_styles_color','');
INSERT INTO `wp_nf3_form_meta` VALUES (65,1,'row-odd_styles_height','','row-odd_styles_height','');
INSERT INTO `wp_nf3_form_meta` VALUES (66,1,'row-odd_styles_width','','row-odd_styles_width','');
INSERT INTO `wp_nf3_form_meta` VALUES (67,1,'row-odd_styles_font-size','','row-odd_styles_font-size','');
INSERT INTO `wp_nf3_form_meta` VALUES (68,1,'row-odd_styles_margin','','row-odd_styles_margin','');
INSERT INTO `wp_nf3_form_meta` VALUES (69,1,'row-odd_styles_padding','','row-odd_styles_padding','');
INSERT INTO `wp_nf3_form_meta` VALUES (70,1,'row-odd_styles_display','','row-odd_styles_display','');
INSERT INTO `wp_nf3_form_meta` VALUES (71,1,'row-odd_styles_show_advanced_css','0','row-odd_styles_show_advanced_css','0');
INSERT INTO `wp_nf3_form_meta` VALUES (72,1,'row-odd_styles_advanced','','row-odd_styles_advanced','');
INSERT INTO `wp_nf3_form_meta` VALUES (73,1,'success-msg_styles_background-color','','success-msg_styles_background-color','');
INSERT INTO `wp_nf3_form_meta` VALUES (74,1,'success-msg_styles_border','','success-msg_styles_border','');
INSERT INTO `wp_nf3_form_meta` VALUES (75,1,'success-msg_styles_border-style','','success-msg_styles_border-style','');
INSERT INTO `wp_nf3_form_meta` VALUES (76,1,'success-msg_styles_border-color','','success-msg_styles_border-color','');
INSERT INTO `wp_nf3_form_meta` VALUES (77,1,'success-msg_styles_color','','success-msg_styles_color','');
INSERT INTO `wp_nf3_form_meta` VALUES (78,1,'success-msg_styles_height','','success-msg_styles_height','');
INSERT INTO `wp_nf3_form_meta` VALUES (79,1,'success-msg_styles_width','','success-msg_styles_width','');
INSERT INTO `wp_nf3_form_meta` VALUES (80,1,'success-msg_styles_font-size','','success-msg_styles_font-size','');
INSERT INTO `wp_nf3_form_meta` VALUES (81,1,'success-msg_styles_margin','','success-msg_styles_margin','');
INSERT INTO `wp_nf3_form_meta` VALUES (82,1,'success-msg_styles_padding','','success-msg_styles_padding','');
INSERT INTO `wp_nf3_form_meta` VALUES (83,1,'success-msg_styles_display','','success-msg_styles_display','');
INSERT INTO `wp_nf3_form_meta` VALUES (84,1,'success-msg_styles_show_advanced_css','0','success-msg_styles_show_advanced_css','0');
INSERT INTO `wp_nf3_form_meta` VALUES (85,1,'success-msg_styles_advanced','','success-msg_styles_advanced','');
INSERT INTO `wp_nf3_form_meta` VALUES (86,1,'error_msg_styles_background-color','','error_msg_styles_background-color','');
INSERT INTO `wp_nf3_form_meta` VALUES (87,1,'error_msg_styles_border','','error_msg_styles_border','');
INSERT INTO `wp_nf3_form_meta` VALUES (88,1,'error_msg_styles_border-style','','error_msg_styles_border-style','');
INSERT INTO `wp_nf3_form_meta` VALUES (89,1,'error_msg_styles_border-color','','error_msg_styles_border-color','');
INSERT INTO `wp_nf3_form_meta` VALUES (90,1,'error_msg_styles_color','','error_msg_styles_color','');
INSERT INTO `wp_nf3_form_meta` VALUES (91,1,'error_msg_styles_height','','error_msg_styles_height','');
INSERT INTO `wp_nf3_form_meta` VALUES (92,1,'error_msg_styles_width','','error_msg_styles_width','');
INSERT INTO `wp_nf3_form_meta` VALUES (93,1,'error_msg_styles_font-size','','error_msg_styles_font-size','');
INSERT INTO `wp_nf3_form_meta` VALUES (94,1,'error_msg_styles_margin','','error_msg_styles_margin','');
INSERT INTO `wp_nf3_form_meta` VALUES (95,1,'error_msg_styles_padding','','error_msg_styles_padding','');
INSERT INTO `wp_nf3_form_meta` VALUES (96,1,'error_msg_styles_display','','error_msg_styles_display','');
INSERT INTO `wp_nf3_form_meta` VALUES (97,1,'error_msg_styles_show_advanced_css','0','error_msg_styles_show_advanced_css','0');
INSERT INTO `wp_nf3_form_meta` VALUES (98,1,'error_msg_styles_advanced','','error_msg_styles_advanced','');
INSERT INTO `wp_nf3_form_meta` VALUES (99,1,'allow_public_link','0','allow_public_link','0');
INSERT INTO `wp_nf3_form_meta` VALUES (100,1,'embed_form','','embed_form','');
INSERT INTO `wp_nf3_form_meta` VALUES (101,1,'currency','','currency','');
INSERT INTO `wp_nf3_form_meta` VALUES (102,1,'repeatable_fieldsets','','repeatable_fieldsets','');
INSERT INTO `wp_nf3_form_meta` VALUES (103,1,'unique_field_error','A form with this value has already been submitted.','unique_field_error','A form with this value has already been submitted.');
INSERT INTO `wp_nf3_form_meta` VALUES (104,1,'changeEmailErrorMsg','','changeEmailErrorMsg','');
INSERT INTO `wp_nf3_form_meta` VALUES (105,1,'changeDateErrorMsg','','changeDateErrorMsg','');
INSERT INTO `wp_nf3_form_meta` VALUES (106,1,'confirmFieldErrorMsg','','confirmFieldErrorMsg','');
INSERT INTO `wp_nf3_form_meta` VALUES (107,1,'fieldNumberNumMinError','','fieldNumberNumMinError','');
INSERT INTO `wp_nf3_form_meta` VALUES (108,1,'fieldNumberNumMaxError','','fieldNumberNumMaxError','');
INSERT INTO `wp_nf3_form_meta` VALUES (109,1,'fieldNumberIncrementBy','','fieldNumberIncrementBy','');
INSERT INTO `wp_nf3_form_meta` VALUES (110,1,'formErrorsCorrectErrors','','formErrorsCorrectErrors','');
INSERT INTO `wp_nf3_form_meta` VALUES (111,1,'validateRequiredField','','validateRequiredField','');
INSERT INTO `wp_nf3_form_meta` VALUES (112,1,'honeypotHoneypotError','','honeypotHoneypotError','');
INSERT INTO `wp_nf3_form_meta` VALUES (113,1,'fieldsMarkedRequired','','fieldsMarkedRequired','');
INSERT INTO `wp_nf3_form_meta` VALUES (114,1,'drawerDisabled','','drawerDisabled','');
INSERT INTO `wp_nf3_form_meta` VALUES (115,1,'_seq_num','21','_seq_num','21');
/*!40000 ALTER TABLE `wp_nf3_form_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_nf3_forms`
--

DROP TABLE IF EXISTS `wp_nf3_forms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_nf3_forms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` longtext COLLATE utf8mb4_general_ci,
  `key` longtext COLLATE utf8mb4_general_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `views` int(11) DEFAULT NULL,
  `subs` int(11) DEFAULT NULL,
  `form_title` longtext COLLATE utf8mb4_general_ci,
  `default_label_pos` varchar(15) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `show_title` bit(1) DEFAULT NULL,
  `clear_complete` bit(1) DEFAULT NULL,
  `hide_complete` bit(1) DEFAULT NULL,
  `logged_in` bit(1) DEFAULT NULL,
  `seq_num` int(11) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_nf3_forms`
--

LOCK TABLES `wp_nf3_forms` WRITE;
/*!40000 ALTER TABLE `wp_nf3_forms` DISABLE KEYS */;
INSERT INTO `wp_nf3_forms` VALUES (1,'Contact',NULL,'2021-09-16 09:12:45','2021-09-16 10:12:45',NULL,NULL,'Contact','above',_binary '\0',_binary '',_binary '',_binary '\0',21);
/*!40000 ALTER TABLE `wp_nf3_forms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_nf3_object_meta`
--

DROP TABLE IF EXISTS `wp_nf3_object_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_nf3_object_meta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL,
  `key` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_general_ci,
  `meta_key` longtext COLLATE utf8mb4_general_ci,
  `meta_value` longtext COLLATE utf8mb4_general_ci,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_nf3_object_meta`
--

LOCK TABLES `wp_nf3_object_meta` WRITE;
/*!40000 ALTER TABLE `wp_nf3_object_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_nf3_object_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_nf3_objects`
--

DROP TABLE IF EXISTS `wp_nf3_objects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_nf3_objects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` longtext COLLATE utf8mb4_general_ci,
  `title` longtext COLLATE utf8mb4_general_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `object_title` longtext COLLATE utf8mb4_general_ci,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_nf3_objects`
--

LOCK TABLES `wp_nf3_objects` WRITE;
/*!40000 ALTER TABLE `wp_nf3_objects` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_nf3_objects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_nf3_relationships`
--

DROP TABLE IF EXISTS `wp_nf3_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_nf3_relationships` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `child_id` int(11) NOT NULL,
  `child_type` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `parent_type` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_nf3_relationships`
--

LOCK TABLES `wp_nf3_relationships` WRITE;
/*!40000 ALTER TABLE `wp_nf3_relationships` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_nf3_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_nf3_upgrades`
--

DROP TABLE IF EXISTS `wp_nf3_upgrades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_nf3_upgrades` (
  `id` int(11) NOT NULL,
  `cache` longtext COLLATE utf8mb4_general_ci,
  `stage` int(11) NOT NULL DEFAULT '0',
  `maintenance` bit(1) DEFAULT b'0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_nf3_upgrades`
--

LOCK TABLES `wp_nf3_upgrades` WRITE;
/*!40000 ALTER TABLE `wp_nf3_upgrades` DISABLE KEYS */;
INSERT INTO `wp_nf3_upgrades` VALUES (1,'a:7:{s:2:\"id\";i:1;s:20:\"show_publish_options\";b:0;s:6:\"fields\";a:6:{i:0;a:2:{s:8:\"settings\";a:73:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";b:0;s:5:\"order\";i:1;s:11:\"idAttribute\";s:2:\"id\";s:5:\"label\";s:4:\"Name\";s:3:\"key\";s:4:\"name\";s:4:\"type\";s:7:\"textbox\";s:10:\"created_at\";s:19:\"2021-09-16 10:12:46\";s:9:\"label_pos\";s:5:\"above\";s:8:\"required\";s:1:\"1\";s:11:\"placeholder\";s:0:\"\";s:7:\"default\";s:0:\"\";s:13:\"wrapper_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:11:\"input_limit\";s:0:\"\";s:16:\"input_limit_type\";s:10:\"characters\";s:15:\"input_limit_msg\";s:17:\"Character(s) left\";s:10:\"manual_key\";s:0:\"\";s:13:\"disable_input\";s:0:\"\";s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:9:\"desc_text\";s:0:\"\";s:28:\"disable_browser_autocomplete\";s:0:\"\";s:4:\"mask\";s:0:\"\";s:11:\"custom_mask\";s:0:\"\";s:28:\"wrap_styles_background-color\";s:0:\"\";s:18:\"wrap_styles_border\";s:0:\"\";s:24:\"wrap_styles_border-style\";s:0:\"\";s:24:\"wrap_styles_border-color\";s:0:\"\";s:17:\"wrap_styles_color\";s:0:\"\";s:18:\"wrap_styles_height\";s:0:\"\";s:17:\"wrap_styles_width\";s:0:\"\";s:21:\"wrap_styles_font-size\";s:0:\"\";s:18:\"wrap_styles_margin\";s:0:\"\";s:19:\"wrap_styles_padding\";s:0:\"\";s:19:\"wrap_styles_display\";s:0:\"\";s:17:\"wrap_styles_float\";s:0:\"\";s:29:\"wrap_styles_show_advanced_css\";s:1:\"0\";s:20:\"wrap_styles_advanced\";s:0:\"\";s:29:\"label_styles_background-color\";s:0:\"\";s:19:\"label_styles_border\";s:0:\"\";s:25:\"label_styles_border-style\";s:0:\"\";s:25:\"label_styles_border-color\";s:0:\"\";s:18:\"label_styles_color\";s:0:\"\";s:19:\"label_styles_height\";s:0:\"\";s:18:\"label_styles_width\";s:0:\"\";s:22:\"label_styles_font-size\";s:0:\"\";s:19:\"label_styles_margin\";s:0:\"\";s:20:\"label_styles_padding\";s:0:\"\";s:20:\"label_styles_display\";s:0:\"\";s:18:\"label_styles_float\";s:0:\"\";s:30:\"label_styles_show_advanced_css\";s:1:\"0\";s:21:\"label_styles_advanced\";s:0:\"\";s:31:\"element_styles_background-color\";s:0:\"\";s:21:\"element_styles_border\";s:0:\"\";s:27:\"element_styles_border-style\";s:0:\"\";s:27:\"element_styles_border-color\";s:0:\"\";s:20:\"element_styles_color\";s:0:\"\";s:21:\"element_styles_height\";s:0:\"\";s:20:\"element_styles_width\";s:0:\"\";s:24:\"element_styles_font-size\";s:0:\"\";s:21:\"element_styles_margin\";s:0:\"\";s:22:\"element_styles_padding\";s:0:\"\";s:22:\"element_styles_display\";s:0:\"\";s:20:\"element_styles_float\";s:0:\"\";s:32:\"element_styles_show_advanced_css\";s:1:\"0\";s:23:\"element_styles_advanced\";s:0:\"\";s:7:\"cellcid\";s:5:\"c3277\";s:21:\"custom_name_attribute\";s:0:\"\";s:23:\"personally_identifiable\";s:0:\"\";s:5:\"value\";s:0:\"\";}s:2:\"id\";i:1;}i:1;a:2:{s:8:\"settings\";a:65:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";b:0;s:5:\"order\";i:2;s:11:\"idAttribute\";s:2:\"id\";s:5:\"label\";s:5:\"Email\";s:3:\"key\";s:5:\"email\";s:4:\"type\";s:5:\"email\";s:10:\"created_at\";s:19:\"2021-09-16 10:12:46\";s:9:\"label_pos\";s:5:\"above\";s:8:\"required\";s:1:\"1\";s:11:\"placeholder\";s:0:\"\";s:7:\"default\";s:0:\"\";s:13:\"wrapper_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:9:\"desc_text\";s:0:\"\";s:28:\"wrap_styles_background-color\";s:0:\"\";s:18:\"wrap_styles_border\";s:0:\"\";s:24:\"wrap_styles_border-style\";s:0:\"\";s:24:\"wrap_styles_border-color\";s:0:\"\";s:17:\"wrap_styles_color\";s:0:\"\";s:18:\"wrap_styles_height\";s:0:\"\";s:17:\"wrap_styles_width\";s:0:\"\";s:21:\"wrap_styles_font-size\";s:0:\"\";s:18:\"wrap_styles_margin\";s:0:\"\";s:19:\"wrap_styles_padding\";s:0:\"\";s:19:\"wrap_styles_display\";s:0:\"\";s:17:\"wrap_styles_float\";s:0:\"\";s:29:\"wrap_styles_show_advanced_css\";s:1:\"0\";s:20:\"wrap_styles_advanced\";s:0:\"\";s:29:\"label_styles_background-color\";s:0:\"\";s:19:\"label_styles_border\";s:0:\"\";s:25:\"label_styles_border-style\";s:0:\"\";s:25:\"label_styles_border-color\";s:0:\"\";s:18:\"label_styles_color\";s:0:\"\";s:19:\"label_styles_height\";s:0:\"\";s:18:\"label_styles_width\";s:0:\"\";s:22:\"label_styles_font-size\";s:0:\"\";s:19:\"label_styles_margin\";s:0:\"\";s:20:\"label_styles_padding\";s:0:\"\";s:20:\"label_styles_display\";s:0:\"\";s:18:\"label_styles_float\";s:0:\"\";s:30:\"label_styles_show_advanced_css\";s:1:\"0\";s:21:\"label_styles_advanced\";s:0:\"\";s:31:\"element_styles_background-color\";s:0:\"\";s:21:\"element_styles_border\";s:0:\"\";s:27:\"element_styles_border-style\";s:0:\"\";s:27:\"element_styles_border-color\";s:0:\"\";s:20:\"element_styles_color\";s:0:\"\";s:21:\"element_styles_height\";s:0:\"\";s:20:\"element_styles_width\";s:0:\"\";s:24:\"element_styles_font-size\";s:0:\"\";s:21:\"element_styles_margin\";s:0:\"\";s:22:\"element_styles_padding\";s:0:\"\";s:22:\"element_styles_display\";s:0:\"\";s:20:\"element_styles_float\";s:0:\"\";s:32:\"element_styles_show_advanced_css\";s:1:\"0\";s:23:\"element_styles_advanced\";s:0:\"\";s:7:\"cellcid\";s:5:\"c3281\";s:21:\"custom_name_attribute\";s:5:\"email\";s:23:\"personally_identifiable\";s:1:\"1\";s:5:\"value\";s:0:\"\";}s:2:\"id\";i:2;}i:2;a:2:{s:8:\"settings\";a:26:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";b:0;s:5:\"order\";i:3;s:11:\"idAttribute\";s:2:\"id\";s:5:\"label\";s:7:\"Subject\";s:4:\"type\";s:7:\"textbox\";s:3:\"key\";s:21:\"subject_1631798513617\";s:9:\"label_pos\";s:7:\"default\";s:8:\"required\";b:0;s:7:\"default\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:11:\"input_limit\";s:0:\"\";s:16:\"input_limit_type\";s:10:\"characters\";s:15:\"input_limit_msg\";s:17:\"Character(s) left\";s:10:\"manual_key\";b:0;s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:4:\"mask\";s:0:\"\";s:11:\"custom_mask\";s:0:\"\";s:21:\"custom_name_attribute\";s:0:\"\";s:23:\"personally_identifiable\";s:0:\"\";s:5:\"value\";s:0:\"\";s:14:\"drawerDisabled\";b:0;}s:2:\"id\";s:1:\"9\";}i:3;a:2:{s:8:\"settings\";a:73:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";b:0;s:5:\"order\";i:4;s:11:\"idAttribute\";s:2:\"id\";s:5:\"label\";s:7:\"Message\";s:3:\"key\";s:21:\"message_1632311094131\";s:4:\"type\";s:8:\"textarea\";s:10:\"created_at\";s:19:\"2021-09-16 10:12:46\";s:9:\"label_pos\";s:5:\"above\";s:8:\"required\";s:1:\"1\";s:11:\"placeholder\";s:0:\"\";s:7:\"default\";s:0:\"\";s:13:\"wrapper_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:11:\"input_limit\";s:0:\"\";s:16:\"input_limit_type\";s:10:\"characters\";s:15:\"input_limit_msg\";s:17:\"Character(s) left\";s:10:\"manual_key\";s:0:\"\";s:13:\"disable_input\";s:0:\"\";s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:9:\"desc_text\";s:0:\"\";s:28:\"disable_browser_autocomplete\";s:0:\"\";s:12:\"textarea_rte\";s:0:\"\";s:18:\"disable_rte_mobile\";s:0:\"\";s:14:\"textarea_media\";s:0:\"\";s:28:\"wrap_styles_background-color\";s:0:\"\";s:18:\"wrap_styles_border\";s:0:\"\";s:24:\"wrap_styles_border-style\";s:0:\"\";s:24:\"wrap_styles_border-color\";s:0:\"\";s:17:\"wrap_styles_color\";s:0:\"\";s:18:\"wrap_styles_height\";s:0:\"\";s:17:\"wrap_styles_width\";s:0:\"\";s:21:\"wrap_styles_font-size\";s:0:\"\";s:18:\"wrap_styles_margin\";s:0:\"\";s:19:\"wrap_styles_padding\";s:0:\"\";s:19:\"wrap_styles_display\";s:0:\"\";s:17:\"wrap_styles_float\";s:0:\"\";s:29:\"wrap_styles_show_advanced_css\";s:1:\"0\";s:20:\"wrap_styles_advanced\";s:0:\"\";s:29:\"label_styles_background-color\";s:0:\"\";s:19:\"label_styles_border\";s:0:\"\";s:25:\"label_styles_border-style\";s:0:\"\";s:25:\"label_styles_border-color\";s:0:\"\";s:18:\"label_styles_color\";s:0:\"\";s:19:\"label_styles_height\";s:0:\"\";s:18:\"label_styles_width\";s:0:\"\";s:22:\"label_styles_font-size\";s:0:\"\";s:19:\"label_styles_margin\";s:0:\"\";s:20:\"label_styles_padding\";s:0:\"\";s:20:\"label_styles_display\";s:0:\"\";s:18:\"label_styles_float\";s:0:\"\";s:30:\"label_styles_show_advanced_css\";s:1:\"0\";s:21:\"label_styles_advanced\";s:0:\"\";s:31:\"element_styles_background-color\";s:0:\"\";s:21:\"element_styles_border\";s:0:\"\";s:27:\"element_styles_border-style\";s:0:\"\";s:27:\"element_styles_border-color\";s:0:\"\";s:20:\"element_styles_color\";s:0:\"\";s:21:\"element_styles_height\";s:0:\"\";s:20:\"element_styles_width\";s:0:\"\";s:24:\"element_styles_font-size\";s:0:\"\";s:21:\"element_styles_margin\";s:0:\"\";s:22:\"element_styles_padding\";s:0:\"\";s:22:\"element_styles_display\";s:0:\"\";s:20:\"element_styles_float\";s:0:\"\";s:32:\"element_styles_show_advanced_css\";s:1:\"0\";s:23:\"element_styles_advanced\";s:0:\"\";s:7:\"cellcid\";s:5:\"c3284\";s:5:\"value\";s:0:\"\";s:14:\"drawerDisabled\";b:0;}s:2:\"id\";i:3;}i:4;a:2:{s:8:\"settings\";a:24:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";b:0;s:5:\"order\";i:5;s:11:\"idAttribute\";s:2:\"id\";s:5:\"label\";s:34:\"I\'m not a fan of spam either!   :)\";s:4:\"type\";s:4:\"spam\";s:3:\"key\";s:18:\"spam_1631793146903\";s:9:\"label_pos\";s:7:\"default\";s:8:\"required\";i:1;s:7:\"default\";s:0:\"\";s:11:\"placeholder\";s:6:\"Answer\";s:15:\"container_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:11:\"input_limit\";s:0:\"\";s:16:\"input_limit_type\";s:10:\"characters\";s:15:\"input_limit_msg\";s:17:\"Character(s) left\";s:10:\"manual_key\";b:1;s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:9:\"desc_text\";s:18:\"<p>5 + 4 =<br></p>\";s:11:\"spam_answer\";s:1:\"9\";s:5:\"value\";s:0:\"\";s:14:\"drawerDisabled\";b:0;}s:2:\"id\";s:1:\"8\";}i:5;a:2:{s:8:\"settings\";a:70:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";b:0;s:5:\"order\";i:6;s:11:\"idAttribute\";s:2:\"id\";s:5:\"label\";s:4:\"SEND\";s:3:\"key\";s:18:\"send_1631882264354\";s:4:\"type\";s:6:\"submit\";s:10:\"created_at\";s:19:\"2021-09-16 10:12:46\";s:16:\"processing_label\";s:10:\"Processing\";s:15:\"container_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:28:\"wrap_styles_background-color\";s:0:\"\";s:18:\"wrap_styles_border\";s:0:\"\";s:24:\"wrap_styles_border-style\";s:0:\"\";s:24:\"wrap_styles_border-color\";s:0:\"\";s:17:\"wrap_styles_color\";s:0:\"\";s:18:\"wrap_styles_height\";s:0:\"\";s:17:\"wrap_styles_width\";s:0:\"\";s:21:\"wrap_styles_font-size\";s:0:\"\";s:18:\"wrap_styles_margin\";s:0:\"\";s:19:\"wrap_styles_padding\";s:0:\"\";s:19:\"wrap_styles_display\";s:0:\"\";s:17:\"wrap_styles_float\";s:0:\"\";s:29:\"wrap_styles_show_advanced_css\";s:1:\"0\";s:20:\"wrap_styles_advanced\";s:0:\"\";s:29:\"label_styles_background-color\";s:0:\"\";s:19:\"label_styles_border\";s:0:\"\";s:25:\"label_styles_border-style\";s:0:\"\";s:25:\"label_styles_border-color\";s:0:\"\";s:18:\"label_styles_color\";s:0:\"\";s:19:\"label_styles_height\";s:0:\"\";s:18:\"label_styles_width\";s:0:\"\";s:22:\"label_styles_font-size\";s:0:\"\";s:19:\"label_styles_margin\";s:0:\"\";s:20:\"label_styles_padding\";s:0:\"\";s:20:\"label_styles_display\";s:0:\"\";s:18:\"label_styles_float\";s:0:\"\";s:30:\"label_styles_show_advanced_css\";s:1:\"0\";s:21:\"label_styles_advanced\";s:0:\"\";s:31:\"element_styles_background-color\";s:0:\"\";s:21:\"element_styles_border\";s:0:\"\";s:27:\"element_styles_border-style\";s:0:\"\";s:27:\"element_styles_border-color\";s:0:\"\";s:20:\"element_styles_color\";s:0:\"\";s:21:\"element_styles_height\";s:0:\"\";s:20:\"element_styles_width\";s:0:\"\";s:24:\"element_styles_font-size\";s:0:\"\";s:21:\"element_styles_margin\";s:0:\"\";s:22:\"element_styles_padding\";s:0:\"\";s:22:\"element_styles_display\";s:0:\"\";s:20:\"element_styles_float\";s:0:\"\";s:32:\"element_styles_show_advanced_css\";s:1:\"0\";s:23:\"element_styles_advanced\";s:0:\"\";s:44:\"submit_element_hover_styles_background-color\";s:0:\"\";s:34:\"submit_element_hover_styles_border\";s:0:\"\";s:40:\"submit_element_hover_styles_border-style\";s:0:\"\";s:40:\"submit_element_hover_styles_border-color\";s:0:\"\";s:33:\"submit_element_hover_styles_color\";s:0:\"\";s:34:\"submit_element_hover_styles_height\";s:0:\"\";s:33:\"submit_element_hover_styles_width\";s:0:\"\";s:37:\"submit_element_hover_styles_font-size\";s:0:\"\";s:34:\"submit_element_hover_styles_margin\";s:0:\"\";s:35:\"submit_element_hover_styles_padding\";s:0:\"\";s:35:\"submit_element_hover_styles_display\";s:0:\"\";s:33:\"submit_element_hover_styles_float\";s:0:\"\";s:45:\"submit_element_hover_styles_show_advanced_css\";s:1:\"0\";s:36:\"submit_element_hover_styles_advanced\";s:0:\"\";s:7:\"cellcid\";s:5:\"c3287\";s:14:\"drawerDisabled\";b:0;}s:2:\"id\";i:4;}}s:7:\"actions\";a:4:{i:0;a:2:{s:8:\"settings\";a:31:{s:10:\"objectType\";s:6:\"Action\";s:12:\"objectDomain\";s:7:\"actions\";s:10:\"editActive\";b:0;s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:4:\"type\";s:4:\"save\";s:6:\"active\";s:1:\"1\";s:10:\"created_at\";s:19:\"2021-09-16 10:12:47\";s:5:\"label\";s:16:\"Store Submission\";s:10:\"conditions\";a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}s:16:\"payment_gateways\";s:0:\"\";s:13:\"payment_total\";s:0:\"\";s:3:\"tag\";s:0:\"\";s:2:\"to\";s:16:\"{wp:admin_email}\";s:13:\"email_subject\";s:22:\"Ninja Forms Submission\";s:13:\"email_message\";s:14:\"{fields_table}\";s:9:\"from_name\";s:0:\"\";s:12:\"from_address\";s:0:\"\";s:8:\"reply_to\";s:0:\"\";s:12:\"email_format\";s:4:\"html\";s:2:\"cc\";s:0:\"\";s:3:\"bcc\";s:0:\"\";s:12:\"redirect_url\";s:0:\"\";s:19:\"email_message_plain\";s:0:\"\";s:11:\"success_msg\";s:42:\"Your form has been successfully submitted.\";s:15:\"submitter_email\";s:0:\"\";s:18:\"fields-save-toggle\";s:8:\"save_all\";s:16:\"exception_fields\";a:0:{}s:18:\"set_subs_to_expire\";s:1:\"0\";s:16:\"subs_expire_time\";s:2:\"90\";s:14:\"drawerDisabled\";s:0:\"\";}s:2:\"id\";i:1;}i:1;a:2:{s:8:\"settings\";a:26:{s:10:\"objectType\";s:6:\"Action\";s:12:\"objectDomain\";s:7:\"actions\";s:10:\"editActive\";b:0;s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:4:\"type\";s:5:\"email\";s:6:\"active\";s:1:\"1\";s:10:\"created_at\";s:19:\"2021-09-16 10:12:47\";s:5:\"label\";s:18:\"Email Confirmation\";s:2:\"to\";s:30:\"{wp:admin_email},{field:email}\";s:7:\"subject\";s:24:\"This is an email action.\";s:7:\"message\";s:19:\"Hello, Ninja Forms!\";s:10:\"conditions\";a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:0:{}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}s:16:\"payment_gateways\";s:0:\"\";s:13:\"payment_total\";s:0:\"\";s:3:\"tag\";s:0:\"\";s:13:\"email_subject\";s:29:\"{field:subject_1631798513617}\";s:13:\"email_message\";s:102:\"<p>Thank you for your email. I will get back to you as soon as possible.</p><p><br></p><p>Eric<br></p>\";s:9:\"from_name\";s:0:\"\";s:12:\"from_address\";s:0:\"\";s:8:\"reply_to\";s:13:\"{field:email}\";s:12:\"email_format\";s:4:\"html\";s:2:\"cc\";s:0:\"\";s:3:\"bcc\";s:0:\"\";s:19:\"email_message_plain\";s:0:\"\";s:14:\"drawerDisabled\";s:0:\"\";}s:2:\"id\";i:2;}i:2;a:2:{s:8:\"settings\";a:25:{s:10:\"objectType\";s:6:\"Action\";s:12:\"objectDomain\";s:7:\"actions\";s:10:\"editActive\";b:0;s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:4:\"type\";s:5:\"email\";s:6:\"active\";s:1:\"1\";s:10:\"created_at\";s:19:\"2021-09-16 10:12:47\";s:5:\"label\";s:18:\"Email Notification\";s:10:\"conditions\";a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}s:16:\"payment_gateways\";s:0:\"\";s:13:\"payment_total\";s:0:\"\";s:3:\"tag\";s:0:\"\";s:2:\"to\";s:22:\"jim@jimrossphoto.co.uk\";s:13:\"email_subject\";s:29:\"{field:subject_1631798513617}\";s:13:\"email_message\";s:75:\"<p>{field:message_1632311094131}</p>\n<p>-{field:name} ( {field:email} )</p>\";s:9:\"from_name\";s:0:\"\";s:12:\"from_address\";s:0:\"\";s:8:\"reply_to\";s:13:\"{field:email}\";s:12:\"email_format\";s:4:\"html\";s:2:\"cc\";s:0:\"\";s:3:\"bcc\";s:0:\"\";s:10:\"attach_csv\";s:1:\"0\";s:19:\"email_message_plain\";s:0:\"\";s:14:\"drawerDisabled\";s:0:\"\";}s:2:\"id\";i:3;}i:3;a:2:{s:8:\"settings\";a:27:{s:10:\"objectType\";s:6:\"Action\";s:12:\"objectDomain\";s:7:\"actions\";s:10:\"editActive\";b:0;s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:4:\"type\";s:14:\"successmessage\";s:6:\"active\";s:1:\"1\";s:10:\"created_at\";s:19:\"2021-09-16 10:12:47\";s:5:\"label\";s:15:\"Success Message\";s:7:\"message\";s:47:\"Thank you {field:name} for filling out my form!\";s:10:\"conditions\";a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}s:16:\"payment_gateways\";s:0:\"\";s:13:\"payment_total\";s:0:\"\";s:3:\"tag\";s:0:\"\";s:2:\"to\";s:16:\"{wp:admin_email}\";s:13:\"email_subject\";s:22:\"Ninja Forms Submission\";s:13:\"email_message\";s:14:\"{fields_table}\";s:9:\"from_name\";s:0:\"\";s:12:\"from_address\";s:0:\"\";s:8:\"reply_to\";s:0:\"\";s:12:\"email_format\";s:4:\"html\";s:2:\"cc\";s:0:\"\";s:3:\"bcc\";s:0:\"\";s:12:\"redirect_url\";s:0:\"\";s:11:\"success_msg\";s:89:\"<p>Form submitted successfully.</p><p>A confirmation email was sent to {field:email}.</p>\";s:19:\"email_message_plain\";s:0:\"\";s:14:\"drawerDisabled\";s:0:\"\";}s:2:\"id\";i:4;}}s:8:\"settings\";a:115:{s:10:\"objectType\";s:12:\"Form Setting\";s:10:\"editActive\";b:1;s:5:\"title\";s:7:\"Contact\";s:3:\"key\";s:0:\"\";s:10:\"created_at\";s:19:\"2021-09-16 10:12:45\";s:17:\"default_label_pos\";s:5:\"above\";s:10:\"conditions\";a:0:{}s:10:\"show_title\";i:0;s:14:\"clear_complete\";s:1:\"1\";s:13:\"hide_complete\";s:1:\"1\";s:13:\"wrapper_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:10:\"add_submit\";s:1:\"1\";s:9:\"logged_in\";s:0:\"\";s:17:\"not_logged_in_msg\";s:0:\"\";s:16:\"sub_limit_number\";s:0:\"\";s:13:\"sub_limit_msg\";s:0:\"\";s:12:\"calculations\";a:0:{}s:15:\"formContentData\";a:6:{i:0;s:4:\"name\";i:1;s:5:\"email\";i:2;s:21:\"subject_1631798513617\";i:3;s:21:\"message_1632311094131\";i:4;s:18:\"spam_1631793146903\";i:5;s:18:\"send_1631882264354\";}s:33:\"container_styles_background-color\";s:0:\"\";s:23:\"container_styles_border\";s:0:\"\";s:29:\"container_styles_border-style\";s:0:\"\";s:29:\"container_styles_border-color\";s:0:\"\";s:22:\"container_styles_color\";s:0:\"\";s:23:\"container_styles_height\";s:0:\"\";s:22:\"container_styles_width\";s:0:\"\";s:26:\"container_styles_font-size\";s:0:\"\";s:23:\"container_styles_margin\";s:0:\"\";s:24:\"container_styles_padding\";s:0:\"\";s:24:\"container_styles_display\";s:0:\"\";s:22:\"container_styles_float\";s:0:\"\";s:34:\"container_styles_show_advanced_css\";s:1:\"0\";s:25:\"container_styles_advanced\";s:0:\"\";s:29:\"title_styles_background-color\";s:0:\"\";s:19:\"title_styles_border\";s:0:\"\";s:25:\"title_styles_border-style\";s:0:\"\";s:25:\"title_styles_border-color\";s:0:\"\";s:18:\"title_styles_color\";s:0:\"\";s:19:\"title_styles_height\";s:0:\"\";s:18:\"title_styles_width\";s:0:\"\";s:22:\"title_styles_font-size\";s:0:\"\";s:19:\"title_styles_margin\";s:0:\"\";s:20:\"title_styles_padding\";s:0:\"\";s:20:\"title_styles_display\";s:0:\"\";s:18:\"title_styles_float\";s:0:\"\";s:30:\"title_styles_show_advanced_css\";s:1:\"0\";s:21:\"title_styles_advanced\";s:0:\"\";s:27:\"row_styles_background-color\";s:0:\"\";s:17:\"row_styles_border\";s:0:\"\";s:23:\"row_styles_border-style\";s:0:\"\";s:23:\"row_styles_border-color\";s:0:\"\";s:16:\"row_styles_color\";s:0:\"\";s:17:\"row_styles_height\";s:0:\"\";s:16:\"row_styles_width\";s:0:\"\";s:20:\"row_styles_font-size\";s:0:\"\";s:17:\"row_styles_margin\";s:0:\"\";s:18:\"row_styles_padding\";s:0:\"\";s:18:\"row_styles_display\";s:0:\"\";s:28:\"row_styles_show_advanced_css\";s:1:\"0\";s:19:\"row_styles_advanced\";s:0:\"\";s:31:\"row-odd_styles_background-color\";s:0:\"\";s:21:\"row-odd_styles_border\";s:0:\"\";s:27:\"row-odd_styles_border-style\";s:0:\"\";s:27:\"row-odd_styles_border-color\";s:0:\"\";s:20:\"row-odd_styles_color\";s:0:\"\";s:21:\"row-odd_styles_height\";s:0:\"\";s:20:\"row-odd_styles_width\";s:0:\"\";s:24:\"row-odd_styles_font-size\";s:0:\"\";s:21:\"row-odd_styles_margin\";s:0:\"\";s:22:\"row-odd_styles_padding\";s:0:\"\";s:22:\"row-odd_styles_display\";s:0:\"\";s:32:\"row-odd_styles_show_advanced_css\";s:1:\"0\";s:23:\"row-odd_styles_advanced\";s:0:\"\";s:35:\"success-msg_styles_background-color\";s:0:\"\";s:25:\"success-msg_styles_border\";s:0:\"\";s:31:\"success-msg_styles_border-style\";s:0:\"\";s:31:\"success-msg_styles_border-color\";s:0:\"\";s:24:\"success-msg_styles_color\";s:0:\"\";s:25:\"success-msg_styles_height\";s:0:\"\";s:24:\"success-msg_styles_width\";s:0:\"\";s:28:\"success-msg_styles_font-size\";s:0:\"\";s:25:\"success-msg_styles_margin\";s:0:\"\";s:26:\"success-msg_styles_padding\";s:0:\"\";s:26:\"success-msg_styles_display\";s:0:\"\";s:36:\"success-msg_styles_show_advanced_css\";s:1:\"0\";s:27:\"success-msg_styles_advanced\";s:0:\"\";s:33:\"error_msg_styles_background-color\";s:0:\"\";s:23:\"error_msg_styles_border\";s:0:\"\";s:29:\"error_msg_styles_border-style\";s:0:\"\";s:29:\"error_msg_styles_border-color\";s:0:\"\";s:22:\"error_msg_styles_color\";s:0:\"\";s:23:\"error_msg_styles_height\";s:0:\"\";s:22:\"error_msg_styles_width\";s:0:\"\";s:26:\"error_msg_styles_font-size\";s:0:\"\";s:23:\"error_msg_styles_margin\";s:0:\"\";s:24:\"error_msg_styles_padding\";s:0:\"\";s:24:\"error_msg_styles_display\";s:0:\"\";s:34:\"error_msg_styles_show_advanced_css\";s:1:\"0\";s:25:\"error_msg_styles_advanced\";s:0:\"\";s:17:\"allow_public_link\";i:0;s:10:\"embed_form\";s:0:\"\";s:8:\"currency\";s:0:\"\";s:20:\"repeatable_fieldsets\";s:0:\"\";s:18:\"unique_field_error\";s:50:\"A form with this value has already been submitted.\";s:19:\"changeEmailErrorMsg\";s:0:\"\";s:18:\"changeDateErrorMsg\";s:0:\"\";s:20:\"confirmFieldErrorMsg\";s:0:\"\";s:22:\"fieldNumberNumMinError\";s:0:\"\";s:22:\"fieldNumberNumMaxError\";s:0:\"\";s:22:\"fieldNumberIncrementBy\";s:0:\"\";s:23:\"formErrorsCorrectErrors\";s:0:\"\";s:21:\"validateRequiredField\";s:0:\"\";s:21:\"honeypotHoneypotError\";s:0:\"\";s:20:\"fieldsMarkedRequired\";s:0:\"\";s:14:\"drawerDisabled\";b:0;}s:14:\"deleted_fields\";a:0:{}s:15:\"deleted_actions\";a:0:{}}',4,_binary '\0');
/*!40000 ALTER TABLE `wp_nf3_upgrades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=1182 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://localhost:10013','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://localhost:10013','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','Eric Reguly','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','Journalist','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','0','yes');
INSERT INTO `wp_options` VALUES (6,'admin_email','jimrossuk@gmail.com','yes');
INSERT INTO `wp_options` VALUES (7,'start_of_week','1','yes');
INSERT INTO `wp_options` VALUES (8,'use_balanceTags','0','yes');
INSERT INTO `wp_options` VALUES (9,'use_smilies','1','yes');
INSERT INTO `wp_options` VALUES (10,'require_name_email','1','yes');
INSERT INTO `wp_options` VALUES (11,'comments_notify','1','yes');
INSERT INTO `wp_options` VALUES (12,'posts_per_rss','10','yes');
INSERT INTO `wp_options` VALUES (13,'rss_use_excerpt','0','yes');
INSERT INTO `wp_options` VALUES (14,'mailserver_url','mail.example.com','yes');
INSERT INTO `wp_options` VALUES (15,'mailserver_login','login@example.com','yes');
INSERT INTO `wp_options` VALUES (16,'mailserver_pass','password','yes');
INSERT INTO `wp_options` VALUES (17,'mailserver_port','110','yes');
INSERT INTO `wp_options` VALUES (18,'default_category','1','yes');
INSERT INTO `wp_options` VALUES (19,'default_comment_status','open','yes');
INSERT INTO `wp_options` VALUES (20,'default_ping_status','open','yes');
INSERT INTO `wp_options` VALUES (21,'default_pingback_flag','1','yes');
INSERT INTO `wp_options` VALUES (22,'posts_per_page','10','yes');
INSERT INTO `wp_options` VALUES (23,'date_format','F j, Y','yes');
INSERT INTO `wp_options` VALUES (24,'time_format','g:i a','yes');
INSERT INTO `wp_options` VALUES (25,'links_updated_date_format','F j, Y g:i a','yes');
INSERT INTO `wp_options` VALUES (26,'comment_moderation','0','yes');
INSERT INTO `wp_options` VALUES (27,'moderation_notify','1','yes');
INSERT INTO `wp_options` VALUES (28,'permalink_structure','/%postname%/','yes');
INSERT INTO `wp_options` VALUES (29,'rewrite_rules','a:163:{s:29:\"^ninja-forms/([a-zA-Z0-9]+)/?\";s:36:\"index.php?nf_public_link=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:53:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom|wprss)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:48:\"category/(.+?)/(feed|rdf|rss|rss2|atom|wprss)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:50:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom|wprss)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:45:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom|wprss)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:51:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom|wprss)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:46:\"type/([^/]+)/(feed|rdf|rss|rss2|atom|wprss)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:34:\"nf_sub/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"nf_sub/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:70:\"nf_sub/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom|wprss)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"nf_sub/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom|wprss)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"nf_sub/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"nf_sub/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"nf_sub/([^/]+)/embed/?$\";s:39:\"index.php?nf_sub=$matches[1]&embed=true\";s:27:\"nf_sub/([^/]+)/trackback/?$\";s:33:\"index.php?nf_sub=$matches[1]&tb=1\";s:35:\"nf_sub/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?nf_sub=$matches[1]&paged=$matches[2]\";s:42:\"nf_sub/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?nf_sub=$matches[1]&cpage=$matches[2]\";s:31:\"nf_sub/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?nf_sub=$matches[1]&page=$matches[2]\";s:23:\"nf_sub/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"nf_sub/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:59:\"nf_sub/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom|wprss)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"nf_sub/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom|wprss)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"nf_sub/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"nf_sub/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:33:\"feeds/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"feeds/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:69:\"feeds/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom|wprss)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"feeds/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom|wprss)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"feeds/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"feeds/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"feeds/([^/]+)/embed/?$\";s:44:\"index.php?feed_source=$matches[1]&embed=true\";s:26:\"feeds/([^/]+)/trackback/?$\";s:38:\"index.php?feed_source=$matches[1]&tb=1\";s:34:\"feeds/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?feed_source=$matches[1]&paged=$matches[2]\";s:41:\"feeds/([^/]+)/comment-page-([0-9]{1,})/?$\";s:51:\"index.php?feed_source=$matches[1]&cpage=$matches[2]\";s:30:\"feeds/([^/]+)(?:/([0-9]+))?/?$\";s:50:\"index.php?feed_source=$matches[1]&page=$matches[2]\";s:22:\"feeds/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:32:\"feeds/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:58:\"feeds/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom|wprss)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"feeds/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom|wprss)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"feeds/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:28:\"feeds/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:42:\"feed-templates/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:52:\"feed-templates/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:78:\"feed-templates/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom|wprss)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:73:\"feed-templates/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom|wprss)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:67:\"feed-templates/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:48:\"feed-templates/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:31:\"feed-templates/([^/]+)/embed/?$\";s:46:\"index.php?feed_template=$matches[1]&embed=true\";s:35:\"feed-templates/([^/]+)/trackback/?$\";s:40:\"index.php?feed_template=$matches[1]&tb=1\";s:43:\"feed-templates/([^/]+)/page/?([0-9]{1,})/?$\";s:53:\"index.php?feed_template=$matches[1]&paged=$matches[2]\";s:50:\"feed-templates/([^/]+)/comment-page-([0-9]{1,})/?$\";s:53:\"index.php?feed_template=$matches[1]&cpage=$matches[2]\";s:39:\"feed-templates/([^/]+)(?:/([0-9]+))?/?$\";s:52:\"index.php?feed_template=$matches[1]&page=$matches[2]\";s:31:\"feed-templates/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:41:\"feed-templates/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"feed-templates/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom|wprss)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"feed-templates/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom|wprss)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"feed-templates/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:37:\"feed-templates/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:43:\"wprss_blacklist/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:53:\"wprss_blacklist/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:79:\"wprss_blacklist/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom|wprss)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:74:\"wprss_blacklist/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom|wprss)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:68:\"wprss_blacklist/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:49:\"wprss_blacklist/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:32:\"wprss_blacklist/([^/]+)/embed/?$\";s:48:\"index.php?wprss_blacklist=$matches[1]&embed=true\";s:36:\"wprss_blacklist/([^/]+)/trackback/?$\";s:42:\"index.php?wprss_blacklist=$matches[1]&tb=1\";s:44:\"wprss_blacklist/([^/]+)/page/?([0-9]{1,})/?$\";s:55:\"index.php?wprss_blacklist=$matches[1]&paged=$matches[2]\";s:51:\"wprss_blacklist/([^/]+)/comment-page-([0-9]{1,})/?$\";s:55:\"index.php?wprss_blacklist=$matches[1]&cpage=$matches[2]\";s:40:\"wprss_blacklist/([^/]+)(?:/([0-9]+))?/?$\";s:54:\"index.php?wprss_blacklist=$matches[1]&page=$matches[2]\";s:32:\"wprss_blacklist/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"wprss_blacklist/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:68:\"wprss_blacklist/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom|wprss)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"wprss_blacklist/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom|wprss)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"wprss_blacklist/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"wprss_blacklist/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:38:\"feed/(feed|rdf|rss|rss2|atom|wprss)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:33:\"(feed|rdf|rss|rss2|atom|wprss)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=10&cpage=$matches[1]\";s:47:\"comments/feed/(feed|rdf|rss|rss2|atom|wprss)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:42:\"comments/(feed|rdf|rss|rss2|atom|wprss)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:50:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom|wprss)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:45:\"search/(.+)/(feed|rdf|rss|rss2|atom|wprss)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:53:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom|wprss)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:48:\"author/([^/]+)/(feed|rdf|rss|rss2|atom|wprss)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:75:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom|wprss)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:70:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom|wprss)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:62:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom|wprss)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:57:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom|wprss)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:49:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom|wprss)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:44:\"([0-9]{4})/(feed|rdf|rss|rss2|atom|wprss)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom|wprss)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom|wprss)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:46:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom|wprss)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:41:\"(.?.+?)/(feed|rdf|rss|rss2|atom|wprss)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom|wprss)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom|wprss)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:46:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom|wprss)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:41:\"([^/]+)/(feed|rdf|rss|rss2|atom|wprss)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:52:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom|wprss)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom|wprss)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:5:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:23:\"ml-slider/ml-slider.php\";i:2;s:27:\"ninja-forms/ninja-forms.php\";i:3;s:31:\"what-the-file/what-the-file.php\";i:4;s:39:\"wp-rss-aggregator/wp-rss-aggregator.php\";}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','0','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','','no');
INSERT INTO `wp_options` VALUES (40,'template','twentytwentyone','yes');
INSERT INTO `wp_options` VALUES (41,'stylesheet','twentytwentyone-child','yes');
INSERT INTO `wp_options` VALUES (42,'comment_registration','0','yes');
INSERT INTO `wp_options` VALUES (43,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (44,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (45,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (46,'db_version','49752','yes');
INSERT INTO `wp_options` VALUES (47,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (48,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (49,'blog_public','1','yes');
INSERT INTO `wp_options` VALUES (50,'default_link_category','2','yes');
INSERT INTO `wp_options` VALUES (51,'show_on_front','page','yes');
INSERT INTO `wp_options` VALUES (52,'tag_base','','yes');
INSERT INTO `wp_options` VALUES (53,'show_avatars','1','yes');
INSERT INTO `wp_options` VALUES (54,'avatar_rating','G','yes');
INSERT INTO `wp_options` VALUES (55,'upload_url_path','','yes');
INSERT INTO `wp_options` VALUES (56,'thumbnail_size_w','150','yes');
INSERT INTO `wp_options` VALUES (57,'thumbnail_size_h','150','yes');
INSERT INTO `wp_options` VALUES (58,'thumbnail_crop','1','yes');
INSERT INTO `wp_options` VALUES (59,'medium_size_w','300','yes');
INSERT INTO `wp_options` VALUES (60,'medium_size_h','300','yes');
INSERT INTO `wp_options` VALUES (61,'avatar_default','mystery','yes');
INSERT INTO `wp_options` VALUES (62,'large_size_w','1024','yes');
INSERT INTO `wp_options` VALUES (63,'large_size_h','1024','yes');
INSERT INTO `wp_options` VALUES (64,'image_default_link_type','none','yes');
INSERT INTO `wp_options` VALUES (65,'image_default_size','','yes');
INSERT INTO `wp_options` VALUES (66,'image_default_align','','yes');
INSERT INTO `wp_options` VALUES (67,'close_comments_for_old_posts','0','yes');
INSERT INTO `wp_options` VALUES (68,'close_comments_days_old','14','yes');
INSERT INTO `wp_options` VALUES (69,'thread_comments','1','yes');
INSERT INTO `wp_options` VALUES (70,'thread_comments_depth','5','yes');
INSERT INTO `wp_options` VALUES (71,'page_comments','0','yes');
INSERT INTO `wp_options` VALUES (72,'comments_per_page','50','yes');
INSERT INTO `wp_options` VALUES (73,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (74,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (75,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (76,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (77,'widget_text','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (78,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (79,'uninstall_plugins','a:2:{s:27:\"ninja-forms/ninja-forms.php\";s:21:\"ninja_forms_uninstall\";s:27:\"autoptimize/autoptimize.php\";s:29:\"autoptimizeMain::on_uninstall\";}','no');
INSERT INTO `wp_options` VALUES (80,'timezone_string','','yes');
INSERT INTO `wp_options` VALUES (81,'page_for_posts','0','yes');
INSERT INTO `wp_options` VALUES (82,'page_on_front','10','yes');
INSERT INTO `wp_options` VALUES (83,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (84,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (85,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (86,'site_icon','0','yes');
INSERT INTO `wp_options` VALUES (87,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (88,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (89,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_options` VALUES (90,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `wp_options` VALUES (91,'admin_email_lifespan','1641308447','yes');
INSERT INTO `wp_options` VALUES (92,'disallowed_keys','','no');
INSERT INTO `wp_options` VALUES (93,'comment_previously_approved','1','yes');
INSERT INTO `wp_options` VALUES (94,'auto_plugin_theme_update_emails','a:0:{}','no');
INSERT INTO `wp_options` VALUES (95,'auto_update_core_dev','enabled','yes');
INSERT INTO `wp_options` VALUES (96,'auto_update_core_minor','enabled','yes');
INSERT INTO `wp_options` VALUES (97,'auto_update_core_major','enabled','yes');
INSERT INTO `wp_options` VALUES (98,'initial_db_version','49752','yes');
INSERT INTO `wp_options` VALUES (99,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:134:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:20:\"manage_feed_settings\";b:1;s:16:\"edit_feed_source\";b:1;s:16:\"read_feed_source\";b:1;s:18:\"delete_feed_source\";b:1;s:17:\"edit_feed_sources\";b:1;s:24:\"edit_others_feed_sources\";b:1;s:20:\"publish_feed_sources\";b:1;s:25:\"read_private_feed_sources\";b:1;s:19:\"delete_feed_sources\";b:1;s:27:\"delete_private_feed_sources\";b:1;s:29:\"delete_published_feed_sources\";b:1;s:26:\"delete_others_feed_sources\";b:1;s:25:\"edit_private_feed_sources\";b:1;s:27:\"edit_published_feed_sources\";b:1;s:24:\"manage_feed_source_terms\";b:1;s:22:\"edit_feed_source_terms\";b:1;s:24:\"delete_feed_source_terms\";b:1;s:24:\"assign_feed_source_terms\";b:1;s:14:\"edit_feed_item\";b:1;s:14:\"read_feed_item\";b:1;s:16:\"delete_feed_item\";b:1;s:15:\"edit_feed_items\";b:1;s:22:\"edit_others_feed_items\";b:1;s:18:\"publish_feed_items\";b:1;s:23:\"read_private_feed_items\";b:1;s:17:\"delete_feed_items\";b:1;s:25:\"delete_private_feed_items\";b:1;s:27:\"delete_published_feed_items\";b:1;s:24:\"delete_others_feed_items\";b:1;s:23:\"edit_private_feed_items\";b:1;s:25:\"edit_published_feed_items\";b:1;s:22:\"manage_feed_item_terms\";b:1;s:20:\"edit_feed_item_terms\";b:1;s:22:\"delete_feed_item_terms\";b:1;s:22:\"assign_feed_item_terms\";b:1;s:19:\"edit_feed_blacklist\";b:1;s:19:\"read_feed_blacklist\";b:1;s:21:\"delete_feed_blacklist\";b:1;s:20:\"edit_feed_blacklists\";b:1;s:27:\"edit_others_feed_blacklists\";b:1;s:23:\"publish_feed_blacklists\";b:1;s:28:\"read_private_feed_blacklists\";b:1;s:22:\"delete_feed_blacklists\";b:1;s:30:\"delete_private_feed_blacklists\";b:1;s:32:\"delete_published_feed_blacklists\";b:1;s:29:\"delete_others_feed_blacklists\";b:1;s:28:\"edit_private_feed_blacklists\";b:1;s:30:\"edit_published_feed_blacklists\";b:1;s:27:\"manage_feed_blacklist_terms\";b:1;s:25:\"edit_feed_blacklist_terms\";b:1;s:27:\"delete_feed_blacklist_terms\";b:1;s:27:\"assign_feed_blacklist_terms\";b:1;s:18:\"edit_feed_template\";b:1;s:18:\"read_feed_template\";b:1;s:20:\"delete_feed_template\";b:1;s:19:\"edit_feed_templates\";b:1;s:26:\"edit_others_feed_templates\";b:1;s:22:\"publish_feed_templates\";b:1;s:27:\"read_private_feed_templates\";b:1;s:21:\"delete_feed_templates\";b:1;s:29:\"delete_private_feed_templates\";b:1;s:31:\"delete_published_feed_templates\";b:1;s:28:\"delete_others_feed_templates\";b:1;s:27:\"edit_private_feed_templates\";b:1;s:29:\"edit_published_feed_templates\";b:1;s:26:\"manage_feed_template_terms\";b:1;s:24:\"edit_feed_template_terms\";b:1;s:26:\"delete_feed_template_terms\";b:1;s:26:\"assign_feed_template_terms\";b:1;s:11:\"smartslider\";b:1;s:18:\"smartslider_config\";b:1;s:16:\"smartslider_edit\";b:1;s:18:\"smartslider_delete\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:103:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:20:\"manage_feed_settings\";b:1;s:16:\"edit_feed_source\";b:1;s:16:\"read_feed_source\";b:1;s:18:\"delete_feed_source\";b:1;s:17:\"edit_feed_sources\";b:1;s:24:\"edit_others_feed_sources\";b:1;s:20:\"publish_feed_sources\";b:1;s:25:\"read_private_feed_sources\";b:1;s:19:\"delete_feed_sources\";b:1;s:27:\"delete_private_feed_sources\";b:1;s:29:\"delete_published_feed_sources\";b:1;s:26:\"delete_others_feed_sources\";b:1;s:25:\"edit_private_feed_sources\";b:1;s:27:\"edit_published_feed_sources\";b:1;s:24:\"manage_feed_source_terms\";b:1;s:22:\"edit_feed_source_terms\";b:1;s:24:\"delete_feed_source_terms\";b:1;s:24:\"assign_feed_source_terms\";b:1;s:14:\"edit_feed_item\";b:1;s:14:\"read_feed_item\";b:1;s:16:\"delete_feed_item\";b:1;s:15:\"edit_feed_items\";b:1;s:22:\"edit_others_feed_items\";b:1;s:18:\"publish_feed_items\";b:1;s:23:\"read_private_feed_items\";b:1;s:17:\"delete_feed_items\";b:1;s:25:\"delete_private_feed_items\";b:1;s:27:\"delete_published_feed_items\";b:1;s:24:\"delete_others_feed_items\";b:1;s:23:\"edit_private_feed_items\";b:1;s:25:\"edit_published_feed_items\";b:1;s:22:\"manage_feed_item_terms\";b:1;s:20:\"edit_feed_item_terms\";b:1;s:22:\"delete_feed_item_terms\";b:1;s:22:\"assign_feed_item_terms\";b:1;s:19:\"edit_feed_blacklist\";b:1;s:19:\"read_feed_blacklist\";b:1;s:21:\"delete_feed_blacklist\";b:1;s:20:\"edit_feed_blacklists\";b:1;s:27:\"edit_others_feed_blacklists\";b:1;s:23:\"publish_feed_blacklists\";b:1;s:28:\"read_private_feed_blacklists\";b:1;s:22:\"delete_feed_blacklists\";b:1;s:30:\"delete_private_feed_blacklists\";b:1;s:32:\"delete_published_feed_blacklists\";b:1;s:29:\"delete_others_feed_blacklists\";b:1;s:28:\"edit_private_feed_blacklists\";b:1;s:30:\"edit_published_feed_blacklists\";b:1;s:27:\"manage_feed_blacklist_terms\";b:1;s:25:\"edit_feed_blacklist_terms\";b:1;s:27:\"delete_feed_blacklist_terms\";b:1;s:27:\"assign_feed_blacklist_terms\";b:1;s:18:\"edit_feed_template\";b:1;s:18:\"read_feed_template\";b:1;s:20:\"delete_feed_template\";b:1;s:19:\"edit_feed_templates\";b:1;s:26:\"edit_others_feed_templates\";b:1;s:22:\"publish_feed_templates\";b:1;s:27:\"read_private_feed_templates\";b:1;s:21:\"delete_feed_templates\";b:1;s:29:\"delete_private_feed_templates\";b:1;s:31:\"delete_published_feed_templates\";b:1;s:28:\"delete_others_feed_templates\";b:1;s:27:\"edit_private_feed_templates\";b:1;s:29:\"edit_published_feed_templates\";b:1;s:26:\"manage_feed_template_terms\";b:1;s:24:\"edit_feed_template_terms\";b:1;s:26:\"delete_feed_template_terms\";b:1;s:26:\"assign_feed_template_terms\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (100,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (101,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (102,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (103,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (104,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (105,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (106,'sidebars_widgets','a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:7:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";i:6;s:10:\"nav_menu-2\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (107,'cron','a:12:{i:1633356049;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1633359649;a:5:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1633359950;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1633359952;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1633389318;a:1:{s:26:\"wprss_fetch_all_feeds_hook\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1633432518;a:2:{s:19:\"wprss_truncate_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"wprss_truncate_posts_hook\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1633601568;a:1:{s:22:\"nf_marketing_feed_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:9:\"nf-weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1633601579;a:1:{s:26:\"nf_weekly_promotion_update\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:9:\"nf-weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1633700048;a:1:{s:28:\"ml-slider_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1633705249;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1634465603;a:1:{s:13:\"nf_optin_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"nf-monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2678400;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (108,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (109,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (110,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (111,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (112,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (113,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (114,'nonce_key','!odF`F(lM&hIUl7Vn}{LMA;3Bxnn{jh|@f.k6[ {pdXA&H-wr&_o3:aA2EyAZ}Kz','no');
INSERT INTO `wp_options` VALUES (115,'nonce_salt','QU]?b7Vpmq(ZtBQY$`e`w`E,Nmg.=zk#?e[kgIV+I];ux),m@uK8B=*zAM<0g,PW','no');
INSERT INTO `wp_options` VALUES (116,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (117,'widget_nav_menu','a:2:{i:2;a:1:{s:8:\"nav_menu\";i:3;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (118,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (120,'recovery_keys','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (121,'https_detection_errors','a:1:{s:20:\"https_request_failed\";a:1:{i:0;s:21:\"HTTPS request failed.\";}}','yes');
INSERT INTO `wp_options` VALUES (128,'theme_mods_twentytwentyone','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1625756761;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}','yes');
INSERT INTO `wp_options` VALUES (136,'can_compress_scripts','0','no');
INSERT INTO `wp_options` VALUES (147,'current_theme','Child Theme for Eric Reguly','yes');
INSERT INTO `wp_options` VALUES (148,'theme_mods_twentytwentyone-child','a:5:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:7:\"primary\";i:3;s:6:\"footer\";i:0;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1625823477;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}s:16:\"background_color\";s:6:\"ffffff\";}','yes');
INSERT INTO `wp_options` VALUES (149,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (152,'finished_updating_comment_type','1','yes');
INSERT INTO `wp_options` VALUES (164,'theme_mods_eric-reguly','a:6:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:12:\"header_image\";s:89:\"http://localhost:10013/wp-content/uploads/2021/07/cropped-Bob-Reguly-Vietnam-scaled-1.jpg\";s:17:\"header_image_data\";O:8:\"stdClass\":5:{s:13:\"attachment_id\";i:19;s:3:\"url\";s:89:\"http://localhost:10013/wp-content/uploads/2021/07/cropped-Bob-Reguly-Vietnam-scaled-1.jpg\";s:13:\"thumbnail_url\";s:89:\"http://localhost:10013/wp-content/uploads/2021/07/cropped-Bob-Reguly-Vietnam-scaled-1.jpg\";s:6:\"height\";i:988;s:5:\"width\";i:1000;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1625828324;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:0:{}}}}','yes');
INSERT INTO `wp_options` VALUES (182,'nav_menu_options','a:1:{s:8:\"auto_add\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (196,'_transient_health-check-site-status-result','{\"good\":13,\"recommended\":5,\"critical\":0}','yes');
INSERT INTO `wp_options` VALUES (408,'widget_block','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (411,'wp_force_deactivated_plugins','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (467,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1633334922;s:7:\"checked\";a:3:{s:11:\"eric-reguly\";s:5:\"1.0.0\";s:21:\"twentytwentyone-child\";s:0:\"\";s:15:\"twentytwentyone\";s:3:\"1.4\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:1:{s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.4.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (493,'recently_activated','a:1:{s:33:\"smart-slider-3/smart-slider-3.php\";i:1633095182;}','yes');
INSERT INTO `wp_options` VALUES (500,'uaf_css_updated_timestamp','1631104032','yes');
INSERT INTO `wp_options` VALUES (501,'uaf_site_url','aHR0cDovL2xvY2FsaG9zdDoxMDAxMw==','yes');
INSERT INTO `wp_options` VALUES (502,'uaf_install_date','2021-09-08','yes');
INSERT INTO `wp_options` VALUES (503,'uaf_current_version','6.1.6','yes');
INSERT INTO `wp_options` VALUES (504,'uaf_api_key','','yes');
INSERT INTO `wp_options` VALUES (505,'uaf_server_url_type','default','yes');
INSERT INTO `wp_options` VALUES (506,'uaf_activated_url','','yes');
INSERT INTO `wp_options` VALUES (507,'uaf_uploader_type','js','yes');
INSERT INTO `wp_options` VALUES (508,'uaf_font_display_property','auto','yes');
INSERT INTO `wp_options` VALUES (509,'uaf_enable_multi_lang_support','0','yes');
INSERT INTO `wp_options` VALUES (510,'uaf_disbale_editor_font_list','0','yes');
INSERT INTO `wp_options` VALUES (511,'uaf_use_absolute_font_path','0','yes');
INSERT INTO `wp_options` VALUES (512,'uaf_hide_key','no','yes');
INSERT INTO `wp_options` VALUES (593,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.8.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.8.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.8.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.8.1-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.8.1\";s:7:\"version\";s:5:\"5.8.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1633347563;s:15:\"version_checked\";s:5:\"5.8.1\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (598,'acf_version','5.10.2','yes');
INSERT INTO `wp_options` VALUES (602,'category_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (663,'ninja_forms_oauth_client_secret','LIiD1oVTWWRjWPoOO6Eh0p6xUjwwQ7w1p03vRWYf','yes');
INSERT INTO `wp_options` VALUES (664,'ninja_forms_version','3.5.8.3','yes');
INSERT INTO `wp_options` VALUES (665,'ninja_forms_db_version','1.4','no');
INSERT INTO `wp_options` VALUES (666,'ninja_forms_required_updates','a:6:{s:19:\"CacheCollateActions\";s:19:\"2021-09-16 10:12:45\";s:17:\"CacheCollateForms\";s:19:\"2021-09-16 10:12:45\";s:18:\"CacheCollateFields\";s:19:\"2021-09-16 10:12:45\";s:19:\"CacheCollateObjects\";s:19:\"2021-09-16 10:12:45\";s:19:\"CacheCollateCleanup\";s:19:\"2021-09-16 10:12:45\";s:25:\"CacheFieldReconcilliation\";s:19:\"2021-09-16 10:12:45\";}','yes');
INSERT INTO `wp_options` VALUES (667,'ninja_forms_settings','a:11:{s:11:\"date_format\";s:5:\"m/d/Y\";s:8:\"currency\";s:3:\"USD\";s:18:\"recaptcha_site_key\";s:0:\"\";s:20:\"recaptcha_secret_key\";s:0:\"\";s:20:\"recaptcha_site_key_3\";s:0:\"\";s:22:\"recaptcha_secret_key_3\";s:0:\"\";s:14:\"recaptcha_lang\";s:0:\"\";s:19:\"delete_on_uninstall\";i:0;s:21:\"disable_admin_notices\";i:0;s:16:\"builder_dev_mode\";i:0;s:18:\"opinionated_styles\";s:5:\"light\";}','yes');
INSERT INTO `wp_options` VALUES (668,'ninja_forms_zuul','24','no');
INSERT INTO `wp_options` VALUES (671,'ninja_forms_addons_feed','[{\"title\":\"Conditional Logic\",\"image\":\"assets\\/img\\/add-ons\\/conditional-logic.png\",\"content\":\"Build dynamic forms that can change as a user fills out the form. Show and hide fields. Send certain email, don\'t send others. Redirect to one of many pages. The possibilities are endless!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/conditional-logic\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Conditional+Logic\",\"plugin\":\"ninja-forms-conditionals\\/conditionals.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/conditional-logic\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Conditional+Logic+Docs\",\"version\":\"3.1\",\"categories\":[{\"name\":\"Look &amp; Feel\",\"slug\":\"look-feel\"},{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Developer\",\"slug\":\"developer\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"User\",\"slug\":\"user\"},{\"name\":\"Business\",\"slug\":\"business\"},{\"name\":\"Personal\",\"slug\":\"personal\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Form Function and Design\",\"slug\":\"form-function-design\"}]},{\"title\":\"Multi Step Forms\",\"image\":\"assets\\/img\\/add-ons\\/multi-step-forms.png\",\"content\":\"Give submissions a boost on any longer form by making it a multi-page form. Drag and drop fields between pages, add breadcrumb navigation, a progress bar, and loads more!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/multi-step-forms\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Multi+Step+Forms\",\"plugin\":\"ninja-forms-multi-part\\/multi-part.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/multi-step-forms\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Multi+Step+Forms+Docs\",\"version\":\"3.0.26\",\"categories\":[{\"name\":\"Look &amp; Feel\",\"slug\":\"look-feel\"},{\"name\":\"Developer\",\"slug\":\"developer\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"User\",\"slug\":\"user\"},{\"name\":\"Business\",\"slug\":\"business\"},{\"name\":\"Personal\",\"slug\":\"personal\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Form Function and Design\",\"slug\":\"form-function-design\"}]},{\"title\":\"Front-End Posting\",\"image\":\"assets\\/img\\/add-ons\\/front-end-posting.png\",\"content\":\"Let users publish content just by submitting a form! Completely configurable including post type, title, even categories and tags. Set post status, author, and much more!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/post-creation\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Front-End+Posting\",\"plugin\":\"ninja-forms-post-creation\\/ninja-forms-post-creation.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/post-creation\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Front-End+Posting+Docs\",\"version\":\"3.0.10\",\"categories\":[{\"name\":\"Content Management\",\"slug\":\"content-management\"},{\"name\":\"Developer\",\"slug\":\"developer\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"User\",\"slug\":\"user\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"User Management\",\"slug\":\"user-management\"}]},{\"title\":\"File Uploads\",\"image\":\"assets\\/img\\/add-ons\\/file-uploads.png\",\"content\":\"Upload files to WordPress, Google Drive, Dropbox, or Amazon S3. Upload documents, images, media, and more. Easily control file type and size. Add an upload field to any form!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/file-uploads\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=File+Uploads\",\"plugin\":\"ninja-forms-uploads\\/file-uploads.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/file-uploads\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=File+Uploads+Docs\",\"version\":\"3.3.12\",\"categories\":[{\"name\":\"Content Management\",\"slug\":\"content-management\"},{\"name\":\"Developer\",\"slug\":\"developer\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"User\",\"slug\":\"user\"},{\"name\":\"Business\",\"slug\":\"business\"},{\"name\":\"Personal\",\"slug\":\"personal\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"File Management\",\"slug\":\"file-management\"}]},{\"title\":\"Layout and Styles\",\"image\":\"assets\\/img\\/add-ons\\/layout-styles.png\",\"content\":\"Drag and drop fields into columns and rows. Resize fields. Add backgrounds, adjust borders, and more. Design gorgeous forms without being a designer!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/layouts-and-styles\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Layout+and+Styles\",\"plugin\":\"ninja-forms-style\\/ninja-forms-style.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/layouts-and-styles\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Layout+and+Styles+Docs\",\"version\":\"3.0.29\",\"categories\":[{\"name\":\"Look &amp; Feel\",\"slug\":\"look-feel\"},{\"name\":\"Developer\",\"slug\":\"developer\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"User\",\"slug\":\"user\"},{\"name\":\"Business\",\"slug\":\"business\"},{\"name\":\"Personal\",\"slug\":\"personal\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Form Function and Design\",\"slug\":\"form-function-design\"}]},{\"title\":\"Mailchimp\",\"image\":\"assets\\/img\\/add-ons\\/mailchimp.png\",\"content\":\"Bring new life to your lists with upgraded Mailchimp signup forms for WordPress! Easy to build and customize with no code required. Link to lists and interest groups!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/mailchimp\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Mailchimp\",\"plugin\":\"ninja-forms-mail-chimp\\/ninja-forms-mail-chimp.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/mailchimp\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Mailchimp+Docs\",\"version\":\"3.2.2\",\"categories\":[{\"name\":\"Email Marketing\",\"slug\":\"email-marketing\"},{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Business\",\"slug\":\"business\"},{\"name\":\"Personal\",\"slug\":\"personal\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"}]},{\"title\":\"Campaign Monitor\",\"image\":\"assets\\/img\\/add-ons\\/campaign-monitor.png\",\"content\":\"Make any form a custom crafted WordPress signup form for Campaign Monitor. Connect to any list, link form fields to list fields, and watch your lists grow!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/campaign-monitor\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Campaign+Monitor\",\"plugin\":\"ninja-forms-campaign-monitor\\/ninja-forms-campaign-monitor.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/campaign-monitor\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Campaign+Monitor+Docs\",\"version\":\"3.0.5\",\"categories\":[{\"name\":\"Email Marketing\",\"slug\":\"email-marketing\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Personal\",\"slug\":\"personal\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"}]},{\"title\":\"User Analytics\",\"image\":\"assets\\/img\\/add-ons\\/user-analytics.png\",\"content\":\"Get better data on where your form traffic is coming from with every submission. Add 12+ analytics fields including UTM values,  URL referrer, geo data, and more!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/user-analytics\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=User+Analytics\",\"plugin\":\"ninja-forms-user-analytics\\/ninja-forms-user-analytics.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/user-analytics\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=User+Analytics+Docs\",\"version\":\"3.0.1\",\"categories\":[{\"name\":\"Content Management\",\"slug\":\"content-management\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"User Management\",\"slug\":\"user-management\"}]},{\"title\":\"Constant Contact\",\"image\":\"assets\\/img\\/add-ons\\/constant-contact.png\",\"content\":\"Connect WordPress to Constant Contact with forms that you can build and design just the way you want, no tech skills required! Subscribe users to any list or interest group.\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/constant-contact\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Constant+Contact\",\"plugin\":\"ninja-forms-constant-contact\\/ninja-forms-constant-contact.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/constant-contact\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Constant+Contact+Docs\",\"version\":\"3.1.0\",\"categories\":[{\"name\":\"Email Marketing\",\"slug\":\"email-marketing\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Personal\",\"slug\":\"personal\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"}]},{\"title\":\"AWeber\",\"image\":\"assets\\/img\\/add-ons\\/aweber.png\",\"content\":\"Build your lists faster with easy to design, professional quality WordPress signup forms. No technical skills required. Connect WordPress to AWeber with style!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/aweber\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=AWeber\",\"plugin\":\"ninja-forms-aweber\\/ninja-forms-aweber.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/aweber\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=AWeber+Docs\",\"version\":\"3.1.1\",\"categories\":[{\"name\":\"Email Marketing\",\"slug\":\"email-marketing\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"}]},{\"title\":\"PayPal Express\",\"image\":\"assets\\/img\\/add-ons\\/paypal-express.png\",\"content\":\"Set up any form to accept PayPal payments with PayPal Express for WordPress! Base totals on a fixed amount, user entered amount, or a calculated total.\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/paypal-express\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=PayPal+Express\",\"plugin\":\"ninja-forms-paypal-express\\/ninja-forms-paypal-express.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/paypal-express\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=PayPal+Express+Docs\",\"version\":\"3.0.15\",\"categories\":[{\"name\":\"Payment Gateways\",\"slug\":\"payment-gateways\"},{\"name\":\"Developer\",\"slug\":\"developer\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"User\",\"slug\":\"user\"},{\"name\":\"Business\",\"slug\":\"business\"},{\"name\":\"Personal\",\"slug\":\"personal\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"}]},{\"title\":\"MailPoet\",\"image\":\"assets\\/img\\/add-ons\\/mailpoet.png\",\"content\":\"Say hello better! Customize your MailPoet signup forms to draw more subscribers than ever before. Connect WordPress to any MailPoet list in minutes!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/mailpoet\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=MailPoet\",\"plugin\":\"ninja-forms-mailpoet\\/nf-mailpoet.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/mailpoet\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=MailPoet+Docs\",\"version\":\"3.0.0\",\"categories\":[{\"name\":\"Email Marketing\",\"slug\":\"email-marketing\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"}]},{\"title\":\"Zoho CRM\",\"image\":\"assets\\/img\\/add-ons\\/zoho-crm.png\",\"content\":\"Customize your forms to get the most out of your connection between WordPress and Zoho. Link form fields directly to Zoho fields, custom fields included, from almost any module.\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/zoho-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Zoho+CRM\",\"plugin\":\"ninja-forms-zoho-crm\\/ninja-forms-zoho-crm.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/zoho-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Zoho+CRM+Docs\",\"version\":\"3.4\",\"categories\":[{\"name\":\"CRM Integrations\",\"slug\":\"crm-integrations\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"}]},{\"title\":\"Capsule CRM\",\"image\":\"assets\\/img\\/add-ons\\/capsule-crm.png\",\"content\":\"Boost conversions from WordPress to Capsule with forms tailor made to your audience. Link form fields to Capsule fields from a wide range of modules. Custom fields too!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/capsule-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Capsule+CRM\",\"plugin\":\"ninja-forms-capsule-crm\\/ninja-forms-capsule-crm.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/capsule-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Capsule+CRM+Docs\",\"version\":\"3.4.1\",\"categories\":[{\"name\":\"CRM Integrations\",\"slug\":\"crm-integrations\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"}]},{\"title\":\"Stripe\",\"image\":\"assets\\/img\\/add-ons\\/stripe.png\",\"content\":\"Set up any WordPress form to accept credit card payments or donations through Stripe. Base totals on a fixed amount, user entered amount, or a calculated total!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/stripe\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Stripe\",\"plugin\":\"ninja-forms-stripe\\/ninja-forms-stripe.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/stripe\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Stripe+Docs\",\"version\":\"3.1.3\",\"categories\":[{\"name\":\"Payment Gateways\",\"slug\":\"payment-gateways\"},{\"name\":\"Developer\",\"slug\":\"developer\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"User\",\"slug\":\"user\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"}]},{\"title\":\"Insightly CRM\",\"image\":\"assets\\/img\\/add-ons\\/insightly-crm.png\",\"content\":\"Your customer\'s journey begins with your WordPress forms. Send Contacts, Leads, Opportunities, Custom fields and more seamlessly from WordPress to Insightly!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/insightly-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Insightly+CRM\",\"plugin\":\"ninja-forms-insightly-crm\\/ninja-forms-insightly-crm.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/insightly-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Insightly+CRM+Docs\",\"version\":\"3.2.0\",\"categories\":[{\"name\":\"CRM Integrations\",\"slug\":\"crm-integrations\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"}]},{\"title\":\"PDF Form Submission\",\"image\":\"assets\\/img\\/add-ons\\/pdf-form-submission.png\",\"content\":\"Generate a PDF of any WordPress form submission. Export any submission as a PDF, or attach it to an email and send a copy to whoever needs one!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/pdf\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=PDF+Form+Submission\",\"plugin\":\"ninja-forms-pdf-submissions\\/nf-pdf-submissions.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/pdf\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=PDF+Form+Submission+Docs\",\"version\":\"3.1.4\",\"categories\":[{\"name\":\"Content Management\",\"slug\":\"content-management\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Business\",\"slug\":\"business\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"File Management\",\"slug\":\"file-management\"}]},{\"title\":\"Trello\",\"image\":\"assets\\/img\\/add-ons\\/trello.png\",\"content\":\"Create a new Trello card with data from any WordPress form submission. Map fields to card details, assign members and labels, upload images, embed links.\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/trello\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Trello\",\"plugin\":\"ninja-forms-trello\\/ninja-forms-trello.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/trello\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Trello+Docs\",\"version\":\"3.0.3\",\"categories\":[{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Notification and Workflow\",\"slug\":\"notification-workflow\"}]},{\"title\":\"Elavon\",\"image\":\"assets\\/img\\/add-ons\\/elavon.png\",\"content\":\"Accept credit card payments from any of your WordPress forms. Pass customer and invoice info from any field securely into Elavon with each payment.\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/elavon\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Elavon\",\"plugin\":\"ninja-forms-elavon-payment-gateway\\/ninja-forms-elavon-payment-gateway.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/elavon\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Elavon+Docs\",\"version\":\"3.1.0\",\"categories\":[{\"name\":\"Payment Gateways\",\"slug\":\"payment-gateways\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"}]},{\"title\":\"Zapier\",\"image\":\"assets\\/img\\/add-ons\\/zapier.png\",\"content\":\"Don\'t see an add-on integration for a service you love? Don\'t worry! Connect WordPress to more than 1,500 different services through Zapier, no code required!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/zapier\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Zapier\",\"plugin\":\"ninja-forms-zapier\\/ninja-forms-zapier.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/zapier\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Zapier+Docs\",\"version\":\"3.0.8\",\"categories\":[{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"File Management\",\"slug\":\"file-management\"},{\"name\":\"Notification and Workflow\",\"slug\":\"notification-workflow\"},{\"name\":\"Custom Integrations\",\"slug\":\"custom-integrations\"}]},{\"title\":\"Salesforce CRM\",\"image\":\"assets\\/img\\/add-ons\\/salesforce-crm.png\",\"content\":\"Easily map any form field to any Salesforce Object or Field. A better connection to your customers begins with a better WordPress form builder!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/salesforce-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Salesforce+CRM\",\"plugin\":\"ninja-forms-salesforce-crm\\/ninja-forms-salesforce-crm.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/salesforce-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Salesforce+CRM+Docs\",\"version\":\"3.3.0\",\"categories\":[{\"name\":\"CRM Integrations\",\"slug\":\"crm-integrations\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"}]},{\"title\":\"Slack\",\"image\":\"assets\\/img\\/add-ons\\/slack.png\",\"content\":\"Get realtime Slack notifications in the workspace and channel of your choice with any new WordPress form submission. @Mention any team member!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/slack\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Slack\",\"plugin\":\"ninja-forms-slack\\/ninja-forms-slack.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/slack\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Slack+Docs\",\"version\":\"3.0.3\",\"categories\":[{\"name\":\"Notifications\",\"slug\":\"notifications\"},{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Notification and Workflow\",\"slug\":\"notification-workflow\"}]},{\"title\":\"CleverReach\",\"image\":\"assets\\/img\\/add-ons\\/cleverreach.png\",\"content\":\"Grow the reach of your email marketing with better CleverReach signup forms. Tailor your forms to your audience with this easy to set up integration!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/cleverreach\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=CleverReach\",\"plugin\":\"ninja-forms-cleverreach\\/ninja-forms-cleverreach.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/cleverreach\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=CleverReach+Docs\",\"version\":\"3.1.5\",\"categories\":[{\"name\":\"Email Marketing\",\"slug\":\"email-marketing\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"}]},{\"title\":\"Webhooks\",\"image\":\"assets\\/img\\/add-ons\\/webhooks.png\",\"content\":\"Can\'t find a WordPress integration for the service you love? Send WordPress forms data to any external URL using a simple GET or POST request!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/webhooks\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Webhooks\",\"plugin\":\"ninja-forms-webhooks\\/ninja-forms-webhooks.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/webhooks\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Webhooks+Docs\",\"version\":\"3.0.5\",\"categories\":[{\"name\":\"Notifications\",\"slug\":\"notifications\"},{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Developer\",\"slug\":\"developer\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"User\",\"slug\":\"user\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Custom Integrations\",\"slug\":\"custom-integrations\"}]},{\"title\":\"Excel Export\",\"image\":\"assets\\/img\\/add-ons\\/excel-export.png\",\"content\":\"Export any form\'s submissions as a Microsoft Excel spreadsheet. Choose a date range, the fields you want to include, and export to Excel! \",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/excel-export\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Excel+Export\",\"plugin\":\"ninja-forms-excel-export\\/ninja-forms-excel-export.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/excel-export\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Excel+Export+Docs\",\"version\":\"3.3.2\",\"categories\":[{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"File Management\",\"slug\":\"file-management\"}]},{\"title\":\"Formstack Documents\",\"image\":\"assets\\/img\\/add-ons\\/webmerge.png\",\"content\":\"Create specifically formatted templates from an uploaded PDF or Word document, then auto-fill them from any WordPress form submission!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/webmerge\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Formstack+Documents\",\"plugin\":\"ninja-forms-webmerge\\/ninja-forms-webmerge.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/webmerge\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Formstack+Documents+Docs\",\"version\":\"3.0.3\",\"categories\":[{\"name\":\"Content Management\",\"slug\":\"content-management\"},{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Developer\",\"slug\":\"developer\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"User\",\"slug\":\"user\"},{\"name\":\"Agency\",\"slug\":\"agency\"}]},{\"title\":\"Help Scout\",\"image\":\"assets\\/img\\/add-ons\\/help-scout.png\",\"content\":\"Offering great support is hard. Tailor your WordPress forms to match your customers\' needs with this Help Scout integration for WordPress.\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/help-scout\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Help+Scout\",\"plugin\":null,\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/help-scout\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Help+Scout+Docs\",\"version\":\"3.1.3\",\"categories\":[{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"User Management\",\"slug\":\"user-management\"}]},{\"title\":\"Emma\",\"image\":\"assets\\/img\\/add-ons\\/emma.png\",\"content\":\"Take your email marketing further with handcrafted, easy to build signup forms that connect directly into your Emma account! \",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/emma\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Emma\",\"plugin\":\"ninja-forms-emma\\/ninja-forms-emma.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/emma\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Emma+Docs\",\"version\":\"3.0.4\",\"categories\":[{\"name\":\"Email Marketing\",\"slug\":\"email-marketing\"},{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Developer\",\"slug\":\"developer\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"User\",\"slug\":\"user\"},{\"name\":\"Personal\",\"slug\":\"personal\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"}]},{\"title\":\"ClickSend SMS\",\"image\":\"assets\\/img\\/add-ons\\/clicksend-sms.png\",\"content\":\"Get instant SMS notifications with every new WordPress form submission. Respond to leads faster and make more personal connections!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/clicksend-sms\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=ClickSend+SMS\",\"plugin\":\"ninja-forms-clicksend\\/ninja-forms-clicksend.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/clicksend-sms\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=ClickSend+SMS+Docs\",\"version\":\"3.0.1\",\"categories\":[{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Notification and Workflow\",\"slug\":\"notification-workflow\"}]},{\"title\":\"Twilio SMS\",\"image\":\"assets\\/img\\/add-ons\\/twilio-sms.png\",\"content\":\"Get instant SMS notifications with every new WordPress form submission. Respond to leads faster and make more personal connections!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/twilio\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Twilio+SMS\",\"plugin\":\"ninja-forms-twilio\\/ninja-forms-twilio.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/twilio\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Twilio+SMS+Docs\",\"version\":\"3.0.1\",\"categories\":[{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Notification and Workflow\",\"slug\":\"notification-workflow\"}]},{\"title\":\"Recurly\",\"image\":\"assets\\/img\\/add-ons\\/recurly.png\",\"content\":\"Subscription plans a part of your business model? Let your users subscribe from any WordPress form & make management easier with Recurly!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/recurly\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Recurly\",\"plugin\":\"ninja-forms-recurly\\/ninja-forms-recurly.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/recurly\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Recurly+Docs\",\"version\":\"3.0.4\",\"categories\":[{\"name\":\"Payment Gateways\",\"slug\":\"payment-gateways\"},{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"}]},{\"title\":\"User Management\",\"image\":\"assets\\/img\\/add-ons\\/user-management.png\",\"content\":\"Allow your users to register, login, and manage their own profiles on your website. Customizable template forms for each, or design your own!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/user-management\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=User+Management\",\"plugin\":\"ninja-forms-user-management\\/ninja-forms-user-management.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/user-management\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=User+Management+Docs\",\"version\":\"3.0.12\",\"categories\":[{\"name\":\"Content Management\",\"slug\":\"content-management\"},{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"User Management\",\"slug\":\"user-management\"}]},{\"title\":\"Save Progress\",\"image\":\"assets\\/img\\/add-ons\\/save-progress.png\",\"content\":\"Let your users save their work and reload it all when they have time to return. Don\'t lose out on valuable submissions for longer forms!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/save-progress\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Save+Progress\",\"plugin\":\"ninja-forms-save-progress\\/ninja-forms-save-progress.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/save-progress\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Save+Progress+Docs\",\"version\":\"3.0.25\",\"categories\":[{\"name\":\"Content Management\",\"slug\":\"content-management\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Form Function and Design\",\"slug\":\"form-function-design\"}]},{\"title\":\"EmailOctopus\",\"image\":\"assets\\/img\\/add-ons\\/emailoctopus.png\",\"content\":\"Pair WordPress\' best drag and drop form builder with your EmailOctopus account for incredibly effective signup forms. Easy, complete integration.\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/emailoctopus\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=EmailOctopus\",\"plugin\":\"ninja-forms-emailoctopus\\/ninja-forms-emailoctopus.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/emailoctopus\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=EmailOctopus+Docs\",\"version\":\"3.0.0\",\"categories\":[{\"name\":\"Email Marketing\",\"slug\":\"email-marketing\"},{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Business\",\"slug\":\"business\"},{\"name\":\"Personal\",\"slug\":\"personal\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"}]},{\"title\":\"PipelineDeals CRM\",\"image\":\"assets\\/img\\/add-ons\\/pipelinedeals-crm.png\",\"content\":\"Complete, effortless integration with PipelineDeals CRM. Increase the flow of leads into your sales pipeline with upgraded lead generation forms!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/pipelinedeals-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=PipelineDeals+CRM\",\"plugin\":\"ninja-forms-zoho-crm\\/zoho-integration.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/pipelinedeals-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=PipelineDeals+CRM+Docs\",\"version\":\"3.0.1\",\"categories\":[{\"name\":\"CRM Integrations\",\"slug\":\"crm-integrations\"},{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"}]},{\"title\":\"Highrise CRM\",\"image\":\"assets\\/img\\/add-ons\\/highrise-crm.png\",\"content\":\"Get more out of the functional simplicity of Highrise CRM with forms that can be designed from the ground up to maximize conversion. \",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/highrise-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Highrise+CRM\",\"plugin\":\"ninja-forms-highrise-crm\\/ninja-forms-highrise-crm.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/highrise-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Highrise+CRM+Docs\",\"version\":\"3.0.0\",\"categories\":[{\"name\":\"CRM Integrations\",\"slug\":\"crm-integrations\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"}]},{\"title\":\"ConvertKit\",\"image\":\"assets\\/img\\/add-ons\\/convertkit.png\",\"content\":\"Connect WordPress to your ConvertKit account with completely customizable opt-in forms. Watch your audience & sales grow like never before!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/convertkit\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=ConvertKit\",\"plugin\":\"ninja-forms-convertkit\\/ninja-forms-convertkit.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/convertkit\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=ConvertKit+Docs\",\"version\":\"3.1.1\",\"categories\":[{\"name\":\"Email Marketing\",\"slug\":\"email-marketing\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Personal\",\"slug\":\"personal\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"}]},{\"title\":\"OnePageCRM\",\"image\":\"assets\\/img\\/add-ons\\/onepage-crm.png\",\"content\":\"Integrate WordPress with OnePage CRM seamlessly through highly customizable WordPress forms. Make better conversions <em>your<\\/em> Next Action!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/onepage-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=OnePageCRM\",\"plugin\":\"ninja-forms-onepage-crm\\/ninja-forms-onepage-crm.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/onepage-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=OnePageCRM+Docs\",\"version\":\"3.0.0\",\"categories\":[{\"name\":\"CRM Integrations\",\"slug\":\"crm-integrations\"},{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"}]},{\"title\":\"ActiveCampaign\",\"image\":\"assets\\/img\\/add-ons\\/active-campaign.png\",\"content\":\"Design custom forms that link perfectly to your ActiveCampaign account for the ultimate in marketing automation. Better leads begin here!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/activecampaign\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=ActiveCampaign\",\"plugin\":\"ninja-forms-active-campaign\\/ninja-forms-active-campaign.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/activecampaign\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=ActiveCampaign+Docs\",\"version\":\"3.1.0\",\"categories\":[{\"name\":\"Email Marketing\",\"slug\":\"email-marketing\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"}]}]','no');
INSERT INTO `wp_options` VALUES (672,'widget_ninja_forms_widget','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (673,'ninja-forms-views-secret','G0LzFQezSqi9cfwLm2IAYr6Hz4W6AXbDJ0tOcyJ4','yes');
INSERT INTO `wp_options` VALUES (675,'ninja_forms_needs_updates','0','yes');
INSERT INTO `wp_options` VALUES (676,'nf_admin_notice','a:1:{s:16:\"one_week_support\";a:3:{s:5:\"start\";s:9:\"9/23/2021\";s:3:\"int\";i:7;s:9:\"dismissed\";i:1;}}','yes');
INSERT INTO `wp_options` VALUES (679,'nf_form_tel_data','1','no');
INSERT INTO `wp_options` VALUES (680,'ninja_forms_allow_tracking','1','yes');
INSERT INTO `wp_options` VALUES (681,'ninja_forms_optin_reported','1','yes');
INSERT INTO `wp_options` VALUES (682,'nf_tel_collate','1','no');
INSERT INTO `wp_options` VALUES (685,'nf_active_promotions','{\"dashboard\":[{\"id\":\"personal-20\",\"location\":\"dashboard\",\"type\":\"personal\",\"content\":\"<a href=\\\"https:\\/\\/ninjaforms.com\\/personal-membership\\/?utm_source=ninja-forms-plugin&utm_medium=dashboard-banner-ad&utm_campaign=personal-banner-ad&utm_content=personal-20\\\" target=\\\"_blank\\\" class=\\\"nf-remove-promo-styling\\\"><img src=\\\"http:\\/\\/localhost:10013\\/wp-content\\/plugins\\/ninja-forms\\/assets\\/img\\/promotions\\/dashboard-banner-personal-20.png\\\"><\\/a>\",\"script\":\"\"},{\"id\":\"personal-50\",\"location\":\"dashboard\",\"type\":\"personal\",\"content\":\"<a href=\\\"https:\\/\\/ninjaforms.com\\/personal-membership\\/?utm_source=ninja-forms-plugin&utm_medium=dashboard-banner-ad&utm_campaign=personal-banner-ad&utm_content=personal-50\\\" target=\\\"_blank\\\" class=\\\"nf-remove-promo-styling\\\"><img src=\\\"http:\\/\\/localhost:10013\\/wp-content\\/plugins\\/ninja-forms\\/assets\\/img\\/promotions\\/dashboard-banner-personal-50.png\\\"><\\/a>\",\"script\":\"\"},{\"id\":\"sendwp-banner\",\"location\":\"dashboard\",\"content\":\"<span aria-label=\\\"SendWP. Getting WordPress email into an inbox shouldn\'t be that hard! Never miss another receipt, form submission, or any WordPress email ever again.\\\" style=\\\"cursor:pointer;width:800px;height:83px;border-radius:4px;-moz-border-radius:4px;-webkit-border-radius:4px;background-image:url(\'http:\\/\\/localhost:10013\\/wp-content\\/plugins\\/ninja-forms\\/assets\\/img\\/promotions\\/dashboard-banner-sendwp.png\');display:block;\\\"><\\/span>\",\"type\":\"sendwp\",\"script\":\"\\n      setTimeout(function(){ \\/* Wait for services to init. *\\/\\n        var data = {\\n          width: 450,\\n          closeOnClick: \'body\',\\n          closeOnEsc: true,\\n          content: \'<p><h2>Frustrated that WordPress email isn\\u2019t being received?<\\/h2><p>Form submission notifications not hitting your inbox? Some of your visitors getting form feedback via email, others not? By default, your WordPress site sends emails through your web host, which can be unreliable. Your host has spent lots of time and money optimizing to serve your pages, not send your emails.<\\/p><h3>Sign up for SendWP today, and never deal with WordPress email issues again!<\\/h3><p>SendWP is an email service that removes your web host from the email equation.<\\/p><ul style=&quot;list-style-type:initial;margin-left: 20px;&quot;><li>Sends email through dedicated email service, increasing email deliverability.<\\/li><li>Keeps form submission emails out of spam by using a trusted email provider.<\\/li><li>On a shared web host? Don\\u2019t worry about emails being rejected because of blocked IP addresses.<\\/li><li><strong>$1 for the first month. $9\\/month after. Cancel anytime!<\\/strong><\\/li><\\/ul><\\/p><br \\/>\',\\n          btnPrimary: {\\n            text: \'Sign me up!\',\\n            callback: function() {\\n              var spinner = document.createElement(\'span\');\\n              spinner.classList.add(\'dashicons\', \'dashicons-update\', \'dashicons-update-spin\');\\n              var w = this.offsetWidth;\\n              this.innerHTML = spinner.outerHTML;\\n              this.style.width = w+\'px\';\\n              ninja_forms_sendwp_remote_install();\\n            }\\n          },\\n          btnSecondary: {\\n            text: \'Cancel\',\\n            callback: function() {\\n              sendwpModal.toggleModal(false);\\n            }\\n          }\\n        }\\n        var sendwpModal = new NinjaModal(data);\\n      }, 500);\\n    \"}]}','no');
INSERT INTO `wp_options` VALUES (686,'nf_form_tel_sent','true','no');
INSERT INTO `wp_options` VALUES (687,'nf_sub_expiration','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (739,'whatthefile-install-date','2021-09-17','no');
INSERT INTO `wp_options` VALUES (816,'wprss_settings_general','a:35:{s:7:\"open_dd\";s:5:\"blank\";s:9:\"follow_dd\";b:1;s:10:\"feed_limit\";s:2:\"19\";s:11:\"date_format\";s:5:\"d-m-Y\";s:19:\"limit_feed_items_db\";i:200;s:13:\"cron_interval\";s:10:\"twicedaily\";s:14:\"styles_disable\";i:0;s:10:\"title_link\";b:1;s:11:\"title_limit\";s:0:\"\";s:13:\"source_enable\";b:1;s:21:\"text_preceding_source\";s:0:\"\";s:11:\"date_enable\";b:1;s:19:\"text_preceding_date\";s:12:\"Published on\";s:25:\"limit_feed_items_imported\";s:1:\"0\";s:15:\"custom_feed_url\";s:0:\"\";s:17:\"custom_feed_limit\";s:0:\"\";s:11:\"source_link\";b:0;s:10:\"video_link\";b:0;s:20:\"limit_feed_items_age\";s:0:\"\";s:25:\"limit_feed_items_age_unit\";s:4:\"days\";s:22:\"time_ago_format_enable\";b:0;s:8:\"tracking\";i:0;s:17:\"custom_feed_title\";s:41:\"Latest imported feed items on Eric Reguly\";s:10:\"pagination\";s:8:\"numbered\";s:14:\"authors_enable\";b:1;s:13:\"unique_titles\";s:1:\"0\";s:24:\"expiration_notice_period\";s:7:\"2 weeks\";s:22:\"feed_request_useragent\";s:111:\"Mozilla/5.0 (Linux 10.0; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36\";s:16:\"certificate-path\";s:38:\"wp-includes/certificates/ca-bundle.crt\";s:27:\"limit_feed_items_per_import\";s:0:\"\";s:23:\"feed_items_import_order\";s:6:\"latest\";s:10:\"custom_css\";s:0:\"\";s:12:\"html_classes\";s:0:\"\";s:18:\"feed_cache_enabled\";i:0;s:21:\"schedule_future_items\";s:1:\"0\";}','yes');
INSERT INTO `wp_options` VALUES (821,'wprss_prev_update_page_version','4.19.1','yes');
INSERT INTO `wp_options` VALUES (916,'wprss_db_version','16','yes');
INSERT INTO `wp_options` VALUES (1069,'_site_transient_timeout_browser_6e0f1a58a674319fb1febe37db13bcff','1633612478','no');
INSERT INTO `wp_options` VALUES (1070,'_site_transient_browser_6e0f1a58a674319fb1febe37db13bcff','a:10:{s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:4:\"92.0\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:32:\"https://www.mozilla.org/firefox/\";s:7:\"img_src\";s:44:\"http://s.w.org/images/browsers/firefox.png?1\";s:11:\"img_src_ssl\";s:45:\"https://s.w.org/images/browsers/firefox.png?1\";s:15:\"current_version\";s:2:\"56\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no');
INSERT INTO `wp_options` VALUES (1071,'_site_transient_timeout_php_check_472f71d2a071d463a95f84346288dc89','1633612479','no');
INSERT INTO `wp_options` VALUES (1072,'_site_transient_php_check_472f71d2a071d463a95f84346288dc89','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no');
INSERT INTO `wp_options` VALUES (1102,'n2_ss3_version','3.5.0.11/b:release-3.5.0.11/r:2a442a1570d7e95765a11de6b41feca863a1f81b','yes');
INSERT INTO `wp_options` VALUES (1103,'widget_smartslider3','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (1114,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1633334922;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:5:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:6:\"5.10.2\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.10.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.7\";}s:23:\"ml-slider/ml-slider.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:23:\"w.org/plugins/ml-slider\";s:4:\"slug\";s:9:\"ml-slider\";s:6:\"plugin\";s:23:\"ml-slider/ml-slider.php\";s:11:\"new_version\";s:6:\"3.23.0\";s:3:\"url\";s:40:\"https://wordpress.org/plugins/ml-slider/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/plugin/ml-slider.3.23.0.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:62:\"https://ps.w.org/ml-slider/assets/icon-256x256.png?rev=2370840\";s:2:\"1x\";s:54:\"https://ps.w.org/ml-slider/assets/icon.svg?rev=1837669\";s:3:\"svg\";s:54:\"https://ps.w.org/ml-slider/assets/icon.svg?rev=1837669\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/ml-slider/assets/banner-1544x500.png?rev=1837669\";s:2:\"1x\";s:64:\"https://ps.w.org/ml-slider/assets/banner-772x250.png?rev=2370840\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.5\";}s:27:\"ninja-forms/ninja-forms.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/ninja-forms\";s:4:\"slug\";s:11:\"ninja-forms\";s:6:\"plugin\";s:27:\"ninja-forms/ninja-forms.php\";s:11:\"new_version\";s:7:\"3.5.8.3\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/ninja-forms/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/ninja-forms.3.5.8.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/ninja-forms/assets/icon-256x256.png?rev=1649747\";s:2:\"1x\";s:64:\"https://ps.w.org/ninja-forms/assets/icon-128x128.png?rev=1649747\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/ninja-forms/assets/banner-1544x500.png?rev=2069024\";s:2:\"1x\";s:66:\"https://ps.w.org/ninja-forms/assets/banner-772x250.png?rev=2069024\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.6\";}s:31:\"what-the-file/what-the-file.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:27:\"w.org/plugins/what-the-file\";s:4:\"slug\";s:13:\"what-the-file\";s:6:\"plugin\";s:31:\"what-the-file/what-the-file.php\";s:11:\"new_version\";s:5:\"1.5.4\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/what-the-file/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/what-the-file.1.5.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/what-the-file/assets/icon-256x256.png?rev=1223609\";s:2:\"1x\";s:66:\"https://ps.w.org/what-the-file/assets/icon-128x128.png?rev=1223609\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:67:\"https://ps.w.org/what-the-file/assets/banner-772x250.jpg?rev=685200\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.1\";}s:39:\"wp-rss-aggregator/wp-rss-aggregator.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:31:\"w.org/plugins/wp-rss-aggregator\";s:4:\"slug\";s:17:\"wp-rss-aggregator\";s:6:\"plugin\";s:39:\"wp-rss-aggregator/wp-rss-aggregator.php\";s:11:\"new_version\";s:6:\"4.19.1\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/wp-rss-aggregator/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/wp-rss-aggregator.4.19.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/wp-rss-aggregator/assets/icon-256x256.png?rev=1823609\";s:2:\"1x\";s:70:\"https://ps.w.org/wp-rss-aggregator/assets/icon-128x128.png?rev=1823609\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/wp-rss-aggregator/assets/banner-1544x500.png?rev=2040548\";s:2:\"1x\";s:72:\"https://ps.w.org/wp-rss-aggregator/assets/banner-772x250.png?rev=2210123\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.0\";}}s:7:\"checked\";a:5:{s:30:\"advanced-custom-fields/acf.php\";s:6:\"5.10.2\";s:23:\"ml-slider/ml-slider.php\";s:6:\"3.23.0\";s:27:\"ninja-forms/ninja-forms.php\";s:7:\"3.5.8.3\";s:31:\"what-the-file/what-the-file.php\";s:5:\"1.5.4\";s:39:\"wp-rss-aggregator/wp-rss-aggregator.php\";s:6:\"4.19.1\";}}','no');
INSERT INTO `wp_options` VALUES (1115,'widget_metaslider_widget','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (1116,'ms_hide_all_ads_until','1634304842','yes');
INSERT INTO `wp_options` VALUES (1117,'metaslider_systemcheck','a:2:{s:16:\"wordPressVersion\";b:0;s:12:\"imageLibrary\";b:0;}','no');
INSERT INTO `wp_options` VALUES (1118,'metaslider_optin_via','modal','yes');
INSERT INTO `wp_options` VALUES (1119,'metaslider_global_settings','a:1:{s:5:\"optIn\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (1120,'metaslider_optin_user_extras','a:4:{s:2:\"id\";i:1;s:5:\"email\";s:19:\"jimrossuk@gmail.com\";s:2:\"ip\";s:9:\"127.0.0.1\";s:4:\"time\";i:1633095248;}','yes');
INSERT INTO `wp_options` VALUES (1121,'ml-slider_allow_tracking','yes','yes');
INSERT INTO `wp_options` VALUES (1122,'ml-slider_tracking_notice','hide','yes');
INSERT INTO `wp_options` VALUES (1123,'ml-slider_tracking_last_send','1633095248','yes');
INSERT INTO `wp_options` VALUES (1126,'metaslider_tour_cancelled_on','add-slide','yes');
INSERT INTO `wp_options` VALUES (1133,'ml-slider_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (1172,'_site_transient_timeout_theme_roots','1633336722','no');
INSERT INTO `wp_options` VALUES (1173,'_site_transient_theme_roots','a:3:{s:11:\"eric-reguly\";s:7:\"/themes\";s:21:\"twentytwentyone-child\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";}','no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=863 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (11,10,'_edit_lock','1633099533:1');
INSERT INTO `wp_postmeta` VALUES (27,18,'_wp_attached_file','2021/07/Bob-Reguly-Vietnam-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (28,18,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:37:\"2021/07/Bob-Reguly-Vietnam-scaled.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"Bob-Reguly-Vietnam-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:31:\"Bob-Reguly-Vietnam-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"Bob-Reguly-Vietnam-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"Bob-Reguly-Vietnam-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:32:\"Bob-Reguly-Vietnam-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:32:\"Bob-Reguly-Vietnam-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:47:\"Robert Reguly, shown in a family handout photo.\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:47:\"Robert Reguly, shown in a family handout photo.\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:22:\"Bob-Reguly-Vietnam.jpg\";}');
INSERT INTO `wp_postmeta` VALUES (29,19,'_wp_attached_file','2021/07/cropped-Bob-Reguly-Vietnam-scaled-1.jpg');
INSERT INTO `wp_postmeta` VALUES (30,19,'_wp_attachment_context','custom-header');
INSERT INTO `wp_postmeta` VALUES (31,19,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1000;s:6:\"height\";i:988;s:4:\"file\";s:47:\"2021/07/cropped-Bob-Reguly-Vietnam-scaled-1.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:47:\"cropped-Bob-Reguly-Vietnam-scaled-1-300x296.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:296;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:47:\"cropped-Bob-Reguly-Vietnam-scaled-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:47:\"cropped-Bob-Reguly-Vietnam-scaled-1-768x759.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:759;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:17:\"attachment_parent\";i:18;}');
INSERT INTO `wp_postmeta` VALUES (32,19,'_wp_attachment_custom_header_last_used_eric-reguly','1625823858');
INSERT INTO `wp_postmeta` VALUES (33,19,'_wp_attachment_is_custom_header','eric-reguly');
INSERT INTO `wp_postmeta` VALUES (36,21,'_edit_lock','1631955869:1');
INSERT INTO `wp_postmeta` VALUES (37,23,'_edit_lock','1625829747:1');
INSERT INTO `wp_postmeta` VALUES (38,25,'_edit_lock','1632308954:1');
INSERT INTO `wp_postmeta` VALUES (81,34,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (82,34,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (83,34,'_menu_item_object_id','23');
INSERT INTO `wp_postmeta` VALUES (84,34,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (85,34,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (86,34,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (87,34,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (88,34,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (89,35,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (90,35,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (91,35,'_menu_item_object_id','21');
INSERT INTO `wp_postmeta` VALUES (92,35,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (93,35,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (94,35,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (95,35,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (96,35,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (101,10,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (111,42,'_wp_attached_file','2021/07/veitnam-transparent-2.png');
INSERT INTO `wp_postmeta` VALUES (112,42,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:800;s:6:\"height\";i:1354;s:4:\"file\";s:33:\"2021/07/veitnam-transparent-2.png\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"veitnam-transparent-2-177x300.png\";s:5:\"width\";i:177;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:34:\"veitnam-transparent-2-605x1024.png\";s:5:\"width\";i:605;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"veitnam-transparent-2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:34:\"veitnam-transparent-2-768x1300.png\";s:5:\"width\";i:768;s:6:\"height\";i:1300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (113,42,'_wp_attachment_image_alt','vietnam map');
INSERT INTO `wp_postmeta` VALUES (118,49,'_wp_attached_file','2021/09/Mignon-Medium.zip');
INSERT INTO `wp_postmeta` VALUES (119,50,'_wp_attached_file','2021/09/Mignon-Medium-1.zip');
INSERT INTO `wp_postmeta` VALUES (120,51,'_wp_attached_file','2021/09/Eric-Reguly-Book-cover.jpeg');
INSERT INTO `wp_postmeta` VALUES (121,51,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:798;s:6:\"height\";i:1198;s:4:\"file\";s:35:\"2021/09/Eric-Reguly-Book-cover.jpeg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"Eric-Reguly-Book-cover-200x300.jpeg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:36:\"Eric-Reguly-Book-cover-682x1024.jpeg\";s:5:\"width\";i:682;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"Eric-Reguly-Book-cover-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:36:\"Eric-Reguly-Book-cover-768x1153.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:1153;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (122,52,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (123,52,'_edit_lock','1631623264:1');
INSERT INTO `wp_postmeta` VALUES (124,10,'amazon','a:3:{s:5:\"title\";s:16:\"this is the link\";s:3:\"url\";s:22:\"https://www.amazon.com\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (125,10,'_amazon','field_61408dabcad6b');
INSERT INTO `wp_postmeta` VALUES (126,56,'amazon','a:3:{s:5:\"title\";s:16:\"this is the link\";s:3:\"url\";s:22:\"https://www.amazon.com\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (127,56,'_amazon','field_61408dabcad6b');
INSERT INTO `wp_postmeta` VALUES (128,52,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (129,52,'_wp_trash_meta_time','1631623408');
INSERT INTO `wp_postmeta` VALUES (130,52,'_wp_desired_post_slug','group_61408d9c729b6');
INSERT INTO `wp_postmeta` VALUES (131,53,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (132,53,'_wp_trash_meta_time','1631623408');
INSERT INTO `wp_postmeta` VALUES (133,53,'_wp_desired_post_slug','field_61408dabcad6b');
INSERT INTO `wp_postmeta` VALUES (134,57,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (135,57,'_edit_lock','1632391113:1');
INSERT INTO `wp_postmeta` VALUES (136,10,'amazzon','a:3:{s:5:\"title\";s:12:\"linkToAmazon\";s:3:\"url\";s:22:\"https://www.amazon.com\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (137,10,'_amazzon','field_614099226f55e');
INSERT INTO `wp_postmeta` VALUES (138,59,'amazon','a:3:{s:5:\"title\";s:16:\"this is the link\";s:3:\"url\";s:22:\"https://www.amazon.com\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (139,59,'_amazon','field_61408dabcad6b');
INSERT INTO `wp_postmeta` VALUES (140,59,'amazzon','a:3:{s:5:\"title\";s:12:\"linkToAmazon\";s:3:\"url\";s:22:\"https://www.amazon.com\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (141,59,'_amazzon','field_614099226f55e');
INSERT INTO `wp_postmeta` VALUES (142,10,'buy_this_book_amazon','a:3:{s:5:\"title\";s:6:\"Amazon\";s:3:\"url\";s:23:\"http://www.amazon.co.uk\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (143,10,'_buy_this_book_amazon','field_6140a5033d82b');
INSERT INTO `wp_postmeta` VALUES (144,10,'buy_this_book_barnes_and_noble','a:3:{s:5:\"title\";s:14:\"Barnes & Noble\";s:3:\"url\";s:30:\"https://www.barnesandnoble.com\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (145,10,'_buy_this_book_barnes_and_noble','field_6140a51d3d82c');
INSERT INTO `wp_postmeta` VALUES (146,10,'buy_this_book','');
INSERT INTO `wp_postmeta` VALUES (147,10,'_buy_this_book','field_614099226f55e');
INSERT INTO `wp_postmeta` VALUES (148,63,'amazon','a:3:{s:5:\"title\";s:16:\"this is the link\";s:3:\"url\";s:22:\"https://www.amazon.com\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (149,63,'_amazon','field_61408dabcad6b');
INSERT INTO `wp_postmeta` VALUES (150,63,'amazzon','a:3:{s:5:\"title\";s:12:\"linkToAmazon\";s:3:\"url\";s:22:\"https://www.amazon.com\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (151,63,'_amazzon','field_614099226f55e');
INSERT INTO `wp_postmeta` VALUES (152,63,'buy_this_book_amazon','a:3:{s:5:\"title\";s:11:\"amazon link\";s:3:\"url\";s:23:\"http://www.amazon.co.uk\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (153,63,'_buy_this_book_amazon','field_6140a5033d82b');
INSERT INTO `wp_postmeta` VALUES (154,63,'buy_this_book_barnes_and_noble','a:3:{s:5:\"title\";s:31:\"this link is not barns na noble\";s:3:\"url\";s:27:\"http://www.jimrossphoto.com\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (155,63,'_buy_this_book_barnes_and_noble','field_6140a51d3d82c');
INSERT INTO `wp_postmeta` VALUES (156,63,'buy_this_book','');
INSERT INTO `wp_postmeta` VALUES (157,63,'_buy_this_book','field_614099226f55e');
INSERT INTO `wp_postmeta` VALUES (158,64,'amazon','a:3:{s:5:\"title\";s:16:\"this is the link\";s:3:\"url\";s:22:\"https://www.amazon.com\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (159,64,'_amazon','field_61408dabcad6b');
INSERT INTO `wp_postmeta` VALUES (160,64,'amazzon','a:3:{s:5:\"title\";s:12:\"linkToAmazon\";s:3:\"url\";s:22:\"https://www.amazon.com\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (161,64,'_amazzon','field_614099226f55e');
INSERT INTO `wp_postmeta` VALUES (162,64,'buy_this_book_amazon','a:3:{s:5:\"title\";s:6:\"Amazon\";s:3:\"url\";s:23:\"http://www.amazon.co.uk\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (163,64,'_buy_this_book_amazon','field_6140a5033d82b');
INSERT INTO `wp_postmeta` VALUES (164,64,'buy_this_book_barnes_and_noble','a:3:{s:5:\"title\";s:14:\"Barnes & Noble\";s:3:\"url\";s:30:\"https://www.barnesandnoble.com\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (165,64,'_buy_this_book_barnes_and_noble','field_6140a51d3d82c');
INSERT INTO `wp_postmeta` VALUES (166,64,'buy_this_book','');
INSERT INTO `wp_postmeta` VALUES (167,64,'_buy_this_book','field_614099226f55e');
INSERT INTO `wp_postmeta` VALUES (168,21,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (169,21,'ninja_forms_form','1');
INSERT INTO `wp_postmeta` VALUES (170,67,'_field_1','jim');
INSERT INTO `wp_postmeta` VALUES (171,67,'_field_2','jim@jimrossphoto.com');
INSERT INTO `wp_postmeta` VALUES (172,67,'_field_3','12: 10');
INSERT INTO `wp_postmeta` VALUES (173,67,'_form_id','1');
INSERT INTO `wp_postmeta` VALUES (174,67,'_seq_num','1');
INSERT INTO `wp_postmeta` VALUES (175,68,'_field_1','jim');
INSERT INTO `wp_postmeta` VALUES (176,68,'_field_2','jim@jimrossphoto.com');
INSERT INTO `wp_postmeta` VALUES (177,68,'_field_3','12 30 is the time');
INSERT INTO `wp_postmeta` VALUES (178,68,'_form_id','1');
INSERT INTO `wp_postmeta` VALUES (179,68,'_seq_num','2');
INSERT INTO `wp_postmeta` VALUES (180,69,'_field_1','jjjjjj');
INSERT INTO `wp_postmeta` VALUES (181,69,'_field_2','jim@jimrossphoto.com');
INSERT INTO `wp_postmeta` VALUES (182,69,'_field_3','co.uk??');
INSERT INTO `wp_postmeta` VALUES (183,69,'_form_id','1');
INSERT INTO `wp_postmeta` VALUES (184,69,'_seq_num','3');
INSERT INTO `wp_postmeta` VALUES (185,70,'_field_1','dfslj');
INSERT INTO `wp_postmeta` VALUES (186,70,'_field_2','mijssor@hotmail.com');
INSERT INTO `wp_postmeta` VALUES (187,70,'_field_3','115');
INSERT INTO `wp_postmeta` VALUES (188,70,'_form_id','1');
INSERT INTO `wp_postmeta` VALUES (189,70,'_seq_num','4');
INSERT INTO `wp_postmeta` VALUES (190,71,'_field_1','mike smith');
INSERT INTO `wp_postmeta` VALUES (191,71,'_field_2','mijssor@hotmail.com');
INSERT INTO `wp_postmeta` VALUES (192,71,'_field_3','115');
INSERT INTO `wp_postmeta` VALUES (193,71,'_form_id','1');
INSERT INTO `wp_postmeta` VALUES (194,71,'_seq_num','5');
INSERT INTO `wp_postmeta` VALUES (195,72,'_field_1','mike smith');
INSERT INTO `wp_postmeta` VALUES (196,72,'_field_2','mijssor@hotmail.com');
INSERT INTO `wp_postmeta` VALUES (197,72,'_field_3','115');
INSERT INTO `wp_postmeta` VALUES (198,72,'_form_id','1');
INSERT INTO `wp_postmeta` VALUES (199,72,'_seq_num','6');
INSERT INTO `wp_postmeta` VALUES (200,73,'_field_1','joooo mikthcel');
INSERT INTO `wp_postmeta` VALUES (201,73,'_field_2','jim@jimrossphoto.com');
INSERT INTO `wp_postmeta` VALUES (202,73,'_field_3','145 is the time');
INSERT INTO `wp_postmeta` VALUES (203,73,'_form_id','1');
INSERT INTO `wp_postmeta` VALUES (204,73,'_seq_num','7');
INSERT INTO `wp_postmeta` VALUES (205,74,'_field_1','Jim Ross');
INSERT INTO `wp_postmeta` VALUES (206,74,'_field_2','jim@jimrossphoto.com');
INSERT INTO `wp_postmeta` VALUES (207,74,'_field_3','Sept 16');
INSERT INTO `wp_postmeta` VALUES (208,74,'_form_id','1');
INSERT INTO `wp_postmeta` VALUES (209,74,'_seq_num','8');
INSERT INTO `wp_postmeta` VALUES (210,75,'_field_1','jim');
INSERT INTO `wp_postmeta` VALUES (211,75,'_field_2','mijssor@hotmail.com');
INSERT INTO `wp_postmeta` VALUES (212,75,'_field_3','lslidsjfldsjdsjdsjoidsjio');
INSERT INTO `wp_postmeta` VALUES (213,75,'_form_id','1');
INSERT INTO `wp_postmeta` VALUES (214,75,'_seq_num','9');
INSERT INTO `wp_postmeta` VALUES (215,76,'_field_1','Jim Ross');
INSERT INTO `wp_postmeta` VALUES (216,76,'_field_2','jim@jimrossphoto.com');
INSERT INTO `wp_postmeta` VALUES (217,76,'_field_3','210');
INSERT INTO `wp_postmeta` VALUES (218,76,'_form_id','1');
INSERT INTO `wp_postmeta` VALUES (219,76,'_seq_num','10');
INSERT INTO `wp_postmeta` VALUES (220,77,'_field_1','jim');
INSERT INTO `wp_postmeta` VALUES (221,77,'_field_2','jim@jimrossphoto.com');
INSERT INTO `wp_postmeta` VALUES (222,77,'_field_3','erwe');
INSERT INTO `wp_postmeta` VALUES (223,77,'_form_id','1');
INSERT INTO `wp_postmeta` VALUES (224,77,'_seq_num','11');
INSERT INTO `wp_postmeta` VALUES (225,78,'_field_1','jim');
INSERT INTO `wp_postmeta` VALUES (226,78,'_field_2','jim@jimrossphoto.com');
INSERT INTO `wp_postmeta` VALUES (227,78,'_field_9','230');
INSERT INTO `wp_postmeta` VALUES (228,78,'_field_3','fuckj');
INSERT INTO `wp_postmeta` VALUES (229,78,'_form_id','1');
INSERT INTO `wp_postmeta` VALUES (230,78,'_seq_num','12');
INSERT INTO `wp_postmeta` VALUES (231,79,'_field_1','Jim Ross');
INSERT INTO `wp_postmeta` VALUES (232,79,'_field_2','jim@jimrossphoto.com');
INSERT INTO `wp_postmeta` VALUES (233,79,'_field_9','234234234234234');
INSERT INTO `wp_postmeta` VALUES (234,79,'_field_3','funny thmasdi mchine');
INSERT INTO `wp_postmeta` VALUES (235,79,'_form_id','1');
INSERT INTO `wp_postmeta` VALUES (236,79,'_seq_num','13');
INSERT INTO `wp_postmeta` VALUES (237,80,'_field_1','Jim Ross');
INSERT INTO `wp_postmeta` VALUES (238,80,'_field_2','jim@jimrossphoto.com');
INSERT INTO `wp_postmeta` VALUES (239,80,'_field_9','ggdgrretretreterterter');
INSERT INTO `wp_postmeta` VALUES (240,80,'_field_3','5rjmjjjjjjjjjjj');
INSERT INTO `wp_postmeta` VALUES (241,80,'_form_id','1');
INSERT INTO `wp_postmeta` VALUES (242,80,'_seq_num','14');
INSERT INTO `wp_postmeta` VALUES (243,81,'_field_1','Jim Ross');
INSERT INTO `wp_postmeta` VALUES (244,81,'_field_2','jim@jimrossphoto.com');
INSERT INTO `wp_postmeta` VALUES (245,81,'_field_9','1111112222333');
INSERT INTO `wp_postmeta` VALUES (246,81,'_field_3','87978987987978978987978978978978978');
INSERT INTO `wp_postmeta` VALUES (247,81,'_form_id','1');
INSERT INTO `wp_postmeta` VALUES (248,81,'_seq_num','15');
INSERT INTO `wp_postmeta` VALUES (249,82,'_field_1','Jim Ross');
INSERT INTO `wp_postmeta` VALUES (250,82,'_field_2','jim@jimrossphoto.com');
INSERT INTO `wp_postmeta` VALUES (251,82,'_field_9','no0n');
INSERT INTO `wp_postmeta` VALUES (252,82,'_field_3','jim is ith ebest');
INSERT INTO `wp_postmeta` VALUES (253,82,'_form_id','1');
INSERT INTO `wp_postmeta` VALUES (254,82,'_seq_num','16');
INSERT INTO `wp_postmeta` VALUES (255,83,'_field_1','Jim Ross');
INSERT INTO `wp_postmeta` VALUES (256,83,'_field_2','jim@jimrossphoto.com');
INSERT INTO `wp_postmeta` VALUES (257,83,'_field_9','no0n');
INSERT INTO `wp_postmeta` VALUES (258,83,'_field_3','jim is ith ebest');
INSERT INTO `wp_postmeta` VALUES (259,83,'_form_id','1');
INSERT INTO `wp_postmeta` VALUES (260,83,'_seq_num','17');
INSERT INTO `wp_postmeta` VALUES (261,86,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (262,86,'_edit_lock','1631877040:1');
INSERT INTO `wp_postmeta` VALUES (263,21,'email','ericreguly@gmail.com');
INSERT INTO `wp_postmeta` VALUES (264,21,'_email','field_61446d3d1d132');
INSERT INTO `wp_postmeta` VALUES (265,21,'phone','+393316496202');
INSERT INTO `wp_postmeta` VALUES (266,21,'_phone','field_61446d6f1d133');
INSERT INTO `wp_postmeta` VALUES (267,21,'signal','+393316496202');
INSERT INTO `wp_postmeta` VALUES (268,21,'_signal','field_61446d8a1d134');
INSERT INTO `wp_postmeta` VALUES (269,90,'email','ericreguly@gmail.com');
INSERT INTO `wp_postmeta` VALUES (270,90,'_email','field_61446d3d1d132');
INSERT INTO `wp_postmeta` VALUES (271,90,'phone','+393316496202');
INSERT INTO `wp_postmeta` VALUES (272,90,'_phone','field_61446d6f1d133');
INSERT INTO `wp_postmeta` VALUES (273,90,'signal','+393316496202');
INSERT INTO `wp_postmeta` VALUES (274,90,'_signal','field_61446d8a1d134');
INSERT INTO `wp_postmeta` VALUES (275,91,'email','ericreguly@gmail.com');
INSERT INTO `wp_postmeta` VALUES (276,91,'_email','field_61446d3d1d132');
INSERT INTO `wp_postmeta` VALUES (277,91,'phone','+393316496202');
INSERT INTO `wp_postmeta` VALUES (278,91,'_phone','field_61446d6f1d133');
INSERT INTO `wp_postmeta` VALUES (279,91,'signal','+393316496202');
INSERT INTO `wp_postmeta` VALUES (280,91,'_signal','field_61446d8a1d134');
INSERT INTO `wp_postmeta` VALUES (281,21,'twitter','https://twitter.com/ereguly');
INSERT INTO `wp_postmeta` VALUES (282,21,'_twitter','field_61446d8a1d134');
INSERT INTO `wp_postmeta` VALUES (283,92,'email','ericreguly@gmail.com');
INSERT INTO `wp_postmeta` VALUES (284,92,'_email','field_61446d3d1d132');
INSERT INTO `wp_postmeta` VALUES (285,92,'phone','+393316496202');
INSERT INTO `wp_postmeta` VALUES (286,92,'_phone','field_61446d6f1d133');
INSERT INTO `wp_postmeta` VALUES (287,92,'signal','+393316496202');
INSERT INTO `wp_postmeta` VALUES (288,92,'_signal','field_61446d8a1d134');
INSERT INTO `wp_postmeta` VALUES (289,92,'twitter','ereguly');
INSERT INTO `wp_postmeta` VALUES (290,92,'_twitter','field_61446d8a1d134');
INSERT INTO `wp_postmeta` VALUES (291,93,'email','ericreguly@gmail.com');
INSERT INTO `wp_postmeta` VALUES (292,93,'_email','field_61446d3d1d132');
INSERT INTO `wp_postmeta` VALUES (293,93,'phone','+393316496202');
INSERT INTO `wp_postmeta` VALUES (294,93,'_phone','field_61446d6f1d133');
INSERT INTO `wp_postmeta` VALUES (295,93,'signal','+393316496202');
INSERT INTO `wp_postmeta` VALUES (296,93,'_signal','field_61446d8a1d134');
INSERT INTO `wp_postmeta` VALUES (297,93,'twitter','https://twitter.com/ereguly');
INSERT INTO `wp_postmeta` VALUES (298,93,'_twitter','field_61446d8a1d134');
INSERT INTO `wp_postmeta` VALUES (299,94,'_field_1','Jim Ross');
INSERT INTO `wp_postmeta` VALUES (300,94,'_field_2','jim@jimrossphoto.com');
INSERT INTO `wp_postmeta` VALUES (301,94,'_field_9','');
INSERT INTO `wp_postmeta` VALUES (302,94,'_field_3','dfgdfgdfg');
INSERT INTO `wp_postmeta` VALUES (303,94,'_form_id','1');
INSERT INTO `wp_postmeta` VALUES (304,94,'_seq_num','18');
INSERT INTO `wp_postmeta` VALUES (305,95,'_field_1','Jim Ross');
INSERT INTO `wp_postmeta` VALUES (306,95,'_field_2','jim@jimrossphoto.com');
INSERT INTO `wp_postmeta` VALUES (307,95,'_field_9','');
INSERT INTO `wp_postmeta` VALUES (308,95,'_field_3','sdfsdfds');
INSERT INTO `wp_postmeta` VALUES (309,95,'_form_id','1');
INSERT INTO `wp_postmeta` VALUES (310,95,'_seq_num','19');
INSERT INTO `wp_postmeta` VALUES (311,96,'email','ericreguly@gmail.com');
INSERT INTO `wp_postmeta` VALUES (312,96,'_email','field_61446d3d1d132');
INSERT INTO `wp_postmeta` VALUES (313,96,'phone','+393316496202');
INSERT INTO `wp_postmeta` VALUES (314,96,'_phone','field_61446d6f1d133');
INSERT INTO `wp_postmeta` VALUES (315,96,'signal','+393316496202');
INSERT INTO `wp_postmeta` VALUES (316,96,'_signal','field_61446d8a1d134');
INSERT INTO `wp_postmeta` VALUES (317,96,'twitter','https://twitter.com/ereguly');
INSERT INTO `wp_postmeta` VALUES (318,96,'_twitter','field_61446d8a1d134');
INSERT INTO `wp_postmeta` VALUES (319,25,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (320,99,'_field_1','jim');
INSERT INTO `wp_postmeta` VALUES (321,99,'_field_2','jim@jim.com');
INSERT INTO `wp_postmeta` VALUES (322,99,'_field_9','ljdfljkdsffdlsjk');
INSERT INTO `wp_postmeta` VALUES (323,99,'_field_3','sdfsdfdsfdsfdsf');
INSERT INTO `wp_postmeta` VALUES (324,99,'_form_id','1');
INSERT INTO `wp_postmeta` VALUES (325,99,'_seq_num','20');
INSERT INTO `wp_postmeta` VALUES (326,100,'wprss_template_type','__built_in');
INSERT INTO `wp_postmeta` VALUES (327,101,'wprss_url','https://www.theglobeandmail.com/authors/eric-reguly/');
INSERT INTO `wp_postmeta` VALUES (328,101,'wprss_limit','19');
INSERT INTO `wp_postmeta` VALUES (329,101,'wprss_site_url','https://www.theglobeandmail.com/');
INSERT INTO `wp_postmeta` VALUES (330,101,'wprss_feed_image','https://www.theglobeandmail.com/legacy/static/mobile.flag.rss.png');
INSERT INTO `wp_postmeta` VALUES (331,101,'wprss_last_update','1632308955');
INSERT INTO `wp_postmeta` VALUES (332,101,'wprss_last_update_items','0');
INSERT INTO `wp_postmeta` VALUES (333,101,'wprss_feed_is_updating','');
INSERT INTO `wp_postmeta` VALUES (434,101,'wprss_next_update','12 hours');
INSERT INTO `wp_postmeta` VALUES (435,101,'wprss_items_imported','7');
INSERT INTO `wp_postmeta` VALUES (436,101,'_edit_lock','1632308276:1');
INSERT INTO `wp_postmeta` VALUES (437,101,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (438,101,'wprss_unique_titles','');
INSERT INTO `wp_postmeta` VALUES (439,101,'wprss_enclosure','false');
INSERT INTO `wp_postmeta` VALUES (440,101,'wprss_import_source','false');
INSERT INTO `wp_postmeta` VALUES (441,101,'feed_request_useragent','');
INSERT INTO `wp_postmeta` VALUES (442,101,'wprss_force_feed','false');
INSERT INTO `wp_postmeta` VALUES (443,101,'wprss_activate_feed','');
INSERT INTO `wp_postmeta` VALUES (444,101,'wprss_pause_feed','');
INSERT INTO `wp_postmeta` VALUES (445,101,'wprss_age_limit','');
INSERT INTO `wp_postmeta` VALUES (446,101,'wprss_age_unit','days');
INSERT INTO `wp_postmeta` VALUES (447,101,'wprss_update_interval','global');
INSERT INTO `wp_postmeta` VALUES (448,101,'wprss_state','active');
INSERT INTO `wp_postmeta` VALUES (449,101,'wprss_update_time','');
INSERT INTO `wp_postmeta` VALUES (450,101,'_wp_old_slug','the-globe-and-mail');
INSERT INTO `wp_postmeta` VALUES (451,101,'_wp_old_slug','news');
INSERT INTO `wp_postmeta` VALUES (454,114,'_customize_changeset_uuid','f73989dc-390f-4bb7-8964-7495313233e0');
INSERT INTO `wp_postmeta` VALUES (463,115,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (464,115,'_wp_trash_meta_time','1632306194');
INSERT INTO `wp_postmeta` VALUES (465,114,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (466,114,'_wp_trash_meta_time','1632306572');
INSERT INTO `wp_postmeta` VALUES (467,114,'_wp_desired_post_slug','new-2');
INSERT INTO `wp_postmeta` VALUES (468,25,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (469,25,'_wp_trash_meta_time','1632307919');
INSERT INTO `wp_postmeta` VALUES (470,25,'_wp_desired_post_slug','news-2');
INSERT INTO `wp_postmeta` VALUES (472,34,'_wp_old_date','2021-07-09');
INSERT INTO `wp_postmeta` VALUES (473,35,'_wp_old_date','2021-07-09');
INSERT INTO `wp_postmeta` VALUES (474,121,'_edit_lock','1632490817:1');
INSERT INTO `wp_postmeta` VALUES (475,121,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (476,124,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (477,124,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (478,124,'_menu_item_object_id','121');
INSERT INTO `wp_postmeta` VALUES (479,124,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (480,124,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (481,124,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (482,124,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (483,124,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (484,123,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (485,123,'_wp_trash_meta_time','1632308040');
INSERT INTO `wp_postmeta` VALUES (488,126,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (489,126,'_wp_trash_meta_time','1632308184');
INSERT INTO `wp_postmeta` VALUES (491,127,'wprss_url','https://www.theglobeandmail.com/authors/eric-reguly/');
INSERT INTO `wp_postmeta` VALUES (492,127,'wprss_limit','20');
INSERT INTO `wp_postmeta` VALUES (493,127,'wprss_site_url','https://www.theglobeandmail.com/');
INSERT INTO `wp_postmeta` VALUES (494,127,'wprss_feed_image','https://www.theglobeandmail.com/legacy/static/mobile.flag.rss.png');
INSERT INTO `wp_postmeta` VALUES (495,127,'wprss_last_update','1632308993');
INSERT INTO `wp_postmeta` VALUES (496,127,'wprss_last_update_items','10');
INSERT INTO `wp_postmeta` VALUES (497,127,'wprss_feed_is_updating','');
INSERT INTO `wp_postmeta` VALUES (598,127,'wprss_next_update','12 hours');
INSERT INTO `wp_postmeta` VALUES (599,127,'wprss_items_imported','0');
INSERT INTO `wp_postmeta` VALUES (600,101,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (601,101,'_wp_trash_meta_time','1632309100');
INSERT INTO `wp_postmeta` VALUES (602,101,'_wp_desired_post_slug','globe-and-mail');
INSERT INTO `wp_postmeta` VALUES (603,127,'_edit_lock','1632308971:1');
INSERT INTO `wp_postmeta` VALUES (604,127,'wprss_state','active');
INSERT INTO `wp_postmeta` VALUES (605,127,'wprss_pause_feed','');
INSERT INTO `wp_postmeta` VALUES (606,127,'wprss_activate_feed','');
INSERT INTO `wp_postmeta` VALUES (607,127,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (608,127,'_wp_trash_meta_time','1632309190');
INSERT INTO `wp_postmeta` VALUES (609,127,'_wp_desired_post_slug','the-globe-and-mail');
INSERT INTO `wp_postmeta` VALUES (610,139,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (611,139,'_edit_lock','1632490992:1');
INSERT INTO `wp_postmeta` VALUES (612,139,'wprss_site_url','https://www.theglobeandmail.com/');
INSERT INTO `wp_postmeta` VALUES (613,139,'wprss_feed_image','https://www.theglobeandmail.com/legacy/static/mobile.flag.rss.png');
INSERT INTO `wp_postmeta` VALUES (614,139,'wprss_url','https://www.theglobeandmail.com/authors/eric-reguly/');
INSERT INTO `wp_postmeta` VALUES (615,139,'wprss_limit','65');
INSERT INTO `wp_postmeta` VALUES (616,139,'wprss_unique_titles','');
INSERT INTO `wp_postmeta` VALUES (617,139,'wprss_enclosure','false');
INSERT INTO `wp_postmeta` VALUES (618,139,'wprss_import_source','false');
INSERT INTO `wp_postmeta` VALUES (619,139,'feed_request_useragent','');
INSERT INTO `wp_postmeta` VALUES (620,139,'wprss_force_feed','false');
INSERT INTO `wp_postmeta` VALUES (621,139,'wprss_activate_feed','');
INSERT INTO `wp_postmeta` VALUES (622,139,'wprss_pause_feed','');
INSERT INTO `wp_postmeta` VALUES (623,139,'wprss_age_limit','');
INSERT INTO `wp_postmeta` VALUES (624,139,'wprss_age_unit','days');
INSERT INTO `wp_postmeta` VALUES (625,139,'wprss_update_interval','global');
INSERT INTO `wp_postmeta` VALUES (626,139,'wprss_state','active');
INSERT INTO `wp_postmeta` VALUES (627,139,'wprss_update_time','');
INSERT INTO `wp_postmeta` VALUES (628,139,'wprss_last_update','1633346125');
INSERT INTO `wp_postmeta` VALUES (629,139,'wprss_last_update_items','0');
INSERT INTO `wp_postmeta` VALUES (630,139,'wprss_feed_is_updating','');
INSERT INTO `wp_postmeta` VALUES (631,140,'wprss_item_date','2021-09-20T18:08:25+0000');
INSERT INTO `wp_postmeta` VALUES (632,140,'wprss_item_permalink','https://www.theglobeandmail.com/world/article-italys-covid-19-vaccine-bookings-rise-by-a-third-after-government/?cmpid=rss');
INSERT INTO `wp_postmeta` VALUES (633,140,'wprss_item_source_name','The Globe and Mail');
INSERT INTO `wp_postmeta` VALUES (634,140,'wprss_item_source_url','https://www.theglobeandmail.com/');
INSERT INTO `wp_postmeta` VALUES (635,140,'wprss_item_author',NULL);
INSERT INTO `wp_postmeta` VALUES (636,140,'wprss_item_author_email','Eric Reguly');
INSERT INTO `wp_postmeta` VALUES (637,140,'wprss_item_author_link',NULL);
INSERT INTO `wp_postmeta` VALUES (638,140,'wprss_feed_id','139');
INSERT INTO `wp_postmeta` VALUES (639,140,'wprss_images','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (640,140,'wprss_best_image','');
INSERT INTO `wp_postmeta` VALUES (641,141,'wprss_item_date','2021-09-17T19:09:03+0000');
INSERT INTO `wp_postmeta` VALUES (642,141,'wprss_item_permalink','https://www.theglobeandmail.com/business/commentary/article-europes-power-crisis-is-an-expensive-reminder-that-renewable-energy/?cmpid=rss');
INSERT INTO `wp_postmeta` VALUES (643,141,'wprss_item_source_name','The Globe and Mail');
INSERT INTO `wp_postmeta` VALUES (644,141,'wprss_item_source_url','https://www.theglobeandmail.com/');
INSERT INTO `wp_postmeta` VALUES (645,141,'wprss_item_author',NULL);
INSERT INTO `wp_postmeta` VALUES (646,141,'wprss_item_author_email','Eric Reguly');
INSERT INTO `wp_postmeta` VALUES (647,141,'wprss_item_author_link',NULL);
INSERT INTO `wp_postmeta` VALUES (648,141,'wprss_feed_id','139');
INSERT INTO `wp_postmeta` VALUES (649,141,'wprss_images','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (650,141,'wprss_best_image','');
INSERT INTO `wp_postmeta` VALUES (651,142,'wprss_item_date','2021-09-15T23:08:56+0000');
INSERT INTO `wp_postmeta` VALUES (652,142,'wprss_item_permalink','https://www.theglobeandmail.com/business/article-teck-approached-glencore-and-lundin-as-it-weighs-options-for-core-coal/?cmpid=rss');
INSERT INTO `wp_postmeta` VALUES (653,142,'wprss_item_source_name','The Globe and Mail');
INSERT INTO `wp_postmeta` VALUES (654,142,'wprss_item_source_url','https://www.theglobeandmail.com/');
INSERT INTO `wp_postmeta` VALUES (655,142,'wprss_item_author',NULL);
INSERT INTO `wp_postmeta` VALUES (656,142,'wprss_item_author_email','Eric Reguly Niall McGee Tim Kiladze');
INSERT INTO `wp_postmeta` VALUES (657,142,'wprss_item_author_link',NULL);
INSERT INTO `wp_postmeta` VALUES (658,142,'wprss_feed_id','139');
INSERT INTO `wp_postmeta` VALUES (659,142,'wprss_images','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (660,142,'wprss_best_image','');
INSERT INTO `wp_postmeta` VALUES (661,143,'wprss_item_date','2021-09-14T17:56:44+0000');
INSERT INTO `wp_postmeta` VALUES (662,143,'wprss_item_permalink','https://www.theglobeandmail.com/business/commentary/article-norways-election-thrust-climate-to-the-political-forefront-and-brought/?cmpid=rss');
INSERT INTO `wp_postmeta` VALUES (663,143,'wprss_item_source_name','The Globe and Mail');
INSERT INTO `wp_postmeta` VALUES (664,143,'wprss_item_source_url','https://www.theglobeandmail.com/');
INSERT INTO `wp_postmeta` VALUES (665,143,'wprss_item_author',NULL);
INSERT INTO `wp_postmeta` VALUES (666,143,'wprss_item_author_email','Eric Reguly');
INSERT INTO `wp_postmeta` VALUES (667,143,'wprss_item_author_link',NULL);
INSERT INTO `wp_postmeta` VALUES (668,143,'wprss_feed_id','139');
INSERT INTO `wp_postmeta` VALUES (669,143,'wprss_images','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (670,143,'wprss_best_image','');
INSERT INTO `wp_postmeta` VALUES (671,144,'wprss_item_date','2021-09-11T12:00:00+0000');
INSERT INTO `wp_postmeta` VALUES (672,144,'wprss_item_permalink','https://www.theglobeandmail.com/world/article-a-canadian-museum-fixer-in-italy-ends-the-breras-ticket-based-tourism/?cmpid=rss');
INSERT INTO `wp_postmeta` VALUES (673,144,'wprss_item_source_name','The Globe and Mail');
INSERT INTO `wp_postmeta` VALUES (674,144,'wprss_item_source_url','https://www.theglobeandmail.com/');
INSERT INTO `wp_postmeta` VALUES (675,144,'wprss_item_author',NULL);
INSERT INTO `wp_postmeta` VALUES (676,144,'wprss_item_author_email','Eric Reguly');
INSERT INTO `wp_postmeta` VALUES (677,144,'wprss_item_author_link',NULL);
INSERT INTO `wp_postmeta` VALUES (678,144,'wprss_feed_id','139');
INSERT INTO `wp_postmeta` VALUES (679,144,'wprss_images','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (680,144,'wprss_best_image','');
INSERT INTO `wp_postmeta` VALUES (681,145,'wprss_item_date','2021-09-10T20:38:14+0000');
INSERT INTO `wp_postmeta` VALUES (682,145,'wprss_item_permalink','https://www.theglobeandmail.com/business/commentary/article-coals-unwelcome-revival-is-bad-news-for-the-uns-crucial-climate-summit/?cmpid=rss');
INSERT INTO `wp_postmeta` VALUES (683,145,'wprss_item_source_name','The Globe and Mail');
INSERT INTO `wp_postmeta` VALUES (684,145,'wprss_item_source_url','https://www.theglobeandmail.com/');
INSERT INTO `wp_postmeta` VALUES (685,145,'wprss_item_author',NULL);
INSERT INTO `wp_postmeta` VALUES (686,145,'wprss_item_author_email','Eric Reguly');
INSERT INTO `wp_postmeta` VALUES (687,145,'wprss_item_author_link',NULL);
INSERT INTO `wp_postmeta` VALUES (688,145,'wprss_feed_id','139');
INSERT INTO `wp_postmeta` VALUES (689,145,'wprss_images','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (690,145,'wprss_best_image','');
INSERT INTO `wp_postmeta` VALUES (691,146,'wprss_item_date','2021-09-06T17:06:42+0000');
INSERT INTO `wp_postmeta` VALUES (692,146,'wprss_item_permalink','https://www.theglobeandmail.com/world/article-mario-draghi-wants-to-make-italy-the-first-eu-country-to-make-vaccines/?cmpid=rss');
INSERT INTO `wp_postmeta` VALUES (693,146,'wprss_item_source_name','The Globe and Mail');
INSERT INTO `wp_postmeta` VALUES (694,146,'wprss_item_source_url','https://www.theglobeandmail.com/');
INSERT INTO `wp_postmeta` VALUES (695,146,'wprss_item_author',NULL);
INSERT INTO `wp_postmeta` VALUES (696,146,'wprss_item_author_email','Eric Reguly');
INSERT INTO `wp_postmeta` VALUES (697,146,'wprss_item_author_link',NULL);
INSERT INTO `wp_postmeta` VALUES (698,146,'wprss_feed_id','139');
INSERT INTO `wp_postmeta` VALUES (699,146,'wprss_images','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (700,146,'wprss_best_image','');
INSERT INTO `wp_postmeta` VALUES (701,147,'wprss_item_date','2021-09-03T19:36:11+0000');
INSERT INTO `wp_postmeta` VALUES (702,147,'wprss_item_permalink','https://www.theglobeandmail.com/business/commentary/article-parisian-vision-of-a-car-free-future-could-trigger-social-division-and/?cmpid=rss');
INSERT INTO `wp_postmeta` VALUES (703,147,'wprss_item_source_name','The Globe and Mail');
INSERT INTO `wp_postmeta` VALUES (704,147,'wprss_item_source_url','https://www.theglobeandmail.com/');
INSERT INTO `wp_postmeta` VALUES (705,147,'wprss_item_author',NULL);
INSERT INTO `wp_postmeta` VALUES (706,147,'wprss_item_author_email','Eric Reguly');
INSERT INTO `wp_postmeta` VALUES (707,147,'wprss_item_author_link',NULL);
INSERT INTO `wp_postmeta` VALUES (708,147,'wprss_feed_id','139');
INSERT INTO `wp_postmeta` VALUES (709,147,'wprss_images','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (710,147,'wprss_best_image','');
INSERT INTO `wp_postmeta` VALUES (711,148,'wprss_item_date','2021-08-27T18:02:42+0000');
INSERT INTO `wp_postmeta` VALUES (712,148,'wprss_item_permalink','https://www.theglobeandmail.com/business/commentary/article-the-rush-to-net-zero-could-hit-the-economy-as-hard-as-the-1973-74-oil/?cmpid=rss');
INSERT INTO `wp_postmeta` VALUES (713,148,'wprss_item_source_name','The Globe and Mail');
INSERT INTO `wp_postmeta` VALUES (714,148,'wprss_item_source_url','https://www.theglobeandmail.com/');
INSERT INTO `wp_postmeta` VALUES (715,148,'wprss_item_author',NULL);
INSERT INTO `wp_postmeta` VALUES (716,148,'wprss_item_author_email','Eric Reguly');
INSERT INTO `wp_postmeta` VALUES (717,148,'wprss_item_author_link',NULL);
INSERT INTO `wp_postmeta` VALUES (718,148,'wprss_feed_id','139');
INSERT INTO `wp_postmeta` VALUES (719,148,'wprss_images','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (720,148,'wprss_best_image','');
INSERT INTO `wp_postmeta` VALUES (721,149,'wprss_item_date','2021-08-25T16:23:19+0000');
INSERT INTO `wp_postmeta` VALUES (722,149,'wprss_item_permalink','https://www.theglobeandmail.com/business/commentary/article-the-us-is-out-of-afghanistan-and-china-wants-in-hunting-for-green/?cmpid=rss');
INSERT INTO `wp_postmeta` VALUES (723,149,'wprss_item_source_name','The Globe and Mail');
INSERT INTO `wp_postmeta` VALUES (724,149,'wprss_item_source_url','https://www.theglobeandmail.com/');
INSERT INTO `wp_postmeta` VALUES (725,149,'wprss_item_author',NULL);
INSERT INTO `wp_postmeta` VALUES (726,149,'wprss_item_author_email','Eric Reguly');
INSERT INTO `wp_postmeta` VALUES (727,149,'wprss_item_author_link',NULL);
INSERT INTO `wp_postmeta` VALUES (728,149,'wprss_feed_id','139');
INSERT INTO `wp_postmeta` VALUES (729,149,'wprss_images','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (730,149,'wprss_best_image','');
INSERT INTO `wp_postmeta` VALUES (731,139,'wprss_next_update','10 hours');
INSERT INTO `wp_postmeta` VALUES (732,139,'wprss_items_imported','12');
INSERT INTO `wp_postmeta` VALUES (733,150,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (734,150,'_wp_trash_meta_time','1632309756');
INSERT INTO `wp_postmeta` VALUES (735,151,'wprss_item_date','2021-09-22T17:09:14+0000');
INSERT INTO `wp_postmeta` VALUES (736,151,'wprss_item_permalink','https://www.theglobeandmail.com/business/commentary/article-chinas-evergrande-mess-is-spreading-and-hurting-big-mining-companies/?cmpid=rss');
INSERT INTO `wp_postmeta` VALUES (737,151,'wprss_item_source_name','The Globe and Mail');
INSERT INTO `wp_postmeta` VALUES (738,151,'wprss_item_source_url','https://www.theglobeandmail.com/');
INSERT INTO `wp_postmeta` VALUES (739,151,'wprss_item_author',NULL);
INSERT INTO `wp_postmeta` VALUES (740,151,'wprss_item_author_email','Eric Reguly');
INSERT INTO `wp_postmeta` VALUES (741,151,'wprss_item_author_link',NULL);
INSERT INTO `wp_postmeta` VALUES (742,151,'wprss_feed_id','139');
INSERT INTO `wp_postmeta` VALUES (743,151,'wprss_images','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (744,151,'wprss_best_image','');
INSERT INTO `wp_postmeta` VALUES (746,153,'wprss_item_date','2021-09-24T18:04:51+0000');
INSERT INTO `wp_postmeta` VALUES (747,153,'wprss_item_permalink','https://www.theglobeandmail.com/business/commentary/article-angela-merkel-kept-the-eu-from-blowing-up-but-left-germany-vulnerable/?cmpid=rss');
INSERT INTO `wp_postmeta` VALUES (748,153,'wprss_item_source_name','The Globe and Mail');
INSERT INTO `wp_postmeta` VALUES (749,153,'wprss_item_source_url','https://www.theglobeandmail.com/');
INSERT INTO `wp_postmeta` VALUES (750,153,'wprss_item_author',NULL);
INSERT INTO `wp_postmeta` VALUES (751,153,'wprss_item_author_email','Eric Reguly');
INSERT INTO `wp_postmeta` VALUES (752,153,'wprss_item_author_link',NULL);
INSERT INTO `wp_postmeta` VALUES (753,153,'wprss_feed_id','139');
INSERT INTO `wp_postmeta` VALUES (754,153,'wprss_images','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (755,153,'wprss_best_image','');
INSERT INTO `wp_postmeta` VALUES (756,100,'wprss_template_options','a:21:{s:5:\"limit\";s:2:\"19\";s:16:\"title_max_length\";s:0:\"\";s:13:\"title_is_link\";b:1;s:10:\"pagination\";b:0;s:15:\"pagination_type\";s:8:\"numbered\";s:14:\"source_enabled\";b:1;s:13:\"source_prefix\";s:0:\"\";s:14:\"source_is_link\";b:0;s:14:\"author_enabled\";b:1;s:13:\"author_prefix\";s:2:\"By\";s:12:\"date_enabled\";b:1;s:11:\"date_prefix\";s:12:\"Published on\";s:11:\"date_format\";s:5:\"d-m-Y\";s:17:\"date_use_time_ago\";b:0;s:14:\"links_behavior\";s:5:\"blank\";s:14:\"links_nofollow\";b:1;s:22:\"links_video_embed_page\";b:0;s:15:\"bullets_enabled\";b:0;s:11:\"bullet_type\";s:7:\"default\";s:20:\"custom_css_classname\";s:16:\"thisiscustomcode\";s:20:\"audio_player_enabled\";b:0;}');
INSERT INTO `wp_postmeta` VALUES (759,155,'_wp_attached_file','2021/10/BobAdaMarriage.jpg');
INSERT INTO `wp_postmeta` VALUES (760,155,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1693;s:6:\"height\";i:1371;s:4:\"file\";s:26:\"2021/10/BobAdaMarriage.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"BobAdaMarriage-300x243.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:243;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"BobAdaMarriage-1024x829.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:829;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"BobAdaMarriage-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"BobAdaMarriage-768x622.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:622;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:28:\"BobAdaMarriage-1536x1244.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1244;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:28:\"BobAdaMarriage-1568x1270.jpg\";s:5:\"width\";i:1568;s:6:\"height\";i:1270;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:71:\"Robert Reguly and Ada Baldassi on their wedding day in Sudbury in 1956.\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:25:\"nw-wo-reguly-vietnam-0330\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:2:{i:0;s:6:\"afsent\";i:1;s:10:\"bob reguly\";}}}');
INSERT INTO `wp_postmeta` VALUES (761,156,'_wp_attached_file','2021/10/BobRegulySmokejumper-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (762,156,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1519;s:6:\"height\";i:2560;s:4:\"file\";s:39:\"2021/10/BobRegulySmokejumper-scaled.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"BobRegulySmokejumper-178x300.jpg\";s:5:\"width\";i:178;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:33:\"BobRegulySmokejumper-607x1024.jpg\";s:5:\"width\";i:607;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"BobRegulySmokejumper-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:33:\"BobRegulySmokejumper-768x1295.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1295;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:33:\"BobRegulySmokejumper-911x1536.jpg\";s:5:\"width\";i:911;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:34:\"BobRegulySmokejumper-1215x2048.jpg\";s:5:\"width\";i:1215;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"meta-slider-resized-1000x200\";a:4:{s:4:\"file\";s:40:\"BobRegulySmokejumper-scaled-1000x200.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-620x124\";a:4:{s:4:\"file\";s:39:\"BobRegulySmokejumper-scaled-620x124.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:124;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:26:\"meta-slider-resized-400x80\";a:4:{s:4:\"file\";s:38:\"BobRegulySmokejumper-scaled-400x80.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:80;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-400x200\";a:4:{s:4:\"file\";s:39:\"BobRegulySmokejumper-scaled-400x200.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:48:\"Robert Reguly.   Credit:  McKittrick\'s\r\rfor Obit\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:11:\"reguly05ob6\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:2:{i:0;s:10:\"Bob Reguly\";i:1;s:6:\"AFsent\";}}s:14:\"original_image\";s:24:\"BobRegulySmokejumper.jpg\";}');
INSERT INTO `wp_postmeta` VALUES (763,157,'_wp_attached_file','2021/10/BobRegulySmokejumper2.jpg');
INSERT INTO `wp_postmeta` VALUES (764,157,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1654;s:6:\"height\";i:951;s:4:\"file\";s:33:\"2021/10/BobRegulySmokejumper2.jpg\";s:5:\"sizes\";a:16:{s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"BobRegulySmokejumper2-300x172.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:172;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:34:\"BobRegulySmokejumper2-1024x589.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:589;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"BobRegulySmokejumper2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:33:\"BobRegulySmokejumper2-768x442.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:442;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:34:\"BobRegulySmokejumper2-1536x883.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:883;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:34:\"BobRegulySmokejumper2-1568x902.jpg\";s:5:\"width\";i:1568;s:6:\"height\";i:902;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-700x300\";a:4:{s:4:\"file\";s:33:\"BobRegulySmokejumper2-700x300.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-620x266\";a:4:{s:4:\"file\";s:33:\"BobRegulySmokejumper2-620x266.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:266;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-400x171\";a:4:{s:4:\"file\";s:33:\"BobRegulySmokejumper2-400x171.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:171;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-300x300\";a:4:{s:4:\"file\";s:33:\"BobRegulySmokejumper2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-500x300\";a:4:{s:4:\"file\";s:33:\"BobRegulySmokejumper2-500x300.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-400x300\";a:4:{s:4:\"file\";s:33:\"BobRegulySmokejumper2-400x300.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"meta-slider-resized-1000x200\";a:4:{s:4:\"file\";s:34:\"BobRegulySmokejumper2-1000x200.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-620x124\";a:4:{s:4:\"file\";s:33:\"BobRegulySmokejumper2-620x124.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:124;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:26:\"meta-slider-resized-400x80\";a:4:{s:4:\"file\";s:32:\"BobRegulySmokejumper2-400x80.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:80;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-400x200\";a:4:{s:4:\"file\";s:33:\"BobRegulySmokejumper2-400x200.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:23:\"Robert Reguly\r\rfor Obit\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:11:\"reguly05ob7\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:2:{i:0;s:10:\"Bob Reguly\";i:1;s:6:\"AFsent\";}}}');
INSERT INTO `wp_postmeta` VALUES (765,158,'_wp_attached_file','2021/10/BobRegulyTorontoStara-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (766,158,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:2129;s:6:\"height\";i:2560;s:4:\"file\";s:40:\"2021/10/BobRegulyTorontoStara-scaled.jpg\";s:5:\"sizes\";a:17:{s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"BobRegulyTorontoStara-250x300.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:34:\"BobRegulyTorontoStara-852x1024.jpg\";s:5:\"width\";i:852;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"BobRegulyTorontoStara-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:33:\"BobRegulyTorontoStara-768x923.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:923;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:35:\"BobRegulyTorontoStara-1278x1536.jpg\";s:5:\"width\";i:1278;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:35:\"BobRegulyTorontoStara-1703x2048.jpg\";s:5:\"width\";i:1703;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:35:\"BobRegulyTorontoStara-1568x1885.jpg\";s:5:\"width\";i:1568;s:6:\"height\";i:1885;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-700x300\";a:4:{s:4:\"file\";s:40:\"BobRegulyTorontoStara-scaled-700x300.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-620x266\";a:4:{s:4:\"file\";s:40:\"BobRegulyTorontoStara-scaled-620x266.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:266;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-400x171\";a:4:{s:4:\"file\";s:40:\"BobRegulyTorontoStara-scaled-400x171.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:171;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-300x300\";a:4:{s:4:\"file\";s:40:\"BobRegulyTorontoStara-scaled-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-500x300\";a:4:{s:4:\"file\";s:40:\"BobRegulyTorontoStara-scaled-500x300.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-400x300\";a:4:{s:4:\"file\";s:40:\"BobRegulyTorontoStara-scaled-400x300.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"meta-slider-resized-1000x200\";a:4:{s:4:\"file\";s:41:\"BobRegulyTorontoStara-scaled-1000x200.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-620x124\";a:4:{s:4:\"file\";s:40:\"BobRegulyTorontoStara-scaled-620x124.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:124;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:26:\"meta-slider-resized-400x80\";a:4:{s:4:\"file\";s:39:\"BobRegulyTorontoStara-scaled-400x80.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:80;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-400x200\";a:4:{s:4:\"file\";s:40:\"BobRegulyTorontoStara-scaled-400x200.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:23:\"Robert Reguly\r\rfor Obit\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:11:\"reguly05ob1\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:1:{i:0;s:10:\"Bob Reguly\";}}s:14:\"original_image\";s:25:\"BobRegulyTorontoStara.jpg\";}');
INSERT INTO `wp_postmeta` VALUES (767,159,'_wp_attached_file','2021/10/regulyNewsroom.jpg');
INSERT INTO `wp_postmeta` VALUES (768,159,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1392;s:6:\"height\";i:1801;s:4:\"file\";s:26:\"2021/10/regulyNewsroom.jpg\";s:5:\"sizes\";a:15:{s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"regulyNewsroom-232x300.jpg\";s:5:\"width\";i:232;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"regulyNewsroom-791x1024.jpg\";s:5:\"width\";i:791;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"regulyNewsroom-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"regulyNewsroom-768x994.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:994;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:28:\"regulyNewsroom-1187x1536.jpg\";s:5:\"width\";i:1187;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-700x300\";a:4:{s:4:\"file\";s:26:\"regulyNewsroom-700x300.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-620x266\";a:4:{s:4:\"file\";s:26:\"regulyNewsroom-620x266.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:266;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-400x171\";a:4:{s:4:\"file\";s:26:\"regulyNewsroom-400x171.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:171;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-300x300\";a:4:{s:4:\"file\";s:26:\"regulyNewsroom-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-500x300\";a:4:{s:4:\"file\";s:26:\"regulyNewsroom-500x300.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-400x300\";a:4:{s:4:\"file\";s:26:\"regulyNewsroom-400x300.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"meta-slider-resized-1000x200\";a:4:{s:4:\"file\";s:27:\"regulyNewsroom-1000x200.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-620x124\";a:4:{s:4:\"file\";s:26:\"regulyNewsroom-620x124.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:124;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:26:\"meta-slider-resized-400x80\";a:4:{s:4:\"file\";s:25:\"regulyNewsroom-400x80.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:80;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-400x200\";a:4:{s:4:\"file\";s:26:\"regulyNewsroom-400x200.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:61:\"Robert Reguly, March 4, 1966.   Credit:  Jeff Goode\r\rfor Obit\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:25:\"nw-wo-reguly-vietnam-0330\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:2:{i:0;s:6:\"afsent\";i:1;s:10:\"bob reguly\";}}}');
INSERT INTO `wp_postmeta` VALUES (769,160,'_wp_attached_file','2021/10/regulyNewsroom2-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (770,160,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1960;s:4:\"file\";s:34:\"2021/10/regulyNewsroom2-scaled.jpg\";s:5:\"sizes\";a:17:{s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"regulyNewsroom2-300x230.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:230;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:28:\"regulyNewsroom2-1024x784.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:784;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"regulyNewsroom2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:27:\"regulyNewsroom2-768x588.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:588;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:29:\"regulyNewsroom2-1536x1176.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1176;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:29:\"regulyNewsroom2-2048x1568.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1568;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:29:\"regulyNewsroom2-1568x1200.jpg\";s:5:\"width\";i:1568;s:6:\"height\";i:1200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-700x300\";a:4:{s:4:\"file\";s:34:\"regulyNewsroom2-scaled-700x300.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-620x266\";a:4:{s:4:\"file\";s:34:\"regulyNewsroom2-scaled-620x266.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:266;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-400x171\";a:4:{s:4:\"file\";s:34:\"regulyNewsroom2-scaled-400x171.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:171;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-300x300\";a:4:{s:4:\"file\";s:34:\"regulyNewsroom2-scaled-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-500x300\";a:4:{s:4:\"file\";s:34:\"regulyNewsroom2-scaled-500x300.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-400x300\";a:4:{s:4:\"file\";s:34:\"regulyNewsroom2-scaled-400x300.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"meta-slider-resized-1000x200\";a:4:{s:4:\"file\";s:35:\"regulyNewsroom2-scaled-1000x200.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-620x124\";a:4:{s:4:\"file\";s:34:\"regulyNewsroom2-scaled-620x124.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:124;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:26:\"meta-slider-resized-400x80\";a:4:{s:4:\"file\";s:33:\"regulyNewsroom2-scaled-400x80.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:80;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-400x200\";a:4:{s:4:\"file\";s:34:\"regulyNewsroom2-scaled-400x200.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:23:\"Robert Reguly\r\rfor Obit\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:11:\"reguly05ob2\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:1:{i:0;s:10:\"Bob Reguly\";}}s:14:\"original_image\";s:19:\"regulyNewsroom2.jpg\";}');
INSERT INTO `wp_postmeta` VALUES (771,161,'ml-slider_settings','a:39:{s:5:\"title\";s:13:\"New Slideshow\";s:4:\"type\";s:4:\"flex\";s:6:\"random\";s:5:\"false\";s:8:\"cssClass\";s:0:\"\";s:8:\"printCss\";s:4:\"true\";s:7:\"printJs\";s:4:\"true\";s:5:\"width\";s:4:\"1000\";s:6:\"height\";s:3:\"200\";s:3:\"spw\";i:7;s:3:\"sph\";i:5;s:5:\"delay\";s:4:\"3000\";s:6:\"sDelay\";s:2:\"30\";s:7:\"opacity\";s:3:\"0.7\";s:10:\"titleSpeed\";s:3:\"500\";s:6:\"effect\";s:4:\"fade\";s:10:\"navigation\";s:5:\"false\";s:5:\"links\";s:4:\"true\";s:10:\"hoverPause\";s:4:\"true\";s:5:\"theme\";s:0:\"\";s:9:\"direction\";s:10:\"horizontal\";s:7:\"reverse\";s:5:\"false\";s:14:\"animationSpeed\";s:3:\"600\";s:8:\"prevText\";s:8:\"Previous\";s:8:\"nextText\";s:4:\"Next\";s:6:\"slices\";i:15;s:6:\"center\";s:4:\"true\";s:9:\"smartCrop\";s:4:\"true\";s:12:\"carouselMode\";s:5:\"false\";s:14:\"carouselMargin\";s:1:\"5\";s:16:\"firstSlideFadeIn\";s:4:\"true\";s:6:\"easing\";s:6:\"linear\";s:8:\"autoPlay\";s:5:\"false\";s:11:\"thumb_width\";i:150;s:12:\"thumb_height\";i:100;s:17:\"responsive_thumbs\";s:5:\"false\";s:15:\"thumb_min_width\";i:100;s:9:\"fullWidth\";s:4:\"true\";s:10:\"noConflict\";s:4:\"true\";s:12:\"smoothHeight\";s:5:\"false\";}');
INSERT INTO `wp_postmeta` VALUES (772,161,'metaslider_slideshow_theme','a:7:{s:6:\"folder\";s:7:\"outline\";s:5:\"title\";s:7:\"Outline\";s:4:\"type\";s:4:\"free\";s:8:\"supports\";a:4:{i:0;s:4:\"flex\";i:1;s:10:\"responsive\";i:2;s:4:\"nivo\";i:3;s:4:\"coin\";}s:4:\"tags\";a:4:{i:0;s:5:\"light\";i:1;s:5:\"lines\";i:2;s:4:\"bold\";i:3;s:6:\"square\";}s:11:\"description\";s:65:\"A clean, subtle theme that features block arrows and bold design.\";s:6:\"images\";a:5:{i:0;s:30:\"wabi-jayme-578762-unsplash.jpg\";i:1;s:31:\"nick-cooper-731773-unsplash.jpg\";i:2;s:38:\"olav-ahrens-rotne-1087667-unsplash.jpg\";i:3;s:35:\"muhammad-rizki-1094746-unsplash.jpg\";i:4;s:28:\"dorigo-wu-14676-unsplash.jpg\";}}');
INSERT INTO `wp_postmeta` VALUES (773,162,'_thumbnail_id','160');
INSERT INTO `wp_postmeta` VALUES (774,162,'ml-slider_type','image');
INSERT INTO `wp_postmeta` VALUES (775,162,'ml-slider_inherit_image_title','1');
INSERT INTO `wp_postmeta` VALUES (776,162,'ml-slider_inherit_image_alt','1');
INSERT INTO `wp_postmeta` VALUES (777,163,'_thumbnail_id','159');
INSERT INTO `wp_postmeta` VALUES (778,163,'ml-slider_type','image');
INSERT INTO `wp_postmeta` VALUES (779,163,'ml-slider_inherit_image_title','1');
INSERT INTO `wp_postmeta` VALUES (780,163,'ml-slider_inherit_image_alt','1');
INSERT INTO `wp_postmeta` VALUES (781,164,'_thumbnail_id','158');
INSERT INTO `wp_postmeta` VALUES (782,164,'ml-slider_type','image');
INSERT INTO `wp_postmeta` VALUES (783,164,'ml-slider_inherit_image_title','1');
INSERT INTO `wp_postmeta` VALUES (784,164,'ml-slider_inherit_image_alt','1');
INSERT INTO `wp_postmeta` VALUES (785,165,'_thumbnail_id','157');
INSERT INTO `wp_postmeta` VALUES (786,165,'ml-slider_type','image');
INSERT INTO `wp_postmeta` VALUES (787,165,'ml-slider_inherit_image_title','1');
INSERT INTO `wp_postmeta` VALUES (788,165,'ml-slider_inherit_image_alt','1');
INSERT INTO `wp_postmeta` VALUES (789,162,'ml-slider_crop_position','center-center');
INSERT INTO `wp_postmeta` VALUES (790,162,'ml-slider_caption_source','image-caption');
INSERT INTO `wp_postmeta` VALUES (791,162,'_wp_attachment_image_alt','');
INSERT INTO `wp_postmeta` VALUES (792,163,'ml-slider_crop_position','center-center');
INSERT INTO `wp_postmeta` VALUES (793,163,'ml-slider_caption_source','image-caption');
INSERT INTO `wp_postmeta` VALUES (794,163,'_wp_attachment_image_alt','');
INSERT INTO `wp_postmeta` VALUES (795,164,'ml-slider_crop_position','center-center');
INSERT INTO `wp_postmeta` VALUES (796,164,'ml-slider_caption_source','image-caption');
INSERT INTO `wp_postmeta` VALUES (797,164,'_wp_attachment_image_alt','');
INSERT INTO `wp_postmeta` VALUES (798,165,'ml-slider_crop_position','center-center');
INSERT INTO `wp_postmeta` VALUES (799,165,'ml-slider_caption_source','image-caption');
INSERT INTO `wp_postmeta` VALUES (800,165,'_wp_attachment_image_alt','');
INSERT INTO `wp_postmeta` VALUES (801,160,'_wp_attachment_backup_sizes','a:10:{s:15:\"resized-700x300\";a:5:{s:4:\"path\";s:111:\"/Users/jimross/Local Sites/eric-reguly/app/public/wp-content/uploads/2021/10/regulyNewsroom2-scaled-700x300.jpg\";s:4:\"file\";s:34:\"regulyNewsroom2-scaled-700x300.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-620x266\";a:5:{s:4:\"path\";s:111:\"/Users/jimross/Local Sites/eric-reguly/app/public/wp-content/uploads/2021/10/regulyNewsroom2-scaled-620x266.jpg\";s:4:\"file\";s:34:\"regulyNewsroom2-scaled-620x266.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:266;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-400x171\";a:5:{s:4:\"path\";s:111:\"/Users/jimross/Local Sites/eric-reguly/app/public/wp-content/uploads/2021/10/regulyNewsroom2-scaled-400x171.jpg\";s:4:\"file\";s:34:\"regulyNewsroom2-scaled-400x171.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:171;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-300x300\";a:5:{s:4:\"path\";s:111:\"/Users/jimross/Local Sites/eric-reguly/app/public/wp-content/uploads/2021/10/regulyNewsroom2-scaled-300x300.jpg\";s:4:\"file\";s:34:\"regulyNewsroom2-scaled-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-500x300\";a:5:{s:4:\"path\";s:111:\"/Users/jimross/Local Sites/eric-reguly/app/public/wp-content/uploads/2021/10/regulyNewsroom2-scaled-500x300.jpg\";s:4:\"file\";s:34:\"regulyNewsroom2-scaled-500x300.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-400x300\";a:5:{s:4:\"path\";s:111:\"/Users/jimross/Local Sites/eric-reguly/app/public/wp-content/uploads/2021/10/regulyNewsroom2-scaled-400x300.jpg\";s:4:\"file\";s:34:\"regulyNewsroom2-scaled-400x300.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"resized-1000x200\";a:5:{s:4:\"path\";s:112:\"/Users/jimross/Local Sites/eric-reguly/app/public/wp-content/uploads/2021/10/regulyNewsroom2-scaled-1000x200.jpg\";s:4:\"file\";s:35:\"regulyNewsroom2-scaled-1000x200.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-620x124\";a:5:{s:4:\"path\";s:111:\"/Users/jimross/Local Sites/eric-reguly/app/public/wp-content/uploads/2021/10/regulyNewsroom2-scaled-620x124.jpg\";s:4:\"file\";s:34:\"regulyNewsroom2-scaled-620x124.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:124;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"resized-400x80\";a:5:{s:4:\"path\";s:110:\"/Users/jimross/Local Sites/eric-reguly/app/public/wp-content/uploads/2021/10/regulyNewsroom2-scaled-400x80.jpg\";s:4:\"file\";s:33:\"regulyNewsroom2-scaled-400x80.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:80;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-400x200\";a:5:{s:4:\"path\";s:111:\"/Users/jimross/Local Sites/eric-reguly/app/public/wp-content/uploads/2021/10/regulyNewsroom2-scaled-400x200.jpg\";s:4:\"file\";s:34:\"regulyNewsroom2-scaled-400x200.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}');
INSERT INTO `wp_postmeta` VALUES (802,159,'_wp_attachment_backup_sizes','a:10:{s:15:\"resized-700x300\";a:5:{s:4:\"path\";s:103:\"/Users/jimross/Local Sites/eric-reguly/app/public/wp-content/uploads/2021/10/regulyNewsroom-700x300.jpg\";s:4:\"file\";s:26:\"regulyNewsroom-700x300.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-620x266\";a:5:{s:4:\"path\";s:103:\"/Users/jimross/Local Sites/eric-reguly/app/public/wp-content/uploads/2021/10/regulyNewsroom-620x266.jpg\";s:4:\"file\";s:26:\"regulyNewsroom-620x266.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:266;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-400x171\";a:5:{s:4:\"path\";s:103:\"/Users/jimross/Local Sites/eric-reguly/app/public/wp-content/uploads/2021/10/regulyNewsroom-400x171.jpg\";s:4:\"file\";s:26:\"regulyNewsroom-400x171.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:171;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-300x300\";a:5:{s:4:\"path\";s:103:\"/Users/jimross/Local Sites/eric-reguly/app/public/wp-content/uploads/2021/10/regulyNewsroom-300x300.jpg\";s:4:\"file\";s:26:\"regulyNewsroom-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-500x300\";a:5:{s:4:\"path\";s:103:\"/Users/jimross/Local Sites/eric-reguly/app/public/wp-content/uploads/2021/10/regulyNewsroom-500x300.jpg\";s:4:\"file\";s:26:\"regulyNewsroom-500x300.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-400x300\";a:5:{s:4:\"path\";s:103:\"/Users/jimross/Local Sites/eric-reguly/app/public/wp-content/uploads/2021/10/regulyNewsroom-400x300.jpg\";s:4:\"file\";s:26:\"regulyNewsroom-400x300.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"resized-1000x200\";a:5:{s:4:\"path\";s:104:\"/Users/jimross/Local Sites/eric-reguly/app/public/wp-content/uploads/2021/10/regulyNewsroom-1000x200.jpg\";s:4:\"file\";s:27:\"regulyNewsroom-1000x200.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-620x124\";a:5:{s:4:\"path\";s:103:\"/Users/jimross/Local Sites/eric-reguly/app/public/wp-content/uploads/2021/10/regulyNewsroom-620x124.jpg\";s:4:\"file\";s:26:\"regulyNewsroom-620x124.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:124;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"resized-400x80\";a:5:{s:4:\"path\";s:102:\"/Users/jimross/Local Sites/eric-reguly/app/public/wp-content/uploads/2021/10/regulyNewsroom-400x80.jpg\";s:4:\"file\";s:25:\"regulyNewsroom-400x80.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:80;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-400x200\";a:5:{s:4:\"path\";s:103:\"/Users/jimross/Local Sites/eric-reguly/app/public/wp-content/uploads/2021/10/regulyNewsroom-400x200.jpg\";s:4:\"file\";s:26:\"regulyNewsroom-400x200.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}');
INSERT INTO `wp_postmeta` VALUES (803,158,'_wp_attachment_backup_sizes','a:10:{s:15:\"resized-700x300\";a:5:{s:4:\"path\";s:117:\"/Users/jimross/Local Sites/eric-reguly/app/public/wp-content/uploads/2021/10/BobRegulyTorontoStara-scaled-700x300.jpg\";s:4:\"file\";s:40:\"BobRegulyTorontoStara-scaled-700x300.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-620x266\";a:5:{s:4:\"path\";s:117:\"/Users/jimross/Local Sites/eric-reguly/app/public/wp-content/uploads/2021/10/BobRegulyTorontoStara-scaled-620x266.jpg\";s:4:\"file\";s:40:\"BobRegulyTorontoStara-scaled-620x266.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:266;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-400x171\";a:5:{s:4:\"path\";s:117:\"/Users/jimross/Local Sites/eric-reguly/app/public/wp-content/uploads/2021/10/BobRegulyTorontoStara-scaled-400x171.jpg\";s:4:\"file\";s:40:\"BobRegulyTorontoStara-scaled-400x171.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:171;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-300x300\";a:5:{s:4:\"path\";s:117:\"/Users/jimross/Local Sites/eric-reguly/app/public/wp-content/uploads/2021/10/BobRegulyTorontoStara-scaled-300x300.jpg\";s:4:\"file\";s:40:\"BobRegulyTorontoStara-scaled-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-500x300\";a:5:{s:4:\"path\";s:117:\"/Users/jimross/Local Sites/eric-reguly/app/public/wp-content/uploads/2021/10/BobRegulyTorontoStara-scaled-500x300.jpg\";s:4:\"file\";s:40:\"BobRegulyTorontoStara-scaled-500x300.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-400x300\";a:5:{s:4:\"path\";s:117:\"/Users/jimross/Local Sites/eric-reguly/app/public/wp-content/uploads/2021/10/BobRegulyTorontoStara-scaled-400x300.jpg\";s:4:\"file\";s:40:\"BobRegulyTorontoStara-scaled-400x300.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"resized-1000x200\";a:5:{s:4:\"path\";s:118:\"/Users/jimross/Local Sites/eric-reguly/app/public/wp-content/uploads/2021/10/BobRegulyTorontoStara-scaled-1000x200.jpg\";s:4:\"file\";s:41:\"BobRegulyTorontoStara-scaled-1000x200.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-620x124\";a:5:{s:4:\"path\";s:117:\"/Users/jimross/Local Sites/eric-reguly/app/public/wp-content/uploads/2021/10/BobRegulyTorontoStara-scaled-620x124.jpg\";s:4:\"file\";s:40:\"BobRegulyTorontoStara-scaled-620x124.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:124;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"resized-400x80\";a:5:{s:4:\"path\";s:116:\"/Users/jimross/Local Sites/eric-reguly/app/public/wp-content/uploads/2021/10/BobRegulyTorontoStara-scaled-400x80.jpg\";s:4:\"file\";s:39:\"BobRegulyTorontoStara-scaled-400x80.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:80;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-400x200\";a:5:{s:4:\"path\";s:117:\"/Users/jimross/Local Sites/eric-reguly/app/public/wp-content/uploads/2021/10/BobRegulyTorontoStara-scaled-400x200.jpg\";s:4:\"file\";s:40:\"BobRegulyTorontoStara-scaled-400x200.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}');
INSERT INTO `wp_postmeta` VALUES (804,157,'_wp_attachment_backup_sizes','a:10:{s:15:\"resized-700x300\";a:5:{s:4:\"path\";s:110:\"/Users/jimross/Local Sites/eric-reguly/app/public/wp-content/uploads/2021/10/BobRegulySmokejumper2-700x300.jpg\";s:4:\"file\";s:33:\"BobRegulySmokejumper2-700x300.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-620x266\";a:5:{s:4:\"path\";s:110:\"/Users/jimross/Local Sites/eric-reguly/app/public/wp-content/uploads/2021/10/BobRegulySmokejumper2-620x266.jpg\";s:4:\"file\";s:33:\"BobRegulySmokejumper2-620x266.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:266;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-400x171\";a:5:{s:4:\"path\";s:110:\"/Users/jimross/Local Sites/eric-reguly/app/public/wp-content/uploads/2021/10/BobRegulySmokejumper2-400x171.jpg\";s:4:\"file\";s:33:\"BobRegulySmokejumper2-400x171.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:171;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-300x300\";a:5:{s:4:\"path\";s:110:\"/Users/jimross/Local Sites/eric-reguly/app/public/wp-content/uploads/2021/10/BobRegulySmokejumper2-300x300.jpg\";s:4:\"file\";s:33:\"BobRegulySmokejumper2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-500x300\";a:5:{s:4:\"path\";s:110:\"/Users/jimross/Local Sites/eric-reguly/app/public/wp-content/uploads/2021/10/BobRegulySmokejumper2-500x300.jpg\";s:4:\"file\";s:33:\"BobRegulySmokejumper2-500x300.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-400x300\";a:5:{s:4:\"path\";s:110:\"/Users/jimross/Local Sites/eric-reguly/app/public/wp-content/uploads/2021/10/BobRegulySmokejumper2-400x300.jpg\";s:4:\"file\";s:33:\"BobRegulySmokejumper2-400x300.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"resized-1000x200\";a:5:{s:4:\"path\";s:111:\"/Users/jimross/Local Sites/eric-reguly/app/public/wp-content/uploads/2021/10/BobRegulySmokejumper2-1000x200.jpg\";s:4:\"file\";s:34:\"BobRegulySmokejumper2-1000x200.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-620x124\";a:5:{s:4:\"path\";s:110:\"/Users/jimross/Local Sites/eric-reguly/app/public/wp-content/uploads/2021/10/BobRegulySmokejumper2-620x124.jpg\";s:4:\"file\";s:33:\"BobRegulySmokejumper2-620x124.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:124;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"resized-400x80\";a:5:{s:4:\"path\";s:109:\"/Users/jimross/Local Sites/eric-reguly/app/public/wp-content/uploads/2021/10/BobRegulySmokejumper2-400x80.jpg\";s:4:\"file\";s:32:\"BobRegulySmokejumper2-400x80.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:80;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-400x200\";a:5:{s:4:\"path\";s:110:\"/Users/jimross/Local Sites/eric-reguly/app/public/wp-content/uploads/2021/10/BobRegulySmokejumper2-400x200.jpg\";s:4:\"file\";s:33:\"BobRegulySmokejumper2-400x200.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}');
INSERT INTO `wp_postmeta` VALUES (805,166,'ml-slider_settings','a:39:{s:5:\"title\";s:13:\"New Slideshow\";s:4:\"type\";s:4:\"flex\";s:6:\"random\";s:5:\"false\";s:8:\"cssClass\";s:10:\"bob-slider\";s:8:\"printCss\";s:4:\"true\";s:7:\"printJs\";s:4:\"true\";s:5:\"width\";s:3:\"500\";s:6:\"height\";s:3:\"250\";s:3:\"spw\";i:7;s:3:\"sph\";i:5;s:5:\"delay\";s:4:\"3000\";s:6:\"sDelay\";s:2:\"30\";s:7:\"opacity\";s:3:\"0.7\";s:10:\"titleSpeed\";s:3:\"500\";s:6:\"effect\";s:4:\"fade\";s:10:\"navigation\";s:4:\"true\";s:5:\"links\";s:4:\"true\";s:10:\"hoverPause\";s:4:\"true\";s:5:\"theme\";s:0:\"\";s:9:\"direction\";s:10:\"horizontal\";s:7:\"reverse\";s:5:\"false\";s:14:\"animationSpeed\";s:3:\"600\";s:8:\"prevText\";s:8:\"Previous\";s:8:\"nextText\";s:4:\"Next\";s:6:\"slices\";i:15;s:6:\"center\";s:4:\"true\";s:9:\"smartCrop\";s:12:\"disabled_pad\";s:12:\"carouselMode\";s:5:\"false\";s:14:\"carouselMargin\";s:1:\"5\";s:16:\"firstSlideFadeIn\";s:4:\"true\";s:6:\"easing\";s:6:\"linear\";s:8:\"autoPlay\";s:5:\"false\";s:11:\"thumb_width\";i:150;s:12:\"thumb_height\";i:100;s:17:\"responsive_thumbs\";s:5:\"false\";s:15:\"thumb_min_width\";i:100;s:9:\"fullWidth\";s:4:\"true\";s:10:\"noConflict\";s:4:\"true\";s:12:\"smoothHeight\";s:5:\"false\";}');
INSERT INTO `wp_postmeta` VALUES (806,166,'metaslider_slideshow_theme','a:7:{s:6:\"folder\";s:7:\"outline\";s:5:\"title\";s:7:\"Outline\";s:4:\"type\";s:4:\"free\";s:8:\"supports\";a:4:{i:0;s:4:\"flex\";i:1;s:10:\"responsive\";i:2;s:4:\"nivo\";i:3;s:4:\"coin\";}s:4:\"tags\";a:4:{i:0;s:5:\"light\";i:1;s:5:\"lines\";i:2;s:4:\"bold\";i:3;s:6:\"square\";}s:11:\"description\";s:65:\"A clean, subtle theme that features block arrows and bold design.\";s:6:\"images\";a:5:{i:0;s:30:\"wabi-jayme-578762-unsplash.jpg\";i:1;s:31:\"nick-cooper-731773-unsplash.jpg\";i:2;s:38:\"olav-ahrens-rotne-1087667-unsplash.jpg\";i:3;s:35:\"muhammad-rizki-1094746-unsplash.jpg\";i:4;s:28:\"dorigo-wu-14676-unsplash.jpg\";}}');
INSERT INTO `wp_postmeta` VALUES (807,167,'_thumbnail_id','159');
INSERT INTO `wp_postmeta` VALUES (808,167,'ml-slider_type','image');
INSERT INTO `wp_postmeta` VALUES (809,167,'ml-slider_inherit_image_title','1');
INSERT INTO `wp_postmeta` VALUES (810,167,'ml-slider_inherit_image_alt','1');
INSERT INTO `wp_postmeta` VALUES (811,168,'_thumbnail_id','160');
INSERT INTO `wp_postmeta` VALUES (812,168,'ml-slider_type','image');
INSERT INTO `wp_postmeta` VALUES (813,168,'ml-slider_inherit_image_title','1');
INSERT INTO `wp_postmeta` VALUES (814,168,'ml-slider_inherit_image_alt','1');
INSERT INTO `wp_postmeta` VALUES (815,169,'_thumbnail_id','158');
INSERT INTO `wp_postmeta` VALUES (816,169,'ml-slider_type','image');
INSERT INTO `wp_postmeta` VALUES (817,169,'ml-slider_inherit_image_title','1');
INSERT INTO `wp_postmeta` VALUES (818,169,'ml-slider_inherit_image_alt','1');
INSERT INTO `wp_postmeta` VALUES (819,170,'_thumbnail_id','157');
INSERT INTO `wp_postmeta` VALUES (820,170,'ml-slider_type','image');
INSERT INTO `wp_postmeta` VALUES (821,170,'ml-slider_inherit_image_title','1');
INSERT INTO `wp_postmeta` VALUES (822,170,'ml-slider_inherit_image_alt','1');
INSERT INTO `wp_postmeta` VALUES (823,171,'_thumbnail_id','156');
INSERT INTO `wp_postmeta` VALUES (824,171,'ml-slider_type','image');
INSERT INTO `wp_postmeta` VALUES (825,171,'ml-slider_inherit_image_title','1');
INSERT INTO `wp_postmeta` VALUES (826,171,'ml-slider_inherit_image_alt','1');
INSERT INTO `wp_postmeta` VALUES (827,167,'ml-slider_crop_position','center-center');
INSERT INTO `wp_postmeta` VALUES (828,167,'ml-slider_caption_source','override');
INSERT INTO `wp_postmeta` VALUES (829,167,'_wp_attachment_image_alt','');
INSERT INTO `wp_postmeta` VALUES (830,168,'ml-slider_crop_position','center-center');
INSERT INTO `wp_postmeta` VALUES (831,168,'ml-slider_caption_source','override');
INSERT INTO `wp_postmeta` VALUES (832,168,'_wp_attachment_image_alt','');
INSERT INTO `wp_postmeta` VALUES (833,169,'ml-slider_crop_position','center-center');
INSERT INTO `wp_postmeta` VALUES (834,169,'ml-slider_caption_source','override');
INSERT INTO `wp_postmeta` VALUES (835,169,'_wp_attachment_image_alt','');
INSERT INTO `wp_postmeta` VALUES (836,170,'ml-slider_crop_position','center-center');
INSERT INTO `wp_postmeta` VALUES (837,170,'ml-slider_caption_source','override');
INSERT INTO `wp_postmeta` VALUES (838,170,'_wp_attachment_image_alt','');
INSERT INTO `wp_postmeta` VALUES (839,171,'ml-slider_crop_position','center-center');
INSERT INTO `wp_postmeta` VALUES (840,171,'ml-slider_caption_source','override');
INSERT INTO `wp_postmeta` VALUES (841,171,'_wp_attachment_image_alt','');
INSERT INTO `wp_postmeta` VALUES (842,156,'_wp_attachment_backup_sizes','a:4:{s:16:\"resized-1000x200\";a:5:{s:4:\"path\";s:117:\"/Users/jimross/Local Sites/eric-reguly/app/public/wp-content/uploads/2021/10/BobRegulySmokejumper-scaled-1000x200.jpg\";s:4:\"file\";s:40:\"BobRegulySmokejumper-scaled-1000x200.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-620x124\";a:5:{s:4:\"path\";s:116:\"/Users/jimross/Local Sites/eric-reguly/app/public/wp-content/uploads/2021/10/BobRegulySmokejumper-scaled-620x124.jpg\";s:4:\"file\";s:39:\"BobRegulySmokejumper-scaled-620x124.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:124;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"resized-400x80\";a:5:{s:4:\"path\";s:115:\"/Users/jimross/Local Sites/eric-reguly/app/public/wp-content/uploads/2021/10/BobRegulySmokejumper-scaled-400x80.jpg\";s:4:\"file\";s:38:\"BobRegulySmokejumper-scaled-400x80.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:80;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-400x200\";a:5:{s:4:\"path\";s:116:\"/Users/jimross/Local Sites/eric-reguly/app/public/wp-content/uploads/2021/10/BobRegulySmokejumper-scaled-400x200.jpg\";s:4:\"file\";s:39:\"BobRegulySmokejumper-scaled-400x200.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}');
INSERT INTO `wp_postmeta` VALUES (843,172,'wprss_item_date','2021-10-01T22:41:19+0000');
INSERT INTO `wp_postmeta` VALUES (844,172,'wprss_item_permalink','https://www.theglobeandmail.com/business/commentary/article-mr-smith-goes-to-paris-and-finds-he-has-to-save-the-same-airline-twice/?cmpid=rss');
INSERT INTO `wp_postmeta` VALUES (845,172,'wprss_item_source_name','The Globe and Mail');
INSERT INTO `wp_postmeta` VALUES (846,172,'wprss_item_source_url','https://www.theglobeandmail.com/');
INSERT INTO `wp_postmeta` VALUES (847,172,'wprss_item_author',NULL);
INSERT INTO `wp_postmeta` VALUES (848,172,'wprss_item_author_email','Eric Reguly');
INSERT INTO `wp_postmeta` VALUES (849,172,'wprss_item_author_link',NULL);
INSERT INTO `wp_postmeta` VALUES (850,172,'wprss_feed_id','139');
INSERT INTO `wp_postmeta` VALUES (851,172,'wprss_images','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (852,172,'wprss_best_image','');
INSERT INTO `wp_postmeta` VALUES (853,173,'wprss_item_date','2021-10-01T19:37:36+0000');
INSERT INTO `wp_postmeta` VALUES (854,173,'wprss_item_permalink','https://www.theglobeandmail.com/business/commentary/article-not-coming-to-a-road-near-you-self-driving-cars/?cmpid=rss');
INSERT INTO `wp_postmeta` VALUES (855,173,'wprss_item_source_name','The Globe and Mail');
INSERT INTO `wp_postmeta` VALUES (856,173,'wprss_item_source_url','https://www.theglobeandmail.com/');
INSERT INTO `wp_postmeta` VALUES (857,173,'wprss_item_author',NULL);
INSERT INTO `wp_postmeta` VALUES (858,173,'wprss_item_author_email','Eric Reguly');
INSERT INTO `wp_postmeta` VALUES (859,173,'wprss_item_author_link',NULL);
INSERT INTO `wp_postmeta` VALUES (860,173,'wprss_feed_id','139');
INSERT INTO `wp_postmeta` VALUES (861,173,'wprss_images','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (862,173,'wprss_best_image','');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=174 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2021-07-08 15:00:47','2021-07-08 15:00:47','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2021-07-08 15:00:47','2021-07-08 15:00:47','',0,'http://localhost:10013/?p=1',0,'post','',0);
INSERT INTO `wp_posts` VALUES (10,1,'2021-07-08 15:09:42','2021-07-08 15:09:42','','Book','','publish','closed','closed','','book','','','2021-09-22 11:46:00','2021-09-22 11:46:00','',0,'http://localhost:10013/?page_id=10',0,'page','',0);
INSERT INTO `wp_posts` VALUES (11,1,'2021-07-08 15:09:42','2021-07-08 15:09:42','','parallax','','inherit','closed','closed','','10-revision-v1','','','2021-07-08 15:09:42','2021-07-08 15:09:42','',10,'http://localhost:10013/?p=11',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (18,1,'2021-07-09 09:43:39','2021-07-09 09:43:39','','Robert Reguly, shown in a family handout photo.','Robert Reguly, shown in a family handout photo.','inherit','open','closed','','robert-reguly-shown-in-a-family-handout-photo','','','2021-07-09 09:43:39','2021-07-09 09:43:39','',0,'http://localhost:10013/wp-content/uploads/2021/07/Bob-Reguly-Vietnam.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (19,1,'2021-07-09 09:44:14','2021-07-09 09:44:14','','cropped-Bob-Reguly-Vietnam-scaled-1.jpg','','inherit','open','closed','','cropped-bob-reguly-vietnam-scaled-1-jpg','','','2021-07-09 09:44:14','2021-07-09 09:44:14','',0,'http://localhost:10013/wp-content/uploads/2021/07/cropped-Bob-Reguly-Vietnam-scaled-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (21,1,'2021-07-09 11:24:29','2021-07-09 11:24:29','<!-- wp:shortcode -->\n[ninja_form id=1]\n<!-- /wp:shortcode -->','Contact','','publish','closed','closed','','contact','','','2021-09-17 13:05:26','2021-09-17 13:05:26','',0,'http://localhost:10013/?page_id=21',0,'page','',0);
INSERT INTO `wp_posts` VALUES (22,1,'2021-07-09 11:24:29','2021-07-09 11:24:29','','Contact','','inherit','closed','closed','','21-revision-v1','','','2021-07-09 11:24:29','2021-07-09 11:24:29','',21,'http://localhost:10013/?p=22',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (23,1,'2021-07-09 11:24:48','2021-07-09 11:24:48','','About','','publish','closed','closed','','about','','','2021-07-09 11:24:48','2021-07-09 11:24:48','',0,'http://localhost:10013/?page_id=23',0,'page','',0);
INSERT INTO `wp_posts` VALUES (24,1,'2021-07-09 11:24:48','2021-07-09 11:24:48','','About','','inherit','closed','closed','','23-revision-v1','','','2021-07-09 11:24:48','2021-07-09 11:24:48','',23,'http://localhost:10013/?p=24',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (25,1,'2021-07-09 11:25:07','2021-07-09 11:25:07','<!-- wp:social-links -->\n<ul class=\"wp-block-social-links\"><!-- wp:social-link {\"url\":\"www.twitter.com/ereguly\",\"service\":\"twitter\"} /--></ul>\n<!-- /wp:social-links -->\n\n<!-- wp:wpra-shortcode/wpra-shortcode {\"isAll\":false,\"pagination\":false,\"limit\":5,\"exclude\":\"\",\"source\":\"\"} /-->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','News','','trash','closed','closed','','news-2__trashed','','','2021-09-22 10:52:01','2021-09-22 10:52:01','',0,'http://localhost:10013/?page_id=25',0,'page','',0);
INSERT INTO `wp_posts` VALUES (26,1,'2021-07-09 11:25:07','2021-07-09 11:25:07','','News','','inherit','closed','closed','','25-revision-v1','','','2021-07-09 11:25:07','2021-07-09 11:25:07','',25,'http://localhost:10013/?p=26',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (34,1,'2021-09-22 10:54:00','2021-07-09 11:47:59',' ','','','publish','closed','closed','','34','','','2021-09-22 10:54:00','2021-09-22 10:54:00','',0,'http://localhost:10013/34/',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (35,1,'2021-09-22 10:54:00','2021-07-09 11:47:59',' ','','','publish','closed','closed','','35','','','2021-09-22 10:54:00','2021-09-22 10:54:00','',0,'http://localhost:10013/35/',4,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (37,1,'2021-07-09 12:19:04','2021-07-09 12:19:04','','Home','','inherit','closed','closed','','10-revision-v1','','','2021-07-09 12:19:04','2021-07-09 12:19:04','',10,'http://localhost:10013/?p=37',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (42,1,'2021-07-12 09:49:14','2021-07-12 09:49:14','','veitnam transparent 2','','inherit','open','closed','','veitnam-transparent-2','','','2021-07-12 09:49:34','2021-07-12 09:49:34','',0,'http://localhost:10013/wp-content/uploads/2021/07/veitnam-transparent-2.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (47,1,'2021-08-19 13:09:41','2021-08-19 13:09:41','','Book','','inherit','closed','closed','','10-revision-v1','','','2021-08-19 13:09:41','2021-08-19 13:09:41','',10,'http://localhost:10013/?p=47',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (49,1,'2021-09-08 12:25:20','2021-09-08 12:25:20','','Mignon-Medium','','inherit','open','closed','','mignon-medium','','','2021-09-08 12:25:20','2021-09-08 12:25:20','',0,'http://localhost:10013/wp-content/uploads/2021/09/Mignon-Medium.zip',0,'attachment','application/zip',0);
INSERT INTO `wp_posts` VALUES (50,1,'2021-09-08 12:25:44','2021-09-08 12:25:44','','Mignon-Medium','','inherit','open','closed','','mignon-medium-2','','','2021-09-08 12:25:44','2021-09-08 12:25:44','',0,'http://localhost:10013/wp-content/uploads/2021/09/Mignon-Medium-1.zip',0,'attachment','application/zip',0);
INSERT INTO `wp_posts` VALUES (51,1,'2021-09-09 14:10:18','2021-09-09 14:10:18','','Eric Reguly Book cover','','inherit','open','closed','','eric-reguly-book-cover','','','2021-09-09 14:10:18','2021-09-09 14:10:18','',0,'http://localhost:10013/wp-content/uploads/2021/09/Eric-Reguly-Book-cover.jpeg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (52,1,'2021-09-14 11:55:58','2021-09-14 11:55:58','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"10\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Buy book','buy-book','trash','closed','closed','','group_61408d9c729b6__trashed','','','2021-09-14 12:43:28','2021-09-14 12:43:28','',0,'http://localhost:10013/?post_type=acf-field-group&#038;p=52',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (53,1,'2021-09-14 11:55:58','2021-09-14 11:55:58','a:6:{s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";}','Amazon','amazon','trash','closed','closed','','field_61408dabcad6b__trashed','','','2021-09-14 12:43:28','2021-09-14 12:43:28','',52,'http://localhost:10013/?post_type=acf-field&#038;p=53',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (56,1,'2021-09-14 12:01:41','2021-09-14 12:01:41','','Book','','inherit','closed','closed','','10-revision-v1','','','2021-09-14 12:01:41','2021-09-14 12:01:41','',10,'http://localhost:10013/?p=56',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (57,1,'2021-09-14 12:45:37','2021-09-14 12:45:37','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"10\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','buy','buy','publish','closed','closed','','group_6140990fb9e4b','','','2021-09-22 12:47:54','2021-09-22 12:47:54','',0,'http://localhost:10013/?post_type=acf-field-group&#038;p=57',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (58,1,'2021-09-14 12:45:37','2021-09-14 12:45:37','a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}','Buy This Book','buy_this_book','publish','closed','closed','','field_614099226f55e','','','2021-09-22 12:13:58','2021-09-22 12:13:58','',57,'http://localhost:10013/?post_type=acf-field&#038;p=58',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (59,1,'2021-09-14 12:55:25','2021-09-14 12:55:25','','Book','','inherit','closed','closed','','10-revision-v1','','','2021-09-14 12:55:25','2021-09-14 12:55:25','',10,'http://localhost:10013/?p=59',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (60,1,'2021-09-14 13:37:13','2021-09-14 13:37:13','a:6:{s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";}','amazon','amazon','publish','closed','closed','','field_6140a5033d82b','','','2021-09-22 12:13:58','2021-09-22 12:13:58','',58,'http://localhost:10013/?post_type=acf-field&#038;p=60',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (61,1,'2021-09-14 13:37:13','2021-09-14 13:37:13','a:6:{s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";}','barnes and noble','barnes_and_noble','publish','closed','closed','','field_6140a51d3d82c','','','2021-09-22 12:13:58','2021-09-22 12:13:58','',58,'http://localhost:10013/?post_type=acf-field&#038;p=61',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (63,1,'2021-09-15 10:38:50','2021-09-15 10:38:50','','Book','','inherit','closed','closed','','10-revision-v1','','','2021-09-15 10:38:50','2021-09-15 10:38:50','',10,'http://localhost:10013/?p=63',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (64,1,'2021-09-15 11:38:15','2021-09-15 11:38:15','','Book','','inherit','closed','closed','','10-revision-v1','','','2021-09-15 11:38:15','2021-09-15 11:38:15','',10,'http://localhost:10013/?p=64',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (65,1,'2021-09-16 10:13:45','2021-09-16 10:13:45','<!-- wp:shortcode -->\n[ninja_form id=1] \n\n<!-- /wp:shortcode -->','Contact','','inherit','closed','closed','','21-revision-v1','','','2021-09-16 10:13:45','2021-09-16 10:13:45','',21,'http://localhost:10013/?p=65',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (66,1,'2021-09-16 10:24:21','2021-09-16 10:24:21','<!-- wp:shortcode -->\n[ninja_form id=1]\n<!-- /wp:shortcode -->','Contact','','inherit','closed','closed','','21-revision-v1','','','2021-09-16 10:24:21','2021-09-16 10:24:21','',21,'http://localhost:10013/?p=66',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (67,1,'2021-09-16 11:10:42','2021-09-16 11:10:42','','','','publish','closed','closed','','67','','','2021-09-16 11:10:42','2021-09-16 11:10:42','',0,'http://localhost:10013/nf_sub/67/',0,'nf_sub','',0);
INSERT INTO `wp_posts` VALUES (68,0,'2021-09-16 11:35:08','2021-09-16 11:35:08','','','','publish','closed','closed','','68','','','2021-09-16 11:35:08','2021-09-16 11:35:08','',0,'http://localhost:10013/nf_sub/68/',0,'nf_sub','',0);
INSERT INTO `wp_posts` VALUES (69,0,'2021-09-16 11:54:09','2021-09-16 11:54:09','','','','publish','closed','closed','','69','','','2021-09-16 11:54:09','2021-09-16 11:54:09','',0,'http://localhost:10013/nf_sub/69/',0,'nf_sub','',0);
INSERT INTO `wp_posts` VALUES (70,1,'2021-09-16 12:13:54','2021-09-16 12:13:54','','','','publish','closed','closed','','70','','','2021-09-16 12:13:54','2021-09-16 12:13:54','',0,'http://localhost:10013/nf_sub/70/',0,'nf_sub','',0);
INSERT INTO `wp_posts` VALUES (71,1,'2021-09-16 12:14:27','2021-09-16 12:14:27','','','','publish','closed','closed','','71','','','2021-09-16 12:14:27','2021-09-16 12:14:27','',0,'http://localhost:10013/nf_sub/71/',0,'nf_sub','',0);
INSERT INTO `wp_posts` VALUES (72,1,'2021-09-16 12:14:55','2021-09-16 12:14:55','','','','publish','closed','closed','','72','','','2021-09-16 12:14:55','2021-09-16 12:14:55','',0,'http://localhost:10013/nf_sub/72/',0,'nf_sub','',0);
INSERT INTO `wp_posts` VALUES (73,1,'2021-09-16 12:45:28','2021-09-16 12:45:28','','','','publish','closed','closed','','73','','','2021-09-16 12:45:28','2021-09-16 12:45:28','',0,'http://localhost:10013/nf_sub/73/',0,'nf_sub','',0);
INSERT INTO `wp_posts` VALUES (74,1,'2021-09-16 12:46:50','2021-09-16 12:46:50','','','','publish','closed','closed','','74','','','2021-09-16 12:46:50','2021-09-16 12:46:50','',0,'http://localhost:10013/nf_sub/74/',0,'nf_sub','',0);
INSERT INTO `wp_posts` VALUES (75,1,'2021-09-16 12:52:54','2021-09-16 12:52:54','','','','publish','closed','closed','','75','','','2021-09-16 12:52:54','2021-09-16 12:52:54','',0,'http://localhost:10013/nf_sub/75/',0,'nf_sub','',0);
INSERT INTO `wp_posts` VALUES (76,1,'2021-09-16 13:09:20','2021-09-16 13:09:20','','','','publish','closed','closed','','76','','','2021-09-16 13:09:20','2021-09-16 13:09:20','',0,'http://localhost:10013/nf_sub/76/',0,'nf_sub','',0);
INSERT INTO `wp_posts` VALUES (77,1,'2021-09-16 13:16:31','2021-09-16 13:16:31','','','','publish','closed','closed','','77','','','2021-09-16 13:16:31','2021-09-16 13:16:31','',0,'http://localhost:10013/nf_sub/77/',0,'nf_sub','',0);
INSERT INTO `wp_posts` VALUES (78,1,'2021-09-16 13:27:14','2021-09-16 13:27:14','','','','publish','closed','closed','','78','','','2021-09-16 13:27:14','2021-09-16 13:27:14','',0,'http://localhost:10013/nf_sub/78/',0,'nf_sub','',0);
INSERT INTO `wp_posts` VALUES (79,1,'2021-09-16 13:29:10','2021-09-16 13:29:10','','','','publish','closed','closed','','79','','','2021-09-16 13:29:10','2021-09-16 13:29:10','',0,'http://localhost:10013/nf_sub/79/',0,'nf_sub','',0);
INSERT INTO `wp_posts` VALUES (80,1,'2021-09-16 13:43:23','2021-09-16 13:43:23','','','','publish','closed','closed','','80','','','2021-09-16 13:43:23','2021-09-16 13:43:23','',0,'http://localhost:10013/nf_sub/80/',0,'nf_sub','',0);
INSERT INTO `wp_posts` VALUES (81,1,'2021-09-16 13:45:19','2021-09-16 13:45:19','','','','publish','closed','closed','','81','','','2021-09-16 13:45:19','2021-09-16 13:45:19','',0,'http://localhost:10013/nf_sub/81/',0,'nf_sub','',0);
INSERT INTO `wp_posts` VALUES (82,1,'2021-09-16 13:55:12','2021-09-16 13:55:12','','','','publish','closed','closed','','82','','','2021-09-16 13:55:12','2021-09-16 13:55:12','',0,'http://localhost:10013/nf_sub/82/',0,'nf_sub','',0);
INSERT INTO `wp_posts` VALUES (83,1,'2021-09-16 13:55:49','2021-09-16 13:55:49','','','','publish','closed','closed','','83','','','2021-09-16 13:55:49','2021-09-16 13:55:49','',0,'http://localhost:10013/nf_sub/83/',0,'nf_sub','',0);
INSERT INTO `wp_posts` VALUES (84,1,'2021-09-17 09:44:35','2021-09-17 09:44:35','<!-- wp:shortcode -->\n[ninja_form id=1]\n<!-- /wp:shortcode -->','','','inherit','closed','closed','','21-revision-v1','','','2021-09-17 09:44:35','2021-09-17 09:44:35','',21,'http://localhost:10013/?p=84',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (85,1,'2021-09-17 10:01:36','2021-09-17 10:01:36','<!-- wp:shortcode -->\n[ninja_form id=1]\n<!-- /wp:shortcode -->','Contact','','inherit','closed','closed','','21-revision-v1','','','2021-09-17 10:01:36','2021-09-17 10:01:36','',21,'http://localhost:10013/?p=85',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (86,1,'2021-09-17 10:27:39','2021-09-17 10:27:39','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"21\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Contact','contact','publish','closed','closed','','group_61446d3817a2a','','','2021-09-17 11:10:48','2021-09-17 11:10:48','',0,'http://localhost:10013/?post_type=acf-field-group&#038;p=86',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (87,1,'2021-09-17 10:27:39','2021-09-17 10:27:39','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Email','email','publish','closed','closed','','field_61446d3d1d132','','','2021-09-17 10:34:29','2021-09-17 10:34:29','',86,'http://localhost:10013/?post_type=acf-field&#038;p=87',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (88,1,'2021-09-17 10:27:39','2021-09-17 10:27:39','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Phone','phone','publish','closed','closed','','field_61446d6f1d133','','','2021-09-17 10:34:29','2021-09-17 10:34:29','',86,'http://localhost:10013/?post_type=acf-field&#038;p=88',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (89,1,'2021-09-17 10:27:39','2021-09-17 10:27:39','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Twitter','twitter','publish','closed','closed','','field_61446d8a1d134','','','2021-09-17 11:10:48','2021-09-17 11:10:48','',86,'http://localhost:10013/?post_type=acf-field&#038;p=89',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (90,1,'2021-09-17 10:35:35','2021-09-17 10:35:35','<!-- wp:shortcode -->\n[ninja_form id=1]\n<!-- /wp:shortcode -->','Contact','','inherit','closed','closed','','21-revision-v1','','','2021-09-17 10:35:35','2021-09-17 10:35:35','',21,'http://localhost:10013/?p=90',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (91,1,'2021-09-17 10:35:42','2021-09-17 10:35:42','<!-- wp:shortcode -->\n[ninja_form id=1]\n<!-- /wp:shortcode -->','Contact','','inherit','closed','closed','','21-revision-v1','','','2021-09-17 10:35:42','2021-09-17 10:35:42','',21,'http://localhost:10013/?p=91',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (92,1,'2021-09-17 11:12:59','2021-09-17 11:12:59','<!-- wp:shortcode -->\n[ninja_form id=1]\n<!-- /wp:shortcode -->','Contact','','inherit','closed','closed','','21-revision-v1','','','2021-09-17 11:12:59','2021-09-17 11:12:59','',21,'http://localhost:10013/?p=92',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (93,1,'2021-09-17 11:14:13','2021-09-17 11:14:13','<!-- wp:shortcode -->\n[ninja_form id=1]\n<!-- /wp:shortcode -->','Contact','','inherit','closed','closed','','21-revision-v1','','','2021-09-17 11:14:13','2021-09-17 11:14:13','',21,'http://localhost:10013/?p=93',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (94,1,'2021-09-17 12:35:00','2021-09-17 12:35:00','','','','publish','closed','closed','','94','','','2021-09-17 12:35:00','2021-09-17 12:35:00','',0,'http://localhost:10013/nf_sub/94/',0,'nf_sub','',0);
INSERT INTO `wp_posts` VALUES (95,1,'2021-09-17 13:04:57','2021-09-17 13:04:57','','','','publish','closed','closed','','95','','','2021-09-17 13:04:57','2021-09-17 13:04:57','',0,'http://localhost:10013/nf_sub/95/',0,'nf_sub','',0);
INSERT INTO `wp_posts` VALUES (96,1,'2021-09-17 13:05:26','2021-09-17 13:05:26','<!-- wp:shortcode -->\n[ninja_form id=1]\n<!-- /wp:shortcode -->','Contact','','inherit','closed','closed','','21-revision-v1','','','2021-09-17 13:05:26','2021-09-17 13:05:26','',21,'http://localhost:10013/?p=96',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (98,1,'2021-09-17 13:07:04','2021-09-17 13:07:04','<!-- wp:social-links -->\n<ul class=\"wp-block-social-links\"><!-- wp:social-link {\"url\":\"www.twitter.com/ereguly\",\"service\":\"twitter\"} /--></ul>\n<!-- /wp:social-links -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','News','','inherit','closed','closed','','25-revision-v1','','','2021-09-17 13:07:04','2021-09-17 13:07:04','',25,'http://localhost:10013/?p=98',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (99,0,'2021-09-20 14:39:11','2021-09-20 14:39:11','','','','publish','closed','closed','','99','','','2021-09-20 14:39:11','2021-09-20 14:39:11','',0,'http://localhost:10013/nf_sub/99/',0,'nf_sub','',0);
INSERT INTO `wp_posts` VALUES (100,1,'2021-09-21 12:43:57','2021-09-21 12:43:57','','Default','','publish','closed','closed','','default','','','2021-09-30 13:19:31','2021-09-30 13:19:31','',0,'http://localhost:10013/feed-templates/default/',0,'wprss_feed_template','',0);
INSERT INTO `wp_posts` VALUES (101,1,'2021-09-21 12:46:00','2021-09-21 12:46:00','','The Globe and Mail','','trash','closed','closed','','globe-and-mail__trashed','','','2021-09-22 11:11:40','2021-09-22 11:11:40','',0,'http://localhost:10013/feeds/the-globe-and-mail/',0,'wprss_feed','',0);
INSERT INTO `wp_posts` VALUES (112,1,'2021-09-21 12:46:35','2021-09-21 12:46:35','<!-- wp:social-links -->\n<ul class=\"wp-block-social-links\"><!-- wp:social-link {\"url\":\"www.twitter.com/ereguly\",\"service\":\"twitter\"} /--></ul>\n<!-- /wp:social-links -->\n\n<!-- wp:wpra-shortcode/wpra-shortcode /-->','News','','inherit','closed','closed','','25-revision-v1','','','2021-09-21 12:46:35','2021-09-21 12:46:35','',25,'http://localhost:10013/?p=112',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (113,1,'2021-09-21 12:56:04','2021-09-21 12:56:04','<!-- wp:social-links -->\n<ul class=\"wp-block-social-links\"><!-- wp:social-link {\"url\":\"www.twitter.com/ereguly\",\"service\":\"twitter\"} /--></ul>\n<!-- /wp:social-links -->\n\n<!-- wp:wpra-shortcode/wpra-shortcode /-->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','News','','inherit','closed','closed','','25-revision-v1','','','2021-09-21 12:56:04','2021-09-21 12:56:04','',25,'http://localhost:10013/?p=113',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (114,1,'2021-09-22 10:23:14','2021-09-22 10:23:14','','new','','trash','closed','closed','','new-2__trashed','','','2021-09-22 10:29:32','2021-09-22 10:29:32','',0,'http://localhost:10013/?page_id=114',0,'page','',0);
INSERT INTO `wp_posts` VALUES (115,1,'2021-09-22 10:23:14','2021-09-22 10:23:14','{\n    \"nav_menus_created_posts\": {\n        \"value\": [\n            114\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-09-22 10:23:14\"\n    },\n    \"nav_menu_item[-6405491308445393000]\": {\n        \"value\": {\n            \"object_id\": 114,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 4,\n            \"type\": \"post_type\",\n            \"title\": \"new\",\n            \"url\": \"http://localhost:10013/?page_id=114\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"new\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-09-22 10:23:14\"\n    }\n}','','','trash','closed','closed','','f73989dc-390f-4bb7-8964-7495313233e0','','','2021-09-22 10:23:14','2021-09-22 10:23:14','',0,'http://localhost:10013/f73989dc-390f-4bb7-8964-7495313233e0/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (116,1,'2021-09-22 10:23:14','2021-09-22 10:23:14','','new','','inherit','closed','closed','','114-revision-v1','','','2021-09-22 10:23:14','2021-09-22 10:23:14','',114,'http://localhost:10013/?p=116',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (120,1,'2021-09-22 10:39:21','2021-09-22 10:39:21','<!-- wp:social-links -->\n<ul class=\"wp-block-social-links\"><!-- wp:social-link {\"url\":\"www.twitter.com/ereguly\",\"service\":\"twitter\"} /--></ul>\n<!-- /wp:social-links -->\n\n<!-- wp:wpra-shortcode/wpra-shortcode {\"isAll\":false,\"pagination\":false,\"limit\":5,\"exclude\":\"\",\"source\":\"\"} /-->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','News','','inherit','closed','closed','','25-revision-v1','','','2021-09-22 10:39:21','2021-09-22 10:39:21','',25,'http://localhost:10013/?p=120',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (121,1,'2021-09-22 10:52:47','2021-09-22 10:52:47','','News','','publish','closed','closed','','news','','','2021-09-22 11:14:13','2021-09-22 11:14:13','',0,'http://localhost:10013/?page_id=121',0,'page','',0);
INSERT INTO `wp_posts` VALUES (122,1,'2021-09-22 10:52:47','2021-09-22 10:52:47','','NEWS','','inherit','closed','closed','','121-revision-v1','','','2021-09-22 10:52:47','2021-09-22 10:52:47','',121,'http://localhost:10013/?p=122',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (123,1,'2021-09-22 10:54:00','2021-09-22 10:54:00','{\n    \"nav_menu_item[32]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 10,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Front Page\",\n            \"url\": \"http://localhost:10013/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 3,\n            \"position\": 2,\n            \"status\": \"publish\",\n            \"original_title\": \"Book\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-09-22 10:54:00\"\n    },\n    \"nav_menu_item[34]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 23,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Page\",\n            \"url\": \"http://localhost:10013/about/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 3,\n            \"position\": 3,\n            \"status\": \"publish\",\n            \"original_title\": \"About\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-09-22 10:54:00\"\n    },\n    \"nav_menu_item[35]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 21,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Page\",\n            \"url\": \"http://localhost:10013/contact/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 3,\n            \"position\": 4,\n            \"status\": \"publish\",\n            \"original_title\": \"Contact\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-09-22 10:54:00\"\n    },\n    \"nav_menu_item[-3573918056592572400]\": {\n        \"value\": {\n            \"object_id\": 121,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"post_type\",\n            \"title\": \"NEWS\",\n            \"url\": \"http://localhost:10013/news-2/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"NEWS\",\n            \"nav_menu_term_id\": 3,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-09-22 10:54:00\"\n    }\n}','','','trash','closed','closed','','306104e6-29ed-48fa-9eda-2fa3bc5d20b0','','','2021-09-22 10:54:00','2021-09-22 10:54:00','',0,'http://localhost:10013/306104e6-29ed-48fa-9eda-2fa3bc5d20b0/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (124,1,'2021-09-22 10:54:00','2021-09-22 10:54:00',' ','','','publish','closed','closed','','124','','','2021-09-22 10:54:00','2021-09-22 10:54:00','',0,'http://localhost:10013/124/',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (126,1,'2021-09-22 10:56:24','2021-09-22 10:56:24','{\n    \"twentytwentyone-child::nav_menu_locations[primary]\": {\n        \"value\": 3,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-09-22 10:56:24\"\n    },\n    \"twentytwentyone-child::nav_menu_locations[footer]\": {\n        \"value\": 0,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-09-22 10:56:24\"\n    }\n}','','','trash','closed','closed','','9b332104-210a-4de9-ad41-d876463c2d4d','','','2021-09-22 10:56:24','2021-09-22 10:56:24','',0,'http://localhost:10013/9b332104-210a-4de9-ad41-d876463c2d4d/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (127,0,'2021-09-22 11:09:48','2021-09-22 11:09:48','','The Globe and Mail','','trash','closed','closed','','the-globe-and-mail__trashed','','','2021-09-22 11:13:10','2021-09-22 11:13:10','',0,'http://localhost:10013/feeds/the-globe-and-mail/',0,'wprss_feed','',0);
INSERT INTO `wp_posts` VALUES (138,1,'2021-09-22 11:10:41','2021-09-22 11:10:41','','News','','inherit','closed','closed','','121-revision-v1','','','2021-09-22 11:10:41','2021-09-22 11:10:41','',121,'http://localhost:10013/?p=138',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (139,1,'2021-09-22 11:16:27','2021-09-22 11:16:27','','Globe and Mail','','publish','closed','closed','','globe-and-mail','','','2021-09-24 13:45:26','2021-09-24 13:45:26','',0,'http://localhost:10013/?post_type=wprss_feed&#038;p=139',0,'wprss_feed','',0);
INSERT INTO `wp_posts` VALUES (140,0,'2021-09-20 18:08:25','2021-09-20 18:08:25','Italy’s vaccine czar says reservations on Saturday for the first dose were up 35 per cent over a week earlier. The country’s entire work force will have to show proof of vaccination, recent recovery from infection, or a recent negative test starting Oct. 15','Italy’s COVID-19 vaccine bookings rise by a third after government makes the Green Pass mandatory for all employees','Italy’s vaccine czar says reservations on Saturday for the first dose were up 35 per cent over a week earlier. The country’s entire work force will have to show proof of vaccination, recent recovery from infection, or a recent negative test starting Oct. 15','publish','closed','closed','','italys-covid-19-vaccine-bookings-rise-by-a-third-after-government-makes-the-green-pass-mandatory-for-all-employees','','','2021-09-20 18:08:25','2021-09-20 18:08:25','',0,'',0,'wprss_feed_item','',0);
INSERT INTO `wp_posts` VALUES (141,0,'2021-09-17 19:09:03','2021-09-17 19:09:03','Europe’s energy diversification hid deep flaws','Europe’s power crisis is an expensive reminder that renewable energy has its limits','Europe’s energy diversification hid deep flaws','publish','closed','closed','','europes-power-crisis-is-an-expensive-reminder-that-renewable-energy-has-its-limits','','','2021-09-17 19:09:03','2021-09-17 19:09:03','',0,'',0,'wprss_feed_item','',0);
INSERT INTO `wp_posts` VALUES (142,0,'2021-09-15 23:08:56','2021-09-15 23:08:56','Industry sources say that Canadian mining giant Teck Resources held talks with Lundin Mining Corp. and Glencore PLC regarding coal business, but talks went nowhere','Teck approached Glencore and Lundin as it weighs options for core coal business','Industry sources say that Canadian mining giant Teck Resources held talks with Lundin Mining Corp. and Glencore PLC regarding coal business, but talks went nowhere','publish','closed','closed','','teck-approached-glencore-and-lundin-as-it-weighs-options-for-core-coal-business','','','2021-09-15 23:08:56','2021-09-15 23:08:56','',0,'',0,'wprss_feed_item','',0);
INSERT INTO `wp_posts` VALUES (143,0,'2021-09-14 17:56:44','2021-09-14 17:56:44','Norway’s election result signalled that climate issues are entering the political mainstream, at least in Western Europe, and are less divisive than they used to be','Norway’s election thrust climate to the political forefront and brought in the centre-left. Taste of elections to come?','Norway’s election result signalled that climate issues are entering the political mainstream, at least in Western Europe, and are less divisive than they used to be','publish','closed','closed','','norways-election-thrust-climate-to-the-political-forefront-and-brought-in-the-centre-left-taste-of-elections-to-come','','','2021-09-14 17:56:44','2021-09-14 17:56:44','',0,'',0,'wprss_feed_item','',0);
INSERT INTO `wp_posts` VALUES (144,0,'2021-09-11 12:00:00','2021-09-11 12:00:00','James Bradburne used the COVID-19 pandemic to accelerate the museum’s transformation to an annual subscription model, with a heavy emphasis on an enhanced digital experience','A Canadian museum fixer in Italy ends the Brera’s ticket-based tourism model. Napoleon would approve','James Bradburne used the COVID-19 pandemic to accelerate the museum’s transformation to an annual subscription model, with a heavy emphasis on an enhanced digital experience','publish','closed','closed','','a-canadian-museum-fixer-in-italy-ends-the-breras-ticket-based-tourism-model-napoleon-would-approve','','','2021-09-11 12:00:00','2021-09-11 12:00:00','',0,'',0,'wprss_feed_item','',0);
INSERT INTO `wp_posts` VALUES (145,0,'2021-09-10 20:38:14','2021-09-10 20:38:14','Coal’s refusal to die is an issue, raising questions about the speed of the much-vaunted energy transition that was to see renewable energy greatly accelerate the phase-out of fossil fuels','Coal’s unwelcome revival is bad news for the UN’s crucial climate summit in Glasgow','Coal’s refusal to die is an issue, raising questions about the speed of the much-vaunted energy transition that was to see renewable energy greatly accelerate the phase-out of fossil fuels','publish','closed','closed','','coals-unwelcome-revival-is-bad-news-for-the-uns-crucial-climate-summit-in-glasgow','','','2021-09-10 20:38:14','2021-09-10 20:38:14','',0,'',0,'wprss_feed_item','',0);
INSERT INTO `wp_posts` VALUES (146,0,'2021-09-06 17:06:42','2021-09-06 17:06:42','Unless millions more Italians get vaccinated in the coming weeks, Prime Minister Mario Draghi will make COVID-19 vaccines mandatory for eligible citizens','Mario Draghi wants to make Italy the first EU country to make vaccines mandatory but faces resistance','Unless millions more Italians get vaccinated in the coming weeks, Prime Minister Mario Draghi will make COVID-19 vaccines mandatory for eligible citizens','publish','closed','closed','','mario-draghi-wants-to-make-italy-the-first-eu-country-to-make-vaccines-mandatory-but-faces-resistance','','','2021-09-06 17:06:42','2021-09-06 17:06:42','',0,'',0,'wprss_feed_item','',0);
INSERT INTO `wp_posts` VALUES (147,0,'2021-09-03 19:36:11','2021-09-03 19:36:11','For people who live in the suburbs and rural areas, car-free streets are a threat to their lifestyles and ability to make a living. For them, cars are not a luxury or an affectation; they are the minimum requirement to earn a paycheque','Parisian vision of a car-free future could trigger social division and war with the suburbs','For people who live in the suburbs and rural areas, car-free streets are a threat to their lifestyles and ability to make a living. For them, cars are not a luxury or an affectation; they are the minimum requirement to earn a paycheque','publish','closed','closed','','parisian-vision-of-a-car-free-future-could-trigger-social-division-and-war-with-the-suburbs','','','2021-09-03 19:36:11','2021-09-03 19:36:11','',0,'',0,'wprss_feed_item','',0);
INSERT INTO `wp_posts` VALUES (148,0,'2021-08-27 18:02:42','2021-08-27 18:02:42','A daunting amount of work needs to be done in a relatively short time and the collective bill in the form of higher carbon taxes and pricing, new regulations and deficit-financed government subsidies will be enormous','The rush to net zero could hit the economy as hard as the 1973-74 oil crisis','A daunting amount of work needs to be done in a relatively short time and the collective bill in the form of higher carbon taxes and pricing, new regulations and deficit-financed government subsidies will be enormous','publish','closed','closed','','the-rush-to-net-zero-could-hit-the-economy-as-hard-as-the-1973-74-oil-crisis','','','2021-08-27 18:02:42','2021-08-27 18:02:42','',0,'',0,'wprss_feed_item','',0);
INSERT INTO `wp_posts` VALUES (149,0,'2021-08-25 16:23:19','2021-08-25 16:23:19','If China is able to use Afghanistan to help it dominate global lithium and copper supplies, it will dominate the burgeoning EV market','The U.S. is out of Afghanistan, and China wants in, hunting for green revolution minerals','If China is able to use Afghanistan to help it dominate global lithium and copper supplies, it will dominate the burgeoning EV market','publish','closed','closed','','the-u-s-is-out-of-afghanistan-and-china-wants-in-hunting-for-green-revolution-minerals','','','2021-08-25 16:23:19','2021-08-25 16:23:19','',0,'',0,'wprss_feed_item','',0);
INSERT INTO `wp_posts` VALUES (150,1,'2021-09-22 11:22:36','2021-09-22 11:22:36','{\n    \"nav_menu_item[32]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-09-22 11:22:36\"\n    }\n}','','','trash','closed','closed','','6c1f5ea5-3313-4a64-9dc9-1e52d85fcbef','','','2021-09-22 11:22:36','2021-09-22 11:22:36','',0,'http://localhost:10013/6c1f5ea5-3313-4a64-9dc9-1e52d85fcbef/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (151,0,'2021-09-22 17:09:14','2021-09-22 17:09:14','But even before the Evergrande debacle, steel prices were falling as production slowed in China','China’s Evergrande mess is spreading and hurting big mining companies. The iron ore and steel party is over','But even before the Evergrande debacle, steel prices were falling as production slowed in China','publish','closed','closed','','chinas-evergrande-mess-is-spreading-and-hurting-big-mining-companies-the-iron-ore-and-steel-party-is-over','','','2021-09-22 17:09:14','2021-09-22 17:09:14','',0,'',0,'wprss_feed_item','',0);
INSERT INTO `wp_posts` VALUES (153,0,'2021-09-24 18:04:51','2021-09-24 18:04:51','No German industry faces greater difficulties than the energy sector as the country gets set to elect a successor to long-time leader Angela Merkel','Angela Merkel kept the EU from blowing up but left Germany vulnerable on the energy and industrial fronts','No German industry faces greater difficulties than the energy sector as the country gets set to elect a successor to long-time leader Angela Merkel','publish','closed','closed','','angela-merkel-kept-the-eu-from-blowing-up-but-left-germany-vulnerable-on-the-energy-and-industrial-fronts','','','2021-09-24 18:04:51','2021-09-24 18:04:51','',0,'',0,'wprss_feed_item','',0);
INSERT INTO `wp_posts` VALUES (155,1,'2021-10-01 13:03:23','2021-10-01 13:03:23','','nw-wo-reguly-vietnam-0330','Robert Reguly and Ada Baldassi on their wedding day in Sudbury in 1956.','inherit','open','closed','','nw-wo-reguly-vietnam-0330','','','2021-10-01 13:03:23','2021-10-01 13:03:23','',0,'http://localhost:10013/wp-content/uploads/2021/10/BobAdaMarriage.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (156,1,'2021-10-01 13:03:25','2021-10-01 13:03:25','','reguly05ob6','Robert Reguly.   Credit:  McKittrick\'s\n\nfor Obit','inherit','open','closed','','reguly05ob6','','','2021-10-01 13:03:44','2021-10-01 13:03:44','',0,'http://localhost:10013/wp-content/uploads/2021/10/BobRegulySmokejumper.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (157,1,'2021-10-01 13:03:27','2021-10-01 13:03:27','','reguly05ob7','Robert Reguly\n\nfor Obit','inherit','open','closed','','reguly05ob7','','','2021-10-01 13:03:43','2021-10-01 13:03:43','',0,'http://localhost:10013/wp-content/uploads/2021/10/BobRegulySmokejumper2.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (158,1,'2021-10-01 13:03:28','2021-10-01 13:03:28','','reguly05ob1','Robert Reguly\n\nfor Obit','inherit','open','closed','','reguly05ob1','','','2021-10-01 13:03:43','2021-10-01 13:03:43','',0,'http://localhost:10013/wp-content/uploads/2021/10/BobRegulyTorontoStara.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (159,1,'2021-10-01 13:03:31','2021-10-01 13:03:31','','nw-wo-reguly-vietnam-0330','Robert Reguly, March 4, 1966.   Credit:  Jeff Goode\n\nfor Obit','inherit','open','closed','','nw-wo-reguly-vietnam-0330-2','','','2021-10-01 13:03:42','2021-10-01 13:03:42','',0,'http://localhost:10013/wp-content/uploads/2021/10/regulyNewsroom.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (160,1,'2021-10-01 13:03:33','2021-10-01 13:03:33','','reguly05ob2','Robert Reguly\n\nfor Obit','inherit','open','closed','','reguly05ob2','','','2021-10-01 13:03:41','2021-10-01 13:03:41','',0,'http://localhost:10013/wp-content/uploads/2021/10/regulyNewsroom2.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (161,1,'2021-10-01 13:34:13','2021-10-01 13:34:13','','New Slideshow','','publish','closed','closed','','new-slideshow','','','2021-10-01 13:34:13','2021-10-01 13:34:13','',0,'http://localhost:10013/?post_type=ml-slider&p=161',0,'ml-slider','',0);
INSERT INTO `wp_posts` VALUES (162,1,'2021-10-01 13:49:01','2021-10-01 13:49:01','','Slider 161 - image','','publish','closed','closed','','slider-161-image','','','2021-10-01 14:56:55','2021-10-01 14:56:55','',0,'http://localhost:10013/?post_type=ml-slide&#038;p=162',0,'ml-slide','',0);
INSERT INTO `wp_posts` VALUES (163,1,'2021-10-01 13:49:01','2021-10-01 13:49:01','','Slider 161 - image','','publish','closed','closed','','slider-161-image-2','','','2021-10-01 14:56:55','2021-10-01 14:56:55','',0,'http://localhost:10013/?post_type=ml-slide&#038;p=163',1,'ml-slide','',0);
INSERT INTO `wp_posts` VALUES (164,1,'2021-10-01 13:49:01','2021-10-01 13:49:01','','Slider 161 - image','','publish','closed','closed','','slider-161-image-3','','','2021-10-01 14:56:55','2021-10-01 14:56:55','',0,'http://localhost:10013/?post_type=ml-slide&#038;p=164',2,'ml-slide','',0);
INSERT INTO `wp_posts` VALUES (165,1,'2021-10-01 13:49:01','2021-10-01 13:49:01','','Slider 161 - image','','publish','closed','closed','','slider-161-image-4','','','2021-10-01 14:56:55','2021-10-01 14:56:55','',0,'http://localhost:10013/?post_type=ml-slide&#038;p=165',3,'ml-slide','',0);
INSERT INTO `wp_posts` VALUES (166,1,'2021-10-01 14:57:50','2021-10-01 14:57:50','','Bob Reguly In Photos','','publish','closed','closed','','new-slideshow-2','','','2021-10-04 11:15:22','2021-10-04 11:15:22','',0,'http://localhost:10013/?post_type=ml-slider&#038;p=166',0,'ml-slider','',0);
INSERT INTO `wp_posts` VALUES (167,1,'2021-10-01 14:58:10','2021-10-01 14:58:10','','Slider 166 - image','','publish','closed','closed','','slider-166-image','','','2021-10-04 11:15:23','2021-10-04 11:15:23','',0,'http://localhost:10013/?post_type=ml-slide&#038;p=167',1,'ml-slide','',0);
INSERT INTO `wp_posts` VALUES (168,1,'2021-10-01 14:58:10','2021-10-01 14:58:10','','Slider 166 - image','','publish','closed','closed','','slider-166-image-2','','','2021-10-04 11:15:23','2021-10-04 11:15:23','',0,'http://localhost:10013/?post_type=ml-slide&#038;p=168',0,'ml-slide','',0);
INSERT INTO `wp_posts` VALUES (169,1,'2021-10-01 14:58:10','2021-10-01 14:58:10','','Slider 166 - image','','publish','closed','closed','','slider-166-image-3','','','2021-10-04 11:15:23','2021-10-04 11:15:23','',0,'http://localhost:10013/?post_type=ml-slide&#038;p=169',2,'ml-slide','',0);
INSERT INTO `wp_posts` VALUES (170,1,'2021-10-01 14:58:10','2021-10-01 14:58:10','','Slider 166 - image','','publish','closed','closed','','slider-166-image-4','','','2021-10-04 11:15:23','2021-10-04 11:15:23','',0,'http://localhost:10013/?post_type=ml-slide&#038;p=170',3,'ml-slide','',0);
INSERT INTO `wp_posts` VALUES (171,1,'2021-10-01 14:58:10','2021-10-01 14:58:10','','Slider 166 - image','','publish','closed','closed','','slider-166-image-5','','','2021-10-04 11:15:23','2021-10-04 11:15:23','',0,'http://localhost:10013/?post_type=ml-slide&#038;p=171',4,'ml-slide','',0);
INSERT INTO `wp_posts` VALUES (172,0,'2021-10-01 22:41:19','2021-10-01 22:41:19','In the second quarter of 2020, revenues utterly collapsed, and the company’s net loss exceeded €2.6-billion ($3.8-billion). With no end to the pandemic in sight, Air France-KLM’s executives had no idea how long the group could survive its horrendous cash burn','Mr. Smith goes to Paris and finds he has to save the same airline twice','In the second quarter of 2020, revenues utterly collapsed, and the company’s net loss exceeded €2.6-billion ($3.8-billion). With no end to the pandemic in sight, Air France-KLM’s executives had no idea how long the group could survive its horrendous cash burn','publish','closed','closed','','mr-smith-goes-to-paris-and-finds-he-has-to-save-the-same-airline-twice','','','2021-10-01 22:41:19','2021-10-01 22:41:19','',0,'',0,'wprss_feed_item','',0);
INSERT INTO `wp_posts` VALUES (173,0,'2021-10-01 19:37:36','2021-10-01 19:37:36','The hype surrounding their arrival was ridiculous. They’re coming but not for years','Not coming to a road near you: Self-driving cars','The hype surrounding their arrival was ridiculous. They’re coming but not for years','publish','closed','closed','','not-coming-to-a-road-near-you-self-driving-cars','','','2021-10-01 19:37:36','2021-10-01 19:37:36','',0,'',0,'wprss_feed_item','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
INSERT INTO `wp_term_relationships` VALUES (34,3,0);
INSERT INTO `wp_term_relationships` VALUES (35,3,0);
INSERT INTO `wp_term_relationships` VALUES (124,3,0);
INSERT INTO `wp_term_relationships` VALUES (162,4,0);
INSERT INTO `wp_term_relationships` VALUES (163,4,0);
INSERT INTO `wp_term_relationships` VALUES (164,4,0);
INSERT INTO `wp_term_relationships` VALUES (165,4,0);
INSERT INTO `wp_term_relationships` VALUES (167,5,0);
INSERT INTO `wp_term_relationships` VALUES (168,5,0);
INSERT INTO `wp_term_relationships` VALUES (169,5,0);
INSERT INTO `wp_term_relationships` VALUES (170,5,0);
INSERT INTO `wp_term_relationships` VALUES (171,5,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (3,3,'nav_menu','',0,3);
INSERT INTO `wp_term_taxonomy` VALUES (4,4,'ml-slider','',0,4);
INSERT INTO `wp_term_taxonomy` VALUES (5,5,'ml-slider','',0,5);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (3,'Nav-Options','nav-options',0);
INSERT INTO `wp_terms` VALUES (4,'161','161',0);
INSERT INTO `wp_terms` VALUES (5,'166','166',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','eric reguly');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (8,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (10,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (11,1,'locale','');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','0');
INSERT INTO `wp_usermeta` VALUES (16,1,'session_tokens','a:1:{s:64:\"5151da96dec0ffa7f9916a7177c19134c119bc01c76fe422ef49d5e8ff47df6c\";a:4:{s:10:\"expiration\";i:1633508389;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:82:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:92.0) Gecko/20100101 Firefox/92.0\";s:5:\"login\";i:1633335589;}}');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','152');
INSERT INTO `wp_usermeta` VALUES (18,1,'community-events-location','a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}');
INSERT INTO `wp_usermeta` VALUES (19,1,'wp_user-settings','libraryContent=browse');
INSERT INTO `wp_usermeta` VALUES (20,1,'wp_user-settings-time','1625823864');
INSERT INTO `wp_usermeta` VALUES (21,1,'nav_menu_recently_edited','3');
INSERT INTO `wp_usermeta` VALUES (22,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}');
INSERT INTO `wp_usermeta` VALUES (23,1,'metaboxhidden_nav-menus','a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}');
INSERT INTO `wp_usermeta` VALUES (24,1,'closedpostboxes_page','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (25,1,'metaboxhidden_page','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (26,1,'closedpostboxes_dashboard','a:1:{i:0;s:21:\"dashboard_quick_press\";}');
INSERT INTO `wp_usermeta` VALUES (27,1,'metaboxhidden_dashboard','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (29,1,'manageedit-nf_subcolumnshidden','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (60,1,'closedpostboxes_wprss_feed','a:1:{i:0;s:16:\"preview_meta_box\";}');
INSERT INTO `wp_usermeta` VALUES (61,1,'metaboxhidden_wprss_feed','a:1:{i:0;s:19:\"wprss-editor-dialog\";}');
INSERT INTO `wp_usermeta` VALUES (62,1,'meta-box-order_wprss_feed','a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:53:\"preview_meta_box,wprss-feed-processing-meta,submitdiv\";s:6:\"normal\";s:39:\"wprss-like-meta,custom_meta_box,slugdiv\";s:8:\"advanced\";s:0:\"\";}');
INSERT INTO `wp_usermeta` VALUES (63,1,'screen_layout_wprss_feed','2');
INSERT INTO `wp_usermeta` VALUES (65,1,'wp_metaslider_analytics_onboarding_status','yes');
INSERT INTO `wp_usermeta` VALUES (66,1,'extendifysdk_uuid','ee47ac1294a70b9e81eeb1da7909004f');
INSERT INTO `wp_usermeta` VALUES (67,1,'extendifysdk_user_data','{\"state\":{\"email\":\"\",\"apiKey\":\"\",\"imports\":0,\"uuid\":\"ee47ac1294a70b9e81eeb1da7909004f\",\"registration\":{\"email\":\"\"},\"allowedImports\":3,\"entryPoint\":\"main-button\",\"enabled\":true,\"hasClickedThroughWelcomePage\":true,\"canInstallPlugins\":true,\"canActivatePlugins\":true},\"version\":0}');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'eric reguly','$P$By28RM.Dri6dtCbexzwVL4Ibe2h.ef0','eric-reguly','jimrossuk@gmail.com','http://localhost:10013','2021-07-08 15:00:47','',0,'eric reguly');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wprss_logs`
--

DROP TABLE IF EXISTS `wp_wprss_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wprss_logs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `level` varchar(30) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `feed_id` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=885 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wprss_logs`
--

LOCK TABLES `wp_wprss_logs` WRITE;
/*!40000 ALTER TABLE `wp_wprss_logs` DISABLE KEYS */;
INSERT INTO `wp_wprss_logs` VALUES (747,'2021-10-01 09:40:25','info','Beginning import for all feed sources',NULL);
INSERT INTO `wp_wprss_logs` VALUES (748,'2021-10-01 09:40:27','info','Starting import of feed 139','139');
INSERT INTO `wp_wprss_logs` VALUES (749,'2021-10-01 09:40:27','debug','Feed source URL: https://www.theglobeandmail.com/authors/eric-reguly/','139');
INSERT INTO `wp_wprss_logs` VALUES (750,'2021-10-01 09:40:29','debug','10 items in the feed, 10 items after applying limit','139');
INSERT INTO `wp_wprss_logs` VALUES (751,'2021-10-01 09:40:29','debug','Item \"Angela Merkel kept the EU from blowing up but left Germany vulnerable on the energy and industrial fronts\" already exists in the database','139');
INSERT INTO `wp_wprss_logs` VALUES (752,'2021-10-01 09:40:29','debug','Item \"China’s Evergrande mess is spreading and hurting big mining companies. The iron ore and steel party is over\" already exists in the database','139');
INSERT INTO `wp_wprss_logs` VALUES (753,'2021-10-01 09:40:29','debug','Item \"Italy’s COVID-19 vaccine bookings rise by a third after government makes the Green Pass mandatory for all employees\" already exists in the database','139');
INSERT INTO `wp_wprss_logs` VALUES (754,'2021-10-01 09:40:29','debug','Item \"Europe’s power crisis is an expensive reminder that renewable energy has its limits\" already exists in the database','139');
INSERT INTO `wp_wprss_logs` VALUES (755,'2021-10-01 09:40:29','debug','Item \"Teck approached Glencore and Lundin as it weighs options for core coal business\" already exists in the database','139');
INSERT INTO `wp_wprss_logs` VALUES (756,'2021-10-01 09:40:29','debug','Item \"Norway’s election thrust climate to the political forefront and brought in the centre-left. Taste of elections to come?\" already exists in the database','139');
INSERT INTO `wp_wprss_logs` VALUES (757,'2021-10-01 09:40:29','debug','Item \"A Canadian museum fixer in Italy ends the Brera’s ticket-based tourism model. Napoleon would approve \" already exists in the database','139');
INSERT INTO `wp_wprss_logs` VALUES (758,'2021-10-01 09:40:29','debug','Item \"Coal’s unwelcome revival is bad news for the UN’s crucial climate summit in Glasgow\" already exists in the database','139');
INSERT INTO `wp_wprss_logs` VALUES (759,'2021-10-01 09:40:29','debug','Item \"Mario Draghi wants to make Italy the first EU country to make vaccines mandatory but faces resistance\" already exists in the database','139');
INSERT INTO `wp_wprss_logs` VALUES (760,'2021-10-01 09:40:29','debug','Item \"Parisian vision of a car-free future could trigger social division and war with the suburbs\" already exists in the database','139');
INSERT INTO `wp_wprss_logs` VALUES (761,'2021-10-01 09:40:29','debug','10 will be skipped','139');
INSERT INTO `wp_wprss_logs` VALUES (762,'2021-10-01 09:40:29','info','Import completed in 2.13 seconds!','139');
INSERT INTO `wp_wprss_logs` VALUES (763,'2021-10-01 12:38:20','info','Beginning import for all feed sources',NULL);
INSERT INTO `wp_wprss_logs` VALUES (764,'2021-10-01 12:38:44','info','Starting import of feed 139','139');
INSERT INTO `wp_wprss_logs` VALUES (765,'2021-10-01 12:38:44','debug','Feed source URL: https://www.theglobeandmail.com/authors/eric-reguly/','139');
INSERT INTO `wp_wprss_logs` VALUES (766,'2021-10-01 12:38:46','debug','10 items in the feed, 10 items after applying limit','139');
INSERT INTO `wp_wprss_logs` VALUES (767,'2021-10-01 12:38:46','debug','Item \"Angela Merkel kept the EU from blowing up but left Germany vulnerable on the energy and industrial fronts\" already exists in the database','139');
INSERT INTO `wp_wprss_logs` VALUES (768,'2021-10-01 12:38:46','debug','Item \"China’s Evergrande mess is spreading and hurting big mining companies. The iron ore and steel party is over\" already exists in the database','139');
INSERT INTO `wp_wprss_logs` VALUES (769,'2021-10-01 12:38:46','debug','Item \"Italy’s COVID-19 vaccine bookings rise by a third after government makes the Green Pass mandatory for all employees\" already exists in the database','139');
INSERT INTO `wp_wprss_logs` VALUES (770,'2021-10-01 12:38:46','debug','Item \"Europe’s power crisis is an expensive reminder that renewable energy has its limits\" already exists in the database','139');
INSERT INTO `wp_wprss_logs` VALUES (771,'2021-10-01 12:38:46','debug','Item \"Teck approached Glencore and Lundin as it weighs options for core coal business\" already exists in the database','139');
INSERT INTO `wp_wprss_logs` VALUES (772,'2021-10-01 12:38:46','debug','Item \"Norway’s election thrust climate to the political forefront and brought in the centre-left. Taste of elections to come?\" already exists in the database','139');
INSERT INTO `wp_wprss_logs` VALUES (773,'2021-10-01 12:38:46','debug','Item \"A Canadian museum fixer in Italy ends the Brera’s ticket-based tourism model. Napoleon would approve \" already exists in the database','139');
INSERT INTO `wp_wprss_logs` VALUES (774,'2021-10-01 12:38:46','debug','Item \"Coal’s unwelcome revival is bad news for the UN’s crucial climate summit in Glasgow\" already exists in the database','139');
INSERT INTO `wp_wprss_logs` VALUES (775,'2021-10-01 12:38:46','debug','Item \"Mario Draghi wants to make Italy the first EU country to make vaccines mandatory but faces resistance\" already exists in the database','139');
INSERT INTO `wp_wprss_logs` VALUES (776,'2021-10-01 12:38:46','debug','Item \"Parisian vision of a car-free future could trigger social division and war with the suburbs\" already exists in the database','139');
INSERT INTO `wp_wprss_logs` VALUES (777,'2021-10-01 12:38:46','debug','10 will be skipped','139');
INSERT INTO `wp_wprss_logs` VALUES (778,'2021-10-01 12:38:46','info','Import completed in 2.57 seconds!','139');
INSERT INTO `wp_wprss_logs` VALUES (779,'2021-10-01 23:18:39','info','Beginning import for all feed sources',NULL);
INSERT INTO `wp_wprss_logs` VALUES (780,'2021-10-01 23:20:40','info','Starting import of feed 139','139');
INSERT INTO `wp_wprss_logs` VALUES (781,'2021-10-01 23:20:40','debug','Feed source URL: https://www.theglobeandmail.com/authors/eric-reguly/','139');
INSERT INTO `wp_wprss_logs` VALUES (782,'2021-10-01 23:20:42','debug','12 items in the feed, 12 items after applying limit','139');
INSERT INTO `wp_wprss_logs` VALUES (783,'2021-10-01 23:20:42','debug','Item \"Angela Merkel kept the EU from blowing up but left Germany vulnerable on the energy and industrial fronts\" already exists in the database','139');
INSERT INTO `wp_wprss_logs` VALUES (784,'2021-10-01 23:20:42','debug','Item \"China’s Evergrande mess is spreading and hurting big mining companies. The iron ore and steel party is over\" already exists in the database','139');
INSERT INTO `wp_wprss_logs` VALUES (785,'2021-10-01 23:20:42','debug','Item \"Italy’s COVID-19 vaccine bookings rise by a third after government makes the Green Pass mandatory for all employees\" already exists in the database','139');
INSERT INTO `wp_wprss_logs` VALUES (786,'2021-10-01 23:20:42','debug','Item \"Europe’s power crisis is an expensive reminder that renewable energy has its limits\" already exists in the database','139');
INSERT INTO `wp_wprss_logs` VALUES (787,'2021-10-01 23:20:42','debug','Item \"Teck approached Glencore and Lundin as it weighs options for core coal business\" already exists in the database','139');
INSERT INTO `wp_wprss_logs` VALUES (788,'2021-10-01 23:20:42','debug','Item \"Norway’s election thrust climate to the political forefront and brought in the centre-left. Taste of elections to come?\" already exists in the database','139');
INSERT INTO `wp_wprss_logs` VALUES (789,'2021-10-01 23:20:42','debug','Item \"A Canadian museum fixer in Italy ends the Brera’s ticket-based tourism model. Napoleon would approve \" already exists in the database','139');
INSERT INTO `wp_wprss_logs` VALUES (790,'2021-10-01 23:20:42','debug','Item \"Coal’s unwelcome revival is bad news for the UN’s crucial climate summit in Glasgow\" already exists in the database','139');
INSERT INTO `wp_wprss_logs` VALUES (791,'2021-10-01 23:20:42','debug','Item \"Mario Draghi wants to make Italy the first EU country to make vaccines mandatory but faces resistance\" already exists in the database','139');
INSERT INTO `wp_wprss_logs` VALUES (792,'2021-10-01 23:20:42','debug','Item \"Parisian vision of a car-free future could trigger social division and war with the suburbs\" already exists in the database','139');
INSERT INTO `wp_wprss_logs` VALUES (793,'2021-10-01 23:20:42','debug','10 will be skipped','139');
INSERT INTO `wp_wprss_logs` VALUES (794,'2021-10-01 23:20:42','debug','Beginning import for item \"Mr. Smith goes to Paris and finds he has to save the same airline twice\"','139');
INSERT INTO `wp_wprss_logs` VALUES (795,'2021-10-01 23:20:42','debug','Hooks for `wprss_insert_post_item_conditionals`:','139');
INSERT INTO `wp_wprss_logs` VALUES (796,'2021-10-01 23:20:42','debug','-> wprss_check_feed_item_date_on_import()','139');
INSERT INTO `wp_wprss_logs` VALUES (797,'2021-10-01 23:20:42','debug','Checking conditionals ...','139');
INSERT INTO `wp_wprss_logs` VALUES (798,'2021-10-01 23:20:42','debug','Resuming insertion into DB','139');
INSERT INTO `wp_wprss_logs` VALUES (799,'2021-10-01 23:20:42','debug','Feed item \"Mr. Smith goes to Paris and finds he has to save the same airline twice\" date: 2021-10-01 22:41:19','139');
INSERT INTO `wp_wprss_logs` VALUES (800,'2021-10-01 23:20:42','debug','Date for \"Mr. Smith goes to Paris and finds he has to save the same airline twice\" will be 2021-10-01 22:41:19','139');
INSERT INTO `wp_wprss_logs` VALUES (801,'2021-10-01 23:20:42','debug','Item \"Mr. Smith goes to Paris and finds he has to save the same airline twice\" was inserted into DB, ID: 172','139');
INSERT INTO `wp_wprss_logs` VALUES (802,'2021-10-01 23:20:42','debug','Inserted meta data for item #172','139');
INSERT INTO `wp_wprss_logs` VALUES (803,'2021-10-01 23:20:42','notice','Finished import for item Mr. Smith goes to Paris and finds he has to save the same airline twice, ID 172','139');
INSERT INTO `wp_wprss_logs` VALUES (804,'2021-10-01 23:20:42','debug','Beginning import for item \"Not coming to a road near you: Self-driving cars\"','139');
INSERT INTO `wp_wprss_logs` VALUES (805,'2021-10-01 23:20:42','debug','Hooks for `wprss_insert_post_item_conditionals`:','139');
INSERT INTO `wp_wprss_logs` VALUES (806,'2021-10-01 23:20:42','debug','-> wprss_check_feed_item_date_on_import()','139');
INSERT INTO `wp_wprss_logs` VALUES (807,'2021-10-01 23:20:42','debug','Checking conditionals ...','139');
INSERT INTO `wp_wprss_logs` VALUES (808,'2021-10-01 23:20:42','debug','Resuming insertion into DB','139');
INSERT INTO `wp_wprss_logs` VALUES (809,'2021-10-01 23:20:42','debug','Feed item \"Not coming to a road near you: Self-driving cars\" date: 2021-10-01 19:37:36','139');
INSERT INTO `wp_wprss_logs` VALUES (810,'2021-10-01 23:20:42','debug','Date for \"Not coming to a road near you: Self-driving cars\" will be 2021-10-01 19:37:36','139');
INSERT INTO `wp_wprss_logs` VALUES (811,'2021-10-01 23:20:42','debug','Item \"Not coming to a road near you: Self-driving cars\" was inserted into DB, ID: 173','139');
INSERT INTO `wp_wprss_logs` VALUES (812,'2021-10-01 23:20:42','debug','Inserted meta data for item #173','139');
INSERT INTO `wp_wprss_logs` VALUES (813,'2021-10-01 23:20:42','notice','Finished import for item Not coming to a road near you: Self-driving cars, ID 173','139');
INSERT INTO `wp_wprss_logs` VALUES (814,'2021-10-01 23:20:42','info','Import completed in 2.53 seconds!','139');
INSERT INTO `wp_wprss_logs` VALUES (815,'2021-10-02 13:04:17','info','Beginning import for all feed sources',NULL);
INSERT INTO `wp_wprss_logs` VALUES (816,'2021-10-02 13:05:28','info','Starting import of feed 139','139');
INSERT INTO `wp_wprss_logs` VALUES (817,'2021-10-02 13:05:28','debug','Feed source URL: https://www.theglobeandmail.com/authors/eric-reguly/','139');
INSERT INTO `wp_wprss_logs` VALUES (818,'2021-10-02 13:05:31','debug','12 items in the feed, 12 items after applying limit','139');
INSERT INTO `wp_wprss_logs` VALUES (819,'2021-10-02 13:05:31','debug','Item \"Mr. Smith goes to Paris and finds he has to save the same airline twice\" already exists in the database','139');
INSERT INTO `wp_wprss_logs` VALUES (820,'2021-10-02 13:05:31','debug','Item \"Not coming to a road near you any time soon: Self-driving cars\" already exists in the database','139');
INSERT INTO `wp_wprss_logs` VALUES (821,'2021-10-02 13:05:31','debug','Item \"Angela Merkel kept the EU from blowing up but left Germany vulnerable on the energy and industrial fronts\" already exists in the database','139');
INSERT INTO `wp_wprss_logs` VALUES (822,'2021-10-02 13:05:31','debug','Item \"China’s Evergrande mess is spreading and hurting big mining companies. The iron ore and steel party is over\" already exists in the database','139');
INSERT INTO `wp_wprss_logs` VALUES (823,'2021-10-02 13:05:31','debug','Item \"Italy’s COVID-19 vaccine bookings rise by a third after government makes the Green Pass mandatory for all employees\" already exists in the database','139');
INSERT INTO `wp_wprss_logs` VALUES (824,'2021-10-02 13:05:31','debug','Item \"Europe’s power crisis is an expensive reminder that renewable energy has its limits\" already exists in the database','139');
INSERT INTO `wp_wprss_logs` VALUES (825,'2021-10-02 13:05:31','debug','Item \"Teck approached Glencore and Lundin as it weighs options for core coal business\" already exists in the database','139');
INSERT INTO `wp_wprss_logs` VALUES (826,'2021-10-02 13:05:31','debug','Item \"Norway’s election thrust climate to the political forefront and brought in the centre-left. Taste of elections to come?\" already exists in the database','139');
INSERT INTO `wp_wprss_logs` VALUES (827,'2021-10-02 13:05:31','debug','Item \"A Canadian museum fixer in Italy ends the Brera’s ticket-based tourism model. Napoleon would approve \" already exists in the database','139');
INSERT INTO `wp_wprss_logs` VALUES (828,'2021-10-02 13:05:31','debug','Item \"Coal’s unwelcome revival is bad news for the UN’s crucial climate summit in Glasgow\" already exists in the database','139');
INSERT INTO `wp_wprss_logs` VALUES (829,'2021-10-02 13:05:31','debug','Item \"Mario Draghi wants to make Italy the first EU country to make vaccines mandatory but faces resistance\" already exists in the database','139');
INSERT INTO `wp_wprss_logs` VALUES (830,'2021-10-02 13:05:31','debug','Item \"Parisian vision of a car-free future could trigger social division and war with the suburbs\" already exists in the database','139');
INSERT INTO `wp_wprss_logs` VALUES (831,'2021-10-02 13:05:31','debug','12 will be skipped','139');
INSERT INTO `wp_wprss_logs` VALUES (832,'2021-10-02 13:05:31','info','Import completed in 3.04 seconds!','139');
INSERT INTO `wp_wprss_logs` VALUES (833,'2021-10-03 11:46:25','info','Beginning import for all feed sources',NULL);
INSERT INTO `wp_wprss_logs` VALUES (834,'2021-10-03 11:48:26','info','Starting import of feed 139','139');
INSERT INTO `wp_wprss_logs` VALUES (835,'2021-10-03 11:48:26','debug','Feed source URL: https://www.theglobeandmail.com/authors/eric-reguly/','139');
INSERT INTO `wp_wprss_logs` VALUES (836,'2021-10-03 11:48:28','debug','12 items in the feed, 12 items after applying limit','139');
INSERT INTO `wp_wprss_logs` VALUES (837,'2021-10-03 11:48:28','debug','Item \"Mr. Smith goes to Paris and finds he has to save the same airline twice\" already exists in the database','139');
INSERT INTO `wp_wprss_logs` VALUES (838,'2021-10-03 11:48:28','debug','Item \"Not coming to a road near you any time soon: Self-driving cars\" already exists in the database','139');
INSERT INTO `wp_wprss_logs` VALUES (839,'2021-10-03 11:48:28','debug','Item \"Angela Merkel kept the EU from blowing up but left Germany vulnerable on the energy and industrial fronts\" already exists in the database','139');
INSERT INTO `wp_wprss_logs` VALUES (840,'2021-10-03 11:48:28','debug','Item \"China’s Evergrande mess is spreading and hurting big mining companies. The iron ore and steel party is over\" already exists in the database','139');
INSERT INTO `wp_wprss_logs` VALUES (841,'2021-10-03 11:48:28','debug','Item \"Italy’s COVID-19 vaccine bookings rise by a third after government makes the Green Pass mandatory for all employees\" already exists in the database','139');
INSERT INTO `wp_wprss_logs` VALUES (842,'2021-10-03 11:48:28','debug','Item \"Europe’s power crisis is an expensive reminder that renewable energy has its limits\" already exists in the database','139');
INSERT INTO `wp_wprss_logs` VALUES (843,'2021-10-03 11:48:28','debug','Item \"Teck approached Glencore and Lundin as it weighs options for core coal business\" already exists in the database','139');
INSERT INTO `wp_wprss_logs` VALUES (844,'2021-10-03 11:48:28','debug','Item \"Norway’s election thrust climate to the political forefront and brought in the centre-left. Taste of elections to come?\" already exists in the database','139');
INSERT INTO `wp_wprss_logs` VALUES (845,'2021-10-03 11:48:28','debug','Item \"A Canadian museum fixer in Italy ends the Brera’s ticket-based tourism model. Napoleon would approve \" already exists in the database','139');
INSERT INTO `wp_wprss_logs` VALUES (846,'2021-10-03 11:48:28','debug','Item \"Coal’s unwelcome revival is bad news for the UN’s crucial climate summit in Glasgow\" already exists in the database','139');
INSERT INTO `wp_wprss_logs` VALUES (847,'2021-10-03 11:48:28','debug','Item \"Mario Draghi wants to make Italy the first EU country to make vaccines mandatory but faces resistance\" already exists in the database','139');
INSERT INTO `wp_wprss_logs` VALUES (848,'2021-10-03 11:48:28','debug','Item \"Parisian vision of a car-free future could trigger social division and war with the suburbs\" already exists in the database','139');
INSERT INTO `wp_wprss_logs` VALUES (849,'2021-10-03 11:48:28','debug','12 will be skipped','139');
INSERT INTO `wp_wprss_logs` VALUES (850,'2021-10-03 11:48:28','info','Import completed in 1.98 seconds!','139');
INSERT INTO `wp_wprss_logs` VALUES (851,'2021-10-04 00:30:28','info','Beginning import for all feed sources',NULL);
INSERT INTO `wp_wprss_logs` VALUES (852,'2021-10-04 08:08:38','info','Starting import of feed 139','139');
INSERT INTO `wp_wprss_logs` VALUES (853,'2021-10-04 08:08:38','debug','Feed source URL: https://www.theglobeandmail.com/authors/eric-reguly/','139');
INSERT INTO `wp_wprss_logs` VALUES (854,'2021-10-04 08:08:41','debug','11 items in the feed, 11 items after applying limit','139');
INSERT INTO `wp_wprss_logs` VALUES (855,'2021-10-04 08:08:41','debug','Item \"Mr. Smith goes to Paris and finds he has to save the same airline twice\" already exists in the database','139');
INSERT INTO `wp_wprss_logs` VALUES (856,'2021-10-04 08:08:41','debug','Item \"Not coming to a road near you any time soon: Self-driving cars\" already exists in the database','139');
INSERT INTO `wp_wprss_logs` VALUES (857,'2021-10-04 08:08:41','debug','Item \"Angela Merkel kept the EU from blowing up but left Germany vulnerable on the energy and industrial fronts\" already exists in the database','139');
INSERT INTO `wp_wprss_logs` VALUES (858,'2021-10-04 08:08:41','debug','Item \"China’s Evergrande mess is spreading and hurting big mining companies. The iron ore and steel party is over\" already exists in the database','139');
INSERT INTO `wp_wprss_logs` VALUES (859,'2021-10-04 08:08:41','debug','Item \"Italy’s COVID-19 vaccine bookings rise by a third after government makes the Green Pass mandatory for all employees\" already exists in the database','139');
INSERT INTO `wp_wprss_logs` VALUES (860,'2021-10-04 08:08:41','debug','Item \"Europe’s power crisis is an expensive reminder that renewable energy has its limits\" already exists in the database','139');
INSERT INTO `wp_wprss_logs` VALUES (861,'2021-10-04 08:08:41','debug','Item \"Teck approached Glencore and Lundin as it weighs options for core coal business\" already exists in the database','139');
INSERT INTO `wp_wprss_logs` VALUES (862,'2021-10-04 08:08:41','debug','Item \"Norway’s election thrust climate to the political forefront and brought in the centre-left. Taste of elections to come?\" already exists in the database','139');
INSERT INTO `wp_wprss_logs` VALUES (863,'2021-10-04 08:08:41','debug','Item \"A Canadian museum fixer in Italy ends the Brera’s ticket-based tourism model. Napoleon would approve \" already exists in the database','139');
INSERT INTO `wp_wprss_logs` VALUES (864,'2021-10-04 08:08:41','debug','Item \"Coal’s unwelcome revival is bad news for the UN’s crucial climate summit in Glasgow\" already exists in the database','139');
INSERT INTO `wp_wprss_logs` VALUES (865,'2021-10-04 08:08:41','debug','Item \"Mario Draghi wants to make Italy the first EU country to make vaccines mandatory but faces resistance\" already exists in the database','139');
INSERT INTO `wp_wprss_logs` VALUES (866,'2021-10-04 08:08:41','debug','11 will be skipped','139');
INSERT INTO `wp_wprss_logs` VALUES (867,'2021-10-04 08:08:41','info','Import completed in 2.55 seconds!','139');
INSERT INTO `wp_wprss_logs` VALUES (868,'2021-10-04 11:15:18','info','Beginning import for all feed sources',NULL);
INSERT INTO `wp_wprss_logs` VALUES (869,'2021-10-04 11:15:23','info','Starting import of feed 139','139');
INSERT INTO `wp_wprss_logs` VALUES (870,'2021-10-04 11:15:23','debug','Feed source URL: https://www.theglobeandmail.com/authors/eric-reguly/','139');
INSERT INTO `wp_wprss_logs` VALUES (871,'2021-10-04 11:15:25','debug','11 items in the feed, 11 items after applying limit','139');
INSERT INTO `wp_wprss_logs` VALUES (872,'2021-10-04 11:15:25','debug','Item \"Mr. Smith goes to Paris and finds he has to save the same airline twice\" already exists in the database','139');
INSERT INTO `wp_wprss_logs` VALUES (873,'2021-10-04 11:15:25','debug','Item \"Not coming to a road near you any time soon: Self-driving cars\" already exists in the database','139');
INSERT INTO `wp_wprss_logs` VALUES (874,'2021-10-04 11:15:25','debug','Item \"Angela Merkel kept the EU from blowing up but left Germany vulnerable on the energy and industrial fronts\" already exists in the database','139');
INSERT INTO `wp_wprss_logs` VALUES (875,'2021-10-04 11:15:25','debug','Item \"China’s Evergrande mess is spreading and hurting big mining companies. The iron ore and steel party is over\" already exists in the database','139');
INSERT INTO `wp_wprss_logs` VALUES (876,'2021-10-04 11:15:25','debug','Item \"Italy’s COVID-19 vaccine bookings rise by a third after government makes the Green Pass mandatory for all employees\" already exists in the database','139');
INSERT INTO `wp_wprss_logs` VALUES (877,'2021-10-04 11:15:25','debug','Item \"Europe’s power crisis is an expensive reminder that renewable energy has its limits\" already exists in the database','139');
INSERT INTO `wp_wprss_logs` VALUES (878,'2021-10-04 11:15:25','debug','Item \"Teck approached Glencore and Lundin as it weighs options for core coal business\" already exists in the database','139');
INSERT INTO `wp_wprss_logs` VALUES (879,'2021-10-04 11:15:25','debug','Item \"Norway’s election thrust climate to the political forefront and brought in the centre-left. Taste of elections to come?\" already exists in the database','139');
INSERT INTO `wp_wprss_logs` VALUES (880,'2021-10-04 11:15:25','debug','Item \"A Canadian museum fixer in Italy ends the Brera’s ticket-based tourism model. Napoleon would approve \" already exists in the database','139');
INSERT INTO `wp_wprss_logs` VALUES (881,'2021-10-04 11:15:25','debug','Item \"Coal’s unwelcome revival is bad news for the UN’s crucial climate summit in Glasgow\" already exists in the database','139');
INSERT INTO `wp_wprss_logs` VALUES (882,'2021-10-04 11:15:25','debug','Item \"Mario Draghi wants to make Italy the first EU country to make vaccines mandatory but faces resistance\" already exists in the database','139');
INSERT INTO `wp_wprss_logs` VALUES (883,'2021-10-04 11:15:25','debug','11 will be skipped','139');
INSERT INTO `wp_wprss_logs` VALUES (884,'2021-10-04 11:15:25','info','Import completed in 2.38 seconds!','139');
/*!40000 ALTER TABLE `wp_wprss_logs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-04 19:24:16
