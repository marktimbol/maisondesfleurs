-- Magento DB backup
--
-- Host: localhost    Database: maisondesfleurs_belpro
-- ------------------------------------------------------
-- Server version: 5.6.35

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin_passwords`
--

DROP TABLE IF EXISTS `admin_passwords`;
CREATE TABLE `admin_passwords` (
  `password_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Password Id',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'User Id',
  `password_hash` varchar(100) DEFAULT NULL COMMENT 'Password Hash',
  `expires` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Expires',
  `last_updated` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Last Updated',
  PRIMARY KEY (`password_id`),
  KEY `ADMIN_PASSWORDS_USER_ID` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Admin Passwords';

--
-- Table structure for table `admin_system_messages`
--

DROP TABLE IF EXISTS `admin_system_messages`;
CREATE TABLE `admin_system_messages` (
  `identity` varchar(100) NOT NULL COMMENT 'Message id',
  `severity` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Problem type',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Create date',
  PRIMARY KEY (`identity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Admin System Messages';

--
-- Dumping data for table `admin_system_messages`
--

LOCK TABLES `admin_system_messages` WRITE;
/*!40000 ALTER TABLE `admin_system_messages` DISABLE KEYS */;
INSERT INTO `admin_system_messages` VALUES ('da332d712f3215b9b94bfa268c398323',2,'2017-04-18 08:37:22');
/*!40000 ALTER TABLE `admin_system_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_user`
--

DROP TABLE IF EXISTS `admin_user`;
CREATE TABLE `admin_user` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'User ID',
  `firstname` varchar(32) DEFAULT NULL COMMENT 'User First Name',
  `lastname` varchar(32) DEFAULT NULL COMMENT 'User Last Name',
  `email` varchar(128) DEFAULT NULL COMMENT 'User Email',
  `username` varchar(40) DEFAULT NULL COMMENT 'User Login',
  `password` varchar(255) NOT NULL COMMENT 'User Password',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'User Created Time',
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'User Modified Time',
  `logdate` timestamp NULL DEFAULT NULL COMMENT 'User Last Login Time',
  `lognum` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'User Login Number',
  `reload_acl_flag` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Reload ACL',
  `is_active` smallint(6) NOT NULL DEFAULT '1' COMMENT 'User Is Active',
  `extra` text COMMENT 'User Extra Data',
  `rp_token` text COMMENT 'Reset Password Link Token',
  `rp_token_created_at` timestamp NULL DEFAULT NULL COMMENT 'Reset Password Link Token Creation Date',
  `interface_locale` varchar(16) NOT NULL DEFAULT 'en_US' COMMENT 'Backend interface locale',
  `failures_num` smallint(6) DEFAULT '0' COMMENT 'Failure Number',
  `first_failure` timestamp NULL DEFAULT NULL COMMENT 'First Failure',
  `lock_expires` timestamp NULL DEFAULT NULL COMMENT 'Expiration Lock Dates',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `ADMIN_USER_USERNAME` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Admin User Table';

--
-- Dumping data for table `admin_user`
--

LOCK TABLES `admin_user` WRITE;
/*!40000 ALTER TABLE `admin_user` DISABLE KEYS */;
INSERT INTO `admin_user` VALUES ('1','admin','admin','mark@belpro.co','admin','8a564540e2aca4870738a17abd7b85d182a41e2cbe94b28bc69106f0c1df9fdb:nmfZA6x5BJyRVuLMcvaI88480CsrRQUh:1','2017-04-13 06:50:15','2017-04-23 05:15:48','2017-04-23 05:15:48',40,0,1,'a:1:{s:11:\"configState\";a:165:{s:12:\"web_unsecure\";s:1:\"1\";s:10:\"web_secure\";s:1:\"1\";s:11:\"web_default\";s:1:\"1\";s:7:\"web_url\";s:1:\"1\";s:7:\"web_seo\";s:1:\"1\";s:10:\"web_cookie\";s:1:\"1\";s:11:\"web_session\";s:1:\"1\";s:24:\"web_browser_capabilities\";s:1:\"1\";s:15:\"general_country\";s:1:\"1\";s:14:\"general_region\";s:1:\"1\";s:14:\"general_locale\";s:1:\"1\";s:25:\"general_store_information\";s:1:\"1\";s:25:\"general_single_store_mode\";s:1:\"1\";s:13:\"admin_startup\";s:1:\"1\";s:12:\"admin_emails\";s:1:\"1\";s:9:\"admin_url\";s:1:\"1\";s:14:\"admin_security\";s:1:\"1\";s:15:\"admin_dashboard\";s:1:\"1\";s:13:\"admin_captcha\";s:1:\"1\";s:34:\"dev_front_end_development_workflow\";s:1:\"1\";s:12:\"dev_restrict\";s:1:\"1\";s:9:\"dev_debug\";s:1:\"1\";s:12:\"dev_template\";s:1:\"1\";s:20:\"dev_translate_inline\";s:1:\"1\";s:6:\"dev_js\";s:1:\"1\";s:7:\"dev_css\";s:1:\"1\";s:9:\"dev_image\";s:1:\"1\";s:10:\"dev_static\";s:1:\"1\";s:8:\"dev_grid\";s:1:\"1\";s:19:\"brandslider_general\";s:1:\"1\";s:27:\"randomproductslider_general\";s:1:\"1\";s:26:\"plazathemes_design_general\";s:1:\"1\";s:25:\"plazathemes_design_header\";s:1:\"1\";s:29:\"plazathemes_design_footer_top\";s:1:\"1\";s:32:\"plazathemes_design_footer_bottom\";s:1:\"1\";s:21:\"producttab_new_status\";s:1:\"1\";s:18:\"persistent_options\";s:1:\"1\";s:24:\"instagramgallery_general\";s:1:\"1\";s:31:\"featureproductslider_new_status\";s:1:\"1\";s:22:\"pricecountdown_general\";s:1:\"1\";s:31:\"pricecountdown_countdown_slider\";s:1:\"1\";s:30:\"pricecountdown_in_product_list\";s:1:\"1\";s:30:\"pricecountdown_in_product_view\";s:1:\"1\";s:14:\"mfblog_general\";s:1:\"1\";s:17:\"mfblog_index_page\";s:1:\"1\";s:16:\"mfblog_post_view\";s:1:\"1\";s:16:\"mfblog_post_list\";s:1:\"1\";s:14:\"mfblog_sidebar\";s:1:\"1\";s:15:\"mfblog_rss_feed\";s:1:\"1\";s:16:\"currency_options\";s:1:\"1\";s:21:\"currency_yahoofinance\";s:1:\"1\";s:16:\"currency_fixerio\";s:1:\"1\";s:20:\"currency_webservicex\";s:1:\"1\";s:15:\"currency_import\";s:1:\"1\";s:25:\"trans_email_ident_general\";s:1:\"1\";s:23:\"trans_email_ident_sales\";s:1:\"1\";s:25:\"trans_email_ident_support\";s:1:\"1\";s:25:\"trans_email_ident_custom1\";s:1:\"1\";s:25:\"trans_email_ident_custom2\";s:1:\"1\";s:13:\"contact_email\";s:1:\"1\";s:15:\"contact_contact\";s:1:\"1\";s:32:\"payment_us_other_payment_methods\";s:1:\"1\";s:18:\"payment_us_checkmo\";s:1:\"0\";s:23:\"payment_us_banktransfer\";s:1:\"0\";s:34:\"payment_us_authorizenet_directpost\";s:1:\"0\";s:24:\"payment_us_purchaseorder\";s:1:\"0\";s:44:\"payment_other_other_paypal_payment_solutions\";s:1:\"0\";s:35:\"payment_other_other_payment_methods\";s:1:\"1\";s:21:\"payment_other_checkmo\";s:1:\"0\";s:26:\"payment_other_banktransfer\";s:1:\"0\";s:28:\"payment_other_cashondelivery\";s:1:\"0\";s:18:\"payment_other_free\";s:1:\"0\";s:27:\"payment_other_purchaseorder\";s:1:\"0\";s:37:\"payment_other_authorizenet_directpost\";s:1:\"0\";s:21:\"payment_other_account\";s:1:\"1\";s:35:\"payment_other_recommended_solutions\";s:1:\"1\";s:36:\"payment_other_express_checkout_other\";s:1:\"0\";s:37:\"payment_other_paypal_group_all_in_one\";s:1:\"1\";s:25:\"newrelicreporting_general\";s:1:\"1\";s:20:\"catalog_fields_masks\";s:1:\"1\";s:16:\"catalog_frontend\";s:1:\"1\";s:14:\"catalog_review\";s:1:\"1\";s:20:\"catalog_productalert\";s:1:\"1\";s:25:\"catalog_productalert_cron\";s:1:\"1\";s:19:\"catalog_placeholder\";s:1:\"1\";s:21:\"catalog_product_video\";s:1:\"1\";s:25:\"catalog_recently_products\";s:1:\"1\";s:13:\"catalog_price\";s:1:\"1\";s:26:\"catalog_layered_navigation\";s:1:\"1\";s:11:\"catalog_seo\";s:1:\"1\";s:18:\"catalog_navigation\";s:1:\"1\";s:14:\"catalog_search\";s:1:\"1\";s:20:\"catalog_downloadable\";s:1:\"1\";s:22:\"catalog_custom_options\";s:1:\"1\";s:24:\"cataloginventory_options\";s:1:\"1\";s:29:\"cataloginventory_item_options\";s:1:\"1\";s:16:\"sitemap_category\";s:1:\"1\";s:15:\"sitemap_product\";s:1:\"1\";s:12:\"sitemap_page\";s:1:\"1\";s:16:\"sitemap_generate\";s:1:\"1\";s:13:\"sitemap_limit\";s:1:\"1\";s:22:\"sitemap_search_engines\";s:1:\"1\";s:10:\"rss_config\";s:1:\"1\";s:12:\"rss_wishlist\";s:1:\"1\";s:11:\"rss_catalog\";s:1:\"1\";s:9:\"rss_order\";s:1:\"1\";s:25:\"customer_online_customers\";s:1:\"1\";s:22:\"customer_account_share\";s:1:\"1\";s:23:\"customer_create_account\";s:1:\"1\";s:17:\"customer_password\";s:1:\"1\";s:16:\"customer_address\";s:1:\"1\";s:16:\"customer_startup\";s:1:\"1\";s:26:\"customer_address_templates\";s:1:\"1\";s:16:\"customer_captcha\";s:1:\"1\";s:16:\"wishlist_general\";s:1:\"1\";s:14:\"wishlist_email\";s:1:\"1\";s:22:\"wishlist_wishlist_link\";s:1:\"1\";s:13:\"sales_general\";s:1:\"1\";s:17:\"sales_totals_sort\";s:1:\"1\";s:13:\"sales_reorder\";s:1:\"1\";s:14:\"sales_identity\";s:1:\"1\";s:19:\"sales_minimum_order\";s:1:\"1\";s:15:\"sales_dashboard\";s:1:\"1\";s:12:\"sales_orders\";s:1:\"1\";s:18:\"sales_gift_options\";s:1:\"1\";s:10:\"sales_msrp\";s:1:\"1\";s:19:\"sales_email_general\";s:1:\"1\";s:17:\"sales_email_order\";s:1:\"1\";s:25:\"sales_email_order_comment\";s:1:\"1\";s:19:\"sales_email_invoice\";s:1:\"1\";s:27:\"sales_email_invoice_comment\";s:1:\"1\";s:20:\"sales_email_shipment\";s:1:\"1\";s:28:\"sales_email_shipment_comment\";s:1:\"1\";s:22:\"sales_email_creditmemo\";s:1:\"1\";s:30:\"sales_email_creditmemo_comment\";s:1:\"1\";s:17:\"sales_pdf_invoice\";s:1:\"1\";s:18:\"sales_pdf_shipment\";s:1:\"1\";s:20:\"sales_pdf_creditmemo\";s:1:\"1\";s:11:\"tax_classes\";s:1:\"1\";s:15:\"tax_calculation\";s:1:\"1\";s:12:\"tax_defaults\";s:1:\"1\";s:11:\"tax_display\";s:1:\"1\";s:16:\"tax_cart_display\";s:1:\"1\";s:17:\"tax_sales_display\";s:1:\"1\";s:8:\"tax_weee\";s:1:\"1\";s:16:\"checkout_options\";s:1:\"1\";s:13:\"checkout_cart\";s:1:\"1\";s:18:\"checkout_cart_link\";s:1:\"1\";s:16:\"checkout_sidebar\";s:1:\"1\";s:23:\"checkout_payment_failed\";s:1:\"1\";s:15:\"shipping_origin\";s:1:\"1\";s:24:\"shipping_shipping_policy\";s:1:\"1\";s:17:\"carriers_flatrate\";s:1:\"1\";s:21:\"carriers_freeshipping\";s:1:\"1\";s:18:\"carriers_tablerate\";s:1:\"1\";s:12:\"carriers_ups\";s:1:\"1\";s:13:\"carriers_usps\";s:1:\"1\";s:14:\"carriers_fedex\";s:1:\"1\";s:12:\"carriers_dhl\";s:1:\"1\";s:16:\"google_analytics\";s:1:\"1\";s:14:\"google_adwords\";s:1:\"1\";s:11:\"webapi_soap\";s:1:\"1\";s:21:\"webapi_webapisecurity\";s:1:\"1\";s:13:\"oauth_cleanup\";s:1:\"1\";s:14:\"oauth_consumer\";s:1:\"1\";}}',NULL,NULL,'en_US',0,NULL,NULL);
/*!40000 ALTER TABLE `admin_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_user_session`
--

DROP TABLE IF EXISTS `admin_user_session`;
CREATE TABLE `admin_user_session` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `session_id` varchar(128) NOT NULL COMMENT 'Session id value',
  `user_id` int(10) unsigned DEFAULT NULL COMMENT 'Admin User ID',
  `status` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Current Session status',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created Time',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Update Time',
  `ip` varchar(15) NOT NULL COMMENT 'Remote user IP',
  PRIMARY KEY (`id`),
  KEY `ADMIN_USER_SESSION_SESSION_ID` (`session_id`),
  KEY `ADMIN_USER_SESSION_USER_ID` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COMMENT='Admin User sessions table';

--
-- Dumping data for table `admin_user_session`
--

LOCK TABLES `admin_user_session` WRITE;
/*!40000 ALTER TABLE `admin_user_session` DISABLE KEYS */;
INSERT INTO `admin_user_session` VALUES ('1','a8cf9df36c7f20436e82b76556d96516','1',2,'2017-04-13 06:51:16','2017-04-13 07:55:33','::1'),('2','cc7990a85ab9309a15bf0649a1066008','1',1,'2017-04-13 07:55:33','2017-04-13 09:32:14','127.0.0.1'),('3','67055cbe103fea12b116382d0cfff773','1',1,'2017-04-13 10:34:19','2017-04-13 11:34:25','127.0.0.1'),('4','24101fea38980f6bcfcee2cdc5275e8d','1',1,'2017-04-13 14:02:17','2017-04-13 15:41:18','127.0.0.1'),('5','240dfe4ef82bf402440f5c0e54fa8695','1',1,'2017-04-16 06:39:56','2017-04-16 06:55:48','127.0.0.1'),('6','1f6df14eaf8115cd1a53c34827b39ca9','1',1,'2017-04-16 10:56:03','2017-04-16 11:01:10','127.0.0.1'),('7','064e8f7f3da93215d39a16a94dfbbea6','1',2,'2017-04-16 11:41:40','2017-04-16 12:05:19','127.0.0.1'),('8','eb07272bc4b9d473a0ad652de700e949','1',1,'2017-04-16 12:05:19','2017-04-16 13:27:37','127.0.0.1'),('9','b153addd1e999e699f8228a6debe06aa','1',1,'2017-04-16 13:44:58','2017-04-16 14:17:24','127.0.0.1'),('10','bb0e00cb7f52024a7a4147102c411768','1',1,'2017-04-16 14:38:25','2017-04-16 14:51:23','127.0.0.1'),('11','eba609c7af0e81570f87547e742bf6fa','1',1,'2017-04-16 15:07:29','2017-04-16 16:15:43','127.0.0.1'),('12','5107aec798f38613f16b996b68fa1204','1',1,'2017-04-16 16:47:29','2017-04-16 17:41:41','127.0.0.1'),('13','3e07bc4400294d5eacae9d704051183a','1',1,'2017-04-17 12:18:42','2017-04-17 13:44:52','127.0.0.1'),('14','16b420a27194ddf78497617dc2254139','1',1,'2017-04-17 14:02:39','2017-04-17 14:12:04','127.0.0.1'),('15','e514ee8b71c6ed26b5ec43b38c1b81b6','1',1,'2017-04-17 17:57:40','2017-04-17 18:11:16','127.0.0.1'),('16','fdf6fc7388bcc6e79a8ce4575056acf2','1',1,'2017-04-17 18:46:53','2017-04-17 19:07:23','127.0.0.1'),('17','cd6d93511aeaca1461012b03fdb55366','1',1,'2017-04-18 07:29:07','2017-04-18 07:37:51','127.0.0.1'),('18','bb7e3941678143243e240c83fc66ad20','1',1,'2017-04-18 08:02:28','2017-04-18 08:13:13','127.0.0.1'),('19','490fd40ace170f53724ee1a4b82b5617','1',1,'2017-04-18 08:35:27','2017-04-18 09:00:22','127.0.0.1'),('20','714993abd3a85f5d32c7bead2a088814','1',1,'2017-04-18 10:09:55','2017-04-18 11:14:09','127.0.0.1'),('21','2c4b47e711a27ebb3758a5d09959b867','1',1,'2017-04-18 11:40:08','2017-04-18 11:50:32','127.0.0.1'),('22','6ff053df9aa42ae8ae496e33d58a6ea6','1',1,'2017-04-18 12:18:51','2017-04-18 12:20:30','127.0.0.1'),('23','8eead3cadffdb0885c6161c2d01efb56','1',1,'2017-04-18 13:16:45','2017-04-18 13:59:26','127.0.0.1'),('24','1e1406e298c8d6ada52dc96e31332c12','1',1,'2017-04-18 14:21:56','2017-04-18 14:29:26','127.0.0.1'),('25','194d35e2bb56d86047c66c9437a5c624','1',1,'2017-04-19 05:26:02','2017-04-19 06:16:26','127.0.0.1'),('26','829b1075dc30333ad133663a5c52d38f','1',1,'2017-04-19 06:54:56','2017-04-19 07:26:46','127.0.0.1'),('27','ece4304ed45f4d0362976afaee63001c','1',1,'2017-04-19 08:05:13','2017-04-19 09:06:23','127.0.0.1'),('28','eab9e656885b2f870d80ec9db4e4eeff','1',1,'2017-04-19 09:23:45','2017-04-19 09:27:30','127.0.0.1'),('29','7d9522a7171cf5d5ffd7aabc6176402f','1',1,'2017-04-19 10:01:56','2017-04-19 10:12:10','127.0.0.1'),('30','424aaec2c37f89af5c257271545737db','1',1,'2017-04-19 10:40:18','2017-04-19 10:40:41','127.0.0.1'),('31','4005a4a5f807a635b7c6025321a663e2','1',1,'2017-04-19 11:34:13','2017-04-19 11:56:03','127.0.0.1'),('32','fcc28101971a01bc9735a69d4d73acd5','1',1,'2017-04-19 12:27:07','2017-04-19 13:11:22','127.0.0.1'),('33','9495d4ead1d14601d9749d29222ec75f','1',1,'2017-04-19 13:30:21','2017-04-19 14:01:15','127.0.0.1'),('34','37fa2b33e05c443e98c22f74a5b4b50c','1',1,'2017-04-20 07:58:04','2017-04-20 07:59:00','127.0.0.1'),('35','c2b3efc9415a8bda18c1ea10cfc80189','1',1,'2017-04-20 08:16:01','2017-04-20 08:24:06','127.0.0.1'),('36','8fbdd3aed54e4ec7cde2bc773befe571','1',1,'2017-04-20 08:42:55','2017-04-20 08:43:21','127.0.0.1'),('37','f9bd364f8a0162443302340f52c43476','1',1,'2017-04-20 10:44:05','2017-04-20 10:44:49','127.0.0.1'),('38','25c6aaf786787218479478371c4ee3ad','1',1,'2017-04-20 11:24:24','2017-04-20 11:48:06','127.0.0.1'),('39','ac19325e00fda8c17a3140c6fd1dca6d','1',1,'2017-04-21 19:22:05','2017-04-21 19:36:19','127.0.0.1'),('40','7cd07e3d22574343f6f297a1ff5fbbef','1',1,'2017-04-23 05:15:50','2017-04-23 05:20:24','127.0.0.1');
/*!40000 ALTER TABLE `admin_user_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adminnotification_inbox`
--

DROP TABLE IF EXISTS `adminnotification_inbox`;
CREATE TABLE `adminnotification_inbox` (
  `notification_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Notification id',
  `severity` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Problem type',
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Create date',
  `title` varchar(255) NOT NULL COMMENT 'Title',
  `description` text COMMENT 'Description',
  `url` varchar(255) DEFAULT NULL COMMENT 'Url',
  `is_read` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Flag if notification read',
  `is_remove` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Flag if notification might be removed',
  PRIMARY KEY (`notification_id`),
  KEY `ADMINNOTIFICATION_INBOX_SEVERITY` (`severity`),
  KEY `ADMINNOTIFICATION_INBOX_IS_READ` (`is_read`),
  KEY `ADMINNOTIFICATION_INBOX_IS_REMOVE` (`is_remove`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Adminnotification Inbox';

--
-- Table structure for table `authorization_role`
--

DROP TABLE IF EXISTS `authorization_role`;
CREATE TABLE `authorization_role` (
  `role_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Role ID',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Parent Role ID',
  `tree_level` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Role Tree Level',
  `sort_order` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Role Sort Order',
  `role_type` varchar(1) NOT NULL DEFAULT '0' COMMENT 'Role Type',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'User ID',
  `user_type` varchar(16) DEFAULT NULL COMMENT 'User Type',
  `role_name` varchar(50) DEFAULT NULL COMMENT 'Role Name',
  PRIMARY KEY (`role_id`),
  KEY `AUTHORIZATION_ROLE_PARENT_ID_SORT_ORDER` (`parent_id`,`sort_order`),
  KEY `AUTHORIZATION_ROLE_TREE_LEVEL` (`tree_level`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Admin Role Table';

--
-- Dumping data for table `authorization_role`
--

LOCK TABLES `authorization_role` WRITE;
/*!40000 ALTER TABLE `authorization_role` DISABLE KEYS */;
INSERT INTO `authorization_role` VALUES ('1','0',1,1,'G','0','2','Administrators'),('2','1',2,0,'U','1','2','admin');
/*!40000 ALTER TABLE `authorization_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authorization_rule`
--

DROP TABLE IF EXISTS `authorization_rule`;
CREATE TABLE `authorization_rule` (
  `rule_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rule ID',
  `role_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Role ID',
  `resource_id` varchar(255) DEFAULT NULL COMMENT 'Resource ID',
  `privileges` varchar(20) DEFAULT NULL COMMENT 'Privileges',
  `permission` varchar(10) DEFAULT NULL COMMENT 'Permission',
  PRIMARY KEY (`rule_id`),
  KEY `AUTHORIZATION_RULE_RESOURCE_ID_ROLE_ID` (`resource_id`,`role_id`),
  KEY `AUTHORIZATION_RULE_ROLE_ID_RESOURCE_ID` (`role_id`,`resource_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Admin Rule Table';

--
-- Dumping data for table `authorization_rule`
--

LOCK TABLES `authorization_rule` WRITE;
/*!40000 ALTER TABLE `authorization_rule` DISABLE KEYS */;
INSERT INTO `authorization_rule` VALUES ('1','1','Magento_Backend::all',NULL,'allow');
/*!40000 ALTER TABLE `authorization_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
CREATE TABLE `cache` (
  `id` varchar(200) NOT NULL COMMENT 'Cache Id',
  `data` mediumblob COMMENT 'Cache Data',
  `create_time` int(11) DEFAULT NULL COMMENT 'Cache Creation Time',
  `update_time` int(11) DEFAULT NULL COMMENT 'Time of Cache Updating',
  `expire_time` int(11) DEFAULT NULL COMMENT 'Cache Expiration Time',
  PRIMARY KEY (`id`),
  KEY `CACHE_EXPIRE_TIME` (`expire_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Caches';

--
-- Table structure for table `cache_tag`
--

DROP TABLE IF EXISTS `cache_tag`;
CREATE TABLE `cache_tag` (
  `tag` varchar(100) NOT NULL COMMENT 'Tag',
  `cache_id` varchar(200) NOT NULL COMMENT 'Cache Id',
  PRIMARY KEY (`tag`,`cache_id`),
  KEY `CACHE_TAG_CACHE_ID` (`cache_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tag Caches';

--
-- Table structure for table `captcha_log`
--

DROP TABLE IF EXISTS `captcha_log`;
CREATE TABLE `captcha_log` (
  `type` varchar(32) NOT NULL COMMENT 'Type',
  `value` varchar(32) NOT NULL COMMENT 'Value',
  `count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Count',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Update Time',
  PRIMARY KEY (`type`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Count Login Attempts';

--
-- Table structure for table `catalog_category_entity`
--

DROP TABLE IF EXISTS `catalog_category_entity`;
CREATE TABLE `catalog_category_entity` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attriute Set ID',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Parent Category ID',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Creation Time',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Update Time',
  `path` varchar(255) NOT NULL COMMENT 'Tree Path',
  `position` int(11) NOT NULL COMMENT 'Position',
  `level` int(11) NOT NULL DEFAULT '0' COMMENT 'Tree Level',
  `children_count` int(11) NOT NULL COMMENT 'Child Count',
  PRIMARY KEY (`entity_id`),
  KEY `CATALOG_CATEGORY_ENTITY_LEVEL` (`level`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8 COMMENT='Catalog Category Table';

--
-- Dumping data for table `catalog_category_entity`
--

LOCK TABLES `catalog_category_entity` WRITE;
/*!40000 ALTER TABLE `catalog_category_entity` DISABLE KEYS */;
INSERT INTO `catalog_category_entity` VALUES ('1',3,'0','2017-04-13 06:50:10','2017-04-18 10:43:48','1','0','0','67'),('2',3,'1','2017-04-13 06:50:10','2017-04-18 10:43:48','1/2','1','1','66'),('3',3,'2','2017-04-13 06:58:26','2017-04-16 12:20:35','1/2/3','5','2','14'),('4',3,'2','2017-04-13 06:59:41','2017-04-16 12:20:35','1/2/4','7','2','6'),('5',3,'2','2017-04-13 07:01:40','2017-04-16 12:20:35','1/2/5','6','2','19'),('6',3,'27','2017-04-13 07:02:35','2017-04-16 12:20:06','1/2/27/6','1','3','0'),('7',3,'27','2017-04-13 07:03:43','2017-04-16 12:20:06','1/2/27/7','2','3','0'),('8',3,'27','2017-04-13 07:05:33','2017-04-16 12:20:06','1/2/27/8','3','3','0'),('9',3,'27','2017-04-13 07:07:16','2017-04-16 12:20:06','1/2/27/9','4','3','0'),('10',3,'27','2017-04-13 07:07:49','2017-04-16 12:20:06','1/2/27/10','5','3','0'),('11',3,'27','2017-04-13 07:08:14','2017-04-16 12:20:06','1/2/27/11','6','3','0'),('12',3,'27','2017-04-13 07:09:38','2017-04-16 12:20:06','1/2/27/12','7','3','0'),('13',3,'27','2017-04-13 07:11:10','2017-04-16 12:20:06','1/2/27/13','8','3','0'),('14',3,'2','2017-04-13 07:12:02','2017-04-16 12:20:35','1/2/14','1','2','8'),('15',3,'14','2017-04-13 07:14:37','2017-04-13 07:28:03','1/2/14/15','2','3','0'),('16',3,'14','2017-04-13 07:15:17','2017-04-13 07:28:03','1/2/14/16','3','3','0'),('17',3,'14','2017-04-13 07:15:51','2017-04-16 12:20:31','1/2/14/17','4','3','4'),('18',3,'17','2017-04-13 07:16:11','2017-04-16 12:20:31','1/2/14/17/18','1','4','0'),('19',3,'17','2017-04-13 07:16:22','2017-04-16 12:20:31','1/2/14/17/19','2','4','0'),('20',3,'17','2017-04-13 07:16:34','2017-04-16 12:20:31','1/2/14/17/20','3','4','0'),('21',3,'17','2017-04-13 07:16:48','2017-04-16 12:20:31','1/2/14/17/21','4','4','0'),('22',3,'2','2017-04-13 07:17:19','2017-04-16 12:20:31','1/2/22','3','2','0'),('23',3,'14','2017-04-13 07:17:30','2017-04-16 12:20:35','1/2/14/23','5','3','0'),('24',3,'2','2017-04-13 07:17:40','2017-04-16 12:20:35','1/2/24','4','2','0'),('25',3,'2','2017-04-13 07:17:50','2017-04-16 12:20:35','1/2/25','8','2','0'),('27',3,'2','2017-04-13 07:23:04','2017-04-16 12:20:06','1/2/27','2','2','8'),('28',3,'3','2017-04-13 09:04:06','2017-04-16 12:19:23','1/2/3/28','1','3','0'),('29',3,'3','2017-04-13 09:05:09','2017-04-16 12:19:23','1/2/3/29','2','3','0'),('30',3,'3','2017-04-13 09:06:36','2017-04-16 12:19:23','1/2/3/30','3','3','0'),('32',3,'3','2017-04-13 09:07:45','2017-04-16 12:19:23','1/2/3/32','4','3','0'),('33',3,'3','2017-04-13 09:08:01','2017-04-16 12:19:23','1/2/3/33','5','3','0'),('34',3,'3','2017-04-13 09:08:14','2017-04-16 12:19:23','1/2/3/34','6','3','0'),('35',3,'3','2017-04-13 09:08:27','2017-04-16 12:19:23','1/2/3/35','7','3','0'),('36',3,'3','2017-04-13 09:08:41','2017-04-16 12:19:23','1/2/3/36','8','3','0'),('37',3,'3','2017-04-13 09:08:55','2017-04-16 12:19:23','1/2/3/37','9','3','0'),('38',3,'3','2017-04-13 09:09:10','2017-04-16 12:19:23','1/2/3/38','10','3','0'),('39',3,'3','2017-04-13 09:09:21','2017-04-16 12:19:23','1/2/3/39','11','3','0'),('40',3,'3','2017-04-13 09:09:34','2017-04-16 12:19:23','1/2/3/40','12','3','0'),('41',3,'3','2017-04-13 09:09:48','2017-04-16 12:19:23','1/2/3/41','13','3','0'),('42',3,'3','2017-04-13 09:10:05','2017-04-16 12:19:23','1/2/3/42','14','3','0'),('43',3,'4','2017-04-13 09:10:28','2017-04-16 12:19:54','1/2/4/43','1','3','0'),('44',3,'4','2017-04-13 09:10:42','2017-04-16 12:19:54','1/2/4/44','2','3','0'),('45',3,'4','2017-04-13 09:10:57','2017-04-16 12:19:54','1/2/4/45','3','3','0'),('46',3,'4','2017-04-13 09:11:09','2017-04-16 12:19:54','1/2/4/46','4','3','0'),('47',3,'4','2017-04-13 09:11:24','2017-04-16 12:19:54','1/2/4/47','5','3','0'),('48',3,'4','2017-04-13 09:11:41','2017-04-16 12:19:54','1/2/4/48','6','3','0'),('49',3,'5','2017-04-13 09:12:03','2017-04-16 12:20:06','1/2/5/49','1','3','0'),('50',3,'5','2017-04-13 09:12:20','2017-04-16 12:20:06','1/2/5/50','2','3','0'),('51',3,'5','2017-04-13 09:12:33','2017-04-16 12:20:06','1/2/5/51','3','3','0'),('52',3,'5','2017-04-13 09:12:46','2017-04-16 12:20:06','1/2/5/52','4','3','0'),('53',3,'5','2017-04-13 09:12:59','2017-04-16 12:20:06','1/2/5/53','5','3','0'),('54',3,'5','2017-04-13 09:13:13','2017-04-16 12:20:06','1/2/5/54','6','3','0'),('55',3,'5','2017-04-13 09:13:29','2017-04-16 12:20:06','1/2/5/55','7','3','0'),('56',3,'5','2017-04-13 09:13:43','2017-04-16 12:20:06','1/2/5/56','8','3','0'),('57',3,'5','2017-04-13 09:13:57','2017-04-16 12:20:06','1/2/5/57','9','3','0'),('58',3,'5','2017-04-13 09:14:11','2017-04-16 12:20:06','1/2/5/58','10','3','0'),('59',3,'5','2017-04-13 09:14:24','2017-04-16 12:20:06','1/2/5/59','11','3','0'),('60',3,'5','2017-04-13 09:14:37','2017-04-16 12:20:06','1/2/5/60','12','3','0'),('61',3,'5','2017-04-13 09:14:50','2017-04-16 12:20:06','1/2/5/61','13','3','0'),('62',3,'5','2017-04-13 09:15:05','2017-04-16 12:20:06','1/2/5/62','14','3','0'),('63',3,'5','2017-04-13 09:15:18','2017-04-16 12:20:06','1/2/5/63','15','3','0'),('64',3,'5','2017-04-13 09:15:32','2017-04-16 12:20:06','1/2/5/64','16','3','0'),('65',3,'5','2017-04-13 09:15:46','2017-04-16 12:20:06','1/2/5/65','17','3','0'),('66',3,'5','2017-04-13 09:16:04','2017-04-16 12:20:06','1/2/5/66','18','3','0'),('67',3,'5','2017-04-13 09:16:19','2017-04-16 12:20:06','1/2/5/67','19','3','0'),('68',3,'2','2017-04-16 12:24:28','2017-04-16 12:24:28','1/2/68','9','2','0'),('69',3,'2','2017-04-18 10:43:34','2017-04-18 10:43:34','1/2/69','10','2','0'),('70',3,'2','2017-04-18 10:43:48','2017-04-18 10:43:48','1/2/70','11','2','0');
/*!40000 ALTER TABLE `catalog_category_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_category_entity_datetime`
--

DROP TABLE IF EXISTS `catalog_category_entity_datetime`;
CREATE TABLE `catalog_category_entity_datetime` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` datetime DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CATALOG_CATEGORY_ENTITY_DATETIME_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `CATALOG_CATEGORY_ENTITY_DATETIME_ENTITY_ID` (`entity_id`),
  KEY `CATALOG_CATEGORY_ENTITY_DATETIME_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CATALOG_CATEGORY_ENTITY_DATETIME_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Datetime Attribute Backend Table';

--
-- Table structure for table `catalog_category_entity_decimal`
--

DROP TABLE IF EXISTS `catalog_category_entity_decimal`;
CREATE TABLE `catalog_category_entity_decimal` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` decimal(12,4) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CATALOG_CATEGORY_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `CATALOG_CATEGORY_ENTITY_DECIMAL_ENTITY_ID` (`entity_id`),
  KEY `CATALOG_CATEGORY_ENTITY_DECIMAL_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CATALOG_CATEGORY_ENTITY_DECIMAL_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Decimal Attribute Backend Table';

--
-- Table structure for table `catalog_category_entity_int`
--

DROP TABLE IF EXISTS `catalog_category_entity_int`;
CREATE TABLE `catalog_category_entity_int` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` int(11) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CATALOG_CATEGORY_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `CATALOG_CATEGORY_ENTITY_INT_ENTITY_ID` (`entity_id`),
  KEY `CATALOG_CATEGORY_ENTITY_INT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CATALOG_CATEGORY_ENTITY_INT_STORE_ID` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=357 DEFAULT CHARSET=utf8 COMMENT='Catalog Category Integer Attribute Backend Table';

--
-- Dumping data for table `catalog_category_entity_int`
--

LOCK TABLES `catalog_category_entity_int` WRITE;
/*!40000 ALTER TABLE `catalog_category_entity_int` DISABLE KEYS */;
INSERT INTO `catalog_category_entity_int` VALUES ('1',69,0,'1','1'),('2',46,0,'2','1'),('3',69,0,'2','1'),('4',54,0,'2','1'),('5',70,0,'2','0'),('6',71,0,'2','0'),('7',46,0,'3','1'),('8',54,0,'3','0'),('9',69,0,'3','0'),('10',70,0,'3','0'),('11',71,0,'3','0'),('12',46,0,'4','1'),('13',54,0,'4','0'),('14',69,0,'4','0'),('15',70,0,'4','0'),('16',71,0,'4','0'),('17',46,0,'5','1'),('18',54,0,'5','1'),('19',69,0,'5','0'),('20',70,0,'5','0'),('21',71,0,'5','0'),('22',46,0,'6','1'),('23',54,0,'6','0'),('24',69,0,'6','0'),('25',70,0,'6','0'),('26',71,0,'6','0'),('27',46,0,'7','1'),('28',54,0,'7','0'),('29',69,0,'7','0'),('30',70,0,'7','0'),('31',71,0,'7','0'),('32',46,0,'8','1'),('33',54,0,'8','0'),('34',69,0,'8','1'),('35',70,0,'8','0'),('36',71,0,'8','0'),('37',46,0,'9','1'),('38',54,0,'9','1'),('39',69,0,'9','1'),('40',70,0,'9','0'),('41',71,0,'9','0'),('42',46,0,'10','1'),('43',54,0,'10','0'),('44',69,0,'10','1'),('45',70,0,'10','0'),('46',71,0,'10','0'),('47',46,0,'11','1'),('48',54,0,'11','0'),('49',69,0,'11','1'),('50',70,0,'11','0'),('51',71,0,'11','0'),('52',46,0,'12','0'),('53',54,0,'12','0'),('54',69,0,'12','0'),('55',70,0,'12','0'),('56',71,0,'12','0'),('57',46,0,'13','1'),('58',54,0,'13','0'),('59',69,0,'13','0'),('60',70,0,'13','0'),('61',71,0,'13','0'),('62',46,0,'14','1'),('63',54,0,'14','1'),('64',69,0,'14','1'),('65',70,0,'14','0'),('66',71,0,'14','0'),('67',46,0,'15','0'),('68',54,0,'15','1'),('69',69,0,'15','1'),('70',70,0,'15','0'),('71',71,0,'15','0'),('72',46,0,'16','1'),('73',54,0,'16','0'),('74',69,0,'16','1'),('75',70,0,'16','0'),('76',71,0,'16','0'),('77',46,0,'17','1'),('78',54,0,'17','1'),('79',69,0,'17','1'),('80',70,0,'17','0'),('81',71,0,'17','0'),('82',46,0,'18','1'),('83',54,0,'18','1'),('84',69,0,'18','1'),('85',70,0,'18','0'),('86',71,0,'18','0'),('87',46,0,'19','1'),('88',54,0,'19','1'),('89',69,0,'19','1'),('90',70,0,'19','0'),('91',71,0,'19','0'),('92',46,0,'20','1'),('93',54,0,'20','1'),('94',69,0,'20','1'),('95',70,0,'20','0'),('96',71,0,'20','0'),('97',46,0,'21','1'),('98',54,0,'21','1'),('99',69,0,'21','1'),('100',70,0,'21','0'),('101',71,0,'21','0'),('102',46,0,'22','1'),('103',54,0,'22','1'),('104',69,0,'22','1'),('105',70,0,'22','0'),('106',71,0,'22','0'),('107',46,0,'23','1'),('108',54,0,'23','1'),('109',69,0,'23','1'),('110',70,0,'23','0'),('111',71,0,'23','0'),('112',46,0,'24','1'),('113',54,0,'24','1'),('114',69,0,'24','1'),('115',70,0,'24','0'),('116',71,0,'24','0'),('117',46,0,'25','1'),('118',54,0,'25','1'),('119',69,0,'25','1'),('120',70,0,'25','0'),('121',71,0,'25','0'),('127',46,0,'27','1'),('128',54,0,'27','1'),('129',69,0,'27','1'),('130',70,0,'27','0'),('131',71,0,'27','0'),('132',46,0,'28','1'),('133',54,0,'28','1'),('134',69,0,'28','1'),('135',70,0,'28','0'),('136',71,0,'28','0'),('137',46,0,'29','1'),('138',54,0,'29','1'),('139',69,0,'29','0'),('140',70,0,'29','0'),('141',71,0,'29','0'),('142',46,0,'30','1'),('143',54,0,'30','1'),('144',69,0,'30','0'),('145',70,0,'30','0'),('146',71,0,'30','0'),('152',46,0,'32','1'),('153',54,0,'32','1'),('154',69,0,'32','0'),('155',70,0,'32','0'),('156',71,0,'32','0'),('157',46,0,'33','1'),('158',54,0,'33','1'),('159',69,0,'33','0'),('160',70,0,'33','0'),('161',71,0,'33','0'),('162',46,0,'34','1'),('163',54,0,'34','1'),('164',69,0,'34','0'),('165',70,0,'34','0'),('166',71,0,'34','0'),('167',46,0,'35','1'),('168',54,0,'35','1'),('169',69,0,'35','0'),('170',70,0,'35','0'),('171',71,0,'35','0'),('172',46,0,'36','1'),('173',54,0,'36','1'),('174',69,0,'36','0'),('175',70,0,'36','0'),('176',71,0,'36','0'),('177',46,0,'37','1'),('178',54,0,'37','1'),('179',69,0,'37','0'),('180',70,0,'37','0'),('181',71,0,'37','0'),('182',46,0,'38','1'),('183',54,0,'38','1'),('184',69,0,'38','0'),('185',70,0,'38','0'),('186',71,0,'38','0'),('187',46,0,'39','1'),('188',54,0,'39','1'),('189',69,0,'39','0'),('190',70,0,'39','0'),('191',71,0,'39','0'),('192',46,0,'40','1'),('193',54,0,'40','1'),('194',69,0,'40','0'),('195',70,0,'40','0'),('196',71,0,'40','0'),('197',46,0,'41','1'),('198',54,0,'41','1'),('199',69,0,'41','0'),('200',70,0,'41','0'),('201',71,0,'41','0'),('202',46,0,'42','1'),('203',54,0,'42','1'),('204',69,0,'42','0'),('205',70,0,'42','0'),('206',71,0,'42','0'),('207',46,0,'43','1'),('208',54,0,'43','1'),('209',69,0,'43','1'),('210',70,0,'43','0'),('211',71,0,'43','0'),('212',46,0,'44','1'),('213',54,0,'44','1'),('214',69,0,'44','1'),('215',70,0,'44','0'),('216',71,0,'44','0'),('217',46,0,'45','1'),('218',54,0,'45','1'),('219',69,0,'45','1'),('220',70,0,'45','0'),('221',71,0,'45','0'),('222',46,0,'46','1'),('223',54,0,'46','1'),('224',69,0,'46','1'),('225',70,0,'46','0'),('226',71,0,'46','0'),('227',46,0,'47','1'),('228',54,0,'47','1'),('229',69,0,'47','1'),('230',70,0,'47','0'),('231',71,0,'47','0'),('232',46,0,'48','1'),('233',54,0,'48','1'),('234',69,0,'48','1'),('235',70,0,'48','0'),('236',71,0,'48','0'),('237',46,0,'49','1'),('238',54,0,'49','1'),('239',69,0,'49','0'),('240',70,0,'49','0'),('241',71,0,'49','0'),('242',46,0,'50','1'),('243',54,0,'50','1'),('244',69,0,'50','0'),('245',70,0,'50','0'),('246',71,0,'50','0'),('247',46,0,'51','1'),('248',54,0,'51','1'),('249',69,0,'51','0'),('250',70,0,'51','0'),('251',71,0,'51','0'),('252',46,0,'52','1'),('253',54,0,'52','1'),('254',69,0,'52','0'),('255',70,0,'52','0'),('256',71,0,'52','0'),('257',46,0,'53','1'),('258',54,0,'53','1'),('259',69,0,'53','0'),('260',70,0,'53','0'),('261',71,0,'53','0'),('262',46,0,'54','1'),('263',54,0,'54','1'),('264',69,0,'54','0'),('265',70,0,'54','0'),('266',71,0,'54','0'),('267',46,0,'55','1'),('268',54,0,'55','1'),('269',69,0,'55','0'),('270',70,0,'55','0'),('271',71,0,'55','0'),('272',46,0,'56','1'),('273',54,0,'56','1'),('274',69,0,'56','0'),('275',70,0,'56','0'),('276',71,0,'56','0'),('277',46,0,'57','1'),('278',54,0,'57','1'),('279',69,0,'57','0'),('280',70,0,'57','0'),('281',71,0,'57','0'),('282',46,0,'58','1'),('283',54,0,'58','1'),('284',69,0,'58','0'),('285',70,0,'58','0'),('286',71,0,'58','0'),('287',46,0,'59','1'),('288',54,0,'59','1'),('289',69,0,'59','0'),('290',70,0,'59','0'),('291',71,0,'59','0'),('292',46,0,'60','1'),('293',54,0,'60','1'),('294',69,0,'60','0'),('295',70,0,'60','0'),('296',71,0,'60','0'),('297',46,0,'61','1'),('298',54,0,'61','1'),('299',69,0,'61','0'),('300',70,0,'61','0'),('301',71,0,'61','0'),('302',46,0,'62','1'),('303',54,0,'62','1'),('304',69,0,'62','0'),('305',70,0,'62','0'),('306',71,0,'62','0'),('307',46,0,'63','1'),('308',54,0,'63','1'),('309',69,0,'63','0'),('310',70,0,'63','0'),('311',71,0,'63','0'),('312',46,0,'64','1'),('313',54,0,'64','1'),('314',69,0,'64','0'),('315',70,0,'64','0'),('316',71,0,'64','0'),('317',46,0,'65','1'),('318',54,0,'65','1'),('319',69,0,'65','0'),('320',70,0,'65','0'),('321',71,0,'65','0'),('322',46,0,'66','1'),('323',54,0,'66','1'),('324',69,0,'66','0'),('325',70,0,'66','0'),('326',71,0,'66','0'),('327',46,0,'67','1'),('328',54,0,'67','1'),('329',69,0,'67','0'),('330',70,0,'67','0'),('331',71,0,'67','0'),('332',138,0,'2','1'),('333',139,0,'2','1'),('334',46,0,'68','1'),('335',54,0,'68','1'),('336',69,0,'68','1'),('337',70,0,'68','0'),('338',71,0,'68','0'),('339',138,0,'68','0'),('340',139,0,'68','0'),('341',138,0,'29','1'),('342',139,0,'29','1'),('343',46,0,'69','1'),('344',54,0,'69','1'),('345',69,0,'69','1'),('346',70,0,'69','0'),('347',71,0,'69','0'),('348',138,0,'69','0'),('349',139,0,'69','0'),('350',46,0,'70','1'),('351',54,0,'70','1'),('352',69,0,'70','1'),('353',70,0,'70','0'),('354',71,0,'70','0'),('355',138,0,'70','0'),('356',139,0,'70','0');
/*!40000 ALTER TABLE `catalog_category_entity_int` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_category_entity_text`
--

DROP TABLE IF EXISTS `catalog_category_entity_text`;
CREATE TABLE `catalog_category_entity_text` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` text COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CATALOG_CATEGORY_ENTITY_TEXT_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `CATALOG_CATEGORY_ENTITY_TEXT_ENTITY_ID` (`entity_id`),
  KEY `CATALOG_CATEGORY_ENTITY_TEXT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CATALOG_CATEGORY_ENTITY_TEXT_STORE_ID` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COMMENT='Catalog Category Text Attribute Backend Table';

--
-- Dumping data for table `catalog_category_entity_text`
--

LOCK TABLES `catalog_category_entity_text` WRITE;
/*!40000 ALTER TABLE `catalog_category_entity_text` DISABLE KEYS */;
INSERT INTO `catalog_category_entity_text` VALUES ('1',50,0,'2','Shop Online'),('2',51,0,'2','Shop Online'),('3',47,0,'3','<p>Fresh Flowers</p>'),('4',50,0,'3','Fresh Roses'),('5',51,0,'3','Fresh Roses'),('6',67,0,'3','name'),('7',47,0,'4','<p>Just Orchids</p>'),('8',50,0,'4','Just Orchids'),('9',51,0,'4','Just Orchids'),('10',47,0,'5','<p>Long Life Roses</p>'),('11',50,0,'5','Long Life Roses'),('12',51,0,'5','Long Life Roses'),('13',67,0,'5','name'),('14',47,0,'6','<p>Festive Collections</p>'),('15',50,0,'6','Festive Collections'),('16',51,0,'6','Festive Collections'),('17',50,0,'7','Delivery'),('18',51,0,'7','Delivery'),('19',50,0,'8','UAE'),('20',51,0,'8','UAE'),('21',50,0,'9','Bahrain'),('22',51,0,'9','Bahrain'),('23',47,0,'10','<p>Qatar</p>'),('24',50,0,'10','Qatar'),('25',51,0,'10','Qatar'),('26',47,0,'11','<p>Oman</p>'),('27',50,0,'11','Oman'),('28',51,0,'11','Oman'),('29',47,0,'12','<p>Valentine\'s Day Collections</p>'),('30',50,0,'12','Valentine\'s Day Collections'),('31',51,0,'12','Valentine\'s Day Collections'),('32',47,0,'13','<p>March Special Collections</p>'),('33',50,0,'13','March Special Collections'),('34',51,0,'13','March Special Collections'),('35',47,0,'14','THE MAISON'),('36',50,0,'14','THE MAISON'),('37',51,0,'14','THE MAISON'),('38',47,0,'16','<p>Savoir Faire</p>');
/*!40000 ALTER TABLE `catalog_category_entity_text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_category_entity_varchar`
--

DROP TABLE IF EXISTS `catalog_category_entity_varchar`;
CREATE TABLE `catalog_category_entity_varchar` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CATALOG_CATEGORY_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `CATALOG_CATEGORY_ENTITY_VARCHAR_ENTITY_ID` (`entity_id`),
  KEY `CATALOG_CATEGORY_ENTITY_VARCHAR_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CATALOG_CATEGORY_ENTITY_VARCHAR_STORE_ID` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=432 DEFAULT CHARSET=utf8 COMMENT='Catalog Category Varchar Attribute Backend Table';

--
-- Dumping data for table `catalog_category_entity_varchar`
--

LOCK TABLES `catalog_category_entity_varchar` WRITE;
/*!40000 ALTER TABLE `catalog_category_entity_varchar` DISABLE KEYS */;
INSERT INTO `catalog_category_entity_varchar` VALUES ('1',45,0,'1','Root Catalog'),('2',45,0,'2','Default Category'),('3',52,0,'2','PRODUCTS'),('4',49,0,'2','Shop Online'),('5',117,0,'2','shop-online'),('6',45,0,'3','Fresh Flowers'),('7',49,0,'3','Fresh Roses'),('8',52,0,'3','PRODUCTS'),('9',68,0,'3','name'),('10',117,0,'3','fresh-roses'),('11',118,0,'3','fresh-roses'),('12',45,0,'4','Just Orchids'),('13',49,0,'4','Just Orchids'),('14',52,0,'4','PRODUCTS'),('15',68,0,'4','price'),('16',117,0,'4','just-orchids'),('17',118,0,'4','just-orchids'),('18',45,0,'5','Long Life Roses'),('19',49,0,'5','Long Life Roses'),('20',52,0,'5','PRODUCTS'),('21',68,0,'5','name'),('22',117,0,'5','long-life-roses'),('23',118,0,'5','long-life-roses'),('24',45,0,'6','Festive Collections'),('25',49,0,'6','Festive Collections'),('26',52,0,'6','PRODUCTS'),('27',68,0,'6','price'),('28',117,0,'6','festive-collections'),('29',118,0,'6','shop-online/festive-collections'),('30',45,0,'7','Delivery'),('31',49,0,'7','Delivery'),('32',52,0,'7','PRODUCTS'),('33',68,0,'7','price'),('34',117,0,'7','delivery'),('35',118,0,'7','shop-online/delivery'),('36',45,0,'8','UAE'),('37',48,0,'8','uae-flag-maison.jpg'),('38',49,0,'8','UAE'),('39',52,0,'8','PRODUCTS'),('40',68,0,'8','price'),('41',117,0,'8','united-arab-emirates'),('42',118,0,'8','shop-online/united-arab-emirates'),('43',45,0,'9','Bahrain'),('44',48,0,'9','bahrain-flag-maison.jpg'),('45',49,0,'9','Bahrain'),('46',52,0,'9','PRODUCTS'),('47',68,0,'9','position'),('48',117,0,'9','bahrain'),('49',118,0,'9','shop-online/bahrain'),('50',45,0,'10','Qatar'),('51',48,0,'10','Qatar-country-flag.jpg'),('52',49,0,'10','Qatar'),('53',52,0,'10','PRODUCTS'),('54',117,0,'10','qatar'),('55',118,0,'10','shop-online/qatar'),('56',45,0,'11','Oman'),('57',48,0,'11','oman-flag-maison_1.jpg'),('58',49,0,'11','Oman'),('59',52,0,'11','PRODUCTS'),('60',117,0,'11','oman'),('61',118,0,'11','shop-online/oman'),('62',45,0,'12','Valentine\'s Day Collections'),('63',48,0,'12','Valentine_s_Day_Collections.jpg'),('64',49,0,'12','Valentine\'s Day Collections'),('65',52,0,'12','PRODUCTS'),('66',117,0,'12','valentines-day-collections'),('67',118,0,'12','shop-online/valentines-day-collections'),('68',45,0,'13','March Special Collections'),('69',48,0,'13','March_Special_Collections.jpg'),('70',49,0,'13','March Special Collections'),('71',52,0,'13','PRODUCTS'),('72',117,0,'13','march-special-collections'),('73',118,0,'13','shop-online/march-special-collections'),('74',45,0,'14','The Maison'),('75',49,0,'14','THE MAISON'),('76',52,0,'14','PAGE'),('77',117,0,'14','about-the-maison-des-brand'),('78',45,0,'15','About Maison'),('79',52,0,'15','PRODUCTS'),('80',117,0,'15','about-the-mdf'),('81',118,0,'15','about-the-maison-des-brand/about-the-mdf'),('82',45,0,'16','Savoir Faire'),('83',52,0,'16','PRODUCTS'),('84',117,0,'16','the-maison-savoir-faire'),('85',118,0,'16','about-the-maison-des-brand/the-maison-savoir-faire'),('86',45,0,'17','Services'),('87',52,0,'17','PRODUCTS'),('88',117,0,'17','services'),('89',45,0,'18','Events'),('90',52,0,'18','PRODUCTS'),('91',117,0,'18','events'),('92',118,0,'18','about-the-maison-des-brand/services/events'),('93',45,0,'19','Weddings'),('94',52,0,'19','PRODUCTS'),('95',117,0,'19','weddings'),('96',118,0,'19','about-the-maison-des-brand/services/weddings'),('97',45,0,'20','Corporate'),('98',52,0,'20','PRODUCTS'),('99',117,0,'20','corporate'),('100',118,0,'20','about-the-maison-des-brand/services/corporate'),('101',45,0,'21','Home Lifestyle Collection'),('102',52,0,'21','PRODUCTS'),('103',117,0,'21','home-lifestyle-collection'),('104',118,0,'21','about-the-maison-des-brand/services/home-lifestyle-collection'),('105',45,0,'22','Maison Des Fleurs Collections'),('106',52,0,'22','PRODUCTS'),('107',117,0,'22','the-maison-gallery'),('108',45,0,'23','News'),('109',52,0,'23','PRODUCTS'),('110',117,0,'23','news'),('111',45,0,'24','Location'),('112',52,0,'24','PRODUCTS'),('113',117,0,'24','location'),('114',45,0,'25','Contact Us'),('115',52,0,'25','PRODUCTS'),('116',117,0,'25','contact-us'),('120',45,0,'27','Shop Online'),('121',52,0,'27','PRODUCTS'),('122',117,0,'27','shop-online'),('123',118,0,'27','shop-online'),('160',118,0,'14','about-the-maison-des-brand'),('166',118,0,'17','about-the-maison-des-brand/services'),('171',118,0,'22','the-maison-gallery'),('172',118,0,'23','about-the-maison-des-brand/news'),('173',118,0,'24','location'),('174',118,0,'25','contact-us'),('175',45,0,'28','Fresh Flower Boxes'),('176',52,0,'28','PRODUCTS'),('177',117,0,'28','fresh-flower-boxes'),('178',118,0,'28','fresh-roses/fresh-flower-boxes'),('179',45,0,'29','Fresh Flowers in Small Black Square Box'),('181',52,0,'29','PRODUCTS'),('182',117,0,'29','fresh-flowers-in-small-black-square-box'),('183',118,0,'29','fresh-roses/fresh-flowers-in-small-black-square-box'),('184',45,0,'30','Fresh Flowers in Black Square Box'),('185',48,0,'30','Fresh_Flowers_in_Black_Square_Box.jpg'),('186',52,0,'30','PRODUCTS'),('187',117,0,'30','fresh-flowers-in-black-square-box'),('188',118,0,'30','fresh-roses/fresh-flowers-in-black-square-box'),('193',45,0,'32','Fresh Flowers in Black Round Box'),('194',52,0,'32','PRODUCTS'),('195',117,0,'32','fresh-flowers-in-black-round-box'),('196',118,0,'32','fresh-roses/fresh-flowers-in-black-round-box'),('197',45,0,'33','Fresh Flowers in Black Rectangular Box'),('198',52,0,'33','PRODUCTS'),('199',117,0,'33','fresh-flowers-in-black-rectangular-box'),('200',118,0,'33','fresh-roses/fresh-flowers-in-black-rectangular-box'),('201',45,0,'34','Fresh Flowers in Black Small Rectangular Box'),('202',52,0,'34','PRODUCTS'),('203',117,0,'34','fresh-flowers-in-black-small-rectangular-box'),('204',118,0,'34','fresh-roses/fresh-flowers-in-black-small-rectangular-box'),('205',45,0,'35','Fresh Roses in White Square Box'),('206',52,0,'35','PRODUCTS'),('207',117,0,'35','fresh-roses-in-white-square-box'),('208',118,0,'35','fresh-roses/fresh-roses-in-white-square-box'),('209',45,0,'36','Fresh Roses in White Round Box'),('210',52,0,'36','PRODUCTS'),('211',117,0,'36','fresh-roses-in-white-round-box'),('212',118,0,'36','fresh-roses/fresh-roses-in-white-round-box'),('213',45,0,'37','Acrylic Mini Square Box'),('214',52,0,'37','PRODUCTS'),('215',117,0,'37','acrylic-mini-square-box'),('216',118,0,'37','fresh-roses/acrylic-mini-square-box'),('217',45,0,'38','Acrylic Small Square Box'),('218',52,0,'38','PRODUCTS'),('219',117,0,'38','acrylic-small-square-box'),('220',118,0,'38','fresh-roses/acrylic-small-square-box'),('221',45,0,'39','Fresh Roses in Acrylic Square Box'),('222',52,0,'39','PRODUCTS'),('223',117,0,'39','fresh-roses-in-acrylic-square-box'),('224',118,0,'39','fresh-roses/fresh-roses-in-acrylic-square-box'),('225',45,0,'40','Acrylic Square Box Big'),('226',52,0,'40','PRODUCTS'),('227',117,0,'40','acrylic-square-box-big'),('228',118,0,'40','fresh-roses/acrylic-square-box-big'),('229',45,0,'41','Fresh Roses in Acrylic Round Box'),('230',52,0,'41','PRODUCTS'),('231',117,0,'41','fresh-roses-in-acrylic-round-box'),('232',118,0,'41','fresh-roses/fresh-roses-in-acrylic-round-box'),('233',45,0,'42','Fresh Roses in Acrylic Rectangular Box'),('234',52,0,'42','PRODUCTS'),('235',117,0,'42','fresh-roses-in-acrylic-rectangular-box'),('236',118,0,'42','fresh-roses/fresh-roses-in-acrylic-rectangular-box'),('237',45,0,'43','Black Small Square Box'),('238',52,0,'43','PRODUCTS'),('239',117,0,'43','black-small-square-box'),('240',118,0,'43','just-orchids/black-small-square-box'),('241',45,0,'44','Black Square Box'),('242',52,0,'44','PRODUCTS'),('243',117,0,'44','black-square-box'),('244',118,0,'44','just-orchids/black-square-box'),('245',45,0,'45','Black Round Box'),('246',52,0,'45','PRODUCTS'),('247',117,0,'45','black-round-box'),('248',118,0,'45','just-orchids/black-round-box'),('249',45,0,'46','Fresh Orchids in Black Box'),('250',52,0,'46','PRODUCTS'),('251',117,0,'46','fresh-orchids-in-black-box'),('252',118,0,'46','just-orchids/fresh-orchids-in-black-box'),('253',45,0,'47','White Square Box'),('254',52,0,'47','PRODUCTS'),('255',117,0,'47','white-square-box'),('256',118,0,'47','just-orchids/white-square-box'),('257',45,0,'48','White Round Box'),('258',52,0,'48','PRODUCTS'),('259',117,0,'48','white-round-box'),('260',118,0,'48','just-orchids/white-round-box'),('261',45,0,'49','Long Life Roses in Black Small Box'),('262',52,0,'49','PRODUCTS'),('263',117,0,'49','long-life-roses-in-black-small-box'),('264',118,0,'49','long-life-roses/long-life-roses-in-black-small-box'),('265',45,0,'50','Long Life Roses in Black Square Box'),('266',52,0,'50','PRODUCTS'),('267',117,0,'50','long-life-roses-in-black-square-box'),('268',118,0,'50','long-life-roses/long-life-roses-in-black-square-box'),('269',45,0,'51','Long Life Roses in Black Round Box'),('270',52,0,'51','PRODUCTS'),('271',117,0,'51','long-life-roses-in-black-round-box'),('272',118,0,'51','long-life-roses/long-life-roses-in-black-round-box'),('273',45,0,'52','Black Big Rectangular Box'),('274',52,0,'52','PRODUCTS'),('275',117,0,'52','black-big-rectangular-box'),('276',118,0,'52','long-life-roses/black-big-rectangular-box'),('277',45,0,'53','Black Small Rectangular Box'),('278',52,0,'53','PRODUCTS'),('279',117,0,'53','black-small-rectangular-box'),('280',118,0,'53','long-life-roses/black-small-rectangular-box'),('281',45,0,'54','Long Life Roses in White Square Box'),('282',52,0,'54','PRODUCTS'),('283',117,0,'54','long-life-roses-in-white-square-box'),('284',118,0,'54','long-life-roses/long-life-roses-in-white-square-box'),('285',45,0,'55','Long Life Roses in White Round Box'),('286',52,0,'55','PRODUCTS'),('287',117,0,'55','long-life-roses-in-white-round-box'),('288',118,0,'55','long-life-roses/long-life-roses-in-white-round-box'),('289',45,0,'56','Acrylic Mini Square Box'),('290',52,0,'56','PRODUCTS'),('291',117,0,'56','acrylic-mini-square-box'),('292',118,0,'56','long-life-roses/acrylic-mini-square-box'),('293',45,0,'57','Long Life Roses in Acrylic Small Square Box'),('294',52,0,'57','PRODUCTS'),('295',117,0,'57','long-life-roses-in-acrylic-small-square-box'),('296',118,0,'57','long-life-roses/long-life-roses-in-acrylic-small-square-box'),('297',45,0,'58','Acrylic Square Box Big'),('298',52,0,'58','PRODUCTS'),('299',117,0,'58','acrylic-square-box-big'),('300',118,0,'58','long-life-roses/acrylic-square-box-big'),('301',45,0,'59','Long Life Roses in Acrylic Square Box'),('302',52,0,'59','PRODUCTS'),('303',117,0,'59','long-life-roses-in-acrylic-square-box'),('304',118,0,'59','long-life-roses/long-life-roses-in-acrylic-square-box'),('305',45,0,'60','Long Life Roses in Acrylic Round Box'),('306',52,0,'60','PRODUCTS'),('307',117,0,'60','long-life-roses-in-acrylic-round-box'),('308',118,0,'60','long-life-roses/long-life-roses-in-acrylic-round-box'),('309',45,0,'61','Long Life Roses in Acrylic Box'),('310',52,0,'61','PRODUCTS'),('311',117,0,'61','long-life-roses-in-acrylic-box'),('312',118,0,'61','long-life-roses/long-life-roses-in-acrylic-box'),('313',45,0,'62','Acrylic Black Smallest Square Box  '),('314',52,0,'62','PRODUCTS'),('315',117,0,'62','acrylic-black-smallest-square-box'),('316',118,0,'62','long-life-roses/acrylic-black-smallest-square-box'),('317',45,0,'63','Acrylic  Small Square Box '),('318',52,0,'63','PRODUCTS'),('319',117,0,'63','acrylic-small-square-box'),('320',118,0,'63','long-life-roses/acrylic-small-square-box'),('321',45,0,'64','Acrylic  Square Box'),('322',52,0,'64','PRODUCTS'),('323',117,0,'64','acrylic-square-box'),('324',118,0,'64','long-life-roses/acrylic-square-box'),('325',45,0,'65','Acrylic  Round Box'),('326',52,0,'65','PRODUCTS'),('327',117,0,'65','acrylic-round-box'),('328',118,0,'65','long-life-roses/acrylic-round-box'),('329',45,0,'66','Acrylic Large Rectangular Box'),('330',52,0,'66','PRODUCTS'),('331',117,0,'66','acrylic-large-rectangular-box'),('332',118,0,'66','long-life-roses/acrylic-large-rectangular-box'),('333',45,0,'67','Acrylic Large Square Box'),('334',52,0,'67','PRODUCTS'),('335',117,0,'67','acrylic-large-square-box'),('336',118,0,'67','long-life-roses/acrylic-large-square-box'),('420',45,0,'68','Silk Flowers'),('421',52,0,'68','PRODUCTS'),('422',117,0,'68','silk-flowers'),('423',118,0,'68','silk-flowers'),('424',45,0,'69','About Us'),('425',52,0,'69','PRODUCTS'),('426',117,0,'69','about-us'),('427',118,0,'69','about-us'),('428',45,0,'70','Shop'),('429',52,0,'70','PRODUCTS'),('430',117,0,'70','shop'),('431',118,0,'70','shop');
/*!40000 ALTER TABLE `catalog_category_entity_varchar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_category_product`
--

DROP TABLE IF EXISTS `catalog_category_product`;
CREATE TABLE `catalog_category_product` (
  `entity_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `position` int(11) NOT NULL DEFAULT '0' COMMENT 'Position',
  PRIMARY KEY (`entity_id`,`category_id`,`product_id`),
  UNIQUE KEY `CATALOG_CATEGORY_PRODUCT_CATEGORY_ID_PRODUCT_ID` (`category_id`,`product_id`),
  KEY `CATALOG_CATEGORY_PRODUCT_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COMMENT='Catalog Product To Category Linkage Table';

--
-- Dumping data for table `catalog_category_product`
--

LOCK TABLES `catalog_category_product` WRITE;
/*!40000 ALTER TABLE `catalog_category_product` DISABLE KEYS */;
INSERT INTO `catalog_category_product` VALUES ('1','3','1','1'),('2','27','1','1'),('3','3','3','1'),('4','27','3','1'),('5','29','3','1'),('6','3','4','1'),('7','27','4','1'),('8','29','4','1'),('9','3','5','1'),('10','27','5','1'),('11','29','5','1'),('12','3','6','1'),('13','27','6','1'),('14','29','6','1'),('15','3','7','1'),('16','27','7','1'),('17','29','7','1'),('18','3','8','1'),('19','27','8','1'),('20','29','8','1'),('21','3','9','1'),('22','27','9','1'),('23','29','9','1'),('24','3','10','1'),('25','27','10','1'),('26','29','10','1'),('27','3','11','1'),('28','27','11','1'),('29','29','11','1');
/*!40000 ALTER TABLE `catalog_category_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_category_product_index`
--

DROP TABLE IF EXISTS `catalog_category_product_index`;
CREATE TABLE `catalog_category_product_index` (
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `position` int(11) DEFAULT NULL COMMENT 'Position',
  `is_parent` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Parent',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `visibility` smallint(5) unsigned NOT NULL COMMENT 'Visibility',
  PRIMARY KEY (`category_id`,`product_id`,`store_id`),
  KEY `CAT_CTGR_PRD_IDX_PRD_ID_STORE_ID_CTGR_ID_VISIBILITY` (`product_id`,`store_id`,`category_id`,`visibility`),
  KEY `CAT_CTGR_PRD_IDX_STORE_ID_CTGR_ID_VISIBILITY_IS_PARENT_POSITION` (`store_id`,`category_id`,`visibility`,`is_parent`,`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Product Index';

--
-- Dumping data for table `catalog_category_product_index`
--

LOCK TABLES `catalog_category_product_index` WRITE;
/*!40000 ALTER TABLE `catalog_category_product_index` DISABLE KEYS */;
INSERT INTO `catalog_category_product_index` VALUES ('2','2','0',0,1,4),('2','1','10001',0,1,4),('2','3','10001',0,1,4),('2','4','10001',0,1,4),('2','5','10001',0,1,4),('2','6','10001',0,1,4),('2','7','10001',0,1,4),('2','8','10001',0,1,4),('2','9','10001',0,1,4),('2','10','10001',0,1,4),('2','11','10001',0,1,4),('3','1','1',1,1,4),('3','3','1',1,1,4),('3','4','1',1,1,4),('3','5','1',1,1,4),('3','6','1',1,1,4),('3','7','1',1,1,4),('3','8','1',1,1,4),('3','9','1',1,1,4),('3','10','1',1,1,4),('3','11','1',1,1,4),('27','1','1',1,1,4),('27','3','1',1,1,4),('27','4','1',1,1,4),('27','5','1',1,1,4),('27','6','1',1,1,4),('27','7','1',1,1,4),('27','8','1',1,1,4),('27','9','1',1,1,4),('27','10','1',1,1,4),('27','11','1',1,1,4),('29','3','1',1,1,4),('29','4','1',1,1,4),('29','5','1',1,1,4),('29','6','1',1,1,4),('29','7','1',1,1,4),('29','8','1',1,1,4),('29','9','1',1,1,4),('29','10','1',1,1,4),('29','11','1',1,1,4),('2','2','0',0,2,4),('2','1','10001',0,2,4),('2','3','10001',0,2,4),('2','4','10001',0,2,4),('2','5','10001',0,2,4),('2','6','10001',0,2,4),('2','7','10001',0,2,4),('2','8','10001',0,2,4),('2','9','10001',0,2,4),('2','10','10001',0,2,4),('2','11','10001',0,2,4),('3','1','1',1,2,4),('3','3','1',1,2,4),('3','4','1',1,2,4),('3','5','1',1,2,4),('3','6','1',1,2,4),('3','7','1',1,2,4),('3','8','1',1,2,4),('3','9','1',1,2,4),('3','10','1',1,2,4),('3','11','1',1,2,4),('27','1','1',1,2,4),('27','3','1',1,2,4),('27','4','1',1,2,4),('27','5','1',1,2,4),('27','6','1',1,2,4),('27','7','1',1,2,4),('27','8','1',1,2,4),('27','9','1',1,2,4),('27','10','1',1,2,4),('27','11','1',1,2,4),('29','3','1',1,2,4),('29','4','1',1,2,4),('29','5','1',1,2,4),('29','6','1',1,2,4),('29','7','1',1,2,4),('29','8','1',1,2,4),('29','9','1',1,2,4),('29','10','1',1,2,4),('29','11','1',1,2,4);
/*!40000 ALTER TABLE `catalog_category_product_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_category_product_index_tmp`
--

DROP TABLE IF EXISTS `catalog_category_product_index_tmp`;
CREATE TABLE `catalog_category_product_index_tmp` (
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `position` int(11) NOT NULL DEFAULT '0' COMMENT 'Position',
  `is_parent` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Parent',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `visibility` smallint(5) unsigned NOT NULL COMMENT 'Visibility',
  KEY `CAT_CTGR_PRD_IDX_TMP_PRD_ID_CTGR_ID_STORE_ID` (`product_id`,`category_id`,`store_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Category Product Indexer Temp Table';

--
-- Table structure for table `catalog_compare_item`
--

DROP TABLE IF EXISTS `catalog_compare_item`;
CREATE TABLE `catalog_compare_item` (
  `catalog_compare_item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Compare Item ID',
  `visitor_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Visitor ID',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store ID',
  PRIMARY KEY (`catalog_compare_item_id`),
  KEY `CATALOG_COMPARE_ITEM_PRODUCT_ID` (`product_id`),
  KEY `CATALOG_COMPARE_ITEM_VISITOR_ID_PRODUCT_ID` (`visitor_id`,`product_id`),
  KEY `CATALOG_COMPARE_ITEM_CUSTOMER_ID_PRODUCT_ID` (`customer_id`,`product_id`),
  KEY `CATALOG_COMPARE_ITEM_STORE_ID` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='Catalog Compare Table';

--
-- Dumping data for table `catalog_compare_item`
--

LOCK TABLES `catalog_compare_item` WRITE;
/*!40000 ALTER TABLE `catalog_compare_item` DISABLE KEYS */;
INSERT INTO `catalog_compare_item` VALUES ('1','15',NULL,'11',1),('2','15',NULL,'1',1),('3','58',NULL,'11',1),('4','58',NULL,'3',1);
/*!40000 ALTER TABLE `catalog_compare_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_eav_attribute`
--

DROP TABLE IF EXISTS `catalog_eav_attribute`;
CREATE TABLE `catalog_eav_attribute` (
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute ID',
  `frontend_input_renderer` varchar(255) DEFAULT NULL COMMENT 'Frontend Input Renderer',
  `is_global` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Global',
  `is_visible` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Visible',
  `is_searchable` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Searchable',
  `is_filterable` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Filterable',
  `is_comparable` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Comparable',
  `is_visible_on_front` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Visible On Front',
  `is_html_allowed_on_front` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is HTML Allowed On Front',
  `is_used_for_price_rules` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Used For Price Rules',
  `is_filterable_in_search` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Filterable In Search',
  `used_in_product_listing` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Used In Product Listing',
  `used_for_sort_by` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Used For Sorting',
  `apply_to` varchar(255) DEFAULT NULL COMMENT 'Apply To',
  `is_visible_in_advanced_search` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Visible In Advanced Search',
  `position` int(11) NOT NULL DEFAULT '0' COMMENT 'Position',
  `is_wysiwyg_enabled` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is WYSIWYG Enabled',
  `is_used_for_promo_rules` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Used For Promo Rules',
  `is_required_in_admin_store` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Required In Admin Store',
  `is_used_in_grid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Used in Grid',
  `is_visible_in_grid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Visible in Grid',
  `is_filterable_in_grid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Filterable in Grid',
  `search_weight` float NOT NULL DEFAULT '1' COMMENT 'Search Weight',
  `additional_data` text COMMENT 'Additional swatch attributes data',
  PRIMARY KEY (`attribute_id`),
  KEY `CATALOG_EAV_ATTRIBUTE_USED_FOR_SORT_BY` (`used_for_sort_by`),
  KEY `CATALOG_EAV_ATTRIBUTE_USED_IN_PRODUCT_LISTING` (`used_in_product_listing`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog EAV Attribute Table';

--
-- Dumping data for table `catalog_eav_attribute`
--

LOCK TABLES `catalog_eav_attribute` WRITE;
/*!40000 ALTER TABLE `catalog_eav_attribute` DISABLE KEYS */;
INSERT INTO `catalog_eav_attribute` VALUES (45,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(46,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(47,NULL,0,1,0,0,0,0,1,0,0,0,0,NULL,0,'0',1,0,0,0,0,0,'1',NULL),(48,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(49,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(50,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(51,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(52,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(53,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(54,NULL,1,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(55,NULL,1,0,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(56,NULL,1,0,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(57,NULL,1,0,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(58,NULL,1,0,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(59,NULL,1,0,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(60,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(61,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(62,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(63,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(64,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(65,NULL,1,0,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(66,NULL,1,0,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(67,'Magento\\Catalog\\Block\\Adminhtml\\Category\\Helper\\Sortby\\Available',0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(68,'Magento\\Catalog\\Block\\Adminhtml\\Category\\Helper\\Sortby\\DefaultSortby',0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(69,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(70,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(71,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(72,'Magento\\Catalog\\Block\\Adminhtml\\Category\\Helper\\Pricestep',0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(73,NULL,0,1,1,0,0,0,0,0,0,1,1,NULL,1,'0',0,0,0,0,0,0,'5',NULL),(74,NULL,1,1,1,0,1,0,0,0,0,0,0,NULL,1,'0',0,0,0,0,0,0,'6',NULL),(75,NULL,0,1,1,0,1,0,1,0,0,0,0,NULL,1,'0',1,0,0,0,0,0,'1',NULL),(76,NULL,0,1,1,0,1,0,1,0,0,1,0,NULL,1,'0',1,0,0,1,0,0,'1',NULL),(77,NULL,1,1,1,1,0,0,0,0,0,1,1,'simple,virtual,bundle,downloadable,configurable',1,'0',0,0,0,0,0,0,'1',NULL),(78,NULL,1,1,0,0,0,0,0,0,0,1,0,'simple,virtual,bundle,downloadable,configurable',0,'0',0,0,0,1,0,1,'1',NULL),(79,NULL,2,1,0,0,0,0,0,0,0,1,0,'simple,virtual,bundle,downloadable,configurable',0,'0',0,0,0,1,0,0,'1',NULL),(80,NULL,2,1,0,0,0,0,0,0,0,1,0,'simple,virtual,bundle,downloadable,configurable',0,'0',0,0,0,1,0,0,'1',NULL),(81,NULL,1,1,0,0,0,0,0,0,0,0,0,'simple,virtual,downloadable',0,'0',0,0,0,1,0,1,'1',NULL),(82,'Magento\\Catalog\\Block\\Adminhtml\\Product\\Helper\\Form\\Weight',1,1,0,0,0,0,0,0,0,0,0,'simple,virtual,bundle,downloadable,configurable',0,'0',0,0,0,1,0,1,'1',NULL),(83,NULL,1,1,1,1,1,0,0,0,0,0,0,'simple',1,'0',0,0,0,1,0,1,'1',NULL),(84,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,1,0,1,'1',NULL),(85,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,1,0,1,'1',NULL),(86,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,1,0,1,'1',NULL),(87,NULL,0,1,0,0,0,0,0,0,0,1,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(88,NULL,0,1,0,0,0,0,0,0,0,1,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(89,NULL,0,1,0,0,0,0,0,0,0,1,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(90,NULL,1,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(91,NULL,1,0,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(92,NULL,2,1,0,0,0,0,0,0,0,0,0,'simple,virtual,bundle,downloadable,configurable',0,'0',0,0,0,0,0,0,'1',NULL),(93,NULL,1,1,1,1,1,0,0,0,0,0,0,NULL,1,'0',0,0,0,1,0,1,'1',NULL),(94,NULL,2,1,0,0,0,0,0,0,0,1,0,NULL,0,'0',0,0,0,1,0,0,'1',NULL),(95,NULL,2,1,0,0,0,0,0,0,0,1,0,NULL,0,'0',0,0,0,1,0,0,'1',NULL),(96,NULL,1,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(97,'Magento\\Framework\\Data\\Form\\Element\\Hidden',2,1,1,0,0,0,0,0,0,1,0,NULL,0,'0',0,0,1,0,0,0,'1',NULL),(98,NULL,1,0,0,0,0,0,0,0,0,0,0,'simple,virtual,bundle,downloadable,configurable',0,'0',0,0,0,0,0,0,'1',NULL),(99,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,1,0,0,0,'1',NULL),(100,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,1,0,1,'1',NULL),(101,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,1,0,0,'1',NULL),(102,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,1,0,0,'1',NULL),(103,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(104,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,1,0,0,'1',NULL),(105,'Magento\\Catalog\\Block\\Adminhtml\\Product\\Helper\\Form\\Category',1,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(106,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(107,NULL,1,0,0,0,0,0,0,0,0,1,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(108,NULL,1,0,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(109,NULL,0,0,0,0,0,0,0,0,0,1,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(110,NULL,0,0,0,0,0,0,0,0,0,1,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(111,NULL,0,0,0,0,0,0,0,0,0,1,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(112,NULL,1,0,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(113,NULL,1,0,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(114,NULL,2,1,0,0,0,0,0,0,0,0,0,'simple,bundle,grouped,configurable',0,'0',0,0,0,1,0,1,'1',NULL),(115,'Magento\\CatalogInventory\\Block\\Adminhtml\\Form\\Field\\Stock',1,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(116,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,1,0,0,'1',NULL),(117,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(118,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(119,NULL,0,1,0,0,0,0,0,0,0,1,0,NULL,0,'0',0,0,0,1,0,1,'1',NULL),(120,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(121,'Magento\\Msrp\\Block\\Adminhtml\\Product\\Helper\\Form\\Type',1,1,0,0,0,0,0,0,0,1,0,'simple,virtual,downloadable,bundle,configurable',0,'0',0,0,0,1,0,1,'1',NULL),(122,'Magento\\Msrp\\Block\\Adminhtml\\Product\\Helper\\Form\\Type\\Price',2,1,0,0,0,0,0,0,0,1,0,'simple,virtual,downloadable,bundle,configurable',0,'0',0,0,0,0,0,0,'1',NULL),(123,NULL,1,1,0,0,0,0,0,0,0,1,0,'bundle',0,'0',0,0,0,0,0,0,'1',NULL),(124,NULL,1,1,0,0,0,0,0,0,0,0,0,'bundle',0,'0',0,0,0,0,0,0,'1',NULL),(125,NULL,1,1,0,0,0,0,0,0,0,1,0,'bundle',0,'0',0,0,0,0,0,0,'1',NULL),(126,NULL,1,1,0,0,0,0,0,0,0,1,0,'bundle',0,'0',0,0,0,0,0,0,'1',NULL),(127,NULL,1,1,0,0,0,0,0,0,0,1,0,'bundle',0,'0',0,0,0,0,0,0,'1',NULL),(128,NULL,1,0,0,0,0,0,0,0,0,1,0,'downloadable',0,'0',0,0,0,0,0,0,'1',NULL),(129,NULL,0,0,0,0,0,0,0,0,0,0,0,'downloadable',0,'0',0,0,0,0,0,0,'1',NULL),(130,NULL,0,0,0,0,0,0,0,0,0,0,0,'downloadable',0,'0',0,0,0,0,0,0,'1',NULL),(131,NULL,1,0,0,0,0,0,0,0,0,1,0,'downloadable',0,'0',0,0,0,0,0,0,'1',NULL),(132,NULL,0,1,0,0,0,0,0,0,0,1,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(133,NULL,2,1,1,0,0,0,0,0,0,1,0,'simple,virtual,bundle,downloadable,configurable',0,'0',0,0,0,1,0,1,'1',NULL),(134,'Magento\\GiftMessage\\Block\\Adminhtml\\Product\\Helper\\Form\\Config',1,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,1,0,0,'1',NULL),(135,NULL,0,1,0,0,0,0,0,0,0,1,0,'simple,virtual,configurable',0,'0',0,0,0,1,0,1,'1',NULL),(136,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(137,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(138,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(139,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(140,NULL,1,1,0,0,0,0,0,0,0,0,0,'simple,configurable,bundle,virtual,downloadable',0,'0',0,0,0,0,0,1,'1',NULL),(141,NULL,0,1,0,0,0,0,0,0,0,1,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL);
/*!40000 ALTER TABLE `catalog_eav_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_product_bundle_option`
--

DROP TABLE IF EXISTS `catalog_product_bundle_option`;
CREATE TABLE `catalog_product_bundle_option` (
  `option_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `required` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Required',
  `position` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Position',
  `type` varchar(255) DEFAULT NULL COMMENT 'Type',
  PRIMARY KEY (`option_id`),
  KEY `CATALOG_PRODUCT_BUNDLE_OPTION_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Option';

--
-- Table structure for table `catalog_product_bundle_option_value`
--

DROP TABLE IF EXISTS `catalog_product_bundle_option_value`;
CREATE TABLE `catalog_product_bundle_option_value` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `option_id` int(10) unsigned NOT NULL COMMENT 'Option Id',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CATALOG_PRODUCT_BUNDLE_OPTION_VALUE_OPTION_ID_STORE_ID` (`option_id`,`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Option Value';

--
-- Table structure for table `catalog_product_bundle_price_index`
--

DROP TABLE IF EXISTS `catalog_product_bundle_price_index`;
CREATE TABLE `catalog_product_bundle_price_index` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  `min_price` decimal(12,4) NOT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) NOT NULL COMMENT 'Max Price',
  PRIMARY KEY (`entity_id`,`website_id`,`customer_group_id`),
  KEY `CATALOG_PRODUCT_BUNDLE_PRICE_INDEX_WEBSITE_ID` (`website_id`),
  KEY `CATALOG_PRODUCT_BUNDLE_PRICE_INDEX_CUSTOMER_GROUP_ID` (`customer_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Price Index';

--
-- Table structure for table `catalog_product_bundle_selection`
--

DROP TABLE IF EXISTS `catalog_product_bundle_selection`;
CREATE TABLE `catalog_product_bundle_selection` (
  `selection_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Selection Id',
  `option_id` int(10) unsigned NOT NULL COMMENT 'Option Id',
  `parent_product_id` int(10) unsigned NOT NULL COMMENT 'Parent Product Id',
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  `position` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Position',
  `is_default` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Default',
  `selection_price_type` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Selection Price Type',
  `selection_price_value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Selection Price Value',
  `selection_qty` decimal(12,4) DEFAULT NULL COMMENT 'Selection Qty',
  `selection_can_change_qty` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Selection Can Change Qty',
  PRIMARY KEY (`selection_id`),
  KEY `CATALOG_PRODUCT_BUNDLE_SELECTION_OPTION_ID` (`option_id`),
  KEY `CATALOG_PRODUCT_BUNDLE_SELECTION_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Selection';

--
-- Table structure for table `catalog_product_bundle_selection_price`
--

DROP TABLE IF EXISTS `catalog_product_bundle_selection_price`;
CREATE TABLE `catalog_product_bundle_selection_price` (
  `selection_id` int(10) unsigned NOT NULL COMMENT 'Selection Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `selection_price_type` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Selection Price Type',
  `selection_price_value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Selection Price Value',
  PRIMARY KEY (`selection_id`,`website_id`),
  KEY `CATALOG_PRODUCT_BUNDLE_SELECTION_PRICE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Selection Price';

--
-- Table structure for table `catalog_product_bundle_stock_index`
--

DROP TABLE IF EXISTS `catalog_product_bundle_stock_index`;
CREATE TABLE `catalog_product_bundle_stock_index` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `stock_id` smallint(5) unsigned NOT NULL COMMENT 'Stock Id',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option Id',
  `stock_status` smallint(6) DEFAULT '0' COMMENT 'Stock Status',
  PRIMARY KEY (`entity_id`,`website_id`,`stock_id`,`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Stock Index';

--
-- Table structure for table `catalog_product_entity`
--

DROP TABLE IF EXISTS `catalog_product_entity`;
CREATE TABLE `catalog_product_entity` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Set ID',
  `type_id` varchar(32) NOT NULL DEFAULT 'simple' COMMENT 'Type ID',
  `sku` varchar(64) DEFAULT NULL COMMENT 'SKU',
  `has_options` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Has Options',
  `required_options` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Required Options',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Creation Time',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Update Time',
  PRIMARY KEY (`entity_id`),
  KEY `CATALOG_PRODUCT_ENTITY_ATTRIBUTE_SET_ID` (`attribute_set_id`),
  KEY `CATALOG_PRODUCT_ENTITY_SKU` (`sku`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='Catalog Product Table';

--
-- Dumping data for table `catalog_product_entity`
--

LOCK TABLES `catalog_product_entity` WRITE;
/*!40000 ALTER TABLE `catalog_product_entity` DISABLE KEYS */;
INSERT INTO `catalog_product_entity` VALUES ('1',4,'simple','Ref 315',0,0,'2017-04-13 07:46:46','2017-04-13 07:46:46'),('2',4,'simple','Ref 498',0,0,'2017-04-13 08:53:35','2017-04-13 08:53:35'),('3',4,'simple','Ref 140',0,0,'2017-04-13 09:21:02','2017-04-13 09:21:02'),('4',4,'simple','Ref 139',0,0,'2017-04-13 09:22:23','2017-04-13 09:22:23'),('5',4,'simple','Ref 136',0,0,'2017-04-13 09:23:38','2017-04-13 09:23:38'),('6',4,'simple','Ref 135',0,0,'2017-04-13 09:24:50','2017-04-13 09:24:50'),('7',4,'simple','Ref 134',0,0,'2017-04-13 09:26:13','2017-04-13 09:26:13'),('8',4,'simple','Ref 133',0,0,'2017-04-13 09:28:12','2017-04-13 09:28:12'),('9',4,'simple','Fushia roses in mdf black small square box',0,0,'2017-04-13 09:28:57','2017-04-13 09:28:57'),('10',4,'simple','Ref 131',0,0,'2017-04-13 09:29:51','2017-04-13 09:29:51'),('11',4,'simple','Ref 130',0,0,'2017-04-13 09:30:47','2017-04-13 09:30:47');
/*!40000 ALTER TABLE `catalog_product_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_product_entity_datetime`
--

DROP TABLE IF EXISTS `catalog_product_entity_datetime`;
CREATE TABLE `catalog_product_entity_datetime` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` datetime DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CATALOG_PRODUCT_ENTITY_DATETIME_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `CATALOG_PRODUCT_ENTITY_DATETIME_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CATALOG_PRODUCT_ENTITY_DATETIME_STORE_ID` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COMMENT='Catalog Product Datetime Attribute Backend Table';

--
-- Dumping data for table `catalog_product_entity_datetime`
--

LOCK TABLES `catalog_product_entity_datetime` WRITE;
/*!40000 ALTER TABLE `catalog_product_entity_datetime` DISABLE KEYS */;
INSERT INTO `catalog_product_entity_datetime` VALUES ('1',94,0,'1','2017-04-16 00:00:00'),('2',95,0,'1','2017-04-20 00:00:00'),('3',94,0,'2','2017-04-15 00:00:00'),('4',95,0,'2','2017-04-17 00:00:00'),('5',94,0,'3','2017-04-15 00:00:00'),('6',95,0,'3','2017-04-18 00:00:00'),('7',94,0,'11','2017-04-15 00:00:00'),('8',95,0,'11','2017-04-18 00:00:00'),('9',94,0,'4','2017-04-15 00:00:00'),('10',95,0,'4','2017-04-18 00:00:00'),('11',94,0,'5','2017-04-15 00:00:00'),('12',95,0,'5','2017-04-18 00:00:00'),('13',94,0,'6','2017-04-15 00:00:00'),('14',95,0,'6','2017-04-18 00:00:00'),('15',94,0,'7','2017-04-15 00:00:00'),('16',95,0,'7','2017-04-18 00:00:00'),('17',94,0,'9','2017-04-15 00:00:00'),('18',95,0,'9','2017-04-19 00:00:00'),('19',94,0,'10','2017-04-14 00:00:00'),('20',95,0,'10','2017-04-19 00:00:00'),('21',79,0,'11','2017-04-15 00:00:00'),('22',80,0,'11','2017-04-17 00:00:00'),('23',101,0,'11','2017-04-16 20:57:24'),('24',79,0,'1','2017-04-15 00:00:00'),('25',80,0,'1','2017-04-17 00:00:00'),('26',101,0,'1','2017-04-16 20:58:31'),('27',79,0,'3','2017-04-15 00:00:00'),('28',80,0,'3','2017-04-17 00:00:00'),('29',101,0,'3','2017-04-16 21:00:52');
/*!40000 ALTER TABLE `catalog_product_entity_datetime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_product_entity_decimal`
--

DROP TABLE IF EXISTS `catalog_product_entity_decimal`;
CREATE TABLE `catalog_product_entity_decimal` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` decimal(12,4) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CATALOG_PRODUCT_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `CATALOG_PRODUCT_ENTITY_DECIMAL_STORE_ID` (`store_id`),
  KEY `CATALOG_PRODUCT_ENTITY_DECIMAL_ATTRIBUTE_ID` (`attribute_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COMMENT='Catalog Product Decimal Attribute Backend Table';

--
-- Dumping data for table `catalog_product_entity_decimal`
--

LOCK TABLES `catalog_product_entity_decimal` WRITE;
/*!40000 ALTER TABLE `catalog_product_entity_decimal` DISABLE KEYS */;
INSERT INTO `catalog_product_entity_decimal` VALUES ('1',77,0,'1','5400.0000'),('2',82,0,'1','1.0000'),('3',77,0,'2','4130.0000'),('4',82,0,'2','1.0000'),('5',77,0,'3','350.0000'),('6',82,0,'3','1.0000'),('7',77,0,'4','380.0000'),('8',82,0,'4','1.0000'),('9',77,0,'5','350.0000'),('10',82,0,'5','1.0000'),('11',77,0,'6','380.0000'),('12',82,0,'6','1.0000'),('13',77,0,'7','350.0000'),('14',82,0,'7','1.0000'),('15',77,0,'8','380.0000'),('16',82,0,'8','1.0000'),('17',77,0,'9','350.0000'),('18',82,0,'9','1.0000'),('19',77,0,'10','380.0000'),('20',82,0,'10','1.0000'),('21',77,0,'11','350.0000'),('22',82,0,'11','1.0000'),('23',78,0,'11','349.0000'),('24',78,0,'1','5349.0000'),('25',78,0,'3','349.0000');
/*!40000 ALTER TABLE `catalog_product_entity_decimal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_product_entity_gallery`
--

DROP TABLE IF EXISTS `catalog_product_entity_gallery`;
CREATE TABLE `catalog_product_entity_gallery` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `position` int(11) NOT NULL DEFAULT '0' COMMENT 'Position',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CATALOG_PRODUCT_ENTITY_GALLERY_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `CATALOG_PRODUCT_ENTITY_GALLERY_ENTITY_ID` (`entity_id`),
  KEY `CATALOG_PRODUCT_ENTITY_GALLERY_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CATALOG_PRODUCT_ENTITY_GALLERY_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Gallery Attribute Backend Table';

--
-- Table structure for table `catalog_product_entity_int`
--

DROP TABLE IF EXISTS `catalog_product_entity_int`;
CREATE TABLE `catalog_product_entity_int` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` int(11) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CATALOG_PRODUCT_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `CATALOG_PRODUCT_ENTITY_INT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CATALOG_PRODUCT_ENTITY_INT_STORE_ID` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8 COMMENT='Catalog Product Integer Attribute Backend Table';

--
-- Dumping data for table `catalog_product_entity_int`
--

LOCK TABLES `catalog_product_entity_int` WRITE;
/*!40000 ALTER TABLE `catalog_product_entity_int` DISABLE KEYS */;
INSERT INTO `catalog_product_entity_int` VALUES ('1',97,0,'1','1'),('2',99,0,'1','4'),('3',115,0,'1','1'),('4',133,0,'1','0'),('5',93,0,'1','9'),('6',93,0,'2','15'),('7',97,0,'2','1'),('8',99,0,'2','4'),('9',115,0,'2','1'),('10',133,0,'2','0'),('11',93,0,'3','6'),('12',97,0,'3','1'),('13',99,0,'3','4'),('14',115,0,'3','1'),('15',133,0,'3','0'),('16',93,0,'4','6'),('17',97,0,'4','1'),('18',99,0,'4','4'),('19',115,0,'4','1'),('20',133,0,'4','0'),('21',93,0,'5','14'),('22',97,0,'5','1'),('23',99,0,'5','4'),('24',115,0,'5','1'),('25',133,0,'5','0'),('26',93,0,'6','13'),('27',97,0,'6','1'),('28',99,0,'6','4'),('29',115,0,'6','1'),('30',133,0,'6','0'),('31',93,0,'7','12'),('32',97,0,'7','1'),('33',99,0,'7','4'),('34',115,0,'7','1'),('35',133,0,'7','0'),('36',93,0,'8','12'),('37',97,0,'8','1'),('38',99,0,'8','4'),('39',115,0,'8','1'),('40',133,0,'8','0'),('41',93,0,'9','15'),('42',97,0,'9','1'),('43',99,0,'9','4'),('44',115,0,'9','1'),('45',133,0,'9','0'),('46',93,0,'10','15'),('47',97,0,'10','1'),('48',99,0,'10','4'),('49',115,0,'10','1'),('50',133,0,'10','0'),('51',93,0,'11','7'),('52',97,0,'11','1'),('53',99,0,'11','4'),('54',115,0,'11','1'),('55',133,0,'11','0'),('56',135,0,'1','1'),('57',135,0,'2','1'),('58',135,0,'3','1'),('59',135,0,'11','1'),('60',135,0,'4','1'),('61',135,0,'5','1'),('62',135,0,'6','1'),('63',135,0,'7','1'),('64',135,0,'9','1'),('65',135,0,'10','1');
/*!40000 ALTER TABLE `catalog_product_entity_int` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_product_entity_media_gallery`
--

DROP TABLE IF EXISTS `catalog_product_entity_media_gallery`;
CREATE TABLE `catalog_product_entity_media_gallery` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  `media_type` varchar(32) NOT NULL DEFAULT 'image' COMMENT 'Media entry type',
  `disabled` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Visibility status',
  PRIMARY KEY (`value_id`),
  KEY `CATALOG_PRODUCT_ENTITY_MEDIA_GALLERY_ATTRIBUTE_ID` (`attribute_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Catalog Product Media Gallery Attribute Backend Table';

--
-- Dumping data for table `catalog_product_entity_media_gallery`
--

LOCK TABLES `catalog_product_entity_media_gallery` WRITE;
/*!40000 ALTER TABLE `catalog_product_entity_media_gallery` DISABLE KEYS */;
INSERT INTO `catalog_product_entity_media_gallery` VALUES ('1',90,'/r/e/ref130-2.jpg','image',0),('2',90,'/r/e/ref130-3.jpg','image',0),('3',90,'/r/e/ref130.jpg','image',0);
/*!40000 ALTER TABLE `catalog_product_entity_media_gallery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_product_entity_media_gallery_value`
--

DROP TABLE IF EXISTS `catalog_product_entity_media_gallery_value`;
CREATE TABLE `catalog_product_entity_media_gallery_value` (
  `value_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Value ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `label` varchar(255) DEFAULT NULL COMMENT 'Label',
  `position` int(10) unsigned DEFAULT NULL COMMENT 'Position',
  `disabled` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Disabled',
  `record_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Record Id',
  PRIMARY KEY (`record_id`),
  KEY `CATALOG_PRODUCT_ENTITY_MEDIA_GALLERY_VALUE_STORE_ID` (`store_id`),
  KEY `CATALOG_PRODUCT_ENTITY_MEDIA_GALLERY_VALUE_ENTITY_ID` (`entity_id`),
  KEY `CATALOG_PRODUCT_ENTITY_MEDIA_GALLERY_VALUE_VALUE_ID` (`value_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='Catalog Product Media Gallery Attribute Value Table';

--
-- Dumping data for table `catalog_product_entity_media_gallery_value`
--

LOCK TABLES `catalog_product_entity_media_gallery_value` WRITE;
/*!40000 ALTER TABLE `catalog_product_entity_media_gallery_value` DISABLE KEYS */;
INSERT INTO `catalog_product_entity_media_gallery_value` VALUES ('1',0,'11',NULL,'1',0,'7'),('2',0,'11',NULL,'2',0,'8'),('3',0,'11',NULL,'3',0,'9');
/*!40000 ALTER TABLE `catalog_product_entity_media_gallery_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_product_entity_media_gallery_value_to_entity`
--

DROP TABLE IF EXISTS `catalog_product_entity_media_gallery_value_to_entity`;
CREATE TABLE `catalog_product_entity_media_gallery_value_to_entity` (
  `value_id` int(10) unsigned NOT NULL COMMENT 'Value media Entry ID',
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Product entity ID',
  UNIQUE KEY `CAT_PRD_ENTT_MDA_GLR_VAL_TO_ENTT_VAL_ID_ENTT_ID` (`value_id`,`entity_id`),
  KEY `CAT_PRD_ENTT_MDA_GLR_VAL_TO_ENTT_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` (`entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Link Media value to Product entity table';

--
-- Dumping data for table `catalog_product_entity_media_gallery_value_to_entity`
--

LOCK TABLES `catalog_product_entity_media_gallery_value_to_entity` WRITE;
/*!40000 ALTER TABLE `catalog_product_entity_media_gallery_value_to_entity` DISABLE KEYS */;
INSERT INTO `catalog_product_entity_media_gallery_value_to_entity` VALUES ('1','11'),('2','11'),('3','11');
/*!40000 ALTER TABLE `catalog_product_entity_media_gallery_value_to_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_product_entity_media_gallery_value_video`
--

DROP TABLE IF EXISTS `catalog_product_entity_media_gallery_value_video`;
CREATE TABLE `catalog_product_entity_media_gallery_value_video` (
  `value_id` int(10) unsigned NOT NULL COMMENT 'Media Entity ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `provider` varchar(32) DEFAULT NULL COMMENT 'Video provider ID',
  `url` text COMMENT 'Video URL',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  `description` text COMMENT 'Page Meta Description',
  `metadata` text COMMENT 'Video meta data',
  UNIQUE KEY `CAT_PRD_ENTT_MDA_GLR_VAL_VIDEO_VAL_ID_STORE_ID` (`value_id`,`store_id`),
  KEY `CAT_PRD_ENTT_MDA_GLR_VAL_VIDEO_STORE_ID_STORE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Video Table';

--
-- Table structure for table `catalog_product_entity_text`
--

DROP TABLE IF EXISTS `catalog_product_entity_text`;
CREATE TABLE `catalog_product_entity_text` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` text COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CATALOG_PRODUCT_ENTITY_TEXT_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `CATALOG_PRODUCT_ENTITY_TEXT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CATALOG_PRODUCT_ENTITY_TEXT_STORE_ID` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='Catalog Product Text Attribute Backend Table';

--
-- Dumping data for table `catalog_product_entity_text`
--

LOCK TABLES `catalog_product_entity_text` WRITE;
/*!40000 ALTER TABLE `catalog_product_entity_text` DISABLE KEYS */;
INSERT INTO `catalog_product_entity_text` VALUES ('1',85,0,'1','114 orange roses in acrylic clear large rectangular box'),('2',85,0,'2','36 long life fushia roses in acrylic clear small square box'),('3',85,0,'3','White roses in mdf black small square box'),('4',85,0,'4','1 white orchid bloom and white roses in mdf black small square box'),('5',85,0,'5','Cream roses in mdf black small square box'),('6',85,0,'6','1 white orchid bloom and cream roses in mdf black small square box'),('7',85,0,'7','Purple roses in mdf black small square box'),('8',85,0,'8','1 white orchid bloom and purple roses in mdf black small square box'),('9',85,0,'9','Fushia roses in mdf black small square box'),('10',85,0,'10','1 white orchid bloom and fuchsia roses in mdf black small square box'),('11',85,0,'11','Yellow roses in mdf black small square box');
/*!40000 ALTER TABLE `catalog_product_entity_text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_product_entity_tier_price`
--

DROP TABLE IF EXISTS `catalog_product_entity_tier_price`;
CREATE TABLE `catalog_product_entity_tier_price` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `all_groups` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Applicable To All Customer Groups',
  `customer_group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Group ID',
  `qty` decimal(12,4) NOT NULL DEFAULT '1.0000' COMMENT 'QTY',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_E8AB433B9ACB00343ABB312AD2FAB087` (`entity_id`,`all_groups`,`customer_group_id`,`qty`,`website_id`),
  KEY `CATALOG_PRODUCT_ENTITY_TIER_PRICE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `CATALOG_PRODUCT_ENTITY_TIER_PRICE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Catalog Product Tier Price Attribute Backend Table';

--
-- Dumping data for table `catalog_product_entity_tier_price`
--

LOCK TABLES `catalog_product_entity_tier_price` WRITE;
/*!40000 ALTER TABLE `catalog_product_entity_tier_price` DISABLE KEYS */;
INSERT INTO `catalog_product_entity_tier_price` VALUES ('1','11',1,0,'10.0000','349.0000',0);
/*!40000 ALTER TABLE `catalog_product_entity_tier_price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_product_entity_varchar`
--

DROP TABLE IF EXISTS `catalog_product_entity_varchar`;
CREATE TABLE `catalog_product_entity_varchar` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CATALOG_PRODUCT_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `CATALOG_PRODUCT_ENTITY_VARCHAR_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CATALOG_PRODUCT_ENTITY_VARCHAR_STORE_ID` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8 COMMENT='Catalog Product Varchar Attribute Backend Table';

--
-- Dumping data for table `catalog_product_entity_varchar`
--

LOCK TABLES `catalog_product_entity_varchar` WRITE;
/*!40000 ALTER TABLE `catalog_product_entity_varchar` DISABLE KEYS */;
INSERT INTO `catalog_product_entity_varchar` VALUES ('1',73,0,'1','114 orange roses in acrylic clear large rectangular box'),('2',84,0,'1','114 orange roses in acrylic clear large rectangular box'),('3',86,0,'1','114 orange roses in acrylic clear large rectangular box '),('4',106,0,'1','container2'),('5',119,0,'1','114-orange-roses-in-acrylic-clear-large-rectangular-box'),('6',134,0,'1','2'),('7',73,0,'2','36 long life fushia roses in acrylic clear small square box'),('8',84,0,'2','36 long life fushia roses in acrylic clear small square box'),('9',86,0,'2','36 long life fushia roses in acrylic clear small square box '),('10',106,0,'2','container2'),('11',119,0,'2','36-long-life-fushia-roses-in-acrylic-clear-small-square-box'),('12',134,0,'2','2'),('13',73,0,'3','White roses in mdf black small square box'),('14',84,0,'3','White roses in mdf black small square box'),('15',86,0,'3','White roses in mdf black small square box '),('16',106,0,'3','container2'),('17',119,0,'3','white-roses-in-mdf-black-small-square-box'),('18',134,0,'3','2'),('19',73,0,'4','1 white orchid bloom and white roses in mdf black small square box'),('20',84,0,'4','1 white orchid bloom and white roses in mdf black small square box'),('21',86,0,'4','1 white orchid bloom and white roses in mdf black small square box '),('22',106,0,'4','container2'),('23',119,0,'4','1-white-orchid-bloom-and-white-roses-in-mdf-black-small-square-box'),('24',134,0,'4','2'),('25',73,0,'5','Cream roses in mdf black small square box'),('26',84,0,'5','Cream roses in mdf black small square box'),('27',86,0,'5','Cream roses in mdf black small square box '),('28',106,0,'5','container2'),('29',119,0,'5','cream-roses-in-mdf-black-small-square-box'),('30',134,0,'5','2'),('31',73,0,'6','1 white orchid bloom and cream roses in mdf black small square box'),('32',84,0,'6','1 white orchid bloom and cream roses in mdf black small square box'),('33',86,0,'6','1 white orchid bloom and cream roses in mdf black small square box '),('34',106,0,'6','container2'),('35',119,0,'6','1-white-orchid-bloom-and-cream-roses-in-mdf-black-small-square-box'),('36',134,0,'6','2'),('37',73,0,'7','Purple roses in mdf black small square box'),('38',84,0,'7','Purple roses in mdf black small square box'),('39',86,0,'7','Purple roses in mdf black small square box '),('40',106,0,'7','container2'),('41',119,0,'7','purple-roses-in-mdf-black-small-square-box'),('42',134,0,'7','2'),('43',73,0,'8','1 white orchid bloom and purple roses in mdf black small square box'),('44',84,0,'8','1 white orchid bloom and purple roses in mdf black small square box'),('45',86,0,'8','1 white orchid bloom and purple roses in mdf black small square box '),('46',106,0,'8','container2'),('47',119,0,'8','1-white-orchid-bloom-and-purple-roses-in-mdf-black-small-square-box'),('48',134,0,'8','2'),('49',73,0,'9','Fushia roses in mdf black small square box'),('50',84,0,'9','Fushia roses in mdf black small square box'),('51',86,0,'9','Fushia roses in mdf black small square box '),('52',106,0,'9','container2'),('53',119,0,'9','fushia-roses-in-mdf-black-small-square-box'),('54',134,0,'9','2'),('55',73,0,'10','1 white orchid bloom and fuchsia roses in mdf black small square box'),('56',84,0,'10','1 white orchid bloom and fuchsia roses in mdf black small square box'),('57',86,0,'10','1 white orchid bloom and fuchsia roses in mdf black small square box '),('58',106,0,'10','container2'),('59',119,0,'10','1-white-orchid-bloom-and-fuchsia-roses-in-mdf-black-small-square-box'),('60',134,0,'10','2'),('61',73,0,'11','Yellow roses in mdf black small square box'),('62',84,0,'11','Yellow roses in mdf black small square box'),('63',86,0,'11','Yellow roses in mdf black small square box '),('64',106,0,'11','container2'),('65',119,0,'11','yellow-roses-in-mdf-black-small-square-box'),('66',134,0,'11','2'),('67',87,0,'11','/r/e/ref130-2.jpg'),('68',88,0,'11','/r/e/ref130-2.jpg'),('69',89,0,'11','/r/e/ref130-2.jpg'),('70',132,0,'11','/r/e/ref130-2.jpg'),('71',140,0,'1','1'),('72',140,0,'2','1'),('73',140,0,'3','1'),('74',140,0,'11','1'),('79',140,0,'4','1'),('80',140,0,'5','1'),('81',140,0,'6','1'),('82',140,0,'7','1'),('83',140,0,'9','1'),('84',140,0,'10','1');
/*!40000 ALTER TABLE `catalog_product_entity_varchar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_product_index_eav`
--

DROP TABLE IF EXISTS `catalog_product_index_eav`;
CREATE TABLE `catalog_product_index_eav` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `value` int(10) unsigned NOT NULL COMMENT 'Value',
  PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`),
  KEY `CATALOG_PRODUCT_INDEX_EAV_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CATALOG_PRODUCT_INDEX_EAV_STORE_ID` (`store_id`),
  KEY `CATALOG_PRODUCT_INDEX_EAV_VALUE` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Index Table';

--
-- Dumping data for table `catalog_product_index_eav`
--

LOCK TABLES `catalog_product_index_eav` WRITE;
/*!40000 ALTER TABLE `catalog_product_index_eav` DISABLE KEYS */;
INSERT INTO `catalog_product_index_eav` VALUES ('1',93,1,'9'),('1',93,2,'9'),('2',93,1,'15'),('2',93,2,'15'),('3',93,1,'6'),('3',93,2,'6'),('4',93,1,'6'),('4',93,2,'6'),('5',93,1,'14'),('5',93,2,'14'),('6',93,1,'13'),('6',93,2,'13'),('7',93,1,'12'),('7',93,2,'12'),('8',93,1,'12'),('8',93,2,'12'),('9',93,1,'15'),('9',93,2,'15'),('10',93,1,'15'),('10',93,2,'15'),('11',93,1,'7'),('11',93,2,'7');
/*!40000 ALTER TABLE `catalog_product_index_eav` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_product_index_eav_decimal`
--

DROP TABLE IF EXISTS `catalog_product_index_eav_decimal`;
CREATE TABLE `catalog_product_index_eav_decimal` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `value` decimal(12,4) NOT NULL COMMENT 'Value',
  PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`),
  KEY `CATALOG_PRODUCT_INDEX_EAV_DECIMAL_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CATALOG_PRODUCT_INDEX_EAV_DECIMAL_STORE_ID` (`store_id`),
  KEY `CATALOG_PRODUCT_INDEX_EAV_DECIMAL_VALUE` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Decimal Index Table';

--
-- Table structure for table `catalog_product_index_eav_decimal_idx`
--

DROP TABLE IF EXISTS `catalog_product_index_eav_decimal_idx`;
CREATE TABLE `catalog_product_index_eav_decimal_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `value` decimal(12,4) NOT NULL COMMENT 'Value',
  PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`),
  KEY `CATALOG_PRODUCT_INDEX_EAV_DECIMAL_IDX_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CATALOG_PRODUCT_INDEX_EAV_DECIMAL_IDX_STORE_ID` (`store_id`),
  KEY `CATALOG_PRODUCT_INDEX_EAV_DECIMAL_IDX_VALUE` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Decimal Indexer Index Table';

--
-- Table structure for table `catalog_product_index_eav_decimal_tmp`
--

DROP TABLE IF EXISTS `catalog_product_index_eav_decimal_tmp`;
CREATE TABLE `catalog_product_index_eav_decimal_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `value` decimal(12,4) NOT NULL COMMENT 'Value',
  PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`),
  KEY `CATALOG_PRODUCT_INDEX_EAV_DECIMAL_TMP_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CATALOG_PRODUCT_INDEX_EAV_DECIMAL_TMP_STORE_ID` (`store_id`),
  KEY `CATALOG_PRODUCT_INDEX_EAV_DECIMAL_TMP_VALUE` (`value`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Decimal Indexer Temp Table';

--
-- Table structure for table `catalog_product_index_eav_idx`
--

DROP TABLE IF EXISTS `catalog_product_index_eav_idx`;
CREATE TABLE `catalog_product_index_eav_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `value` int(10) unsigned NOT NULL COMMENT 'Value',
  PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`),
  KEY `CATALOG_PRODUCT_INDEX_EAV_IDX_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CATALOG_PRODUCT_INDEX_EAV_IDX_STORE_ID` (`store_id`),
  KEY `CATALOG_PRODUCT_INDEX_EAV_IDX_VALUE` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Indexer Index Table';

--
-- Dumping data for table `catalog_product_index_eav_idx`
--

LOCK TABLES `catalog_product_index_eav_idx` WRITE;
/*!40000 ALTER TABLE `catalog_product_index_eav_idx` DISABLE KEYS */;
INSERT INTO `catalog_product_index_eav_idx` VALUES ('1',93,1,'9'),('1',93,2,'9'),('2',93,1,'15'),('2',93,2,'15'),('3',93,1,'6'),('3',93,2,'6'),('4',93,1,'6'),('4',93,2,'6'),('5',93,1,'14'),('5',93,2,'14'),('6',93,1,'13'),('6',93,2,'13'),('7',93,1,'12'),('7',93,2,'12'),('8',93,1,'12'),('8',93,2,'12'),('9',93,1,'15'),('9',93,2,'15'),('10',93,1,'15'),('10',93,2,'15'),('11',93,1,'7'),('11',93,2,'7');
/*!40000 ALTER TABLE `catalog_product_index_eav_idx` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_product_index_eav_tmp`
--

DROP TABLE IF EXISTS `catalog_product_index_eav_tmp`;
CREATE TABLE `catalog_product_index_eav_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `value` int(10) unsigned NOT NULL COMMENT 'Value',
  PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`),
  KEY `CATALOG_PRODUCT_INDEX_EAV_TMP_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CATALOG_PRODUCT_INDEX_EAV_TMP_STORE_ID` (`store_id`),
  KEY `CATALOG_PRODUCT_INDEX_EAV_TMP_VALUE` (`value`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Indexer Temp Table';

--
-- Table structure for table `catalog_product_index_price`
--

DROP TABLE IF EXISTS `catalog_product_index_price`;
CREATE TABLE `catalog_product_index_price` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Tax Class ID',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `final_price` decimal(12,4) DEFAULT NULL COMMENT 'Final Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`),
  KEY `CATALOG_PRODUCT_INDEX_PRICE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `CATALOG_PRODUCT_INDEX_PRICE_MIN_PRICE` (`min_price`),
  KEY `CAT_PRD_IDX_PRICE_WS_ID_CSTR_GROUP_ID_MIN_PRICE` (`website_id`,`customer_group_id`,`min_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Index Table';

--
-- Dumping data for table `catalog_product_index_price`
--

LOCK TABLES `catalog_product_index_price` WRITE;
/*!40000 ALTER TABLE `catalog_product_index_price` DISABLE KEYS */;
INSERT INTO `catalog_product_index_price` VALUES ('1',0,1,0,'5400.0000','5400.0000','5400.0000','5400.0000',NULL),('1',1,1,0,'5400.0000','5400.0000','5400.0000','5400.0000',NULL),('1',2,1,0,'5400.0000','5400.0000','5400.0000','5400.0000',NULL),('1',3,1,0,'5400.0000','5400.0000','5400.0000','5400.0000',NULL),('2',0,1,0,'4130.0000','4130.0000','4130.0000','4130.0000',NULL),('2',1,1,0,'4130.0000','4130.0000','4130.0000','4130.0000',NULL),('2',2,1,0,'4130.0000','4130.0000','4130.0000','4130.0000',NULL),('2',3,1,0,'4130.0000','4130.0000','4130.0000','4130.0000',NULL),('3',0,1,0,'350.0000','350.0000','350.0000','350.0000',NULL),('3',1,1,0,'350.0000','350.0000','350.0000','350.0000',NULL),('3',2,1,0,'350.0000','350.0000','350.0000','350.0000',NULL),('3',3,1,0,'350.0000','350.0000','350.0000','350.0000',NULL),('4',0,1,0,'380.0000','380.0000','380.0000','380.0000',NULL),('4',1,1,0,'380.0000','380.0000','380.0000','380.0000',NULL),('4',2,1,0,'380.0000','380.0000','380.0000','380.0000',NULL),('4',3,1,0,'380.0000','380.0000','380.0000','380.0000',NULL),('5',0,1,0,'350.0000','350.0000','350.0000','350.0000',NULL),('5',1,1,0,'350.0000','350.0000','350.0000','350.0000',NULL),('5',2,1,0,'350.0000','350.0000','350.0000','350.0000',NULL),('5',3,1,0,'350.0000','350.0000','350.0000','350.0000',NULL),('6',0,1,0,'380.0000','380.0000','380.0000','380.0000',NULL),('6',1,1,0,'380.0000','380.0000','380.0000','380.0000',NULL),('6',2,1,0,'380.0000','380.0000','380.0000','380.0000',NULL),('6',3,1,0,'380.0000','380.0000','380.0000','380.0000',NULL),('7',0,1,0,'350.0000','350.0000','350.0000','350.0000',NULL),('7',1,1,0,'350.0000','350.0000','350.0000','350.0000',NULL),('7',2,1,0,'350.0000','350.0000','350.0000','350.0000',NULL),('7',3,1,0,'350.0000','350.0000','350.0000','350.0000',NULL),('8',0,1,0,'380.0000','380.0000','380.0000','380.0000',NULL),('8',1,1,0,'380.0000','380.0000','380.0000','380.0000',NULL),('8',2,1,0,'380.0000','380.0000','380.0000','380.0000',NULL),('8',3,1,0,'380.0000','380.0000','380.0000','380.0000',NULL),('9',0,1,0,'350.0000','350.0000','350.0000','350.0000',NULL),('9',1,1,0,'350.0000','350.0000','350.0000','350.0000',NULL),('9',2,1,0,'350.0000','350.0000','350.0000','350.0000',NULL),('9',3,1,0,'350.0000','350.0000','350.0000','350.0000',NULL),('10',0,1,0,'380.0000','380.0000','380.0000','380.0000',NULL),('10',1,1,0,'380.0000','380.0000','380.0000','380.0000',NULL),('10',2,1,0,'380.0000','380.0000','380.0000','380.0000',NULL),('10',3,1,0,'380.0000','380.0000','380.0000','380.0000',NULL),('11',0,1,0,'350.0000','350.0000','350.0000','350.0000','349.0000'),('11',1,1,0,'350.0000','350.0000','350.0000','350.0000','349.0000'),('11',2,1,0,'350.0000','350.0000','350.0000','350.0000','349.0000'),('11',3,1,0,'350.0000','350.0000','350.0000','350.0000','349.0000');
/*!40000 ALTER TABLE `catalog_product_index_price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_product_index_price_bundle_idx`
--

DROP TABLE IF EXISTS `catalog_product_index_price_bundle_idx`;
CREATE TABLE `catalog_product_index_price_bundle_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `tax_class_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Tax Class Id',
  `price_type` smallint(5) unsigned NOT NULL COMMENT 'Price Type',
  `special_price` decimal(12,4) DEFAULT NULL COMMENT 'Special Price',
  `tier_percent` decimal(12,4) DEFAULT NULL COMMENT 'Tier Percent',
  `orig_price` decimal(12,4) DEFAULT NULL COMMENT 'Orig Price',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `base_tier` decimal(12,4) DEFAULT NULL COMMENT 'Base Tier',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Idx';

--
-- Table structure for table `catalog_product_index_price_bundle_opt_idx`
--

DROP TABLE IF EXISTS `catalog_product_index_price_bundle_opt_idx`;
CREATE TABLE `catalog_product_index_price_bundle_opt_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option Id',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `alt_price` decimal(12,4) DEFAULT NULL COMMENT 'Alt Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `alt_tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Alt Tier Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Opt Idx';

--
-- Table structure for table `catalog_product_index_price_bundle_opt_tmp`
--

DROP TABLE IF EXISTS `catalog_product_index_price_bundle_opt_tmp`;
CREATE TABLE `catalog_product_index_price_bundle_opt_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option Id',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `alt_price` decimal(12,4) DEFAULT NULL COMMENT 'Alt Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `alt_tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Alt Tier Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Opt Tmp';

--
-- Table structure for table `catalog_product_index_price_bundle_sel_idx`
--

DROP TABLE IF EXISTS `catalog_product_index_price_bundle_sel_idx`;
CREATE TABLE `catalog_product_index_price_bundle_sel_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option Id',
  `selection_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Selection Id',
  `group_type` smallint(5) unsigned DEFAULT '0' COMMENT 'Group Type',
  `is_required` smallint(5) unsigned DEFAULT '0' COMMENT 'Is Required',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`,`selection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Sel Idx';

--
-- Table structure for table `catalog_product_index_price_bundle_sel_tmp`
--

DROP TABLE IF EXISTS `catalog_product_index_price_bundle_sel_tmp`;
CREATE TABLE `catalog_product_index_price_bundle_sel_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option Id',
  `selection_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Selection Id',
  `group_type` smallint(5) unsigned DEFAULT '0' COMMENT 'Group Type',
  `is_required` smallint(5) unsigned DEFAULT '0' COMMENT 'Is Required',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`,`selection_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Sel Tmp';

--
-- Table structure for table `catalog_product_index_price_bundle_tmp`
--

DROP TABLE IF EXISTS `catalog_product_index_price_bundle_tmp`;
CREATE TABLE `catalog_product_index_price_bundle_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `tax_class_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Tax Class Id',
  `price_type` smallint(5) unsigned NOT NULL COMMENT 'Price Type',
  `special_price` decimal(12,4) DEFAULT NULL COMMENT 'Special Price',
  `tier_percent` decimal(12,4) DEFAULT NULL COMMENT 'Tier Percent',
  `orig_price` decimal(12,4) DEFAULT NULL COMMENT 'Orig Price',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `base_tier` decimal(12,4) DEFAULT NULL COMMENT 'Base Tier',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Tmp';

--
-- Table structure for table `catalog_product_index_price_cfg_opt_agr_idx`
--

DROP TABLE IF EXISTS `catalog_product_index_price_cfg_opt_agr_idx`;
CREATE TABLE `catalog_product_index_price_cfg_opt_agr_idx` (
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent ID',
  `child_id` int(10) unsigned NOT NULL COMMENT 'Child ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  PRIMARY KEY (`parent_id`,`child_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Config Option Aggregate Index Table';

--
-- Table structure for table `catalog_product_index_price_cfg_opt_agr_tmp`
--

DROP TABLE IF EXISTS `catalog_product_index_price_cfg_opt_agr_tmp`;
CREATE TABLE `catalog_product_index_price_cfg_opt_agr_tmp` (
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent ID',
  `child_id` int(10) unsigned NOT NULL COMMENT 'Child ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  PRIMARY KEY (`parent_id`,`child_id`,`customer_group_id`,`website_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Config Option Aggregate Temp Table';

--
-- Table structure for table `catalog_product_index_price_cfg_opt_idx`
--

DROP TABLE IF EXISTS `catalog_product_index_price_cfg_opt_idx`;
CREATE TABLE `catalog_product_index_price_cfg_opt_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Config Option Index Table';

--
-- Table structure for table `catalog_product_index_price_cfg_opt_tmp`
--

DROP TABLE IF EXISTS `catalog_product_index_price_cfg_opt_tmp`;
CREATE TABLE `catalog_product_index_price_cfg_opt_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Config Option Temp Table';

--
-- Table structure for table `catalog_product_index_price_downlod_idx`
--

DROP TABLE IF EXISTS `catalog_product_index_price_downlod_idx`;
CREATE TABLE `catalog_product_index_price_downlod_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Minimum price',
  `max_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Maximum price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Indexer Table for price of downloadable products';

--
-- Table structure for table `catalog_product_index_price_downlod_tmp`
--

DROP TABLE IF EXISTS `catalog_product_index_price_downlod_tmp`;
CREATE TABLE `catalog_product_index_price_downlod_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Minimum price',
  `max_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Maximum price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Temporary Indexer Table for price of downloadable products';

--
-- Table structure for table `catalog_product_index_price_final_idx`
--

DROP TABLE IF EXISTS `catalog_product_index_price_final_idx`;
CREATE TABLE `catalog_product_index_price_final_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Tax Class ID',
  `orig_price` decimal(12,4) DEFAULT NULL COMMENT 'Original Price',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `base_tier` decimal(12,4) DEFAULT NULL COMMENT 'Base Tier',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Final Index Table';

--
-- Table structure for table `catalog_product_index_price_final_tmp`
--

DROP TABLE IF EXISTS `catalog_product_index_price_final_tmp`;
CREATE TABLE `catalog_product_index_price_final_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Tax Class ID',
  `orig_price` decimal(12,4) DEFAULT NULL COMMENT 'Original Price',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `base_tier` decimal(12,4) DEFAULT NULL COMMENT 'Base Tier',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Final Temp Table';

--
-- Table structure for table `catalog_product_index_price_idx`
--

DROP TABLE IF EXISTS `catalog_product_index_price_idx`;
CREATE TABLE `catalog_product_index_price_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Tax Class ID',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `final_price` decimal(12,4) DEFAULT NULL COMMENT 'Final Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`),
  KEY `CATALOG_PRODUCT_INDEX_PRICE_IDX_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `CATALOG_PRODUCT_INDEX_PRICE_IDX_WEBSITE_ID` (`website_id`),
  KEY `CATALOG_PRODUCT_INDEX_PRICE_IDX_MIN_PRICE` (`min_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Index Table';

--
-- Dumping data for table `catalog_product_index_price_idx`
--

LOCK TABLES `catalog_product_index_price_idx` WRITE;
/*!40000 ALTER TABLE `catalog_product_index_price_idx` DISABLE KEYS */;
INSERT INTO `catalog_product_index_price_idx` VALUES ('1',0,1,0,'5400.0000','5400.0000','5400.0000','5400.0000',NULL),('1',1,1,0,'5400.0000','5400.0000','5400.0000','5400.0000',NULL),('1',2,1,0,'5400.0000','5400.0000','5400.0000','5400.0000',NULL),('1',3,1,0,'5400.0000','5400.0000','5400.0000','5400.0000',NULL),('2',0,1,0,'4130.0000','4130.0000','4130.0000','4130.0000',NULL),('2',1,1,0,'4130.0000','4130.0000','4130.0000','4130.0000',NULL),('2',2,1,0,'4130.0000','4130.0000','4130.0000','4130.0000',NULL),('2',3,1,0,'4130.0000','4130.0000','4130.0000','4130.0000',NULL),('3',0,1,0,'350.0000','350.0000','350.0000','350.0000',NULL),('3',1,1,0,'350.0000','350.0000','350.0000','350.0000',NULL),('3',2,1,0,'350.0000','350.0000','350.0000','350.0000',NULL),('3',3,1,0,'350.0000','350.0000','350.0000','350.0000',NULL),('4',0,1,0,'380.0000','380.0000','380.0000','380.0000',NULL),('4',1,1,0,'380.0000','380.0000','380.0000','380.0000',NULL),('4',2,1,0,'380.0000','380.0000','380.0000','380.0000',NULL),('4',3,1,0,'380.0000','380.0000','380.0000','380.0000',NULL),('5',0,1,0,'350.0000','350.0000','350.0000','350.0000',NULL),('5',1,1,0,'350.0000','350.0000','350.0000','350.0000',NULL),('5',2,1,0,'350.0000','350.0000','350.0000','350.0000',NULL),('5',3,1,0,'350.0000','350.0000','350.0000','350.0000',NULL),('6',0,1,0,'380.0000','380.0000','380.0000','380.0000',NULL),('6',1,1,0,'380.0000','380.0000','380.0000','380.0000',NULL),('6',2,1,0,'380.0000','380.0000','380.0000','380.0000',NULL),('6',3,1,0,'380.0000','380.0000','380.0000','380.0000',NULL),('7',0,1,0,'350.0000','350.0000','350.0000','350.0000',NULL),('7',1,1,0,'350.0000','350.0000','350.0000','350.0000',NULL),('7',2,1,0,'350.0000','350.0000','350.0000','350.0000',NULL),('7',3,1,0,'350.0000','350.0000','350.0000','350.0000',NULL),('8',0,1,0,'380.0000','380.0000','380.0000','380.0000',NULL),('8',1,1,0,'380.0000','380.0000','380.0000','380.0000',NULL),('8',2,1,0,'380.0000','380.0000','380.0000','380.0000',NULL),('8',3,1,0,'380.0000','380.0000','380.0000','380.0000',NULL),('9',0,1,0,'350.0000','350.0000','350.0000','350.0000',NULL),('9',1,1,0,'350.0000','350.0000','350.0000','350.0000',NULL),('9',2,1,0,'350.0000','350.0000','350.0000','350.0000',NULL),('9',3,1,0,'350.0000','350.0000','350.0000','350.0000',NULL),('10',0,1,0,'380.0000','380.0000','380.0000','380.0000',NULL),('10',1,1,0,'380.0000','380.0000','380.0000','380.0000',NULL),('10',2,1,0,'380.0000','380.0000','380.0000','380.0000',NULL),('10',3,1,0,'380.0000','380.0000','380.0000','380.0000',NULL),('11',0,1,0,'350.0000','350.0000','350.0000','350.0000','349.0000'),('11',1,1,0,'350.0000','350.0000','350.0000','350.0000','349.0000'),('11',2,1,0,'350.0000','350.0000','350.0000','350.0000','349.0000'),('11',3,1,0,'350.0000','350.0000','350.0000','350.0000','349.0000');
/*!40000 ALTER TABLE `catalog_product_index_price_idx` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_product_index_price_opt_agr_idx`
--

DROP TABLE IF EXISTS `catalog_product_index_price_opt_agr_idx`;
CREATE TABLE `catalog_product_index_price_opt_agr_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Option Aggregate Index Table';

--
-- Table structure for table `catalog_product_index_price_opt_agr_tmp`
--

DROP TABLE IF EXISTS `catalog_product_index_price_opt_agr_tmp`;
CREATE TABLE `catalog_product_index_price_opt_agr_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Option Aggregate Temp Table';

--
-- Table structure for table `catalog_product_index_price_opt_idx`
--

DROP TABLE IF EXISTS `catalog_product_index_price_opt_idx`;
CREATE TABLE `catalog_product_index_price_opt_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Option Index Table';

--
-- Table structure for table `catalog_product_index_price_opt_tmp`
--

DROP TABLE IF EXISTS `catalog_product_index_price_opt_tmp`;
CREATE TABLE `catalog_product_index_price_opt_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Option Temp Table';

--
-- Table structure for table `catalog_product_index_price_tmp`
--

DROP TABLE IF EXISTS `catalog_product_index_price_tmp`;
CREATE TABLE `catalog_product_index_price_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Tax Class ID',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `final_price` decimal(12,4) DEFAULT NULL COMMENT 'Final Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`),
  KEY `CATALOG_PRODUCT_INDEX_PRICE_TMP_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `CATALOG_PRODUCT_INDEX_PRICE_TMP_WEBSITE_ID` (`website_id`),
  KEY `CATALOG_PRODUCT_INDEX_PRICE_TMP_MIN_PRICE` (`min_price`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Temp Table';

--
-- Table structure for table `catalog_product_index_tier_price`
--

DROP TABLE IF EXISTS `catalog_product_index_tier_price`;
CREATE TABLE `catalog_product_index_tier_price` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`),
  KEY `CATALOG_PRODUCT_INDEX_TIER_PRICE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `CATALOG_PRODUCT_INDEX_TIER_PRICE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Tier Price Index Table';

--
-- Dumping data for table `catalog_product_index_tier_price`
--

LOCK TABLES `catalog_product_index_tier_price` WRITE;
/*!40000 ALTER TABLE `catalog_product_index_tier_price` DISABLE KEYS */;
INSERT INTO `catalog_product_index_tier_price` VALUES ('11',0,1,'349.0000'),('11',1,1,'349.0000'),('11',2,1,'349.0000'),('11',3,1,'349.0000');
/*!40000 ALTER TABLE `catalog_product_index_tier_price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_product_index_website`
--

DROP TABLE IF EXISTS `catalog_product_index_website`;
CREATE TABLE `catalog_product_index_website` (
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `website_date` date DEFAULT NULL COMMENT 'Website Date',
  `rate` float DEFAULT '1' COMMENT 'Rate',
  PRIMARY KEY (`website_id`),
  KEY `CATALOG_PRODUCT_INDEX_WEBSITE_WEBSITE_DATE` (`website_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Website Index Table';

--
-- Dumping data for table `catalog_product_index_website`
--

LOCK TABLES `catalog_product_index_website` WRITE;
/*!40000 ALTER TABLE `catalog_product_index_website` DISABLE KEYS */;
INSERT INTO `catalog_product_index_website` VALUES (1,'2017-04-18','1');
/*!40000 ALTER TABLE `catalog_product_index_website` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_product_link`
--

DROP TABLE IF EXISTS `catalog_product_link`;
CREATE TABLE `catalog_product_link` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Link ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `linked_product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Linked Product ID',
  `link_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Link Type ID',
  PRIMARY KEY (`link_id`),
  UNIQUE KEY `CATALOG_PRODUCT_LINK_LINK_TYPE_ID_PRODUCT_ID_LINKED_PRODUCT_ID` (`link_type_id`,`product_id`,`linked_product_id`),
  KEY `CATALOG_PRODUCT_LINK_PRODUCT_ID` (`product_id`),
  KEY `CATALOG_PRODUCT_LINK_LINKED_PRODUCT_ID` (`linked_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product To Product Linkage Table';

--
-- Table structure for table `catalog_product_link_attribute`
--

DROP TABLE IF EXISTS `catalog_product_link_attribute`;
CREATE TABLE `catalog_product_link_attribute` (
  `product_link_attribute_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Product Link Attribute ID',
  `link_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Link Type ID',
  `product_link_attribute_code` varchar(32) DEFAULT NULL COMMENT 'Product Link Attribute Code',
  `data_type` varchar(32) DEFAULT NULL COMMENT 'Data Type',
  PRIMARY KEY (`product_link_attribute_id`),
  KEY `CATALOG_PRODUCT_LINK_ATTRIBUTE_LINK_TYPE_ID` (`link_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='Catalog Product Link Attribute Table';

--
-- Dumping data for table `catalog_product_link_attribute`
--

LOCK TABLES `catalog_product_link_attribute` WRITE;
/*!40000 ALTER TABLE `catalog_product_link_attribute` DISABLE KEYS */;
INSERT INTO `catalog_product_link_attribute` VALUES (1,1,'position','int'),(2,4,'position','int'),(3,5,'position','int'),(4,3,'position','int'),(5,3,'qty','decimal');
/*!40000 ALTER TABLE `catalog_product_link_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_product_link_attribute_decimal`
--

DROP TABLE IF EXISTS `catalog_product_link_attribute_decimal`;
CREATE TABLE `catalog_product_link_attribute_decimal` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `product_link_attribute_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Product Link Attribute ID',
  `link_id` int(10) unsigned NOT NULL COMMENT 'Link ID',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CAT_PRD_LNK_ATTR_DEC_PRD_LNK_ATTR_ID_LNK_ID` (`product_link_attribute_id`,`link_id`),
  KEY `CATALOG_PRODUCT_LINK_ATTRIBUTE_DECIMAL_LINK_ID` (`link_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Link Decimal Attribute Table';

--
-- Table structure for table `catalog_product_link_attribute_int`
--

DROP TABLE IF EXISTS `catalog_product_link_attribute_int`;
CREATE TABLE `catalog_product_link_attribute_int` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `product_link_attribute_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Product Link Attribute ID',
  `link_id` int(10) unsigned NOT NULL COMMENT 'Link ID',
  `value` int(11) NOT NULL DEFAULT '0' COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CAT_PRD_LNK_ATTR_INT_PRD_LNK_ATTR_ID_LNK_ID` (`product_link_attribute_id`,`link_id`),
  KEY `CATALOG_PRODUCT_LINK_ATTRIBUTE_INT_LINK_ID` (`link_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Link Integer Attribute Table';

--
-- Table structure for table `catalog_product_link_attribute_varchar`
--

DROP TABLE IF EXISTS `catalog_product_link_attribute_varchar`;
CREATE TABLE `catalog_product_link_attribute_varchar` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `product_link_attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Product Link Attribute ID',
  `link_id` int(10) unsigned NOT NULL COMMENT 'Link ID',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CAT_PRD_LNK_ATTR_VCHR_PRD_LNK_ATTR_ID_LNK_ID` (`product_link_attribute_id`,`link_id`),
  KEY `CATALOG_PRODUCT_LINK_ATTRIBUTE_VARCHAR_LINK_ID` (`link_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Link Varchar Attribute Table';

--
-- Table structure for table `catalog_product_link_type`
--

DROP TABLE IF EXISTS `catalog_product_link_type`;
CREATE TABLE `catalog_product_link_type` (
  `link_type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Link Type ID',
  `code` varchar(32) DEFAULT NULL COMMENT 'Code',
  PRIMARY KEY (`link_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='Catalog Product Link Type Table';

--
-- Dumping data for table `catalog_product_link_type`
--

LOCK TABLES `catalog_product_link_type` WRITE;
/*!40000 ALTER TABLE `catalog_product_link_type` DISABLE KEYS */;
INSERT INTO `catalog_product_link_type` VALUES (1,'relation'),(3,'super'),(4,'up_sell'),(5,'cross_sell');
/*!40000 ALTER TABLE `catalog_product_link_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_product_option`
--

DROP TABLE IF EXISTS `catalog_product_option`;
CREATE TABLE `catalog_product_option` (
  `option_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `type` varchar(50) DEFAULT NULL COMMENT 'Type',
  `is_require` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Is Required',
  `sku` varchar(64) DEFAULT NULL COMMENT 'SKU',
  `max_characters` int(10) unsigned DEFAULT NULL COMMENT 'Max Characters',
  `file_extension` varchar(50) DEFAULT NULL COMMENT 'File Extension',
  `image_size_x` smallint(5) unsigned DEFAULT NULL COMMENT 'Image Size X',
  `image_size_y` smallint(5) unsigned DEFAULT NULL COMMENT 'Image Size Y',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`option_id`),
  KEY `CATALOG_PRODUCT_OPTION_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Table';

--
-- Table structure for table `catalog_product_option_price`
--

DROP TABLE IF EXISTS `catalog_product_option_price`;
CREATE TABLE `catalog_product_option_price` (
  `option_price_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Price ID',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `price_type` varchar(7) NOT NULL DEFAULT 'fixed' COMMENT 'Price Type',
  PRIMARY KEY (`option_price_id`),
  UNIQUE KEY `CATALOG_PRODUCT_OPTION_PRICE_OPTION_ID_STORE_ID` (`option_id`,`store_id`),
  KEY `CATALOG_PRODUCT_OPTION_PRICE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Price Table';

--
-- Table structure for table `catalog_product_option_title`
--

DROP TABLE IF EXISTS `catalog_product_option_title`;
CREATE TABLE `catalog_product_option_title` (
  `option_title_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Title ID',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  PRIMARY KEY (`option_title_id`),
  UNIQUE KEY `CATALOG_PRODUCT_OPTION_TITLE_OPTION_ID_STORE_ID` (`option_id`,`store_id`),
  KEY `CATALOG_PRODUCT_OPTION_TITLE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Title Table';

--
-- Table structure for table `catalog_product_option_type_price`
--

DROP TABLE IF EXISTS `catalog_product_option_type_price`;
CREATE TABLE `catalog_product_option_type_price` (
  `option_type_price_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Type Price ID',
  `option_type_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option Type ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `price_type` varchar(7) NOT NULL DEFAULT 'fixed' COMMENT 'Price Type',
  PRIMARY KEY (`option_type_price_id`),
  UNIQUE KEY `CATALOG_PRODUCT_OPTION_TYPE_PRICE_OPTION_TYPE_ID_STORE_ID` (`option_type_id`,`store_id`),
  KEY `CATALOG_PRODUCT_OPTION_TYPE_PRICE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Type Price Table';

--
-- Table structure for table `catalog_product_option_type_title`
--

DROP TABLE IF EXISTS `catalog_product_option_type_title`;
CREATE TABLE `catalog_product_option_type_title` (
  `option_type_title_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Type Title ID',
  `option_type_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option Type ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  PRIMARY KEY (`option_type_title_id`),
  UNIQUE KEY `CATALOG_PRODUCT_OPTION_TYPE_TITLE_OPTION_TYPE_ID_STORE_ID` (`option_type_id`,`store_id`),
  KEY `CATALOG_PRODUCT_OPTION_TYPE_TITLE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Type Title Table';

--
-- Table structure for table `catalog_product_option_type_value`
--

DROP TABLE IF EXISTS `catalog_product_option_type_value`;
CREATE TABLE `catalog_product_option_type_value` (
  `option_type_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Type ID',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `sku` varchar(64) DEFAULT NULL COMMENT 'SKU',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`option_type_id`),
  KEY `CATALOG_PRODUCT_OPTION_TYPE_VALUE_OPTION_ID` (`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Type Value Table';

--
-- Table structure for table `catalog_product_relation`
--

DROP TABLE IF EXISTS `catalog_product_relation`;
CREATE TABLE `catalog_product_relation` (
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent ID',
  `child_id` int(10) unsigned NOT NULL COMMENT 'Child ID',
  PRIMARY KEY (`parent_id`,`child_id`),
  KEY `CATALOG_PRODUCT_RELATION_CHILD_ID` (`child_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Relation Table';

--
-- Table structure for table `catalog_product_super_attribute`
--

DROP TABLE IF EXISTS `catalog_product_super_attribute`;
CREATE TABLE `catalog_product_super_attribute` (
  `product_super_attribute_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Product Super Attribute ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `position` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Position',
  PRIMARY KEY (`product_super_attribute_id`),
  UNIQUE KEY `CATALOG_PRODUCT_SUPER_ATTRIBUTE_PRODUCT_ID_ATTRIBUTE_ID` (`product_id`,`attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Super Attribute Table';

--
-- Table structure for table `catalog_product_super_attribute_label`
--

DROP TABLE IF EXISTS `catalog_product_super_attribute_label`;
CREATE TABLE `catalog_product_super_attribute_label` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `product_super_attribute_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product Super Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `use_default` smallint(5) unsigned DEFAULT '0' COMMENT 'Use Default Value',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CAT_PRD_SPR_ATTR_LBL_PRD_SPR_ATTR_ID_STORE_ID` (`product_super_attribute_id`,`store_id`),
  KEY `CATALOG_PRODUCT_SUPER_ATTRIBUTE_LABEL_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Super Attribute Label Table';

--
-- Table structure for table `catalog_product_super_link`
--

DROP TABLE IF EXISTS `catalog_product_super_link`;
CREATE TABLE `catalog_product_super_link` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Link ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Parent ID',
  PRIMARY KEY (`link_id`),
  UNIQUE KEY `CATALOG_PRODUCT_SUPER_LINK_PRODUCT_ID_PARENT_ID` (`product_id`,`parent_id`),
  KEY `CATALOG_PRODUCT_SUPER_LINK_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Super Link Table';

--
-- Table structure for table `catalog_product_website`
--

DROP TABLE IF EXISTS `catalog_product_website`;
CREATE TABLE `catalog_product_website` (
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  PRIMARY KEY (`product_id`,`website_id`),
  KEY `CATALOG_PRODUCT_WEBSITE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product To Website Linkage Table';

--
-- Dumping data for table `catalog_product_website`
--

LOCK TABLES `catalog_product_website` WRITE;
/*!40000 ALTER TABLE `catalog_product_website` DISABLE KEYS */;
INSERT INTO `catalog_product_website` VALUES ('1',1),('2',1),('3',1),('4',1),('5',1),('6',1),('7',1),('8',1),('9',1),('10',1),('11',1);
/*!40000 ALTER TABLE `catalog_product_website` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_url_rewrite_product_category`
--

DROP TABLE IF EXISTS `catalog_url_rewrite_product_category`;
CREATE TABLE `catalog_url_rewrite_product_category` (
  `url_rewrite_id` int(10) unsigned NOT NULL COMMENT 'url_rewrite_id',
  `category_id` int(10) unsigned NOT NULL COMMENT 'category_id',
  `product_id` int(10) unsigned NOT NULL COMMENT 'product_id',
  KEY `CATALOG_URL_REWRITE_PRODUCT_CATEGORY_CATEGORY_ID_PRODUCT_ID` (`category_id`,`product_id`),
  KEY `CAT_URL_REWRITE_PRD_CTGR_PRD_ID_CAT_PRD_ENTT_ENTT_ID` (`product_id`),
  KEY `FK_BB79E64705D7F17FE181F23144528FC8` (`url_rewrite_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='url_rewrite_relation';

--
-- Dumping data for table `catalog_url_rewrite_product_category`
--

LOCK TABLES `catalog_url_rewrite_product_category` WRITE;
/*!40000 ALTER TABLE `catalog_url_rewrite_product_category` DISABLE KEYS */;
INSERT INTO `catalog_url_rewrite_product_category` VALUES ('164','3','1'),('165','27','1'),('167','2','1'),('301','3','3'),('302','27','3'),('303','29','3'),('306','2','3'),('308','3','4'),('309','27','4'),('310','29','4'),('313','2','4'),('315','3','5'),('316','27','5'),('317','29','5'),('320','2','5'),('322','3','6'),('323','27','6'),('324','29','6'),('327','2','6'),('329','3','7'),('330','27','7'),('331','29','7'),('334','2','7'),('336','3','8'),('337','27','8'),('338','29','8'),('341','2','8'),('343','3','9'),('344','27','9'),('345','29','9'),('348','2','9'),('350','3','10'),('351','27','10'),('352','29','10'),('355','2','10'),('357','3','11'),('358','27','11'),('359','29','11'),('362','2','11'),('389','3','1'),('390','27','1'),('391','2','1'),('394','3','3'),('395','27','3'),('396','29','3'),('397','2','3'),('399','3','4'),('400','27','4'),('401','29','4'),('402','2','4'),('404','3','5'),('405','27','5'),('406','29','5'),('407','2','5'),('409','3','6'),('410','27','6'),('411','29','6'),('412','2','6'),('414','3','7'),('415','27','7'),('416','29','7'),('417','2','7'),('419','3','8'),('420','27','8'),('421','29','8'),('422','2','8'),('424','3','9'),('425','27','9'),('426','29','9'),('427','2','9'),('429','3','10'),('430','27','10'),('431','29','10'),('432','2','10'),('434','3','11'),('435','27','11'),('436','29','11'),('437','2','11'),('473','3','1'),('474','27','1'),('475','2','1'),('478','3','3'),('479','27','3'),('480','29','3'),('481','2','3'),('483','3','4'),('484','27','4'),('485','29','4'),('486','2','4'),('488','3','5'),('489','27','5'),('490','29','5'),('491','2','5'),('493','3','6'),('494','27','6'),('495','29','6'),('496','2','6'),('498','3','7'),('499','27','7'),('500','29','7'),('501','2','7'),('503','3','8'),('504','27','8'),('505','29','8'),('506','2','8'),('508','3','9'),('509','27','9'),('510','29','9'),('511','2','9'),('513','3','10'),('514','27','10'),('515','29','10'),('516','2','10'),('518','3','11'),('519','27','11'),('520','29','11'),('521','2','11');
/*!40000 ALTER TABLE `catalog_url_rewrite_product_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cataloginventory_stock`
--

DROP TABLE IF EXISTS `cataloginventory_stock`;
CREATE TABLE `cataloginventory_stock` (
  `stock_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Stock Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `stock_name` varchar(255) DEFAULT NULL COMMENT 'Stock Name',
  PRIMARY KEY (`stock_id`),
  KEY `CATALOGINVENTORY_STOCK_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Cataloginventory Stock';

--
-- Dumping data for table `cataloginventory_stock`
--

LOCK TABLES `cataloginventory_stock` WRITE;
/*!40000 ALTER TABLE `cataloginventory_stock` DISABLE KEYS */;
INSERT INTO `cataloginventory_stock` VALUES (1,0,'Default');
/*!40000 ALTER TABLE `cataloginventory_stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cataloginventory_stock_item`
--

DROP TABLE IF EXISTS `cataloginventory_stock_item`;
CREATE TABLE `cataloginventory_stock_item` (
  `item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Item Id',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product Id',
  `stock_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Stock Id',
  `qty` decimal(12,4) DEFAULT NULL COMMENT 'Qty',
  `min_qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Min Qty',
  `use_config_min_qty` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Min Qty',
  `is_qty_decimal` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Qty Decimal',
  `backorders` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Backorders',
  `use_config_backorders` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Backorders',
  `min_sale_qty` decimal(12,4) NOT NULL DEFAULT '1.0000' COMMENT 'Min Sale Qty',
  `use_config_min_sale_qty` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Min Sale Qty',
  `max_sale_qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Max Sale Qty',
  `use_config_max_sale_qty` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Max Sale Qty',
  `is_in_stock` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is In Stock',
  `low_stock_date` timestamp NULL DEFAULT NULL COMMENT 'Low Stock Date',
  `notify_stock_qty` decimal(12,4) DEFAULT NULL COMMENT 'Notify Stock Qty',
  `use_config_notify_stock_qty` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Notify Stock Qty',
  `manage_stock` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Manage Stock',
  `use_config_manage_stock` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Manage Stock',
  `stock_status_changed_auto` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Stock Status Changed Automatically',
  `use_config_qty_increments` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Qty Increments',
  `qty_increments` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty Increments',
  `use_config_enable_qty_inc` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Enable Qty Increments',
  `enable_qty_increments` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Enable Qty Increments',
  `is_decimal_divided` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Divided into Multiple Boxes for Shipping',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Divided into Multiple Boxes for Shipping',
  PRIMARY KEY (`item_id`),
  UNIQUE KEY `CATALOGINVENTORY_STOCK_ITEM_PRODUCT_ID_WEBSITE_ID` (`product_id`,`website_id`),
  KEY `CATALOGINVENTORY_STOCK_ITEM_WEBSITE_ID` (`website_id`),
  KEY `CATALOGINVENTORY_STOCK_ITEM_STOCK_ID` (`stock_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='Cataloginventory Stock Item';

--
-- Dumping data for table `cataloginventory_stock_item`
--

LOCK TABLES `cataloginventory_stock_item` WRITE;
/*!40000 ALTER TABLE `cataloginventory_stock_item` DISABLE KEYS */;
INSERT INTO `cataloginventory_stock_item` VALUES ('1','1',1,'99.0000','0.0000',1,0,0,1,'1.0000',1,'10000.0000',1,1,NULL,'1.0000',1,1,1,0,1,'1.0000',1,0,0,0),('2','2',1,'100.0000','0.0000',1,0,0,1,'1.0000',1,'10000.0000',1,1,NULL,'1.0000',1,1,1,0,1,'1.0000',1,0,0,0),('3','3',1,'88.0000','0.0000',1,0,0,1,'1.0000',1,'10000.0000',1,1,NULL,'1.0000',1,1,1,0,1,'1.0000',1,0,0,0),('4','4',1,'96.0000','0.0000',1,0,0,1,'1.0000',1,'10000.0000',1,1,NULL,'1.0000',1,1,1,0,1,'1.0000',1,0,0,0),('5','5',1,'88.0000','0.0000',1,0,0,1,'1.0000',1,'10000.0000',1,1,NULL,'1.0000',1,1,1,0,1,'1.0000',1,0,0,0),('6','6',1,'97.0000','0.0000',1,0,0,1,'1.0000',1,'10000.0000',1,1,NULL,'1.0000',1,1,1,0,1,'1.0000',1,0,0,0),('7','7',1,'74.0000','0.0000',1,0,0,1,'1.0000',1,'10000.0000',1,1,NULL,'1.0000',1,1,1,0,1,'1.0000',1,0,0,0),('8','8',1,'81.0000','0.0000',1,0,0,1,'1.0000',1,'10000.0000',1,1,NULL,'1.0000',1,1,1,0,1,'1.0000',1,0,0,0),('9','9',1,'95.0000','0.0000',1,0,0,1,'1.0000',1,'10000.0000',1,1,NULL,'1.0000',1,1,1,0,1,'1.0000',1,0,0,0),('10','10',1,'92.0000','0.0000',1,0,0,1,'1.0000',1,'10000.0000',1,1,NULL,'1.0000',1,1,1,0,1,'1.0000',1,0,0,0),('11','11',1,'81.0000','0.0000',1,0,0,1,'1.0000',1,'10000.0000',1,1,NULL,'1.0000',1,1,1,0,1,'1.0000',1,0,0,0);
/*!40000 ALTER TABLE `cataloginventory_stock_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cataloginventory_stock_status`
--

DROP TABLE IF EXISTS `cataloginventory_stock_status`;
CREATE TABLE `cataloginventory_stock_status` (
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `stock_id` smallint(5) unsigned NOT NULL COMMENT 'Stock Id',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `stock_status` smallint(5) unsigned NOT NULL COMMENT 'Stock Status',
  PRIMARY KEY (`product_id`,`website_id`,`stock_id`),
  KEY `CATALOGINVENTORY_STOCK_STATUS_STOCK_ID` (`stock_id`),
  KEY `CATALOGINVENTORY_STOCK_STATUS_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cataloginventory Stock Status';

--
-- Dumping data for table `cataloginventory_stock_status`
--

LOCK TABLES `cataloginventory_stock_status` WRITE;
/*!40000 ALTER TABLE `cataloginventory_stock_status` DISABLE KEYS */;
INSERT INTO `cataloginventory_stock_status` VALUES ('1',0,1,'99.0000',1),('2',0,1,'100.0000',1),('3',0,1,'88.0000',1),('4',0,1,'96.0000',1),('5',0,1,'88.0000',1),('6',0,1,'97.0000',1),('7',0,1,'74.0000',1),('8',0,1,'81.0000',1),('9',0,1,'95.0000',1),('10',0,1,'92.0000',1),('11',0,1,'81.0000',1);
/*!40000 ALTER TABLE `cataloginventory_stock_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cataloginventory_stock_status_idx`
--

DROP TABLE IF EXISTS `cataloginventory_stock_status_idx`;
CREATE TABLE `cataloginventory_stock_status_idx` (
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `stock_id` smallint(5) unsigned NOT NULL COMMENT 'Stock Id',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `stock_status` smallint(5) unsigned NOT NULL COMMENT 'Stock Status',
  PRIMARY KEY (`product_id`,`website_id`,`stock_id`),
  KEY `CATALOGINVENTORY_STOCK_STATUS_IDX_STOCK_ID` (`stock_id`),
  KEY `CATALOGINVENTORY_STOCK_STATUS_IDX_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cataloginventory Stock Status Indexer Idx';

--
-- Dumping data for table `cataloginventory_stock_status_idx`
--

LOCK TABLES `cataloginventory_stock_status_idx` WRITE;
/*!40000 ALTER TABLE `cataloginventory_stock_status_idx` DISABLE KEYS */;
INSERT INTO `cataloginventory_stock_status_idx` VALUES ('1',0,1,'99.0000',1),('2',0,1,'100.0000',1),('3',0,1,'89.0000',1),('4',0,1,'96.0000',1),('5',0,1,'88.0000',1),('6',0,1,'97.0000',1),('7',0,1,'74.0000',1),('8',0,1,'81.0000',1),('9',0,1,'95.0000',1),('10',0,1,'92.0000',1),('11',0,1,'82.0000',1);
/*!40000 ALTER TABLE `cataloginventory_stock_status_idx` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cataloginventory_stock_status_tmp`
--

DROP TABLE IF EXISTS `cataloginventory_stock_status_tmp`;
CREATE TABLE `cataloginventory_stock_status_tmp` (
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `stock_id` smallint(5) unsigned NOT NULL COMMENT 'Stock Id',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `stock_status` smallint(5) unsigned NOT NULL COMMENT 'Stock Status',
  PRIMARY KEY (`product_id`,`website_id`,`stock_id`),
  KEY `CATALOGINVENTORY_STOCK_STATUS_TMP_STOCK_ID` (`stock_id`),
  KEY `CATALOGINVENTORY_STOCK_STATUS_TMP_WEBSITE_ID` (`website_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Cataloginventory Stock Status Indexer Tmp';

--
-- Table structure for table `catalogrule`
--

DROP TABLE IF EXISTS `catalogrule`;
CREATE TABLE `catalogrule` (
  `rule_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rule Id',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `description` text COMMENT 'Description',
  `from_date` date DEFAULT NULL COMMENT 'From',
  `to_date` date DEFAULT NULL COMMENT 'To',
  `is_active` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is Active',
  `conditions_serialized` mediumtext COMMENT 'Conditions Serialized',
  `actions_serialized` mediumtext COMMENT 'Actions Serialized',
  `stop_rules_processing` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Stop Rules Processing',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `simple_action` varchar(32) DEFAULT NULL COMMENT 'Simple Action',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  PRIMARY KEY (`rule_id`),
  KEY `CATALOGRULE_IS_ACTIVE_SORT_ORDER_TO_DATE_FROM_DATE` (`is_active`,`sort_order`,`to_date`,`from_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CatalogRule';

--
-- Table structure for table `catalogrule_customer_group`
--

DROP TABLE IF EXISTS `catalogrule_customer_group`;
CREATE TABLE `catalogrule_customer_group` (
  `rule_id` int(10) unsigned NOT NULL COMMENT 'Rule Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  PRIMARY KEY (`rule_id`,`customer_group_id`),
  KEY `CATALOGRULE_CUSTOMER_GROUP_CUSTOMER_GROUP_ID` (`customer_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Rules To Customer Groups Relations';

--
-- Table structure for table `catalogrule_group_website`
--

DROP TABLE IF EXISTS `catalogrule_group_website`;
CREATE TABLE `catalogrule_group_website` (
  `rule_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Rule Id',
  `customer_group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Group Id',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website Id',
  PRIMARY KEY (`rule_id`,`customer_group_id`,`website_id`),
  KEY `CATALOGRULE_GROUP_WEBSITE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `CATALOGRULE_GROUP_WEBSITE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CatalogRule Group Website';

--
-- Table structure for table `catalogrule_product`
--

DROP TABLE IF EXISTS `catalogrule_product`;
CREATE TABLE `catalogrule_product` (
  `rule_product_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rule Product Id',
  `rule_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Rule Id',
  `from_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'From Time',
  `to_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'To time',
  `customer_group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Group Id',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product Id',
  `action_operator` varchar(10) DEFAULT 'to_fixed' COMMENT 'Action Operator',
  `action_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Action Amount',
  `action_stop` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Action Stop',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  PRIMARY KEY (`rule_product_id`),
  UNIQUE KEY `IDX_EAA51B56FF092A0DCB795D1CEF812B7B` (`rule_id`,`from_time`,`to_time`,`website_id`,`customer_group_id`,`product_id`,`sort_order`),
  KEY `CATALOGRULE_PRODUCT_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `CATALOGRULE_PRODUCT_WEBSITE_ID` (`website_id`),
  KEY `CATALOGRULE_PRODUCT_FROM_TIME` (`from_time`),
  KEY `CATALOGRULE_PRODUCT_TO_TIME` (`to_time`),
  KEY `CATALOGRULE_PRODUCT_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CatalogRule Product';

--
-- Table structure for table `catalogrule_product_price`
--

DROP TABLE IF EXISTS `catalogrule_product_price`;
CREATE TABLE `catalogrule_product_price` (
  `rule_product_price_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rule Product PriceId',
  `rule_date` date NOT NULL COMMENT 'Rule Date',
  `customer_group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Group Id',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product Id',
  `rule_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Rule Price',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `latest_start_date` date DEFAULT NULL COMMENT 'Latest StartDate',
  `earliest_end_date` date DEFAULT NULL COMMENT 'Earliest EndDate',
  PRIMARY KEY (`rule_product_price_id`),
  UNIQUE KEY `CATRULE_PRD_PRICE_RULE_DATE_WS_ID_CSTR_GROUP_ID_PRD_ID` (`rule_date`,`website_id`,`customer_group_id`,`product_id`),
  KEY `CATALOGRULE_PRODUCT_PRICE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `CATALOGRULE_PRODUCT_PRICE_WEBSITE_ID` (`website_id`),
  KEY `CATALOGRULE_PRODUCT_PRICE_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CatalogRule Product Price';

--
-- Table structure for table `catalogrule_website`
--

DROP TABLE IF EXISTS `catalogrule_website`;
CREATE TABLE `catalogrule_website` (
  `rule_id` int(10) unsigned NOT NULL COMMENT 'Rule Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  PRIMARY KEY (`rule_id`,`website_id`),
  KEY `CATALOGRULE_WEBSITE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Rules To Websites Relations';

--
-- Table structure for table `catalogsearch_fulltext_scope1`
--

DROP TABLE IF EXISTS `catalogsearch_fulltext_scope1`;
CREATE TABLE `catalogsearch_fulltext_scope1` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `attribute_id` int(10) unsigned NOT NULL COMMENT 'Attribute_id',
  `data_index` longtext COMMENT 'Data index',
  PRIMARY KEY (`entity_id`,`attribute_id`),
  FULLTEXT KEY `FTI_FULLTEXT_DATA_INDEX` (`data_index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='catalogsearch_fulltext_scope1';

--
-- Dumping data for table `catalogsearch_fulltext_scope1`
--

LOCK TABLES `catalogsearch_fulltext_scope1` WRITE;
/*!40000 ALTER TABLE `catalogsearch_fulltext_scope1` DISABLE KEYS */;
INSERT INTO `catalogsearch_fulltext_scope1` VALUES ('1','73','114 orange roses in acrylic clear large rectangular box'),('1','74','Ref 315'),('1','93','ORANGE'),('2','73','36 long life fushia roses in acrylic clear small square box'),('2','74','Ref 498'),('2','93','FUCHSIA'),('3','73','White roses in mdf black small square box'),('3','74','Ref 140'),('3','93','WHITE'),('4','73','1 white orchid bloom and white roses in mdf black small square box'),('4','74','Ref 139'),('4','93','WHITE'),('5','73','Cream roses in mdf black small square box'),('5','74','Ref 136'),('5','93','CREAM'),('6','73','1 white orchid bloom and cream roses in mdf black small square box'),('6','74','Ref 135'),('6','93','CLEAR'),('7','73','Purple roses in mdf black small square box'),('7','74','Ref 134'),('7','93','PURPLE'),('8','73','1 white orchid bloom and purple roses in mdf black small square box'),('8','74','Ref 133'),('8','93','PURPLE'),('9','73','Fushia roses in mdf black small square box'),('9','74','Fushia roses in mdf black small square box'),('9','93','FUCHSIA'),('10','73','1 white orchid bloom and fuchsia roses in mdf black small square box'),('10','74','Ref 131'),('10','93','FUCHSIA'),('11','73','Yellow roses in mdf black small square box'),('11','74','Ref 130'),('11','93','YELLOW');
/*!40000 ALTER TABLE `catalogsearch_fulltext_scope1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalogsearch_fulltext_scope2`
--

DROP TABLE IF EXISTS `catalogsearch_fulltext_scope2`;
CREATE TABLE `catalogsearch_fulltext_scope2` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `attribute_id` int(10) unsigned NOT NULL COMMENT 'Attribute_id',
  `data_index` longtext COMMENT 'Data index',
  PRIMARY KEY (`entity_id`,`attribute_id`),
  FULLTEXT KEY `FTI_FULLTEXT_DATA_INDEX` (`data_index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='catalogsearch_fulltext_scope2';

--
-- Dumping data for table `catalogsearch_fulltext_scope2`
--

LOCK TABLES `catalogsearch_fulltext_scope2` WRITE;
/*!40000 ALTER TABLE `catalogsearch_fulltext_scope2` DISABLE KEYS */;
INSERT INTO `catalogsearch_fulltext_scope2` VALUES ('1','73','114 orange roses in acrylic clear large rectangular box'),('1','74','Ref 315'),('1','93','ORANGE'),('2','73','36 long life fushia roses in acrylic clear small square box'),('2','74','Ref 498'),('2','93','FUCHSIA'),('3','73','White roses in mdf black small square box'),('3','74','Ref 140'),('3','93','WHITE'),('4','73','1 white orchid bloom and white roses in mdf black small square box'),('4','74','Ref 139'),('4','93','WHITE'),('5','73','Cream roses in mdf black small square box'),('5','74','Ref 136'),('5','93','CREAM'),('6','73','1 white orchid bloom and cream roses in mdf black small square box'),('6','74','Ref 135'),('6','93','CLEAR'),('7','73','Purple roses in mdf black small square box'),('7','74','Ref 134'),('7','93','PURPLE'),('8','73','1 white orchid bloom and purple roses in mdf black small square box'),('8','74','Ref 133'),('8','93','PURPLE'),('9','73','Fushia roses in mdf black small square box'),('9','74','Fushia roses in mdf black small square box'),('9','93','FUCHSIA'),('10','73','1 white orchid bloom and fuchsia roses in mdf black small square box'),('10','74','Ref 131'),('10','93','FUCHSIA'),('11','73','Yellow roses in mdf black small square box'),('11','74','Ref 130'),('11','93','YELLOW');
/*!40000 ALTER TABLE `catalogsearch_fulltext_scope2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalogsearch_fulltext_scope3`
--

DROP TABLE IF EXISTS `catalogsearch_fulltext_scope3`;
CREATE TABLE `catalogsearch_fulltext_scope3` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `attribute_id` int(10) unsigned NOT NULL COMMENT 'Attribute_id',
  `data_index` longtext COMMENT 'Data index',
  PRIMARY KEY (`entity_id`,`attribute_id`),
  FULLTEXT KEY `FTI_FULLTEXT_DATA_INDEX` (`data_index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='catalogsearch_fulltext_scope3';

--
-- Table structure for table `checkout_agreement`
--

DROP TABLE IF EXISTS `checkout_agreement`;
CREATE TABLE `checkout_agreement` (
  `agreement_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Agreement Id',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `content` text COMMENT 'Content',
  `content_height` varchar(25) DEFAULT NULL COMMENT 'Content Height',
  `checkbox_text` text COMMENT 'Checkbox Text',
  `is_active` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is Active',
  `is_html` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is Html',
  `mode` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Applied mode',
  PRIMARY KEY (`agreement_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Checkout Agreement';

--
-- Table structure for table `checkout_agreement_store`
--

DROP TABLE IF EXISTS `checkout_agreement_store`;
CREATE TABLE `checkout_agreement_store` (
  `agreement_id` int(10) unsigned NOT NULL COMMENT 'Agreement Id',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  PRIMARY KEY (`agreement_id`,`store_id`),
  KEY `CHECKOUT_AGREEMENT_STORE_STORE_ID_STORE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Checkout Agreement Store';

--
-- Table structure for table `cms_block`
--

DROP TABLE IF EXISTS `cms_block`;
CREATE TABLE `cms_block` (
  `block_id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Block ID',
  `title` varchar(255) NOT NULL COMMENT 'Block Title',
  `identifier` varchar(255) NOT NULL COMMENT 'Block String Identifier',
  `content` mediumtext COMMENT 'Block Content',
  `creation_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Block Creation Time',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Block Modification Time',
  `is_active` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Is Block Active',
  PRIMARY KEY (`block_id`),
  FULLTEXT KEY `CMS_BLOCK_TITLE_IDENTIFIER_CONTENT` (`title`,`identifier`,`content`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='CMS Block Table';

--
-- Dumping data for table `cms_block`
--

LOCK TABLES `cms_block` WRITE;
/*!40000 ALTER TABLE `cms_block` DISABLE KEYS */;
INSERT INTO `cms_block` VALUES (1,'static1 banner home1','static1_banner_home1','<div class=\"static1-top\">\r\n<div class=\"row\">\r\n<div class=\"col-md-6 col-sm-12 col-xs-12 left\">\r\n<div class=\"box1 bos\">\r\n<div class=\"box-iner\"><a href=\"#\"><img src=\"{{media url=\"wysiwyg/home1-banner1_1.jpg\"}}\" alt=\"\" /></a>\r\n<div class=\"text\">\r\n<h4>Gemma Barbershop</h4>\r\n<h3>Create and</h3>\r\n<h3>Renovate Hair Style</h3>\r\n<h3>Trends</h3>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"box2 bos\">\r\n<div class=\"box-iner\"><a href=\"#\"><img src=\"{{media url=\"wysiwyg/home1-banner3_1.jpg\"}}\" alt=\"\" /></a>\r\n<div class=\"text\">\r\n<h2>20% Off Shears</h2>\r\n<h4>Look sharp for the holidats with</h4>\r\n<h4>Our expertly crafted shears</h4>\r\n<p><a href=\"#\">Shop Now</a></p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"box3 bos\">\r\n<div class=\"box-iner\"><a href=\"#\"><img src=\"{{media url=\"wysiwyg/home1-banner4_1.jpg\"}}\" width=\"885\" height=\"325\" /> </a>\r\n<div class=\"text\">\r\n<h3>Straight Razors</h3>\r\n<p>These hand-crafted straight razors by</p>\r\n<p>Thiers Issard are made exclusively for Gemma</p>\r\n<p>Experience the perfect shave today.</p>\r\n<p><a href=\"#\">View Products</a></p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"col-md-6 col-sm-12 col-xs-12 right\">\r\n<div class=\"box1 bos\">\r\n<div class=\"box-iner\"><a href=\"#\"><img src=\"{{media url=\"wysiwyg/home1-banner2_1.jpg\"}}\" width=\"885\" height=\"650\" /></a>\r\n<div class=\"text\">\r\n<div class=\"h4\"><img src=\"{{media url=\"wysiwyg/home1-banner1-2-icon_1.png\"}}\" width=\"170\" height=\"143\" /></div>\r\n<h4>Gemma Barbershop</h4>\r\n<h3>Barbershop is not a hobby</h3>\r\n<h3>It&rsquo;s a life style</h3>\r\n<p><a href=\"#\">Shop now</a></p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"box2 bos\">\r\n<div class=\"iner-box\">\r\n<div class=\"bos1\">\r\n<div class=\"box-iner\"><a href=\"&quot;#\"><img src=\"{{media url=\"wysiwyg/home1-banner5_1.jpg\"}}\" width=\"443\" height=\"650\" /> </a>\r\n<div class=\"text\">\r\n<h3>Rarzors<em>Barbershop</em></h3>\r\n<h4>Somerville, ma</h4>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"bos2\">\r\n<div class=\"box-iner\"><a href=\"#\"> <img src=\"{{media url=\"wysiwyg/home1-banner6_1.jpg\"}}\" width=\"443\" height=\"650\" /> </a>\r\n<div class=\"text\">\r\n<h3>HOLIDAY GIFT GUIDE</h3>\r\n<p>His Holiday Essentials,</p>\r\n<p>Up To</p>\r\n<p>$50, $100, and $200</p>\r\n<p><a href=\"#\">EXPLORE COLLECTION</a></p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>','2017-04-16 11:42:23','2017-04-16 11:48:10',1),(2,'static2 home1','static2_home1','<div class=\"static2-home-conten\">\r\n<div class=\"container-inner\">\r\n<div class=\"row\">\r\n<div class=\"col-md-6 col-sm-12 \">\r\n<div class=\"box-col\"><a href=\"#\"><img src=\"{{media url=\"wysiwyg/home1-aboutus1_1.png\"}}\" width=\"300\" height=\"267\" /> </a></div>\r\n</div>\r\n<div class=\"col-md-6 col-sm-12 \">\r\n<div class=\"box-text\">\r\n<h3>About us</h3>\r\n<div class=\"icon1\"><i class=\"icon ion-scissors\">ionscissors</i>\r\n<p>Designed with the modern man in mind, the GEMMA barbershop is the quintessence of a true gentleman&rsquo;s retreat. Our mission is to ensure the capital&rsquo;s most distinguished men are always looking on top of their game.</p>\r\n<p>GEMMA products combine an old-world approach to packaging and design with the very best in modern, natural ingredients. The result is a supercharged line-up of men&rsquo;s shaving, hair, body and skin care products that together constitute a superior grooming ritual.</p>\r\n</div>\r\n<div class=\"img\"><img src=\"{{media url=\"wysiwyg/home1-aboutus-logo_1.png\"}}\" width=\"120\" height=\"131\" /></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>','2017-04-16 11:50:36','2017-04-16 11:50:36',1),(3,'Free Shipping - Enjoy shipping with our compliments','static3_home1','<div class=\"static-home-conten\">\r\n<div class=\"home-conten\">\r\n<div class=\"text\">\r\n<h3>FREE SHIPPING</h3>\r\n<h4>ENJOY SHIPPING WITH OUR COMPLIMENTS*</h4>\r\n<h4>FOR A LIMITED TIME ONLY</h4>\r\n<p>*Gift Cards excluded</p>\r\n</div>\r\n</div>\r\n</div>','2017-04-16 11:51:31','2017-04-19 07:26:45',1),(4,'Free Return, Shipping & Support 24/7','static4_home1','<div class=\"static4-home-conten\">\r\n<div class=\"container-inner\">\r\n<div class=\"box-home\">\r\n<div class=\"row\">\r\n<div class=\"col-md-4 col-sm-12 col-xs-12 box1\">\r\n<div class=\"iner-box\">\r\n<div class=\"icon\"><i class=\"zmdi zmdi-refresh-alt zmdi-hc-fw\"><span>refresh-alt</span></i></div>\r\n<div class=\"text\">\r\n<h3>Fast Shipping</h3>\r\n<p>Ship within 24 hours</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"col-md-4 col-sm-12 col-xs-12 box2 \">\r\n<div class=\"iner-box\">\r\n<div class=\"icon\"><i class=\"zmdi zmdi-truck zmdi-hc-fw\"><span>truck</span></i></div>\r\n<div class=\"text\">\r\n<h3>Free Shipping</h3>\r\n<p>Free shipping on all order</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"col-md-4 col-sm-12 col-xs-12 box3 \">\r\n<div class=\"iner-box\">\r\n<div class=\"icon\"><i class=\"zmdi zmdi-phone-ring zmdi-hc-fw\"><span>phone-ring</span></i></div>\r\n<div class=\"text\">\r\n<h3>Support 24/7</h3>\r\n<p>We support online 24 hours a day</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>','2017-04-16 11:53:12','2017-04-19 05:48:28',1),(5,'static5 home1','static5_home1','<div class=\"static5-home1\">\r\n<div class=\"box-col\"><a href=\"#\"> <img src=\"{{media url=\"wysiwyg/home1-img-left_1.jpg\"}}\" width=\"550\" height=\"652\" /> </a></div>\r\n</div>','2017-04-16 11:55:03','2017-04-16 11:56:33',1),(6,'Footer Links','footer_static','<div class=\"footer-static row\">\r\n	<div class=\"col-sm-2 col-xs\">\r\n		<div class=\"iner-logo\">\r\n			<div class=\"logo-footer\">\r\n				<a class=\"logo\" href=\"#\"><img src=\"{{media url=\"wysiwyg/logo-footer.png\"}}\" alt=\"\" /></a>\r\n			</div>\r\n			<div class=\"text-logo\">\r\n				<p>Copyright &copy; 2017 Maison Des Fleurs. Powered by BelPro Digital.</p>\r\n				<p>All rights reserved.</p>\r\n			</div>\r\n		</div>\r\n	</div>\r\n	<div class=\"col-sm-2 col-xs\">\r\n		<div class=\"footer-static-title f-title2\">\r\n			<h3>MY ACCOUNT</h3>\r\n		</div>\r\n		<div class=\"footer-static-content\">\r\n			<ul>\r\n				<li class=\"first\"><a href=\"{{store direct_url=\"customer/account/\"}}\">My Account</a></li>\r\n				<li><a href=\"{{store direct_url=\"sales/order/history/\"}}\">Order History</a></li>\r\n				<li><a href=\"{{store direct_url=\"contacts/\"}}\">Contact Us</a></li>\r\n				<li><a href=\"#\">Site Map</a></li>\r\n				<li class=\"last\"><a href=\"#\">Terms &amp; Condition</a></li>\r\n			</ul>\r\n		</div>\r\n	</div>\r\n	<div class=\"col-sm-2 col-xs\">\r\n		<div class=\"footer-static-title f-title3\">\r\n			<h3>Information</h3>\r\n		</div>\r\n		<div class=\"footer-static-content\">\r\n			<ul>	\r\n				<li class=\"first\"><a href=\"{{store direct_url=\"privacy-policy-cookie-restriction-mode\"}}\">Privacy Policy</a></li>\r\n				<li><a href=\"#\">Delivery Information</a></li>\r\n				<li><a href=\"#\">Specials </a></li>\r\n				<li><a href=\"#\">Manufactureres </a></li>\r\n				<li class=\"last\"><a href=\"#\">Site Map</a></li>\r\n			</ul>\r\n		</div>\r\n	</div>\r\n	<div class=\"col-sm-2 col-xs\">\r\n		<div class=\"footer-static-title f-title3\">\r\n			<h3>QUICK LINKS</h3>\r\n		</div>\r\n		<div class=\"footer-static-content\">\r\n			<ul>\r\n				<li class=\"first\"><a href=\"#\">New User</a></li>\r\n				<li><a href=\"#\">Help Center</a></li>\r\n				<li><a href=\"#\">Refund Policy </a></li>\r\n				<li><a href=\"#\">Report Spam </a></li>\r\n				<li class=\"last\"><a href=\"#\">FAQs</a></li>\r\n			</ul>\r\n		</div>\r\n	</div>\r\n	<div class=\"col-sm-2 col-xs\">\r\n		<div class=\"footer-static-title f-title4\">\r\n			<h3>CONTACT US</h3>\r\n		</div>\r\n		<div class=\"footer-static-content\">\r\n			<div class=\"text text1\">\r\n				<div class=\"icon\">\r\n					<i class=\"fa fa-home\"></i> <span>home</span>\r\n				</div>\r\n				<div class=\"iner-tex\">\r\n					<p>Dubai, Design District - D3 Building 1, Ground Floor, Unit 3 &amp; 5</p>\r\n					<p>Dubai - United Arab Emirates</p>\r\n				</div>\r\n			</div>\r\n			<div class=\"text text2\">\r\n				<div class=\"icon\"><i class=\"fa fa-phone\"></i> <span>phone</span></div>\r\n				<div class=\"iner-tex\">\r\n					<p>+971 4 276 5886</p>\r\n				</div>\r\n			</div>\r\n			<div class=\"text text2\">\r\n				<div class=\"icon\"><i class=\"fa fa-mobile\"></i> <span>mobile</span></div>\r\n				<div class=\"iner-tex\">\r\n					<p>+971 55 223 6866</p>\r\n				</div>\r\n			</div>			\r\n			<div class=\"text text3\">\r\n				<div class=\"icon\"><i class=\"fa fa-envelope-o\"></i> <span>mail</span></div>\r\n				<div class=\"iner-tex\">\r\n					<p>mail@maisondesfleurs.com</p>\r\n				</div>\r\n			</div>\r\n		</div>\r\n	</div>\r\n	<div class=\"col-sm-2 col-xs\">\r\n		<div class=\"footer-static-title f-title3\">\r\n			<h3>follow us on</h3>\r\n		</div>\r\n		<div class=\"footer-static-content\">\r\n			<ul class=\"link-follow\">\r\n				<li class=\"first\">\r\n					<a class=\"twitter fa fa-twitter\" title=\"Twitter\" href=\"https://twitter.com/mdf_uae\" target=\"_blank\"><span>twitter</span></a>\r\n				</li>\r\n				<li>\r\n					<a class=\"google fa fa-google-plus\" title=\"Google\" href=\"#\"><span>google </span></a>\r\n				</li>\r\n				<li>\r\n					<a class=\"facebook fa fa-facebook\" title=\"Facebook\" href=\"https://www.facebook.com/pg/Maisondesfleurs_ae-328776227268746/photos/\" target=\"_blank\"><span>facebook</span></a>\r\n				</li>\r\n				<li>\r\n					<a class=\"youtube fa fa-youtube\" title=\"Youtube\" href=\"#\"><span>youtube</span></a>\r\n				</li>\r\n				<li>\r\n					<a class=\"instagram fa fa-instagram\" title=\"instagram\" href=\"https://www.instagram.com/maisondesfleursofficial\" target=\"_blank\"><span>instagram </span></a>\r\n				</li>\r\n			</ul>\r\n		</div>\r\n	</div>\r\n</div>	','2017-04-16 12:00:49','2017-04-17 18:00:26',1),(7,'Contact us','contact_us','<div class=\"contact-us\"><iframe style=\"border: 0;\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d6305.678625317825!2d-122.39957047637722!3d37.793805380191266!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x80858063d63a0215%3A0xcba0af2dfe02048f!2s101+California+Street%2C+San+Francisco%2C+CA+94111%2C+Hoa+K%E1%BB%B3!5e0!3m2!1svi!2s!4v1419099932976\" width=\"100%\" height=\"350\"></iframe></div>','2017-04-16 12:05:58','2017-04-16 12:05:58',1),(8,'footer bottom home','footer_bottom_home','<div class=\"bottom-footer\">\r\n<div class=\"row\">\r\n<div class=\"col-md-3 col-sm-12 col-xs-12 \">\r\n<div class=\"iner-box box1\">\r\n<div class=\"icon\"><a class=\"facebook fa fa-facebook\" title=\"Facebook\" href=\"https://www.facebook.com/plazathemes1\"><span>facebook</span></a></div>\r\n</div>\r\n</div>\r\n<div class=\"col-md-3 col-sm-12 col-xs-12 \">\r\n<div class=\"iner-box box2\">\r\n<div class=\"icon\"><a class=\"twitter fa fa-twitter\" title=\"Twitter\" href=\"https://twitter.com/plazathemes\"><span>twitter</span></a></div>\r\n</div>\r\n</div>\r\n<div class=\"col-md-3 col-sm-12 col-xs-12 \">\r\n<div class=\"iner-box box3\">\r\n<div class=\"icon\"><a class=\"youtube fa fa-youtube\" title=\"Youtube\" href=\"https://www.youtube.com/user/plazathemes\"><span>youtube </span></a></div>\r\n</div>\r\n</div>\r\n<div class=\"col-md-3 col-sm-12 col-xs-12 \">\r\n<div class=\"iner-box box4\">\r\n<div class=\"icon\"><a class=\"google fa fa-google-plus\" title=\"Google\" href=\"#\"><span>google </span></a></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>','2017-04-16 12:06:31','2017-04-16 12:06:31',1),(9,'Footer payment','footer_payment','<p><img src=\"{{media url=\"wysiwyg/payment.png\"}}\" alt=\"\" /></p>','2017-04-16 12:06:55','2017-04-16 12:06:55',1),(10,'Links that show at the end of Main Navigation','pt_menu_links_home1','<div class=\"pt_menu\">\r\n	<div class=\"parentMenu\">\r\n		<a href=\"#\"><span>Silk Flowers</span></a>\r\n	</div>\r\n</div>\r\n\r\n<div class=\"pt_menu\">\r\n	<div class=\"parentMenu\">\r\n		<a href=\"#\"><span>The Maison</span></a>\r\n	</div>\r\n</div>\r\n\r\n<div class=\"pt_menu\">\r\n	<div class=\"parentMenu\">\r\n		<a href=\"#\"><span>Contact Us</span></a>\r\n	</div>\r\n</div>','2017-04-16 12:07:20','2017-04-19 13:36:20',1),(11,'Main Banner - Home 2','main_banner_home2','<div class=\"static1-top\">\r\n<div class=\"row\">\r\n<div class=\"col-md-12 col-sm-12 col-xs-12 left\">\r\n<div class=\"box1 bos\">\r\n<div class=\"box-iner\"><a href=\"#\"><img src=\"{{media url=\"wysiwyg/Slider_photo-min.jpg\"}}\" width=\"1772\" height=\"555\" /></a>\r\n<div class=\"text\">\r\n<h4>Maison Des Fleurs</h4>\r\n<h3>Our</h3>\r\n<h3>Philosophy</h3>\r\n<h3>is Excellence</h3>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>','2017-04-18 11:08:16','2017-04-19 13:44:17',1),(12,'After Main Banners 1 - Home 2','after_main_banners1_home2','<div class=\"static1-top\">\r\n<div class=\"row equal-height\">\r\n<div class=\"col-md-6 col-sm-12 col-xs-12 left\">\r\n<div class=\"box1 bos\">\r\n<div class=\"box-iner\"><a href=\"#\"><img src=\"{{media url=\"wysiwyg/banner2-min.png\"}}\" width=\"879\" height=\"721\" /></a>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"col-md-6 col-sm-12 col-xs-12 right\">\r\n<div class=\"box1 bos\">\r\n<div class=\"box-iner\"><a href=\"#\"> <img src=\"{{media url=\"wysiwyg/Maison_Des_Fleurs_-_Fresh_and_Exotic_Blooms-min.jpg\"}}\" width=\"911\" height=\"718\" /> </a>\r\n<div class=\"text\">\r\n<div class=\"h4\"><img src=\"{{media url=\"wysiwyg/flower_icon.png\"}}\" width=\"94\" height=\"136\" /></div>\r\n<h4>Maison Des Fleurs</h4>\r\n<h3>Fresh &amp; Exotic Blooms</h3>\r\n<p><a href=\"#\">Shop the Collection</a></p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>','2017-04-18 11:45:37','2017-04-19 13:50:27',1),(13,'After Main Banners 2 - Home 2','after_main_banners2_home2','<div class=\"static1-top\">\r\n<div class=\"row equal-height\">\r\n<div class=\"col-md-8 col-sm-12 col-xs-12 left\">\r\n<div class=\"box1 bos\">\r\n<div class=\"box-iner\"><a href=\"#\"><img src=\"{{media url=\"wysiwyg/banner_4-min.png\"}}\" width=\"1182\" height=\"486\" /></a>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"col-md-4 col-sm-12 col-xs-12 right\">\r\n<div class=\"box1 bos\">\r\n<div class=\"box-iner\"><a href=\"#\"> <img src=\"{{media url=\"wysiwyg/banner_5_-min.png\"}}\" width=\"604\" height=\"487\" /> </a>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>','2017-04-18 11:48:41','2017-04-19 13:51:21',1),(14,'About Us - Home 2','about_us_home2','<div class=\"static2-home-conten\">\r\n<div class=\"container-inner\">\r\n<div class=\"row\">\r\n<div class=\"col-md-6 col-sm-12 \">\r\n<div class=\"box-col\"><a href=\"#\"><img src=\"{{media url=\"wysiwyg/about-us-min.png\"}}\" width=\"611\" height=\"589\" /> </a></div>\r\n</div>\r\n<div class=\"col-md-6 col-sm-12 \">\r\n<div class=\"box-text\">\r\n<h3>About us</h3>\r\n<div class=\"img\"><img src=\"{{media url=\"wysiwyg/Flower_icon_1.png\"}}\" alt=\"\" /></div>\r\n<p>At Maison Des Fleurs, the French tradition of know-how and elegance remains intact and is preciously transmitted by a highly professional florist team, whose creativity, ability and sensibility is unmatched. Just by magic, our expert hands give life to your most glamorous or passionate dreams.</p>\r\n<p>At Maison Des Fleurs, each floral creation is unique. Each arrangement is a reflection of who you are and will express your most profound emotions better than any other message, in luxurious and exclusive signature boxes.</p>\r\n</div>\r\n<div class=\"img\"><img src=\"{{media url=\"wysiwyg/logo_aboutus.png\"}}\" width=\"170\" height=\"110\" /></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>','2017-04-19 06:58:01','2017-04-19 08:56:45',1),(15,'Footer - Home 2','footer_home2','<div class=\"footer-static row\">\r\n	<div class=\"col-sm-2 col-xs\">\r\n		<div class=\"iner-logo\">\r\n			<div class=\"logo-footer\">\r\n				<a class=\"logo\" href=\"#\">\r\n					<div class=\"sprites sprite-logo-footer\"></div>\r\n				</a>\r\n			</div>\r\n			<div class=\"text-logo\">\r\n				<p>Copyright &copy; 2017 Maison Des Fleurs.</p>\r\n				<p>All rights reserved.</p>\r\n\r\n				<div class=\"powered_by\">\r\n					<p>Powered by \r\n						<a href=\"http://www.belprodigital.com/\" target=\"_blank\">\r\n							<span class=\"sprites sprite-belpro\"></span>\r\n						</a>\r\n					</p>\r\n				</div>\r\n			</div>\r\n		</div>\r\n	</div>\r\n	<div class=\"col-sm-2 col-xs\">\r\n		<div class=\"footer-static-title f-title2\">\r\n			<h3>Useful Information</h3>\r\n		</div>\r\n		<div class=\"footer-static-content\">\r\n			<ul>\r\n				<li class=\"first\"><a href=\"#\">Download Brochure</a></li>\r\n				<li><a href=\"#\">Delivery</a></li>\r\n				<li><a href=\"}\">Gift Cards</a></li>\r\n				<li><a href=\"#\">News</a></li>\r\n				<li><a href=\"#\">FAQs</a></li>\r\n				<li class=\"last\"><a href=\"#\">Terms &amp; Condition</a></li>\r\n			</ul>\r\n		</div>\r\n	</div>\r\n	<div class=\"col-sm-2 col-xs\">\r\n		<div class=\"footer-static-title f-title3\">\r\n			<h3>Read Us</h3>\r\n		</div>\r\n		<div class=\"footer-static-content\">\r\n			<ul>\r\n				<li class=\"first\"><a href=\"#\">The Philosophy</a></li>\r\n				<li><a href=\"#\">Careers</a></li>\r\n				<li><a href=\"#\">Franchise Requests</a></li>\r\n				<li><a href=\"#\">Terms &amp; Conditions</a></li>\r\n				<li class=\"last\"><a href=\"#\">Privacy Policy</a></li>\r\n			</ul>\r\n		</div>\r\n	</div>\r\n	<div class=\"col-sm-2 col-xs\">\r\n		<div class=\"footer-static-title f-title3\">\r\n			<h3>Payment Options</h3>\r\n		</div>\r\n		<div class=\"footer-static-content\">\r\n			<ul class=\"payment-options\">\r\n				<li><div class=\"sprites sprite-visa\"></div></li>\r\n				<li><div class=\"sprites sprite-mastercard\"></div></li>\r\n				<li><div class=\"sprites sprite-american-express\"></div></li>\r\n			</ul>\r\n		</div>\r\n	</div>\r\n	<div class=\"col-sm-2 col-xs\">\r\n		<div class=\"footer-static-title f-title4\">\r\n			<h3>Contact Us</h3>\r\n		</div>\r\n		<div class=\"footer-static-content\">\r\n			<div class=\"text text1\">\r\n				<div class=\"icon\"><i class=\"fa fa-home\"></i> <span>home</span></div>\r\n				<div class=\"iner-tex\">\r\n					<p>\r\n						Dubai, Design District - D3<br />Building 1, Ground Floor, Unit 3 &amp; 5<br />Dubai - United Arab Emirates\r\n					</p>\r\n				</div>\r\n			</div>\r\n			<div class=\"text text2\">\r\n				<div class=\"icon\"><i class=\"fa fa-phone\"></i> <span>phone</span></div>\r\n				<div class=\"iner-tex\">\r\n					<p>+971 4 276 5886</p>\r\n				</div>\r\n			</div>\r\n			<div class=\"text text2\">\r\n				<div class=\"icon\"><i class=\"fa fa-mobile\"></i> <span>mobile</span></div>\r\n				<div class=\"iner-tex\">\r\n					<p>+971 55 223 6866</p>\r\n				</div>\r\n			</div>\r\n			<div class=\"text text3\">\r\n				<div class=\"icon\"><i class=\"fa fa-envelope-o\"></i> <span>mail</span></div>\r\n				<div class=\"iner-tex\">\r\n					<p><a href=\"mailto:mail@maisondesfleurs.com\">mail@maisondesfleurs.com</a></p>\r\n				</div>\r\n			</div>\r\n		</div>\r\n	</div>\r\n	<div class=\"col-sm-2 col-xs\">\r\n		<div class=\"footer-static-title f-title3\">\r\n			<h3>Social Media</h3>\r\n		</div>\r\n		<div class=\"footer-static-content\">\r\n			<ul class=\"link-follow\">\r\n				<li class=\"first\">\r\n					<a class=\"twitter fa fa-twitter\" title=\"Twitter\" href=\"https://twitter.com/mdf_uae\" target=\"_blank\"><span>twitter</span></a>\r\n				</li>\r\n				<li><a class=\"google fa fa-google-plus\" title=\"Google\" href=\"#\"><span>google </span></a></li>\r\n				<li><a class=\"facebook fa fa-facebook\" title=\"Facebook\" href=\"https://www.facebook.com/pg/Maisondesfleurs_ae-328776227268746/photos/\" target=\"_blank\"><span>facebook</span></a></li>\r\n				<li><a class=\"youtube fa fa-youtube\" title=\"Youtube\" href=\"#\"><span>youtube</span></a></li>\r\n				<li><a class=\"instagram fa fa-instagram\" title=\"instagram\" href=\"https://www.instagram.com/maisondesfleursofficial\" target=\"_blank\"><span>instagram </span></a></li>\r\n			</ul>\r\n		</div>\r\n	</div>\r\n</div>','2017-04-19 08:17:31','2017-04-19 08:59:51',1),(16,'Featured Products image on the left','featured_products_image_home2','<div class=\"static5-home1\">\r\n<div class=\"box-col\"><a href=\"#\"> <img src=\"{{media url=\"wysiwyg/New_Trendy_Products-min.jpg\"}}\" width=\"550\" height=\"607\" /> </a></div>\r\n</div>','2017-04-19 08:53:49','2017-04-19 08:53:49',1);
/*!40000 ALTER TABLE `cms_block` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_block_store`
--

DROP TABLE IF EXISTS `cms_block_store`;
CREATE TABLE `cms_block_store` (
  `block_id` smallint(6) NOT NULL COMMENT 'Block ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  PRIMARY KEY (`block_id`,`store_id`),
  KEY `CMS_BLOCK_STORE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS Block To Store Linkage Table';

--
-- Dumping data for table `cms_block_store`
--

LOCK TABLES `cms_block_store` WRITE;
/*!40000 ALTER TABLE `cms_block_store` DISABLE KEYS */;
INSERT INTO `cms_block_store` VALUES (1,0),(2,0),(3,0),(4,0),(5,0),(6,0),(7,0),(8,0),(9,0),(10,2),(11,2),(12,2),(13,2),(14,2),(15,2),(16,2);
/*!40000 ALTER TABLE `cms_block_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_page`
--

DROP TABLE IF EXISTS `cms_page`;
CREATE TABLE `cms_page` (
  `page_id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Page ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Page Title',
  `page_layout` varchar(255) DEFAULT NULL COMMENT 'Page Layout',
  `meta_keywords` text COMMENT 'Page Meta Keywords',
  `meta_description` text COMMENT 'Page Meta Description',
  `identifier` varchar(100) DEFAULT NULL COMMENT 'Page String Identifier',
  `content_heading` varchar(255) DEFAULT NULL COMMENT 'Page Content Heading',
  `content` mediumtext COMMENT 'Page Content',
  `creation_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Page Creation Time',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Page Modification Time',
  `is_active` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Is Page Active',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Page Sort Order',
  `layout_update_xml` text COMMENT 'Page Layout Update Content',
  `custom_theme` varchar(100) DEFAULT NULL COMMENT 'Page Custom Theme',
  `custom_root_template` varchar(255) DEFAULT NULL COMMENT 'Page Custom Template',
  `custom_layout_update_xml` text COMMENT 'Page Custom Layout Update Content',
  `custom_theme_from` date DEFAULT NULL COMMENT 'Page Custom Theme Active From Date',
  `custom_theme_to` date DEFAULT NULL COMMENT 'Page Custom Theme Active To Date',
  `meta_title` varchar(255) DEFAULT NULL COMMENT 'Page Meta Title',
  PRIMARY KEY (`page_id`),
  KEY `CMS_PAGE_IDENTIFIER` (`identifier`),
  FULLTEXT KEY `CMS_PAGE_TITLE_META_KEYWORDS_META_DESCRIPTION_IDENTIFIER_CONTENT` (`title`,`meta_keywords`,`meta_description`,`identifier`,`content`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='CMS Page Table';

--
-- Dumping data for table `cms_page`
--

LOCK TABLES `cms_page` WRITE;
/*!40000 ALTER TABLE `cms_page` DISABLE KEYS */;
INSERT INTO `cms_page` VALUES (1,'404 Not Found','2columns-right','Page keywords','Page description','no-route','Whoops, our bad...','<dl>\r\n<dt>The page you requested was not found, and we have a fine guess why.</dt>\r\n<dd>\r\n<ul class=\"disc\">\r\n<li>If you typed the URL directly, please make sure the spelling is correct.</li>\r\n<li>If you clicked on a link to get here, the link is outdated.</li>\r\n</ul></dd>\r\n</dl>\r\n<dl>\r\n<dt>What can you do?</dt>\r\n<dd>Have no fear, help is near! There are many ways you can get back on track with Magento Store.</dd>\r\n<dd>\r\n<ul class=\"disc\">\r\n<li><a href=\"#\" onclick=\"history.go(-1); return false;\">Go back</a> to the previous page.</li>\r\n<li>Use the search bar at the top of the page to search for your products.</li>\r\n<li>Follow these links to get you back on track!<br /><a href=\"{{store url=\"\"}}\">Store Home</a> <span class=\"separator\">|</span> <a href=\"{{store url=\"customer/account\"}}\">My Account</a></li></ul></dd></dl>\r\n','2017-04-13 06:50:09','2017-04-13 06:50:09',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'Home Page','1column','','','home','','','2017-04-13 06:50:09','2017-04-18 09:00:19',1,0,'<!--\r\n    <referenceContainer name=\"right\">\r\n        <action method=\"unsetChild\"><argument name=\"alias\" xsi:type=\"string\">right.reports.product.viewed</argument></action>\r\n        <action method=\"unsetChild\"><argument name=\"alias\" xsi:type=\"string\">right.reports.product.compared</argument></action>\r\n    </referenceContainer>-->','','',NULL,NULL,NULL,''),(3,'Enable Cookies','1column',NULL,NULL,'enable-cookies','What are Cookies?','<div class=\"enable-cookies cms-content\">\r\n<p>\"Cookies\" are little pieces of data we send when you visit our store. Cookies help us get to know you better and personalize your experience. Plus they help protect you and other shoppers from fraud.</p>\r\n<p style=\"margin-bottom: 20px;\">Set your browser to accept cookies so you can buy items, save items, and receive customized recommendations. Here’s how:</p>\r\n<ul>\r\n<li><a href=\"https://support.google.com/accounts/answer/61416?hl=en\" target=\"_blank\">Google Chrome</a></li>\r\n<li><a href=\"http://windows.microsoft.com/en-us/internet-explorer/delete-manage-cookies\" target=\"_blank\">Internet Explorer</a></li>\r\n<li><a href=\"http://support.apple.com/kb/PH19214\" target=\"_blank\">Safari</a></li>\r\n<li><a href=\"https://support.mozilla.org/en-US/kb/enable-and-disable-cookies-website-preferences\" target=\"_blank\">Mozilla/Firefox</a></li>\r\n</ul>\r\n</div>','2017-04-13 06:50:09','2017-04-13 06:50:09',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'Privacy and Cookie Policy','1column',NULL,NULL,'privacy-policy-cookie-restriction-mode','Privacy and Cookie Policy','<div class=\"privacy-policy cms-content\">\n    <div class=\"message info\">\n        <span>\n            Please replace this text with you Privacy Policy.\n            Please add any additional cookies your website uses below (e.g. Google Analytics).\n        </span>\n    </div>\n    <p>\n        This privacy policy sets out how this website (hereafter \"the Store\") uses and protects any information that\n        you give the Store while using this website. The Store is committed to ensuring that your privacy is protected.\n        Should we ask you to provide certain information by which you can be identified when using this website, then\n        you can be assured that it will only be used in accordance with this privacy statement. The Store may change\n        this policy from time to time by updating this page. You should check this page from time to time to ensure\n        that you are happy with any changes.\n    </p>\n    <h2>What we collect</h2>\n    <p>We may collect the following information:</p>\n    <ul>\n        <li>name</li>\n        <li>contact information including email address</li>\n        <li>demographic information such as postcode, preferences and interests</li>\n        <li>other information relevant to customer surveys and/or offers</li>\n    </ul>\n    <p>\n        For the exhaustive list of cookies we collect see the <a href=\"#list\">List of cookies we collect</a> section.\n    </p>\n    <h2>What we do with the information we gather</h2>\n    <p>\n        We require this information to understand your needs and provide you with a better service,\n        and in particular for the following reasons:\n    </p>\n    <ul>\n        <li>Internal record keeping.</li>\n        <li>We may use the information to improve our products and services.</li>\n        <li>\n            We may periodically send promotional emails about new products, special offers or other information which we\n            think you may find interesting using the email address which you have provided.\n        </li>\n        <li>\n            From time to time, we may also use your information to contact you for market research purposes.\n            We may contact you by email, phone, fax or mail. We may use the information to customise the website\n            according to your interests.\n        </li>\n    </ul>\n    <h2>Security</h2>\n    <p>\n        We are committed to ensuring that your information is secure. In order to prevent unauthorised access or\n        disclosure, we have put in place suitable physical, electronic and managerial procedures to safeguard and\n        secure the information we collect online.\n    </p>\n    <h2>How we use cookies</h2>\n    <p>\n        A cookie is a small file which asks permission to be placed on your computer\'s hard drive.\n        Once you agree, the file is added and the cookie helps analyse web traffic or lets you know when you visit\n        a particular site. Cookies allow web applications to respond to you as an individual. The web application\n        can tailor its operations to your needs, likes and dislikes by gathering and remembering information about\n        your preferences.\n    </p>\n    <p>\n        We use traffic log cookies to identify which pages are being used. This helps us analyse data about web page\n        traffic and improve our website in order to tailor it to customer needs. We only use this information for\n        statistical analysis purposes and then the data is removed from the system.\n    </p>\n    <p>\n        Overall, cookies help us provide you with a better website, by enabling us to monitor which pages you find\n        useful and which you do not. A cookie in no way gives us access to your computer or any information about you,\n        other than the data you choose to share with us. You can choose to accept or decline cookies.\n        Most web browsers automatically accept cookies, but you can usually modify your browser setting\n        to decline cookies if you prefer. This may prevent you from taking full advantage of the website.\n    </p>\n    <h2>Links to other websites</h2>\n    <p>\n        Our website may contain links to other websites of interest. However, once you have used these links\n        to leave our site, you should note that we do not have any control over that other website.\n        Therefore, we cannot be responsible for the protection and privacy of any information which you provide whilst\n        visiting such sites and such sites are not governed by this privacy statement.\n        You should exercise caution and look at the privacy statement applicable to the website in question.\n    </p>\n    <h2>Controlling your personal information</h2>\n    <p>You may choose to restrict the collection or use of your personal information in the following ways:</p>\n    <ul>\n        <li>\n            whenever you are asked to fill in a form on the website, look for the box that you can click to indicate\n            that you do not want the information to be used by anybody for direct marketing purposes\n        </li>\n        <li>\n            if you have previously agreed to us using your personal information for direct marketing purposes,\n            you may change your mind at any time by letting us know using our Contact Us information\n        </li>\n    </ul>\n    <p>\n        We will not sell, distribute or lease your personal information to third parties unless we have your permission\n        or are required by law to do so. We may use your personal information to send you promotional information\n        about third parties which we think you may find interesting if you tell us that you wish this to happen.\n    </p>\n    <p>\n        You may request details of personal information which we hold about you under the Data Protection Act 1998.\n        A small fee will be payable. If you would like a copy of the information held on you please email us this\n        request using our Contact Us information.\n    </p>\n    <p>\n        If you believe that any information we are holding on you is incorrect or incomplete,\n        please write to or email us as soon as possible, at the above address.\n        We will promptly correct any information found to be incorrect.\n    </p>\n    <h2><a name=\"list\"></a>List of cookies we collect</h2>\n    <p>The table below lists the cookies we collect and what information they store.</p>\n    <table class=\"data-table data-table-definition-list\">\n        <thead>\n        <tr>\n            <th>Cookie Name</th>\n            <th>Cookie Description</th>\n        </tr>\n        </thead>\n        <tbody>\n            <tr>\n                <th>FORM_KEY</th>\n                <td>Stores randomly generated key used to prevent forged requests.</td>\n            </tr>\n            <tr>\n                <th>PHPSESSID</th>\n                <td>Your session ID on the server.</td>\n            </tr>\n            <tr>\n                <th>GUEST-VIEW</th>\n                <td>Allows guests to view and edit their orders.</td>\n            </tr>\n            <tr>\n                <th>PERSISTENT_SHOPPING_CART</th>\n                <td>A link to information about your cart and viewing history, if you have asked for this.</td>\n            </tr>\n            <tr>\n                <th>STF</th>\n                <td>Information on products you have emailed to friends.</td>\n            </tr>\n            <tr>\n                <th>STORE</th>\n                <td>The store view or language you have selected.</td>\n            </tr>\n            <tr>\n                <th>USER_ALLOWED_SAVE_COOKIE</th>\n                <td>Indicates whether a customer allowed to use cookies.</td>\n            </tr>\n            <tr>\n                <th>MAGE-CACHE-SESSID</th>\n                <td>Facilitates caching of content on the browser to make pages load faster.</td>\n            </tr>\n            <tr>\n                <th>MAGE-CACHE-STORAGE</th>\n                <td>Facilitates caching of content on the browser to make pages load faster.</td>\n            </tr>\n            <tr>\n                <th>MAGE-CACHE-STORAGE-SECTION-INVALIDATION</th>\n                <td>Facilitates caching of content on the browser to make pages load faster.</td>\n            </tr>\n            <tr>\n                <th>MAGE-CACHE-TIMEOUT</th>\n                <td>Facilitates caching of content on the browser to make pages load faster.</td>\n            </tr>\n            <tr>\n                <th>SECTION-DATA-IDS</th>\n                <td>Facilitates caching of content on the browser to make pages load faster.</td>\n            </tr>\n            <tr>\n                <th>PRIVATE_CONTENT_VERSION</th>\n                <td>Facilitates caching of content on the browser to make pages load faster.</td>\n            </tr>\n            <tr>\n                <th>X-MAGENTO-VARY</th>\n                <td>Facilitates caching of content on the server to make pages load faster.</td>\n            </tr>\n            <tr>\n                <th>MAGE-TRANSLATION-FILE-VERSION</th>\n                <td>Facilitates translation of content to other languages.</td>\n            </tr>\n            <tr>\n                <th>MAGE-TRANSLATION-STORAGE</th>\n                <td>Facilitates translation of content to other languages.</td>\n            </tr>\n        </tbody>\n    </table>\n</div>','2017-04-13 06:50:09','2017-04-13 06:50:09',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,'Contact Us','1column','','','contact-us','Contact Us','<p>Coming soon.</p>','2017-04-16 17:33:01','2017-04-16 17:33:01',1,0,'',NULL,NULL,NULL,NULL,NULL,''),(6,'Home Page - 2','1column','','','home-2','','','2017-04-18 07:32:49','2017-04-19 09:06:20',1,0,'',NULL,NULL,NULL,NULL,NULL,''),(7,'Home - Qatar','1column','','','home-qatar','','','2017-04-19 10:12:09','2017-04-19 10:12:09',1,0,'',NULL,NULL,NULL,NULL,NULL,'');
/*!40000 ALTER TABLE `cms_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_page_store`
--

DROP TABLE IF EXISTS `cms_page_store`;
CREATE TABLE `cms_page_store` (
  `page_id` smallint(6) NOT NULL COMMENT 'Page ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  PRIMARY KEY (`page_id`,`store_id`),
  KEY `CMS_PAGE_STORE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS Page To Store Linkage Table';

--
-- Dumping data for table `cms_page_store`
--

LOCK TABLES `cms_page_store` WRITE;
/*!40000 ALTER TABLE `cms_page_store` DISABLE KEYS */;
INSERT INTO `cms_page_store` VALUES (1,0),(3,0),(4,0),(5,0),(2,1),(6,2),(7,3);
/*!40000 ALTER TABLE `cms_page_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_config_data`
--

DROP TABLE IF EXISTS `core_config_data`;
CREATE TABLE `core_config_data` (
  `config_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Config Id',
  `scope` varchar(8) NOT NULL DEFAULT 'default' COMMENT 'Config Scope',
  `scope_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Config Scope Id',
  `path` varchar(255) NOT NULL DEFAULT 'general' COMMENT 'Config Path',
  `value` text COMMENT 'Config Value',
  PRIMARY KEY (`config_id`),
  UNIQUE KEY `CORE_CONFIG_DATA_SCOPE_SCOPE_ID_PATH` (`scope`,`scope_id`,`path`)
) ENGINE=InnoDB AUTO_INCREMENT=403 DEFAULT CHARSET=utf8 COMMENT='Config Data';

--
-- Dumping data for table `core_config_data`
--

LOCK TABLES `core_config_data` WRITE;
/*!40000 ALTER TABLE `core_config_data` DISABLE KEYS */;
INSERT INTO `core_config_data` VALUES ('1','default','0','web/seo/use_rewrites','1'),('2','default','0','web/unsecure/base_url','http://127.0.0.1:8888/maisondesfleurs/'),('3','default','0','web/secure/base_url','https://127.0.0.1:8888/maisondesfleurs/'),('4','default','0','general/locale/code','en_US'),('5','default','0','web/secure/use_in_frontend','0'),('6','default','0','web/secure/use_in_adminhtml','0'),('7','default','0','general/locale/timezone','Asia/Dubai'),('8','default','0','currency/options/base','AED'),('9','default','0','currency/options/default','AED'),('10','default','0','currency/options/allow','EUR,USD,AED'),('11','default','0','general/region/display_all','1'),('12','default','0','general/region/state_required','AT,BR,CA,EE,FI,LV,LT,RO,ES,CH,US'),('13','default','0','catalog/category/root_id','2'),('14','default','0','web/unsecure/base_link_url','http://127.0.0.1:8888/maisondesfleurs/'),('15','default','0','web/unsecure/base_static_url',NULL),('16','default','0','web/unsecure/base_media_url',NULL),('17','default','0','web/secure/base_link_url','https://127.0.0.1:8888/maisondesfleurs/'),('18','default','0','web/secure/base_static_url',NULL),('19','default','0','web/secure/base_media_url',NULL),('20','default','0','web/cookie/cookie_path',NULL),('21','default','0','web/cookie/cookie_domain',NULL),('22','default','0','web/cookie/cookie_httponly','1'),('23','stores','1','design/head/title_prefix',NULL),('24','stores','1','design/head/title_suffix',NULL),('25','stores','1','design/head/includes',NULL),('26','stores','1','design/header/logo_width',NULL),('27','stores','1','design/header/logo_height',NULL),('28','stores','1','design/footer/absolute_footer',NULL),('30','stores','1','design/pagination/pagination_frame_skip',NULL),('31','stores','1','design/pagination/anchor_text_for_previous',NULL),('32','stores','1','design/pagination/anchor_text_for_next',NULL),('33','stores','1','design/watermark/image_size',NULL),('34','stores','1','design/watermark/image_imageOpacity',NULL),('35','stores','1','design/watermark/small_image_size',NULL),('36','stores','1','design/watermark/small_image_imageOpacity',NULL),('37','stores','1','design/watermark/thumbnail_size',NULL),('38','stores','1','design/watermark/thumbnail_imageOpacity',NULL),('39','stores','1','design/email/logo_alt',NULL),('40','stores','1','design/email/logo_width',NULL),('41','stores','1','design/email/logo_height',NULL),('42','stores','1','design/watermark/swatch_image_size',NULL),('43','stores','1','design/watermark/swatch_image_imageOpacity',NULL),('44','default','0','design/head/default_title','Magento Commerce'),('45','default','0','design/head/title_prefix',NULL),('46','default','0','design/head/title_suffix',NULL),('47','default','0','design/head/default_description','Default Description'),('48','default','0','design/head/default_keywords','Magento, Varien, E-commerce'),('49','default','0','design/head/includes',NULL),('50','default','0','design/head/demonotice','0'),('51','default','0','design/header/logo_width',NULL),('52','default','0','design/header/logo_height',NULL),('53','default','0','design/header/logo_alt','Magento Commerce'),('54','default','0','design/header/welcome','Default welcome msg!'),('55','default','0','design/footer/copyright','Copyright © 2017 Magento, Inc. All rights reserved.'),('56','default','0','design/footer/absolute_footer',NULL),('58','default','0','design/pagination/pagination_frame','5'),('59','default','0','design/pagination/pagination_frame_skip',NULL),('60','default','0','design/pagination/anchor_text_for_previous',NULL),('61','default','0','design/pagination/anchor_text_for_next',NULL),('62','default','0','design/watermark/image_size',NULL),('63','default','0','design/watermark/image_imageOpacity',NULL),('64','default','0','design/watermark/image_position','stretch'),('65','default','0','design/watermark/small_image_size',NULL),('66','default','0','design/watermark/small_image_imageOpacity',NULL),('67','default','0','design/watermark/small_image_position','stretch'),('68','default','0','design/watermark/thumbnail_size',NULL),('69','default','0','design/watermark/thumbnail_imageOpacity',NULL),('70','default','0','design/watermark/thumbnail_position','stretch'),('71','default','0','design/email/logo_alt',NULL),('72','default','0','design/email/logo_width',NULL),('73','default','0','design/email/logo_height',NULL),('74','default','0','design/email/header_template','design_email_header_template'),('75','default','0','design/email/footer_template','design_email_footer_template'),('76','default','0','design/watermark/swatch_image_size',NULL),('77','default','0','design/watermark/swatch_image_imageOpacity',NULL),('78','default','0','design/watermark/swatch_image_position','stretch'),('82','default','0','design/theme/theme_id','9'),('83','stores','1','design/head/default_title','Maison Des Fleurs'),('84','stores','1','design/header/logo_src','stores/1/logo.gif'),('85','stores','1','design/header/logo_alt','Maison Des Fleurs'),('86','default','0','dev/restrict/allow_ips',NULL),('87','default','0','dev/debug/template_hints_storefront','0'),('88','default','0','dev/debug/template_hints_admin','0'),('89','default','0','dev/debug/template_hints_blocks','0'),('90','default','0','dev/template/allow_symlink','0'),('91','default','0','dev/translate_inline/active','0'),('92','default','0','dev/translate_inline/active_admin','0'),('93','default','0','dev/js/merge_files','0'),('94','default','0','dev/js/enable_js_bundling','0'),('95','default','0','dev/js/minify_files','0'),('96','default','0','dev/css/merge_css_files','0'),('97','default','0','dev/css/minify_files','0'),('98','default','0','dev/static/sign','1'),('100','default','0','brandslider/general/enable_frontend','1'),('101','default','0','brandslider/general/auto','0'),('102','default','0','brandslider/general/pagination','500'),('103','default','0','brandslider/general/qty','6'),('104','default','0','brandslider/general/rows','1'),('105','default','0','brandslider/general/show_description','0'),('106','default','0','brandslider/general/show_next_back','1'),('107','default','0','brandslider/general/show_navigation_control','1'),('108','default','0','randomproductslider/general/enable_frontend','1'),('109','default','0','randomproductslider/general/title','Random'),('110','default','0','randomproductslider/general/auto','1'),('111','default','0','randomproductslider/general/speed',NULL),('112','default','0','randomproductslider/general/pagination','3000'),('113','default','0','randomproductslider/general/qty','12'),('114','default','0','randomproductslider/general/rows','3'),('115','default','0','randomproductslider/general/addtocart','0'),('116','default','0','randomproductslider/general/wishlist','0'),('117','default','0','randomproductslider/general/compare','0'),('118','default','0','randomproductslider/general/show_next_back','1'),('119','default','0','randomproductslider/general/show_navigation_control','0'),('121','default','0','producttab/new_status/enabled','1'),('122','default','0','producttab/new_status/product_type','0,2,4'),('123','default','0','producttab/new_status/items','4'),('124','default','0','producttab/new_status/row','1'),('125','default','0','producttab/new_status/speed','3000'),('126','default','0','producttab/new_status/qty','8'),('127','default','0','producttab/new_status/addtocart','1'),('128','default','0','producttab/new_status/wishlist','1'),('129','default','0','producttab/new_status/compare','1'),('130','default','0','producttab/new_status/navigation','1'),('131','default','0','producttab/new_status/pagination','0'),('132','default','0','producttab/new_status/auto','0'),('133','default','0','persistent/options/enabled','1'),('134','default','0','admin/security/use_case_sensitive_login','0'),('135','default','0','admin/dashboard/enable_charts','1'),('136','default','0','instagramgallery/general/isactive','1'),('137','default','0','instagramgallery/general/display_title','1'),('138','default','0','instagramgallery/general/title','<a href=\"#\">#maisondesfleurs</a> On Instagram'),('139','default','0','instagramgallery/general/users_id','4150331977'),('140','default','0','instagramgallery/general/access_token','4150331977.1677ed0.f45c5b175574414495a43bfb0e4247c0'),('141','default','0','instagramgallery/general/limit_image','6'),('142','default','0','instagramgallery/general/full_name','1'),('143','default','0','instagramgallery/general/target','_self'),('144','default','0','instagramgallery/general/type_popup','thumb'),('145','default','0','featureproductslider/new_status/enabled','1'),('146','default','0','featureproductslider/new_status/items','4'),('147','default','0','featureproductslider/new_status/row','1'),('148','default','0','featureproductslider/new_status/speed','500'),('149','default','0','featureproductslider/new_status/qty','12'),('150','default','0','featureproductslider/new_status/addtocart','1'),('151','default','0','featureproductslider/new_status/wishlist','1'),('152','default','0','featureproductslider/new_status/compare','1'),('153','default','0','featureproductslider/new_status/navigation','1'),('154','default','0','featureproductslider/new_status/pagination','0'),('155','default','0','featureproductslider/new_status/auto','0'),('156','default','0','pricecountdown/general/enabled','1'),('157','default','0','pricecountdown/countdown_slider/enabled','1'),('158','default','0','pricecountdown/countdown_slider/use_countdown','1'),('159','default','0','pricecountdown/countdown_slider/title','Deals of the week'),('160','default','0','pricecountdown/countdown_slider/show_price','1'),('161','default','0','pricecountdown/countdown_slider/show_add_cart','1'),('162','default','0','pricecountdown/countdown_slider/show_add_wishlist','1'),('163','default','0','pricecountdown/countdown_slider/show_add_compare','1'),('164','default','0','pricecountdown/countdown_slider/show_rating','1'),('165','default','0','pricecountdown/countdown_slider/show_short_description','1'),('166','default','0','pricecountdown/countdown_slider/short_description_length','100'),('167','default','0','pricecountdown/countdown_slider/quantity','10'),('168','default','0','pricecountdown/countdown_slider/auto','1'),('169','default','0','pricecountdown/countdown_slider/speed','500'),('170','default','0','pricecountdown/countdown_slider/item_default','1'),('171','default','0','pricecountdown/countdown_slider/item_desktop','1'),('172','default','0','pricecountdown/countdown_slider/item_desktop_small','2'),('173','default','0','pricecountdown/countdown_slider/item_tablet','2'),('174','default','0','pricecountdown/countdown_slider/item_mobile','1'),('175','default','0','pricecountdown/countdown_slider/row_number','1'),('176','default','0','pricecountdown/countdown_slider/show_navigation','1'),('177','default','0','pricecountdown/countdown_slider/show_pagination','0'),('178','default','0','pricecountdown/in_product_list/enabled','0'),('179','default','0','pricecountdown/in_product_view/enabled','0'),('180','default','0','pricecountdown/in_product_view/insertion','before'),('181','default','0','pricecountdown/in_product_view/parent_element',NULL),('182','default','0','pricecountdown/in_product_view/children_element',NULL),('183','default','0','mfblog/general/enable_frontend','1'),('184','default','0','mfblog/general/title','Latest News'),('185','default','0','mfblog/general/des','Aenean commodo ligula eget dolor Aenean massa. Portals seize data-driven, tag expedite. '),('186','default','0','mfblog/general/auto','0'),('187','default','0','mfblog/general/pagination','500'),('188','default','0','mfblog/general/rows','2'),('189','default','0','mfblog/general/show_next_back','1'),('190','default','0','mfblog/general/show_navigation_control','1'),('191','default','0','mfblog/index_page/title','Blog'),('192','default','0','mfblog/index_page/meta_keywords',NULL),('193','default','0','mfblog/index_page/meta_description',NULL),('194','default','0','mfblog/post_view/related_posts/enabled','1'),('195','default','0','mfblog/post_view/related_posts/number_of_posts','5'),('196','default','0','mfblog/post_view/related_products/enabled','1'),('197','default','0','mfblog/post_view/related_products/number_of_products','5'),('198','default','0','mfblog/post_view/comments/type','0'),('199','default','0','mfblog/post_list/posts_per_page','10'),('200','default','0','mfblog/sidebar/search/enabled','1'),('201','default','0','mfblog/sidebar/search/sort_order','10'),('202','default','0','mfblog/sidebar/categories/enabled','1'),('203','default','0','mfblog/sidebar/categories/sort_order','20'),('204','default','0','mfblog/sidebar/recent_posts/enabled','1'),('205','default','0','mfblog/sidebar/recent_posts/posts_per_page','5'),('206','default','0','mfblog/sidebar/recent_posts/sort_order','30'),('207','default','0','mfblog/sidebar/archive/enabled','1'),('208','default','0','mfblog/sidebar/archive/sort_order','40'),('209','default','0','mfblog/rss_feed/title','Blog Rss'),('210','default','0','mfblog/rss_feed/description',NULL),('211','default','0','currency/yahoofinance/timeout','100'),('212','default','0','currency/fixerio/timeout','100'),('213','default','0','currency/import/service','yahoofinance'),('214','default','0','crontab/default/jobs/currency_rates_update/schedule/cron_expr','0 0 * * *'),('215','default','0','currency/import/time','00,00,00'),('216','default','0','currency/import/frequency','D'),('217','default','0','currency/import/error_email',NULL),('218','default','0','trans_email/ident_general/name','Maison Des Fleurs'),('219','default','0','trans_email/ident_general/email','mail@maisondesfleurs.com'),('220','default','0','trans_email/ident_sales/email','mail@maisondesfleurs.com'),('221','default','0','trans_email/ident_support/email','mail@maisondesfleurs.com'),('222','default','0','trans_email/ident_custom1/email','mail@maisondesfleurs.com'),('223','default','0','trans_email/ident_custom2/email','mail@maisondesfleurs.com'),('224','default','0','paypal/general/merchant_country','AE'),('225','default','0','payment/paypal_express/active','0'),('226','default','0','payment/paypal_express/in_context','0'),('227','default','0','paypal/general/business_account',NULL),('228','default','0','paypal/wpp/api_authentication','0'),('229','default','0','paypal/wpp/api_username',NULL),('230','default','0','paypal/wpp/api_password',NULL),('231','default','0','paypal/wpp/api_signature',NULL),('232','default','0','paypal/wpp/sandbox_flag','0'),('233','default','0','paypal/wpp/use_proxy','0'),('234','default','0','payment/paypal_express/title','PayPal Express Checkout'),('235','default','0','payment/paypal_express/sort_order',NULL),('236','default','0','payment/paypal_express/payment_action','Authorization'),('237','default','0','payment/paypal_express/visible_on_product','1'),('238','default','0','payment/paypal_express/visible_on_cart','1'),('239','default','0','payment/paypal_express/allowspecific','0'),('240','default','0','payment/paypal_express/debug','0'),('241','default','0','payment/paypal_express/verify_peer','1'),('242','default','0','payment/paypal_express/line_items_enabled','1'),('243','default','0','payment/paypal_express/transfer_shipping_options','0'),('244','default','0','paypal/wpp/button_flavor','dynamic'),('245','default','0','payment/paypal_express/solution_type','Mark'),('246','default','0','payment/paypal_express/require_billing_address','0'),('247','default','0','payment/paypal_express/allow_ba_signup','never'),('248','default','0','payment/paypal_express/skip_order_review_step','1'),('249','default','0','payment/paypal_billing_agreement/active','1'),('250','default','0','payment/paypal_billing_agreement/title','PayPal Billing Agreement'),('251','default','0','payment/paypal_billing_agreement/sort_order',NULL),('252','default','0','payment/paypal_billing_agreement/payment_action','Authorization'),('253','default','0','payment/paypal_billing_agreement/allowspecific','0'),('254','default','0','payment/paypal_billing_agreement/debug','0'),('255','default','0','payment/paypal_billing_agreement/verify_peer','1'),('256','default','0','payment/paypal_billing_agreement/line_items_enabled','0'),('257','default','0','payment/paypal_billing_agreement/allow_billing_agreement_wizard','1'),('258','default','0','paypal/fetch_reports/ftp_login',NULL),('259','default','0','paypal/fetch_reports/ftp_password',NULL),('260','default','0','paypal/fetch_reports/ftp_sandbox','0'),('261','default','0','paypal/fetch_reports/ftp_ip',NULL),('262','default','0','paypal/fetch_reports/ftp_path',NULL),('263','default','0','paypal/fetch_reports/active','0'),('264','default','0','paypal/fetch_reports/schedule','1'),('265','default','0','paypal/fetch_reports/time','00,00,00'),('266','default','0','paypal/style/logo',NULL),('267','default','0','paypal/style/page_style',NULL),('268','default','0','paypal/style/paypal_hdrimg',NULL),('269','default','0','paypal/style/paypal_hdrbackcolor',NULL),('270','default','0','paypal/style/paypal_hdrbordercolor',NULL),('271','default','0','paypal/style/paypal_payflowcolor',NULL),('272','default','0','payment/braintree/active','1'),('273','default','0','payment/braintree_paypal/active','0'),('274','default','0','payment/braintree_cc_vault/active','1'),('275','default','0','payment/braintree/title','Credit Card'),('276','default','0','payment/braintree/environment','sandbox'),('277','default','0','payment/braintree/payment_action','authorize'),('278','default','0','payment/braintree/merchant_id','jwsqfkk9knkf9mnc'),('279','default','0','payment/braintree/public_key','0:2:DFdYgPjpRqLIt5yHzBkYPMXnwrc6yjE2:yjjLBr4qVNUwEhWK6eI4oSg4FxWob6QkHHebC9PlYAQ='),('280','default','0','payment/braintree/private_key','0:2:HQVn0b5gMDAH277thW9TKng1pcpzGhfe:6zDi2PO5f9NOcwlGIhBtX6ZF2cZbtXJrkPrPwH7OklY='),('281','default','0','payment/braintree_cc_vault/title','Stored Cards (Braintree)'),('282','default','0','payment/braintree/merchant_account_id',NULL),('283','default','0','payment/braintree/fraudprotection','0'),('284','default','0','payment/braintree/debug','0'),('285','default','0','payment/braintree/useccv','1'),('286','default','0','payment/braintree/cctypes','CUP,AE,VI,MC,DI,JCB,DN,MI'),('287','default','0','payment/braintree/sort_order',NULL),('288','default','0','payment/braintree/allowspecific','0'),('289','default','0','payment/braintree/specificcountry',NULL),('290','default','0','payment/braintree/countrycreditcard','a:0:{}'),('291','default','0','payment/braintree_paypal/title','PayPal (Braintree)'),('292','default','0','payment/braintree_paypal_vault/active','0'),('293','default','0','payment/braintree_paypal/sort_order',NULL),('294','default','0','payment/braintree_paypal/merchant_name_override',NULL),('295','default','0','payment/braintree_paypal/payment_action','authorize'),('296','default','0','payment/braintree_paypal/allowspecific','0'),('297','default','0','payment/braintree_paypal/specificcountry',NULL),('298','default','0','payment/braintree_paypal/require_billing_address','0'),('299','default','0','payment/braintree_paypal/allow_shipping_address_override','1'),('300','default','0','payment/braintree_paypal/debug','0'),('301','default','0','payment/braintree_paypal/display_on_shopping_cart','1'),('302','default','0','payment/braintree_paypal/skip_order_review','0'),('303','default','0','payment/braintree/verify_3dsecure','0'),('304','default','0','payment/braintree/threshold_amount',NULL),('305','default','0','payment/braintree/verify_all_countries','0'),('306','default','0','payment/braintree/verify_specific_countries',NULL),('307','default','0','payment/braintree/descriptor_name',NULL),('308','default','0','payment/braintree/descriptor_phone',NULL),('309','default','0','payment/braintree/descriptor_url',NULL),('310','default','0','payment/wps_express/active','0'),('311','default','0','payment/checkmo/specificcountry',NULL),('312','default','0','payment/checkmo/payable_to',NULL),('313','default','0','payment/checkmo/mailing_address',NULL),('314','default','0','payment/checkmo/min_order_total',NULL),('315','default','0','payment/checkmo/max_order_total',NULL),('316','default','0','payment/checkmo/sort_order',NULL),('317','default','0','payment/banktransfer/active','1'),('318','default','0','payment/banktransfer/specificcountry',NULL),('319','default','0','payment/banktransfer/instructions','Instructions on the Bank Transfer Payment'),('320','default','0','payment/banktransfer/min_order_total',NULL),('321','default','0','payment/banktransfer/max_order_total',NULL),('322','default','0','payment/banktransfer/sort_order',NULL),('323','default','0','payment/cashondelivery/active','1'),('324','default','0','payment/cashondelivery/specificcountry',NULL),('325','default','0','payment/cashondelivery/instructions','Instructions on the Cash On Delivery'),('326','default','0','payment/cashondelivery/min_order_total',NULL),('327','default','0','payment/cashondelivery/max_order_total',NULL),('328','default','0','payment/cashondelivery/sort_order',NULL),('329','default','0','payment/free/specificcountry',NULL),('330','default','0','payment/purchaseorder/active','1'),('331','default','0','payment/purchaseorder/specificcountry',NULL),('332','default','0','payment/purchaseorder/min_order_total',NULL),('333','default','0','payment/purchaseorder/max_order_total',NULL),('334','default','0','payment/purchaseorder/sort_order',NULL),('335','default','0','payment/authorizenet_directpost/active','0'),('336','default','0','payment/authorizenet_directpost/login',NULL),('337','default','0','payment/authorizenet_directpost/trans_key',NULL),('338','default','0','payment/authorizenet_directpost/trans_md5',NULL),('339','default','0','payment/authorizenet_directpost/merchant_email',NULL),('340','default','0','payment/authorizenet_directpost/useccv','0'),('341','default','0','payment/authorizenet_directpost/min_order_total',NULL),('342','default','0','payment/authorizenet_directpost/max_order_total',NULL),('343','default','0','payment/authorizenet_directpost/sort_order',NULL),('344','default','0','general/store_information/name','Maison Des Fleurs'),('345','default','0','general/store_information/phone','+971 4 276 5886'),('346','default','0','general/store_information/hours',NULL),('347','default','0','general/store_information/country_id','AE'),('348','default','0','general/store_information/region_id','Dubai'),('349','default','0','general/store_information/postcode',NULL),('350','default','0','general/store_information/city','Dubai'),('351','default','0','general/store_information/street_line1','Design District - D3  Building 1, Ground Floor, Unit 3 & 5'),('352','default','0','general/store_information/street_line2',NULL),('353','default','0','general/store_information/merchant_vat_number',NULL),('354','default','0','general/single_store_mode/enabled','0'),('355','default','0','contact/email/recipient_email','mail@maisondesfleurs.com'),('356','default','0','contact/email/sender_email_identity','general'),('357','default','0','checkout/options/enable_agreements','1'),('358','default','0','checkout/options/display_billing_address_on','0'),('359','default','0','checkout/payment_failed/copy_to',NULL),('360','default','0','checkout/payment_failed/copy_method','bcc'),('361','stores','2','design/head/title_prefix',NULL),('362','stores','2','design/head/title_suffix',NULL),('363','stores','2','design/head/includes',NULL),('364','stores','2','design/header/logo_width',NULL),('365','stores','2','design/header/logo_height',NULL),('366','stores','2','design/footer/absolute_footer',NULL),('367','stores','2','design/theme/theme_id','10'),('368','stores','2','design/pagination/pagination_frame_skip',NULL),('369','stores','2','design/pagination/anchor_text_for_previous',NULL),('370','stores','2','design/pagination/anchor_text_for_next',NULL),('371','stores','2','design/watermark/image_size',NULL),('372','stores','2','design/watermark/image_imageOpacity',NULL),('373','stores','2','design/watermark/small_image_size',NULL),('374','stores','2','design/watermark/small_image_imageOpacity',NULL),('375','stores','2','design/watermark/thumbnail_size',NULL),('376','stores','2','design/watermark/thumbnail_imageOpacity',NULL),('377','stores','2','design/email/logo_alt',NULL),('378','stores','2','design/email/logo_width',NULL),('379','stores','2','design/email/logo_height',NULL),('380','stores','2','design/watermark/swatch_image_size',NULL),('381','stores','2','design/watermark/swatch_image_imageOpacity',NULL),('382','stores','2','web/default/cms_home_page','home-2'),('383','default','0','catalog/fields_masks/sku','{{name}}'),('384','default','0','catalog/frontend/list_allow_all','0'),('385','default','0','catalog/frontend/flat_catalog_product','0'),('386','default','0','catalog/productalert_cron/frequency','D'),('387','default','0','crontab/default/jobs/catalog_product_alert/schedule/cron_expr','0 0 * * *'),('388','default','0','crontab/default/jobs/catalog_product_alert/run/model',NULL),('389','default','0','catalog/productalert_cron/time','00,00,00'),('390','default','0','catalog/productalert_cron/error_email',NULL),('391','default','0','catalog/product_video/youtube_api_key',NULL),('392','default','0','catalog/price/scope','0'),('393','default','0','catalog/downloadable/shareable','0'),('394','default','0','catalog/downloadable/content_disposition','inline'),('395','default','0','catalog/custom_options/use_calendar','0'),('396','default','0','catalog/custom_options/year_range',','),('397','default','0','catalog/placeholder/image_placeholder',NULL),('398','default','0','catalog/placeholder/rotary_image_placeholder',NULL),('399','default','0','catalog/placeholder/small_image_placeholder',NULL),('400','default','0','catalog/placeholder/swatch_image_placeholder',NULL),('401','default','0','catalog/placeholder/thumbnail_placeholder',NULL),('402','stores','1','design/theme/theme_id','10');
/*!40000 ALTER TABLE `core_config_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cron_schedule`
--

DROP TABLE IF EXISTS `cron_schedule`;
CREATE TABLE `cron_schedule` (
  `schedule_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Schedule Id',
  `job_code` varchar(255) NOT NULL DEFAULT '0' COMMENT 'Job Code',
  `status` varchar(7) NOT NULL DEFAULT 'pending' COMMENT 'Status',
  `messages` text COMMENT 'Messages',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `scheduled_at` timestamp NULL DEFAULT NULL COMMENT 'Scheduled At',
  `executed_at` timestamp NULL DEFAULT NULL COMMENT 'Executed At',
  `finished_at` timestamp NULL DEFAULT NULL COMMENT 'Finished At',
  PRIMARY KEY (`schedule_id`),
  KEY `CRON_SCHEDULE_JOB_CODE` (`job_code`),
  KEY `CRON_SCHEDULE_SCHEDULED_AT_STATUS` (`scheduled_at`,`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cron Schedule';

--
-- Table structure for table `customer_address_entity`
--

DROP TABLE IF EXISTS `customer_address_entity`;
CREATE TABLE `customer_address_entity` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `parent_id` int(10) unsigned DEFAULT NULL COMMENT 'Parent Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `is_active` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Active',
  `city` varchar(255) NOT NULL COMMENT 'City',
  `company` varchar(255) DEFAULT NULL COMMENT 'Company',
  `country_id` varchar(255) NOT NULL COMMENT 'Country',
  `fax` varchar(255) DEFAULT NULL COMMENT 'Fax',
  `firstname` varchar(255) NOT NULL COMMENT 'First Name',
  `lastname` varchar(255) NOT NULL COMMENT 'Last Name',
  `middlename` varchar(255) DEFAULT NULL COMMENT 'Middle Name',
  `postcode` varchar(255) DEFAULT NULL COMMENT 'Zip/Postal Code',
  `prefix` varchar(40) DEFAULT NULL COMMENT 'Prefix',
  `region` varchar(255) DEFAULT NULL COMMENT 'State/Province',
  `region_id` int(10) unsigned DEFAULT NULL COMMENT 'State/Province',
  `street` text NOT NULL COMMENT 'Street Address',
  `suffix` varchar(40) DEFAULT NULL COMMENT 'Suffix',
  `telephone` varchar(255) NOT NULL COMMENT 'Phone Number',
  `vat_id` varchar(255) DEFAULT NULL COMMENT 'VAT number',
  `vat_is_valid` int(10) unsigned DEFAULT NULL COMMENT 'VAT number validity',
  `vat_request_date` varchar(255) DEFAULT NULL COMMENT 'VAT number validation request date',
  `vat_request_id` varchar(255) DEFAULT NULL COMMENT 'VAT number validation request ID',
  `vat_request_success` int(10) unsigned DEFAULT NULL COMMENT 'VAT number validation request success',
  PRIMARY KEY (`entity_id`),
  KEY `CUSTOMER_ADDRESS_ENTITY_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity';

--
-- Dumping data for table `customer_address_entity`
--

LOCK TABLES `customer_address_entity` WRITE;
/*!40000 ALTER TABLE `customer_address_entity` DISABLE KEYS */;
INSERT INTO `customer_address_entity` VALUES ('1',NULL,'1','2017-04-13 07:57:37','2017-04-13 08:01:21',1,'Dubai','Belpro','AE',NULL,'Mark','Timbol',NULL,'00000',NULL,'Dubai','0','Dubai',NULL,'+971 56 820 7189',NULL,NULL,NULL,NULL,NULL),('2',NULL,'1','2017-04-13 07:57:37','2017-04-13 08:01:21',1,'Dubai','Belpro','AE',NULL,'Mark','Timbol',NULL,'00000',NULL,'Dubai','0','Dubai',NULL,'+971 56 820 7189',NULL,NULL,NULL,NULL,NULL),('3',NULL,'2','2017-04-16 12:42:12','2017-04-16 12:42:12',1,'Dubai',NULL,'AE',NULL,'Saber','Belgrith',NULL,'00000',NULL,'Dubai','0','708 Al Rigga\nDeira',NULL,'+971 56 820 7189',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `customer_address_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_address_entity_datetime`
--

DROP TABLE IF EXISTS `customer_address_entity_datetime`;
CREATE TABLE `customer_address_entity_datetime` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` datetime DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CUSTOMER_ADDRESS_ENTITY_DATETIME_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `CUSTOMER_ADDRESS_ENTITY_DATETIME_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CUSTOMER_ADDRESS_ENTITY_DATETIME_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity Datetime';

--
-- Table structure for table `customer_address_entity_decimal`
--

DROP TABLE IF EXISTS `customer_address_entity_decimal`;
CREATE TABLE `customer_address_entity_decimal` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CUSTOMER_ADDRESS_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `CUSTOMER_ADDRESS_ENTITY_DECIMAL_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CUSTOMER_ADDRESS_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity Decimal';

--
-- Table structure for table `customer_address_entity_int`
--

DROP TABLE IF EXISTS `customer_address_entity_int`;
CREATE TABLE `customer_address_entity_int` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` int(11) NOT NULL DEFAULT '0' COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CUSTOMER_ADDRESS_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `CUSTOMER_ADDRESS_ENTITY_INT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CUSTOMER_ADDRESS_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity Int';

--
-- Table structure for table `customer_address_entity_text`
--

DROP TABLE IF EXISTS `customer_address_entity_text`;
CREATE TABLE `customer_address_entity_text` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` text NOT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CUSTOMER_ADDRESS_ENTITY_TEXT_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `CUSTOMER_ADDRESS_ENTITY_TEXT_ATTRIBUTE_ID` (`attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity Text';

--
-- Table structure for table `customer_address_entity_varchar`
--

DROP TABLE IF EXISTS `customer_address_entity_varchar`;
CREATE TABLE `customer_address_entity_varchar` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CUSTOMER_ADDRESS_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `CUSTOMER_ADDRESS_ENTITY_VARCHAR_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CUSTOMER_ADDRESS_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity Varchar';

--
-- Table structure for table `customer_eav_attribute`
--

DROP TABLE IF EXISTS `customer_eav_attribute`;
CREATE TABLE `customer_eav_attribute` (
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute Id',
  `is_visible` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Visible',
  `input_filter` varchar(255) DEFAULT NULL COMMENT 'Input Filter',
  `multiline_count` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Multiline Count',
  `validate_rules` text COMMENT 'Validate Rules',
  `is_system` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is System',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `data_model` varchar(255) DEFAULT NULL COMMENT 'Data Model',
  `is_used_in_grid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Used in Grid',
  `is_visible_in_grid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Visible in Grid',
  `is_filterable_in_grid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Filterable in Grid',
  `is_searchable_in_grid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Searchable in Grid',
  PRIMARY KEY (`attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Eav Attribute';

--
-- Dumping data for table `customer_eav_attribute`
--

LOCK TABLES `customer_eav_attribute` WRITE;
/*!40000 ALTER TABLE `customer_eav_attribute` DISABLE KEYS */;
INSERT INTO `customer_eav_attribute` VALUES (1,1,NULL,0,NULL,1,'10',NULL,1,1,1,0),(2,0,NULL,0,NULL,1,'0',NULL,0,0,0,0),(3,1,NULL,0,NULL,1,'20',NULL,1,1,0,1),(4,0,NULL,0,NULL,0,'30',NULL,0,0,0,0),(5,1,NULL,0,'a:2:{s:15:\"max_text_length\";i:255;s:15:\"min_text_length\";i:1;}',1,'40',NULL,0,0,0,0),(6,0,NULL,0,NULL,0,'50',NULL,0,0,0,0),(7,1,NULL,0,'a:2:{s:15:\"max_text_length\";i:255;s:15:\"min_text_length\";i:1;}',1,'60',NULL,0,0,0,0),(8,0,NULL,0,NULL,0,'70',NULL,0,0,0,0),(9,1,NULL,0,'a:1:{s:16:\"input_validation\";s:5:\"email\";}',1,'80',NULL,1,1,1,1),(10,1,NULL,0,NULL,1,'25',NULL,1,1,1,0),(11,0,'date',0,'a:1:{s:16:\"input_validation\";s:4:\"date\";}',0,'90',NULL,1,1,1,0),(12,0,NULL,0,NULL,1,'0',NULL,0,0,0,0),(13,0,NULL,0,NULL,1,'0',NULL,0,0,0,0),(14,0,NULL,0,'a:1:{s:16:\"input_validation\";s:4:\"date\";}',1,'0',NULL,0,0,0,0),(15,0,NULL,0,NULL,1,'0',NULL,0,0,0,0),(16,0,NULL,0,NULL,1,'0',NULL,0,0,0,0),(17,0,NULL,0,'a:1:{s:15:\"max_text_length\";i:255;}',0,'100',NULL,1,1,0,1),(18,0,NULL,0,NULL,1,'0',NULL,1,1,1,0),(19,0,NULL,0,NULL,0,'0',NULL,1,1,1,0),(20,0,NULL,0,'a:0:{}',0,'110',NULL,1,1,1,0),(21,1,NULL,0,NULL,1,'28',NULL,0,0,0,0),(22,0,NULL,0,NULL,0,'10',NULL,0,0,0,0),(23,1,NULL,0,'a:2:{s:15:\"max_text_length\";i:255;s:15:\"min_text_length\";i:1;}',1,'20',NULL,1,0,0,1),(24,0,NULL,0,NULL,0,'30',NULL,0,0,0,0),(25,1,NULL,0,'a:2:{s:15:\"max_text_length\";i:255;s:15:\"min_text_length\";i:1;}',1,'40',NULL,1,0,0,1),(26,0,NULL,0,NULL,0,'50',NULL,0,0,0,0),(27,1,NULL,0,'a:2:{s:15:\"max_text_length\";i:255;s:15:\"min_text_length\";i:1;}',1,'60',NULL,1,0,0,1),(28,1,NULL,2,'a:2:{s:15:\"max_text_length\";i:255;s:15:\"min_text_length\";i:1;}',1,'70',NULL,1,0,0,1),(29,1,NULL,0,'a:2:{s:15:\"max_text_length\";i:255;s:15:\"min_text_length\";i:1;}',1,'80',NULL,1,0,0,1),(30,1,NULL,0,NULL,1,'90',NULL,1,1,1,0),(31,1,NULL,0,NULL,1,'100',NULL,1,1,0,1),(32,1,NULL,0,NULL,1,'100',NULL,0,0,0,0),(33,1,NULL,0,'a:0:{}',1,'110','Magento\\Customer\\Model\\Attribute\\Data\\Postcode',1,1,1,1),(34,1,NULL,0,'a:2:{s:15:\"max_text_length\";i:255;s:15:\"min_text_length\";i:1;}',1,'120',NULL,1,1,1,1),(35,0,NULL,0,'a:2:{s:15:\"max_text_length\";i:255;s:15:\"min_text_length\";i:1;}',0,'130',NULL,1,0,0,1),(36,1,NULL,0,NULL,1,'140',NULL,0,0,0,0),(37,0,NULL,0,NULL,1,'0',NULL,0,0,0,0),(38,0,NULL,0,NULL,1,'0',NULL,0,0,0,0),(39,0,NULL,0,NULL,1,'0',NULL,0,0,0,0),(40,0,NULL,0,NULL,1,'0',NULL,0,0,0,0),(41,0,NULL,0,NULL,0,'0',NULL,0,0,0,0),(42,0,NULL,0,NULL,1,'0',NULL,0,0,0,0),(43,0,NULL,0,NULL,1,'0',NULL,0,0,0,0),(44,0,NULL,0,NULL,1,'0',NULL,0,0,0,0);
/*!40000 ALTER TABLE `customer_eav_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_eav_attribute_website`
--

DROP TABLE IF EXISTS `customer_eav_attribute_website`;
CREATE TABLE `customer_eav_attribute_website` (
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `is_visible` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Visible',
  `is_required` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Required',
  `default_value` text COMMENT 'Default Value',
  `multiline_count` smallint(5) unsigned DEFAULT NULL COMMENT 'Multiline Count',
  PRIMARY KEY (`attribute_id`,`website_id`),
  KEY `CUSTOMER_EAV_ATTRIBUTE_WEBSITE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Eav Attribute Website';

--
-- Dumping data for table `customer_eav_attribute_website`
--

LOCK TABLES `customer_eav_attribute_website` WRITE;
/*!40000 ALTER TABLE `customer_eav_attribute_website` DISABLE KEYS */;
INSERT INTO `customer_eav_attribute_website` VALUES (1,1,NULL,NULL,NULL,NULL),(3,1,NULL,NULL,NULL,NULL),(9,1,NULL,NULL,NULL,NULL),(10,1,NULL,NULL,NULL,NULL),(11,1,NULL,NULL,NULL,NULL),(17,1,NULL,NULL,NULL,NULL),(18,1,NULL,NULL,NULL,NULL),(19,1,NULL,NULL,NULL,NULL),(20,1,NULL,NULL,NULL,NULL),(21,1,NULL,NULL,NULL,NULL),(23,1,NULL,NULL,NULL,NULL),(25,1,NULL,NULL,NULL,NULL),(27,1,NULL,NULL,NULL,NULL),(28,1,NULL,NULL,NULL,NULL),(29,1,NULL,NULL,NULL,NULL),(30,1,NULL,NULL,NULL,NULL),(31,1,NULL,NULL,NULL,NULL),(32,1,NULL,NULL,NULL,NULL),(33,1,NULL,NULL,NULL,NULL),(34,1,NULL,NULL,NULL,NULL),(35,1,NULL,NULL,NULL,NULL),(36,1,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `customer_eav_attribute_website` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_entity`
--

DROP TABLE IF EXISTS `customer_entity`;
CREATE TABLE `customer_entity` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `website_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Website Id',
  `email` varchar(255) DEFAULT NULL COMMENT 'Email',
  `group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Group Id',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `store_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Store Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `is_active` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Active',
  `disable_auto_group_change` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Disable automatic group change based on VAT ID',
  `created_in` varchar(255) DEFAULT NULL COMMENT 'Created From',
  `prefix` varchar(40) DEFAULT NULL COMMENT 'Prefix',
  `firstname` varchar(255) DEFAULT NULL COMMENT 'First Name',
  `middlename` varchar(255) DEFAULT NULL COMMENT 'Middle Name/Initial',
  `lastname` varchar(255) DEFAULT NULL COMMENT 'Last Name',
  `suffix` varchar(40) DEFAULT NULL COMMENT 'Suffix',
  `dob` date DEFAULT NULL COMMENT 'Date of Birth',
  `password_hash` varchar(128) DEFAULT NULL COMMENT 'Password_hash',
  `rp_token` varchar(128) DEFAULT NULL COMMENT 'Reset password token',
  `rp_token_created_at` datetime DEFAULT NULL COMMENT 'Reset password token creation time',
  `default_billing` int(10) unsigned DEFAULT NULL COMMENT 'Default Billing Address',
  `default_shipping` int(10) unsigned DEFAULT NULL COMMENT 'Default Shipping Address',
  `taxvat` varchar(50) DEFAULT NULL COMMENT 'Tax/VAT Number',
  `confirmation` varchar(64) DEFAULT NULL COMMENT 'Is Confirmed',
  `gender` smallint(5) unsigned DEFAULT NULL COMMENT 'Gender',
  `failures_num` smallint(6) DEFAULT '0' COMMENT 'Failure Number',
  `first_failure` timestamp NULL DEFAULT NULL COMMENT 'First Failure',
  `lock_expires` timestamp NULL DEFAULT NULL COMMENT 'Lock Expiration Date',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `CUSTOMER_ENTITY_EMAIL_WEBSITE_ID` (`email`,`website_id`),
  KEY `CUSTOMER_ENTITY_STORE_ID` (`store_id`),
  KEY `CUSTOMER_ENTITY_WEBSITE_ID` (`website_id`),
  KEY `CUSTOMER_ENTITY_FIRSTNAME` (`firstname`),
  KEY `CUSTOMER_ENTITY_LASTNAME` (`lastname`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Customer Entity';

--
-- Dumping data for table `customer_entity`
--

LOCK TABLES `customer_entity` WRITE;
/*!40000 ALTER TABLE `customer_entity` DISABLE KEYS */;
INSERT INTO `customer_entity` VALUES ('1',1,'markttimbol@gmail.com',1,NULL,1,'2017-04-13 07:57:36','2017-04-13 08:01:53',1,0,'Default Store View',NULL,'Mark',NULL,'Timbol',NULL,NULL,NULL,'571ffb6c44678401e5daca202efce75f','2017-04-13 08:01:21','2','1',NULL,NULL,NULL,1,'2017-04-13 08:01:53',NULL),('2',1,'saber@example.com',1,NULL,1,'2017-04-16 12:36:42','2017-04-16 12:42:12',1,0,'Default Store View',NULL,'Saber',NULL,'Belgrith',NULL,NULL,'a0098aacc5590e99222e407b660f799b0d9a8b2a5e15dbecdab009279ee5916d:lSyz1KM033ktMxlC2rvEYhHrfAoQ03Yb:1','8b0a4a2596e1e111f735de9951b17136','2017-04-16 12:36:43',NULL,'3',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `customer_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_entity_datetime`
--

DROP TABLE IF EXISTS `customer_entity_datetime`;
CREATE TABLE `customer_entity_datetime` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` datetime DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CUSTOMER_ENTITY_DATETIME_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `CUSTOMER_ENTITY_DATETIME_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CUSTOMER_ENTITY_DATETIME_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Entity Datetime';

--
-- Table structure for table `customer_entity_decimal`
--

DROP TABLE IF EXISTS `customer_entity_decimal`;
CREATE TABLE `customer_entity_decimal` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CUSTOMER_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `CUSTOMER_ENTITY_DECIMAL_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CUSTOMER_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Entity Decimal';

--
-- Table structure for table `customer_entity_int`
--

DROP TABLE IF EXISTS `customer_entity_int`;
CREATE TABLE `customer_entity_int` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` int(11) NOT NULL DEFAULT '0' COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CUSTOMER_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `CUSTOMER_ENTITY_INT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CUSTOMER_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Entity Int';

--
-- Table structure for table `customer_entity_text`
--

DROP TABLE IF EXISTS `customer_entity_text`;
CREATE TABLE `customer_entity_text` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` text NOT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CUSTOMER_ENTITY_TEXT_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `CUSTOMER_ENTITY_TEXT_ATTRIBUTE_ID` (`attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Entity Text';

--
-- Table structure for table `customer_entity_varchar`
--

DROP TABLE IF EXISTS `customer_entity_varchar`;
CREATE TABLE `customer_entity_varchar` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CUSTOMER_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `CUSTOMER_ENTITY_VARCHAR_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CUSTOMER_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Entity Varchar';

--
-- Table structure for table `customer_form_attribute`
--

DROP TABLE IF EXISTS `customer_form_attribute`;
CREATE TABLE `customer_form_attribute` (
  `form_code` varchar(32) NOT NULL COMMENT 'Form Code',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute Id',
  PRIMARY KEY (`form_code`,`attribute_id`),
  KEY `CUSTOMER_FORM_ATTRIBUTE_ATTRIBUTE_ID` (`attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Form Attribute';

--
-- Dumping data for table `customer_form_attribute`
--

LOCK TABLES `customer_form_attribute` WRITE;
/*!40000 ALTER TABLE `customer_form_attribute` DISABLE KEYS */;
INSERT INTO `customer_form_attribute` VALUES ('adminhtml_customer',1),('adminhtml_customer',3),('adminhtml_customer',4),('customer_account_create',4),('customer_account_edit',4),('adminhtml_customer',5),('customer_account_create',5),('customer_account_edit',5),('adminhtml_customer',6),('customer_account_create',6),('customer_account_edit',6),('adminhtml_customer',7),('customer_account_create',7),('customer_account_edit',7),('adminhtml_customer',8),('customer_account_create',8),('customer_account_edit',8),('adminhtml_checkout',9),('adminhtml_customer',9),('customer_account_create',9),('customer_account_edit',9),('adminhtml_checkout',10),('adminhtml_customer',10),('adminhtml_checkout',11),('adminhtml_customer',11),('customer_account_create',11),('customer_account_edit',11),('adminhtml_checkout',17),('adminhtml_customer',17),('customer_account_create',17),('customer_account_edit',17),('adminhtml_customer',19),('customer_account_create',19),('customer_account_edit',19),('adminhtml_checkout',20),('adminhtml_customer',20),('customer_account_create',20),('customer_account_edit',20),('adminhtml_customer',21),('adminhtml_customer_address',22),('customer_address_edit',22),('customer_register_address',22),('adminhtml_customer_address',23),('customer_address_edit',23),('customer_register_address',23),('adminhtml_customer_address',24),('customer_address_edit',24),('customer_register_address',24),('adminhtml_customer_address',25),('customer_address_edit',25),('customer_register_address',25),('adminhtml_customer_address',26),('customer_address_edit',26),('customer_register_address',26),('adminhtml_customer_address',27),('customer_address_edit',27),('customer_register_address',27),('adminhtml_customer_address',28),('customer_address_edit',28),('customer_register_address',28),('adminhtml_customer_address',29),('customer_address_edit',29),('customer_register_address',29),('adminhtml_customer_address',30),('customer_address_edit',30),('customer_register_address',30),('adminhtml_customer_address',31),('customer_address_edit',31),('customer_register_address',31),('adminhtml_customer_address',32),('customer_address_edit',32),('customer_register_address',32),('adminhtml_customer_address',33),('customer_address_edit',33),('customer_register_address',33),('adminhtml_customer_address',34),('customer_address_edit',34),('customer_register_address',34),('adminhtml_customer_address',35),('customer_address_edit',35),('customer_register_address',35),('adminhtml_customer_address',36),('customer_address_edit',36),('customer_register_address',36);
/*!40000 ALTER TABLE `customer_form_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_grid_flat`
--

DROP TABLE IF EXISTS `customer_grid_flat`;
CREATE TABLE `customer_grid_flat` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `name` text COMMENT 'Name',
  `email` varchar(255) DEFAULT NULL COMMENT 'Email',
  `group_id` int(11) DEFAULT NULL COMMENT 'Group_id',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created_at',
  `website_id` int(11) DEFAULT NULL COMMENT 'Website_id',
  `confirmation` varchar(255) DEFAULT NULL COMMENT 'Confirmation',
  `created_in` text COMMENT 'Created_in',
  `dob` date DEFAULT NULL COMMENT 'Dob',
  `gender` int(11) DEFAULT NULL COMMENT 'Gender',
  `taxvat` varchar(255) DEFAULT NULL COMMENT 'Taxvat',
  `lock_expires` timestamp NULL DEFAULT NULL COMMENT 'Lock_expires',
  `shipping_full` text COMMENT 'Shipping_full',
  `billing_full` text COMMENT 'Billing_full',
  `billing_firstname` varchar(255) DEFAULT NULL COMMENT 'Billing_firstname',
  `billing_lastname` varchar(255) DEFAULT NULL COMMENT 'Billing_lastname',
  `billing_telephone` varchar(255) DEFAULT NULL COMMENT 'Billing_telephone',
  `billing_postcode` varchar(255) DEFAULT NULL COMMENT 'Billing_postcode',
  `billing_country_id` varchar(255) DEFAULT NULL COMMENT 'Billing_country_id',
  `billing_region` varchar(255) DEFAULT NULL COMMENT 'Billing_region',
  `billing_street` varchar(255) DEFAULT NULL COMMENT 'Billing_street',
  `billing_city` varchar(255) DEFAULT NULL COMMENT 'Billing_city',
  `billing_fax` varchar(255) DEFAULT NULL COMMENT 'Billing_fax',
  `billing_vat_id` varchar(255) DEFAULT NULL COMMENT 'Billing_vat_id',
  `billing_company` varchar(255) DEFAULT NULL COMMENT 'Billing_company',
  PRIMARY KEY (`entity_id`),
  KEY `CUSTOMER_GRID_FLAT_GROUP_ID` (`group_id`),
  KEY `CUSTOMER_GRID_FLAT_CREATED_AT` (`created_at`),
  KEY `CUSTOMER_GRID_FLAT_WEBSITE_ID` (`website_id`),
  KEY `CUSTOMER_GRID_FLAT_CONFIRMATION` (`confirmation`),
  KEY `CUSTOMER_GRID_FLAT_DOB` (`dob`),
  KEY `CUSTOMER_GRID_FLAT_GENDER` (`gender`),
  KEY `CUSTOMER_GRID_FLAT_BILLING_COUNTRY_ID` (`billing_country_id`),
  FULLTEXT KEY `FTI_8746F705702DD5F6D45B8C7CE7FE9F2F` (`name`,`email`,`created_in`,`taxvat`,`shipping_full`,`billing_full`,`billing_firstname`,`billing_lastname`,`billing_telephone`,`billing_postcode`,`billing_region`,`billing_city`,`billing_fax`,`billing_company`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='customer_grid_flat';

--
-- Dumping data for table `customer_grid_flat`
--

LOCK TABLES `customer_grid_flat` WRITE;
/*!40000 ALTER TABLE `customer_grid_flat` DISABLE KEYS */;
INSERT INTO `customer_grid_flat` VALUES ('1','Mark Timbol','markttimbol@gmail.com','1','2017-04-13 07:57:36','1',NULL,'Default Store View',NULL,NULL,NULL,NULL,'Dubai Dubai Dubai 00000','Dubai Dubai Dubai 00000','Mark','Timbol','+971 56 820 7189','00000','AE','Dubai','Dubai','Dubai',NULL,NULL,'Belpro'),('2','Saber Belgrith','saber@example.com','1','2017-04-16 12:36:42','1',NULL,'Default Store View',NULL,NULL,NULL,NULL,'708 Al Rigga\nDeira Dubai Dubai 00000','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `customer_grid_flat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_group`
--

DROP TABLE IF EXISTS `customer_group`;
CREATE TABLE `customer_group` (
  `customer_group_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Customer Group Id',
  `customer_group_code` varchar(32) NOT NULL COMMENT 'Customer Group Code',
  `tax_class_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Tax Class Id',
  PRIMARY KEY (`customer_group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Customer Group';

--
-- Dumping data for table `customer_group`
--

LOCK TABLES `customer_group` WRITE;
/*!40000 ALTER TABLE `customer_group` DISABLE KEYS */;
INSERT INTO `customer_group` VALUES (0,'NOT LOGGED IN','3'),(1,'General','3'),(2,'Wholesale','3'),(3,'Retailer','3');
/*!40000 ALTER TABLE `customer_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_log`
--

DROP TABLE IF EXISTS `customer_log`;
CREATE TABLE `customer_log` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Log ID',
  `customer_id` int(11) NOT NULL COMMENT 'Customer ID',
  `last_login_at` timestamp NULL DEFAULT NULL COMMENT 'Last Login Time',
  `last_logout_at` timestamp NULL DEFAULT NULL COMMENT 'Last Logout Time',
  PRIMARY KEY (`log_id`),
  UNIQUE KEY `CUSTOMER_LOG_CUSTOMER_ID` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Customer Log Table';

--
-- Dumping data for table `customer_log`
--

LOCK TABLES `customer_log` WRITE;
/*!40000 ALTER TABLE `customer_log` DISABLE KEYS */;
INSERT INTO `customer_log` VALUES ('1','2','2017-04-16 12:36:43',NULL);
/*!40000 ALTER TABLE `customer_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_visitor`
--

DROP TABLE IF EXISTS `customer_visitor`;
CREATE TABLE `customer_visitor` (
  `visitor_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Visitor ID',
  `customer_id` int(11) DEFAULT NULL COMMENT 'Customer Id',
  `session_id` varchar(64) DEFAULT NULL COMMENT 'Session ID',
  `last_visit_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last Visit Time',
  PRIMARY KEY (`visitor_id`),
  KEY `CUSTOMER_VISITOR_CUSTOMER_ID` (`customer_id`),
  KEY `CUSTOMER_VISITOR_LAST_VISIT_AT` (`last_visit_at`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8 COMMENT='Visitor Table';

--
-- Dumping data for table `customer_visitor`
--

LOCK TABLES `customer_visitor` WRITE;
/*!40000 ALTER TABLE `customer_visitor` DISABLE KEYS */;
INSERT INTO `customer_visitor` VALUES (1,NULL,'6b913e70631c55808c376c797ed1e4f7','2017-04-13 07:50:53'),(2,NULL,'2b9477d287b503cbfbd88c55136ba6e4','2017-04-13 07:52:43'),(3,NULL,'425ff866c71f74c42fc7c194557f5943','2017-04-13 07:55:56'),(4,NULL,'106520db0d1386f3fe5d9dac90a93f14','2017-04-13 07:53:53'),(5,NULL,'b0a40a18d44cdc16472fecb793667c5a','2017-04-13 07:53:53'),(6,NULL,'68f82226d4b775751b74864e81442b47','2017-04-13 07:54:00'),(7,NULL,'fd18f89ebd9d117187dee35910865346','2017-04-13 07:55:51'),(8,NULL,'f17eeab0223079e54128d69e5fd01532','2017-04-13 07:55:51'),(9,NULL,'ab4f9565193962b492990a2dcf81173b','2017-04-13 07:55:52'),(10,NULL,'6468d4f8d39ebde09a4b1cd87b38220f','2017-04-13 07:55:56'),(11,NULL,'9ed350bcee560248d9fbb5ee1612af1f','2017-04-13 07:55:59'),(12,NULL,'697a9b2905a89a2c9ca83ba327b45119','2017-04-13 07:56:03'),(13,NULL,'118609cc4fd4ea750b3029eea904c05a','2017-04-13 07:56:05'),(14,NULL,'aa4b67d7bafd2f4c5cad996a8db87add','2017-04-13 07:56:06'),(15,NULL,'427e6cb54f97d8c080a60623b10ce879','2017-04-13 09:34:01'),(16,NULL,'1f30124ce68fe6ce118180e326164709','2017-04-13 11:26:23'),(17,NULL,'8241a055cdef80ca1e336fe67e3ddaea','2017-04-13 15:28:45'),(18,NULL,'2baee01ec9cc8fa17d7a606e8d17718a','2017-04-16 06:39:10'),(19,NULL,'c13475f374a1a3354131489c6e447eb8','2017-04-16 06:39:15'),(20,NULL,'a929732146a27956ecaaab910f2d2178','2017-04-16 06:39:43'),(21,NULL,'ed12f2dbf85f7ad32f179b7ff0a3893e','2017-04-16 06:39:15'),(22,NULL,'0e54d345acc61b2df65dd264f540e353','2017-04-16 07:46:32'),(23,NULL,'264932d6997c7b326160e03b8a7595f2','2017-04-16 07:46:32'),(24,NULL,'7f32c0718975a6d6f59c4cf0b9486d3a','2017-04-16 07:46:32'),(25,NULL,'729e26a578b2a357e1f69ece74ba5c5c','2017-04-16 10:55:48'),(26,NULL,'2e722ba26aac072a8f1da7b320a3f0e7','2017-04-16 10:55:53'),(27,NULL,'f69265a1a055030c864b453bddef7f8e','2017-04-16 11:55:07'),(28,NULL,'546e25bb3ff0ba2e9769fa53a7f2df5d','2017-04-16 10:55:54'),(29,'2','243c967cc41284d1cc5baeb73f93c296','2017-04-16 14:19:17'),(30,NULL,'1fb645220401584a09df7780e9d95437','2017-04-16 12:05:09'),(31,NULL,'91948f48ace249ba25cb0795a3d4058d','2017-04-16 15:24:15'),(32,NULL,'2ed4f4ff39bd39d12d1e34e495af552c','2017-04-16 15:30:26'),(33,NULL,'3078f4a2951a2b2b0ab6f54205f315b0','2017-04-16 15:30:31'),(34,NULL,'47f7d9bce41ccf1aaba58521f3e125a1','2017-04-16 17:38:05'),(35,NULL,'96df7ab8049b04048c9990728c955235','2017-04-16 17:43:58'),(36,NULL,'940e6dc59a99a716fb4dca409536b6a6','2017-04-17 07:30:01'),(37,NULL,'777f65d50011f1cc3505c7edc86e3fec','2017-04-17 08:39:47'),(38,NULL,'40c96d2fdfc504a8e50ffd0b07f2a59f','2017-04-17 11:23:45'),(39,NULL,'d3c82b8e22b28442dac125ec7c8cad51','2017-04-17 12:55:55'),(40,NULL,'997c734eedc42f06c4d93eb30e29fe55','2017-04-17 13:19:19'),(41,NULL,'d5a2be704e406170da1a2cb36d249cbd','2017-04-17 14:20:39'),(42,NULL,'005fcf9899a3c12cc957039fe8fb7b1c','2017-04-17 13:19:58'),(43,NULL,'750983046d21e8d8f9b40f509da724a2','2017-04-17 13:19:58'),(44,NULL,'679a90070cc3f5769d2d8a715689826a','2017-04-17 18:06:30'),(45,NULL,'33e6a3a974833b9cef49d6ddb7f67365','2017-04-18 08:19:28'),(46,NULL,'cd6d93511aeaca1461012b03fdb55366','2017-04-18 07:37:36'),(47,NULL,'bb7e3941678143243e240c83fc66ad20','2017-04-18 08:06:19'),(48,NULL,'6cac48659e49022a59c5b4be96f8cb8a','2017-04-18 09:29:14'),(49,NULL,'490fd40ace170f53724ee1a4b82b5617','2017-04-18 08:48:53'),(50,NULL,'5969377c06250662ebdc6b5fc53057f3','2017-04-18 09:40:47'),(51,NULL,'490fd40ace170f53724ee1a4b82b5617','2017-04-18 09:40:49'),(52,NULL,'8c29b30558854512195ff86cce4abf50','2017-04-18 09:40:51'),(53,NULL,'d9eca45024bd8c710adb5d245661622d','2017-04-18 10:38:46'),(54,NULL,'ae5f9b8b4803f4f8370ec3b68a126070','2017-04-18 11:55:53'),(55,NULL,'68b05bec6ef2cd9635891e6fe5249f58','2017-04-18 11:43:31'),(56,NULL,'6079a9213942750d0a385fe1f8e20c2d','2017-04-18 13:00:07'),(57,NULL,'cdda2faa6e3e3d418081b256afb90597','2017-04-18 13:02:15'),(58,NULL,'6b1f6ea4d2b4b8c1b6ecb34bb16b1200','2017-04-18 14:05:05'),(59,NULL,'c09fdb8ddd73989b16885e1d74540db2','2017-04-18 14:09:12'),(60,NULL,'ae78d2091e0a8d131e280ceee11a57de','2017-04-18 14:09:26'),(61,NULL,'8474dda34c6eb8f23fbfdaab7d39cd7b','2017-04-18 14:25:05'),(62,NULL,'459a1bec71f9ad69c2a4ef709928a237','2017-04-18 14:25:25'),(63,NULL,'8bbc96238c7a2634fafcb17699b0582b','2017-04-18 14:27:37'),(64,NULL,'ca90d46e63bd5b7160e8623a6cf0d6d2','2017-04-18 14:27:51'),(65,NULL,'1533c3dc299c1125769906df19268ef8','2017-04-18 14:30:36'),(66,NULL,'cca735b82ef4a1f353aaed0615534ca9','2017-04-18 14:30:51'),(67,NULL,'50656e1b00b6c3ddcc43a4cffb4e4e68','2017-04-19 09:30:13'),(68,NULL,'53e47c430ce3205a55e2eba5703c8682','2017-04-19 10:47:02'),(69,NULL,'83465ede8c1ae741fac8653e51edaa38','2017-04-19 12:10:51'),(70,NULL,'98e2b3dd0a1375083c2b280629c9ff14','2017-04-19 13:11:50'),(71,NULL,'c75f1effd5f64aaba1e8bd1c852faaa1','2017-04-19 14:28:55'),(72,NULL,'b040e2d9af85771491983f717a1dec1b','2017-04-20 06:57:15'),(73,NULL,'eef09a9a978d015034d3c5a3033351f6','2017-04-20 07:33:35'),(74,NULL,'4191ca948889e6538654e505caac5541','2017-04-20 08:45:37'),(75,NULL,'cfc902c85faffd219416f920b2ae9970','2017-04-20 11:40:39'),(76,NULL,'2ab9976277fe3b8ac92669f9bb7ad836','2017-04-20 12:21:33'),(77,NULL,'cf453484f7560234d6b0d201e4efcdd7','2017-04-20 12:56:38'),(78,NULL,'8246d4b8d05e843d27f335fd625d7015','2017-04-21 19:38:27'),(79,NULL,'aaf3177c2f24d42f44ed698a7a01f729','2017-04-21 20:29:26'),(80,NULL,'5e4504b73101a8c91dad84c1ccee14db','2017-04-23 05:15:37'),(81,NULL,'33505f687231ba2be153af229e247005','2017-04-23 05:16:04');
/*!40000 ALTER TABLE `customer_visitor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `design_change`
--

DROP TABLE IF EXISTS `design_change`;
CREATE TABLE `design_change` (
  `design_change_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Design Change Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `design` varchar(255) DEFAULT NULL COMMENT 'Design',
  `date_from` date DEFAULT NULL COMMENT 'First Date of Design Activity',
  `date_to` date DEFAULT NULL COMMENT 'Last Date of Design Activity',
  PRIMARY KEY (`design_change_id`),
  KEY `DESIGN_CHANGE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Design Changes';

--
-- Table structure for table `design_config_grid_flat`
--

DROP TABLE IF EXISTS `design_config_grid_flat`;
CREATE TABLE `design_config_grid_flat` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `store_website_id` int(11) DEFAULT NULL COMMENT 'Store_website_id',
  `store_group_id` int(11) DEFAULT NULL COMMENT 'Store_group_id',
  `store_id` int(11) DEFAULT NULL COMMENT 'Store_id',
  `theme_theme_id` varchar(255) DEFAULT NULL COMMENT 'Theme_theme_id',
  PRIMARY KEY (`entity_id`),
  KEY `DESIGN_CONFIG_GRID_FLAT_STORE_WEBSITE_ID` (`store_website_id`),
  KEY `DESIGN_CONFIG_GRID_FLAT_STORE_GROUP_ID` (`store_group_id`),
  KEY `DESIGN_CONFIG_GRID_FLAT_STORE_ID` (`store_id`),
  FULLTEXT KEY `DESIGN_CONFIG_GRID_FLAT_THEME_THEME_ID` (`theme_theme_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='design_config_grid_flat';

--
-- Dumping data for table `design_config_grid_flat`
--

LOCK TABLES `design_config_grid_flat` WRITE;
/*!40000 ALTER TABLE `design_config_grid_flat` DISABLE KEYS */;
INSERT INTO `design_config_grid_flat` VALUES ('0',NULL,NULL,NULL,'9'),('1','1',NULL,NULL,'9'),('2','1','2','3','9'),('3','1','1','1','10'),('4','1','1','2','10');
/*!40000 ALTER TABLE `design_config_grid_flat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directory_country`
--

DROP TABLE IF EXISTS `directory_country`;
CREATE TABLE `directory_country` (
  `country_id` varchar(2) NOT NULL COMMENT 'Country Id in ISO-2',
  `iso2_code` varchar(2) DEFAULT NULL COMMENT 'Country ISO-2 format',
  `iso3_code` varchar(3) DEFAULT NULL COMMENT 'Country ISO-3',
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Directory Country';

--
-- Dumping data for table `directory_country`
--

LOCK TABLES `directory_country` WRITE;
/*!40000 ALTER TABLE `directory_country` DISABLE KEYS */;
INSERT INTO `directory_country` VALUES ('AD','AD','AND'),('AE','AE','ARE'),('AF','AF','AFG'),('AG','AG','ATG'),('AI','AI','AIA'),('AL','AL','ALB'),('AM','AM','ARM'),('AN','AN','ANT'),('AO','AO','AGO'),('AQ','AQ','ATA'),('AR','AR','ARG'),('AS','AS','ASM'),('AT','AT','AUT'),('AU','AU','AUS'),('AW','AW','ABW'),('AX','AX','ALA'),('AZ','AZ','AZE'),('BA','BA','BIH'),('BB','BB','BRB'),('BD','BD','BGD'),('BE','BE','BEL'),('BF','BF','BFA'),('BG','BG','BGR'),('BH','BH','BHR'),('BI','BI','BDI'),('BJ','BJ','BEN'),('BL','BL','BLM'),('BM','BM','BMU'),('BN','BN','BRN'),('BO','BO','BOL'),('BR','BR','BRA'),('BS','BS','BHS'),('BT','BT','BTN'),('BV','BV','BVT'),('BW','BW','BWA'),('BY','BY','BLR'),('BZ','BZ','BLZ'),('CA','CA','CAN'),('CC','CC','CCK'),('CD','CD','COD'),('CF','CF','CAF'),('CG','CG','COG'),('CH','CH','CHE'),('CI','CI','CIV'),('CK','CK','COK'),('CL','CL','CHL'),('CM','CM','CMR'),('CN','CN','CHN'),('CO','CO','COL'),('CR','CR','CRI'),('CU','CU','CUB'),('CV','CV','CPV'),('CX','CX','CXR'),('CY','CY','CYP'),('CZ','CZ','CZE'),('DE','DE','DEU'),('DJ','DJ','DJI'),('DK','DK','DNK'),('DM','DM','DMA'),('DO','DO','DOM'),('DZ','DZ','DZA'),('EC','EC','ECU'),('EE','EE','EST'),('EG','EG','EGY'),('EH','EH','ESH'),('ER','ER','ERI'),('ES','ES','ESP'),('ET','ET','ETH'),('FI','FI','FIN'),('FJ','FJ','FJI'),('FK','FK','FLK'),('FM','FM','FSM'),('FO','FO','FRO'),('FR','FR','FRA'),('GA','GA','GAB'),('GB','GB','GBR'),('GD','GD','GRD'),('GE','GE','GEO'),('GF','GF','GUF'),('GG','GG','GGY'),('GH','GH','GHA'),('GI','GI','GIB'),('GL','GL','GRL'),('GM','GM','GMB'),('GN','GN','GIN'),('GP','GP','GLP'),('GQ','GQ','GNQ'),('GR','GR','GRC'),('GS','GS','SGS'),('GT','GT','GTM'),('GU','GU','GUM'),('GW','GW','GNB'),('GY','GY','GUY'),('HK','HK','HKG'),('HM','HM','HMD'),('HN','HN','HND'),('HR','HR','HRV'),('HT','HT','HTI'),('HU','HU','HUN'),('ID','ID','IDN'),('IE','IE','IRL'),('IL','IL','ISR'),('IM','IM','IMN'),('IN','IN','IND'),('IO','IO','IOT'),('IQ','IQ','IRQ'),('IR','IR','IRN'),('IS','IS','ISL'),('IT','IT','ITA'),('JE','JE','JEY'),('JM','JM','JAM'),('JO','JO','JOR'),('JP','JP','JPN'),('KE','KE','KEN'),('KG','KG','KGZ'),('KH','KH','KHM'),('KI','KI','KIR'),('KM','KM','COM'),('KN','KN','KNA'),('KP','KP','PRK'),('KR','KR','KOR'),('KW','KW','KWT'),('KY','KY','CYM'),('KZ','KZ','KAZ'),('LA','LA','LAO'),('LB','LB','LBN'),('LC','LC','LCA'),('LI','LI','LIE'),('LK','LK','LKA'),('LR','LR','LBR'),('LS','LS','LSO'),('LT','LT','LTU'),('LU','LU','LUX'),('LV','LV','LVA'),('LY','LY','LBY'),('MA','MA','MAR'),('MC','MC','MCO'),('MD','MD','MDA'),('ME','ME','MNE'),('MF','MF','MAF'),('MG','MG','MDG'),('MH','MH','MHL'),('MK','MK','MKD'),('ML','ML','MLI'),('MM','MM','MMR'),('MN','MN','MNG'),('MO','MO','MAC'),('MP','MP','MNP'),('MQ','MQ','MTQ'),('MR','MR','MRT'),('MS','MS','MSR'),('MT','MT','MLT'),('MU','MU','MUS'),('MV','MV','MDV'),('MW','MW','MWI'),('MX','MX','MEX'),('MY','MY','MYS'),('MZ','MZ','MOZ'),('NA','NA','NAM'),('NC','NC','NCL'),('NE','NE','NER'),('NF','NF','NFK'),('NG','NG','NGA'),('NI','NI','NIC'),('NL','NL','NLD'),('NO','NO','NOR'),('NP','NP','NPL'),('NR','NR','NRU'),('NU','NU','NIU'),('NZ','NZ','NZL'),('OM','OM','OMN'),('PA','PA','PAN'),('PE','PE','PER'),('PF','PF','PYF'),('PG','PG','PNG'),('PH','PH','PHL'),('PK','PK','PAK'),('PL','PL','POL'),('PM','PM','SPM'),('PN','PN','PCN'),('PS','PS','PSE'),('PT','PT','PRT'),('PW','PW','PLW'),('PY','PY','PRY'),('QA','QA','QAT'),('RE','RE','REU'),('RO','RO','ROU'),('RS','RS','SRB'),('RU','RU','RUS'),('RW','RW','RWA'),('SA','SA','SAU'),('SB','SB','SLB'),('SC','SC','SYC'),('SD','SD','SDN'),('SE','SE','SWE'),('SG','SG','SGP'),('SH','SH','SHN'),('SI','SI','SVN'),('SJ','SJ','SJM'),('SK','SK','SVK'),('SL','SL','SLE'),('SM','SM','SMR'),('SN','SN','SEN'),('SO','SO','SOM'),('SR','SR','SUR'),('ST','ST','STP'),('SV','SV','SLV'),('SY','SY','SYR'),('SZ','SZ','SWZ'),('TC','TC','TCA'),('TD','TD','TCD'),('TF','TF','ATF'),('TG','TG','TGO'),('TH','TH','THA'),('TJ','TJ','TJK'),('TK','TK','TKL'),('TL','TL','TLS'),('TM','TM','TKM'),('TN','TN','TUN'),('TO','TO','TON'),('TR','TR','TUR'),('TT','TT','TTO'),('TV','TV','TUV'),('TW','TW','TWN'),('TZ','TZ','TZA'),('UA','UA','UKR'),('UG','UG','UGA'),('UM','UM','UMI'),('US','US','USA'),('UY','UY','URY'),('UZ','UZ','UZB'),('VA','VA','VAT'),('VC','VC','VCT'),('VE','VE','VEN'),('VG','VG','VGB'),('VI','VI','VIR'),('VN','VN','VNM'),('VU','VU','VUT'),('WF','WF','WLF'),('WS','WS','WSM'),('YE','YE','YEM'),('YT','YT','MYT'),('ZA','ZA','ZAF'),('ZM','ZM','ZMB'),('ZW','ZW','ZWE');
/*!40000 ALTER TABLE `directory_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directory_country_format`
--

DROP TABLE IF EXISTS `directory_country_format`;
CREATE TABLE `directory_country_format` (
  `country_format_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Country Format Id',
  `country_id` varchar(2) DEFAULT NULL COMMENT 'Country Id in ISO-2',
  `type` varchar(30) DEFAULT NULL COMMENT 'Country Format Type',
  `format` text NOT NULL COMMENT 'Country Format',
  PRIMARY KEY (`country_format_id`),
  UNIQUE KEY `DIRECTORY_COUNTRY_FORMAT_COUNTRY_ID_TYPE` (`country_id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Directory Country Format';

--
-- Table structure for table `directory_country_region`
--

DROP TABLE IF EXISTS `directory_country_region`;
CREATE TABLE `directory_country_region` (
  `region_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Region Id',
  `country_id` varchar(4) NOT NULL DEFAULT '0' COMMENT 'Country Id in ISO-2',
  `code` varchar(32) DEFAULT NULL COMMENT 'Region code',
  `default_name` varchar(255) DEFAULT NULL COMMENT 'Region Name',
  PRIMARY KEY (`region_id`),
  KEY `DIRECTORY_COUNTRY_REGION_COUNTRY_ID` (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=512 DEFAULT CHARSET=utf8 COMMENT='Directory Country Region';

--
-- Dumping data for table `directory_country_region`
--

LOCK TABLES `directory_country_region` WRITE;
/*!40000 ALTER TABLE `directory_country_region` DISABLE KEYS */;
INSERT INTO `directory_country_region` VALUES ('1','US','AL','Alabama'),('2','US','AK','Alaska'),('3','US','AS','American Samoa'),('4','US','AZ','Arizona'),('5','US','AR','Arkansas'),('6','US','AE','Armed Forces Africa'),('7','US','AA','Armed Forces Americas'),('8','US','AE','Armed Forces Canada'),('9','US','AE','Armed Forces Europe'),('10','US','AE','Armed Forces Middle East'),('11','US','AP','Armed Forces Pacific'),('12','US','CA','California'),('13','US','CO','Colorado'),('14','US','CT','Connecticut'),('15','US','DE','Delaware'),('16','US','DC','District of Columbia'),('17','US','FM','Federated States Of Micronesia'),('18','US','FL','Florida'),('19','US','GA','Georgia'),('20','US','GU','Guam'),('21','US','HI','Hawaii'),('22','US','ID','Idaho'),('23','US','IL','Illinois'),('24','US','IN','Indiana'),('25','US','IA','Iowa'),('26','US','KS','Kansas'),('27','US','KY','Kentucky'),('28','US','LA','Louisiana'),('29','US','ME','Maine'),('30','US','MH','Marshall Islands'),('31','US','MD','Maryland'),('32','US','MA','Massachusetts'),('33','US','MI','Michigan'),('34','US','MN','Minnesota'),('35','US','MS','Mississippi'),('36','US','MO','Missouri'),('37','US','MT','Montana'),('38','US','NE','Nebraska'),('39','US','NV','Nevada'),('40','US','NH','New Hampshire'),('41','US','NJ','New Jersey'),('42','US','NM','New Mexico'),('43','US','NY','New York'),('44','US','NC','North Carolina'),('45','US','ND','North Dakota'),('46','US','MP','Northern Mariana Islands'),('47','US','OH','Ohio'),('48','US','OK','Oklahoma'),('49','US','OR','Oregon'),('50','US','PW','Palau'),('51','US','PA','Pennsylvania'),('52','US','PR','Puerto Rico'),('53','US','RI','Rhode Island'),('54','US','SC','South Carolina'),('55','US','SD','South Dakota'),('56','US','TN','Tennessee'),('57','US','TX','Texas'),('58','US','UT','Utah'),('59','US','VT','Vermont'),('60','US','VI','Virgin Islands'),('61','US','VA','Virginia'),('62','US','WA','Washington'),('63','US','WV','West Virginia'),('64','US','WI','Wisconsin'),('65','US','WY','Wyoming'),('66','CA','AB','Alberta'),('67','CA','BC','British Columbia'),('68','CA','MB','Manitoba'),('69','CA','NL','Newfoundland and Labrador'),('70','CA','NB','New Brunswick'),('71','CA','NS','Nova Scotia'),('72','CA','NT','Northwest Territories'),('73','CA','NU','Nunavut'),('74','CA','ON','Ontario'),('75','CA','PE','Prince Edward Island'),('76','CA','QC','Quebec'),('77','CA','SK','Saskatchewan'),('78','CA','YT','Yukon Territory'),('79','DE','NDS','Niedersachsen'),('80','DE','BAW','Baden-Württemberg'),('81','DE','BAY','Bayern'),('82','DE','BER','Berlin'),('83','DE','BRG','Brandenburg'),('84','DE','BRE','Bremen'),('85','DE','HAM','Hamburg'),('86','DE','HES','Hessen'),('87','DE','MEC','Mecklenburg-Vorpommern'),('88','DE','NRW','Nordrhein-Westfalen'),('89','DE','RHE','Rheinland-Pfalz'),('90','DE','SAR','Saarland'),('91','DE','SAS','Sachsen'),('92','DE','SAC','Sachsen-Anhalt'),('93','DE','SCN','Schleswig-Holstein'),('94','DE','THE','Thüringen'),('95','AT','WI','Wien'),('96','AT','NO','Niederösterreich'),('97','AT','OO','Oberösterreich'),('98','AT','SB','Salzburg'),('99','AT','KN','Kärnten'),('100','AT','ST','Steiermark'),('101','AT','TI','Tirol'),('102','AT','BL','Burgenland'),('103','AT','VB','Vorarlberg'),('104','CH','AG','Aargau'),('105','CH','AI','Appenzell Innerrhoden'),('106','CH','AR','Appenzell Ausserrhoden'),('107','CH','BE','Bern'),('108','CH','BL','Basel-Landschaft'),('109','CH','BS','Basel-Stadt'),('110','CH','FR','Freiburg'),('111','CH','GE','Genf'),('112','CH','GL','Glarus'),('113','CH','GR','Graubünden'),('114','CH','JU','Jura'),('115','CH','LU','Luzern'),('116','CH','NE','Neuenburg'),('117','CH','NW','Nidwalden'),('118','CH','OW','Obwalden'),('119','CH','SG','St. Gallen'),('120','CH','SH','Schaffhausen'),('121','CH','SO','Solothurn'),('122','CH','SZ','Schwyz'),('123','CH','TG','Thurgau'),('124','CH','TI','Tessin'),('125','CH','UR','Uri'),('126','CH','VD','Waadt'),('127','CH','VS','Wallis'),('128','CH','ZG','Zug'),('129','CH','ZH','Zürich'),('130','ES','A Coruсa','A Coruña'),('131','ES','Alava','Alava'),('132','ES','Albacete','Albacete'),('133','ES','Alicante','Alicante'),('134','ES','Almeria','Almeria'),('135','ES','Asturias','Asturias'),('136','ES','Avila','Avila'),('137','ES','Badajoz','Badajoz'),('138','ES','Baleares','Baleares'),('139','ES','Barcelona','Barcelona'),('140','ES','Burgos','Burgos'),('141','ES','Caceres','Caceres'),('142','ES','Cadiz','Cadiz'),('143','ES','Cantabria','Cantabria'),('144','ES','Castellon','Castellon'),('145','ES','Ceuta','Ceuta'),('146','ES','Ciudad Real','Ciudad Real'),('147','ES','Cordoba','Cordoba'),('148','ES','Cuenca','Cuenca'),('149','ES','Girona','Girona'),('150','ES','Granada','Granada'),('151','ES','Guadalajara','Guadalajara'),('152','ES','Guipuzcoa','Guipuzcoa'),('153','ES','Huelva','Huelva'),('154','ES','Huesca','Huesca'),('155','ES','Jaen','Jaen'),('156','ES','La Rioja','La Rioja'),('157','ES','Las Palmas','Las Palmas'),('158','ES','Leon','Leon'),('159','ES','Lleida','Lleida'),('160','ES','Lugo','Lugo'),('161','ES','Madrid','Madrid'),('162','ES','Malaga','Malaga'),('163','ES','Melilla','Melilla'),('164','ES','Murcia','Murcia'),('165','ES','Navarra','Navarra'),('166','ES','Ourense','Ourense'),('167','ES','Palencia','Palencia'),('168','ES','Pontevedra','Pontevedra'),('169','ES','Salamanca','Salamanca'),('170','ES','Santa Cruz de Tenerife','Santa Cruz de Tenerife'),('171','ES','Segovia','Segovia'),('172','ES','Sevilla','Sevilla'),('173','ES','Soria','Soria'),('174','ES','Tarragona','Tarragona'),('175','ES','Teruel','Teruel'),('176','ES','Toledo','Toledo'),('177','ES','Valencia','Valencia'),('178','ES','Valladolid','Valladolid'),('179','ES','Vizcaya','Vizcaya'),('180','ES','Zamora','Zamora'),('181','ES','Zaragoza','Zaragoza'),('182','FR','1','Ain'),('183','FR','2','Aisne'),('184','FR','3','Allier'),('185','FR','4','Alpes-de-Haute-Provence'),('186','FR','5','Hautes-Alpes'),('187','FR','6','Alpes-Maritimes'),('188','FR','7','Ardèche'),('189','FR','8','Ardennes'),('190','FR','9','Ariège'),('191','FR','10','Aube'),('192','FR','11','Aude'),('193','FR','12','Aveyron'),('194','FR','13','Bouches-du-Rhône'),('195','FR','14','Calvados'),('196','FR','15','Cantal'),('197','FR','16','Charente'),('198','FR','17','Charente-Maritime'),('199','FR','18','Cher'),('200','FR','19','Corrèze'),('201','FR','2A','Corse-du-Sud'),('202','FR','2B','Haute-Corse'),('203','FR','21','Côte-d\'Or'),('204','FR','22','Côtes-d\'Armor'),('205','FR','23','Creuse'),('206','FR','24','Dordogne'),('207','FR','25','Doubs'),('208','FR','26','Drôme'),('209','FR','27','Eure'),('210','FR','28','Eure-et-Loir'),('211','FR','29','Finistère'),('212','FR','30','Gard'),('213','FR','31','Haute-Garonne'),('214','FR','32','Gers'),('215','FR','33','Gironde'),('216','FR','34','Hérault'),('217','FR','35','Ille-et-Vilaine'),('218','FR','36','Indre'),('219','FR','37','Indre-et-Loire'),('220','FR','38','Isère'),('221','FR','39','Jura'),('222','FR','40','Landes'),('223','FR','41','Loir-et-Cher'),('224','FR','42','Loire'),('225','FR','43','Haute-Loire'),('226','FR','44','Loire-Atlantique'),('227','FR','45','Loiret'),('228','FR','46','Lot'),('229','FR','47','Lot-et-Garonne'),('230','FR','48','Lozère'),('231','FR','49','Maine-et-Loire'),('232','FR','50','Manche'),('233','FR','51','Marne'),('234','FR','52','Haute-Marne'),('235','FR','53','Mayenne'),('236','FR','54','Meurthe-et-Moselle'),('237','FR','55','Meuse'),('238','FR','56','Morbihan'),('239','FR','57','Moselle'),('240','FR','58','Nièvre'),('241','FR','59','Nord'),('242','FR','60','Oise'),('243','FR','61','Orne'),('244','FR','62','Pas-de-Calais'),('245','FR','63','Puy-de-Dôme'),('246','FR','64','Pyrénées-Atlantiques'),('247','FR','65','Hautes-Pyrénées'),('248','FR','66','Pyrénées-Orientales'),('249','FR','67','Bas-Rhin'),('250','FR','68','Haut-Rhin'),('251','FR','69','Rhône'),('252','FR','70','Haute-Saône'),('253','FR','71','Saône-et-Loire'),('254','FR','72','Sarthe'),('255','FR','73','Savoie'),('256','FR','74','Haute-Savoie'),('257','FR','75','Paris'),('258','FR','76','Seine-Maritime'),('259','FR','77','Seine-et-Marne'),('260','FR','78','Yvelines'),('261','FR','79','Deux-Sèvres'),('262','FR','80','Somme'),('263','FR','81','Tarn'),('264','FR','82','Tarn-et-Garonne'),('265','FR','83','Var'),('266','FR','84','Vaucluse'),('267','FR','85','Vendée'),('268','FR','86','Vienne'),('269','FR','87','Haute-Vienne'),('270','FR','88','Vosges'),('271','FR','89','Yonne'),('272','FR','90','Territoire-de-Belfort'),('273','FR','91','Essonne'),('274','FR','92','Hauts-de-Seine'),('275','FR','93','Seine-Saint-Denis'),('276','FR','94','Val-de-Marne'),('277','FR','95','Val-d\'Oise'),('278','RO','AB','Alba'),('279','RO','AR','Arad'),('280','RO','AG','Argeş'),('281','RO','BC','Bacău'),('282','RO','BH','Bihor'),('283','RO','BN','Bistriţa-Năsăud'),('284','RO','BT','Botoşani'),('285','RO','BV','Braşov'),('286','RO','BR','Brăila'),('287','RO','B','Bucureşti'),('288','RO','BZ','Buzău'),('289','RO','CS','Caraş-Severin'),('290','RO','CL','Călăraşi'),('291','RO','CJ','Cluj'),('292','RO','CT','Constanţa'),('293','RO','CV','Covasna'),('294','RO','DB','Dâmboviţa'),('295','RO','DJ','Dolj'),('296','RO','GL','Galaţi'),('297','RO','GR','Giurgiu'),('298','RO','GJ','Gorj'),('299','RO','HR','Harghita'),('300','RO','HD','Hunedoara'),('301','RO','IL','Ialomiţa'),('302','RO','IS','Iaşi'),('303','RO','IF','Ilfov'),('304','RO','MM','Maramureş'),('305','RO','MH','Mehedinţi'),('306','RO','MS','Mureş'),('307','RO','NT','Neamţ'),('308','RO','OT','Olt'),('309','RO','PH','Prahova'),('310','RO','SM','Satu-Mare'),('311','RO','SJ','Sălaj'),('312','RO','SB','Sibiu'),('313','RO','SV','Suceava'),('314','RO','TR','Teleorman'),('315','RO','TM','Timiş'),('316','RO','TL','Tulcea'),('317','RO','VS','Vaslui'),('318','RO','VL','Vâlcea'),('319','RO','VN','Vrancea'),('320','FI','Lappi','Lappi'),('321','FI','Pohjois-Pohjanmaa','Pohjois-Pohjanmaa'),('322','FI','Kainuu','Kainuu'),('323','FI','Pohjois-Karjala','Pohjois-Karjala'),('324','FI','Pohjois-Savo','Pohjois-Savo'),('325','FI','Etelä-Savo','Etelä-Savo'),('326','FI','Etelä-Pohjanmaa','Etelä-Pohjanmaa'),('327','FI','Pohjanmaa','Pohjanmaa'),('328','FI','Pirkanmaa','Pirkanmaa'),('329','FI','Satakunta','Satakunta'),('330','FI','Keski-Pohjanmaa','Keski-Pohjanmaa'),('331','FI','Keski-Suomi','Keski-Suomi'),('332','FI','Varsinais-Suomi','Varsinais-Suomi'),('333','FI','Etelä-Karjala','Etelä-Karjala'),('334','FI','Päijät-Häme','Päijät-Häme'),('335','FI','Kanta-Häme','Kanta-Häme'),('336','FI','Uusimaa','Uusimaa'),('337','FI','Itä-Uusimaa','Itä-Uusimaa'),('338','FI','Kymenlaakso','Kymenlaakso'),('339','FI','Ahvenanmaa','Ahvenanmaa'),('340','EE','EE-37','Harjumaa'),('341','EE','EE-39','Hiiumaa'),('342','EE','EE-44','Ida-Virumaa'),('343','EE','EE-49','Jõgevamaa'),('344','EE','EE-51','Järvamaa'),('345','EE','EE-57','Läänemaa'),('346','EE','EE-59','Lääne-Virumaa'),('347','EE','EE-65','Põlvamaa'),('348','EE','EE-67','Pärnumaa'),('349','EE','EE-70','Raplamaa'),('350','EE','EE-74','Saaremaa'),('351','EE','EE-78','Tartumaa'),('352','EE','EE-82','Valgamaa'),('353','EE','EE-84','Viljandimaa'),('354','EE','EE-86','Võrumaa'),('355','LV','LV-DGV','Daugavpils'),('356','LV','LV-JEL','Jelgava'),('357','LV','Jēkabpils','Jēkabpils'),('358','LV','LV-JUR','Jūrmala'),('359','LV','LV-LPX','Liepāja'),('360','LV','LV-LE','Liepājas novads'),('361','LV','LV-REZ','Rēzekne'),('362','LV','LV-RIX','Rīga'),('363','LV','LV-RI','Rīgas novads'),('364','LV','Valmiera','Valmiera'),('365','LV','LV-VEN','Ventspils'),('366','LV','Aglonas novads','Aglonas novads'),('367','LV','LV-AI','Aizkraukles novads'),('368','LV','Aizputes novads','Aizputes novads'),('369','LV','Aknīstes novads','Aknīstes novads'),('370','LV','Alojas novads','Alojas novads'),('371','LV','Alsungas novads','Alsungas novads'),('372','LV','LV-AL','Alūksnes novads'),('373','LV','Amatas novads','Amatas novads'),('374','LV','Apes novads','Apes novads'),('375','LV','Auces novads','Auces novads'),('376','LV','Babītes novads','Babītes novads'),('377','LV','Baldones novads','Baldones novads'),('378','LV','Baltinavas novads','Baltinavas novads'),('379','LV','LV-BL','Balvu novads'),('380','LV','LV-BU','Bauskas novads'),('381','LV','Beverīnas novads','Beverīnas novads'),('382','LV','Brocēnu novads','Brocēnu novads'),('383','LV','Burtnieku novads','Burtnieku novads'),('384','LV','Carnikavas novads','Carnikavas novads'),('385','LV','Cesvaines novads','Cesvaines novads'),('386','LV','Ciblas novads','Ciblas novads'),('387','LV','LV-CE','Cēsu novads'),('388','LV','Dagdas novads','Dagdas novads'),('389','LV','LV-DA','Daugavpils novads'),('390','LV','LV-DO','Dobeles novads'),('391','LV','Dundagas novads','Dundagas novads'),('392','LV','Durbes novads','Durbes novads'),('393','LV','Engures novads','Engures novads'),('394','LV','Garkalnes novads','Garkalnes novads'),('395','LV','Grobiņas novads','Grobiņas novads'),('396','LV','LV-GU','Gulbenes novads'),('397','LV','Iecavas novads','Iecavas novads'),('398','LV','Ikšķiles novads','Ikšķiles novads'),('399','LV','Ilūkstes novads','Ilūkstes novads'),('400','LV','Inčukalna novads','Inčukalna novads'),('401','LV','Jaunjelgavas novads','Jaunjelgavas novads'),('402','LV','Jaunpiebalgas novads','Jaunpiebalgas novads'),('403','LV','Jaunpils novads','Jaunpils novads'),('404','LV','LV-JL','Jelgavas novads'),('405','LV','LV-JK','Jēkabpils novads'),('406','LV','Kandavas novads','Kandavas novads'),('407','LV','Kokneses novads','Kokneses novads'),('408','LV','Krimuldas novads','Krimuldas novads'),('409','LV','Krustpils novads','Krustpils novads'),('410','LV','LV-KR','Krāslavas novads'),('411','LV','LV-KU','Kuldīgas novads'),('412','LV','Kārsavas novads','Kārsavas novads'),('413','LV','Lielvārdes novads','Lielvārdes novads'),('414','LV','LV-LM','Limbažu novads'),('415','LV','Lubānas novads','Lubānas novads'),('416','LV','LV-LU','Ludzas novads'),('417','LV','Līgatnes novads','Līgatnes novads'),('418','LV','Līvānu novads','Līvānu novads'),('419','LV','LV-MA','Madonas novads'),('420','LV','Mazsalacas novads','Mazsalacas novads'),('421','LV','Mālpils novads','Mālpils novads'),('422','LV','Mārupes novads','Mārupes novads'),('423','LV','Naukšēnu novads','Naukšēnu novads'),('424','LV','Neretas novads','Neretas novads'),('425','LV','Nīcas novads','Nīcas novads'),('426','LV','LV-OG','Ogres novads'),('427','LV','Olaines novads','Olaines novads'),('428','LV','Ozolnieku novads','Ozolnieku novads'),('429','LV','LV-PR','Preiļu novads'),('430','LV','Priekules novads','Priekules novads'),('431','LV','Priekuļu novads','Priekuļu novads'),('432','LV','Pārgaujas novads','Pārgaujas novads'),('433','LV','Pāvilostas novads','Pāvilostas novads'),('434','LV','Pļaviņu novads','Pļaviņu novads'),('435','LV','Raunas novads','Raunas novads'),('436','LV','Riebiņu novads','Riebiņu novads'),('437','LV','Rojas novads','Rojas novads'),('438','LV','Ropažu novads','Ropažu novads'),('439','LV','Rucavas novads','Rucavas novads'),('440','LV','Rugāju novads','Rugāju novads'),('441','LV','Rundāles novads','Rundāles novads'),('442','LV','LV-RE','Rēzeknes novads'),('443','LV','Rūjienas novads','Rūjienas novads'),('444','LV','Salacgrīvas novads','Salacgrīvas novads'),('445','LV','Salas novads','Salas novads'),('446','LV','Salaspils novads','Salaspils novads'),('447','LV','LV-SA','Saldus novads'),('448','LV','Saulkrastu novads','Saulkrastu novads'),('449','LV','Siguldas novads','Siguldas novads'),('450','LV','Skrundas novads','Skrundas novads'),('451','LV','Skrīveru novads','Skrīveru novads'),('452','LV','Smiltenes novads','Smiltenes novads'),('453','LV','Stopiņu novads','Stopiņu novads'),('454','LV','Strenču novads','Strenču novads'),('455','LV','Sējas novads','Sējas novads'),('456','LV','LV-TA','Talsu novads'),('457','LV','LV-TU','Tukuma novads'),('458','LV','Tērvetes novads','Tērvetes novads'),('459','LV','Vaiņodes novads','Vaiņodes novads'),('460','LV','LV-VK','Valkas novads'),('461','LV','LV-VM','Valmieras novads'),('462','LV','Varakļānu novads','Varakļānu novads'),('463','LV','Vecpiebalgas novads','Vecpiebalgas novads'),('464','LV','Vecumnieku novads','Vecumnieku novads'),('465','LV','LV-VE','Ventspils novads'),('466','LV','Viesītes novads','Viesītes novads'),('467','LV','Viļakas novads','Viļakas novads'),('468','LV','Viļānu novads','Viļānu novads'),('469','LV','Vārkavas novads','Vārkavas novads'),('470','LV','Zilupes novads','Zilupes novads'),('471','LV','Ādažu novads','Ādažu novads'),('472','LV','Ērgļu novads','Ērgļu novads'),('473','LV','Ķeguma novads','Ķeguma novads'),('474','LV','Ķekavas novads','Ķekavas novads'),('475','LT','LT-AL','Alytaus Apskritis'),('476','LT','LT-KU','Kauno Apskritis'),('477','LT','LT-KL','Klaipėdos Apskritis'),('478','LT','LT-MR','Marijampolės Apskritis'),('479','LT','LT-PN','Panevėžio Apskritis'),('480','LT','LT-SA','Šiaulių Apskritis'),('481','LT','LT-TA','Tauragės Apskritis'),('482','LT','LT-TE','Telšių Apskritis'),('483','LT','LT-UT','Utenos Apskritis'),('484','LT','LT-VL','Vilniaus Apskritis'),('485','BR','AC','Acre'),('486','BR','AL','Alagoas'),('487','BR','AP','Amapá'),('488','BR','AM','Amazonas'),('489','BR','BA','Bahia'),('490','BR','CE','Ceará'),('491','BR','ES','Espírito Santo'),('492','BR','GO','Goiás'),('493','BR','MA','Maranhão'),('494','BR','MT','Mato Grosso'),('495','BR','MS','Mato Grosso do Sul'),('496','BR','MG','Minas Gerais'),('497','BR','PA','Pará'),('498','BR','PB','Paraíba'),('499','BR','PR','Paraná'),('500','BR','PE','Pernambuco'),('501','BR','PI','Piauí'),('502','BR','RJ','Rio de Janeiro'),('503','BR','RN','Rio Grande do Norte'),('504','BR','RS','Rio Grande do Sul'),('505','BR','RO','Rondônia'),('506','BR','RR','Roraima'),('507','BR','SC','Santa Catarina'),('508','BR','SP','São Paulo'),('509','BR','SE','Sergipe'),('510','BR','TO','Tocantins'),('511','BR','DF','Distrito Federal');
/*!40000 ALTER TABLE `directory_country_region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directory_country_region_name`
--

DROP TABLE IF EXISTS `directory_country_region_name`;
CREATE TABLE `directory_country_region_name` (
  `locale` varchar(8) NOT NULL COMMENT 'Locale',
  `region_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Region Id',
  `name` varchar(255) DEFAULT NULL COMMENT 'Region Name',
  PRIMARY KEY (`locale`,`region_id`),
  KEY `DIRECTORY_COUNTRY_REGION_NAME_REGION_ID` (`region_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Directory Country Region Name';

--
-- Dumping data for table `directory_country_region_name`
--

LOCK TABLES `directory_country_region_name` WRITE;
/*!40000 ALTER TABLE `directory_country_region_name` DISABLE KEYS */;
INSERT INTO `directory_country_region_name` VALUES ('en_US','1','Alabama'),('en_US','2','Alaska'),('en_US','3','American Samoa'),('en_US','4','Arizona'),('en_US','5','Arkansas'),('en_US','6','Armed Forces Africa'),('en_US','7','Armed Forces Americas'),('en_US','8','Armed Forces Canada'),('en_US','9','Armed Forces Europe'),('en_US','10','Armed Forces Middle East'),('en_US','11','Armed Forces Pacific'),('en_US','12','California'),('en_US','13','Colorado'),('en_US','14','Connecticut'),('en_US','15','Delaware'),('en_US','16','District of Columbia'),('en_US','17','Federated States Of Micronesia'),('en_US','18','Florida'),('en_US','19','Georgia'),('en_US','20','Guam'),('en_US','21','Hawaii'),('en_US','22','Idaho'),('en_US','23','Illinois'),('en_US','24','Indiana'),('en_US','25','Iowa'),('en_US','26','Kansas'),('en_US','27','Kentucky'),('en_US','28','Louisiana'),('en_US','29','Maine'),('en_US','30','Marshall Islands'),('en_US','31','Maryland'),('en_US','32','Massachusetts'),('en_US','33','Michigan'),('en_US','34','Minnesota'),('en_US','35','Mississippi'),('en_US','36','Missouri'),('en_US','37','Montana'),('en_US','38','Nebraska'),('en_US','39','Nevada'),('en_US','40','New Hampshire'),('en_US','41','New Jersey'),('en_US','42','New Mexico'),('en_US','43','New York'),('en_US','44','North Carolina'),('en_US','45','North Dakota'),('en_US','46','Northern Mariana Islands'),('en_US','47','Ohio'),('en_US','48','Oklahoma'),('en_US','49','Oregon'),('en_US','50','Palau'),('en_US','51','Pennsylvania'),('en_US','52','Puerto Rico'),('en_US','53','Rhode Island'),('en_US','54','South Carolina'),('en_US','55','South Dakota'),('en_US','56','Tennessee'),('en_US','57','Texas'),('en_US','58','Utah'),('en_US','59','Vermont'),('en_US','60','Virgin Islands'),('en_US','61','Virginia'),('en_US','62','Washington'),('en_US','63','West Virginia'),('en_US','64','Wisconsin'),('en_US','65','Wyoming'),('en_US','66','Alberta'),('en_US','67','British Columbia'),('en_US','68','Manitoba'),('en_US','69','Newfoundland and Labrador'),('en_US','70','New Brunswick'),('en_US','71','Nova Scotia'),('en_US','72','Northwest Territories'),('en_US','73','Nunavut'),('en_US','74','Ontario'),('en_US','75','Prince Edward Island'),('en_US','76','Quebec'),('en_US','77','Saskatchewan'),('en_US','78','Yukon Territory'),('en_US','79','Niedersachsen'),('en_US','80','Baden-Württemberg'),('en_US','81','Bayern'),('en_US','82','Berlin'),('en_US','83','Brandenburg'),('en_US','84','Bremen'),('en_US','85','Hamburg'),('en_US','86','Hessen'),('en_US','87','Mecklenburg-Vorpommern'),('en_US','88','Nordrhein-Westfalen'),('en_US','89','Rheinland-Pfalz'),('en_US','90','Saarland'),('en_US','91','Sachsen'),('en_US','92','Sachsen-Anhalt'),('en_US','93','Schleswig-Holstein'),('en_US','94','Thüringen'),('en_US','95','Wien'),('en_US','96','Niederösterreich'),('en_US','97','Oberösterreich'),('en_US','98','Salzburg'),('en_US','99','Kärnten'),('en_US','100','Steiermark'),('en_US','101','Tirol'),('en_US','102','Burgenland'),('en_US','103','Vorarlberg'),('en_US','104','Aargau'),('en_US','105','Appenzell Innerrhoden'),('en_US','106','Appenzell Ausserrhoden'),('en_US','107','Bern'),('en_US','108','Basel-Landschaft'),('en_US','109','Basel-Stadt'),('en_US','110','Freiburg'),('en_US','111','Genf'),('en_US','112','Glarus'),('en_US','113','Graubünden'),('en_US','114','Jura'),('en_US','115','Luzern'),('en_US','116','Neuenburg'),('en_US','117','Nidwalden'),('en_US','118','Obwalden'),('en_US','119','St. Gallen'),('en_US','120','Schaffhausen'),('en_US','121','Solothurn'),('en_US','122','Schwyz'),('en_US','123','Thurgau'),('en_US','124','Tessin'),('en_US','125','Uri'),('en_US','126','Waadt'),('en_US','127','Wallis'),('en_US','128','Zug'),('en_US','129','Zürich'),('en_US','130','A Coruña'),('en_US','131','Alava'),('en_US','132','Albacete'),('en_US','133','Alicante'),('en_US','134','Almeria'),('en_US','135','Asturias'),('en_US','136','Avila'),('en_US','137','Badajoz'),('en_US','138','Baleares'),('en_US','139','Barcelona'),('en_US','140','Burgos'),('en_US','141','Caceres'),('en_US','142','Cadiz'),('en_US','143','Cantabria'),('en_US','144','Castellon'),('en_US','145','Ceuta'),('en_US','146','Ciudad Real'),('en_US','147','Cordoba'),('en_US','148','Cuenca'),('en_US','149','Girona'),('en_US','150','Granada'),('en_US','151','Guadalajara'),('en_US','152','Guipuzcoa'),('en_US','153','Huelva'),('en_US','154','Huesca'),('en_US','155','Jaen'),('en_US','156','La Rioja'),('en_US','157','Las Palmas'),('en_US','158','Leon'),('en_US','159','Lleida'),('en_US','160','Lugo'),('en_US','161','Madrid'),('en_US','162','Malaga'),('en_US','163','Melilla'),('en_US','164','Murcia'),('en_US','165','Navarra'),('en_US','166','Ourense'),('en_US','167','Palencia'),('en_US','168','Pontevedra'),('en_US','169','Salamanca'),('en_US','170','Santa Cruz de Tenerife'),('en_US','171','Segovia'),('en_US','172','Sevilla'),('en_US','173','Soria'),('en_US','174','Tarragona'),('en_US','175','Teruel'),('en_US','176','Toledo'),('en_US','177','Valencia'),('en_US','178','Valladolid'),('en_US','179','Vizcaya'),('en_US','180','Zamora'),('en_US','181','Zaragoza'),('en_US','182','Ain'),('en_US','183','Aisne'),('en_US','184','Allier'),('en_US','185','Alpes-de-Haute-Provence'),('en_US','186','Hautes-Alpes'),('en_US','187','Alpes-Maritimes'),('en_US','188','Ardèche'),('en_US','189','Ardennes'),('en_US','190','Ariège'),('en_US','191','Aube'),('en_US','192','Aude'),('en_US','193','Aveyron'),('en_US','194','Bouches-du-Rhône'),('en_US','195','Calvados'),('en_US','196','Cantal'),('en_US','197','Charente'),('en_US','198','Charente-Maritime'),('en_US','199','Cher'),('en_US','200','Corrèze'),('en_US','201','Corse-du-Sud'),('en_US','202','Haute-Corse'),('en_US','203','Côte-d\'Or'),('en_US','204','Côtes-d\'Armor'),('en_US','205','Creuse'),('en_US','206','Dordogne'),('en_US','207','Doubs'),('en_US','208','Drôme'),('en_US','209','Eure'),('en_US','210','Eure-et-Loir'),('en_US','211','Finistère'),('en_US','212','Gard'),('en_US','213','Haute-Garonne'),('en_US','214','Gers'),('en_US','215','Gironde'),('en_US','216','Hérault'),('en_US','217','Ille-et-Vilaine'),('en_US','218','Indre'),('en_US','219','Indre-et-Loire'),('en_US','220','Isère'),('en_US','221','Jura'),('en_US','222','Landes'),('en_US','223','Loir-et-Cher'),('en_US','224','Loire'),('en_US','225','Haute-Loire'),('en_US','226','Loire-Atlantique'),('en_US','227','Loiret'),('en_US','228','Lot'),('en_US','229','Lot-et-Garonne'),('en_US','230','Lozère'),('en_US','231','Maine-et-Loire'),('en_US','232','Manche'),('en_US','233','Marne'),('en_US','234','Haute-Marne'),('en_US','235','Mayenne'),('en_US','236','Meurthe-et-Moselle'),('en_US','237','Meuse'),('en_US','238','Morbihan'),('en_US','239','Moselle'),('en_US','240','Nièvre'),('en_US','241','Nord'),('en_US','242','Oise'),('en_US','243','Orne'),('en_US','244','Pas-de-Calais'),('en_US','245','Puy-de-Dôme'),('en_US','246','Pyrénées-Atlantiques'),('en_US','247','Hautes-Pyrénées'),('en_US','248','Pyrénées-Orientales'),('en_US','249','Bas-Rhin'),('en_US','250','Haut-Rhin'),('en_US','251','Rhône'),('en_US','252','Haute-Saône'),('en_US','253','Saône-et-Loire'),('en_US','254','Sarthe'),('en_US','255','Savoie'),('en_US','256','Haute-Savoie'),('en_US','257','Paris'),('en_US','258','Seine-Maritime'),('en_US','259','Seine-et-Marne'),('en_US','260','Yvelines'),('en_US','261','Deux-Sèvres'),('en_US','262','Somme'),('en_US','263','Tarn'),('en_US','264','Tarn-et-Garonne'),('en_US','265','Var'),('en_US','266','Vaucluse'),('en_US','267','Vendée'),('en_US','268','Vienne'),('en_US','269','Haute-Vienne'),('en_US','270','Vosges'),('en_US','271','Yonne'),('en_US','272','Territoire-de-Belfort'),('en_US','273','Essonne'),('en_US','274','Hauts-de-Seine'),('en_US','275','Seine-Saint-Denis'),('en_US','276','Val-de-Marne'),('en_US','277','Val-d\'Oise'),('en_US','278','Alba'),('en_US','279','Arad'),('en_US','280','Argeş'),('en_US','281','Bacău'),('en_US','282','Bihor'),('en_US','283','Bistriţa-Năsăud'),('en_US','284','Botoşani'),('en_US','285','Braşov'),('en_US','286','Brăila'),('en_US','287','Bucureşti'),('en_US','288','Buzău'),('en_US','289','Caraş-Severin'),('en_US','290','Călăraşi'),('en_US','291','Cluj'),('en_US','292','Constanţa'),('en_US','293','Covasna'),('en_US','294','Dâmboviţa'),('en_US','295','Dolj'),('en_US','296','Galaţi'),('en_US','297','Giurgiu'),('en_US','298','Gorj'),('en_US','299','Harghita'),('en_US','300','Hunedoara'),('en_US','301','Ialomiţa'),('en_US','302','Iaşi'),('en_US','303','Ilfov'),('en_US','304','Maramureş'),('en_US','305','Mehedinţi'),('en_US','306','Mureş'),('en_US','307','Neamţ'),('en_US','308','Olt'),('en_US','309','Prahova'),('en_US','310','Satu-Mare'),('en_US','311','Sălaj'),('en_US','312','Sibiu'),('en_US','313','Suceava'),('en_US','314','Teleorman'),('en_US','315','Timiş'),('en_US','316','Tulcea'),('en_US','317','Vaslui'),('en_US','318','Vâlcea'),('en_US','319','Vrancea'),('en_US','320','Lappi'),('en_US','321','Pohjois-Pohjanmaa'),('en_US','322','Kainuu'),('en_US','323','Pohjois-Karjala'),('en_US','324','Pohjois-Savo'),('en_US','325','Etelä-Savo'),('en_US','326','Etelä-Pohjanmaa'),('en_US','327','Pohjanmaa'),('en_US','328','Pirkanmaa'),('en_US','329','Satakunta'),('en_US','330','Keski-Pohjanmaa'),('en_US','331','Keski-Suomi'),('en_US','332','Varsinais-Suomi'),('en_US','333','Etelä-Karjala'),('en_US','334','Päijät-Häme'),('en_US','335','Kanta-Häme'),('en_US','336','Uusimaa'),('en_US','337','Itä-Uusimaa'),('en_US','338','Kymenlaakso'),('en_US','339','Ahvenanmaa'),('en_US','340','Harjumaa'),('en_US','341','Hiiumaa'),('en_US','342','Ida-Virumaa'),('en_US','343','Jõgevamaa'),('en_US','344','Järvamaa'),('en_US','345','Läänemaa'),('en_US','346','Lääne-Virumaa'),('en_US','347','Põlvamaa'),('en_US','348','Pärnumaa'),('en_US','349','Raplamaa'),('en_US','350','Saaremaa'),('en_US','351','Tartumaa'),('en_US','352','Valgamaa'),('en_US','353','Viljandimaa'),('en_US','354','Võrumaa'),('en_US','355','Daugavpils'),('en_US','356','Jelgava'),('en_US','357','Jēkabpils'),('en_US','358','Jūrmala'),('en_US','359','Liepāja'),('en_US','360','Liepājas novads'),('en_US','361','Rēzekne'),('en_US','362','Rīga'),('en_US','363','Rīgas novads'),('en_US','364','Valmiera'),('en_US','365','Ventspils'),('en_US','366','Aglonas novads'),('en_US','367','Aizkraukles novads'),('en_US','368','Aizputes novads'),('en_US','369','Aknīstes novads'),('en_US','370','Alojas novads'),('en_US','371','Alsungas novads'),('en_US','372','Alūksnes novads'),('en_US','373','Amatas novads'),('en_US','374','Apes novads'),('en_US','375','Auces novads'),('en_US','376','Babītes novads'),('en_US','377','Baldones novads'),('en_US','378','Baltinavas novads'),('en_US','379','Balvu novads'),('en_US','380','Bauskas novads'),('en_US','381','Beverīnas novads'),('en_US','382','Brocēnu novads'),('en_US','383','Burtnieku novads'),('en_US','384','Carnikavas novads'),('en_US','385','Cesvaines novads'),('en_US','386','Ciblas novads'),('en_US','387','Cēsu novads'),('en_US','388','Dagdas novads'),('en_US','389','Daugavpils novads'),('en_US','390','Dobeles novads'),('en_US','391','Dundagas novads'),('en_US','392','Durbes novads'),('en_US','393','Engures novads'),('en_US','394','Garkalnes novads'),('en_US','395','Grobiņas novads'),('en_US','396','Gulbenes novads'),('en_US','397','Iecavas novads'),('en_US','398','Ikšķiles novads'),('en_US','399','Ilūkstes novads'),('en_US','400','Inčukalna novads'),('en_US','401','Jaunjelgavas novads'),('en_US','402','Jaunpiebalgas novads'),('en_US','403','Jaunpils novads'),('en_US','404','Jelgavas novads'),('en_US','405','Jēkabpils novads'),('en_US','406','Kandavas novads'),('en_US','407','Kokneses novads'),('en_US','408','Krimuldas novads'),('en_US','409','Krustpils novads'),('en_US','410','Krāslavas novads'),('en_US','411','Kuldīgas novads'),('en_US','412','Kārsavas novads'),('en_US','413','Lielvārdes novads'),('en_US','414','Limbažu novads'),('en_US','415','Lubānas novads'),('en_US','416','Ludzas novads'),('en_US','417','Līgatnes novads'),('en_US','418','Līvānu novads'),('en_US','419','Madonas novads'),('en_US','420','Mazsalacas novads'),('en_US','421','Mālpils novads'),('en_US','422','Mārupes novads'),('en_US','423','Naukšēnu novads'),('en_US','424','Neretas novads'),('en_US','425','Nīcas novads'),('en_US','426','Ogres novads'),('en_US','427','Olaines novads'),('en_US','428','Ozolnieku novads'),('en_US','429','Preiļu novads'),('en_US','430','Priekules novads'),('en_US','431','Priekuļu novads'),('en_US','432','Pārgaujas novads'),('en_US','433','Pāvilostas novads'),('en_US','434','Pļaviņu novads'),('en_US','435','Raunas novads'),('en_US','436','Riebiņu novads'),('en_US','437','Rojas novads'),('en_US','438','Ropažu novads'),('en_US','439','Rucavas novads'),('en_US','440','Rugāju novads'),('en_US','441','Rundāles novads'),('en_US','442','Rēzeknes novads'),('en_US','443','Rūjienas novads'),('en_US','444','Salacgrīvas novads'),('en_US','445','Salas novads'),('en_US','446','Salaspils novads'),('en_US','447','Saldus novads'),('en_US','448','Saulkrastu novads'),('en_US','449','Siguldas novads'),('en_US','450','Skrundas novads'),('en_US','451','Skrīveru novads'),('en_US','452','Smiltenes novads'),('en_US','453','Stopiņu novads'),('en_US','454','Strenču novads'),('en_US','455','Sējas novads'),('en_US','456','Talsu novads'),('en_US','457','Tukuma novads'),('en_US','458','Tērvetes novads'),('en_US','459','Vaiņodes novads'),('en_US','460','Valkas novads'),('en_US','461','Valmieras novads'),('en_US','462','Varakļānu novads'),('en_US','463','Vecpiebalgas novads'),('en_US','464','Vecumnieku novads'),('en_US','465','Ventspils novads'),('en_US','466','Viesītes novads'),('en_US','467','Viļakas novads'),('en_US','468','Viļānu novads'),('en_US','469','Vārkavas novads'),('en_US','470','Zilupes novads'),('en_US','471','Ādažu novads'),('en_US','472','Ērgļu novads'),('en_US','473','Ķeguma novads'),('en_US','474','Ķekavas novads'),('en_US','475','Alytaus Apskritis'),('en_US','476','Kauno Apskritis'),('en_US','477','Klaipėdos Apskritis'),('en_US','478','Marijampolės Apskritis'),('en_US','479','Panevėžio Apskritis'),('en_US','480','Šiaulių Apskritis'),('en_US','481','Tauragės Apskritis'),('en_US','482','Telšių Apskritis'),('en_US','483','Utenos Apskritis'),('en_US','484','Vilniaus Apskritis'),('en_US','485','Acre'),('en_US','486','Alagoas'),('en_US','487','Amapá'),('en_US','488','Amazonas'),('en_US','489','Bahia'),('en_US','490','Ceará'),('en_US','491','Espírito Santo'),('en_US','492','Goiás'),('en_US','493','Maranhão'),('en_US','494','Mato Grosso'),('en_US','495','Mato Grosso do Sul'),('en_US','496','Minas Gerais'),('en_US','497','Pará'),('en_US','498','Paraíba'),('en_US','499','Paraná'),('en_US','500','Pernambuco'),('en_US','501','Piauí'),('en_US','502','Rio de Janeiro'),('en_US','503','Rio Grande do Norte'),('en_US','504','Rio Grande do Sul'),('en_US','505','Rondônia'),('en_US','506','Roraima'),('en_US','507','Santa Catarina'),('en_US','508','São Paulo'),('en_US','509','Sergipe'),('en_US','510','Tocantins'),('en_US','511','Distrito Federal');
/*!40000 ALTER TABLE `directory_country_region_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directory_currency_rate`
--

DROP TABLE IF EXISTS `directory_currency_rate`;
CREATE TABLE `directory_currency_rate` (
  `currency_from` varchar(3) NOT NULL COMMENT 'Currency Code Convert From',
  `currency_to` varchar(3) NOT NULL COMMENT 'Currency Code Convert To',
  `rate` decimal(24,12) NOT NULL DEFAULT '0.000000000000' COMMENT 'Currency Conversion Rate',
  PRIMARY KEY (`currency_from`,`currency_to`),
  KEY `DIRECTORY_CURRENCY_RATE_CURRENCY_TO` (`currency_to`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Directory Currency Rate';

--
-- Dumping data for table `directory_currency_rate`
--

LOCK TABLES `directory_currency_rate` WRITE;
/*!40000 ALTER TABLE `directory_currency_rate` DISABLE KEYS */;
INSERT INTO `directory_currency_rate` VALUES ('AED','AED','1.000000000000'),('AED','EUR','0.255500000000'),('AED','USD','0.271800000000'),('EUR','EUR','1.000000000000'),('EUR','USD','1.415000000000'),('USD','EUR','0.706700000000'),('USD','USD','1.000000000000');
/*!40000 ALTER TABLE `directory_currency_rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `downloadable_link`
--

DROP TABLE IF EXISTS `downloadable_link`;
CREATE TABLE `downloadable_link` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Link ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort order',
  `number_of_downloads` int(11) DEFAULT NULL COMMENT 'Number of downloads',
  `is_shareable` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Shareable flag',
  `link_url` varchar(255) DEFAULT NULL COMMENT 'Link Url',
  `link_file` varchar(255) DEFAULT NULL COMMENT 'Link File',
  `link_type` varchar(20) DEFAULT NULL COMMENT 'Link Type',
  `sample_url` varchar(255) DEFAULT NULL COMMENT 'Sample Url',
  `sample_file` varchar(255) DEFAULT NULL COMMENT 'Sample File',
  `sample_type` varchar(20) DEFAULT NULL COMMENT 'Sample Type',
  PRIMARY KEY (`link_id`),
  KEY `DOWNLOADABLE_LINK_PRODUCT_ID_SORT_ORDER` (`product_id`,`sort_order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Link Table';

--
-- Table structure for table `downloadable_link_price`
--

DROP TABLE IF EXISTS `downloadable_link_price`;
CREATE TABLE `downloadable_link_price` (
  `price_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Price ID',
  `link_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Link ID',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website ID',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  PRIMARY KEY (`price_id`),
  KEY `DOWNLOADABLE_LINK_PRICE_LINK_ID` (`link_id`),
  KEY `DOWNLOADABLE_LINK_PRICE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Link Price Table';

--
-- Table structure for table `downloadable_link_purchased`
--

DROP TABLE IF EXISTS `downloadable_link_purchased`;
CREATE TABLE `downloadable_link_purchased` (
  `purchased_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Purchased ID',
  `order_id` int(10) unsigned DEFAULT '0' COMMENT 'Order ID',
  `order_increment_id` varchar(50) DEFAULT NULL COMMENT 'Order Increment ID',
  `order_item_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Order Item ID',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Date of creation',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of modification',
  `customer_id` int(10) unsigned DEFAULT '0' COMMENT 'Customer ID',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product name',
  `product_sku` varchar(255) DEFAULT NULL COMMENT 'Product sku',
  `link_section_title` varchar(255) DEFAULT NULL COMMENT 'Link_section_title',
  PRIMARY KEY (`purchased_id`),
  KEY `DOWNLOADABLE_LINK_PURCHASED_ORDER_ID` (`order_id`),
  KEY `DOWNLOADABLE_LINK_PURCHASED_ORDER_ITEM_ID` (`order_item_id`),
  KEY `DOWNLOADABLE_LINK_PURCHASED_CUSTOMER_ID` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Link Purchased Table';

--
-- Table structure for table `downloadable_link_purchased_item`
--

DROP TABLE IF EXISTS `downloadable_link_purchased_item`;
CREATE TABLE `downloadable_link_purchased_item` (
  `item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Item ID',
  `purchased_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Purchased ID',
  `order_item_id` int(10) unsigned DEFAULT '0' COMMENT 'Order Item ID',
  `product_id` int(10) unsigned DEFAULT '0' COMMENT 'Product ID',
  `link_hash` varchar(255) DEFAULT NULL COMMENT 'Link hash',
  `number_of_downloads_bought` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of downloads bought',
  `number_of_downloads_used` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of downloads used',
  `link_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Link ID',
  `link_title` varchar(255) DEFAULT NULL COMMENT 'Link Title',
  `is_shareable` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Shareable Flag',
  `link_url` varchar(255) DEFAULT NULL COMMENT 'Link Url',
  `link_file` varchar(255) DEFAULT NULL COMMENT 'Link File',
  `link_type` varchar(255) DEFAULT NULL COMMENT 'Link Type',
  `status` varchar(50) DEFAULT NULL COMMENT 'Status',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Creation Time',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Update Time',
  PRIMARY KEY (`item_id`),
  KEY `DOWNLOADABLE_LINK_PURCHASED_ITEM_LINK_HASH` (`link_hash`),
  KEY `DOWNLOADABLE_LINK_PURCHASED_ITEM_ORDER_ITEM_ID` (`order_item_id`),
  KEY `DOWNLOADABLE_LINK_PURCHASED_ITEM_PURCHASED_ID` (`purchased_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Link Purchased Item Table';

--
-- Table structure for table `downloadable_link_title`
--

DROP TABLE IF EXISTS `downloadable_link_title`;
CREATE TABLE `downloadable_link_title` (
  `title_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Title ID',
  `link_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Link ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  PRIMARY KEY (`title_id`),
  UNIQUE KEY `DOWNLOADABLE_LINK_TITLE_LINK_ID_STORE_ID` (`link_id`,`store_id`),
  KEY `DOWNLOADABLE_LINK_TITLE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Link Title Table';

--
-- Table structure for table `downloadable_sample`
--

DROP TABLE IF EXISTS `downloadable_sample`;
CREATE TABLE `downloadable_sample` (
  `sample_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Sample ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `sample_url` varchar(255) DEFAULT NULL COMMENT 'Sample URL',
  `sample_file` varchar(255) DEFAULT NULL COMMENT 'Sample file',
  `sample_type` varchar(20) DEFAULT NULL COMMENT 'Sample Type',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`sample_id`),
  KEY `DOWNLOADABLE_SAMPLE_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Sample Table';

--
-- Table structure for table `downloadable_sample_title`
--

DROP TABLE IF EXISTS `downloadable_sample_title`;
CREATE TABLE `downloadable_sample_title` (
  `title_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Title ID',
  `sample_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sample ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  PRIMARY KEY (`title_id`),
  UNIQUE KEY `DOWNLOADABLE_SAMPLE_TITLE_SAMPLE_ID_STORE_ID` (`sample_id`,`store_id`),
  KEY `DOWNLOADABLE_SAMPLE_TITLE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Sample Title Table';

--
-- Table structure for table `eav_attribute`
--

DROP TABLE IF EXISTS `eav_attribute`;
CREATE TABLE `eav_attribute` (
  `attribute_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Attribute Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_code` varchar(255) DEFAULT NULL COMMENT 'Attribute Code',
  `attribute_model` varchar(255) DEFAULT NULL COMMENT 'Attribute Model',
  `backend_model` varchar(255) DEFAULT NULL COMMENT 'Backend Model',
  `backend_type` varchar(8) NOT NULL DEFAULT 'static' COMMENT 'Backend Type',
  `backend_table` varchar(255) DEFAULT NULL COMMENT 'Backend Table',
  `frontend_model` varchar(255) DEFAULT NULL COMMENT 'Frontend Model',
  `frontend_input` varchar(50) DEFAULT NULL COMMENT 'Frontend Input',
  `frontend_label` varchar(255) DEFAULT NULL COMMENT 'Frontend Label',
  `frontend_class` varchar(255) DEFAULT NULL COMMENT 'Frontend Class',
  `source_model` varchar(255) DEFAULT NULL COMMENT 'Source Model',
  `is_required` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Defines Is Required',
  `is_user_defined` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Defines Is User Defined',
  `default_value` text COMMENT 'Default Value',
  `is_unique` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Defines Is Unique',
  `note` varchar(255) DEFAULT NULL COMMENT 'Note',
  PRIMARY KEY (`attribute_id`),
  UNIQUE KEY `EAV_ATTRIBUTE_ENTITY_TYPE_ID_ATTRIBUTE_CODE` (`entity_type_id`,`attribute_code`)
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=utf8 COMMENT='Eav Attribute';

--
-- Dumping data for table `eav_attribute`
--

LOCK TABLES `eav_attribute` WRITE;
/*!40000 ALTER TABLE `eav_attribute` DISABLE KEYS */;
INSERT INTO `eav_attribute` VALUES (1,1,'website_id',NULL,'Magento\\Customer\\Model\\Customer\\Attribute\\Backend\\Website','static',NULL,NULL,'select','Associate to Website',NULL,'Magento\\Customer\\Model\\Customer\\Attribute\\Source\\Website',1,0,NULL,0,NULL),(2,1,'store_id',NULL,'Magento\\Customer\\Model\\Customer\\Attribute\\Backend\\Store','static',NULL,NULL,'select','Create In',NULL,'Magento\\Customer\\Model\\Customer\\Attribute\\Source\\Store',1,0,NULL,0,NULL),(3,1,'created_in',NULL,NULL,'static',NULL,NULL,'text','Created From',NULL,NULL,0,0,NULL,0,NULL),(4,1,'prefix',NULL,NULL,'static',NULL,NULL,'text','Prefix',NULL,NULL,0,0,NULL,0,NULL),(5,1,'firstname',NULL,NULL,'static',NULL,NULL,'text','First Name',NULL,NULL,1,0,NULL,0,NULL),(6,1,'middlename',NULL,NULL,'static',NULL,NULL,'text','Middle Name/Initial',NULL,NULL,0,0,NULL,0,NULL),(7,1,'lastname',NULL,NULL,'static',NULL,NULL,'text','Last Name',NULL,NULL,1,0,NULL,0,NULL),(8,1,'suffix',NULL,NULL,'static',NULL,NULL,'text','Suffix',NULL,NULL,0,0,NULL,0,NULL),(9,1,'email',NULL,NULL,'static',NULL,NULL,'text','Email',NULL,NULL,1,0,NULL,0,NULL),(10,1,'group_id',NULL,NULL,'static',NULL,NULL,'select','Group',NULL,'Magento\\Customer\\Model\\Customer\\Attribute\\Source\\Group',1,0,NULL,0,NULL),(11,1,'dob',NULL,'Magento\\Eav\\Model\\Entity\\Attribute\\Backend\\Datetime','static',NULL,'Magento\\Eav\\Model\\Entity\\Attribute\\Frontend\\Datetime','date','Date of Birth',NULL,NULL,0,0,NULL,0,NULL),(12,1,'password_hash',NULL,'Magento\\Customer\\Model\\Customer\\Attribute\\Backend\\Password','static',NULL,NULL,'hidden',NULL,NULL,NULL,0,0,NULL,0,NULL),(13,1,'rp_token',NULL,NULL,'static',NULL,NULL,'hidden',NULL,NULL,NULL,0,0,NULL,0,NULL),(14,1,'rp_token_created_at',NULL,NULL,'static',NULL,NULL,'date',NULL,NULL,NULL,0,0,NULL,0,NULL),(15,1,'default_billing',NULL,'Magento\\Customer\\Model\\Customer\\Attribute\\Backend\\Billing','static',NULL,NULL,'text','Default Billing Address',NULL,NULL,0,0,NULL,0,NULL),(16,1,'default_shipping',NULL,'Magento\\Customer\\Model\\Customer\\Attribute\\Backend\\Shipping','static',NULL,NULL,'text','Default Shipping Address',NULL,NULL,0,0,NULL,0,NULL),(17,1,'taxvat',NULL,NULL,'static',NULL,NULL,'text','Tax/VAT Number',NULL,NULL,0,0,NULL,0,NULL),(18,1,'confirmation',NULL,NULL,'static',NULL,NULL,'text','Is Confirmed',NULL,NULL,0,0,NULL,0,NULL),(19,1,'created_at',NULL,NULL,'static',NULL,NULL,'date','Created At',NULL,NULL,0,0,NULL,0,NULL),(20,1,'gender',NULL,NULL,'static',NULL,NULL,'select','Gender',NULL,'Magento\\Eav\\Model\\Entity\\Attribute\\Source\\Table',0,0,NULL,0,NULL),(21,1,'disable_auto_group_change',NULL,'Magento\\Customer\\Model\\Attribute\\Backend\\Data\\Boolean','static',NULL,NULL,'boolean','Disable Automatic Group Change Based on VAT ID',NULL,NULL,0,0,NULL,0,NULL),(22,2,'prefix',NULL,NULL,'static',NULL,NULL,'text','Prefix',NULL,NULL,0,0,NULL,0,NULL),(23,2,'firstname',NULL,NULL,'static',NULL,NULL,'text','First Name',NULL,NULL,1,0,NULL,0,NULL),(24,2,'middlename',NULL,NULL,'static',NULL,NULL,'text','Middle Name/Initial',NULL,NULL,0,0,NULL,0,NULL),(25,2,'lastname',NULL,NULL,'static',NULL,NULL,'text','Last Name',NULL,NULL,1,0,NULL,0,NULL),(26,2,'suffix',NULL,NULL,'static',NULL,NULL,'text','Suffix',NULL,NULL,0,0,NULL,0,NULL),(27,2,'company',NULL,NULL,'static',NULL,NULL,'text','Company',NULL,NULL,0,0,NULL,0,NULL),(28,2,'street',NULL,'Magento\\Eav\\Model\\Entity\\Attribute\\Backend\\DefaultBackend','static',NULL,NULL,'multiline','Street Address',NULL,NULL,1,0,NULL,0,NULL),(29,2,'city',NULL,NULL,'static',NULL,NULL,'text','City',NULL,NULL,1,0,NULL,0,NULL),(30,2,'country_id',NULL,NULL,'static',NULL,NULL,'select','Country',NULL,'Magento\\Customer\\Model\\ResourceModel\\Address\\Attribute\\Source\\Country',1,0,NULL,0,NULL),(31,2,'region',NULL,'Magento\\Customer\\Model\\ResourceModel\\Address\\Attribute\\Backend\\Region','static',NULL,NULL,'text','State/Province',NULL,NULL,0,0,NULL,0,NULL),(32,2,'region_id',NULL,NULL,'static',NULL,NULL,'hidden','State/Province',NULL,'Magento\\Customer\\Model\\ResourceModel\\Address\\Attribute\\Source\\Region',0,0,NULL,0,NULL),(33,2,'postcode',NULL,NULL,'static',NULL,NULL,'text','Zip/Postal Code',NULL,NULL,0,0,NULL,0,NULL),(34,2,'telephone',NULL,NULL,'static',NULL,NULL,'text','Phone Number',NULL,NULL,1,0,NULL,0,NULL),(35,2,'fax',NULL,NULL,'static',NULL,NULL,'text','Fax',NULL,NULL,0,0,NULL,0,NULL),(36,2,'vat_id',NULL,NULL,'static',NULL,NULL,'text','VAT number',NULL,NULL,0,0,NULL,0,NULL),(37,2,'vat_is_valid',NULL,NULL,'static',NULL,NULL,'text','VAT number validity',NULL,NULL,0,0,NULL,0,NULL),(38,2,'vat_request_id',NULL,NULL,'static',NULL,NULL,'text','VAT number validation request ID',NULL,NULL,0,0,NULL,0,NULL),(39,2,'vat_request_date',NULL,NULL,'static',NULL,NULL,'text','VAT number validation request date',NULL,NULL,0,0,NULL,0,NULL),(40,2,'vat_request_success',NULL,NULL,'static',NULL,NULL,'text','VAT number validation request success',NULL,NULL,0,0,NULL,0,NULL),(41,1,'updated_at',NULL,NULL,'static',NULL,NULL,'date','Updated At',NULL,NULL,0,0,NULL,0,NULL),(42,1,'failures_num',NULL,NULL,'static',NULL,NULL,'hidden','Failures Number',NULL,NULL,0,0,NULL,0,NULL),(43,1,'first_failure',NULL,NULL,'static',NULL,NULL,'date','First Failure Date',NULL,NULL,0,0,NULL,0,NULL),(44,1,'lock_expires',NULL,NULL,'static',NULL,NULL,'date','Failures Number',NULL,NULL,0,0,NULL,0,NULL),(45,3,'name',NULL,NULL,'varchar',NULL,NULL,'text','Name',NULL,NULL,1,0,NULL,0,NULL),(46,3,'is_active',NULL,NULL,'int',NULL,NULL,'select','Is Active',NULL,'Magento\\Eav\\Model\\Entity\\Attribute\\Source\\Boolean',1,0,NULL,0,NULL),(47,3,'description',NULL,NULL,'text',NULL,NULL,'textarea','Description',NULL,NULL,0,0,NULL,0,NULL),(48,3,'image',NULL,'Magento\\Catalog\\Model\\Category\\Attribute\\Backend\\Image','varchar',NULL,NULL,'image','Image',NULL,NULL,0,0,NULL,0,NULL),(49,3,'meta_title',NULL,NULL,'varchar',NULL,NULL,'text','Page Title',NULL,NULL,0,0,NULL,0,NULL),(50,3,'meta_keywords',NULL,NULL,'text',NULL,NULL,'textarea','Meta Keywords',NULL,NULL,0,0,NULL,0,NULL),(51,3,'meta_description',NULL,NULL,'text',NULL,NULL,'textarea','Meta Description',NULL,NULL,0,0,NULL,0,NULL),(52,3,'display_mode',NULL,NULL,'varchar',NULL,NULL,'select','Display Mode',NULL,'Magento\\Catalog\\Model\\Category\\Attribute\\Source\\Mode',0,0,NULL,0,NULL),(53,3,'landing_page',NULL,NULL,'int',NULL,NULL,'select','CMS Block',NULL,'Magento\\Catalog\\Model\\Category\\Attribute\\Source\\Page',0,0,NULL,0,NULL),(54,3,'is_anchor',NULL,NULL,'int',NULL,NULL,'select','Is Anchor',NULL,'Magento\\Eav\\Model\\Entity\\Attribute\\Source\\Boolean',0,0,'1',0,NULL),(55,3,'path',NULL,NULL,'static',NULL,NULL,'text','Path',NULL,NULL,0,0,NULL,0,NULL),(56,3,'position',NULL,NULL,'static',NULL,NULL,'text','Position',NULL,NULL,0,0,NULL,0,NULL),(57,3,'all_children',NULL,NULL,'text',NULL,NULL,'text',NULL,NULL,NULL,0,0,NULL,0,NULL),(58,3,'path_in_store',NULL,NULL,'text',NULL,NULL,'text',NULL,NULL,NULL,0,0,NULL,0,NULL),(59,3,'children',NULL,NULL,'text',NULL,NULL,'text',NULL,NULL,NULL,0,0,NULL,0,NULL),(60,3,'custom_design',NULL,NULL,'varchar',NULL,NULL,'select','Custom Design',NULL,'Magento\\Theme\\Model\\Theme\\Source\\Theme',0,0,NULL,0,NULL),(61,3,'custom_design_from','Magento\\Catalog\\Model\\ResourceModel\\Eav\\Attribute','Magento\\Catalog\\Model\\Attribute\\Backend\\Startdate','datetime',NULL,'Magento\\Eav\\Model\\Entity\\Attribute\\Frontend\\Datetime','date','Active From',NULL,NULL,0,0,NULL,0,NULL),(62,3,'custom_design_to',NULL,'Magento\\Eav\\Model\\Entity\\Attribute\\Backend\\Datetime','datetime',NULL,NULL,'date','Active To',NULL,NULL,0,0,NULL,0,NULL),(63,3,'page_layout',NULL,NULL,'varchar',NULL,NULL,'select','Page Layout',NULL,'Magento\\Catalog\\Model\\Category\\Attribute\\Source\\Layout',0,0,NULL,0,NULL),(64,3,'custom_layout_update',NULL,'Magento\\Catalog\\Model\\Attribute\\Backend\\Customlayoutupdate','text',NULL,NULL,'textarea','Custom Layout Update',NULL,NULL,0,0,NULL,0,NULL),(65,3,'level',NULL,NULL,'static',NULL,NULL,'text','Level',NULL,NULL,0,0,NULL,0,NULL),(66,3,'children_count',NULL,NULL,'static',NULL,NULL,'text','Children Count',NULL,NULL,0,0,NULL,0,NULL),(67,3,'available_sort_by',NULL,'Magento\\Catalog\\Model\\Category\\Attribute\\Backend\\Sortby','text',NULL,NULL,'multiselect','Available Product Listing Sort By',NULL,'Magento\\Catalog\\Model\\Category\\Attribute\\Source\\Sortby',1,0,NULL,0,NULL),(68,3,'default_sort_by',NULL,'Magento\\Catalog\\Model\\Category\\Attribute\\Backend\\Sortby','varchar',NULL,NULL,'select','Default Product Listing Sort By',NULL,'Magento\\Catalog\\Model\\Category\\Attribute\\Source\\Sortby',1,0,NULL,0,NULL),(69,3,'include_in_menu',NULL,NULL,'int',NULL,NULL,'select','Include in Navigation Menu',NULL,'Magento\\Eav\\Model\\Entity\\Attribute\\Source\\Boolean',1,0,'1',0,NULL),(70,3,'custom_use_parent_settings',NULL,NULL,'int',NULL,NULL,'select','Use Parent Category Settings',NULL,'Magento\\Eav\\Model\\Entity\\Attribute\\Source\\Boolean',0,0,NULL,0,NULL),(71,3,'custom_apply_to_products',NULL,NULL,'int',NULL,NULL,'select','Apply To Products',NULL,'Magento\\Eav\\Model\\Entity\\Attribute\\Source\\Boolean',0,0,NULL,0,NULL),(72,3,'filter_price_range',NULL,NULL,'decimal',NULL,NULL,'text','Layered Navigation Price Step',NULL,NULL,0,0,NULL,0,NULL),(73,4,'name',NULL,NULL,'varchar',NULL,NULL,'text','Product Name','validate-length maximum-length-255',NULL,1,0,NULL,0,NULL),(74,4,'sku',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Sku','static',NULL,NULL,'text','SKU','validate-length maximum-length-64',NULL,1,0,NULL,1,NULL),(75,4,'description',NULL,NULL,'text',NULL,NULL,'textarea','Description',NULL,NULL,0,0,NULL,0,NULL),(76,4,'short_description',NULL,NULL,'text',NULL,NULL,'textarea','Short Description',NULL,NULL,0,0,NULL,0,NULL),(77,4,'price',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Price','decimal',NULL,NULL,'price','Price',NULL,NULL,1,0,NULL,0,NULL),(78,4,'special_price',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Price','decimal',NULL,NULL,'price','Special Price',NULL,NULL,0,0,NULL,0,NULL),(79,4,'special_from_date',NULL,'Magento\\Catalog\\Model\\Attribute\\Backend\\Startdate','datetime',NULL,NULL,'date','Special Price From Date',NULL,NULL,0,0,NULL,0,NULL),(80,4,'special_to_date',NULL,'Magento\\Eav\\Model\\Entity\\Attribute\\Backend\\Datetime','datetime',NULL,NULL,'date','Special Price To Date',NULL,NULL,0,0,NULL,0,NULL),(81,4,'cost',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Price','decimal',NULL,NULL,'price','Cost',NULL,NULL,0,1,NULL,0,NULL),(82,4,'weight',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Weight','decimal',NULL,NULL,'weight','Weight',NULL,NULL,0,0,NULL,0,NULL),(83,4,'manufacturer',NULL,NULL,'int',NULL,NULL,'select','Manufacturer',NULL,NULL,0,1,NULL,0,NULL),(84,4,'meta_title',NULL,NULL,'varchar',NULL,NULL,'text','Meta Title',NULL,NULL,0,0,NULL,0,NULL),(85,4,'meta_keyword',NULL,NULL,'text',NULL,NULL,'textarea','Meta Keywords',NULL,NULL,0,0,NULL,0,NULL),(86,4,'meta_description',NULL,NULL,'varchar',NULL,NULL,'textarea','Meta Description',NULL,NULL,0,0,NULL,0,'Maximum 255 chars. Meta Description should optimally be between 150-160 characters'),(87,4,'image',NULL,NULL,'varchar',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Frontend\\Image','media_image','Base',NULL,NULL,0,0,NULL,0,NULL),(88,4,'small_image',NULL,NULL,'varchar',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Frontend\\Image','media_image','Small',NULL,NULL,0,0,NULL,0,NULL),(89,4,'thumbnail',NULL,NULL,'varchar',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Frontend\\Image','media_image','Thumbnail',NULL,NULL,0,0,NULL,0,NULL),(90,4,'media_gallery',NULL,NULL,'static',NULL,NULL,'gallery','Media Gallery',NULL,NULL,0,0,NULL,0,NULL),(91,4,'old_id',NULL,NULL,'int',NULL,NULL,'text',NULL,NULL,NULL,0,0,NULL,0,NULL),(92,4,'tier_price',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Tierprice','decimal',NULL,NULL,'text','Tier Price',NULL,NULL,0,0,NULL,0,NULL),(93,4,'color',NULL,NULL,'int',NULL,NULL,'select','Color',NULL,NULL,0,1,'',0,NULL),(94,4,'news_from_date',NULL,'Magento\\Catalog\\Model\\Attribute\\Backend\\Startdate','datetime',NULL,NULL,'date','Set Product as New from Date',NULL,NULL,0,0,NULL,0,NULL),(95,4,'news_to_date',NULL,'Magento\\Eav\\Model\\Entity\\Attribute\\Backend\\Datetime','datetime',NULL,NULL,'date','Set Product as New to Date',NULL,NULL,0,0,NULL,0,NULL),(96,4,'gallery',NULL,NULL,'varchar',NULL,NULL,'gallery','Image Gallery',NULL,NULL,0,0,NULL,0,NULL),(97,4,'status',NULL,NULL,'int',NULL,NULL,'select','Enable Product',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Source\\Status',0,0,'1',0,NULL),(98,4,'minimal_price',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Price','decimal',NULL,NULL,'price','Minimal Price',NULL,NULL,0,0,NULL,0,NULL),(99,4,'visibility',NULL,NULL,'int',NULL,NULL,'select','Visibility',NULL,'Magento\\Catalog\\Model\\Product\\Visibility',0,0,'4',0,NULL),(100,4,'custom_design',NULL,NULL,'varchar',NULL,NULL,'select','New Theme',NULL,'Magento\\Theme\\Model\\Theme\\Source\\Theme',0,0,NULL,0,NULL),(101,4,'custom_design_from',NULL,'Magento\\Catalog\\Model\\Attribute\\Backend\\Startdate','datetime',NULL,NULL,'date','Active From',NULL,NULL,0,0,NULL,0,NULL),(102,4,'custom_design_to',NULL,'Magento\\Eav\\Model\\Entity\\Attribute\\Backend\\Datetime','datetime',NULL,NULL,'date','Active To',NULL,NULL,0,0,NULL,0,NULL),(103,4,'custom_layout_update',NULL,'Magento\\Catalog\\Model\\Attribute\\Backend\\Customlayoutupdate','text',NULL,NULL,'textarea','Layout Update XML',NULL,NULL,0,0,NULL,0,NULL),(104,4,'page_layout',NULL,NULL,'varchar',NULL,NULL,'select','Layout',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Source\\Layout',0,0,NULL,0,NULL),(105,4,'category_ids',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Category','static',NULL,NULL,'text','Categories',NULL,NULL,0,0,NULL,0,NULL),(106,4,'options_container',NULL,NULL,'varchar',NULL,NULL,'select','Display Product Options In',NULL,'Magento\\Catalog\\Model\\Entity\\Product\\Attribute\\Design\\Options\\Container',0,0,'container2',0,NULL),(107,4,'required_options',NULL,NULL,'static',NULL,NULL,'text',NULL,NULL,NULL,0,0,NULL,0,NULL),(108,4,'has_options',NULL,NULL,'static',NULL,NULL,'text',NULL,NULL,NULL,0,0,NULL,0,NULL),(109,4,'image_label',NULL,NULL,'varchar',NULL,NULL,'text','Image Label',NULL,NULL,0,0,NULL,0,NULL),(110,4,'small_image_label',NULL,NULL,'varchar',NULL,NULL,'text','Small Image Label',NULL,NULL,0,0,NULL,0,NULL),(111,4,'thumbnail_label',NULL,NULL,'varchar',NULL,NULL,'text','Thumbnail Label',NULL,NULL,0,0,NULL,0,NULL),(112,4,'created_at',NULL,NULL,'static',NULL,NULL,'date',NULL,NULL,NULL,1,0,NULL,0,NULL),(113,4,'updated_at',NULL,NULL,'static',NULL,NULL,'date',NULL,NULL,NULL,1,0,NULL,0,NULL),(114,4,'country_of_manufacture',NULL,NULL,'varchar',NULL,NULL,'select','Country of Manufacture',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Source\\Countryofmanufacture',0,0,NULL,0,NULL),(115,4,'quantity_and_stock_status',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Stock','int',NULL,NULL,'select','Quantity',NULL,'Magento\\CatalogInventory\\Model\\Source\\Stock',0,0,'1',0,NULL),(116,4,'custom_layout',NULL,NULL,'varchar',NULL,NULL,'select','New Layout',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Source\\Layout',0,0,NULL,0,NULL),(117,3,'url_key',NULL,NULL,'varchar',NULL,NULL,'text','URL Key',NULL,NULL,0,0,NULL,0,NULL),(118,3,'url_path',NULL,NULL,'varchar',NULL,NULL,'text',NULL,NULL,NULL,0,0,NULL,0,NULL),(119,4,'url_key',NULL,NULL,'varchar',NULL,NULL,'text','URL Key',NULL,NULL,0,0,NULL,0,NULL),(120,4,'url_path',NULL,NULL,'varchar',NULL,NULL,'text',NULL,NULL,NULL,0,0,NULL,0,NULL),(121,4,'msrp',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Price','decimal',NULL,NULL,'price','Manufacturer\'s Suggested Retail Price',NULL,NULL,0,0,NULL,0,NULL),(122,4,'msrp_display_actual_price_type',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Boolean','varchar',NULL,NULL,'select','Display Actual Price',NULL,'Magento\\Msrp\\Model\\Product\\Attribute\\Source\\Type\\Price',0,0,'0',0,NULL),(123,4,'price_type',NULL,NULL,'int',NULL,NULL,'boolean','Dynamic Price',NULL,NULL,1,0,'0',0,NULL),(124,4,'sku_type',NULL,NULL,'int',NULL,NULL,'boolean','Dynamic SKU',NULL,NULL,1,0,'0',0,NULL),(125,4,'weight_type',NULL,NULL,'int',NULL,NULL,'boolean','Dynamic Weight',NULL,NULL,1,0,'0',0,NULL),(126,4,'price_view',NULL,NULL,'int',NULL,NULL,'select','Price View',NULL,'Magento\\Bundle\\Model\\Product\\Attribute\\Source\\Price\\View',1,0,NULL,0,NULL),(127,4,'shipment_type',NULL,NULL,'int',NULL,NULL,'select','Ship Bundle Items',NULL,'Magento\\Bundle\\Model\\Product\\Attribute\\Source\\Shipment\\Type',1,0,'0',0,NULL),(128,4,'links_purchased_separately',NULL,NULL,'int',NULL,NULL,NULL,'Links can be purchased separately',NULL,NULL,1,0,NULL,0,NULL),(129,4,'samples_title',NULL,NULL,'varchar',NULL,NULL,NULL,'Samples title',NULL,NULL,1,0,NULL,0,NULL),(130,4,'links_title',NULL,NULL,'varchar',NULL,NULL,NULL,'Links title',NULL,NULL,1,0,NULL,0,NULL),(131,4,'links_exist',NULL,NULL,'int',NULL,NULL,NULL,NULL,NULL,NULL,0,0,'0',0,NULL),(132,4,'swatch_image',NULL,NULL,'varchar',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Frontend\\Image','media_image','Swatch',NULL,NULL,0,0,NULL,0,NULL),(133,4,'tax_class_id',NULL,NULL,'int',NULL,NULL,'select','Tax Class',NULL,'Magento\\Tax\\Model\\TaxClass\\Source\\Product',0,0,'2',0,NULL),(134,4,'gift_message_available',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Boolean','varchar',NULL,NULL,'select','Allow Gift Message',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Source\\Boolean',0,0,NULL,0,NULL),(135,4,'featured',NULL,NULL,'int',NULL,NULL,'select','Featured',NULL,'Magento\\Eav\\Model\\Entity\\Attribute\\Source\\Boolean',0,0,'0',0,NULL),(136,3,'thumb_nail',NULL,'Magento\\Catalog\\Model\\Category\\Attribute\\Backend\\Image','varchar',NULL,NULL,'image','Thumbnail',NULL,NULL,0,0,NULL,0,NULL),(137,3,'thumb_nail_hover',NULL,'Magento\\Catalog\\Model\\Category\\Attribute\\Backend\\Image','varchar',NULL,NULL,'image','Thumbnail Hover',NULL,NULL,0,0,NULL,0,NULL),(138,3,'is_new',NULL,NULL,'int',NULL,NULL,'select','Is New',NULL,'Magento\\Eav\\Model\\Entity\\Attribute\\Source\\Boolean',1,0,NULL,0,NULL),(139,3,'is_sale',NULL,NULL,'int',NULL,NULL,'select','Is Sale',NULL,'Magento\\Eav\\Model\\Entity\\Attribute\\Source\\Boolean',1,0,NULL,0,NULL),(140,4,'show_countdown',NULL,NULL,'varchar',NULL,NULL,'select','Show Price Countdown',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Source\\Boolean',0,0,'1',0,NULL),(141,4,'rotary_image',NULL,NULL,'varchar',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Frontend\\Image','media_image','Rotary Image',NULL,NULL,0,0,NULL,0,NULL);
/*!40000 ALTER TABLE `eav_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eav_attribute_group`
--

DROP TABLE IF EXISTS `eav_attribute_group`;
CREATE TABLE `eav_attribute_group` (
  `attribute_group_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Attribute Group Id',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Set Id',
  `attribute_group_name` varchar(255) DEFAULT NULL COMMENT 'Attribute Group Name',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `default_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Default Id',
  `attribute_group_code` varchar(255) NOT NULL COMMENT 'Attribute Group Code',
  `tab_group_code` varchar(255) DEFAULT NULL COMMENT 'Tab Group Code',
  PRIMARY KEY (`attribute_group_id`),
  UNIQUE KEY `EAV_ATTRIBUTE_GROUP_ATTRIBUTE_SET_ID_ATTRIBUTE_GROUP_NAME` (`attribute_set_id`,`attribute_group_name`),
  KEY `EAV_ATTRIBUTE_GROUP_ATTRIBUTE_SET_ID_SORT_ORDER` (`attribute_set_id`,`sort_order`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='Eav Attribute Group';

--
-- Dumping data for table `eav_attribute_group`
--

LOCK TABLES `eav_attribute_group` WRITE;
/*!40000 ALTER TABLE `eav_attribute_group` DISABLE KEYS */;
INSERT INTO `eav_attribute_group` VALUES (1,1,'General',1,1,'general',NULL),(2,2,'General',1,1,'general',NULL),(3,3,'General',10,1,'general',NULL),(4,3,'General Information',2,0,'general-information',NULL),(5,3,'Display Settings',20,0,'display-settings',NULL),(6,3,'Custom Design',30,0,'custom-design',NULL),(7,4,'General',10,1,'product-details','basic'),(8,4,'Advanced Pricing',40,0,'advanced-pricing','advanced'),(9,4,'Search Engine Optimization',30,0,'search-engine-optimization','basic'),(10,4,'Images',20,0,'image-management','basic'),(11,4,'Design',50,0,'design','advanced'),(12,4,'Autosettings',60,0,'autosettings','advanced'),(13,4,'Content',15,0,'content','basic'),(14,4,'Schedule Design Update',55,0,'schedule-design-update','advanced'),(15,4,'Bundle Items',16,0,'bundle-items',NULL),(16,5,'General',1,1,'general',NULL),(17,6,'General',1,1,'general',NULL),(18,7,'General',1,1,'general',NULL),(19,8,'General',1,1,'general',NULL),(20,4,'Gift Options',61,0,'gift-options',NULL),(21,4,'Attributes',62,0,'attributes',NULL);
/*!40000 ALTER TABLE `eav_attribute_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eav_attribute_label`
--

DROP TABLE IF EXISTS `eav_attribute_label`;
CREATE TABLE `eav_attribute_label` (
  `attribute_label_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Attribute Label Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`attribute_label_id`),
  KEY `EAV_ATTRIBUTE_LABEL_STORE_ID` (`store_id`),
  KEY `EAV_ATTRIBUTE_LABEL_ATTRIBUTE_ID_STORE_ID` (`attribute_id`,`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Attribute Label';

--
-- Table structure for table `eav_attribute_option`
--

DROP TABLE IF EXISTS `eav_attribute_option`;
CREATE TABLE `eav_attribute_option` (
  `option_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `sort_order` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`option_id`),
  KEY `EAV_ATTRIBUTE_OPTION_ATTRIBUTE_ID` (`attribute_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='Eav Attribute Option';

--
-- Dumping data for table `eav_attribute_option`
--

LOCK TABLES `eav_attribute_option` WRITE;
/*!40000 ALTER TABLE `eav_attribute_option` DISABLE KEYS */;
INSERT INTO `eav_attribute_option` VALUES ('1',20,0),('2',20,1),('3',20,3),('4',93,1),('5',93,2),('6',93,3),('7',93,4),('8',93,5),('9',93,6),('10',93,7),('11',93,8),('12',93,9),('13',93,10),('14',93,11),('15',93,12),('16',93,13),('17',93,14),('18',93,15),('19',93,16);
/*!40000 ALTER TABLE `eav_attribute_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eav_attribute_option_swatch`
--

DROP TABLE IF EXISTS `eav_attribute_option_swatch`;
CREATE TABLE `eav_attribute_option_swatch` (
  `swatch_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Swatch ID',
  `option_id` int(10) unsigned NOT NULL COMMENT 'Option ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `type` smallint(5) unsigned NOT NULL COMMENT 'Swatch type: 0 - text, 1 - visual color, 2 - visual image',
  `value` varchar(255) DEFAULT NULL COMMENT 'Swatch Value',
  PRIMARY KEY (`swatch_id`),
  UNIQUE KEY `EAV_ATTRIBUTE_OPTION_SWATCH_STORE_ID_OPTION_ID` (`store_id`,`option_id`),
  KEY `EAV_ATTRIBUTE_OPTION_SWATCH_SWATCH_ID` (`swatch_id`),
  KEY `EAV_ATTR_OPT_SWATCH_OPT_ID_EAV_ATTR_OPT_OPT_ID` (`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Magento Swatches table';

--
-- Table structure for table `eav_attribute_option_value`
--

DROP TABLE IF EXISTS `eav_attribute_option_value`;
CREATE TABLE `eav_attribute_option_value` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  KEY `EAV_ATTRIBUTE_OPTION_VALUE_OPTION_ID` (`option_id`),
  KEY `EAV_ATTRIBUTE_OPTION_VALUE_STORE_ID` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COMMENT='Eav Attribute Option Value';

--
-- Dumping data for table `eav_attribute_option_value`
--

LOCK TABLES `eav_attribute_option_value` WRITE;
/*!40000 ALTER TABLE `eav_attribute_option_value` DISABLE KEYS */;
INSERT INTO `eav_attribute_option_value` VALUES ('1','1',0,'Male'),('2','2',0,'Female'),('3','3',0,'Not Specified'),('4','4',1,'RED'),('5','4',0,'RED'),('6','5',1,'BLUE'),('7','5',0,'BLUE'),('8','6',1,'WHITE'),('9','6',0,'WHITE'),('10','7',1,'YELLOW'),('11','7',0,'YELLOW'),('12','8',1,'GREEN'),('13','8',0,'GREEN'),('14','9',1,'ORANGE'),('15','9',0,'ORANGE'),('16','10',1,'BLACK'),('17','10',0,'BLACK'),('18','11',1,'PINK'),('19','11',0,'PINK'),('20','12',1,'PURPLE'),('21','12',0,'PURPLE'),('22','13',1,'CLEAR'),('23','13',0,'CLEAR'),('24','14',1,'CREAM'),('25','14',0,'CREAM'),('26','15',1,'FUCHSIA'),('27','15',0,'FUCHSIA'),('28','16',1,'BABY PINK'),('29','16',0,'BABY PINK'),('30','17',1,'PEACH'),('31','17',0,'PEACH'),('32','18',1,'MIX'),('33','18',0,'MIX'),('34','19',1,'OTHER'),('35','19',0,'OTHER');
/*!40000 ALTER TABLE `eav_attribute_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eav_attribute_set`
--

DROP TABLE IF EXISTS `eav_attribute_set`;
CREATE TABLE `eav_attribute_set` (
  `attribute_set_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Attribute Set Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_set_name` varchar(255) DEFAULT NULL COMMENT 'Attribute Set Name',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`attribute_set_id`),
  UNIQUE KEY `EAV_ATTRIBUTE_SET_ENTITY_TYPE_ID_ATTRIBUTE_SET_NAME` (`entity_type_id`,`attribute_set_name`),
  KEY `EAV_ATTRIBUTE_SET_ENTITY_TYPE_ID_SORT_ORDER` (`entity_type_id`,`sort_order`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='Eav Attribute Set';

--
-- Dumping data for table `eav_attribute_set`
--

LOCK TABLES `eav_attribute_set` WRITE;
/*!40000 ALTER TABLE `eav_attribute_set` DISABLE KEYS */;
INSERT INTO `eav_attribute_set` VALUES (1,1,'Default',2),(2,2,'Default',2),(3,3,'Default',1),(4,4,'Default',1),(5,5,'Default',1),(6,6,'Default',1),(7,7,'Default',1),(8,8,'Default',1);
/*!40000 ALTER TABLE `eav_attribute_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eav_entity`
--

DROP TABLE IF EXISTS `eav_entity`;
CREATE TABLE `eav_entity` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Set Id',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Parent Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `is_active` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Defines Is Entity Active',
  PRIMARY KEY (`entity_id`),
  KEY `EAV_ENTITY_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `EAV_ENTITY_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity';

--
-- Table structure for table `eav_entity_attribute`
--

DROP TABLE IF EXISTS `eav_entity_attribute`;
CREATE TABLE `eav_entity_attribute` (
  `entity_attribute_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Attribute Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Set Id',
  `attribute_group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Group Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`entity_attribute_id`),
  UNIQUE KEY `EAV_ENTITY_ATTRIBUTE_ATTRIBUTE_SET_ID_ATTRIBUTE_ID` (`attribute_set_id`,`attribute_id`),
  UNIQUE KEY `EAV_ENTITY_ATTRIBUTE_ATTRIBUTE_GROUP_ID_ATTRIBUTE_ID` (`attribute_group_id`,`attribute_id`),
  KEY `EAV_ENTITY_ATTRIBUTE_ATTRIBUTE_SET_ID_SORT_ORDER` (`attribute_set_id`,`sort_order`),
  KEY `EAV_ENTITY_ATTRIBUTE_ATTRIBUTE_ID` (`attribute_id`)
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8 COMMENT='Eav Entity Attributes';

--
-- Dumping data for table `eav_entity_attribute`
--

LOCK TABLES `eav_entity_attribute` WRITE;
/*!40000 ALTER TABLE `eav_entity_attribute` DISABLE KEYS */;
INSERT INTO `eav_entity_attribute` VALUES ('1',1,1,1,1,10),('2',1,1,1,2,20),('3',1,1,1,3,20),('4',1,1,1,4,30),('5',1,1,1,5,40),('6',1,1,1,6,50),('7',1,1,1,7,60),('8',1,1,1,8,70),('9',1,1,1,9,80),('10',1,1,1,10,25),('11',1,1,1,11,90),('12',1,1,1,12,81),('13',1,1,1,13,115),('14',1,1,1,14,120),('15',1,1,1,15,82),('16',1,1,1,16,83),('17',1,1,1,17,100),('18',1,1,1,18,85),('19',1,1,1,19,86),('20',1,1,1,20,110),('21',1,1,1,21,121),('22',2,2,2,22,10),('23',2,2,2,23,20),('24',2,2,2,24,30),('25',2,2,2,25,40),('26',2,2,2,26,50),('27',2,2,2,27,60),('28',2,2,2,28,70),('29',2,2,2,29,80),('30',2,2,2,30,90),('31',2,2,2,31,100),('32',2,2,2,32,100),('33',2,2,2,33,110),('34',2,2,2,34,120),('35',2,2,2,35,130),('36',2,2,2,36,131),('37',2,2,2,37,132),('38',2,2,2,38,133),('39',2,2,2,39,134),('40',2,2,2,40,135),('41',1,1,1,41,87),('42',1,1,1,42,100),('43',1,1,1,43,110),('44',1,1,1,44,120),('45',3,3,4,45,1),('46',3,3,4,46,2),('47',3,3,4,47,4),('48',3,3,4,48,5),('49',3,3,4,49,6),('50',3,3,4,50,7),('51',3,3,4,51,8),('52',3,3,5,52,10),('53',3,3,5,53,20),('54',3,3,5,54,30),('55',3,3,4,55,12),('56',3,3,4,56,13),('57',3,3,4,57,14),('58',3,3,4,58,15),('59',3,3,4,59,16),('60',3,3,6,60,10),('61',3,3,6,61,30),('62',3,3,6,62,40),('63',3,3,6,63,50),('64',3,3,6,64,60),('65',3,3,4,65,24),('66',3,3,4,66,25),('67',3,3,5,67,40),('68',3,3,5,68,50),('69',3,3,4,69,10),('70',3,3,6,70,5),('71',3,3,6,71,6),('72',3,3,5,72,51),('73',4,4,7,73,10),('74',4,4,7,74,20),('75',4,4,13,75,90),('76',4,4,13,76,100),('77',4,4,7,77,30),('78',4,4,8,78,3),('79',4,4,8,79,4),('80',4,4,8,80,5),('81',4,4,8,81,6),('82',4,4,7,82,70),('83',4,4,9,84,20),('84',4,4,9,85,30),('85',4,4,9,86,40),('86',4,4,10,87,1),('87',4,4,10,88,2),('88',4,4,10,89,3),('89',4,4,10,90,4),('90',4,4,7,91,6),('91',4,4,8,92,7),('92',4,4,7,94,90),('93',4,4,7,95,100),('94',4,4,10,96,5),('95',4,4,7,97,5),('96',4,4,8,98,8),('97',4,4,7,99,80),('98',4,4,14,100,40),('99',4,4,14,101,20),('100',4,4,14,102,30),('101',4,4,11,103,10),('102',4,4,11,104,5),('103',4,4,7,105,80),('104',4,4,11,106,6),('105',4,4,7,107,14),('106',4,4,7,108,15),('107',4,4,7,109,16),('108',4,4,7,110,17),('109',4,4,7,111,18),('110',4,4,7,112,19),('111',4,4,7,113,20),('112',4,4,7,114,110),('113',4,4,7,115,60),('114',4,4,14,116,50),('115',3,3,4,117,3),('116',3,3,4,118,17),('117',4,4,9,119,10),('118',4,4,7,120,11),('119',4,4,8,121,9),('120',4,4,8,122,10),('121',4,4,7,123,31),('122',4,4,7,124,21),('123',4,4,7,125,71),('124',4,4,8,126,11),('125',4,4,15,127,1),('126',4,4,7,128,111),('127',4,4,7,129,112),('128',4,4,7,130,113),('129',4,4,7,131,114),('130',4,4,10,132,3),('131',4,4,7,133,40),('132',4,4,20,134,10),('133',4,4,21,93,1),('134',4,4,7,135,115),('135',3,3,4,136,50),('136',3,3,4,137,50),('137',3,3,4,138,51),('138',3,3,4,139,52),('139',4,4,8,140,12),('140',4,4,7,141,5);
/*!40000 ALTER TABLE `eav_entity_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eav_entity_datetime`
--

DROP TABLE IF EXISTS `eav_entity_datetime`;
CREATE TABLE `eav_entity_datetime` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` datetime DEFAULT NULL COMMENT 'Attribute Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `EAV_ENTITY_DATETIME_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `EAV_ENTITY_DATETIME_STORE_ID` (`store_id`),
  KEY `EAV_ENTITY_DATETIME_ATTRIBUTE_ID_VALUE` (`attribute_id`,`value`),
  KEY `EAV_ENTITY_DATETIME_ENTITY_TYPE_ID_VALUE` (`entity_type_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Value Prefix';

--
-- Table structure for table `eav_entity_decimal`
--

DROP TABLE IF EXISTS `eav_entity_decimal`;
CREATE TABLE `eav_entity_decimal` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Attribute Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `EAV_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `EAV_ENTITY_DECIMAL_STORE_ID` (`store_id`),
  KEY `EAV_ENTITY_DECIMAL_ATTRIBUTE_ID_VALUE` (`attribute_id`,`value`),
  KEY `EAV_ENTITY_DECIMAL_ENTITY_TYPE_ID_VALUE` (`entity_type_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Value Prefix';

--
-- Table structure for table `eav_entity_int`
--

DROP TABLE IF EXISTS `eav_entity_int`;
CREATE TABLE `eav_entity_int` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` int(11) NOT NULL DEFAULT '0' COMMENT 'Attribute Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `EAV_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `EAV_ENTITY_INT_STORE_ID` (`store_id`),
  KEY `EAV_ENTITY_INT_ATTRIBUTE_ID_VALUE` (`attribute_id`,`value`),
  KEY `EAV_ENTITY_INT_ENTITY_TYPE_ID_VALUE` (`entity_type_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Value Prefix';

--
-- Table structure for table `eav_entity_store`
--

DROP TABLE IF EXISTS `eav_entity_store`;
CREATE TABLE `eav_entity_store` (
  `entity_store_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Store Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `increment_prefix` varchar(20) DEFAULT NULL COMMENT 'Increment Prefix',
  `increment_last_id` varchar(50) DEFAULT NULL COMMENT 'Last Incremented Id',
  PRIMARY KEY (`entity_store_id`),
  KEY `EAV_ENTITY_STORE_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `EAV_ENTITY_STORE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Store';

--
-- Table structure for table `eav_entity_text`
--

DROP TABLE IF EXISTS `eav_entity_text`;
CREATE TABLE `eav_entity_text` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` text NOT NULL COMMENT 'Attribute Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `EAV_ENTITY_TEXT_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `EAV_ENTITY_TEXT_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `EAV_ENTITY_TEXT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `EAV_ENTITY_TEXT_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Value Prefix';

--
-- Table structure for table `eav_entity_type`
--

DROP TABLE IF EXISTS `eav_entity_type`;
CREATE TABLE `eav_entity_type` (
  `entity_type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Type Id',
  `entity_type_code` varchar(50) NOT NULL COMMENT 'Entity Type Code',
  `entity_model` varchar(255) NOT NULL COMMENT 'Entity Model',
  `attribute_model` varchar(255) DEFAULT NULL COMMENT 'Attribute Model',
  `entity_table` varchar(255) DEFAULT NULL COMMENT 'Entity Table',
  `value_table_prefix` varchar(255) DEFAULT NULL COMMENT 'Value Table Prefix',
  `entity_id_field` varchar(255) DEFAULT NULL COMMENT 'Entity Id Field',
  `is_data_sharing` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Defines Is Data Sharing',
  `data_sharing_key` varchar(100) DEFAULT 'default' COMMENT 'Data Sharing Key',
  `default_attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Default Attribute Set Id',
  `increment_model` varchar(255) DEFAULT NULL COMMENT 'Increment Model',
  `increment_per_store` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Increment Per Store',
  `increment_pad_length` smallint(5) unsigned NOT NULL DEFAULT '8' COMMENT 'Increment Pad Length',
  `increment_pad_char` varchar(1) NOT NULL DEFAULT '0' COMMENT 'Increment Pad Char',
  `additional_attribute_table` varchar(255) DEFAULT NULL COMMENT 'Additional Attribute Table',
  `entity_attribute_collection` varchar(255) DEFAULT NULL COMMENT 'Entity Attribute Collection',
  PRIMARY KEY (`entity_type_id`),
  KEY `EAV_ENTITY_TYPE_ENTITY_TYPE_CODE` (`entity_type_code`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='Eav Entity Type';

--
-- Dumping data for table `eav_entity_type`
--

LOCK TABLES `eav_entity_type` WRITE;
/*!40000 ALTER TABLE `eav_entity_type` DISABLE KEYS */;
INSERT INTO `eav_entity_type` VALUES (1,'customer','Magento\\Customer\\Model\\ResourceModel\\Customer','Magento\\Customer\\Model\\Attribute','customer_entity',NULL,NULL,1,'default',1,'Magento\\Eav\\Model\\Entity\\Increment\\NumericValue',0,8,'0','customer_eav_attribute','Magento\\Customer\\Model\\ResourceModel\\Attribute\\Collection'),(2,'customer_address','Magento\\Customer\\Model\\ResourceModel\\Address','Magento\\Customer\\Model\\Attribute','customer_address_entity',NULL,NULL,1,'default',2,NULL,0,8,'0','customer_eav_attribute','Magento\\Customer\\Model\\ResourceModel\\Address\\Attribute\\Collection'),(3,'catalog_category','Magento\\Catalog\\Model\\ResourceModel\\Category','Magento\\Catalog\\Model\\ResourceModel\\Eav\\Attribute','catalog_category_entity',NULL,NULL,1,'default',3,NULL,0,8,'0','catalog_eav_attribute','Magento\\Catalog\\Model\\ResourceModel\\Category\\Attribute\\Collection'),(4,'catalog_product','Magento\\Catalog\\Model\\ResourceModel\\Product','Magento\\Catalog\\Model\\ResourceModel\\Eav\\Attribute','catalog_product_entity',NULL,NULL,1,'default',4,NULL,0,8,'0','catalog_eav_attribute','Magento\\Catalog\\Model\\ResourceModel\\Product\\Attribute\\Collection'),(5,'order','Magento\\Sales\\Model\\ResourceModel\\Order',NULL,'sales_order',NULL,NULL,1,'default',5,'Magento\\Eav\\Model\\Entity\\Increment\\NumericValue',1,8,'0',NULL,NULL),(6,'invoice','Magento\\Sales\\Model\\ResourceModel\\Order',NULL,'sales_invoice',NULL,NULL,1,'default',6,'Magento\\Eav\\Model\\Entity\\Increment\\NumericValue',1,8,'0',NULL,NULL),(7,'creditmemo','Magento\\Sales\\Model\\ResourceModel\\Order\\Creditmemo',NULL,'sales_creditmemo',NULL,NULL,1,'default',7,'Magento\\Eav\\Model\\Entity\\Increment\\NumericValue',1,8,'0',NULL,NULL),(8,'shipment','Magento\\Sales\\Model\\ResourceModel\\Order\\Shipment',NULL,'sales_shipment',NULL,NULL,1,'default',8,'Magento\\Eav\\Model\\Entity\\Increment\\NumericValue',1,8,'0',NULL,NULL);
/*!40000 ALTER TABLE `eav_entity_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eav_entity_varchar`
--

DROP TABLE IF EXISTS `eav_entity_varchar`;
CREATE TABLE `eav_entity_varchar` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` varchar(255) DEFAULT NULL COMMENT 'Attribute Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `EAV_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `EAV_ENTITY_VARCHAR_STORE_ID` (`store_id`),
  KEY `EAV_ENTITY_VARCHAR_ATTRIBUTE_ID_VALUE` (`attribute_id`,`value`),
  KEY `EAV_ENTITY_VARCHAR_ENTITY_TYPE_ID_VALUE` (`entity_type_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Value Prefix';

--
-- Table structure for table `eav_form_element`
--

DROP TABLE IF EXISTS `eav_form_element`;
CREATE TABLE `eav_form_element` (
  `element_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Element Id',
  `type_id` smallint(5) unsigned NOT NULL COMMENT 'Type Id',
  `fieldset_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Fieldset Id',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute Id',
  `sort_order` int(11) NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`element_id`),
  UNIQUE KEY `EAV_FORM_ELEMENT_TYPE_ID_ATTRIBUTE_ID` (`type_id`,`attribute_id`),
  KEY `EAV_FORM_ELEMENT_FIELDSET_ID` (`fieldset_id`),
  KEY `EAV_FORM_ELEMENT_ATTRIBUTE_ID` (`attribute_id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COMMENT='Eav Form Element';

--
-- Dumping data for table `eav_form_element`
--

LOCK TABLES `eav_form_element` WRITE;
/*!40000 ALTER TABLE `eav_form_element` DISABLE KEYS */;
INSERT INTO `eav_form_element` VALUES ('1',1,NULL,23,'0'),('2',1,NULL,25,'1'),('3',1,NULL,27,'2'),('4',1,NULL,9,'3'),('5',1,NULL,28,'4'),('6',1,NULL,29,'5'),('7',1,NULL,31,'6'),('8',1,NULL,33,'7'),('9',1,NULL,30,'8'),('10',1,NULL,34,'9'),('11',1,NULL,35,'10'),('12',2,NULL,23,'0'),('13',2,NULL,25,'1'),('14',2,NULL,27,'2'),('15',2,NULL,9,'3'),('16',2,NULL,28,'4'),('17',2,NULL,29,'5'),('18',2,NULL,31,'6'),('19',2,NULL,33,'7'),('20',2,NULL,30,'8'),('21',2,NULL,34,'9'),('22',2,NULL,35,'10'),('23',3,NULL,23,'0'),('24',3,NULL,25,'1'),('25',3,NULL,27,'2'),('26',3,NULL,28,'3'),('27',3,NULL,29,'4'),('28',3,NULL,31,'5'),('29',3,NULL,33,'6'),('30',3,NULL,30,'7'),('31',3,NULL,34,'8'),('32',3,NULL,35,'9'),('33',4,NULL,23,'0'),('34',4,NULL,25,'1'),('35',4,NULL,27,'2'),('36',4,NULL,28,'3'),('37',4,NULL,29,'4'),('38',4,NULL,31,'5'),('39',4,NULL,33,'6'),('40',4,NULL,30,'7'),('41',4,NULL,34,'8'),('42',4,NULL,35,'9');
/*!40000 ALTER TABLE `eav_form_element` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eav_form_fieldset`
--

DROP TABLE IF EXISTS `eav_form_fieldset`;
CREATE TABLE `eav_form_fieldset` (
  `fieldset_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Fieldset Id',
  `type_id` smallint(5) unsigned NOT NULL COMMENT 'Type Id',
  `code` varchar(64) NOT NULL COMMENT 'Code',
  `sort_order` int(11) NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`fieldset_id`),
  UNIQUE KEY `EAV_FORM_FIELDSET_TYPE_ID_CODE` (`type_id`,`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Form Fieldset';

--
-- Table structure for table `eav_form_fieldset_label`
--

DROP TABLE IF EXISTS `eav_form_fieldset_label`;
CREATE TABLE `eav_form_fieldset_label` (
  `fieldset_id` smallint(5) unsigned NOT NULL COMMENT 'Fieldset Id',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  `label` varchar(255) NOT NULL COMMENT 'Label',
  PRIMARY KEY (`fieldset_id`,`store_id`),
  KEY `EAV_FORM_FIELDSET_LABEL_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Form Fieldset Label';

--
-- Table structure for table `eav_form_type`
--

DROP TABLE IF EXISTS `eav_form_type`;
CREATE TABLE `eav_form_type` (
  `type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Type Id',
  `code` varchar(64) NOT NULL COMMENT 'Code',
  `label` varchar(255) NOT NULL COMMENT 'Label',
  `is_system` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is System',
  `theme` varchar(64) DEFAULT NULL COMMENT 'Theme',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  PRIMARY KEY (`type_id`),
  UNIQUE KEY `EAV_FORM_TYPE_CODE_THEME_STORE_ID` (`code`,`theme`,`store_id`),
  KEY `EAV_FORM_TYPE_STORE_ID` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='Eav Form Type';

--
-- Dumping data for table `eav_form_type`
--

LOCK TABLES `eav_form_type` WRITE;
/*!40000 ALTER TABLE `eav_form_type` DISABLE KEYS */;
INSERT INTO `eav_form_type` VALUES (1,'checkout_onepage_register','checkout_onepage_register',1,'',0),(2,'checkout_onepage_register_guest','checkout_onepage_register_guest',1,'',0),(3,'checkout_onepage_billing_address','checkout_onepage_billing_address',1,'',0),(4,'checkout_onepage_shipping_address','checkout_onepage_shipping_address',1,'',0);
/*!40000 ALTER TABLE `eav_form_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eav_form_type_entity`
--

DROP TABLE IF EXISTS `eav_form_type_entity`;
CREATE TABLE `eav_form_type_entity` (
  `type_id` smallint(5) unsigned NOT NULL COMMENT 'Type Id',
  `entity_type_id` smallint(5) unsigned NOT NULL COMMENT 'Entity Type Id',
  PRIMARY KEY (`type_id`,`entity_type_id`),
  KEY `EAV_FORM_TYPE_ENTITY_ENTITY_TYPE_ID` (`entity_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Form Type Entity';

--
-- Dumping data for table `eav_form_type_entity`
--

LOCK TABLES `eav_form_type_entity` WRITE;
/*!40000 ALTER TABLE `eav_form_type_entity` DISABLE KEYS */;
INSERT INTO `eav_form_type_entity` VALUES (1,1),(2,1),(1,2),(2,2),(3,2),(4,2);
/*!40000 ALTER TABLE `eav_form_type_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_template`
--

DROP TABLE IF EXISTS `email_template`;
CREATE TABLE `email_template` (
  `template_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Template ID',
  `template_code` varchar(150) NOT NULL COMMENT 'Template Name',
  `template_text` text NOT NULL COMMENT 'Template Content',
  `template_styles` text COMMENT 'Templste Styles',
  `template_type` int(10) unsigned DEFAULT NULL COMMENT 'Template Type',
  `template_subject` varchar(200) NOT NULL COMMENT 'Template Subject',
  `template_sender_name` varchar(200) DEFAULT NULL COMMENT 'Template Sender Name',
  `template_sender_email` varchar(200) DEFAULT NULL COMMENT 'Template Sender Email',
  `added_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Date of Template Creation',
  `modified_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of Template Modification',
  `orig_template_code` varchar(200) DEFAULT NULL COMMENT 'Original Template Code',
  `orig_template_variables` text COMMENT 'Original Template Variables',
  PRIMARY KEY (`template_id`),
  UNIQUE KEY `EMAIL_TEMPLATE_TEMPLATE_CODE` (`template_code`),
  KEY `EMAIL_TEMPLATE_ADDED_AT` (`added_at`),
  KEY `EMAIL_TEMPLATE_MODIFIED_AT` (`modified_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Email Templates';

--
-- Table structure for table `flag`
--

DROP TABLE IF EXISTS `flag`;
CREATE TABLE `flag` (
  `flag_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Flag Id',
  `flag_code` varchar(255) NOT NULL COMMENT 'Flag Code',
  `state` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Flag State',
  `flag_data` text COMMENT 'Flag Data',
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of Last Flag Update',
  PRIMARY KEY (`flag_id`),
  KEY `FLAG_LAST_UPDATE` (`last_update`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Flag';

--
-- Table structure for table `gift_message`
--

DROP TABLE IF EXISTS `gift_message`;
CREATE TABLE `gift_message` (
  `gift_message_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'GiftMessage Id',
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer id',
  `sender` varchar(255) DEFAULT NULL COMMENT 'Sender',
  `recipient` varchar(255) DEFAULT NULL COMMENT 'Registrant',
  `message` text COMMENT 'Message',
  PRIMARY KEY (`gift_message_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Gift Message';

--
-- Table structure for table `googleoptimizer_code`
--

DROP TABLE IF EXISTS `googleoptimizer_code`;
CREATE TABLE `googleoptimizer_code` (
  `code_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Google experiment code id',
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Optimized entity id product id or catalog id',
  `entity_type` varchar(50) DEFAULT NULL COMMENT 'Optimized entity type',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store id',
  `experiment_script` text COMMENT 'Google experiment script',
  PRIMARY KEY (`code_id`),
  UNIQUE KEY `GOOGLEOPTIMIZER_CODE_STORE_ID_ENTITY_ID_ENTITY_TYPE` (`store_id`,`entity_id`,`entity_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Google Experiment code';

--
-- Table structure for table `hozmegamenu`
--

DROP TABLE IF EXISTS `hozmegamenu`;
CREATE TABLE `hozmegamenu` (
  `hozmegamenu_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'hozmegamenu ID',
  `status` smallint(6) NOT NULL DEFAULT '1' COMMENT 'hozmegamenu status',
  `type_menu` smallint(6) NOT NULL DEFAULT '1' COMMENT 'hozmegamenu type_menu',
  `is_home` smallint(6) NOT NULL DEFAULT '1' COMMENT 'hozmegamenu is_home',
  `is_mobile` smallint(6) NOT NULL DEFAULT '1' COMMENT 'hozmegamenu is_home',
  `is_new` varchar(255) DEFAULT '' COMMENT 'hozmegamenu is_new',
  `is_sale` varchar(255) DEFAULT '' COMMENT 'hozmegamenu is_sale',
  `is_level` varchar(255) DEFAULT '' COMMENT 'hozmegamenu Level',
  `is_column` varchar(255) DEFAULT '' COMMENT 'hozmegamenu Column',
  `items` varchar(255) DEFAULT '' COMMENT 'hozmegamenu items',
  `is_link` varchar(255) DEFAULT '' COMMENT 'hozmegamenu is_link',
  `effect` varchar(255) DEFAULT '' COMMENT 'hozmegamenu Effect',
  `image` varchar(255) DEFAULT NULL COMMENT 'hozmegamenu image',
  `store` smallint(6) NOT NULL DEFAULT '0' COMMENT 'store',
  `items_show` varchar(255) DEFAULT NULL COMMENT 'Items Show',
  PRIMARY KEY (`hozmegamenu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='hozmegamenu';

--
-- Dumping data for table `hozmegamenu`
--

LOCK TABLES `hozmegamenu` WRITE;
/*!40000 ALTER TABLE `hozmegamenu` DISABLE KEYS */;
INSERT INTO `hozmegamenu` VALUES ('1',1,1,2,1,NULL,NULL,'3','3','[\"category_3\",\"category_5\",\"category_4\",\"category_68\",\"category_14\"]','[\"3\"]','0',NULL,0,NULL),('2',1,1,2,1,NULL,NULL,'3','2','[\"category_3\",\"category_5\",\"category_4\"]','[\"22\"]','0',NULL,2,NULL);
/*!40000 ALTER TABLE `hozmegamenu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `import_history`
--

DROP TABLE IF EXISTS `import_history`;
CREATE TABLE `import_history` (
  `history_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'History record Id',
  `started_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Started at',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'User ID',
  `imported_file` varchar(255) DEFAULT NULL COMMENT 'Imported file',
  `execution_time` varchar(255) DEFAULT NULL COMMENT 'Execution time',
  `summary` varchar(255) DEFAULT NULL COMMENT 'Summary',
  `error_file` varchar(255) NOT NULL COMMENT 'Imported file with errors',
  PRIMARY KEY (`history_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Import history table';

--
-- Table structure for table `importexport_importdata`
--

DROP TABLE IF EXISTS `importexport_importdata`;
CREATE TABLE `importexport_importdata` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `entity` varchar(50) NOT NULL COMMENT 'Entity',
  `behavior` varchar(10) NOT NULL DEFAULT 'append' COMMENT 'Behavior',
  `data` longtext COMMENT 'Data',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Import Data Table';

--
-- Table structure for table `indexer_state`
--

DROP TABLE IF EXISTS `indexer_state`;
CREATE TABLE `indexer_state` (
  `state_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Indexer State Id',
  `indexer_id` varchar(255) DEFAULT NULL COMMENT 'Indexer Id',
  `status` varchar(16) DEFAULT 'invalid' COMMENT 'Indexer Status',
  `updated` datetime DEFAULT NULL COMMENT 'Indexer Status',
  `hash_config` varchar(32) NOT NULL COMMENT 'Hash of indexer config',
  PRIMARY KEY (`state_id`),
  KEY `INDEXER_STATE_INDEXER_ID` (`indexer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='Indexer State';

--
-- Dumping data for table `indexer_state`
--

LOCK TABLES `indexer_state` WRITE;
/*!40000 ALTER TABLE `indexer_state` DISABLE KEYS */;
INSERT INTO `indexer_state` VALUES ('1','design_config_grid','valid','2017-04-21 19:35:56','27baa8fe6a5369f52c8b7cbd54a3c3c4'),('2','customer_grid','valid','2017-04-18 08:35:49','d572ea00944c9e3f517b3f46bad058a4'),('3','catalog_category_product','invalid','2017-04-19 10:07:40','57b48d3cf1fcd64abe6b01dea3173d02'),('4','catalog_product_category','valid','2017-04-16 14:50:25','9957f66909342cc58ff2703dcd268bf4'),('5','catalog_product_price','invalid','2017-04-18 14:27:09','15a819a577a149220cd0722c291de721'),('6','catalog_product_attribute','invalid','2017-04-19 10:07:38','77eed0bf72b16099d299d0ab47b74910'),('7','cataloginventory_stock','invalid','2017-04-18 08:37:01','78a405fd852458c326c85096099d7d5e'),('8','catalogrule_rule','valid','2017-04-18 08:35:51','5afe3cacdcb52ec3a7e68dc245679021'),('9','catalogrule_product','valid','2017-04-16 14:50:26','0ebee9e52ed424273132e8227fe646f3'),('10','catalogsearch_fulltext','invalid','2017-04-18 08:42:05','4486b57e2021aa78b526c68c9af2dcab');
/*!40000 ALTER TABLE `indexer_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `integration`
--

DROP TABLE IF EXISTS `integration`;
CREATE TABLE `integration` (
  `integration_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Integration ID',
  `name` varchar(255) NOT NULL COMMENT 'Integration name is displayed in the admin interface',
  `email` varchar(255) NOT NULL COMMENT 'Email address of the contact person',
  `endpoint` varchar(255) DEFAULT NULL COMMENT 'Endpoint for posting consumer credentials',
  `status` smallint(5) unsigned NOT NULL COMMENT 'Integration status',
  `consumer_id` int(10) unsigned DEFAULT NULL COMMENT 'Oauth consumer',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Creation Time',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT 'Update Time',
  `setup_type` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Integration type - manual or config file',
  `identity_link_url` varchar(255) DEFAULT NULL COMMENT 'Identity linking Url',
  PRIMARY KEY (`integration_id`),
  UNIQUE KEY `INTEGRATION_NAME` (`name`),
  UNIQUE KEY `INTEGRATION_CONSUMER_ID` (`consumer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='integration';

--
-- Table structure for table `layout_link`
--

DROP TABLE IF EXISTS `layout_link`;
CREATE TABLE `layout_link` (
  `layout_link_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Link Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `theme_id` int(10) unsigned NOT NULL COMMENT 'Theme id',
  `layout_update_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Layout Update Id',
  `is_temporary` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Defines whether Layout Update is Temporary',
  PRIMARY KEY (`layout_link_id`),
  KEY `LAYOUT_LINK_LAYOUT_UPDATE_ID` (`layout_update_id`),
  KEY `LAYOUT_LINK_STORE_ID_THEME_ID_LAYOUT_UPDATE_ID_IS_TEMPORARY` (`store_id`,`theme_id`,`layout_update_id`,`is_temporary`),
  KEY `LAYOUT_LINK_THEME_ID_THEME_THEME_ID` (`theme_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Layout Link';

--
-- Table structure for table `layout_update`
--

DROP TABLE IF EXISTS `layout_update`;
CREATE TABLE `layout_update` (
  `layout_update_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Layout Update Id',
  `handle` varchar(255) DEFAULT NULL COMMENT 'Handle',
  `xml` text COMMENT 'Xml',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last Update Timestamp',
  PRIMARY KEY (`layout_update_id`),
  KEY `LAYOUT_UPDATE_HANDLE` (`handle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Layout Updates';

--
-- Table structure for table `mview_state`
--

DROP TABLE IF EXISTS `mview_state`;
CREATE TABLE `mview_state` (
  `state_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'View State Id',
  `view_id` varchar(255) DEFAULT NULL COMMENT 'View Id',
  `mode` varchar(16) DEFAULT 'disabled' COMMENT 'View Mode',
  `status` varchar(16) DEFAULT 'idle' COMMENT 'View Status',
  `updated` datetime DEFAULT NULL COMMENT 'View updated time',
  `version_id` int(10) unsigned DEFAULT NULL COMMENT 'View Version Id',
  PRIMARY KEY (`state_id`),
  KEY `MVIEW_STATE_VIEW_ID` (`view_id`),
  KEY `MVIEW_STATE_MODE` (`mode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='View State';

--
-- Table structure for table `newsletter_problem`
--

DROP TABLE IF EXISTS `newsletter_problem`;
CREATE TABLE `newsletter_problem` (
  `problem_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Problem Id',
  `subscriber_id` int(10) unsigned DEFAULT NULL COMMENT 'Subscriber Id',
  `queue_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Queue Id',
  `problem_error_code` int(10) unsigned DEFAULT '0' COMMENT 'Problem Error Code',
  `problem_error_text` varchar(200) DEFAULT NULL COMMENT 'Problem Error Text',
  PRIMARY KEY (`problem_id`),
  KEY `NEWSLETTER_PROBLEM_SUBSCRIBER_ID` (`subscriber_id`),
  KEY `NEWSLETTER_PROBLEM_QUEUE_ID` (`queue_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter Problems';

--
-- Table structure for table `newsletter_queue`
--

DROP TABLE IF EXISTS `newsletter_queue`;
CREATE TABLE `newsletter_queue` (
  `queue_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Queue Id',
  `template_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Template ID',
  `newsletter_type` int(11) DEFAULT NULL COMMENT 'Newsletter Type',
  `newsletter_text` text COMMENT 'Newsletter Text',
  `newsletter_styles` text COMMENT 'Newsletter Styles',
  `newsletter_subject` varchar(200) DEFAULT NULL COMMENT 'Newsletter Subject',
  `newsletter_sender_name` varchar(200) DEFAULT NULL COMMENT 'Newsletter Sender Name',
  `newsletter_sender_email` varchar(200) DEFAULT NULL COMMENT 'Newsletter Sender Email',
  `queue_status` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Queue Status',
  `queue_start_at` timestamp NULL DEFAULT NULL COMMENT 'Queue Start At',
  `queue_finish_at` timestamp NULL DEFAULT NULL COMMENT 'Queue Finish At',
  PRIMARY KEY (`queue_id`),
  KEY `NEWSLETTER_QUEUE_TEMPLATE_ID` (`template_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter Queue';

--
-- Table structure for table `newsletter_queue_link`
--

DROP TABLE IF EXISTS `newsletter_queue_link`;
CREATE TABLE `newsletter_queue_link` (
  `queue_link_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Queue Link Id',
  `queue_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Queue Id',
  `subscriber_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Subscriber Id',
  `letter_sent_at` timestamp NULL DEFAULT NULL COMMENT 'Letter Sent At',
  PRIMARY KEY (`queue_link_id`),
  KEY `NEWSLETTER_QUEUE_LINK_SUBSCRIBER_ID` (`subscriber_id`),
  KEY `NEWSLETTER_QUEUE_LINK_QUEUE_ID_LETTER_SENT_AT` (`queue_id`,`letter_sent_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter Queue Link';

--
-- Table structure for table `newsletter_queue_store_link`
--

DROP TABLE IF EXISTS `newsletter_queue_store_link`;
CREATE TABLE `newsletter_queue_store_link` (
  `queue_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Queue Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  PRIMARY KEY (`queue_id`,`store_id`),
  KEY `NEWSLETTER_QUEUE_STORE_LINK_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter Queue Store Link';

--
-- Table structure for table `newsletter_subscriber`
--

DROP TABLE IF EXISTS `newsletter_subscriber`;
CREATE TABLE `newsletter_subscriber` (
  `subscriber_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Subscriber Id',
  `store_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Store Id',
  `change_status_at` timestamp NULL DEFAULT NULL COMMENT 'Change Status At',
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Id',
  `subscriber_email` varchar(150) DEFAULT NULL COMMENT 'Subscriber Email',
  `subscriber_status` int(11) NOT NULL DEFAULT '0' COMMENT 'Subscriber Status',
  `subscriber_confirm_code` varchar(32) DEFAULT 'NULL' COMMENT 'Subscriber Confirm Code',
  PRIMARY KEY (`subscriber_id`),
  KEY `NEWSLETTER_SUBSCRIBER_CUSTOMER_ID` (`customer_id`),
  KEY `NEWSLETTER_SUBSCRIBER_STORE_ID` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Newsletter Subscriber';

--
-- Dumping data for table `newsletter_subscriber`
--

LOCK TABLES `newsletter_subscriber` WRITE;
/*!40000 ALTER TABLE `newsletter_subscriber` DISABLE KEYS */;
INSERT INTO `newsletter_subscriber` VALUES ('1',2,NULL,'0','john@doe.com','1','2ae61tfuy2r6v23iil2mwi6q1mc19qmi');
/*!40000 ALTER TABLE `newsletter_subscriber` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletter_template`
--

DROP TABLE IF EXISTS `newsletter_template`;
CREATE TABLE `newsletter_template` (
  `template_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Template ID',
  `template_code` varchar(150) DEFAULT NULL COMMENT 'Template Code',
  `template_text` text COMMENT 'Template Text',
  `template_styles` text COMMENT 'Template Styles',
  `template_type` int(10) unsigned DEFAULT NULL COMMENT 'Template Type',
  `template_subject` varchar(200) DEFAULT NULL COMMENT 'Template Subject',
  `template_sender_name` varchar(200) DEFAULT NULL COMMENT 'Template Sender Name',
  `template_sender_email` varchar(200) DEFAULT NULL COMMENT 'Template Sender Email',
  `template_actual` smallint(5) unsigned DEFAULT '1' COMMENT 'Template Actual',
  `added_at` timestamp NULL DEFAULT NULL COMMENT 'Added At',
  `modified_at` timestamp NULL DEFAULT NULL COMMENT 'Modified At',
  PRIMARY KEY (`template_id`),
  KEY `NEWSLETTER_TEMPLATE_TEMPLATE_ACTUAL` (`template_actual`),
  KEY `NEWSLETTER_TEMPLATE_ADDED_AT` (`added_at`),
  KEY `NEWSLETTER_TEMPLATE_MODIFIED_AT` (`modified_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter Template';

--
-- Table structure for table `oauth_consumer`
--

DROP TABLE IF EXISTS `oauth_consumer`;
CREATE TABLE `oauth_consumer` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `name` varchar(255) NOT NULL COMMENT 'Name of consumer',
  `key` varchar(32) NOT NULL COMMENT 'Key code',
  `secret` varchar(32) NOT NULL COMMENT 'Secret code',
  `callback_url` text COMMENT 'Callback URL',
  `rejected_callback_url` text NOT NULL COMMENT 'Rejected callback URL',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `OAUTH_CONSUMER_KEY` (`key`),
  UNIQUE KEY `OAUTH_CONSUMER_SECRET` (`secret`),
  KEY `OAUTH_CONSUMER_CREATED_AT` (`created_at`),
  KEY `OAUTH_CONSUMER_UPDATED_AT` (`updated_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='OAuth Consumers';

--
-- Table structure for table `oauth_nonce`
--

DROP TABLE IF EXISTS `oauth_nonce`;
CREATE TABLE `oauth_nonce` (
  `nonce` varchar(32) NOT NULL COMMENT 'Nonce String',
  `timestamp` int(10) unsigned NOT NULL COMMENT 'Nonce Timestamp',
  `consumer_id` int(10) unsigned NOT NULL COMMENT 'Consumer ID',
  UNIQUE KEY `OAUTH_NONCE_NONCE_CONSUMER_ID` (`nonce`,`consumer_id`),
  KEY `OAUTH_NONCE_CONSUMER_ID_OAUTH_CONSUMER_ENTITY_ID` (`consumer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='OAuth Nonce';

--
-- Table structure for table `oauth_token`
--

DROP TABLE IF EXISTS `oauth_token`;
CREATE TABLE `oauth_token` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `consumer_id` int(10) unsigned DEFAULT NULL COMMENT 'Oauth Consumer ID',
  `admin_id` int(10) unsigned DEFAULT NULL COMMENT 'Admin user ID',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer user ID',
  `type` varchar(16) NOT NULL COMMENT 'Token Type',
  `token` varchar(32) NOT NULL COMMENT 'Token',
  `secret` varchar(32) NOT NULL COMMENT 'Token Secret',
  `verifier` varchar(32) DEFAULT NULL COMMENT 'Token Verifier',
  `callback_url` text NOT NULL COMMENT 'Token Callback URL',
  `revoked` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Token revoked',
  `authorized` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Token authorized',
  `user_type` int(11) DEFAULT NULL COMMENT 'User type',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Token creation timestamp',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `OAUTH_TOKEN_TOKEN` (`token`),
  KEY `OAUTH_TOKEN_CONSUMER_ID` (`consumer_id`),
  KEY `OAUTH_TOKEN_ADMIN_ID_ADMIN_USER_USER_ID` (`admin_id`),
  KEY `OAUTH_TOKEN_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='OAuth Tokens';

--
-- Table structure for table `oauth_token_request_log`
--

DROP TABLE IF EXISTS `oauth_token_request_log`;
CREATE TABLE `oauth_token_request_log` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Log Id',
  `user_name` varchar(255) NOT NULL COMMENT 'Customer email or admin login',
  `user_type` smallint(5) unsigned NOT NULL COMMENT 'User type (admin or customer)',
  `failures_count` smallint(5) unsigned DEFAULT '0' COMMENT 'Number of failed authentication attempts in a row',
  `lock_expires_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Lock expiration time',
  PRIMARY KEY (`log_id`),
  UNIQUE KEY `OAUTH_TOKEN_REQUEST_LOG_USER_NAME_USER_TYPE` (`user_name`,`user_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Log of token request authentication failures.';

--
-- Table structure for table `password_reset_request_event`
--

DROP TABLE IF EXISTS `password_reset_request_event`;
CREATE TABLE `password_reset_request_event` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `request_type` smallint(5) unsigned NOT NULL COMMENT 'Type of the event under a security control',
  `account_reference` varchar(255) DEFAULT NULL COMMENT 'An identifier for existing account or another target',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Timestamp when the event occurs',
  `ip` varchar(15) NOT NULL COMMENT 'Remote user IP',
  PRIMARY KEY (`id`),
  KEY `PASSWORD_RESET_REQUEST_EVENT_ACCOUNT_REFERENCE` (`account_reference`),
  KEY `PASSWORD_RESET_REQUEST_EVENT_CREATED_AT` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Password Reset Request Event under a security control';

--
-- Dumping data for table `password_reset_request_event`
--

LOCK TABLES `password_reset_request_event` WRITE;
/*!40000 ALTER TABLE `password_reset_request_event` DISABLE KEYS */;
INSERT INTO `password_reset_request_event` VALUES ('1',0,'markttimbol@gmail.com','2017-04-13 08:01:21','127.0.0.1');
/*!40000 ALTER TABLE `password_reset_request_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paypal_billing_agreement`
--

DROP TABLE IF EXISTS `paypal_billing_agreement`;
CREATE TABLE `paypal_billing_agreement` (
  `agreement_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Agreement Id',
  `customer_id` int(10) unsigned NOT NULL COMMENT 'Customer Id',
  `method_code` varchar(32) NOT NULL COMMENT 'Method Code',
  `reference_id` varchar(32) NOT NULL COMMENT 'Reference Id',
  `status` varchar(20) NOT NULL COMMENT 'Status',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `agreement_label` varchar(255) DEFAULT NULL COMMENT 'Agreement Label',
  PRIMARY KEY (`agreement_id`),
  KEY `PAYPAL_BILLING_AGREEMENT_CUSTOMER_ID` (`customer_id`),
  KEY `PAYPAL_BILLING_AGREEMENT_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Billing Agreement';

--
-- Table structure for table `paypal_billing_agreement_order`
--

DROP TABLE IF EXISTS `paypal_billing_agreement_order`;
CREATE TABLE `paypal_billing_agreement_order` (
  `agreement_id` int(10) unsigned NOT NULL COMMENT 'Agreement Id',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  PRIMARY KEY (`agreement_id`,`order_id`),
  KEY `PAYPAL_BILLING_AGREEMENT_ORDER_ORDER_ID` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Billing Agreement Order';

--
-- Table structure for table `paypal_cert`
--

DROP TABLE IF EXISTS `paypal_cert`;
CREATE TABLE `paypal_cert` (
  `cert_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Cert Id',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website Id',
  `content` text COMMENT 'Content',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  PRIMARY KEY (`cert_id`),
  KEY `PAYPAL_CERT_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Paypal Certificate Table';

--
-- Table structure for table `paypal_payment_transaction`
--

DROP TABLE IF EXISTS `paypal_payment_transaction`;
CREATE TABLE `paypal_payment_transaction` (
  `transaction_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `txn_id` varchar(100) DEFAULT NULL COMMENT 'Txn Id',
  `additional_information` blob COMMENT 'Additional Information',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  PRIMARY KEY (`transaction_id`),
  UNIQUE KEY `PAYPAL_PAYMENT_TRANSACTION_TXN_ID` (`txn_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='PayPal Payflow Link Payment Transaction';

--
-- Table structure for table `paypal_settlement_report`
--

DROP TABLE IF EXISTS `paypal_settlement_report`;
CREATE TABLE `paypal_settlement_report` (
  `report_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Report Id',
  `report_date` timestamp NULL DEFAULT NULL COMMENT 'Report Date',
  `account_id` varchar(64) DEFAULT NULL COMMENT 'Account Id',
  `filename` varchar(24) DEFAULT NULL COMMENT 'Filename',
  `last_modified` timestamp NULL DEFAULT NULL COMMENT 'Last Modified',
  PRIMARY KEY (`report_id`),
  UNIQUE KEY `PAYPAL_SETTLEMENT_REPORT_REPORT_DATE_ACCOUNT_ID` (`report_date`,`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Paypal Settlement Report Table';

--
-- Table structure for table `paypal_settlement_report_row`
--

DROP TABLE IF EXISTS `paypal_settlement_report_row`;
CREATE TABLE `paypal_settlement_report_row` (
  `row_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Row Id',
  `report_id` int(10) unsigned NOT NULL COMMENT 'Report Id',
  `transaction_id` varchar(19) DEFAULT NULL COMMENT 'Transaction Id',
  `invoice_id` varchar(127) DEFAULT NULL COMMENT 'Invoice Id',
  `paypal_reference_id` varchar(19) DEFAULT NULL COMMENT 'Paypal Reference Id',
  `paypal_reference_id_type` varchar(3) DEFAULT NULL COMMENT 'Paypal Reference Id Type',
  `transaction_event_code` varchar(5) DEFAULT NULL COMMENT 'Transaction Event Code',
  `transaction_initiation_date` timestamp NULL DEFAULT NULL COMMENT 'Transaction Initiation Date',
  `transaction_completion_date` timestamp NULL DEFAULT NULL COMMENT 'Transaction Completion Date',
  `transaction_debit_or_credit` varchar(2) NOT NULL DEFAULT 'CR' COMMENT 'Transaction Debit Or Credit',
  `gross_transaction_amount` decimal(20,6) NOT NULL DEFAULT '0.000000' COMMENT 'Gross Transaction Amount',
  `gross_transaction_currency` varchar(3) DEFAULT NULL COMMENT 'Gross Transaction Currency',
  `fee_debit_or_credit` varchar(2) DEFAULT NULL COMMENT 'Fee Debit Or Credit',
  `fee_amount` decimal(20,6) NOT NULL DEFAULT '0.000000' COMMENT 'Fee Amount',
  `fee_currency` varchar(3) DEFAULT NULL COMMENT 'Fee Currency',
  `custom_field` varchar(255) DEFAULT NULL COMMENT 'Custom Field',
  `consumer_id` varchar(127) DEFAULT NULL COMMENT 'Consumer Id',
  `payment_tracking_id` varchar(255) DEFAULT NULL COMMENT 'Payment Tracking ID',
  `store_id` varchar(50) DEFAULT NULL COMMENT 'Store ID',
  PRIMARY KEY (`row_id`),
  KEY `PAYPAL_SETTLEMENT_REPORT_ROW_REPORT_ID` (`report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Paypal Settlement Report Row Table';

--
-- Table structure for table `persistent_session`
--

DROP TABLE IF EXISTS `persistent_session`;
CREATE TABLE `persistent_session` (
  `persistent_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Session id',
  `key` varchar(50) NOT NULL COMMENT 'Unique cookie key',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer id',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website ID',
  `info` text COMMENT 'Session Data',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  PRIMARY KEY (`persistent_id`),
  UNIQUE KEY `PERSISTENT_SESSION_KEY` (`key`),
  UNIQUE KEY `PERSISTENT_SESSION_CUSTOMER_ID` (`customer_id`),
  KEY `PERSISTENT_SESSION_UPDATED_AT` (`updated_at`),
  KEY `PERSISTENT_SESSION_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Persistent Session';

--
-- Table structure for table `plazathemes_blog_category`
--

DROP TABLE IF EXISTS `plazathemes_blog_category`;
CREATE TABLE `plazathemes_blog_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Category ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Category Title',
  `meta_keywords` text COMMENT 'Category Meta Keywords',
  `meta_description` text COMMENT 'Category Meta Description',
  `identifier` varchar(100) DEFAULT NULL COMMENT 'Category String Identifier',
  `content_heading` varchar(255) DEFAULT NULL COMMENT 'Category Content Heading',
  `content` mediumtext COMMENT 'Category Content',
  `path` varchar(255) DEFAULT NULL COMMENT 'Category Path',
  `position` smallint(6) NOT NULL COMMENT 'Category Position',
  `is_active` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Is Category Active',
  PRIMARY KEY (`category_id`),
  KEY `PLAZATHEMES_BLOG_CATEGORY_IDENTIFIER` (`identifier`),
  FULLTEXT KEY `FTI_0E5A42C75595B5A4A5CC4FE14800BBC2` (`title`,`meta_keywords`,`meta_description`,`identifier`,`content`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Plazathemes Blog Category Table';

--
-- Dumping data for table `plazathemes_blog_category`
--

LOCK TABLES `plazathemes_blog_category` WRITE;
/*!40000 ALTER TABLE `plazathemes_blog_category` DISABLE KEYS */;
INSERT INTO `plazathemes_blog_category` VALUES ('1','Press Releases',NULL,NULL,'press-releases',NULL,NULL,'0',0,1);
/*!40000 ALTER TABLE `plazathemes_blog_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plazathemes_blog_category_store`
--

DROP TABLE IF EXISTS `plazathemes_blog_category_store`;
CREATE TABLE `plazathemes_blog_category_store` (
  `category_id` int(11) NOT NULL COMMENT 'Category ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  PRIMARY KEY (`category_id`,`store_id`),
  KEY `PLAZATHEMES_BLOG_CATEGORY_STORE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Plazathemes Blog Category To Store Linkage Table';

--
-- Dumping data for table `plazathemes_blog_category_store`
--

LOCK TABLES `plazathemes_blog_category_store` WRITE;
/*!40000 ALTER TABLE `plazathemes_blog_category_store` DISABLE KEYS */;
INSERT INTO `plazathemes_blog_category_store` VALUES ('1',0);
/*!40000 ALTER TABLE `plazathemes_blog_category_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plazathemes_blog_post`
--

DROP TABLE IF EXISTS `plazathemes_blog_post`;
CREATE TABLE `plazathemes_blog_post` (
  `post_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Post ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Post Title',
  `postby` varchar(255) DEFAULT NULL COMMENT 'Post By',
  `thumbnailimage` varchar(255) DEFAULT NULL COMMENT 'Thumbnail Image',
  `meta_keywords` text COMMENT 'Post Meta Keywords',
  `meta_description` text COMMENT 'Post Meta Description',
  `identifier` varchar(100) DEFAULT NULL COMMENT 'Post String Identifier',
  `content_heading` varchar(255) DEFAULT NULL COMMENT 'Post Content Heading',
  `short_content` text COMMENT 'Short Content',
  `content` mediumtext COMMENT 'Post Content',
  `creation_time` timestamp NULL DEFAULT NULL COMMENT 'Post Creation Time',
  `update_time` timestamp NULL DEFAULT NULL COMMENT 'Post Modification Time',
  `publish_time` timestamp NULL DEFAULT NULL COMMENT 'Post Publish Time',
  `is_active` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Is Post Active',
  PRIMARY KEY (`post_id`),
  KEY `PLAZATHEMES_BLOG_POST_IDENTIFIER` (`identifier`),
  FULLTEXT KEY `FTI_3A962F890DAF9E9D7B6277086623FD2B` (`title`,`meta_keywords`,`meta_description`,`identifier`,`content`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Plazathemes Blog Post Table';

--
-- Dumping data for table `plazathemes_blog_post`
--

LOCK TABLES `plazathemes_blog_post` WRITE;
/*!40000 ALTER TABLE `plazathemes_blog_post` DISABLE KEYS */;
INSERT INTO `plazathemes_blog_post` VALUES ('1','Hello world!',NULL,'Plazathemes/blog/images/b/l/blog1_1.jpg','magento 2 blog','Magento 2 blog default post.','hello-world','Hello world!','Welcome to plazathemes blog extension for Magento® 2. This is your first post. Edit or delete it, then start blogging!','<p>Welcome to <a title=\"plazathemes - solutions for Magento 2\" href=\"http://www.plazathemes.com/\" target=\"_blank\">plazathemes</a> blog extension for Magento&reg; 2. This is your first post. Edit or delete it, then start blogging!</p>','2017-04-16 10:57:52','2017-04-16 17:20:52','2017-04-16 00:00:00',1);
/*!40000 ALTER TABLE `plazathemes_blog_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plazathemes_blog_post_category`
--

DROP TABLE IF EXISTS `plazathemes_blog_post_category`;
CREATE TABLE `plazathemes_blog_post_category` (
  `post_id` int(11) NOT NULL COMMENT 'Post ID',
  `category_id` int(11) NOT NULL COMMENT 'Category ID',
  PRIMARY KEY (`post_id`,`category_id`),
  KEY `PLAZATHEMES_BLOG_POST_CATEGORY_CATEGORY_ID` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Plazathemes Blog Post To Category Linkage Table';

--
-- Dumping data for table `plazathemes_blog_post_category`
--

LOCK TABLES `plazathemes_blog_post_category` WRITE;
/*!40000 ALTER TABLE `plazathemes_blog_post_category` DISABLE KEYS */;
INSERT INTO `plazathemes_blog_post_category` VALUES ('1','1');
/*!40000 ALTER TABLE `plazathemes_blog_post_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plazathemes_blog_post_relatedpost`
--

DROP TABLE IF EXISTS `plazathemes_blog_post_relatedpost`;
CREATE TABLE `plazathemes_blog_post_relatedpost` (
  `post_id` int(11) NOT NULL COMMENT 'Post ID',
  `related_id` int(11) NOT NULL COMMENT 'Related Post ID',
  PRIMARY KEY (`post_id`,`related_id`),
  KEY `PLAZATHEMES_BLOG_POST_RELATEDPRODUCT_RELATED_ID` (`related_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Plazathemes Blog Post To Post Linkage Table';

--
-- Table structure for table `plazathemes_blog_post_relatedproduct`
--

DROP TABLE IF EXISTS `plazathemes_blog_post_relatedproduct`;
CREATE TABLE `plazathemes_blog_post_relatedproduct` (
  `post_id` int(11) NOT NULL COMMENT 'Post ID',
  `related_id` int(10) unsigned NOT NULL COMMENT 'Related Product ID',
  PRIMARY KEY (`post_id`,`related_id`),
  KEY `PLAZATHEMES_BLOG_POST_RELATEDPRODUCT_RELATED_ID` (`related_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Plazathemes Blog Post To Product Linkage Table';

--
-- Table structure for table `plazathemes_blog_post_store`
--

DROP TABLE IF EXISTS `plazathemes_blog_post_store`;
CREATE TABLE `plazathemes_blog_post_store` (
  `post_id` int(11) NOT NULL COMMENT 'Post ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  PRIMARY KEY (`post_id`,`store_id`),
  KEY `PLAZATHEMES_BLOG_POST_STORE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Plazathemes Blog Post To Store Linkage Table';

--
-- Dumping data for table `plazathemes_blog_post_store`
--

LOCK TABLES `plazathemes_blog_post_store` WRITE;
/*!40000 ALTER TABLE `plazathemes_blog_post_store` DISABLE KEYS */;
INSERT INTO `plazathemes_blog_post_store` VALUES ('1',0);
/*!40000 ALTER TABLE `plazathemes_blog_post_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_alert_price`
--

DROP TABLE IF EXISTS `product_alert_price`;
CREATE TABLE `product_alert_price` (
  `alert_price_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Product alert price id',
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer id',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product id',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price amount',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website id',
  `add_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Product alert add date',
  `last_send_date` timestamp NULL DEFAULT NULL COMMENT 'Product alert last send date',
  `send_count` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Product alert send count',
  `status` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Product alert status',
  PRIMARY KEY (`alert_price_id`),
  KEY `PRODUCT_ALERT_PRICE_CUSTOMER_ID` (`customer_id`),
  KEY `PRODUCT_ALERT_PRICE_PRODUCT_ID` (`product_id`),
  KEY `PRODUCT_ALERT_PRICE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Product Alert Price';

--
-- Table structure for table `product_alert_stock`
--

DROP TABLE IF EXISTS `product_alert_stock`;
CREATE TABLE `product_alert_stock` (
  `alert_stock_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Product alert stock id',
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer id',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product id',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website id',
  `add_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Product alert add date',
  `send_date` timestamp NULL DEFAULT NULL COMMENT 'Product alert send date',
  `send_count` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Send Count',
  `status` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Product alert status',
  PRIMARY KEY (`alert_stock_id`),
  KEY `PRODUCT_ALERT_STOCK_CUSTOMER_ID` (`customer_id`),
  KEY `PRODUCT_ALERT_STOCK_PRODUCT_ID` (`product_id`),
  KEY `PRODUCT_ALERT_STOCK_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Product Alert Stock';

--
-- Table structure for table `pt_bannerslider`
--

DROP TABLE IF EXISTS `pt_bannerslider`;
CREATE TABLE `pt_bannerslider` (
  `banner_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Banner ID',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Banner name',
  `store_id` varchar(255) NOT NULL DEFAULT '' COMMENT 'Store Id',
  `status` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Banner status',
  `click_url` varchar(255) DEFAULT '' COMMENT 'Banner click url',
  `image` varchar(255) DEFAULT NULL COMMENT 'Banner image',
  `image_alt` varchar(255) DEFAULT NULL COMMENT 'Banner image alt',
  `title1` varchar(255) DEFAULT NULL COMMENT 'Title 1',
  `title2` varchar(255) DEFAULT NULL COMMENT 'Title 2',
  `description` varchar(255) DEFAULT NULL COMMENT 'Description',
  `order` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Order',
  PRIMARY KEY (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='pt_bannerslider';

--
-- Table structure for table `pt_brandslider`
--

DROP TABLE IF EXISTS `pt_brandslider`;
CREATE TABLE `pt_brandslider` (
  `brand_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Brand ID',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT 'Title',
  `store_id` varchar(255) NOT NULL DEFAULT '' COMMENT 'Store Id',
  `status` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Brand status',
  `link` varchar(255) DEFAULT '' COMMENT 'Link',
  `image` varchar(255) DEFAULT NULL COMMENT 'Brand image',
  `description` varchar(255) DEFAULT NULL COMMENT 'Description',
  `order` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Order',
  PRIMARY KEY (`brand_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='pt_brandslider';

--
-- Table structure for table `quote`
--

DROP TABLE IF EXISTS `quote`;
CREATE TABLE `quote` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `converted_at` timestamp NULL DEFAULT NULL COMMENT 'Converted At',
  `is_active` smallint(5) unsigned DEFAULT '1' COMMENT 'Is Active',
  `is_virtual` smallint(5) unsigned DEFAULT '0' COMMENT 'Is Virtual',
  `is_multi_shipping` smallint(5) unsigned DEFAULT '0' COMMENT 'Is Multi Shipping',
  `items_count` int(10) unsigned DEFAULT '0' COMMENT 'Items Count',
  `items_qty` decimal(12,4) DEFAULT '0.0000' COMMENT 'Items Qty',
  `orig_order_id` int(10) unsigned DEFAULT '0' COMMENT 'Orig Order Id',
  `store_to_base_rate` decimal(12,4) DEFAULT '0.0000' COMMENT 'Store To Base Rate',
  `store_to_quote_rate` decimal(12,4) DEFAULT '0.0000' COMMENT 'Store To Quote Rate',
  `base_currency_code` varchar(255) DEFAULT NULL COMMENT 'Base Currency Code',
  `store_currency_code` varchar(255) DEFAULT NULL COMMENT 'Store Currency Code',
  `quote_currency_code` varchar(255) DEFAULT NULL COMMENT 'Quote Currency Code',
  `grand_total` decimal(12,4) DEFAULT '0.0000' COMMENT 'Grand Total',
  `base_grand_total` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Grand Total',
  `checkout_method` varchar(255) DEFAULT NULL COMMENT 'Checkout Method',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Id',
  `customer_tax_class_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Tax Class Id',
  `customer_group_id` int(10) unsigned DEFAULT '0' COMMENT 'Customer Group Id',
  `customer_email` varchar(255) DEFAULT NULL COMMENT 'Customer Email',
  `customer_prefix` varchar(40) DEFAULT NULL COMMENT 'Customer Prefix',
  `customer_firstname` varchar(255) DEFAULT NULL COMMENT 'Customer Firstname',
  `customer_middlename` varchar(40) DEFAULT NULL COMMENT 'Customer Middlename',
  `customer_lastname` varchar(255) DEFAULT NULL COMMENT 'Customer Lastname',
  `customer_suffix` varchar(40) DEFAULT NULL COMMENT 'Customer Suffix',
  `customer_dob` datetime DEFAULT NULL COMMENT 'Customer Dob',
  `customer_note` varchar(255) DEFAULT NULL COMMENT 'Customer Note',
  `customer_note_notify` smallint(5) unsigned DEFAULT '1' COMMENT 'Customer Note Notify',
  `customer_is_guest` smallint(5) unsigned DEFAULT '0' COMMENT 'Customer Is Guest',
  `remote_ip` varchar(32) DEFAULT NULL COMMENT 'Remote Ip',
  `applied_rule_ids` varchar(255) DEFAULT NULL COMMENT 'Applied Rule Ids',
  `reserved_order_id` varchar(64) DEFAULT NULL COMMENT 'Reserved Order Id',
  `password_hash` varchar(255) DEFAULT NULL COMMENT 'Password Hash',
  `coupon_code` varchar(255) DEFAULT NULL COMMENT 'Coupon Code',
  `global_currency_code` varchar(255) DEFAULT NULL COMMENT 'Global Currency Code',
  `base_to_global_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Global Rate',
  `base_to_quote_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Quote Rate',
  `customer_taxvat` varchar(255) DEFAULT NULL COMMENT 'Customer Taxvat',
  `customer_gender` varchar(255) DEFAULT NULL COMMENT 'Customer Gender',
  `subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal',
  `base_subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal',
  `subtotal_with_discount` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal With Discount',
  `base_subtotal_with_discount` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal With Discount',
  `is_changed` int(10) unsigned DEFAULT NULL COMMENT 'Is Changed',
  `trigger_recollect` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Trigger Recollect',
  `ext_shipping_info` text COMMENT 'Ext Shipping Info',
  `is_persistent` smallint(5) unsigned DEFAULT '0' COMMENT 'Is Quote Persistent',
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message Id',
  PRIMARY KEY (`entity_id`),
  KEY `QUOTE_CUSTOMER_ID_STORE_ID_IS_ACTIVE` (`customer_id`,`store_id`,`is_active`),
  KEY `QUOTE_STORE_ID` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote';

--
-- Dumping data for table `quote`
--

LOCK TABLES `quote` WRITE;
/*!40000 ALTER TABLE `quote` DISABLE KEYS */;
INSERT INTO `quote` VALUES ('1',1,'2017-04-13 07:53:56','0000-00-00 00:00:00',NULL,1,0,0,'1','1.0000','0','0.0000','0.0000','AED','AED','AED','5400.0000','5400.0000',NULL,NULL,'3','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'::1',NULL,NULL,NULL,NULL,'AED','1.0000','1.0000',NULL,NULL,'5400.0000','5400.0000','5400.0000','5400.0000','1',0,NULL,0,NULL),('2',1,'2017-04-13 07:56:10','2017-04-13 07:57:28',NULL,0,0,0,'1','1.0000','0','0.0000','0.0000','AED','AED','AED','5405.0000','5405.0000','guest',NULL,'3','0','markttimbol@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,'127.0.0.1',NULL,'000000001',NULL,NULL,'AED','1.0000','1.0000',NULL,NULL,'5400.0000','5400.0000','5400.0000','5400.0000','1',0,NULL,0,NULL),('3',1,'2017-04-13 08:34:13','2017-04-13 09:32:39',NULL,1,0,0,'3','7.0000','0','0.0000','0.0000','AED','AED','AED','27700.0000','27700.0000',NULL,NULL,'3','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'127.0.0.1',NULL,NULL,NULL,NULL,'AED','1.0000','1.0000',NULL,NULL,'27700.0000','27700.0000','27700.0000','27700.0000','1',0,NULL,0,NULL),('4',1,'2017-04-13 14:57:08','0000-00-00 00:00:00',NULL,1,0,0,'1','1.0000','0','0.0000','0.0000','AED','AED','AED','5400.0000','5400.0000',NULL,NULL,'3','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'127.0.0.1',NULL,NULL,NULL,NULL,'AED','1.0000','1.0000',NULL,NULL,'5400.0000','5400.0000','5400.0000','5400.0000','1',0,NULL,0,NULL),('5',1,'2017-04-16 12:29:00','2017-04-16 12:42:13',NULL,0,0,0,'1','1.0000','0','0.0000','0.0000','AED','AED','AED','355.0000','355.0000',NULL,'2','3','1','saber@example.com',NULL,'Saber',NULL,'Belgrith',NULL,NULL,NULL,1,0,'127.0.0.1',NULL,'000000002',NULL,NULL,'AED','1.0000','1.0000',NULL,NULL,'350.0000','350.0000','350.0000','350.0000','1',0,NULL,0,NULL),('6',1,'2017-04-16 13:24:26','0000-00-00 00:00:00',NULL,1,0,0,'1','3.0000','0','0.0000','0.0000','AED','AED','AED','1050.0000','1050.0000',NULL,'2','3','1','saber@example.com',NULL,'Saber',NULL,'Belgrith',NULL,NULL,NULL,1,0,'127.0.0.1',NULL,NULL,NULL,NULL,'AED','1.0000','1.0000',NULL,NULL,'1050.0000','1050.0000','1050.0000','1050.0000','1',0,NULL,0,NULL),('7',1,'2017-04-16 14:51:12','0000-00-00 00:00:00',NULL,1,0,0,'1','1.0000','0','0.0000','0.0000','AED','AED','AED','350.0000','350.0000',NULL,NULL,'3','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'127.0.0.1',NULL,NULL,NULL,NULL,'AED','1.0000','1.0000',NULL,NULL,'350.0000','350.0000','350.0000','350.0000','1',0,NULL,0,NULL),('8',1,'2017-04-16 15:29:30','2017-04-16 15:29:30',NULL,0,0,0,'0','0.0000','0','0.0000','0.0000','AED','AED','AED','0.0000','0.0000',NULL,'2',NULL,'1','saber@example.com',NULL,'Saber',NULL,'Belgrith',NULL,NULL,NULL,1,0,NULL,NULL,NULL,NULL,NULL,'AED','1.0000','1.0000',NULL,NULL,'0.0000','0.0000','0.0000','0.0000','1',0,NULL,0,NULL),('9',1,'2017-04-16 15:30:39','2017-04-16 16:14:46',NULL,1,0,0,'2','5.0000','0','0.0000','0.0000','AED','AED','AED','1750.0000','1750.0000',NULL,NULL,'3','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'127.0.0.1',NULL,NULL,NULL,NULL,'AED','1.0000','1.0000',NULL,NULL,'1750.0000','1750.0000','1750.0000','1750.0000','1',0,NULL,0,NULL),('10',1,'2017-04-17 10:34:02','0000-00-00 00:00:00',NULL,1,0,0,'1','1.0000','0','0.0000','0.0000','AED','AED','AED','349.0000','349.0000',NULL,NULL,'3','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'127.0.0.1',NULL,NULL,NULL,NULL,'AED','1.0000','1.0000',NULL,NULL,'349.0000','349.0000','349.0000','349.0000','1',0,NULL,0,NULL),('11',1,'2017-04-17 13:22:56','2017-04-17 13:24:48',NULL,0,0,0,'1','1.0000','0','0.0000','0.0000','AED','AED','AED','354.0000','354.0000','guest',NULL,'3','0','john@example.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,'127.0.0.1',NULL,'000000003',NULL,NULL,'AED','1.0000','1.0000',NULL,NULL,'349.0000','349.0000','349.0000','349.0000','1',0,NULL,0,NULL),('12',1,'2017-04-17 13:30:11','2017-04-17 13:33:20',NULL,0,0,0,'1','1.0000','0','0.0000','0.0000','AED','AED','AED','354.0000','354.0000','guest',NULL,'3','0','joanna@turla.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,'127.0.0.1',NULL,'000000004',NULL,NULL,'AED','1.0000','1.0000',NULL,NULL,'349.0000','349.0000','349.0000','349.0000','1',0,NULL,0,NULL),('13',1,'2017-04-17 13:42:11','2017-04-17 13:44:19',NULL,0,0,0,'1','1.0000','0','0.0000','0.0000','AED','AED','AED','354.0000','354.0000','guest',NULL,'3','0','jomerie@turla.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,'127.0.0.1',NULL,'000000005',NULL,NULL,'AED','1.0000','1.0000',NULL,NULL,'349.0000','349.0000','349.0000','349.0000','1',0,NULL,0,NULL),('14',1,'2017-04-17 18:06:26','0000-00-00 00:00:00',NULL,1,0,0,'1','1.0000','0','0.0000','0.0000','AED','AED','AED','349.0000','349.0000',NULL,NULL,'3','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'127.0.0.1',NULL,NULL,NULL,NULL,'AED','1.0000','1.0000',NULL,NULL,'349.0000','349.0000','349.0000','349.0000','1',0,NULL,0,NULL),('15',2,'2017-04-18 10:52:38','0000-00-00 00:00:00',NULL,1,0,0,'1','1.0000','0','0.0000','0.0000','AED','AED','AED','350.0000','350.0000',NULL,NULL,'3','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'127.0.0.1',NULL,NULL,NULL,NULL,'AED','1.0000','1.0000',NULL,NULL,'350.0000','350.0000','350.0000','350.0000','1',0,NULL,0,NULL),('16',2,'2017-04-18 13:06:23','0000-00-00 00:00:00',NULL,1,0,0,'1','1.0000','0','0.0000','0.0000','AED','AED','AED','350.0000','350.0000',NULL,NULL,'3','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'127.0.0.1',NULL,NULL,NULL,NULL,'AED','1.0000','1.0000',NULL,NULL,'350.0000','350.0000','350.0000','350.0000','1',0,NULL,0,NULL),('17',2,'2017-04-20 07:41:39','2017-04-20 08:37:41',NULL,0,0,0,'2','2.0000','0','0.0000','0.0000','AED','AED','AED','710.0000','710.0000','guest',NULL,'3','0','ikay@example.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,'127.0.0.1',NULL,'000000006',NULL,NULL,'AED','1.0000','1.0000',NULL,NULL,'700.0000','700.0000','700.0000','700.0000','1',0,NULL,0,NULL);
/*!40000 ALTER TABLE `quote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quote_address`
--

DROP TABLE IF EXISTS `quote_address`;
CREATE TABLE `quote_address` (
  `address_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Address Id',
  `quote_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quote Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Id',
  `save_in_address_book` smallint(6) DEFAULT '0' COMMENT 'Save In Address Book',
  `customer_address_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Address Id',
  `address_type` varchar(10) DEFAULT NULL COMMENT 'Address Type',
  `email` varchar(255) DEFAULT NULL COMMENT 'Email',
  `prefix` varchar(40) DEFAULT NULL COMMENT 'Prefix',
  `firstname` varchar(20) DEFAULT NULL COMMENT 'Firstname',
  `middlename` varchar(20) DEFAULT NULL COMMENT 'Middlename',
  `lastname` varchar(20) DEFAULT NULL COMMENT 'Lastname',
  `suffix` varchar(40) DEFAULT NULL COMMENT 'Suffix',
  `company` varchar(255) DEFAULT NULL COMMENT 'Company',
  `street` varchar(255) DEFAULT NULL COMMENT 'Street',
  `city` varchar(40) DEFAULT NULL COMMENT 'City',
  `region` varchar(40) DEFAULT NULL COMMENT 'Region',
  `region_id` int(10) unsigned DEFAULT NULL COMMENT 'Region Id',
  `postcode` varchar(20) DEFAULT NULL COMMENT 'Postcode',
  `country_id` varchar(30) DEFAULT NULL COMMENT 'Country Id',
  `telephone` varchar(20) DEFAULT NULL COMMENT 'Phone Number',
  `fax` varchar(20) DEFAULT NULL COMMENT 'Fax',
  `same_as_billing` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Same As Billing',
  `collect_shipping_rates` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Collect Shipping Rates',
  `shipping_method` varchar(40) DEFAULT NULL COMMENT 'Shipping Method',
  `shipping_description` varchar(255) DEFAULT NULL COMMENT 'Shipping Description',
  `weight` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Weight',
  `subtotal` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal',
  `base_subtotal` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Subtotal',
  `subtotal_with_discount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal With Discount',
  `base_subtotal_with_discount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Subtotal With Discount',
  `tax_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Tax Amount',
  `base_tax_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Tax Amount',
  `shipping_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Shipping Amount',
  `base_shipping_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Shipping Amount',
  `shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Tax Amount',
  `base_shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Tax Amount',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `base_discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Discount Amount',
  `grand_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Grand Total',
  `base_grand_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Grand Total',
  `customer_notes` text COMMENT 'Customer Notes',
  `applied_taxes` text COMMENT 'Applied Taxes',
  `discount_description` varchar(255) DEFAULT NULL COMMENT 'Discount Description',
  `shipping_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Discount Amount',
  `base_shipping_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Discount Amount',
  `subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Incl Tax',
  `base_subtotal_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Total Incl Tax',
  `discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Amount',
  `base_discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Amount',
  `shipping_discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Discount Tax Compensation Amount',
  `base_shipping_discount_tax_compensation_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Discount Tax Compensation Amount',
  `shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Incl Tax',
  `base_shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Incl Tax',
  `free_shipping` smallint(6) DEFAULT NULL,
  `vat_id` text COMMENT 'Vat Id',
  `vat_is_valid` smallint(6) DEFAULT NULL COMMENT 'Vat Is Valid',
  `vat_request_id` text COMMENT 'Vat Request Id',
  `vat_request_date` text COMMENT 'Vat Request Date',
  `vat_request_success` smallint(6) DEFAULT NULL COMMENT 'Vat Request Success',
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message Id',
  PRIMARY KEY (`address_id`),
  KEY `QUOTE_ADDRESS_QUOTE_ID` (`quote_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Address';

--
-- Dumping data for table `quote_address`
--

LOCK TABLES `quote_address` WRITE;
/*!40000 ALTER TABLE `quote_address` DISABLE KEYS */;
INSERT INTO `quote_address` VALUES ('1','1','2017-04-13 07:53:56','0000-00-00 00:00:00',NULL,0,NULL,'billing',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,'0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000',NULL,NULL,'0.0000','0.0000','0.0000','0.0000',NULL,'N;',NULL,NULL,NULL,'0.0000',NULL,'0.0000','0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('2','1','2017-04-13 07:53:56','0000-00-00 00:00:00',NULL,0,NULL,'shipping',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,NULL,'1.0000','5400.0000','5400.0000','5400.0000','5400.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','5400.0000','5400.0000',NULL,'a:0:{}',NULL,'0.0000','0.0000','5400.0000','5400.0000','0.0000','0.0000','0.0000',NULL,'0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('4','2','2017-04-13 07:56:11','2017-04-13 07:57:24',NULL,0,NULL,'shipping','markttimbol@gmail.com',NULL,'Mark',NULL,'Timbol',NULL,'Belpro','Dubai','Dubai','Dubai',NULL,'00000','AE','+971 56 820 7189',NULL,0,0,'flatrate_flatrate','Flat Rate - Fixed','1.0000','5400.0000','5400.0000','5400.0000','5400.0000','0.0000','0.0000','5.0000','5.0000','0.0000','0.0000','0.0000','0.0000','5405.0000','5405.0000',NULL,'a:0:{}',NULL,'0.0000','0.0000','5400.0000','5400.0000','0.0000','0.0000','0.0000',NULL,'5.0000','5.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('5','2','2017-04-13 07:57:24','0000-00-00 00:00:00',NULL,0,NULL,'billing','markttimbol@gmail.com',NULL,'Mark',NULL,'Timbol',NULL,'Belpro','Dubai','Dubai','Dubai',NULL,'00000','AE','+971 56 820 7189',NULL,0,0,NULL,NULL,'0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000',NULL,NULL,'0.0000','0.0000','0.0000','0.0000',NULL,'N;',NULL,NULL,NULL,'0.0000',NULL,'0.0000','0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('6','3','2017-04-13 08:34:13','0000-00-00 00:00:00',NULL,0,NULL,'billing',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,'0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000',NULL,NULL,'0.0000','0.0000','0.0000','0.0000',NULL,'N;',NULL,NULL,NULL,'0.0000',NULL,'0.0000','0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('7','3','2017-04-13 08:34:13','0000-00-00 00:00:00',NULL,0,NULL,'shipping',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL,'7.0000','27700.0000','27700.0000','27700.0000','27700.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','27700.0000','27700.0000',NULL,'a:0:{}',NULL,'0.0000','0.0000','27700.0000','27700.0000','0.0000','0.0000','0.0000',NULL,'0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('8','4','2017-04-13 14:57:08','0000-00-00 00:00:00',NULL,0,NULL,'billing',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,'0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000',NULL,NULL,'0.0000','0.0000','0.0000','0.0000',NULL,'N;',NULL,NULL,NULL,'0.0000',NULL,'0.0000','0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('9','4','2017-04-13 14:57:08','0000-00-00 00:00:00',NULL,0,NULL,'shipping',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,NULL,'1.0000','5400.0000','5400.0000','5400.0000','5400.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','5400.0000','5400.0000',NULL,'a:0:{}',NULL,'0.0000','0.0000','5400.0000','5400.0000','0.0000','0.0000','0.0000',NULL,'0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('11','5','2017-04-16 12:29:00','2017-04-16 12:42:11','2',1,'3','shipping','saber@example.com',NULL,'Saber',NULL,'Belgrith',NULL,NULL,'708 Al Rigga\nDeira','Dubai','Dubai',NULL,'00000','AE','+971 56 820 7189',NULL,0,0,'flatrate_flatrate','Flat Rate - Fixed','1.0000','350.0000','350.0000','350.0000','350.0000','0.0000','0.0000','5.0000','5.0000','0.0000','0.0000','0.0000','0.0000','355.0000','355.0000',NULL,'a:0:{}',NULL,'0.0000','0.0000','350.0000','350.0000','0.0000','0.0000','0.0000',NULL,'5.0000','5.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('12','5','2017-04-16 12:42:11','0000-00-00 00:00:00','2',0,NULL,'billing','saber@example.com',NULL,'Saber',NULL,'Belgrith',NULL,NULL,'708 Al Rigga\nDeira','Dubai','Dubai',NULL,'00000','AE','+971 56 820 7189',NULL,0,0,NULL,NULL,'0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000',NULL,NULL,'0.0000','0.0000','0.0000','0.0000',NULL,'N;',NULL,NULL,NULL,'0.0000',NULL,'0.0000','0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('13','6','2017-04-16 13:24:26','0000-00-00 00:00:00','2',0,NULL,'billing','saber@example.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,'0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000',NULL,NULL,'0.0000','0.0000','0.0000','0.0000',NULL,'N;',NULL,NULL,NULL,'0.0000',NULL,'0.0000','0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('14','6','2017-04-16 13:24:26','0000-00-00 00:00:00','2',0,NULL,'shipping','saber@example.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,NULL,'3.0000','1050.0000','1050.0000','1050.0000','1050.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','1050.0000','1050.0000',NULL,'a:0:{}',NULL,'0.0000','0.0000','1050.0000','1050.0000','0.0000','0.0000','0.0000',NULL,'0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('15','7','2017-04-16 14:51:12','0000-00-00 00:00:00',NULL,0,NULL,'billing',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,'0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000',NULL,NULL,'0.0000','0.0000','0.0000','0.0000',NULL,'N;',NULL,NULL,NULL,'0.0000',NULL,'0.0000','0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('16','7','2017-04-16 14:51:12','0000-00-00 00:00:00',NULL,0,NULL,'shipping',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,NULL,'1.0000','350.0000','350.0000','350.0000','350.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','350.0000','350.0000',NULL,'a:0:{}',NULL,'0.0000','0.0000','350.0000','350.0000','0.0000','0.0000','0.0000',NULL,'0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('17','8','2017-04-16 15:29:30','2017-04-16 15:29:30','2',0,NULL,'billing','saber@example.com',NULL,'Saber',NULL,'Belgrith',NULL,NULL,'708 Al Rigga\nDeira','Dubai','Dubai',NULL,'00000','AE','+971 56 820 7189',NULL,0,0,NULL,NULL,'0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000',NULL,NULL,'0.0000','0.0000','0.0000','0.0000',NULL,'N;',NULL,NULL,NULL,'0.0000',NULL,'0.0000','0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('18','8','2017-04-16 15:29:30','2017-04-16 15:29:30','2',0,'3','shipping','saber@example.com',NULL,'Saber',NULL,'Belgrith',NULL,NULL,'708 Al Rigga\nDeira','Dubai','Dubai',NULL,'00000','AE','+971 56 820 7189',NULL,0,1,'flatrate_flatrate','Flat Rate - Fixed','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000',NULL,NULL,'0.0000','0.0000','0.0000','0.0000',NULL,'N;',NULL,NULL,NULL,'0.0000',NULL,'0.0000','0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('19','9','2017-04-16 15:30:39','0000-00-00 00:00:00',NULL,0,NULL,'billing',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,'0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000',NULL,NULL,'0.0000','0.0000','0.0000','0.0000',NULL,'N;',NULL,NULL,NULL,'0.0000',NULL,'0.0000','0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('20','9','2017-04-16 15:30:39','0000-00-00 00:00:00',NULL,0,NULL,'shipping',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL,'5.0000','1750.0000','1750.0000','1750.0000','1750.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','1750.0000','1750.0000',NULL,'a:0:{}',NULL,'0.0000','0.0000','1750.0000','1750.0000','0.0000','0.0000','0.0000',NULL,'0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('21','10','2017-04-17 10:34:02','0000-00-00 00:00:00',NULL,0,NULL,'billing',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,'0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000',NULL,NULL,'0.0000','0.0000','0.0000','0.0000',NULL,'N;',NULL,NULL,NULL,'0.0000',NULL,'0.0000','0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('22','10','2017-04-17 10:34:02','0000-00-00 00:00:00',NULL,0,NULL,'shipping',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,NULL,'1.0000','349.0000','349.0000','349.0000','349.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','349.0000','349.0000',NULL,'a:0:{}',NULL,'0.0000','0.0000','349.0000','349.0000','0.0000','0.0000','0.0000',NULL,'0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('24','11','2017-04-17 13:22:56','2017-04-17 13:24:45',NULL,0,NULL,'shipping','john@example.com',NULL,'John',NULL,'Doe',NULL,NULL,'Dubai\nDubai','Dubai','Dubai',NULL,'12345','AE','+971 56 820 7189',NULL,0,0,'flatrate_flatrate','Flat Rate - Fixed','1.0000','349.0000','349.0000','349.0000','349.0000','0.0000','0.0000','5.0000','5.0000','0.0000','0.0000','0.0000','0.0000','354.0000','354.0000',NULL,'a:0:{}',NULL,'0.0000','0.0000','349.0000','349.0000','0.0000','0.0000','0.0000',NULL,'5.0000','5.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('25','11','2017-04-17 13:24:45','0000-00-00 00:00:00',NULL,0,NULL,'billing','john@example.com',NULL,'John',NULL,'Doe',NULL,NULL,'Dubai\nDubai','Dubai','Dubai',NULL,'12345','AE','+971 56 820 7189',NULL,0,0,NULL,NULL,'0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000',NULL,NULL,'0.0000','0.0000','0.0000','0.0000',NULL,'N;',NULL,NULL,NULL,'0.0000',NULL,'0.0000','0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('27','12','2017-04-17 13:30:11','2017-04-17 13:33:12',NULL,0,NULL,'shipping','joanna@turla.com',NULL,'Joanna',NULL,'Turla',NULL,NULL,'Dubai\nDubai','Dubai',NULL,NULL,'123456','AE','+971 56 820 7189',NULL,0,0,'flatrate_flatrate','Flat Rate - Fixed','1.0000','349.0000','349.0000','349.0000','349.0000','0.0000','0.0000','5.0000','5.0000','0.0000','0.0000','0.0000','0.0000','354.0000','354.0000',NULL,'a:0:{}',NULL,'0.0000','0.0000','349.0000','349.0000','0.0000','0.0000','0.0000',NULL,'5.0000','5.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('28','12','2017-04-17 13:33:12','0000-00-00 00:00:00',NULL,0,NULL,'billing','joanna@turla.com',NULL,'Joanna',NULL,'Turla',NULL,NULL,'Dubai\nDubai','Dubai',NULL,NULL,'123456','AE','+971 56 820 7189',NULL,0,0,NULL,NULL,'0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000',NULL,NULL,'0.0000','0.0000','0.0000','0.0000',NULL,'N;',NULL,NULL,NULL,'0.0000',NULL,'0.0000','0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('30','13','2017-04-17 13:42:11','2017-04-17 13:44:10',NULL,0,NULL,'shipping','jomerie@turla.com',NULL,'Jomerie',NULL,'Turla',NULL,NULL,'Dubai\nDubai','Dubai',NULL,NULL,'123456','AE','+971 56 820 7189',NULL,0,0,'flatrate_flatrate','Flat Rate - Fixed','1.0000','349.0000','349.0000','349.0000','349.0000','0.0000','0.0000','5.0000','5.0000','0.0000','0.0000','0.0000','0.0000','354.0000','354.0000',NULL,'a:0:{}',NULL,'0.0000','0.0000','349.0000','349.0000','0.0000','0.0000','0.0000',NULL,'5.0000','5.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('31','13','2017-04-17 13:44:11','0000-00-00 00:00:00',NULL,0,NULL,'billing','jomerie@turla.com',NULL,'Jomerie',NULL,'Turla',NULL,NULL,'Dubai\nDubai','Dubai',NULL,NULL,'123456','AE','+971 56 820 7189',NULL,0,0,NULL,NULL,'0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000',NULL,NULL,'0.0000','0.0000','0.0000','0.0000',NULL,'N;',NULL,NULL,NULL,'0.0000',NULL,'0.0000','0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('32','14','2017-04-17 18:06:26','0000-00-00 00:00:00',NULL,0,NULL,'billing',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,'0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000',NULL,NULL,'0.0000','0.0000','0.0000','0.0000',NULL,'N;',NULL,NULL,NULL,'0.0000',NULL,'0.0000','0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('33','14','2017-04-17 18:06:26','0000-00-00 00:00:00',NULL,0,NULL,'shipping',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,NULL,'1.0000','349.0000','349.0000','349.0000','349.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','349.0000','349.0000',NULL,'a:0:{}',NULL,'0.0000','0.0000','349.0000','349.0000','0.0000','0.0000','0.0000',NULL,'0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('34','15','2017-04-18 10:52:38','0000-00-00 00:00:00',NULL,0,NULL,'billing',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,'0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000',NULL,NULL,'0.0000','0.0000','0.0000','0.0000',NULL,'N;',NULL,NULL,NULL,'0.0000',NULL,'0.0000','0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('35','15','2017-04-18 10:52:38','0000-00-00 00:00:00',NULL,0,NULL,'shipping',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,NULL,'1.0000','350.0000','350.0000','350.0000','350.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','350.0000','350.0000',NULL,'a:0:{}',NULL,'0.0000','0.0000','350.0000','350.0000','0.0000','0.0000','0.0000',NULL,'0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('36','16','2017-04-18 13:06:23','0000-00-00 00:00:00',NULL,0,NULL,'billing',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,'0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000',NULL,NULL,'0.0000','0.0000','0.0000','0.0000',NULL,'N;',NULL,NULL,NULL,'0.0000',NULL,'0.0000','0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('37','16','2017-04-18 13:06:23','0000-00-00 00:00:00',NULL,0,NULL,'shipping',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,NULL,'1.0000','350.0000','350.0000','350.0000','350.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','350.0000','350.0000',NULL,'a:0:{}',NULL,'0.0000','0.0000','350.0000','350.0000','0.0000','0.0000','0.0000',NULL,'0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('39','17','2017-04-20 07:41:39','2017-04-20 08:37:31',NULL,0,NULL,'shipping','ikay@example.com',NULL,'Nica',NULL,'Bolusan',NULL,NULL,'Dubai\nDubai','Dubai',NULL,NULL,'12345','AE','+971 56 820 7189',NULL,0,0,'flatrate_flatrate','Flat Rate - Fixed','2.0000','700.0000','700.0000','700.0000','700.0000','0.0000','0.0000','10.0000','10.0000','0.0000','0.0000','0.0000','0.0000','710.0000','710.0000',NULL,'a:0:{}',NULL,'0.0000','0.0000','700.0000','700.0000','0.0000','0.0000','0.0000',NULL,'10.0000','10.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('40','17','2017-04-20 08:37:32','0000-00-00 00:00:00',NULL,0,NULL,'billing','ikay@example.com',NULL,'Nica',NULL,'Bolusan',NULL,NULL,'Dubai\nDubai','Dubai',NULL,NULL,'12345','AE','+971 56 820 7189',NULL,0,0,NULL,NULL,'0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000',NULL,NULL,'0.0000','0.0000','0.0000','0.0000',NULL,'N;',NULL,NULL,NULL,'0.0000',NULL,'0.0000','0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `quote_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quote_address_item`
--

DROP TABLE IF EXISTS `quote_address_item`;
CREATE TABLE `quote_address_item` (
  `address_item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Address Item Id',
  `parent_item_id` int(10) unsigned DEFAULT NULL COMMENT 'Parent Item Id',
  `quote_address_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quote Address Id',
  `quote_item_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quote Item Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `applied_rule_ids` text COMMENT 'Applied Rule Ids',
  `additional_data` text COMMENT 'Additional Data',
  `weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Weight',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `discount_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Discount Amount',
  `tax_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Tax Amount',
  `row_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Row Total',
  `base_row_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Row Total',
  `row_total_with_discount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Row Total With Discount',
  `base_discount_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Discount Amount',
  `base_tax_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Tax Amount',
  `row_weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Row Weight',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `super_product_id` int(10) unsigned DEFAULT NULL COMMENT 'Super Product Id',
  `parent_product_id` int(10) unsigned DEFAULT NULL COMMENT 'Parent Product Id',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  `image` varchar(255) DEFAULT NULL COMMENT 'Image',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `description` text COMMENT 'Description',
  `is_qty_decimal` int(10) unsigned DEFAULT NULL COMMENT 'Is Qty Decimal',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `discount_percent` decimal(12,4) DEFAULT NULL COMMENT 'Discount Percent',
  `no_discount` int(10) unsigned DEFAULT NULL COMMENT 'No Discount',
  `tax_percent` decimal(12,4) DEFAULT NULL COMMENT 'Tax Percent',
  `base_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Price',
  `base_cost` decimal(12,4) DEFAULT NULL COMMENT 'Base Cost',
  `price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Price Incl Tax',
  `base_price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Price Incl Tax',
  `row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Row Total Incl Tax',
  `base_row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total Incl Tax',
  `discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Amount',
  `base_discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Amount',
  `free_shipping` int(11) DEFAULT NULL,
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message Id',
  PRIMARY KEY (`address_item_id`),
  KEY `QUOTE_ADDRESS_ITEM_QUOTE_ADDRESS_ID` (`quote_address_id`),
  KEY `QUOTE_ADDRESS_ITEM_PARENT_ITEM_ID` (`parent_item_id`),
  KEY `QUOTE_ADDRESS_ITEM_QUOTE_ITEM_ID` (`quote_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Address Item';

--
-- Table structure for table `quote_id_mask`
--

DROP TABLE IF EXISTS `quote_id_mask`;
CREATE TABLE `quote_id_mask` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `quote_id` int(10) unsigned NOT NULL COMMENT 'Quote ID',
  `masked_id` varchar(32) DEFAULT NULL COMMENT 'Masked ID',
  PRIMARY KEY (`entity_id`,`quote_id`),
  KEY `QUOTE_ID_MASK_QUOTE_ID` (`quote_id`),
  KEY `QUOTE_ID_MASK_MASKED_ID` (`masked_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='Quote ID and masked ID mapping';

--
-- Dumping data for table `quote_id_mask`
--

LOCK TABLES `quote_id_mask` WRITE;
/*!40000 ALTER TABLE `quote_id_mask` DISABLE KEYS */;
INSERT INTO `quote_id_mask` VALUES ('9','11','0c8f0232a20d7e7c9896b18d83f14f27'),('7','9','1d4e623fa1d199b65315dca7a3bb3268'),('8','10','2937bcaa9a4b9b6267300b502efb14e7'),('1','1','2a0b8c7618cb1df8b2160ae749ce951e'),('15','17','2f9f0fbb98d87faed7a26665ee9e0d4c'),('4','4','3939b896a104643a078dc68b898c902a'),('14','16','53016011fd333314a036c90bca0c2bae'),('11','13','5b521eb15b861e73dddb5d6411005f06'),('6','7','94f0dd328062b107d20cdaa92099773c'),('2','2','972f862299051552cf97ac283843a385'),('3','3','cccb495471dd5f4ddda90ea053d9fb39'),('5','5','ce833c36b392d0fc389ecdb77146a452'),('13','15','d0af9434e6a606cbaa41b7335e4dfb86'),('10','12','d1003eda26bbade4c0e770cbcb7db0af'),('12','14','d89957359bca7e1a6479b364f5587b28');
/*!40000 ALTER TABLE `quote_id_mask` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quote_item`
--

DROP TABLE IF EXISTS `quote_item`;
CREATE TABLE `quote_item` (
  `item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Item Id',
  `quote_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quote Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `parent_item_id` int(10) unsigned DEFAULT NULL COMMENT 'Parent Item Id',
  `is_virtual` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Virtual',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `description` text COMMENT 'Description',
  `applied_rule_ids` text COMMENT 'Applied Rule Ids',
  `additional_data` text COMMENT 'Additional Data',
  `is_qty_decimal` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Qty Decimal',
  `no_discount` smallint(5) unsigned DEFAULT '0' COMMENT 'No Discount',
  `weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Weight',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `base_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Price',
  `custom_price` decimal(12,4) DEFAULT NULL COMMENT 'Custom Price',
  `discount_percent` decimal(12,4) DEFAULT '0.0000' COMMENT 'Discount Percent',
  `discount_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Discount Amount',
  `base_discount_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Discount Amount',
  `tax_percent` decimal(12,4) DEFAULT '0.0000' COMMENT 'Tax Percent',
  `tax_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Tax Amount',
  `base_tax_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Tax Amount',
  `row_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Row Total',
  `base_row_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Row Total',
  `row_total_with_discount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Row Total With Discount',
  `row_weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Row Weight',
  `product_type` varchar(255) DEFAULT NULL COMMENT 'Product Type',
  `base_tax_before_discount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Before Discount',
  `tax_before_discount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Before Discount',
  `original_custom_price` decimal(12,4) DEFAULT NULL COMMENT 'Original Custom Price',
  `redirect_url` varchar(255) DEFAULT NULL COMMENT 'Redirect Url',
  `base_cost` decimal(12,4) DEFAULT NULL COMMENT 'Base Cost',
  `price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Price Incl Tax',
  `base_price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Price Incl Tax',
  `row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Row Total Incl Tax',
  `base_row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total Incl Tax',
  `discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Amount',
  `base_discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Amount',
  `free_shipping` smallint(6) DEFAULT NULL,
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message Id',
  `weee_tax_applied` text COMMENT 'Weee Tax Applied',
  `weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Amount',
  `weee_tax_applied_row_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Row Amount',
  `weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Disposition',
  `weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Row Disposition',
  `base_weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Amount',
  `base_weee_tax_applied_row_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Row Amnt',
  `base_weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Disposition',
  `base_weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Row Disposition',
  PRIMARY KEY (`item_id`),
  KEY `QUOTE_ITEM_PARENT_ITEM_ID` (`parent_item_id`),
  KEY `QUOTE_ITEM_PRODUCT_ID` (`product_id`),
  KEY `QUOTE_ITEM_QUOTE_ID` (`quote_id`),
  KEY `QUOTE_ITEM_STORE_ID` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Item';

--
-- Dumping data for table `quote_item`
--

LOCK TABLES `quote_item` WRITE;
/*!40000 ALTER TABLE `quote_item` DISABLE KEYS */;
INSERT INTO `quote_item` VALUES ('1','1','2017-04-13 07:53:56','0000-00-00 00:00:00','1',1,NULL,0,'Ref 315','114 orange roses in acrylic clear large rectangular box',NULL,NULL,NULL,0,0,'1.0000','1.0000','5400.0000','5400.0000',NULL,'0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','5400.0000','5400.0000','0.0000','1.0000','simple',NULL,NULL,NULL,NULL,NULL,'5400.0000','5400.0000','5400.0000','5400.0000','0.0000','0.0000',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('2','2','2017-04-13 07:56:11','0000-00-00 00:00:00','1',1,NULL,0,'Ref 315','114 orange roses in acrylic clear large rectangular box',NULL,NULL,NULL,0,0,'1.0000','1.0000','5400.0000','5400.0000',NULL,'0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','5400.0000','5400.0000','0.0000','1.0000','simple',NULL,NULL,NULL,NULL,NULL,'5400.0000','5400.0000','5400.0000','5400.0000','0.0000','0.0000',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('3','3','2017-04-13 08:34:13','2017-04-13 09:26:47','1',1,NULL,0,'Ref 315','114 orange roses in acrylic clear large rectangular box',NULL,NULL,NULL,0,0,'1.0000','5.0000','5400.0000','5400.0000',NULL,'0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','27000.0000','27000.0000','0.0000','5.0000','simple',NULL,NULL,NULL,NULL,NULL,'5400.0000','5400.0000','27000.0000','27000.0000','0.0000','0.0000',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('4','3','2017-04-13 09:26:57','0000-00-00 00:00:00','7',1,NULL,0,'Ref 134','Purple roses in mdf black small square box',NULL,NULL,NULL,0,0,'1.0000','1.0000','350.0000','350.0000',NULL,'0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','350.0000','350.0000','0.0000','1.0000','simple',NULL,NULL,NULL,NULL,NULL,'350.0000','350.0000','350.0000','350.0000','0.0000','0.0000',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('5','3','2017-04-13 09:32:39','0000-00-00 00:00:00','11',1,NULL,0,'Ref 130','Yellow roses in mdf black small square box',NULL,NULL,NULL,0,0,'1.0000','1.0000','350.0000','350.0000',NULL,'0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','350.0000','350.0000','0.0000','1.0000','simple',NULL,NULL,NULL,NULL,NULL,'350.0000','350.0000','350.0000','350.0000','0.0000','0.0000',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('6','4','2017-04-13 14:57:08','0000-00-00 00:00:00','1',1,NULL,0,'Ref 315','114 orange roses in acrylic clear large rectangular box',NULL,NULL,NULL,0,0,'1.0000','1.0000','5400.0000','5400.0000',NULL,'0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','5400.0000','5400.0000','0.0000','1.0000','simple',NULL,NULL,NULL,NULL,NULL,'5400.0000','5400.0000','5400.0000','5400.0000','0.0000','0.0000',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('10','5','2017-04-16 12:39:19','0000-00-00 00:00:00','11',1,NULL,0,'Ref 130','Yellow roses in mdf black small square box',NULL,NULL,NULL,0,0,'1.0000','1.0000','350.0000','350.0000',NULL,'0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','350.0000','350.0000','0.0000','1.0000','simple',NULL,NULL,NULL,NULL,NULL,'350.0000','350.0000','350.0000','350.0000','0.0000','0.0000',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('11','6','2017-04-16 13:24:26','0000-00-00 00:00:00','11',1,NULL,0,'Ref 130','Yellow roses in mdf black small square box',NULL,NULL,NULL,0,0,'1.0000','3.0000','350.0000','350.0000',NULL,'0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','1050.0000','1050.0000','0.0000','3.0000','simple',NULL,NULL,NULL,NULL,NULL,'350.0000','350.0000','1050.0000','1050.0000','0.0000','0.0000',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('12','7','2017-04-16 14:51:12','0000-00-00 00:00:00','11',1,NULL,0,'Ref 130','Yellow roses in mdf black small square box',NULL,NULL,NULL,0,0,'1.0000','1.0000','350.0000','350.0000',NULL,'0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','350.0000','350.0000','0.0000','1.0000','simple',NULL,NULL,NULL,NULL,NULL,'350.0000','350.0000','350.0000','350.0000','0.0000','0.0000',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('13','9','2017-04-16 15:30:39','2017-04-16 16:14:46','11',1,NULL,0,'Ref 130','Yellow roses in mdf black small square box',NULL,NULL,NULL,0,0,'1.0000','4.0000','350.0000','350.0000',NULL,'0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','1400.0000','1400.0000','0.0000','4.0000','simple',NULL,NULL,NULL,NULL,NULL,'350.0000','350.0000','1400.0000','1400.0000','0.0000','0.0000',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('14','9','2017-04-16 16:01:54','0000-00-00 00:00:00','7',1,NULL,0,'Ref 134','Purple roses in mdf black small square box',NULL,NULL,NULL,0,0,'1.0000','1.0000','350.0000','350.0000',NULL,'0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','350.0000','350.0000','0.0000','1.0000','simple',NULL,NULL,NULL,NULL,NULL,'350.0000','350.0000','350.0000','350.0000','0.0000','0.0000',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('15','10','2017-04-17 10:34:03','0000-00-00 00:00:00','11',1,NULL,0,'Ref 130','Yellow roses in mdf black small square box',NULL,NULL,NULL,0,0,'1.0000','1.0000','349.0000','349.0000',NULL,'0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','349.0000','349.0000','0.0000','1.0000','simple',NULL,NULL,NULL,NULL,NULL,'349.0000','349.0000','349.0000','349.0000','0.0000','0.0000',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('16','11','2017-04-17 13:22:56','0000-00-00 00:00:00','11',1,NULL,0,'Ref 130','Yellow roses in mdf black small square box',NULL,NULL,NULL,0,0,'1.0000','1.0000','349.0000','349.0000',NULL,'0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','349.0000','349.0000','0.0000','1.0000','simple',NULL,NULL,NULL,NULL,NULL,'349.0000','349.0000','349.0000','349.0000','0.0000','0.0000',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('17','12','2017-04-17 13:30:11','0000-00-00 00:00:00','11',1,NULL,0,'Ref 130','Yellow roses in mdf black small square box',NULL,NULL,NULL,0,0,'1.0000','1.0000','349.0000','349.0000',NULL,'0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','349.0000','349.0000','0.0000','1.0000','simple',NULL,NULL,NULL,NULL,NULL,'349.0000','349.0000','349.0000','349.0000','0.0000','0.0000',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('18','13','2017-04-17 13:42:11','0000-00-00 00:00:00','11',1,NULL,0,'Ref 130','Yellow roses in mdf black small square box',NULL,NULL,NULL,0,0,'1.0000','1.0000','349.0000','349.0000',NULL,'0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','349.0000','349.0000','0.0000','1.0000','simple',NULL,NULL,NULL,NULL,NULL,'349.0000','349.0000','349.0000','349.0000','0.0000','0.0000',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('19','14','2017-04-17 18:06:26','0000-00-00 00:00:00','11',1,NULL,0,'Ref 130','Yellow roses in mdf black small square box',NULL,NULL,NULL,0,0,'1.0000','1.0000','349.0000','349.0000',NULL,'0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','349.0000','349.0000','0.0000','1.0000','simple',NULL,NULL,NULL,NULL,NULL,'349.0000','349.0000','349.0000','349.0000','0.0000','0.0000',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('20','15','2017-04-18 10:52:38','0000-00-00 00:00:00','11',2,NULL,0,'Ref 130','Yellow roses in mdf black small square box',NULL,NULL,NULL,0,0,'1.0000','1.0000','350.0000','350.0000',NULL,'0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','350.0000','350.0000','0.0000','1.0000','simple',NULL,NULL,NULL,NULL,NULL,'350.0000','350.0000','350.0000','350.0000','0.0000','0.0000',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('21','16','2017-04-18 13:06:23','0000-00-00 00:00:00','11',2,NULL,0,'Ref 130','Yellow roses in mdf black small square box',NULL,NULL,NULL,0,0,'1.0000','1.0000','350.0000','350.0000',NULL,'0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','350.0000','350.0000','0.0000','1.0000','simple',NULL,NULL,NULL,NULL,NULL,'350.0000','350.0000','350.0000','350.0000','0.0000','0.0000',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('22','17','2017-04-20 07:41:39','0000-00-00 00:00:00','11',2,NULL,0,'Ref 130','Yellow roses in mdf black small square box',NULL,NULL,NULL,0,0,'1.0000','1.0000','350.0000','350.0000',NULL,'0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','350.0000','350.0000','0.0000','1.0000','simple',NULL,NULL,NULL,NULL,NULL,'350.0000','350.0000','350.0000','350.0000','0.0000','0.0000',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('23','17','2017-04-20 08:32:28','0000-00-00 00:00:00','3',2,NULL,0,'Ref 140','White roses in mdf black small square box',NULL,NULL,NULL,0,0,'1.0000','1.0000','350.0000','350.0000',NULL,'0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','350.0000','350.0000','0.0000','1.0000','simple',NULL,NULL,NULL,NULL,NULL,'350.0000','350.0000','350.0000','350.0000','0.0000','0.0000',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `quote_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quote_item_option`
--

DROP TABLE IF EXISTS `quote_item_option`;
CREATE TABLE `quote_item_option` (
  `option_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Id',
  `item_id` int(10) unsigned NOT NULL COMMENT 'Item Id',
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `value` text COMMENT 'Value',
  PRIMARY KEY (`option_id`),
  KEY `QUOTE_ITEM_OPTION_ITEM_ID` (`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Item Option';

--
-- Dumping data for table `quote_item_option`
--

LOCK TABLES `quote_item_option` WRITE;
/*!40000 ALTER TABLE `quote_item_option` DISABLE KEYS */;
INSERT INTO `quote_item_option` VALUES ('1','1','1','info_buyRequest','a:5:{s:4:\"uenc\";s:132:\"aHR0cDovL2xvY2FsaG9zdDo4ODg4L21haXNvbmRlc2ZsZXVycy8xMTQtb3JhbmdlLXJvc2VzLWluLWFjcnlsaWMtY2xlYXItbGFyZ2UtcmVjdGFuZ3VsYXItYm94Lmh0bWw,\";s:7:\"product\";s:1:\"1\";s:28:\"selected_configurable_option\";s:0:\"\";s:15:\"related_product\";s:0:\"\";s:3:\"qty\";s:1:\"1\";}'),('2','2','1','info_buyRequest','a:3:{s:4:\"uenc\";s:72:\"aHR0cDovLzEyNy4wLjAuMTo4ODg4L21haXNvbmRlc2ZsZXVycy9zaG9wLW9ubGluZS5odG1s\";s:7:\"product\";s:1:\"1\";s:3:\"qty\";d:1;}'),('3','3','1','info_buyRequest','a:5:{s:4:\"uenc\";s:132:\"aHR0cDovLzEyNy4wLjAuMTo4ODg4L21haXNvbmRlc2ZsZXVycy8xMTQtb3JhbmdlLXJvc2VzLWluLWFjcnlsaWMtY2xlYXItbGFyZ2UtcmVjdGFuZ3VsYXItYm94Lmh0bWw,\";s:7:\"product\";s:1:\"1\";s:28:\"selected_configurable_option\";s:0:\"\";s:15:\"related_product\";s:0:\"\";s:3:\"qty\";s:1:\"1\";}'),('4','4','7','info_buyRequest','a:5:{s:4:\"uenc\";s:116:\"aHR0cDovLzEyNy4wLjAuMTo4ODg4L21haXNvbmRlc2ZsZXVycy9wdXJwbGUtcm9zZXMtaW4tbWRmLWJsYWNrLXNtYWxsLXNxdWFyZS1ib3guaHRtbA,,\";s:7:\"product\";s:1:\"7\";s:28:\"selected_configurable_option\";s:0:\"\";s:15:\"related_product\";s:0:\"\";s:3:\"qty\";s:1:\"1\";}'),('5','5','11','info_buyRequest','a:5:{s:4:\"uenc\";s:116:\"aHR0cDovLzEyNy4wLjAuMTo4ODg4L21haXNvbmRlc2ZsZXVycy95ZWxsb3ctcm9zZXMtaW4tbWRmLWJsYWNrLXNtYWxsLXNxdWFyZS1ib3guaHRtbA,,\";s:7:\"product\";s:2:\"11\";s:28:\"selected_configurable_option\";s:0:\"\";s:15:\"related_product\";s:0:\"\";s:3:\"qty\";s:1:\"1\";}'),('6','6','1','info_buyRequest','a:3:{s:4:\"uenc\";s:72:\"aHR0cDovLzEyNy4wLjAuMTo4ODg4L21haXNvbmRlc2ZsZXVycy9zaG9wLW9ubGluZS5odG1s\";s:7:\"product\";s:1:\"1\";s:3:\"qty\";d:1;}'),('10','10','11','info_buyRequest','a:3:{s:4:\"uenc\";s:128:\"aHR0cDovLzEyNy4wLjAuMTo4ODg4L21haXNvbmRlc2ZsZXVycy9mcmVzaC1yb3Nlcy9mcmVzaC1mbG93ZXJzLWluLXNtYWxsLWJsYWNrLXNxdWFyZS1ib3guaHRtbA,,\";s:7:\"product\";s:2:\"11\";s:3:\"qty\";d:1;}'),('11','11','11','info_buyRequest','a:5:{s:4:\"uenc\";s:116:\"aHR0cDovLzEyNy4wLjAuMTo4ODg4L21haXNvbmRlc2ZsZXVycy95ZWxsb3ctcm9zZXMtaW4tbWRmLWJsYWNrLXNtYWxsLXNxdWFyZS1ib3guaHRtbA,,\";s:7:\"product\";s:2:\"11\";s:28:\"selected_configurable_option\";s:0:\"\";s:15:\"related_product\";s:0:\"\";s:3:\"qty\";s:1:\"3\";}'),('12','12','11','info_buyRequest','a:5:{s:4:\"uenc\";s:116:\"aHR0cDovLzEyNy4wLjAuMTo4ODg4L21haXNvbmRlc2ZsZXVycy95ZWxsb3ctcm9zZXMtaW4tbWRmLWJsYWNrLXNtYWxsLXNxdWFyZS1ib3guaHRtbA,,\";s:7:\"product\";s:2:\"11\";s:28:\"selected_configurable_option\";s:0:\"\";s:15:\"related_product\";s:0:\"\";s:3:\"qty\";s:1:\"1\";}'),('13','13','11','info_buyRequest','a:5:{s:4:\"uenc\";s:116:\"aHR0cDovLzEyNy4wLjAuMTo4ODg4L21haXNvbmRlc2ZsZXVycy95ZWxsb3ctcm9zZXMtaW4tbWRmLWJsYWNrLXNtYWxsLXNxdWFyZS1ib3guaHRtbA,,\";s:7:\"product\";s:2:\"11\";s:28:\"selected_configurable_option\";s:0:\"\";s:15:\"related_product\";s:0:\"\";s:3:\"qty\";s:1:\"1\";}'),('14','14','7','info_buyRequest','a:5:{s:4:\"uenc\";s:116:\"aHR0cDovLzEyNy4wLjAuMTo4ODg4L21haXNvbmRlc2ZsZXVycy9wdXJwbGUtcm9zZXMtaW4tbWRmLWJsYWNrLXNtYWxsLXNxdWFyZS1ib3guaHRtbA,,\";s:7:\"product\";s:1:\"7\";s:28:\"selected_configurable_option\";s:0:\"\";s:15:\"related_product\";s:0:\"\";s:3:\"qty\";s:1:\"1\";}'),('15','15','11','info_buyRequest','a:5:{s:4:\"uenc\";s:116:\"aHR0cDovLzEyNy4wLjAuMTo4ODg4L21haXNvbmRlc2ZsZXVycy95ZWxsb3ctcm9zZXMtaW4tbWRmLWJsYWNrLXNtYWxsLXNxdWFyZS1ib3guaHRtbA,,\";s:7:\"product\";s:2:\"11\";s:28:\"selected_configurable_option\";s:0:\"\";s:15:\"related_product\";s:0:\"\";s:3:\"qty\";s:1:\"1\";}'),('16','16','11','info_buyRequest','a:3:{s:4:\"uenc\";s:128:\"aHR0cDovLzEyNy4wLjAuMTo4ODg4L21haXNvbmRlc2ZsZXVycy9mcmVzaC1yb3Nlcy9mcmVzaC1mbG93ZXJzLWluLXNtYWxsLWJsYWNrLXNxdWFyZS1ib3guaHRtbA,,\";s:7:\"product\";s:2:\"11\";s:3:\"qty\";d:1;}'),('17','17','11','info_buyRequest','a:3:{s:4:\"uenc\";s:128:\"aHR0cDovLzEyNy4wLjAuMTo4ODg4L21haXNvbmRlc2ZsZXVycy9mcmVzaC1yb3Nlcy9mcmVzaC1mbG93ZXJzLWluLXNtYWxsLWJsYWNrLXNxdWFyZS1ib3guaHRtbA,,\";s:7:\"product\";s:2:\"11\";s:3:\"qty\";d:1;}'),('18','18','11','info_buyRequest','a:3:{s:4:\"uenc\";s:128:\"aHR0cDovLzEyNy4wLjAuMTo4ODg4L21haXNvbmRlc2ZsZXVycy9mcmVzaC1yb3Nlcy9mcmVzaC1mbG93ZXJzLWluLXNtYWxsLWJsYWNrLXNxdWFyZS1ib3guaHRtbA,,\";s:7:\"product\";s:2:\"11\";s:3:\"qty\";d:1;}'),('19','19','11','info_buyRequest','a:3:{s:4:\"uenc\";s:128:\"aHR0cDovLzEyNy4wLjAuMTo4ODg4L21haXNvbmRlc2ZsZXVycy9mcmVzaC1yb3Nlcy9mcmVzaC1mbG93ZXJzLWluLXNtYWxsLWJsYWNrLXNxdWFyZS1ib3guaHRtbA,,\";s:7:\"product\";s:2:\"11\";s:3:\"qty\";d:1;}'),('20','20','11','info_buyRequest','a:5:{s:4:\"uenc\";s:164:\"aHR0cDovLzEyNy4wLjAuMTo4ODg4L21haXNvbmRlc2ZsZXVycy9jYXRhbG9nL3Byb2R1Y3Qvdmlldy9pZC8xMS9zL3llbGxvdy1yb3Nlcy1pbi1tZGYtYmxhY2stc21hbGwtc3F1YXJlLWJveC9jYXRlZ29yeS82OS8,\";s:7:\"product\";s:2:\"11\";s:28:\"selected_configurable_option\";s:0:\"\";s:15:\"related_product\";s:0:\"\";s:3:\"qty\";s:1:\"1\";}'),('21','21','11','info_buyRequest','a:3:{s:4:\"uenc\";s:64:\"aHR0cDovLzEyNy4wLjAuMTo4ODg4L21haXNvbmRlc2ZsZXVycy9zaG9wLmh0bWw,\";s:7:\"product\";s:2:\"11\";s:3:\"qty\";d:1;}'),('22','22','11','info_buyRequest','a:3:{s:4:\"uenc\";s:112:\"aHR0cDovLzEyNy4wLjAuMTo4ODg4L21haXNvbmRlc2ZsZXVycy9jYXRhbG9nL2NhdGVnb3J5L3ZpZXcvcy9mcmVzaC1yb3Nlcy9pZC8zLz9wPTI,\";s:7:\"product\";s:2:\"11\";s:3:\"qty\";d:1;}'),('23','23','3','info_buyRequest','a:5:{s:4:\"uenc\";s:112:\"aHR0cDovLzEyNy4wLjAuMTo4ODg4L21haXNvbmRlc2ZsZXVycy93aGl0ZS1yb3Nlcy1pbi1tZGYtYmxhY2stc21hbGwtc3F1YXJlLWJveC5odG1s\";s:7:\"product\";s:1:\"3\";s:28:\"selected_configurable_option\";s:0:\"\";s:15:\"related_product\";s:0:\"\";s:3:\"qty\";s:1:\"1\";}');
/*!40000 ALTER TABLE `quote_item_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quote_payment`
--

DROP TABLE IF EXISTS `quote_payment`;
CREATE TABLE `quote_payment` (
  `payment_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Payment Id',
  `quote_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quote Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `method` varchar(255) DEFAULT NULL COMMENT 'Method',
  `cc_type` varchar(255) DEFAULT NULL COMMENT 'Cc Type',
  `cc_number_enc` varchar(255) DEFAULT NULL COMMENT 'Cc Number Enc',
  `cc_last_4` varchar(255) DEFAULT NULL COMMENT 'Cc Last 4',
  `cc_cid_enc` varchar(255) DEFAULT NULL COMMENT 'Cc Cid Enc',
  `cc_owner` varchar(255) DEFAULT NULL COMMENT 'Cc Owner',
  `cc_exp_month` varchar(255) DEFAULT NULL COMMENT 'Cc Exp Month',
  `cc_exp_year` smallint(5) unsigned DEFAULT '0' COMMENT 'Cc Exp Year',
  `cc_ss_owner` varchar(255) DEFAULT NULL COMMENT 'Cc Ss Owner',
  `cc_ss_start_month` smallint(5) unsigned DEFAULT '0' COMMENT 'Cc Ss Start Month',
  `cc_ss_start_year` smallint(5) unsigned DEFAULT '0' COMMENT 'Cc Ss Start Year',
  `po_number` varchar(255) DEFAULT NULL COMMENT 'Po Number',
  `additional_data` text COMMENT 'Additional Data',
  `cc_ss_issue` varchar(255) DEFAULT NULL COMMENT 'Cc Ss Issue',
  `additional_information` text COMMENT 'Additional Information',
  `paypal_payer_id` varchar(255) DEFAULT NULL COMMENT 'Paypal Payer Id',
  `paypal_payer_status` varchar(255) DEFAULT NULL COMMENT 'Paypal Payer Status',
  `paypal_correlation_id` varchar(255) DEFAULT NULL COMMENT 'Paypal Correlation Id',
  PRIMARY KEY (`payment_id`),
  KEY `QUOTE_PAYMENT_QUOTE_ID` (`quote_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Payment';

--
-- Dumping data for table `quote_payment`
--

LOCK TABLES `quote_payment` WRITE;
/*!40000 ALTER TABLE `quote_payment` DISABLE KEYS */;
INSERT INTO `quote_payment` VALUES ('1','2','2017-04-13 07:57:24','0000-00-00 00:00:00','checkmo',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,0,NULL,NULL,NULL,'N;',NULL,NULL,NULL),('2','5','2017-04-16 12:42:11','0000-00-00 00:00:00','checkmo',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,0,NULL,NULL,NULL,'N;',NULL,NULL,NULL),('3','8','2017-04-16 15:29:36','0000-00-00 00:00:00','free',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,0,NULL,NULL,NULL,'N;',NULL,NULL,NULL),('4','11','2017-04-17 13:24:45','0000-00-00 00:00:00','banktransfer',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,0,NULL,NULL,NULL,'N;',NULL,NULL,NULL),('5','12','2017-04-17 13:33:13','0000-00-00 00:00:00','braintree',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,0,NULL,NULL,NULL,'a:1:{s:20:\"payment_method_nonce\";s:36:\"1468e1e2-5452-006c-2b7b-6a713b608193\";}',NULL,NULL,NULL),('6','13','2017-04-17 13:44:11','0000-00-00 00:00:00','braintree',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,0,NULL,NULL,NULL,'a:1:{s:20:\"payment_method_nonce\";s:36:\"bfb0339f-9058-07fa-50cc-aba1f09fb0be\";}',NULL,NULL,NULL),('7','17','2017-04-20 08:37:32','0000-00-00 00:00:00','braintree',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,0,NULL,NULL,NULL,'a:1:{s:20:\"payment_method_nonce\";s:36:\"1e795353-216c-0b48-6438-907e31a240eb\";}',NULL,NULL,NULL);
/*!40000 ALTER TABLE `quote_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quote_shipping_rate`
--

DROP TABLE IF EXISTS `quote_shipping_rate`;
CREATE TABLE `quote_shipping_rate` (
  `rate_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rate Id',
  `address_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Address Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `carrier` varchar(255) DEFAULT NULL COMMENT 'Carrier',
  `carrier_title` varchar(255) DEFAULT NULL COMMENT 'Carrier Title',
  `code` varchar(255) DEFAULT NULL COMMENT 'Code',
  `method` varchar(255) DEFAULT NULL COMMENT 'Method',
  `method_description` text COMMENT 'Method Description',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `error_message` text COMMENT 'Error Message',
  `method_title` text COMMENT 'Method Title',
  PRIMARY KEY (`rate_id`),
  KEY `QUOTE_SHIPPING_RATE_ADDRESS_ID` (`address_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Shipping Rate';

--
-- Dumping data for table `quote_shipping_rate`
--

LOCK TABLES `quote_shipping_rate` WRITE;
/*!40000 ALTER TABLE `quote_shipping_rate` DISABLE KEYS */;
INSERT INTO `quote_shipping_rate` VALUES ('3','4','2017-04-13 07:57:24','0000-00-00 00:00:00','flatrate','Flat Rate','flatrate_flatrate','flatrate',NULL,'5.0000',NULL,'Fixed'),('6','11','2017-04-16 12:42:11','0000-00-00 00:00:00','flatrate','Flat Rate','flatrate_flatrate','flatrate',NULL,'5.0000',NULL,'Fixed'),('10','24','2017-04-17 13:24:45','0000-00-00 00:00:00','flatrate','Flat Rate','flatrate_flatrate','flatrate',NULL,'5.0000',NULL,'Fixed'),('13','27','2017-04-17 13:33:13','0000-00-00 00:00:00','flatrate','Flat Rate','flatrate_flatrate','flatrate',NULL,'5.0000',NULL,'Fixed'),('16','30','2017-04-17 13:44:11','0000-00-00 00:00:00','flatrate','Flat Rate','flatrate_flatrate','flatrate',NULL,'5.0000',NULL,'Fixed'),('19','39','2017-04-20 08:37:32','0000-00-00 00:00:00','flatrate','Flat Rate','flatrate_flatrate','flatrate',NULL,'10.0000',NULL,'Fixed');
/*!40000 ALTER TABLE `quote_shipping_rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rating`
--

DROP TABLE IF EXISTS `rating`;
CREATE TABLE `rating` (
  `rating_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rating Id',
  `entity_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `rating_code` varchar(64) NOT NULL COMMENT 'Rating Code',
  `position` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Position On Storefront',
  `is_active` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Rating is active.',
  PRIMARY KEY (`rating_id`),
  UNIQUE KEY `RATING_RATING_CODE` (`rating_code`),
  KEY `RATING_ENTITY_ID` (`entity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Ratings';

--
-- Dumping data for table `rating`
--

LOCK TABLES `rating` WRITE;
/*!40000 ALTER TABLE `rating` DISABLE KEYS */;
INSERT INTO `rating` VALUES (1,1,'Quality',0,1),(2,1,'Value',0,1),(3,1,'Price',0,1);
/*!40000 ALTER TABLE `rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rating_entity`
--

DROP TABLE IF EXISTS `rating_entity`;
CREATE TABLE `rating_entity` (
  `entity_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `entity_code` varchar(64) NOT NULL COMMENT 'Entity Code',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `RATING_ENTITY_ENTITY_CODE` (`entity_code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Rating entities';

--
-- Dumping data for table `rating_entity`
--

LOCK TABLES `rating_entity` WRITE;
/*!40000 ALTER TABLE `rating_entity` DISABLE KEYS */;
INSERT INTO `rating_entity` VALUES (1,'product'),(2,'product_review'),(3,'review');
/*!40000 ALTER TABLE `rating_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rating_option`
--

DROP TABLE IF EXISTS `rating_option`;
CREATE TABLE `rating_option` (
  `option_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rating Option Id',
  `rating_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Id',
  `code` varchar(32) NOT NULL COMMENT 'Rating Option Code',
  `value` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Option Value',
  `position` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Ration option position on Storefront',
  PRIMARY KEY (`option_id`),
  KEY `RATING_OPTION_RATING_ID` (`rating_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='Rating options';

--
-- Dumping data for table `rating_option`
--

LOCK TABLES `rating_option` WRITE;
/*!40000 ALTER TABLE `rating_option` DISABLE KEYS */;
INSERT INTO `rating_option` VALUES ('1',1,'1',1,1),('2',1,'2',2,2),('3',1,'3',3,3),('4',1,'4',4,4),('5',1,'5',5,5),('6',2,'1',1,1),('7',2,'2',2,2),('8',2,'3',3,3),('9',2,'4',4,4),('10',2,'5',5,5),('11',3,'1',1,1),('12',3,'2',2,2),('13',3,'3',3,3),('14',3,'4',4,4),('15',3,'5',5,5);
/*!40000 ALTER TABLE `rating_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rating_option_vote`
--

DROP TABLE IF EXISTS `rating_option_vote`;
CREATE TABLE `rating_option_vote` (
  `vote_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Vote id',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Vote option id',
  `remote_ip` varchar(16) NOT NULL COMMENT 'Customer IP',
  `remote_ip_long` bigint(20) NOT NULL DEFAULT '0' COMMENT 'Customer IP converted to long integer format',
  `customer_id` int(10) unsigned DEFAULT '0' COMMENT 'Customer Id',
  `entity_pk_value` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Product id',
  `rating_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating id',
  `review_id` bigint(20) unsigned DEFAULT NULL COMMENT 'Review id',
  `percent` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Percent amount',
  `value` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Vote option value',
  PRIMARY KEY (`vote_id`),
  KEY `RATING_OPTION_VOTE_OPTION_ID` (`option_id`),
  KEY `RATING_OPTION_VOTE_REVIEW_ID_REVIEW_REVIEW_ID` (`review_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Rating option values';

--
-- Table structure for table `rating_option_vote_aggregated`
--

DROP TABLE IF EXISTS `rating_option_vote_aggregated`;
CREATE TABLE `rating_option_vote_aggregated` (
  `primary_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Vote aggregation id',
  `rating_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating id',
  `entity_pk_value` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Product id',
  `vote_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Vote dty',
  `vote_value_sum` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'General vote sum',
  `percent` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Vote percent',
  `percent_approved` smallint(6) DEFAULT '0' COMMENT 'Vote percent approved by admin',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  PRIMARY KEY (`primary_id`),
  KEY `RATING_OPTION_VOTE_AGGREGATED_RATING_ID` (`rating_id`),
  KEY `RATING_OPTION_VOTE_AGGREGATED_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Rating vote aggregated';

--
-- Table structure for table `rating_store`
--

DROP TABLE IF EXISTS `rating_store`;
CREATE TABLE `rating_store` (
  `rating_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store id',
  PRIMARY KEY (`rating_id`,`store_id`),
  KEY `RATING_STORE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Rating Store';

--
-- Table structure for table `rating_title`
--

DROP TABLE IF EXISTS `rating_title`;
CREATE TABLE `rating_title` (
  `rating_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `value` varchar(255) NOT NULL COMMENT 'Rating Label',
  PRIMARY KEY (`rating_id`,`store_id`),
  KEY `RATING_TITLE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Rating Title';

--
-- Table structure for table `report_compared_product_index`
--

DROP TABLE IF EXISTS `report_compared_product_index`;
CREATE TABLE `report_compared_product_index` (
  `index_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Index Id',
  `visitor_id` int(10) unsigned DEFAULT NULL COMMENT 'Visitor Id',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Id',
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `added_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Added At',
  PRIMARY KEY (`index_id`),
  UNIQUE KEY `REPORT_COMPARED_PRODUCT_INDEX_VISITOR_ID_PRODUCT_ID` (`visitor_id`,`product_id`),
  UNIQUE KEY `REPORT_COMPARED_PRODUCT_INDEX_CUSTOMER_ID_PRODUCT_ID` (`customer_id`,`product_id`),
  KEY `REPORT_COMPARED_PRODUCT_INDEX_STORE_ID` (`store_id`),
  KEY `REPORT_COMPARED_PRODUCT_INDEX_ADDED_AT` (`added_at`),
  KEY `REPORT_COMPARED_PRODUCT_INDEX_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='Reports Compared Product Index Table';

--
-- Dumping data for table `report_compared_product_index`
--

LOCK TABLES `report_compared_product_index` WRITE;
/*!40000 ALTER TABLE `report_compared_product_index` DISABLE KEYS */;
INSERT INTO `report_compared_product_index` VALUES (1,'15',NULL,'11',NULL,'2017-04-13 09:32:46'),(2,'15',NULL,'1',NULL,'2017-04-13 09:33:57'),(3,'17',NULL,'8',NULL,'2017-04-13 15:02:46'),(4,'17',NULL,'9',NULL,'2017-04-13 15:02:52'),(5,'58',NULL,'11',NULL,'2017-04-18 13:29:10'),(6,'58',NULL,'3',NULL,'2017-04-18 13:29:29');
/*!40000 ALTER TABLE `report_compared_product_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report_event`
--

DROP TABLE IF EXISTS `report_event`;
CREATE TABLE `report_event` (
  `event_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Event Id',
  `logged_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Logged At',
  `event_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Event Type Id',
  `object_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Object Id',
  `subject_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Subject Id',
  `subtype` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Subtype',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  PRIMARY KEY (`event_id`),
  KEY `REPORT_EVENT_EVENT_TYPE_ID` (`event_type_id`),
  KEY `REPORT_EVENT_SUBJECT_ID` (`subject_id`),
  KEY `REPORT_EVENT_OBJECT_ID` (`object_id`),
  KEY `REPORT_EVENT_SUBTYPE` (`subtype`),
  KEY `REPORT_EVENT_STORE_ID` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8 COMMENT='Reports Event Table';

--
-- Dumping data for table `report_event`
--

LOCK TABLES `report_event` WRITE;
/*!40000 ALTER TABLE `report_event` DISABLE KEYS */;
INSERT INTO `report_event` VALUES (1,'2017-04-13 07:48:28',1,'1','1',1,1),(2,'2017-04-13 07:50:39',1,'1','1',1,1),(3,'2017-04-13 07:53:56',4,'1','6',1,1),(4,'2017-04-13 07:56:11',4,'1','15',1,1),(5,'2017-04-13 08:30:41',1,'1','15',1,1),(6,'2017-04-13 08:34:13',4,'1','15',1,1),(7,'2017-04-13 08:54:08',1,'2','15',1,1),(8,'2017-04-13 08:56:28',1,'2','15',1,1),(9,'2017-04-13 09:17:37',1,'1','15',1,1),(10,'2017-04-13 09:26:54',1,'7','15',1,1),(11,'2017-04-13 09:26:57',4,'7','15',1,1),(12,'2017-04-13 09:32:20',1,'11','15',1,1),(13,'2017-04-13 09:32:39',4,'11','15',1,1),(14,'2017-04-13 09:32:46',3,'11','15',1,1),(15,'2017-04-13 09:33:57',3,'1','15',1,1),(16,'2017-04-13 14:57:08',4,'1','17',1,1),(17,'2017-04-13 15:02:46',3,'8','17',1,1),(18,'2017-04-13 15:02:52',3,'9','17',1,1),(19,'2017-04-13 15:28:18',1,'1','17',1,1),(20,'2017-04-13 15:33:05',1,'1','17',1,1),(21,'2017-04-16 12:29:00',4,'9','29',1,1),(22,'2017-04-16 12:29:09',4,'3','29',1,1),(23,'2017-04-16 12:29:22',1,'3','29',1,1),(24,'2017-04-16 12:32:36',1,'3','29',1,1),(25,'2017-04-16 12:34:18',1,'11','29',1,1),(26,'2017-04-16 12:34:56',4,'11','29',1,1),(27,'2017-04-16 12:34:57',1,'11','29',1,1),(28,'2017-04-16 12:36:45',5,'7','2',0,1),(29,'2017-04-16 12:39:19',4,'11','2',0,1),(30,'2017-04-16 13:24:00',1,'11','2',0,1),(31,'2017-04-16 13:24:26',4,'11','2',0,1),(32,'2017-04-16 13:29:18',1,'1','2',0,1),(33,'2017-04-16 13:29:20',1,'5','2',0,1),(34,'2017-04-16 13:48:22',1,'11','2',0,1),(35,'2017-04-16 13:51:31',1,'11','2',0,1),(36,'2017-04-16 13:53:12',1,'5','2',0,1),(37,'2017-04-16 14:37:47',1,'3','31',1,1),(38,'2017-04-16 14:38:22',1,'11','31',1,1),(39,'2017-04-16 14:42:32',1,'11','31',1,1),(40,'2017-04-16 14:51:04',1,'11','31',1,1),(41,'2017-04-16 14:51:12',4,'11','31',1,1),(42,'2017-04-16 15:30:27',1,'11','32',1,1),(43,'2017-04-16 15:30:39',4,'11','34',1,1),(44,'2017-04-16 15:32:11',1,'11','34',1,1),(45,'2017-04-16 15:38:49',1,'11','34',1,1),(46,'2017-04-16 15:43:53',1,'3','34',1,1),(47,'2017-04-16 15:43:54',1,'3','34',1,1),(48,'2017-04-16 16:01:44',1,'7','34',1,1),(49,'2017-04-16 16:01:54',4,'7','34',1,1),(50,'2017-04-16 16:14:34',1,'11','34',1,1),(51,'2017-04-16 17:01:03',1,'11','34',1,1),(52,'2017-04-16 17:43:37',1,'3','35',1,1),(53,'2017-04-17 10:33:21',1,'11','38',1,1),(54,'2017-04-17 10:34:02',4,'11','38',1,1),(55,'2017-04-17 10:34:09',1,'11','38',1,1),(56,'2017-04-17 10:34:34',1,'11','38',1,1),(57,'2017-04-17 11:23:38',1,'11','38',1,1),(58,'2017-04-17 13:22:56',4,'11','41',1,1),(59,'2017-04-17 13:30:11',4,'11','41',1,1),(60,'2017-04-17 13:42:11',4,'11','41',1,1),(61,'2017-04-17 18:06:26',4,'11','44',1,1),(62,'2017-04-18 10:52:29',1,'11','54',1,2),(63,'2017-04-18 10:52:38',4,'11','54',1,2),(64,'2017-04-18 13:06:23',4,'11','58',1,2),(65,'2017-04-18 13:12:58',1,'11','58',1,2),(66,'2017-04-18 13:12:58',1,'11','58',1,2),(67,'2017-04-18 13:16:17',1,'11','58',1,1),(68,'2017-04-18 13:28:03',1,'11','58',1,1),(69,'2017-04-18 13:28:52',1,'11','58',1,1),(70,'2017-04-18 13:29:10',3,'11','58',1,1),(71,'2017-04-18 13:29:29',3,'3','58',1,1),(72,'2017-04-18 13:42:14',1,'7','58',1,1),(73,'2017-04-18 14:09:14',1,'11','59',1,2),(74,'2017-04-18 14:25:08',1,'11','61',1,2),(75,'2017-04-18 14:27:38',1,'11','63',1,2),(76,'2017-04-18 14:30:38',1,'11','65',1,2),(77,'2017-04-19 09:04:06',1,'10','67',1,1),(78,'2017-04-19 09:04:25',1,'10','67',1,2),(79,'2017-04-20 07:41:39',4,'11','74',1,2),(80,'2017-04-20 08:25:12',1,'1','74',1,2),(81,'2017-04-20 08:27:42',1,'11','74',1,2),(82,'2017-04-20 08:32:21',1,'3','74',1,2),(83,'2017-04-20 08:32:28',4,'3','74',1,2),(84,'2017-04-20 08:40:22',1,'11','74',1,2),(85,'2017-04-20 08:42:35',1,'11','74',1,2),(86,'2017-04-20 08:43:55',1,'11','74',1,2),(87,'2017-04-20 08:44:51',1,'7','74',1,2);
/*!40000 ALTER TABLE `report_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report_event_types`
--

DROP TABLE IF EXISTS `report_event_types`;
CREATE TABLE `report_event_types` (
  `event_type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Event Type Id',
  `event_name` varchar(64) NOT NULL COMMENT 'Event Name',
  `customer_login` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Login',
  PRIMARY KEY (`event_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='Reports Event Type Table';

--
-- Dumping data for table `report_event_types`
--

LOCK TABLES `report_event_types` WRITE;
/*!40000 ALTER TABLE `report_event_types` DISABLE KEYS */;
INSERT INTO `report_event_types` VALUES (1,'catalog_product_view',0),(2,'sendfriend_product',0),(3,'catalog_product_compare_add_product',0),(4,'checkout_cart_add_product',0),(5,'wishlist_add_product',0),(6,'wishlist_share',0);
/*!40000 ALTER TABLE `report_event_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report_viewed_product_aggregated_daily`
--

DROP TABLE IF EXISTS `report_viewed_product_aggregated_daily`;
CREATE TABLE `report_viewed_product_aggregated_daily` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `views_num` int(11) NOT NULL DEFAULT '0' COMMENT 'Number of Views',
  `rating_pos` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Pos',
  PRIMARY KEY (`id`),
  UNIQUE KEY `REPORT_VIEWED_PRD_AGGRED_DAILY_PERIOD_STORE_ID_PRD_ID` (`period`,`store_id`,`product_id`),
  KEY `REPORT_VIEWED_PRODUCT_AGGREGATED_DAILY_STORE_ID` (`store_id`),
  KEY `REPORT_VIEWED_PRODUCT_AGGREGATED_DAILY_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Most Viewed Products Aggregated Daily';

--
-- Table structure for table `report_viewed_product_aggregated_monthly`
--

DROP TABLE IF EXISTS `report_viewed_product_aggregated_monthly`;
CREATE TABLE `report_viewed_product_aggregated_monthly` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `views_num` int(11) NOT NULL DEFAULT '0' COMMENT 'Number of Views',
  `rating_pos` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Pos',
  PRIMARY KEY (`id`),
  UNIQUE KEY `REPORT_VIEWED_PRD_AGGRED_MONTHLY_PERIOD_STORE_ID_PRD_ID` (`period`,`store_id`,`product_id`),
  KEY `REPORT_VIEWED_PRODUCT_AGGREGATED_MONTHLY_STORE_ID` (`store_id`),
  KEY `REPORT_VIEWED_PRODUCT_AGGREGATED_MONTHLY_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Most Viewed Products Aggregated Monthly';

--
-- Table structure for table `report_viewed_product_aggregated_yearly`
--

DROP TABLE IF EXISTS `report_viewed_product_aggregated_yearly`;
CREATE TABLE `report_viewed_product_aggregated_yearly` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `views_num` int(11) NOT NULL DEFAULT '0' COMMENT 'Number of Views',
  `rating_pos` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Pos',
  PRIMARY KEY (`id`),
  UNIQUE KEY `REPORT_VIEWED_PRD_AGGRED_YEARLY_PERIOD_STORE_ID_PRD_ID` (`period`,`store_id`,`product_id`),
  KEY `REPORT_VIEWED_PRODUCT_AGGREGATED_YEARLY_STORE_ID` (`store_id`),
  KEY `REPORT_VIEWED_PRODUCT_AGGREGATED_YEARLY_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Most Viewed Products Aggregated Yearly';

--
-- Table structure for table `report_viewed_product_index`
--

DROP TABLE IF EXISTS `report_viewed_product_index`;
CREATE TABLE `report_viewed_product_index` (
  `index_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Index Id',
  `visitor_id` int(10) unsigned DEFAULT NULL COMMENT 'Visitor Id',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Id',
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `added_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Added At',
  PRIMARY KEY (`index_id`),
  UNIQUE KEY `REPORT_VIEWED_PRODUCT_INDEX_VISITOR_ID_PRODUCT_ID` (`visitor_id`,`product_id`),
  UNIQUE KEY `REPORT_VIEWED_PRODUCT_INDEX_CUSTOMER_ID_PRODUCT_ID` (`customer_id`,`product_id`),
  KEY `REPORT_VIEWED_PRODUCT_INDEX_STORE_ID` (`store_id`),
  KEY `REPORT_VIEWED_PRODUCT_INDEX_ADDED_AT` (`added_at`),
  KEY `REPORT_VIEWED_PRODUCT_INDEX_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8 COMMENT='Reports Viewed Product Index Table';

--
-- Dumping data for table `report_viewed_product_index`
--

LOCK TABLES `report_viewed_product_index` WRITE;
/*!40000 ALTER TABLE `report_viewed_product_index` DISABLE KEYS */;
INSERT INTO `report_viewed_product_index` VALUES (1,'1',NULL,'1',1,'2017-04-13 07:48:28'),(3,'15',NULL,'1',1,'2017-04-13 08:30:41'),(4,'15',NULL,'2',1,'2017-04-13 08:54:08'),(7,'15',NULL,'7',1,'2017-04-13 09:26:54'),(8,'15',NULL,'11',1,'2017-04-13 09:32:20'),(9,'17',NULL,'1',1,'2017-04-13 15:28:18'),(10,'29','2','3',1,'2017-04-16 12:29:22'),(12,'29','2','11',1,'2017-04-16 12:34:18'),(15,NULL,'2','1',1,'2017-04-16 13:29:17'),(16,NULL,'2','5',1,'2017-04-16 13:29:20'),(20,'31',NULL,'3',1,'2017-04-16 14:37:47'),(21,'31',NULL,'11',1,'2017-04-16 14:38:22'),(24,'32',NULL,'11',1,'2017-04-16 15:30:27'),(25,'34',NULL,'11',1,'2017-04-16 15:32:11'),(27,'34',NULL,'3',1,'2017-04-16 15:43:53'),(29,'34',NULL,'7',1,'2017-04-16 16:01:44'),(32,'35',NULL,'3',1,'2017-04-16 17:43:36'),(33,'38',NULL,'11',1,'2017-04-17 10:33:21'),(34,'54',NULL,'11',2,'2017-04-18 10:52:29'),(35,'58',NULL,'11',1,'2017-04-18 13:12:58'),(40,'58',NULL,'7',1,'2017-04-18 13:42:14'),(41,'59',NULL,'11',2,'2017-04-18 14:09:14'),(42,'61',NULL,'11',2,'2017-04-18 14:25:08'),(43,'63',NULL,'11',2,'2017-04-18 14:27:38'),(44,'65',NULL,'11',2,'2017-04-18 14:30:38'),(45,'67',NULL,'10',2,'2017-04-19 09:04:06'),(46,'74',NULL,'1',2,'2017-04-20 08:25:12'),(47,'74',NULL,'11',2,'2017-04-20 08:27:42'),(48,'74',NULL,'3',2,'2017-04-20 08:32:21'),(52,'74',NULL,'7',2,'2017-04-20 08:44:51');
/*!40000 ALTER TABLE `report_viewed_product_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reporting_counts`
--

DROP TABLE IF EXISTS `reporting_counts`;
CREATE TABLE `reporting_counts` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `type` varchar(255) DEFAULT NULL COMMENT 'Item Reported',
  `count` int(10) unsigned DEFAULT NULL COMMENT 'Count Value',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  PRIMARY KEY (`entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Reporting for all count related events generated via the cron job';

--
-- Table structure for table `reporting_module_status`
--

DROP TABLE IF EXISTS `reporting_module_status`;
CREATE TABLE `reporting_module_status` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Module Id',
  `name` varchar(255) DEFAULT NULL COMMENT 'Module Name',
  `active` varchar(255) DEFAULT NULL COMMENT 'Module Active Status',
  `setup_version` varchar(255) DEFAULT NULL COMMENT 'Module Version',
  `state` varchar(255) DEFAULT NULL COMMENT 'Module State',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  PRIMARY KEY (`entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Module Status Table';

--
-- Table structure for table `reporting_orders`
--

DROP TABLE IF EXISTS `reporting_orders`;
CREATE TABLE `reporting_orders` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Id',
  `total` decimal(20,2) DEFAULT NULL COMMENT 'Total From Store',
  `total_base` decimal(20,2) DEFAULT NULL COMMENT 'Total From Base Currency',
  `item_count` int(10) unsigned NOT NULL COMMENT 'Line Item Count',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Updated At',
  PRIMARY KEY (`entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Reporting for all orders';

--
-- Table structure for table `reporting_system_updates`
--

DROP TABLE IF EXISTS `reporting_system_updates`;
CREATE TABLE `reporting_system_updates` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `type` varchar(255) DEFAULT NULL COMMENT 'Update Type',
  `action` varchar(255) DEFAULT NULL COMMENT 'Action Performed',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Updated At',
  PRIMARY KEY (`entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Reporting for system updates';

--
-- Table structure for table `reporting_users`
--

DROP TABLE IF EXISTS `reporting_users`;
CREATE TABLE `reporting_users` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `type` varchar(255) DEFAULT NULL COMMENT 'User Type',
  `action` varchar(255) DEFAULT NULL COMMENT 'Action Performed',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Updated At',
  PRIMARY KEY (`entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Reporting for user actions';

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
CREATE TABLE `review` (
  `review_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Review id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Review create date',
  `entity_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity id',
  `entity_pk_value` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product id',
  `status_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Status code',
  PRIMARY KEY (`review_id`),
  KEY `REVIEW_ENTITY_ID` (`entity_id`),
  KEY `REVIEW_STATUS_ID` (`status_id`),
  KEY `REVIEW_ENTITY_PK_VALUE` (`entity_pk_value`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Review base information';

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (1,'2017-04-20 08:42:35',1,'11',1);
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review_detail`
--

DROP TABLE IF EXISTS `review_detail`;
CREATE TABLE `review_detail` (
  `detail_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Review detail id',
  `review_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Review id',
  `store_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Store id',
  `title` varchar(255) NOT NULL COMMENT 'Title',
  `detail` text NOT NULL COMMENT 'Detail description',
  `nickname` varchar(128) NOT NULL COMMENT 'User nickname',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Id',
  PRIMARY KEY (`detail_id`),
  KEY `REVIEW_DETAIL_REVIEW_ID` (`review_id`),
  KEY `REVIEW_DETAIL_STORE_ID` (`store_id`),
  KEY `REVIEW_DETAIL_CUSTOMER_ID` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Review detail information';

--
-- Dumping data for table `review_detail`
--

LOCK TABLES `review_detail` WRITE;
/*!40000 ALTER TABLE `review_detail` DISABLE KEYS */;
INSERT INTO `review_detail` VALUES (1,1,2,'Lovely','Lovely flowers','Nica Bolusan',NULL);
/*!40000 ALTER TABLE `review_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review_entity`
--

DROP TABLE IF EXISTS `review_entity`;
CREATE TABLE `review_entity` (
  `entity_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Review entity id',
  `entity_code` varchar(32) NOT NULL COMMENT 'Review entity code',
  PRIMARY KEY (`entity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Review entities';

--
-- Dumping data for table `review_entity`
--

LOCK TABLES `review_entity` WRITE;
/*!40000 ALTER TABLE `review_entity` DISABLE KEYS */;
INSERT INTO `review_entity` VALUES (1,'product'),(2,'customer'),(3,'category');
/*!40000 ALTER TABLE `review_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review_entity_summary`
--

DROP TABLE IF EXISTS `review_entity_summary`;
CREATE TABLE `review_entity_summary` (
  `primary_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'Summary review entity id',
  `entity_pk_value` bigint(20) NOT NULL DEFAULT '0' COMMENT 'Product id',
  `entity_type` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Entity type id',
  `reviews_count` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Qty of reviews',
  `rating_summary` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Summarized rating',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store id',
  PRIMARY KEY (`primary_id`),
  KEY `REVIEW_ENTITY_SUMMARY_STORE_ID` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Review aggregates';

--
-- Dumping data for table `review_entity_summary`
--

LOCK TABLES `review_entity_summary` WRITE;
/*!40000 ALTER TABLE `review_entity_summary` DISABLE KEYS */;
INSERT INTO `review_entity_summary` VALUES (1,11,1,1,0,2),(2,11,1,0,0,1),(3,11,1,0,0,3);
/*!40000 ALTER TABLE `review_entity_summary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review_status`
--

DROP TABLE IF EXISTS `review_status`;
CREATE TABLE `review_status` (
  `status_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Status id',
  `status_code` varchar(32) NOT NULL COMMENT 'Status code',
  PRIMARY KEY (`status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Review statuses';

--
-- Dumping data for table `review_status`
--

LOCK TABLES `review_status` WRITE;
/*!40000 ALTER TABLE `review_status` DISABLE KEYS */;
INSERT INTO `review_status` VALUES (1,'Approved'),(2,'Pending'),(3,'Not Approved');
/*!40000 ALTER TABLE `review_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review_store`
--

DROP TABLE IF EXISTS `review_store`;
CREATE TABLE `review_store` (
  `review_id` bigint(20) unsigned NOT NULL COMMENT 'Review Id',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  PRIMARY KEY (`review_id`,`store_id`),
  KEY `REVIEW_STORE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Review Store';

--
-- Dumping data for table `review_store`
--

LOCK TABLES `review_store` WRITE;
/*!40000 ALTER TABLE `review_store` DISABLE KEYS */;
INSERT INTO `review_store` VALUES (1,0),(1,2);
/*!40000 ALTER TABLE `review_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_bestsellers_aggregated_daily`
--

DROP TABLE IF EXISTS `sales_bestsellers_aggregated_daily`;
CREATE TABLE `sales_bestsellers_aggregated_daily` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `qty_ordered` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty Ordered',
  `rating_pos` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Pos',
  PRIMARY KEY (`id`),
  UNIQUE KEY `SALES_BESTSELLERS_AGGREGATED_DAILY_PERIOD_STORE_ID_PRODUCT_ID` (`period`,`store_id`,`product_id`),
  KEY `SALES_BESTSELLERS_AGGREGATED_DAILY_STORE_ID` (`store_id`),
  KEY `SALES_BESTSELLERS_AGGREGATED_DAILY_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Bestsellers Aggregated Daily';

--
-- Table structure for table `sales_bestsellers_aggregated_monthly`
--

DROP TABLE IF EXISTS `sales_bestsellers_aggregated_monthly`;
CREATE TABLE `sales_bestsellers_aggregated_monthly` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `qty_ordered` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty Ordered',
  `rating_pos` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Pos',
  PRIMARY KEY (`id`),
  UNIQUE KEY `SALES_BESTSELLERS_AGGREGATED_MONTHLY_PERIOD_STORE_ID_PRODUCT_ID` (`period`,`store_id`,`product_id`),
  KEY `SALES_BESTSELLERS_AGGREGATED_MONTHLY_STORE_ID` (`store_id`),
  KEY `SALES_BESTSELLERS_AGGREGATED_MONTHLY_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Bestsellers Aggregated Monthly';

--
-- Table structure for table `sales_bestsellers_aggregated_yearly`
--

DROP TABLE IF EXISTS `sales_bestsellers_aggregated_yearly`;
CREATE TABLE `sales_bestsellers_aggregated_yearly` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `qty_ordered` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty Ordered',
  `rating_pos` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Pos',
  PRIMARY KEY (`id`),
  UNIQUE KEY `SALES_BESTSELLERS_AGGREGATED_YEARLY_PERIOD_STORE_ID_PRODUCT_ID` (`period`,`store_id`,`product_id`),
  KEY `SALES_BESTSELLERS_AGGREGATED_YEARLY_STORE_ID` (`store_id`),
  KEY `SALES_BESTSELLERS_AGGREGATED_YEARLY_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Bestsellers Aggregated Yearly';

--
-- Table structure for table `sales_creditmemo`
--

DROP TABLE IF EXISTS `sales_creditmemo`;
CREATE TABLE `sales_creditmemo` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `adjustment_positive` decimal(12,4) DEFAULT NULL COMMENT 'Adjustment Positive',
  `base_shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Tax Amount',
  `store_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Order Rate',
  `base_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Amount',
  `base_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Order Rate',
  `grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Grand Total',
  `base_adjustment_negative` decimal(12,4) DEFAULT NULL COMMENT 'Base Adjustment Negative',
  `base_subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Incl Tax',
  `shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Amount',
  `subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Incl Tax',
  `adjustment_negative` decimal(12,4) DEFAULT NULL COMMENT 'Adjustment Negative',
  `base_shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Amount',
  `store_to_base_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Base Rate',
  `base_to_global_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Global Rate',
  `base_adjustment` decimal(12,4) DEFAULT NULL COMMENT 'Base Adjustment',
  `base_subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal',
  `discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Amount',
  `subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal',
  `adjustment` decimal(12,4) DEFAULT NULL COMMENT 'Adjustment',
  `base_grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `base_adjustment_positive` decimal(12,4) DEFAULT NULL COMMENT 'Base Adjustment Positive',
  `base_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Amount',
  `shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Tax Amount',
  `tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Amount',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  `email_sent` smallint(5) unsigned DEFAULT NULL COMMENT 'Email Sent',
  `send_email` smallint(5) unsigned DEFAULT NULL COMMENT 'Send Email',
  `creditmemo_status` int(11) DEFAULT NULL COMMENT 'Creditmemo Status',
  `state` int(11) DEFAULT NULL COMMENT 'State',
  `shipping_address_id` int(11) DEFAULT NULL COMMENT 'Shipping Address Id',
  `billing_address_id` int(11) DEFAULT NULL COMMENT 'Billing Address Id',
  `invoice_id` int(11) DEFAULT NULL COMMENT 'Invoice Id',
  `store_currency_code` varchar(3) DEFAULT NULL COMMENT 'Store Currency Code',
  `order_currency_code` varchar(3) DEFAULT NULL COMMENT 'Order Currency Code',
  `base_currency_code` varchar(3) DEFAULT NULL COMMENT 'Base Currency Code',
  `global_currency_code` varchar(3) DEFAULT NULL COMMENT 'Global Currency Code',
  `transaction_id` varchar(255) DEFAULT NULL COMMENT 'Transaction Id',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Amount',
  `base_discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Amount',
  `shipping_discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Discount Tax Compensation Amount',
  `base_shipping_discount_tax_compensation_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Discount Tax Compensation Amount',
  `shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Incl Tax',
  `base_shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Incl Tax',
  `discount_description` varchar(255) DEFAULT NULL COMMENT 'Discount Description',
  `customer_note` text COMMENT 'Customer Note',
  `customer_note_notify` smallint(5) unsigned DEFAULT NULL COMMENT 'Customer Note Notify',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `SALES_CREDITMEMO_INCREMENT_ID_STORE_ID` (`increment_id`,`store_id`),
  KEY `SALES_CREDITMEMO_STORE_ID` (`store_id`),
  KEY `SALES_CREDITMEMO_ORDER_ID` (`order_id`),
  KEY `SALES_CREDITMEMO_CREDITMEMO_STATUS` (`creditmemo_status`),
  KEY `SALES_CREDITMEMO_STATE` (`state`),
  KEY `SALES_CREDITMEMO_CREATED_AT` (`created_at`),
  KEY `SALES_CREDITMEMO_UPDATED_AT` (`updated_at`),
  KEY `SALES_CREDITMEMO_SEND_EMAIL` (`send_email`),
  KEY `SALES_CREDITMEMO_EMAIL_SENT` (`email_sent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Creditmemo';

--
-- Table structure for table `sales_creditmemo_comment`
--

DROP TABLE IF EXISTS `sales_creditmemo_comment`;
CREATE TABLE `sales_creditmemo_comment` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `is_customer_notified` int(11) DEFAULT NULL COMMENT 'Is Customer Notified',
  `is_visible_on_front` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Visible On Front',
  `comment` text COMMENT 'Comment',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  PRIMARY KEY (`entity_id`),
  KEY `SALES_CREDITMEMO_COMMENT_CREATED_AT` (`created_at`),
  KEY `SALES_CREDITMEMO_COMMENT_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Creditmemo Comment';

--
-- Table structure for table `sales_creditmemo_grid`
--

DROP TABLE IF EXISTS `sales_creditmemo_grid`;
CREATE TABLE `sales_creditmemo_grid` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  `order_increment_id` varchar(50) DEFAULT NULL COMMENT 'Order Increment Id',
  `order_created_at` timestamp NULL DEFAULT NULL COMMENT 'Order Created At',
  `billing_name` varchar(255) DEFAULT NULL COMMENT 'Billing Name',
  `state` int(11) DEFAULT NULL COMMENT 'Status',
  `base_grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `order_status` varchar(32) DEFAULT NULL COMMENT 'Order Status',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `billing_address` varchar(255) DEFAULT NULL COMMENT 'Billing Address',
  `shipping_address` varchar(255) DEFAULT NULL COMMENT 'Shipping Address',
  `customer_name` varchar(128) NOT NULL COMMENT 'Customer Name',
  `customer_email` varchar(128) DEFAULT NULL COMMENT 'Customer Email',
  `customer_group_id` smallint(6) DEFAULT NULL COMMENT 'Customer Group Id',
  `payment_method` varchar(32) DEFAULT NULL COMMENT 'Payment Method',
  `shipping_information` varchar(255) DEFAULT NULL COMMENT 'Shipping Method Name',
  `subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal',
  `shipping_and_handling` decimal(12,4) DEFAULT NULL COMMENT 'Shipping and handling amount',
  `adjustment_positive` decimal(12,4) DEFAULT NULL COMMENT 'Adjustment Positive',
  `adjustment_negative` decimal(12,4) DEFAULT NULL COMMENT 'Adjustment Negative',
  `order_base_grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Order Grand Total',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `SALES_CREDITMEMO_GRID_INCREMENT_ID_STORE_ID` (`increment_id`,`store_id`),
  KEY `SALES_CREDITMEMO_GRID_ORDER_INCREMENT_ID` (`order_increment_id`),
  KEY `SALES_CREDITMEMO_GRID_CREATED_AT` (`created_at`),
  KEY `SALES_CREDITMEMO_GRID_UPDATED_AT` (`updated_at`),
  KEY `SALES_CREDITMEMO_GRID_ORDER_CREATED_AT` (`order_created_at`),
  KEY `SALES_CREDITMEMO_GRID_STATE` (`state`),
  KEY `SALES_CREDITMEMO_GRID_BILLING_NAME` (`billing_name`),
  KEY `SALES_CREDITMEMO_GRID_ORDER_STATUS` (`order_status`),
  KEY `SALES_CREDITMEMO_GRID_BASE_GRAND_TOTAL` (`base_grand_total`),
  KEY `SALES_CREDITMEMO_GRID_STORE_ID` (`store_id`),
  KEY `SALES_CREDITMEMO_GRID_ORDER_BASE_GRAND_TOTAL` (`order_base_grand_total`),
  KEY `SALES_CREDITMEMO_GRID_ORDER_ID` (`order_id`),
  FULLTEXT KEY `FTI_32B7BA885941A8254EE84AE650ABDC86` (`increment_id`,`order_increment_id`,`billing_name`,`billing_address`,`shipping_address`,`customer_name`,`customer_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Creditmemo Grid';

--
-- Table structure for table `sales_creditmemo_item`
--

DROP TABLE IF EXISTS `sales_creditmemo_item`;
CREATE TABLE `sales_creditmemo_item` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `base_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Price',
  `tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Amount',
  `base_row_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total',
  `discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Amount',
  `row_total` decimal(12,4) DEFAULT NULL COMMENT 'Row Total',
  `base_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Amount',
  `price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Price Incl Tax',
  `base_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Amount',
  `base_price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Price Incl Tax',
  `qty` decimal(12,4) DEFAULT NULL COMMENT 'Qty',
  `base_cost` decimal(12,4) DEFAULT NULL COMMENT 'Base Cost',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `base_row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total Incl Tax',
  `row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Row Total Incl Tax',
  `product_id` int(11) DEFAULT NULL COMMENT 'Product Id',
  `order_item_id` int(11) DEFAULT NULL COMMENT 'Order Item Id',
  `additional_data` text COMMENT 'Additional Data',
  `description` text COMMENT 'Description',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Amount',
  `base_discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Amount',
  `tax_ratio` text COMMENT 'Ratio of tax in the creditmemo item over tax of the order item',
  `weee_tax_applied` text COMMENT 'Weee Tax Applied',
  `weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Amount',
  `weee_tax_applied_row_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Row Amount',
  `weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Disposition',
  `weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Row Disposition',
  `base_weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Amount',
  `base_weee_tax_applied_row_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Row Amnt',
  `base_weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Disposition',
  `base_weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Row Disposition',
  PRIMARY KEY (`entity_id`),
  KEY `SALES_CREDITMEMO_ITEM_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Creditmemo Item';

--
-- Table structure for table `sales_invoice`
--

DROP TABLE IF EXISTS `sales_invoice`;
CREATE TABLE `sales_invoice` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `base_grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Tax Amount',
  `tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Amount',
  `base_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Amount',
  `store_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Order Rate',
  `base_shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Tax Amount',
  `base_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Amount',
  `base_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Order Rate',
  `grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Grand Total',
  `shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Amount',
  `subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Incl Tax',
  `base_subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Incl Tax',
  `store_to_base_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Base Rate',
  `base_shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Amount',
  `total_qty` decimal(12,4) DEFAULT NULL COMMENT 'Total Qty',
  `base_to_global_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Global Rate',
  `subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal',
  `base_subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal',
  `discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Amount',
  `billing_address_id` int(11) DEFAULT NULL COMMENT 'Billing Address Id',
  `is_used_for_refund` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Used For Refund',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  `email_sent` smallint(5) unsigned DEFAULT NULL COMMENT 'Email Sent',
  `send_email` smallint(5) unsigned DEFAULT NULL COMMENT 'Send Email',
  `can_void_flag` smallint(5) unsigned DEFAULT NULL COMMENT 'Can Void Flag',
  `state` int(11) DEFAULT NULL COMMENT 'State',
  `shipping_address_id` int(11) DEFAULT NULL COMMENT 'Shipping Address Id',
  `store_currency_code` varchar(3) DEFAULT NULL COMMENT 'Store Currency Code',
  `transaction_id` varchar(255) DEFAULT NULL COMMENT 'Transaction Id',
  `order_currency_code` varchar(3) DEFAULT NULL COMMENT 'Order Currency Code',
  `base_currency_code` varchar(3) DEFAULT NULL COMMENT 'Base Currency Code',
  `global_currency_code` varchar(3) DEFAULT NULL COMMENT 'Global Currency Code',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Amount',
  `base_discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Amount',
  `shipping_discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Discount Tax Compensation Amount',
  `base_shipping_discount_tax_compensation_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Discount Tax Compensation Amount',
  `shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Incl Tax',
  `base_shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Incl Tax',
  `base_total_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Refunded',
  `discount_description` varchar(255) DEFAULT NULL COMMENT 'Discount Description',
  `customer_note` text COMMENT 'Customer Note',
  `customer_note_notify` smallint(5) unsigned DEFAULT NULL COMMENT 'Customer Note Notify',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `SALES_INVOICE_INCREMENT_ID_STORE_ID` (`increment_id`,`store_id`),
  KEY `SALES_INVOICE_STORE_ID` (`store_id`),
  KEY `SALES_INVOICE_GRAND_TOTAL` (`grand_total`),
  KEY `SALES_INVOICE_ORDER_ID` (`order_id`),
  KEY `SALES_INVOICE_STATE` (`state`),
  KEY `SALES_INVOICE_CREATED_AT` (`created_at`),
  KEY `SALES_INVOICE_UPDATED_AT` (`updated_at`),
  KEY `SALES_INVOICE_SEND_EMAIL` (`send_email`),
  KEY `SALES_INVOICE_EMAIL_SENT` (`email_sent`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Sales Flat Invoice';

--
-- Dumping data for table `sales_invoice`
--

LOCK TABLES `sales_invoice` WRITE;
/*!40000 ALTER TABLE `sales_invoice` DISABLE KEYS */;
INSERT INTO `sales_invoice` VALUES ('1',1,'5405.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','1.0000','5405.0000','5.0000','5400.0000','5400.0000','0.0000','5.0000','1.0000','1.0000','5400.0000','5400.0000','0.0000','2',NULL,'1',NULL,NULL,0,'2','1','AED',NULL,'AED','AED','AED','000000001','2017-04-13 08:00:27','2017-04-13 08:00:27','0.0000','0.0000','0.0000',NULL,'5.0000','5.0000',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `sales_invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_invoice_comment`
--

DROP TABLE IF EXISTS `sales_invoice_comment`;
CREATE TABLE `sales_invoice_comment` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `is_customer_notified` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Customer Notified',
  `is_visible_on_front` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Visible On Front',
  `comment` text COMMENT 'Comment',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  PRIMARY KEY (`entity_id`),
  KEY `SALES_INVOICE_COMMENT_CREATED_AT` (`created_at`),
  KEY `SALES_INVOICE_COMMENT_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Invoice Comment';

--
-- Table structure for table `sales_invoice_grid`
--

DROP TABLE IF EXISTS `sales_invoice_grid`;
CREATE TABLE `sales_invoice_grid` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `state` int(11) DEFAULT NULL COMMENT 'State',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `store_name` varchar(255) DEFAULT NULL COMMENT 'Store Name',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  `order_increment_id` varchar(50) DEFAULT NULL COMMENT 'Order Increment Id',
  `order_created_at` timestamp NULL DEFAULT NULL COMMENT 'Order Created At',
  `customer_name` varchar(255) DEFAULT NULL COMMENT 'Customer Name',
  `customer_email` varchar(255) DEFAULT NULL COMMENT 'Customer Email',
  `customer_group_id` smallint(6) DEFAULT NULL COMMENT 'Customer Group Id',
  `payment_method` varchar(128) DEFAULT NULL COMMENT 'Payment Method',
  `store_currency_code` varchar(3) DEFAULT NULL COMMENT 'Store Currency Code',
  `order_currency_code` varchar(3) DEFAULT NULL COMMENT 'Order Currency Code',
  `base_currency_code` varchar(3) DEFAULT NULL COMMENT 'Base Currency Code',
  `global_currency_code` varchar(3) DEFAULT NULL COMMENT 'Global Currency Code',
  `billing_name` varchar(255) DEFAULT NULL COMMENT 'Billing Name',
  `billing_address` varchar(255) DEFAULT NULL COMMENT 'Billing Address',
  `shipping_address` varchar(255) DEFAULT NULL COMMENT 'Shipping Address',
  `shipping_information` varchar(255) DEFAULT NULL COMMENT 'Shipping Method Name',
  `subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal',
  `shipping_and_handling` decimal(12,4) DEFAULT NULL COMMENT 'Shipping and handling amount',
  `grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Grand Total',
  `base_grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `SALES_INVOICE_GRID_INCREMENT_ID_STORE_ID` (`increment_id`,`store_id`),
  KEY `SALES_INVOICE_GRID_STORE_ID` (`store_id`),
  KEY `SALES_INVOICE_GRID_GRAND_TOTAL` (`grand_total`),
  KEY `SALES_INVOICE_GRID_ORDER_ID` (`order_id`),
  KEY `SALES_INVOICE_GRID_STATE` (`state`),
  KEY `SALES_INVOICE_GRID_ORDER_INCREMENT_ID` (`order_increment_id`),
  KEY `SALES_INVOICE_GRID_CREATED_AT` (`created_at`),
  KEY `SALES_INVOICE_GRID_UPDATED_AT` (`updated_at`),
  KEY `SALES_INVOICE_GRID_ORDER_CREATED_AT` (`order_created_at`),
  KEY `SALES_INVOICE_GRID_BILLING_NAME` (`billing_name`),
  KEY `SALES_INVOICE_GRID_BASE_GRAND_TOTAL` (`base_grand_total`),
  FULLTEXT KEY `FTI_95D9C924DD6A8734EB8B5D01D60F90DE` (`increment_id`,`order_increment_id`,`billing_name`,`billing_address`,`shipping_address`,`customer_name`,`customer_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Invoice Grid';

--
-- Dumping data for table `sales_invoice_grid`
--

LOCK TABLES `sales_invoice_grid` WRITE;
/*!40000 ALTER TABLE `sales_invoice_grid` DISABLE KEYS */;
INSERT INTO `sales_invoice_grid` VALUES ('1','000000001','2',1,'Main Website\nMain Website Store\n','1','000000001','2017-04-13 07:57:25','','markttimbol@gmail.com',0,'checkmo','AED','AED','AED','AED','Mark Timbol','Dubai Dubai Dubai 00000','Dubai Dubai Dubai 00000','Flat Rate - Fixed','5400.0000','5.0000','5405.0000','5405.0000','2017-04-13 08:00:27','2017-04-13 08:00:27');
/*!40000 ALTER TABLE `sales_invoice_grid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_invoice_item`
--

DROP TABLE IF EXISTS `sales_invoice_item`;
CREATE TABLE `sales_invoice_item` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `base_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Price',
  `tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Amount',
  `base_row_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total',
  `discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Amount',
  `row_total` decimal(12,4) DEFAULT NULL COMMENT 'Row Total',
  `base_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Amount',
  `price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Price Incl Tax',
  `base_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Amount',
  `base_price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Price Incl Tax',
  `qty` decimal(12,4) DEFAULT NULL COMMENT 'Qty',
  `base_cost` decimal(12,4) DEFAULT NULL COMMENT 'Base Cost',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `base_row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total Incl Tax',
  `row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Row Total Incl Tax',
  `product_id` int(11) DEFAULT NULL COMMENT 'Product Id',
  `order_item_id` int(11) DEFAULT NULL COMMENT 'Order Item Id',
  `additional_data` text COMMENT 'Additional Data',
  `description` text COMMENT 'Description',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Amount',
  `base_discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Amount',
  `tax_ratio` text COMMENT 'Ratio of tax invoiced over tax of the order item',
  `weee_tax_applied` text COMMENT 'Weee Tax Applied',
  `weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Amount',
  `weee_tax_applied_row_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Row Amount',
  `weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Disposition',
  `weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Row Disposition',
  `base_weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Amount',
  `base_weee_tax_applied_row_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Row Amnt',
  `base_weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Disposition',
  `base_weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Row Disposition',
  PRIMARY KEY (`entity_id`),
  KEY `SALES_INVOICE_ITEM_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Sales Flat Invoice Item';

--
-- Dumping data for table `sales_invoice_item`
--

LOCK TABLES `sales_invoice_item` WRITE;
/*!40000 ALTER TABLE `sales_invoice_item` DISABLE KEYS */;
INSERT INTO `sales_invoice_item` VALUES ('1','1','5400.0000','0.0000','5400.0000',NULL,'5400.0000',NULL,'5400.0000','0.0000','5400.0000','1.0000',NULL,'5400.0000','5400.0000','5400.0000','1','1',NULL,NULL,'Ref 315','114 orange roses in acrylic clear large rectangular box','0.0000','0.0000',NULL,'[]',NULL,'0.0000',NULL,'0.0000',NULL,NULL,NULL,'0.0000');
/*!40000 ALTER TABLE `sales_invoice_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_invoiced_aggregated`
--

DROP TABLE IF EXISTS `sales_invoiced_aggregated`;
CREATE TABLE `sales_invoiced_aggregated` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `orders_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Orders Invoiced',
  `invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced',
  `invoiced_captured` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced Captured',
  `invoiced_not_captured` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced Not Captured',
  PRIMARY KEY (`id`),
  UNIQUE KEY `SALES_INVOICED_AGGREGATED_PERIOD_STORE_ID_ORDER_STATUS` (`period`,`store_id`,`order_status`),
  KEY `SALES_INVOICED_AGGREGATED_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Invoiced Aggregated';

--
-- Table structure for table `sales_invoiced_aggregated_order`
--

DROP TABLE IF EXISTS `sales_invoiced_aggregated_order`;
CREATE TABLE `sales_invoiced_aggregated_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) NOT NULL COMMENT 'Order Status',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `orders_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Orders Invoiced',
  `invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced',
  `invoiced_captured` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced Captured',
  `invoiced_not_captured` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced Not Captured',
  PRIMARY KEY (`id`),
  UNIQUE KEY `SALES_INVOICED_AGGREGATED_ORDER_PERIOD_STORE_ID_ORDER_STATUS` (`period`,`store_id`,`order_status`),
  KEY `SALES_INVOICED_AGGREGATED_ORDER_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Invoiced Aggregated Order';

--
-- Table structure for table `sales_order`
--

DROP TABLE IF EXISTS `sales_order`;
CREATE TABLE `sales_order` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `state` varchar(32) DEFAULT NULL COMMENT 'State',
  `status` varchar(32) DEFAULT NULL COMMENT 'Status',
  `coupon_code` varchar(255) DEFAULT NULL COMMENT 'Coupon Code',
  `protect_code` varchar(255) DEFAULT NULL COMMENT 'Protect Code',
  `shipping_description` varchar(255) DEFAULT NULL COMMENT 'Shipping Description',
  `is_virtual` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Virtual',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Id',
  `base_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Amount',
  `base_discount_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Canceled',
  `base_discount_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Invoiced',
  `base_discount_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Refunded',
  `base_grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `base_shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Amount',
  `base_shipping_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Canceled',
  `base_shipping_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Invoiced',
  `base_shipping_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Refunded',
  `base_shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Tax Amount',
  `base_shipping_tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Tax Refunded',
  `base_subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal',
  `base_subtotal_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Canceled',
  `base_subtotal_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Invoiced',
  `base_subtotal_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Refunded',
  `base_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Amount',
  `base_tax_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Canceled',
  `base_tax_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Invoiced',
  `base_tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Refunded',
  `base_to_global_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Global Rate',
  `base_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Order Rate',
  `base_total_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Canceled',
  `base_total_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Invoiced',
  `base_total_invoiced_cost` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Invoiced Cost',
  `base_total_offline_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Offline Refunded',
  `base_total_online_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Online Refunded',
  `base_total_paid` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Paid',
  `base_total_qty_ordered` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Qty Ordered',
  `base_total_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Refunded',
  `discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Amount',
  `discount_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Discount Canceled',
  `discount_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Discount Invoiced',
  `discount_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Discount Refunded',
  `grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Grand Total',
  `shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Amount',
  `shipping_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Canceled',
  `shipping_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Invoiced',
  `shipping_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Refunded',
  `shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Tax Amount',
  `shipping_tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Tax Refunded',
  `store_to_base_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Base Rate',
  `store_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Order Rate',
  `subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal',
  `subtotal_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Canceled',
  `subtotal_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Invoiced',
  `subtotal_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Refunded',
  `tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Amount',
  `tax_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Tax Canceled',
  `tax_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Tax Invoiced',
  `tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Tax Refunded',
  `total_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Total Canceled',
  `total_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Total Invoiced',
  `total_offline_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Total Offline Refunded',
  `total_online_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Total Online Refunded',
  `total_paid` decimal(12,4) DEFAULT NULL COMMENT 'Total Paid',
  `total_qty_ordered` decimal(12,4) DEFAULT NULL COMMENT 'Total Qty Ordered',
  `total_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Total Refunded',
  `can_ship_partially` smallint(5) unsigned DEFAULT NULL COMMENT 'Can Ship Partially',
  `can_ship_partially_item` smallint(5) unsigned DEFAULT NULL COMMENT 'Can Ship Partially Item',
  `customer_is_guest` smallint(5) unsigned DEFAULT NULL COMMENT 'Customer Is Guest',
  `customer_note_notify` smallint(5) unsigned DEFAULT NULL COMMENT 'Customer Note Notify',
  `billing_address_id` int(11) DEFAULT NULL COMMENT 'Billing Address Id',
  `customer_group_id` smallint(6) DEFAULT NULL COMMENT 'Customer Group Id',
  `edit_increment` int(11) DEFAULT NULL COMMENT 'Edit Increment',
  `email_sent` smallint(5) unsigned DEFAULT NULL COMMENT 'Email Sent',
  `send_email` smallint(5) unsigned DEFAULT NULL COMMENT 'Send Email',
  `forced_shipment_with_invoice` smallint(5) unsigned DEFAULT NULL COMMENT 'Forced Do Shipment With Invoice',
  `payment_auth_expiration` int(11) DEFAULT NULL COMMENT 'Payment Authorization Expiration',
  `quote_address_id` int(11) DEFAULT NULL COMMENT 'Quote Address Id',
  `quote_id` int(11) DEFAULT NULL COMMENT 'Quote Id',
  `shipping_address_id` int(11) DEFAULT NULL COMMENT 'Shipping Address Id',
  `adjustment_negative` decimal(12,4) DEFAULT NULL COMMENT 'Adjustment Negative',
  `adjustment_positive` decimal(12,4) DEFAULT NULL COMMENT 'Adjustment Positive',
  `base_adjustment_negative` decimal(12,4) DEFAULT NULL COMMENT 'Base Adjustment Negative',
  `base_adjustment_positive` decimal(12,4) DEFAULT NULL COMMENT 'Base Adjustment Positive',
  `base_shipping_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Discount Amount',
  `base_subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Incl Tax',
  `base_total_due` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Due',
  `payment_authorization_amount` decimal(12,4) DEFAULT NULL COMMENT 'Payment Authorization Amount',
  `shipping_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Discount Amount',
  `subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Incl Tax',
  `total_due` decimal(12,4) DEFAULT NULL COMMENT 'Total Due',
  `weight` decimal(12,4) DEFAULT NULL COMMENT 'Weight',
  `customer_dob` datetime DEFAULT NULL COMMENT 'Customer Dob',
  `increment_id` varchar(32) DEFAULT NULL COMMENT 'Increment Id',
  `applied_rule_ids` varchar(128) DEFAULT NULL COMMENT 'Applied Rule Ids',
  `base_currency_code` varchar(3) DEFAULT NULL COMMENT 'Base Currency Code',
  `customer_email` varchar(128) DEFAULT NULL COMMENT 'Customer Email',
  `customer_firstname` varchar(128) DEFAULT NULL COMMENT 'Customer Firstname',
  `customer_lastname` varchar(128) DEFAULT NULL COMMENT 'Customer Lastname',
  `customer_middlename` varchar(128) DEFAULT NULL COMMENT 'Customer Middlename',
  `customer_prefix` varchar(32) DEFAULT NULL COMMENT 'Customer Prefix',
  `customer_suffix` varchar(32) DEFAULT NULL COMMENT 'Customer Suffix',
  `customer_taxvat` varchar(32) DEFAULT NULL COMMENT 'Customer Taxvat',
  `discount_description` varchar(255) DEFAULT NULL COMMENT 'Discount Description',
  `ext_customer_id` varchar(32) DEFAULT NULL COMMENT 'Ext Customer Id',
  `ext_order_id` varchar(32) DEFAULT NULL COMMENT 'Ext Order Id',
  `global_currency_code` varchar(3) DEFAULT NULL COMMENT 'Global Currency Code',
  `hold_before_state` varchar(32) DEFAULT NULL COMMENT 'Hold Before State',
  `hold_before_status` varchar(32) DEFAULT NULL COMMENT 'Hold Before Status',
  `order_currency_code` varchar(3) DEFAULT NULL COMMENT 'Order Currency Code',
  `original_increment_id` varchar(32) DEFAULT NULL COMMENT 'Original Increment Id',
  `relation_child_id` varchar(32) DEFAULT NULL COMMENT 'Relation Child Id',
  `relation_child_real_id` varchar(32) DEFAULT NULL COMMENT 'Relation Child Real Id',
  `relation_parent_id` varchar(32) DEFAULT NULL COMMENT 'Relation Parent Id',
  `relation_parent_real_id` varchar(32) DEFAULT NULL COMMENT 'Relation Parent Real Id',
  `remote_ip` varchar(32) DEFAULT NULL COMMENT 'Remote Ip',
  `shipping_method` varchar(32) DEFAULT NULL COMMENT 'Shipping Method',
  `store_currency_code` varchar(3) DEFAULT NULL COMMENT 'Store Currency Code',
  `store_name` varchar(32) DEFAULT NULL COMMENT 'Store Name',
  `x_forwarded_for` varchar(32) DEFAULT NULL COMMENT 'X Forwarded For',
  `customer_note` text COMMENT 'Customer Note',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `total_item_count` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Total Item Count',
  `customer_gender` int(11) DEFAULT NULL COMMENT 'Customer Gender',
  `discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Amount',
  `base_discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Amount',
  `shipping_discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Discount Tax Compensation Amount',
  `base_shipping_discount_tax_compensation_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Discount Tax Compensation Amount',
  `discount_tax_compensation_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Invoiced',
  `base_discount_tax_compensation_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Invoiced',
  `discount_tax_compensation_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Refunded',
  `base_discount_tax_compensation_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Refunded',
  `shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Incl Tax',
  `base_shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Incl Tax',
  `coupon_rule_name` varchar(255) DEFAULT NULL COMMENT 'Coupon Sales Rule Name',
  `paypal_ipn_customer_notified` int(11) DEFAULT '0' COMMENT 'Paypal Ipn Customer Notified',
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message Id',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `SALES_ORDER_INCREMENT_ID_STORE_ID` (`increment_id`,`store_id`),
  KEY `SALES_ORDER_STATUS` (`status`),
  KEY `SALES_ORDER_STATE` (`state`),
  KEY `SALES_ORDER_STORE_ID` (`store_id`),
  KEY `SALES_ORDER_CREATED_AT` (`created_at`),
  KEY `SALES_ORDER_CUSTOMER_ID` (`customer_id`),
  KEY `SALES_ORDER_EXT_ORDER_ID` (`ext_order_id`),
  KEY `SALES_ORDER_QUOTE_ID` (`quote_id`),
  KEY `SALES_ORDER_UPDATED_AT` (`updated_at`),
  KEY `SALES_ORDER_SEND_EMAIL` (`send_email`),
  KEY `SALES_ORDER_EMAIL_SENT` (`email_sent`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order';

--
-- Dumping data for table `sales_order`
--

LOCK TABLES `sales_order` WRITE;
/*!40000 ALTER TABLE `sales_order` DISABLE KEYS */;
INSERT INTO `sales_order` VALUES ('1','complete','complete',NULL,'f1053c','Flat Rate - Fixed',0,1,'1','0.0000',NULL,'0.0000',NULL,'5405.0000','5.0000',NULL,'5.0000',NULL,'0.0000',NULL,'5400.0000',NULL,'5400.0000',NULL,'0.0000',NULL,'0.0000',NULL,'1.0000','1.0000',NULL,'5405.0000','0.0000',NULL,NULL,'5405.0000',NULL,NULL,'0.0000',NULL,'0.0000',NULL,'5405.0000','5.0000',NULL,'5.0000',NULL,'0.0000',NULL,'0.0000','0.0000','5400.0000',NULL,'5400.0000',NULL,'0.0000',NULL,'0.0000',NULL,NULL,'5405.0000',NULL,NULL,'5405.0000','1.0000',NULL,NULL,NULL,1,1,'2',0,NULL,1,1,NULL,NULL,NULL,'2','1',NULL,NULL,NULL,NULL,'0.0000','5400.0000','0.0000',NULL,'0.0000','5400.0000','0.0000','1.0000',NULL,'000000001',NULL,'AED','markttimbol@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'AED',NULL,NULL,'AED',NULL,NULL,NULL,NULL,NULL,'127.0.0.1','flatrate_flatrate','AED','Main Website\nMain Website Store\n',NULL,NULL,'2017-04-13 07:57:25','2017-04-16 12:46:42',1,NULL,'0.0000','0.0000','0.0000',NULL,'0.0000','0.0000',NULL,NULL,'5.0000','5.0000',NULL,'0',NULL),('2','processing','processing',NULL,'474956','Flat Rate - Fixed',0,1,'2','0.0000',NULL,NULL,NULL,'355.0000','5.0000',NULL,NULL,NULL,'0.0000',NULL,'350.0000',NULL,NULL,NULL,'0.0000',NULL,NULL,NULL,'1.0000','1.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0.0000',NULL,NULL,NULL,'355.0000','5.0000',NULL,NULL,NULL,'0.0000',NULL,'0.0000','0.0000','350.0000',NULL,NULL,NULL,'0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1.0000',NULL,NULL,NULL,0,1,'4',1,NULL,1,1,NULL,NULL,NULL,'5','3',NULL,NULL,NULL,NULL,'0.0000','350.0000','355.0000',NULL,'0.0000','350.0000','355.0000','1.0000',NULL,'000000002',NULL,'AED','saber@example.com','Saber','Belgrith',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'AED',NULL,NULL,'AED',NULL,NULL,NULL,NULL,NULL,'127.0.0.1','flatrate_flatrate','AED','Main Website\nMain Website Store\n',NULL,NULL,'2017-04-16 12:42:12','2017-04-16 12:47:47',1,NULL,'0.0000','0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,'5.0000','5.0000',NULL,'0',NULL),('3','new','pending',NULL,'041aab','Flat Rate - Fixed',0,1,NULL,'0.0000',NULL,NULL,NULL,'354.0000','5.0000',NULL,NULL,NULL,'0.0000',NULL,'349.0000',NULL,NULL,NULL,'0.0000',NULL,NULL,NULL,'1.0000','1.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0.0000',NULL,NULL,NULL,'354.0000','5.0000',NULL,NULL,NULL,'0.0000',NULL,'0.0000','0.0000','349.0000',NULL,NULL,NULL,'0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1.0000',NULL,NULL,NULL,1,1,'6',0,NULL,1,1,NULL,NULL,NULL,'11','5',NULL,NULL,NULL,NULL,'0.0000','349.0000','354.0000',NULL,'0.0000','349.0000','354.0000','1.0000',NULL,'000000003',NULL,'AED','john@example.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'AED',NULL,NULL,'AED',NULL,NULL,NULL,NULL,NULL,'127.0.0.1','flatrate_flatrate','AED','Main Website\nMain Website Store\n',NULL,NULL,'2017-04-17 13:24:47','2017-04-17 13:24:48',1,NULL,'0.0000','0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,'5.0000','5.0000',NULL,'0',NULL),('4','processing','processing',NULL,'7e52b7','Flat Rate - Fixed',0,1,NULL,'0.0000',NULL,NULL,NULL,'354.0000','5.0000',NULL,NULL,NULL,'0.0000',NULL,'349.0000',NULL,NULL,NULL,'0.0000',NULL,NULL,NULL,'1.0000','1.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0.0000',NULL,NULL,NULL,'354.0000','5.0000',NULL,NULL,NULL,'0.0000',NULL,'0.0000','0.0000','349.0000',NULL,NULL,NULL,'0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1.0000',NULL,NULL,NULL,1,1,'8',0,NULL,1,1,NULL,NULL,NULL,'12','7',NULL,NULL,NULL,NULL,'0.0000','349.0000','354.0000',NULL,'0.0000','349.0000','354.0000','1.0000',NULL,'000000004',NULL,'AED','joanna@turla.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'AED',NULL,NULL,'AED',NULL,NULL,NULL,NULL,NULL,'127.0.0.1','flatrate_flatrate','AED','Main Website\nMain Website Store\n',NULL,NULL,'2017-04-17 13:33:17','2017-04-17 13:33:20',1,NULL,'0.0000','0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,'5.0000','5.0000',NULL,'0',NULL),('5','processing','processing',NULL,'6b2a9e','Flat Rate - Fixed',0,1,NULL,'0.0000',NULL,NULL,NULL,'354.0000','5.0000',NULL,NULL,NULL,'0.0000',NULL,'349.0000',NULL,NULL,NULL,'0.0000',NULL,NULL,NULL,'1.0000','1.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0.0000',NULL,NULL,NULL,'354.0000','5.0000',NULL,NULL,NULL,'0.0000',NULL,'0.0000','0.0000','349.0000',NULL,NULL,NULL,'0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1.0000',NULL,NULL,NULL,1,1,'10',0,NULL,1,1,NULL,NULL,NULL,'13','9',NULL,NULL,NULL,NULL,'0.0000','349.0000','354.0000',NULL,'0.0000','349.0000','354.0000','1.0000',NULL,'000000005',NULL,'AED','jomerie@turla.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'AED',NULL,NULL,'AED',NULL,NULL,NULL,NULL,NULL,'127.0.0.1','flatrate_flatrate','AED','Main Website\nMain Website Store\n',NULL,NULL,'2017-04-17 13:44:16','2017-04-17 13:44:19',1,NULL,'0.0000','0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,'5.0000','5.0000',NULL,'0',NULL),('6','processing','processing',NULL,'73def3','Flat Rate - Fixed',0,2,NULL,'0.0000',NULL,NULL,NULL,'710.0000','10.0000',NULL,NULL,NULL,'0.0000',NULL,'700.0000',NULL,NULL,NULL,'0.0000',NULL,NULL,NULL,'1.0000','1.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0.0000',NULL,NULL,NULL,'710.0000','10.0000',NULL,NULL,NULL,'0.0000',NULL,'0.0000','0.0000','700.0000',NULL,NULL,NULL,'0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2.0000',NULL,NULL,NULL,1,1,'12',0,NULL,1,1,NULL,NULL,NULL,'17','11',NULL,NULL,NULL,NULL,'0.0000','700.0000','710.0000',NULL,'0.0000','700.0000','710.0000','2.0000',NULL,'000000006',NULL,'AED','ikay@example.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'AED',NULL,NULL,'AED',NULL,NULL,NULL,NULL,NULL,'127.0.0.1','flatrate_flatrate','AED','Main Website\nUAE\nHome 2',NULL,NULL,'2017-04-20 08:37:37','2017-04-20 08:37:41',2,NULL,'0.0000','0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,'10.0000','10.0000',NULL,'0',NULL);
/*!40000 ALTER TABLE `sales_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_order_address`
--

DROP TABLE IF EXISTS `sales_order_address`;
CREATE TABLE `sales_order_address` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned DEFAULT NULL COMMENT 'Parent Id',
  `customer_address_id` int(11) DEFAULT NULL COMMENT 'Customer Address Id',
  `quote_address_id` int(11) DEFAULT NULL COMMENT 'Quote Address Id',
  `region_id` int(11) DEFAULT NULL COMMENT 'Region Id',
  `customer_id` int(11) DEFAULT NULL COMMENT 'Customer Id',
  `fax` varchar(255) DEFAULT NULL COMMENT 'Fax',
  `region` varchar(255) DEFAULT NULL COMMENT 'Region',
  `postcode` varchar(255) DEFAULT NULL COMMENT 'Postcode',
  `lastname` varchar(255) DEFAULT NULL COMMENT 'Lastname',
  `street` varchar(255) DEFAULT NULL COMMENT 'Street',
  `city` varchar(255) DEFAULT NULL COMMENT 'City',
  `email` varchar(255) DEFAULT NULL COMMENT 'Email',
  `telephone` varchar(255) DEFAULT NULL COMMENT 'Phone Number',
  `country_id` varchar(2) DEFAULT NULL COMMENT 'Country Id',
  `firstname` varchar(255) DEFAULT NULL COMMENT 'Firstname',
  `address_type` varchar(255) DEFAULT NULL COMMENT 'Address Type',
  `prefix` varchar(255) DEFAULT NULL COMMENT 'Prefix',
  `middlename` varchar(255) DEFAULT NULL COMMENT 'Middlename',
  `suffix` varchar(255) DEFAULT NULL COMMENT 'Suffix',
  `company` varchar(255) DEFAULT NULL COMMENT 'Company',
  `vat_id` text COMMENT 'Vat Id',
  `vat_is_valid` smallint(6) DEFAULT NULL COMMENT 'Vat Is Valid',
  `vat_request_id` text COMMENT 'Vat Request Id',
  `vat_request_date` text COMMENT 'Vat Request Date',
  `vat_request_success` smallint(6) DEFAULT NULL COMMENT 'Vat Request Success',
  PRIMARY KEY (`entity_id`),
  KEY `SALES_ORDER_ADDRESS_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order Address';

--
-- Dumping data for table `sales_order_address`
--

LOCK TABLES `sales_order_address` WRITE;
/*!40000 ALTER TABLE `sales_order_address` DISABLE KEYS */;
INSERT INTO `sales_order_address` VALUES ('1','1',NULL,NULL,NULL,NULL,NULL,'Dubai','00000','Timbol','Dubai','Dubai','markttimbol@gmail.com','+971 56 820 7189','AE','Mark','shipping',NULL,NULL,NULL,'Belpro',NULL,NULL,NULL,NULL,NULL),('2','1',NULL,NULL,NULL,NULL,NULL,'Dubai','00000','Timbol','Dubai','Dubai','markttimbol@gmail.com','+971 56 820 7189','AE','Mark','billing',NULL,NULL,NULL,'Belpro',NULL,NULL,NULL,NULL,NULL),('3','2','3',NULL,NULL,NULL,NULL,'Dubai','00000','Belgrith','708 Al Rigga\nDeira','Dubai','saber@example.com','+971 56 820 7189','AE','Saber','shipping',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('4','2',NULL,NULL,NULL,NULL,NULL,'Dubai','00000','Belgrith','708 Al Rigga\nDeira','Dubai','saber@example.com','+971 56 820 7189','AE','Saber','billing',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('5','3',NULL,NULL,NULL,NULL,NULL,'Dubai','12345','Doe','Dubai\nDubai','Dubai','john@example.com','+971 56 820 7189','AE','John','shipping',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('6','3',NULL,NULL,NULL,NULL,NULL,'Dubai','12345','Doe','Dubai\nDubai','Dubai','john@example.com','+971 56 820 7189','AE','John','billing',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('7','4',NULL,NULL,NULL,NULL,NULL,NULL,'123456','Turla','Dubai\nDubai','Dubai','joanna@turla.com','+971 56 820 7189','AE','Joanna','shipping',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('8','4',NULL,NULL,NULL,NULL,NULL,NULL,'123456','Turla','Dubai\nDubai','Dubai','joanna@turla.com','+971 56 820 7189','AE','Joanna','billing',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('9','5',NULL,NULL,NULL,NULL,NULL,NULL,'123456','Turla','Dubai\nDubai','Dubai','jomerie@turla.com','+971 56 820 7189','AE','Jomerie','shipping',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('10','5',NULL,NULL,NULL,NULL,NULL,NULL,'123456','Turla','Dubai\nDubai','Dubai','jomerie@turla.com','+971 56 820 7189','AE','Jomerie','billing',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('11','6',NULL,NULL,NULL,NULL,NULL,NULL,'12345','Bolusan','Dubai\nDubai','Dubai','ikay@example.com','+971 56 820 7189','AE','Nica','shipping',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('12','6',NULL,NULL,NULL,NULL,NULL,NULL,'12345','Bolusan','Dubai\nDubai','Dubai','ikay@example.com','+971 56 820 7189','AE','Nica','billing',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `sales_order_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_order_aggregated_created`
--

DROP TABLE IF EXISTS `sales_order_aggregated_created`;
CREATE TABLE `sales_order_aggregated_created` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) NOT NULL COMMENT 'Order Status',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `total_qty_ordered` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Qty Ordered',
  `total_qty_invoiced` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Qty Invoiced',
  `total_income_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Income Amount',
  `total_revenue_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Revenue Amount',
  `total_profit_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Profit Amount',
  `total_invoiced_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Invoiced Amount',
  `total_canceled_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Canceled Amount',
  `total_paid_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Paid Amount',
  `total_refunded_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Refunded Amount',
  `total_tax_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Tax Amount',
  `total_tax_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Tax Amount Actual',
  `total_shipping_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Shipping Amount',
  `total_shipping_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Shipping Amount Actual',
  `total_discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Discount Amount',
  `total_discount_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Discount Amount Actual',
  PRIMARY KEY (`id`),
  UNIQUE KEY `SALES_ORDER_AGGREGATED_CREATED_PERIOD_STORE_ID_ORDER_STATUS` (`period`,`store_id`,`order_status`),
  KEY `SALES_ORDER_AGGREGATED_CREATED_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Aggregated Created';

--
-- Table structure for table `sales_order_aggregated_updated`
--

DROP TABLE IF EXISTS `sales_order_aggregated_updated`;
CREATE TABLE `sales_order_aggregated_updated` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) NOT NULL COMMENT 'Order Status',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `total_qty_ordered` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Qty Ordered',
  `total_qty_invoiced` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Qty Invoiced',
  `total_income_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Income Amount',
  `total_revenue_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Revenue Amount',
  `total_profit_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Profit Amount',
  `total_invoiced_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Invoiced Amount',
  `total_canceled_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Canceled Amount',
  `total_paid_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Paid Amount',
  `total_refunded_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Refunded Amount',
  `total_tax_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Tax Amount',
  `total_tax_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Tax Amount Actual',
  `total_shipping_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Shipping Amount',
  `total_shipping_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Shipping Amount Actual',
  `total_discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Discount Amount',
  `total_discount_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Discount Amount Actual',
  PRIMARY KEY (`id`),
  UNIQUE KEY `SALES_ORDER_AGGREGATED_UPDATED_PERIOD_STORE_ID_ORDER_STATUS` (`period`,`store_id`,`order_status`),
  KEY `SALES_ORDER_AGGREGATED_UPDATED_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Aggregated Updated';

--
-- Table structure for table `sales_order_grid`
--

DROP TABLE IF EXISTS `sales_order_grid`;
CREATE TABLE `sales_order_grid` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `status` varchar(32) DEFAULT NULL COMMENT 'Status',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `store_name` varchar(255) DEFAULT NULL COMMENT 'Store Name',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Id',
  `base_grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `base_total_paid` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Paid',
  `grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Grand Total',
  `total_paid` decimal(12,4) DEFAULT NULL COMMENT 'Total Paid',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `base_currency_code` varchar(3) DEFAULT NULL COMMENT 'Base Currency Code',
  `order_currency_code` varchar(255) DEFAULT NULL COMMENT 'Order Currency Code',
  `shipping_name` varchar(255) DEFAULT NULL COMMENT 'Shipping Name',
  `billing_name` varchar(255) DEFAULT NULL COMMENT 'Billing Name',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `billing_address` varchar(255) DEFAULT NULL COMMENT 'Billing Address',
  `shipping_address` varchar(255) DEFAULT NULL COMMENT 'Shipping Address',
  `shipping_information` varchar(255) DEFAULT NULL COMMENT 'Shipping Method Name',
  `customer_email` varchar(255) DEFAULT NULL COMMENT 'Customer Email',
  `customer_group` varchar(255) DEFAULT NULL COMMENT 'Customer Group',
  `subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal',
  `shipping_and_handling` decimal(12,4) DEFAULT NULL COMMENT 'Shipping and handling amount',
  `customer_name` varchar(255) DEFAULT NULL COMMENT 'Customer Name',
  `payment_method` varchar(255) DEFAULT NULL COMMENT 'Payment Method',
  `total_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Total Refunded',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `SALES_ORDER_GRID_INCREMENT_ID_STORE_ID` (`increment_id`,`store_id`),
  KEY `SALES_ORDER_GRID_STATUS` (`status`),
  KEY `SALES_ORDER_GRID_STORE_ID` (`store_id`),
  KEY `SALES_ORDER_GRID_BASE_GRAND_TOTAL` (`base_grand_total`),
  KEY `SALES_ORDER_GRID_BASE_TOTAL_PAID` (`base_total_paid`),
  KEY `SALES_ORDER_GRID_GRAND_TOTAL` (`grand_total`),
  KEY `SALES_ORDER_GRID_TOTAL_PAID` (`total_paid`),
  KEY `SALES_ORDER_GRID_SHIPPING_NAME` (`shipping_name`),
  KEY `SALES_ORDER_GRID_BILLING_NAME` (`billing_name`),
  KEY `SALES_ORDER_GRID_CREATED_AT` (`created_at`),
  KEY `SALES_ORDER_GRID_CUSTOMER_ID` (`customer_id`),
  KEY `SALES_ORDER_GRID_UPDATED_AT` (`updated_at`),
  FULLTEXT KEY `FTI_65B9E9925EC58F0C7C2E2F6379C233E7` (`increment_id`,`billing_name`,`shipping_name`,`shipping_address`,`billing_address`,`customer_name`,`customer_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order Grid';

--
-- Dumping data for table `sales_order_grid`
--

LOCK TABLES `sales_order_grid` WRITE;
/*!40000 ALTER TABLE `sales_order_grid` DISABLE KEYS */;
INSERT INTO `sales_order_grid` VALUES ('1','complete',1,'Main Website\nMain Website Store\n','1','5405.0000','5405.0000','5405.0000','5405.0000','000000001','AED','AED','Mark Timbol','Mark Timbol','2017-04-13 07:57:25','2017-04-16 12:46:42','Dubai Dubai Dubai 00000','Dubai Dubai Dubai 00000','Flat Rate - Fixed','markttimbol@gmail.com','0','5400.0000','5.0000','','checkmo',NULL),('2','processing',1,'Main Website\nMain Website Store\n','2','355.0000',NULL,'355.0000',NULL,'000000002','AED','AED','Saber Belgrith','Saber Belgrith','2017-04-16 12:42:12','2017-04-16 12:47:47','708 Al Rigga\nDeira Dubai Dubai 00000','708 Al Rigga\nDeira Dubai Dubai 00000','Flat Rate - Fixed','saber@example.com','1','350.0000','5.0000','Saber Belgrith','checkmo',NULL),('3','pending',1,'Main Website\nMain Website Store\n',NULL,'354.0000',NULL,'354.0000',NULL,'000000003','AED','AED','John Doe','John Doe','2017-04-17 13:24:47','2017-04-17 13:24:47','Dubai\nDubai Dubai Dubai 12345','Dubai\nDubai Dubai Dubai 12345','Flat Rate - Fixed','john@example.com','0','349.0000','5.0000','','banktransfer',NULL),('4','processing',1,'Main Website\nMain Website Store\n',NULL,'354.0000',NULL,'354.0000',NULL,'000000004','AED','AED','Joanna Turla','Joanna Turla','2017-04-17 13:33:17','2017-04-17 13:33:17','Dubai\nDubai Dubai 123456','Dubai\nDubai Dubai 123456','Flat Rate - Fixed','joanna@turla.com','0','349.0000','5.0000','','braintree',NULL),('5','processing',1,'Main Website\nMain Website Store\n',NULL,'354.0000',NULL,'354.0000',NULL,'000000005','AED','AED','Jomerie Turla','Jomerie Turla','2017-04-17 13:44:16','2017-04-17 13:44:16','Dubai\nDubai Dubai 123456','Dubai\nDubai Dubai 123456','Flat Rate - Fixed','jomerie@turla.com','0','349.0000','5.0000','','braintree',NULL),('6','processing',2,'Main Website\nUAE\nHome 2',NULL,'710.0000',NULL,'710.0000',NULL,'000000006','AED','AED','Nica Bolusan','Nica Bolusan','2017-04-20 08:37:37','2017-04-20 08:37:37','Dubai\nDubai Dubai 12345','Dubai\nDubai Dubai 12345','Flat Rate - Fixed','ikay@example.com','0','700.0000','10.0000','','braintree',NULL);
/*!40000 ALTER TABLE `sales_order_grid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_order_item`
--

DROP TABLE IF EXISTS `sales_order_item`;
CREATE TABLE `sales_order_item` (
  `item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Item Id',
  `order_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Order Id',
  `parent_item_id` int(10) unsigned DEFAULT NULL COMMENT 'Parent Item Id',
  `quote_item_id` int(10) unsigned DEFAULT NULL COMMENT 'Quote Item Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `product_type` varchar(255) DEFAULT NULL COMMENT 'Product Type',
  `product_options` text COMMENT 'Product Options',
  `weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Weight',
  `is_virtual` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Virtual',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `description` text COMMENT 'Description',
  `applied_rule_ids` text COMMENT 'Applied Rule Ids',
  `additional_data` text COMMENT 'Additional Data',
  `is_qty_decimal` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Qty Decimal',
  `no_discount` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'No Discount',
  `qty_backordered` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Backordered',
  `qty_canceled` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Canceled',
  `qty_invoiced` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Invoiced',
  `qty_ordered` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Ordered',
  `qty_refunded` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Refunded',
  `qty_shipped` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Shipped',
  `base_cost` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Cost',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `base_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Price',
  `original_price` decimal(12,4) DEFAULT NULL COMMENT 'Original Price',
  `base_original_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Original Price',
  `tax_percent` decimal(12,4) DEFAULT '0.0000' COMMENT 'Tax Percent',
  `tax_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Tax Amount',
  `base_tax_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Tax Amount',
  `tax_invoiced` decimal(12,4) DEFAULT '0.0000' COMMENT 'Tax Invoiced',
  `base_tax_invoiced` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Tax Invoiced',
  `discount_percent` decimal(12,4) DEFAULT '0.0000' COMMENT 'Discount Percent',
  `discount_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Discount Amount',
  `base_discount_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Discount Amount',
  `discount_invoiced` decimal(12,4) DEFAULT '0.0000' COMMENT 'Discount Invoiced',
  `base_discount_invoiced` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Discount Invoiced',
  `amount_refunded` decimal(12,4) DEFAULT '0.0000' COMMENT 'Amount Refunded',
  `base_amount_refunded` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Amount Refunded',
  `row_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Row Total',
  `base_row_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Row Total',
  `row_invoiced` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Row Invoiced',
  `base_row_invoiced` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Row Invoiced',
  `row_weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Row Weight',
  `base_tax_before_discount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Before Discount',
  `tax_before_discount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Before Discount',
  `ext_order_item_id` varchar(255) DEFAULT NULL COMMENT 'Ext Order Item Id',
  `locked_do_invoice` smallint(5) unsigned DEFAULT NULL COMMENT 'Locked Do Invoice',
  `locked_do_ship` smallint(5) unsigned DEFAULT NULL COMMENT 'Locked Do Ship',
  `price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Price Incl Tax',
  `base_price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Price Incl Tax',
  `row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Row Total Incl Tax',
  `base_row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total Incl Tax',
  `discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Amount',
  `base_discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Amount',
  `discount_tax_compensation_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Invoiced',
  `base_discount_tax_compensation_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Invoiced',
  `discount_tax_compensation_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Refunded',
  `base_discount_tax_compensation_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Refunded',
  `tax_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Tax Canceled',
  `discount_tax_compensation_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Canceled',
  `tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Tax Refunded',
  `base_tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Refunded',
  `discount_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Discount Refunded',
  `base_discount_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Refunded',
  `free_shipping` smallint(6) DEFAULT NULL,
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message Id',
  `gift_message_available` int(11) DEFAULT NULL COMMENT 'Gift Message Available',
  `weee_tax_applied` text COMMENT 'Weee Tax Applied',
  `weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Amount',
  `weee_tax_applied_row_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Row Amount',
  `weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Disposition',
  `weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Row Disposition',
  `base_weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Amount',
  `base_weee_tax_applied_row_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Row Amnt',
  `base_weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Disposition',
  `base_weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Row Disposition',
  PRIMARY KEY (`item_id`),
  KEY `SALES_ORDER_ITEM_ORDER_ID` (`order_id`),
  KEY `SALES_ORDER_ITEM_STORE_ID` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order Item';

--
-- Dumping data for table `sales_order_item`
--

LOCK TABLES `sales_order_item` WRITE;
/*!40000 ALTER TABLE `sales_order_item` DISABLE KEYS */;
INSERT INTO `sales_order_item` VALUES ('1','1',NULL,'2',1,'2017-04-13 07:57:25','2017-04-16 12:46:42','1','simple','a:1:{s:15:\"info_buyRequest\";a:3:{s:4:\"uenc\";s:72:\"aHR0cDovLzEyNy4wLjAuMTo4ODg4L21haXNvbmRlc2ZsZXVycy9zaG9wLW9ubGluZS5odG1s\";s:7:\"product\";s:1:\"1\";s:3:\"qty\";d:1;}}','1.0000',0,'Ref 315','114 orange roses in acrylic clear large rectangular box',NULL,NULL,NULL,0,0,NULL,'0.0000','1.0000','1.0000','0.0000','1.0000',NULL,'5400.0000','5400.0000','5400.0000','5400.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','5400.0000','5400.0000','5400.0000','5400.0000','1.0000',NULL,NULL,NULL,NULL,NULL,'5400.0000','5400.0000','5400.0000','5400.0000','0.0000','0.0000','0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'[]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('2','2',NULL,'10',1,'2017-04-16 12:42:12','2017-04-16 12:47:47','11','simple','a:1:{s:15:\"info_buyRequest\";a:3:{s:4:\"uenc\";s:128:\"aHR0cDovLzEyNy4wLjAuMTo4ODg4L21haXNvbmRlc2ZsZXVycy9mcmVzaC1yb3Nlcy9mcmVzaC1mbG93ZXJzLWluLXNtYWxsLWJsYWNrLXNxdWFyZS1ib3guaHRtbA,,\";s:7:\"product\";s:2:\"11\";s:3:\"qty\";d:1;}}','1.0000',0,'Ref 130','Yellow roses in mdf black small square box',NULL,NULL,NULL,0,0,NULL,'0.0000','0.0000','1.0000','0.0000','1.0000',NULL,'350.0000','350.0000','350.0000','350.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','350.0000','350.0000','0.0000','0.0000','1.0000',NULL,NULL,NULL,NULL,NULL,'350.0000','350.0000','350.0000','350.0000','0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('3','3',NULL,'16',1,'2017-04-17 13:24:47','2017-04-17 13:24:47','11','simple','a:1:{s:15:\"info_buyRequest\";a:3:{s:4:\"uenc\";s:128:\"aHR0cDovLzEyNy4wLjAuMTo4ODg4L21haXNvbmRlc2ZsZXVycy9mcmVzaC1yb3Nlcy9mcmVzaC1mbG93ZXJzLWluLXNtYWxsLWJsYWNrLXNxdWFyZS1ib3guaHRtbA,,\";s:7:\"product\";s:2:\"11\";s:3:\"qty\";d:1;}}','1.0000',0,'Ref 130','Yellow roses in mdf black small square box',NULL,NULL,NULL,0,0,NULL,'0.0000','0.0000','1.0000','0.0000','0.0000',NULL,'349.0000','349.0000','350.0000','350.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','349.0000','349.0000','0.0000','0.0000','1.0000',NULL,NULL,NULL,NULL,NULL,'349.0000','349.0000','349.0000','349.0000','0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('4','4',NULL,'17',1,'2017-04-17 13:33:17','2017-04-17 13:33:17','11','simple','a:1:{s:15:\"info_buyRequest\";a:3:{s:4:\"uenc\";s:128:\"aHR0cDovLzEyNy4wLjAuMTo4ODg4L21haXNvbmRlc2ZsZXVycy9mcmVzaC1yb3Nlcy9mcmVzaC1mbG93ZXJzLWluLXNtYWxsLWJsYWNrLXNxdWFyZS1ib3guaHRtbA,,\";s:7:\"product\";s:2:\"11\";s:3:\"qty\";d:1;}}','1.0000',0,'Ref 130','Yellow roses in mdf black small square box',NULL,NULL,NULL,0,0,NULL,'0.0000','0.0000','1.0000','0.0000','0.0000',NULL,'349.0000','349.0000','350.0000','350.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','349.0000','349.0000','0.0000','0.0000','1.0000',NULL,NULL,NULL,NULL,NULL,'349.0000','349.0000','349.0000','349.0000','0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('5','5',NULL,'18',1,'2017-04-17 13:44:16','2017-04-17 13:44:16','11','simple','a:1:{s:15:\"info_buyRequest\";a:3:{s:4:\"uenc\";s:128:\"aHR0cDovLzEyNy4wLjAuMTo4ODg4L21haXNvbmRlc2ZsZXVycy9mcmVzaC1yb3Nlcy9mcmVzaC1mbG93ZXJzLWluLXNtYWxsLWJsYWNrLXNxdWFyZS1ib3guaHRtbA,,\";s:7:\"product\";s:2:\"11\";s:3:\"qty\";d:1;}}','1.0000',0,'Ref 130','Yellow roses in mdf black small square box',NULL,NULL,NULL,0,0,NULL,'0.0000','0.0000','1.0000','0.0000','0.0000',NULL,'349.0000','349.0000','350.0000','350.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','349.0000','349.0000','0.0000','0.0000','1.0000',NULL,NULL,NULL,NULL,NULL,'349.0000','349.0000','349.0000','349.0000','0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('6','6',NULL,'22',2,'2017-04-20 08:37:37','2017-04-20 08:37:37','11','simple','a:1:{s:15:\"info_buyRequest\";a:3:{s:4:\"uenc\";s:112:\"aHR0cDovLzEyNy4wLjAuMTo4ODg4L21haXNvbmRlc2ZsZXVycy9jYXRhbG9nL2NhdGVnb3J5L3ZpZXcvcy9mcmVzaC1yb3Nlcy9pZC8zLz9wPTI,\";s:7:\"product\";s:2:\"11\";s:3:\"qty\";d:1;}}','1.0000',0,'Ref 130','Yellow roses in mdf black small square box',NULL,NULL,NULL,0,0,NULL,'0.0000','0.0000','1.0000','0.0000','0.0000',NULL,'350.0000','350.0000','350.0000','350.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','350.0000','350.0000','0.0000','0.0000','1.0000',NULL,NULL,NULL,NULL,NULL,'350.0000','350.0000','350.0000','350.0000','0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('7','6',NULL,'23',2,'2017-04-20 08:37:37','2017-04-20 08:37:37','3','simple','a:1:{s:15:\"info_buyRequest\";a:5:{s:4:\"uenc\";s:112:\"aHR0cDovLzEyNy4wLjAuMTo4ODg4L21haXNvbmRlc2ZsZXVycy93aGl0ZS1yb3Nlcy1pbi1tZGYtYmxhY2stc21hbGwtc3F1YXJlLWJveC5odG1s\";s:7:\"product\";s:1:\"3\";s:28:\"selected_configurable_option\";s:0:\"\";s:15:\"related_product\";s:0:\"\";s:3:\"qty\";s:1:\"1\";}}','1.0000',0,'Ref 140','White roses in mdf black small square box',NULL,NULL,NULL,0,0,NULL,'0.0000','0.0000','1.0000','0.0000','0.0000',NULL,'350.0000','350.0000','350.0000','350.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','350.0000','350.0000','0.0000','0.0000','1.0000',NULL,NULL,NULL,NULL,NULL,'350.0000','350.0000','350.0000','350.0000','0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `sales_order_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_order_payment`
--

DROP TABLE IF EXISTS `sales_order_payment`;
CREATE TABLE `sales_order_payment` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `base_shipping_captured` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Captured',
  `shipping_captured` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Captured',
  `amount_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Amount Refunded',
  `base_amount_paid` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Paid',
  `amount_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Amount Canceled',
  `base_amount_authorized` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Authorized',
  `base_amount_paid_online` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Paid Online',
  `base_amount_refunded_online` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Refunded Online',
  `base_shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Amount',
  `shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Amount',
  `amount_paid` decimal(12,4) DEFAULT NULL COMMENT 'Amount Paid',
  `amount_authorized` decimal(12,4) DEFAULT NULL COMMENT 'Amount Authorized',
  `base_amount_ordered` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Ordered',
  `base_shipping_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Refunded',
  `shipping_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Refunded',
  `base_amount_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Refunded',
  `amount_ordered` decimal(12,4) DEFAULT NULL COMMENT 'Amount Ordered',
  `base_amount_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Canceled',
  `quote_payment_id` int(11) DEFAULT NULL COMMENT 'Quote Payment Id',
  `additional_data` text COMMENT 'Additional Data',
  `cc_exp_month` varchar(12) DEFAULT NULL COMMENT 'Cc Exp Month',
  `cc_ss_start_year` varchar(12) DEFAULT NULL COMMENT 'Cc Ss Start Year',
  `echeck_bank_name` varchar(128) DEFAULT NULL COMMENT 'Echeck Bank Name',
  `method` varchar(128) DEFAULT NULL COMMENT 'Method',
  `cc_debug_request_body` varchar(32) DEFAULT NULL COMMENT 'Cc Debug Request Body',
  `cc_secure_verify` varchar(32) DEFAULT NULL COMMENT 'Cc Secure Verify',
  `protection_eligibility` varchar(32) DEFAULT NULL COMMENT 'Protection Eligibility',
  `cc_approval` varchar(32) DEFAULT NULL COMMENT 'Cc Approval',
  `cc_last_4` varchar(100) DEFAULT NULL COMMENT 'Cc Last 4',
  `cc_status_description` varchar(32) DEFAULT NULL COMMENT 'Cc Status Description',
  `echeck_type` varchar(32) DEFAULT NULL COMMENT 'Echeck Type',
  `cc_debug_response_serialized` varchar(32) DEFAULT NULL COMMENT 'Cc Debug Response Serialized',
  `cc_ss_start_month` varchar(128) DEFAULT NULL COMMENT 'Cc Ss Start Month',
  `echeck_account_type` varchar(255) DEFAULT NULL COMMENT 'Echeck Account Type',
  `last_trans_id` varchar(32) DEFAULT NULL COMMENT 'Last Trans Id',
  `cc_cid_status` varchar(32) DEFAULT NULL COMMENT 'Cc Cid Status',
  `cc_owner` varchar(128) DEFAULT NULL COMMENT 'Cc Owner',
  `cc_type` varchar(32) DEFAULT NULL COMMENT 'Cc Type',
  `po_number` varchar(32) DEFAULT NULL COMMENT 'Po Number',
  `cc_exp_year` varchar(4) DEFAULT NULL COMMENT 'Cc Exp Year',
  `cc_status` varchar(4) DEFAULT NULL COMMENT 'Cc Status',
  `echeck_routing_number` varchar(32) DEFAULT NULL COMMENT 'Echeck Routing Number',
  `account_status` varchar(32) DEFAULT NULL COMMENT 'Account Status',
  `anet_trans_method` varchar(32) DEFAULT NULL COMMENT 'Anet Trans Method',
  `cc_debug_response_body` varchar(32) DEFAULT NULL COMMENT 'Cc Debug Response Body',
  `cc_ss_issue` varchar(32) DEFAULT NULL COMMENT 'Cc Ss Issue',
  `echeck_account_name` varchar(32) DEFAULT NULL COMMENT 'Echeck Account Name',
  `cc_avs_status` varchar(32) DEFAULT NULL COMMENT 'Cc Avs Status',
  `cc_number_enc` varchar(32) DEFAULT NULL COMMENT 'Cc Number Enc',
  `cc_trans_id` varchar(32) DEFAULT NULL COMMENT 'Cc Trans Id',
  `address_status` varchar(32) DEFAULT NULL COMMENT 'Address Status',
  `additional_information` text COMMENT 'Additional Information',
  PRIMARY KEY (`entity_id`),
  KEY `SALES_ORDER_PAYMENT_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order Payment';

--
-- Dumping data for table `sales_order_payment`
--

LOCK TABLES `sales_order_payment` WRITE;
/*!40000 ALTER TABLE `sales_order_payment` DISABLE KEYS */;
INSERT INTO `sales_order_payment` VALUES ('1','1','5.0000','5.0000',NULL,'5405.0000',NULL,NULL,NULL,NULL,'5.0000','5.0000','5405.0000',NULL,'5405.0000',NULL,NULL,NULL,'5405.0000',NULL,NULL,NULL,NULL,NULL,NULL,'checkmo',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a:3:{s:12:\"method_title\";s:19:\"Check / Money order\";s:10:\"payable_to\";N;s:15:\"mailing_address\";N;}'),('2','2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'5.0000','5.0000',NULL,NULL,'355.0000',NULL,NULL,NULL,'355.0000',NULL,NULL,NULL,NULL,NULL,NULL,'checkmo',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a:3:{s:12:\"method_title\";s:19:\"Check / Money order\";s:10:\"payable_to\";N;s:15:\"mailing_address\";N;}'),('3','3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'5.0000','5.0000',NULL,NULL,'354.0000',NULL,NULL,NULL,'354.0000',NULL,NULL,NULL,NULL,NULL,NULL,'banktransfer',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a:2:{s:12:\"method_title\";s:21:\"Bank Transfer Payment\";s:12:\"instructions\";s:41:\"Instructions on the Bank Transfer Payment\";}'),('4','4',NULL,NULL,NULL,NULL,NULL,'354.0000',NULL,NULL,'5.0000','5.0000',NULL,'354.0000','354.0000',NULL,NULL,NULL,'354.0000',NULL,NULL,NULL,'01',NULL,NULL,'braintree',NULL,NULL,NULL,NULL,'1111',NULL,NULL,NULL,NULL,NULL,'58zqan2b',NULL,NULL,'VI',NULL,'2020',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'58zqan2b',NULL,'a:9:{s:12:\"method_title\";s:23:\"Credit Card (Braintree)\";s:25:\"avsPostalCodeResponseCode\";s:1:\"M\";s:28:\"avsStreetAddressResponseCode\";s:1:\"M\";s:15:\"cvvResponseCode\";s:1:\"M\";s:26:\"processorAuthorizationCode\";s:6:\"54P1ZW\";s:21:\"processorResponseCode\";s:4:\"1000\";s:21:\"processorResponseText\";s:8:\"Approved\";s:9:\"cc_number\";s:9:\"xxxx-1111\";s:7:\"cc_type\";s:4:\"Visa\";}'),('5','5',NULL,NULL,NULL,NULL,NULL,'354.0000',NULL,NULL,'5.0000','5.0000',NULL,'354.0000','354.0000',NULL,NULL,NULL,'354.0000',NULL,NULL,NULL,'01',NULL,NULL,'braintree',NULL,NULL,NULL,NULL,'1881',NULL,NULL,NULL,NULL,NULL,'2me74p29',NULL,NULL,'VI',NULL,'2019',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2me74p29',NULL,'a:9:{s:12:\"method_title\";s:11:\"Credit Card\";s:25:\"avsPostalCodeResponseCode\";s:1:\"M\";s:28:\"avsStreetAddressResponseCode\";s:1:\"M\";s:15:\"cvvResponseCode\";s:1:\"M\";s:26:\"processorAuthorizationCode\";s:6:\"ZB9F5N\";s:21:\"processorResponseCode\";s:4:\"1000\";s:21:\"processorResponseText\";s:8:\"Approved\";s:9:\"cc_number\";s:9:\"xxxx-1881\";s:7:\"cc_type\";s:4:\"Visa\";}'),('6','6',NULL,NULL,NULL,NULL,NULL,'710.0000',NULL,NULL,'10.0000','10.0000',NULL,'710.0000','710.0000',NULL,NULL,NULL,'710.0000',NULL,NULL,NULL,'01',NULL,NULL,'braintree',NULL,NULL,NULL,NULL,'1111',NULL,NULL,NULL,NULL,NULL,'7r8eptev',NULL,NULL,'VI',NULL,'2020',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'7r8eptev',NULL,'a:9:{s:12:\"method_title\";s:11:\"Credit Card\";s:25:\"avsPostalCodeResponseCode\";s:1:\"M\";s:28:\"avsStreetAddressResponseCode\";s:1:\"M\";s:15:\"cvvResponseCode\";s:1:\"M\";s:26:\"processorAuthorizationCode\";s:6:\"2VGDP7\";s:21:\"processorResponseCode\";s:4:\"1000\";s:21:\"processorResponseText\";s:8:\"Approved\";s:9:\"cc_number\";s:9:\"xxxx-1111\";s:7:\"cc_type\";s:4:\"Visa\";}');
/*!40000 ALTER TABLE `sales_order_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_order_status`
--

DROP TABLE IF EXISTS `sales_order_status`;
CREATE TABLE `sales_order_status` (
  `status` varchar(32) NOT NULL COMMENT 'Status',
  `label` varchar(128) NOT NULL COMMENT 'Label',
  PRIMARY KEY (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Status Table';

--
-- Dumping data for table `sales_order_status`
--

LOCK TABLES `sales_order_status` WRITE;
/*!40000 ALTER TABLE `sales_order_status` DISABLE KEYS */;
INSERT INTO `sales_order_status` VALUES ('canceled','Canceled'),('closed','Closed'),('complete','Complete'),('fraud','Suspected Fraud'),('holded','On Hold'),('payment_review','Payment Review'),('paypal_canceled_reversal','PayPal Canceled Reversal'),('paypal_reversed','PayPal Reversed'),('pending','Pending'),('pending_payment','Pending Payment'),('pending_paypal','Pending PayPal'),('processing','Processing');
/*!40000 ALTER TABLE `sales_order_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_order_status_history`
--

DROP TABLE IF EXISTS `sales_order_status_history`;
CREATE TABLE `sales_order_status_history` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `is_customer_notified` int(11) DEFAULT NULL COMMENT 'Is Customer Notified',
  `is_visible_on_front` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Visible On Front',
  `comment` text COMMENT 'Comment',
  `status` varchar(32) DEFAULT NULL COMMENT 'Status',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `entity_name` varchar(32) DEFAULT NULL COMMENT 'Shows what entity history is bind to.',
  PRIMARY KEY (`entity_id`),
  KEY `SALES_ORDER_STATUS_HISTORY_PARENT_ID` (`parent_id`),
  KEY `SALES_ORDER_STATUS_HISTORY_CREATED_AT` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order Status History';

--
-- Dumping data for table `sales_order_status_history`
--

LOCK TABLES `sales_order_status_history` WRITE;
/*!40000 ALTER TABLE `sales_order_status_history` DISABLE KEYS */;
INSERT INTO `sales_order_status_history` VALUES ('1','4',NULL,0,'Authorized amount of AED354.00. Transaction ID: \"58zqan2b\"','processing','2017-04-17 13:33:17','order'),('2','5',NULL,0,'Authorized amount of AED354.00. Transaction ID: \"2me74p29\"','processing','2017-04-17 13:44:16','order'),('3','6',NULL,0,'Authorized amount of AED710.00. Transaction ID: \"7r8eptev\"','processing','2017-04-20 08:37:37','order');
/*!40000 ALTER TABLE `sales_order_status_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_order_status_label`
--

DROP TABLE IF EXISTS `sales_order_status_label`;
CREATE TABLE `sales_order_status_label` (
  `status` varchar(32) NOT NULL COMMENT 'Status',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  `label` varchar(128) NOT NULL COMMENT 'Label',
  PRIMARY KEY (`status`,`store_id`),
  KEY `SALES_ORDER_STATUS_LABEL_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Status Label Table';

--
-- Table structure for table `sales_order_status_state`
--

DROP TABLE IF EXISTS `sales_order_status_state`;
CREATE TABLE `sales_order_status_state` (
  `status` varchar(32) NOT NULL COMMENT 'Status',
  `state` varchar(32) NOT NULL COMMENT 'Label',
  `is_default` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Default',
  `visible_on_front` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Visible on front',
  PRIMARY KEY (`status`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Status Table';

--
-- Dumping data for table `sales_order_status_state`
--

LOCK TABLES `sales_order_status_state` WRITE;
/*!40000 ALTER TABLE `sales_order_status_state` DISABLE KEYS */;
INSERT INTO `sales_order_status_state` VALUES ('canceled','canceled',1,1),('closed','closed',1,1),('complete','complete',1,1),('fraud','payment_review',0,1),('fraud','processing',0,1),('holded','holded',1,1),('payment_review','payment_review',1,1),('pending','new',1,1),('pending_payment','pending_payment',1,0),('processing','processing',1,1);
/*!40000 ALTER TABLE `sales_order_status_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_order_tax`
--

DROP TABLE IF EXISTS `sales_order_tax`;
CREATE TABLE `sales_order_tax` (
  `tax_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Tax Id',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  `code` varchar(255) DEFAULT NULL COMMENT 'Code',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  `percent` decimal(12,4) DEFAULT NULL COMMENT 'Percent',
  `amount` decimal(12,4) DEFAULT NULL COMMENT 'Amount',
  `priority` int(11) NOT NULL COMMENT 'Priority',
  `position` int(11) NOT NULL COMMENT 'Position',
  `base_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount',
  `process` smallint(6) NOT NULL COMMENT 'Process',
  `base_real_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Real Amount',
  PRIMARY KEY (`tax_id`),
  KEY `SALES_ORDER_TAX_ORDER_ID_PRIORITY_POSITION` (`order_id`,`priority`,`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Tax Table';

--
-- Table structure for table `sales_order_tax_item`
--

DROP TABLE IF EXISTS `sales_order_tax_item`;
CREATE TABLE `sales_order_tax_item` (
  `tax_item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Tax Item Id',
  `tax_id` int(10) unsigned NOT NULL COMMENT 'Tax Id',
  `item_id` int(10) unsigned DEFAULT NULL COMMENT 'Item Id',
  `tax_percent` decimal(12,4) NOT NULL COMMENT 'Real Tax Percent For Item',
  `amount` decimal(12,4) NOT NULL COMMENT 'Tax amount for the item and tax rate',
  `base_amount` decimal(12,4) NOT NULL COMMENT 'Base tax amount for the item and tax rate',
  `real_amount` decimal(12,4) NOT NULL COMMENT 'Real tax amount for the item and tax rate',
  `real_base_amount` decimal(12,4) NOT NULL COMMENT 'Real base tax amount for the item and tax rate',
  `associated_item_id` int(10) unsigned DEFAULT NULL COMMENT 'Id of the associated item',
  `taxable_item_type` varchar(32) NOT NULL COMMENT 'Type of the taxable item',
  PRIMARY KEY (`tax_item_id`),
  UNIQUE KEY `SALES_ORDER_TAX_ITEM_TAX_ID_ITEM_ID` (`tax_id`,`item_id`),
  KEY `SALES_ORDER_TAX_ITEM_ITEM_ID` (`item_id`),
  KEY `SALES_ORDER_TAX_ITEM_ASSOCIATED_ITEM_ID_SALES_ORDER_ITEM_ITEM_ID` (`associated_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Tax Item';

--
-- Table structure for table `sales_payment_transaction`
--

DROP TABLE IF EXISTS `sales_payment_transaction`;
CREATE TABLE `sales_payment_transaction` (
  `transaction_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Transaction Id',
  `parent_id` int(10) unsigned DEFAULT NULL COMMENT 'Parent Id',
  `order_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Order Id',
  `payment_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Payment Id',
  `txn_id` varchar(100) DEFAULT NULL COMMENT 'Txn Id',
  `parent_txn_id` varchar(100) DEFAULT NULL COMMENT 'Parent Txn Id',
  `txn_type` varchar(15) DEFAULT NULL COMMENT 'Txn Type',
  `is_closed` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Closed',
  `additional_information` blob COMMENT 'Additional Information',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  PRIMARY KEY (`transaction_id`),
  UNIQUE KEY `SALES_PAYMENT_TRANSACTION_ORDER_ID_PAYMENT_ID_TXN_ID` (`order_id`,`payment_id`,`txn_id`),
  KEY `SALES_PAYMENT_TRANSACTION_PARENT_ID` (`parent_id`),
  KEY `SALES_PAYMENT_TRANSACTION_PAYMENT_ID` (`payment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Sales Payment Transaction';

--
-- Dumping data for table `sales_payment_transaction`
--

LOCK TABLES `sales_payment_transaction` WRITE;
/*!40000 ALTER TABLE `sales_payment_transaction` DISABLE KEYS */;
INSERT INTO `sales_payment_transaction` VALUES ('1',NULL,'4','4','58zqan2b',NULL,'authorization',0,'N;','2017-04-17 13:33:17'),('2',NULL,'5','5','2me74p29',NULL,'authorization',0,'N;','2017-04-17 13:44:16'),('3',NULL,'6','6','7r8eptev',NULL,'authorization',0,'N;','2017-04-20 08:37:37');
/*!40000 ALTER TABLE `sales_payment_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_refunded_aggregated`
--

DROP TABLE IF EXISTS `sales_refunded_aggregated`;
CREATE TABLE `sales_refunded_aggregated` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) NOT NULL COMMENT 'Order Status',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `refunded` decimal(12,4) DEFAULT NULL COMMENT 'Refunded',
  `online_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Online Refunded',
  `offline_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Offline Refunded',
  PRIMARY KEY (`id`),
  UNIQUE KEY `SALES_REFUNDED_AGGREGATED_PERIOD_STORE_ID_ORDER_STATUS` (`period`,`store_id`,`order_status`),
  KEY `SALES_REFUNDED_AGGREGATED_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Refunded Aggregated';

--
-- Table structure for table `sales_refunded_aggregated_order`
--

DROP TABLE IF EXISTS `sales_refunded_aggregated_order`;
CREATE TABLE `sales_refunded_aggregated_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `refunded` decimal(12,4) DEFAULT NULL COMMENT 'Refunded',
  `online_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Online Refunded',
  `offline_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Offline Refunded',
  PRIMARY KEY (`id`),
  UNIQUE KEY `SALES_REFUNDED_AGGREGATED_ORDER_PERIOD_STORE_ID_ORDER_STATUS` (`period`,`store_id`,`order_status`),
  KEY `SALES_REFUNDED_AGGREGATED_ORDER_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Refunded Aggregated Order';

--
-- Table structure for table `sales_sequence_meta`
--

DROP TABLE IF EXISTS `sales_sequence_meta`;
CREATE TABLE `sales_sequence_meta` (
  `meta_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `entity_type` varchar(32) NOT NULL COMMENT 'Prefix',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  `sequence_table` varchar(32) NOT NULL COMMENT 'table for sequence',
  PRIMARY KEY (`meta_id`),
  UNIQUE KEY `SALES_SEQUENCE_META_ENTITY_TYPE_STORE_ID` (`entity_type`,`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='sales_sequence_meta';

--
-- Dumping data for table `sales_sequence_meta`
--

LOCK TABLES `sales_sequence_meta` WRITE;
/*!40000 ALTER TABLE `sales_sequence_meta` DISABLE KEYS */;
INSERT INTO `sales_sequence_meta` VALUES ('1','order',0,'sequence_order_0'),('2','invoice',0,'sequence_invoice_0'),('3','creditmemo',0,'sequence_creditmemo_0'),('4','shipment',0,'sequence_shipment_0'),('5','order',1,'sequence_order_1'),('6','invoice',1,'sequence_invoice_1'),('7','creditmemo',1,'sequence_creditmemo_1'),('8','shipment',1,'sequence_shipment_1'),('9','order',2,'sequence_order_2'),('10','invoice',2,'sequence_invoice_2'),('11','creditmemo',2,'sequence_creditmemo_2'),('12','shipment',2,'sequence_shipment_2'),('13','order',3,'sequence_order_3'),('14','invoice',3,'sequence_invoice_3'),('15','creditmemo',3,'sequence_creditmemo_3'),('16','shipment',3,'sequence_shipment_3');
/*!40000 ALTER TABLE `sales_sequence_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_sequence_profile`
--

DROP TABLE IF EXISTS `sales_sequence_profile`;
CREATE TABLE `sales_sequence_profile` (
  `profile_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `meta_id` int(10) unsigned NOT NULL COMMENT 'Meta_id',
  `prefix` varchar(32) DEFAULT NULL COMMENT 'Prefix',
  `suffix` varchar(32) DEFAULT NULL COMMENT 'Suffix',
  `start_value` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'Start value for sequence',
  `step` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'Step for sequence',
  `max_value` int(10) unsigned NOT NULL COMMENT 'MaxValue for sequence',
  `warning_value` int(10) unsigned NOT NULL COMMENT 'WarningValue for sequence',
  `is_active` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'isActive flag',
  PRIMARY KEY (`profile_id`),
  UNIQUE KEY `SALES_SEQUENCE_PROFILE_META_ID_PREFIX_SUFFIX` (`meta_id`,`prefix`,`suffix`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='sales_sequence_profile';

--
-- Dumping data for table `sales_sequence_profile`
--

LOCK TABLES `sales_sequence_profile` WRITE;
/*!40000 ALTER TABLE `sales_sequence_profile` DISABLE KEYS */;
INSERT INTO `sales_sequence_profile` VALUES ('1','1',NULL,NULL,'1','1','4294967295','4294966295',1),('2','2',NULL,NULL,'1','1','4294967295','4294966295',1),('3','3',NULL,NULL,'1','1','4294967295','4294966295',1),('4','4',NULL,NULL,'1','1','4294967295','4294966295',1),('5','5',NULL,NULL,'1','1','4294967295','4294966295',1),('6','6',NULL,NULL,'1','1','4294967295','4294966295',1),('7','7',NULL,NULL,'1','1','4294967295','4294966295',1),('8','8',NULL,NULL,'1','1','4294967295','4294966295',1),('9','9','2',NULL,'1','1','4294967295','4294966295',1),('10','10','2',NULL,'1','1','4294967295','4294966295',1),('11','11','2',NULL,'1','1','4294967295','4294966295',1),('12','12','2',NULL,'1','1','4294967295','4294966295',1),('13','13','3',NULL,'1','1','4294967295','4294966295',1),('14','14','3',NULL,'1','1','4294967295','4294966295',1),('15','15','3',NULL,'1','1','4294967295','4294966295',1),('16','16','3',NULL,'1','1','4294967295','4294966295',1);
/*!40000 ALTER TABLE `sales_sequence_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_shipment`
--

DROP TABLE IF EXISTS `sales_shipment`;
CREATE TABLE `sales_shipment` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `total_weight` decimal(12,4) DEFAULT NULL COMMENT 'Total Weight',
  `total_qty` decimal(12,4) DEFAULT NULL COMMENT 'Total Qty',
  `email_sent` smallint(5) unsigned DEFAULT NULL COMMENT 'Email Sent',
  `send_email` smallint(5) unsigned DEFAULT NULL COMMENT 'Send Email',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  `customer_id` int(11) DEFAULT NULL COMMENT 'Customer Id',
  `shipping_address_id` int(11) DEFAULT NULL COMMENT 'Shipping Address Id',
  `billing_address_id` int(11) DEFAULT NULL COMMENT 'Billing Address Id',
  `shipment_status` int(11) DEFAULT NULL COMMENT 'Shipment Status',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `packages` text COMMENT 'Packed Products in Packages',
  `shipping_label` mediumblob COMMENT 'Shipping Label Content',
  `customer_note` text COMMENT 'Customer Note',
  `customer_note_notify` smallint(5) unsigned DEFAULT NULL COMMENT 'Customer Note Notify',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `SALES_SHIPMENT_INCREMENT_ID_STORE_ID` (`increment_id`,`store_id`),
  KEY `SALES_SHIPMENT_STORE_ID` (`store_id`),
  KEY `SALES_SHIPMENT_TOTAL_QTY` (`total_qty`),
  KEY `SALES_SHIPMENT_ORDER_ID` (`order_id`),
  KEY `SALES_SHIPMENT_CREATED_AT` (`created_at`),
  KEY `SALES_SHIPMENT_UPDATED_AT` (`updated_at`),
  KEY `SALES_SHIPMENT_SEND_EMAIL` (`send_email`),
  KEY `SALES_SHIPMENT_EMAIL_SENT` (`email_sent`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Sales Flat Shipment';

--
-- Dumping data for table `sales_shipment`
--

LOCK TABLES `sales_shipment` WRITE;
/*!40000 ALTER TABLE `sales_shipment` DISABLE KEYS */;
INSERT INTO `sales_shipment` VALUES ('1',1,NULL,'1.0000',1,1,'1','1','1','2',NULL,'000000001','2017-04-16 12:46:42','2017-04-16 12:46:42','a:0:{}',NULL,'Shipment comments goes here.',1),('2',1,NULL,'1.0000',1,1,'2','2','3','4',NULL,'000000002','2017-04-16 12:47:47','2017-04-16 12:47:48','a:0:{}',NULL,NULL,NULL);
/*!40000 ALTER TABLE `sales_shipment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_shipment_comment`
--

DROP TABLE IF EXISTS `sales_shipment_comment`;
CREATE TABLE `sales_shipment_comment` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `is_customer_notified` int(11) DEFAULT NULL COMMENT 'Is Customer Notified',
  `is_visible_on_front` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Visible On Front',
  `comment` text COMMENT 'Comment',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  PRIMARY KEY (`entity_id`),
  KEY `SALES_SHIPMENT_COMMENT_CREATED_AT` (`created_at`),
  KEY `SALES_SHIPMENT_COMMENT_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Sales Flat Shipment Comment';

--
-- Dumping data for table `sales_shipment_comment`
--

LOCK TABLES `sales_shipment_comment` WRITE;
/*!40000 ALTER TABLE `sales_shipment_comment` DISABLE KEYS */;
INSERT INTO `sales_shipment_comment` VALUES ('1','1','1',0,'Shipment comments goes here.','2017-04-16 12:46:42');
/*!40000 ALTER TABLE `sales_shipment_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_shipment_grid`
--

DROP TABLE IF EXISTS `sales_shipment_grid`;
CREATE TABLE `sales_shipment_grid` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_increment_id` varchar(32) NOT NULL COMMENT 'Order Increment Id',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  `order_created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Order Increment Id',
  `customer_name` varchar(128) NOT NULL COMMENT 'Customer Name',
  `total_qty` decimal(12,4) DEFAULT NULL COMMENT 'Total Qty',
  `shipment_status` int(11) DEFAULT NULL COMMENT 'Shipment Status',
  `order_status` varchar(32) DEFAULT NULL COMMENT 'Order',
  `billing_address` varchar(255) DEFAULT NULL COMMENT 'Billing Address',
  `shipping_address` varchar(255) DEFAULT NULL COMMENT 'Shipping Address',
  `billing_name` varchar(128) DEFAULT NULL COMMENT 'Billing Name',
  `shipping_name` varchar(128) DEFAULT NULL COMMENT 'Shipping Name',
  `customer_email` varchar(128) DEFAULT NULL COMMENT 'Customer Email',
  `customer_group_id` smallint(6) DEFAULT NULL COMMENT 'Customer Group Id',
  `payment_method` varchar(32) DEFAULT NULL COMMENT 'Payment Method',
  `shipping_information` varchar(255) DEFAULT NULL COMMENT 'Shipping Method Name',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `SALES_SHIPMENT_GRID_INCREMENT_ID_STORE_ID` (`increment_id`,`store_id`),
  KEY `SALES_SHIPMENT_GRID_STORE_ID` (`store_id`),
  KEY `SALES_SHIPMENT_GRID_TOTAL_QTY` (`total_qty`),
  KEY `SALES_SHIPMENT_GRID_ORDER_INCREMENT_ID` (`order_increment_id`),
  KEY `SALES_SHIPMENT_GRID_SHIPMENT_STATUS` (`shipment_status`),
  KEY `SALES_SHIPMENT_GRID_ORDER_STATUS` (`order_status`),
  KEY `SALES_SHIPMENT_GRID_CREATED_AT` (`created_at`),
  KEY `SALES_SHIPMENT_GRID_UPDATED_AT` (`updated_at`),
  KEY `SALES_SHIPMENT_GRID_ORDER_CREATED_AT` (`order_created_at`),
  KEY `SALES_SHIPMENT_GRID_SHIPPING_NAME` (`shipping_name`),
  KEY `SALES_SHIPMENT_GRID_BILLING_NAME` (`billing_name`),
  FULLTEXT KEY `FTI_086B40C8955F167B8EA76653437879B4` (`increment_id`,`order_increment_id`,`shipping_name`,`customer_name`,`customer_email`,`billing_address`,`shipping_address`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Shipment Grid';

--
-- Dumping data for table `sales_shipment_grid`
--

LOCK TABLES `sales_shipment_grid` WRITE;
/*!40000 ALTER TABLE `sales_shipment_grid` DISABLE KEYS */;
INSERT INTO `sales_shipment_grid` VALUES ('1','000000001',1,'000000001','1','2017-04-13 07:57:25','','1.0000',NULL,'processing','Dubai Dubai Dubai 00000','Dubai Dubai Dubai 00000','Mark Timbol','Mark Timbol','markttimbol@gmail.com',0,'checkmo','Flat Rate - Fixed','2017-04-16 12:46:42','2017-04-16 12:46:42'),('2','000000002',1,'000000002','2','2017-04-16 12:42:12','Saber Belgrith','1.0000',NULL,'pending','708 Al Rigga\nDeira Dubai Dubai 00000','708 Al Rigga\nDeira Dubai Dubai 00000','Saber Belgrith','Saber Belgrith','saber@example.com',1,'checkmo','Flat Rate - Fixed','2017-04-16 12:47:47','2017-04-16 12:47:47');
/*!40000 ALTER TABLE `sales_shipment_grid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_shipment_item`
--

DROP TABLE IF EXISTS `sales_shipment_item`;
CREATE TABLE `sales_shipment_item` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `row_total` decimal(12,4) DEFAULT NULL COMMENT 'Row Total',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `weight` decimal(12,4) DEFAULT NULL COMMENT 'Weight',
  `qty` decimal(12,4) DEFAULT NULL COMMENT 'Qty',
  `product_id` int(11) DEFAULT NULL COMMENT 'Product Id',
  `order_item_id` int(11) DEFAULT NULL COMMENT 'Order Item Id',
  `additional_data` text COMMENT 'Additional Data',
  `description` text COMMENT 'Description',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  PRIMARY KEY (`entity_id`),
  KEY `SALES_SHIPMENT_ITEM_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Sales Flat Shipment Item';

--
-- Dumping data for table `sales_shipment_item`
--

LOCK TABLES `sales_shipment_item` WRITE;
/*!40000 ALTER TABLE `sales_shipment_item` DISABLE KEYS */;
INSERT INTO `sales_shipment_item` VALUES ('1','1',NULL,'5400.0000','1.0000','1.0000','1','1',NULL,NULL,'114 orange roses in acrylic clear large rectangular box','Ref 315'),('2','2',NULL,'350.0000','1.0000','1.0000','11','2',NULL,NULL,'Yellow roses in mdf black small square box','Ref 130');
/*!40000 ALTER TABLE `sales_shipment_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_shipment_track`
--

DROP TABLE IF EXISTS `sales_shipment_track`;
CREATE TABLE `sales_shipment_track` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `weight` decimal(12,4) DEFAULT NULL COMMENT 'Weight',
  `qty` decimal(12,4) DEFAULT NULL COMMENT 'Qty',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  `track_number` text COMMENT 'Number',
  `description` text COMMENT 'Description',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  `carrier_code` varchar(32) DEFAULT NULL COMMENT 'Carrier Code',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  PRIMARY KEY (`entity_id`),
  KEY `SALES_SHIPMENT_TRACK_PARENT_ID` (`parent_id`),
  KEY `SALES_SHIPMENT_TRACK_ORDER_ID` (`order_id`),
  KEY `SALES_SHIPMENT_TRACK_CREATED_AT` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Sales Flat Shipment Track';

--
-- Dumping data for table `sales_shipment_track`
--

LOCK TABLES `sales_shipment_track` WRITE;
/*!40000 ALTER TABLE `sales_shipment_track` DISABLE KEYS */;
INSERT INTO `sales_shipment_track` VALUES ('1','1',NULL,NULL,'1','1234567890',NULL,'DHL','dhl','2017-04-16 12:46:42','2017-04-16 12:46:42'),('2','2',NULL,NULL,'2','abc123',NULL,'DHL','dhl','2017-04-16 12:47:47','2017-04-16 12:47:47');
/*!40000 ALTER TABLE `sales_shipment_track` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_shipping_aggregated`
--

DROP TABLE IF EXISTS `sales_shipping_aggregated`;
CREATE TABLE `sales_shipping_aggregated` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `shipping_description` varchar(255) DEFAULT NULL COMMENT 'Shipping Description',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `total_shipping` decimal(12,4) DEFAULT NULL COMMENT 'Total Shipping',
  `total_shipping_actual` decimal(12,4) DEFAULT NULL COMMENT 'Total Shipping Actual',
  PRIMARY KEY (`id`),
  UNIQUE KEY `SALES_SHPP_AGGRED_PERIOD_STORE_ID_ORDER_STS_SHPP_DESCRIPTION` (`period`,`store_id`,`order_status`,`shipping_description`),
  KEY `SALES_SHIPPING_AGGREGATED_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Shipping Aggregated';

--
-- Table structure for table `sales_shipping_aggregated_order`
--

DROP TABLE IF EXISTS `sales_shipping_aggregated_order`;
CREATE TABLE `sales_shipping_aggregated_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `shipping_description` varchar(255) DEFAULT NULL COMMENT 'Shipping Description',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `total_shipping` decimal(12,4) DEFAULT NULL COMMENT 'Total Shipping',
  `total_shipping_actual` decimal(12,4) DEFAULT NULL COMMENT 'Total Shipping Actual',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_C05FAE47282EEA68654D0924E946761F` (`period`,`store_id`,`order_status`,`shipping_description`),
  KEY `SALES_SHIPPING_AGGREGATED_ORDER_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Shipping Aggregated Order';

--
-- Table structure for table `salesrule`
--

DROP TABLE IF EXISTS `salesrule`;
CREATE TABLE `salesrule` (
  `rule_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rule Id',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `description` text COMMENT 'Description',
  `from_date` date DEFAULT NULL COMMENT 'From',
  `to_date` date DEFAULT NULL COMMENT 'To',
  `uses_per_customer` int(11) NOT NULL DEFAULT '0' COMMENT 'Uses Per Customer',
  `is_active` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is Active',
  `conditions_serialized` mediumtext COMMENT 'Conditions Serialized',
  `actions_serialized` mediumtext COMMENT 'Actions Serialized',
  `stop_rules_processing` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Stop Rules Processing',
  `is_advanced` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Advanced',
  `product_ids` text COMMENT 'Product Ids',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `simple_action` varchar(32) DEFAULT NULL COMMENT 'Simple Action',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `discount_qty` decimal(12,4) DEFAULT NULL COMMENT 'Discount Qty',
  `discount_step` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Discount Step',
  `apply_to_shipping` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Apply To Shipping',
  `times_used` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Times Used',
  `is_rss` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is Rss',
  `coupon_type` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Coupon Type',
  `use_auto_generation` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Use Auto Generation',
  `uses_per_coupon` int(11) NOT NULL DEFAULT '0' COMMENT 'User Per Coupon',
  `simple_free_shipping` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`rule_id`),
  KEY `SALESRULE_IS_ACTIVE_SORT_ORDER_TO_DATE_FROM_DATE` (`is_active`,`sort_order`,`to_date`,`from_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule';

--
-- Table structure for table `salesrule_coupon`
--

DROP TABLE IF EXISTS `salesrule_coupon`;
CREATE TABLE `salesrule_coupon` (
  `coupon_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Coupon Id',
  `rule_id` int(10) unsigned NOT NULL COMMENT 'Rule Id',
  `code` varchar(255) DEFAULT NULL COMMENT 'Code',
  `usage_limit` int(10) unsigned DEFAULT NULL COMMENT 'Usage Limit',
  `usage_per_customer` int(10) unsigned DEFAULT NULL COMMENT 'Usage Per Customer',
  `times_used` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Times Used',
  `expiration_date` timestamp NULL DEFAULT NULL COMMENT 'Expiration Date',
  `is_primary` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Primary',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Coupon Code Creation Date',
  `type` smallint(6) DEFAULT '0' COMMENT 'Coupon Code Type',
  PRIMARY KEY (`coupon_id`),
  UNIQUE KEY `SALESRULE_COUPON_CODE` (`code`),
  UNIQUE KEY `SALESRULE_COUPON_RULE_ID_IS_PRIMARY` (`rule_id`,`is_primary`),
  KEY `SALESRULE_COUPON_RULE_ID` (`rule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule Coupon';

--
-- Table structure for table `salesrule_coupon_aggregated`
--

DROP TABLE IF EXISTS `salesrule_coupon_aggregated`;
CREATE TABLE `salesrule_coupon_aggregated` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date NOT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `coupon_code` varchar(50) DEFAULT NULL COMMENT 'Coupon Code',
  `coupon_uses` int(11) NOT NULL DEFAULT '0' COMMENT 'Coupon Uses',
  `subtotal_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal Amount',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `total_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Amount',
  `subtotal_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal Amount Actual',
  `discount_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount Actual',
  `total_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Amount Actual',
  `rule_name` varchar(255) DEFAULT NULL COMMENT 'Rule Name',
  PRIMARY KEY (`id`),
  UNIQUE KEY `SALESRULE_COUPON_AGGRED_PERIOD_STORE_ID_ORDER_STS_COUPON_CODE` (`period`,`store_id`,`order_status`,`coupon_code`),
  KEY `SALESRULE_COUPON_AGGREGATED_STORE_ID` (`store_id`),
  KEY `SALESRULE_COUPON_AGGREGATED_RULE_NAME` (`rule_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Coupon Aggregated';

--
-- Table structure for table `salesrule_coupon_aggregated_order`
--

DROP TABLE IF EXISTS `salesrule_coupon_aggregated_order`;
CREATE TABLE `salesrule_coupon_aggregated_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date NOT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `coupon_code` varchar(50) DEFAULT NULL COMMENT 'Coupon Code',
  `coupon_uses` int(11) NOT NULL DEFAULT '0' COMMENT 'Coupon Uses',
  `subtotal_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal Amount',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `total_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Amount',
  `rule_name` varchar(255) DEFAULT NULL COMMENT 'Rule Name',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_1094D1FBBCBB11704A29DEF3ACC37D2B` (`period`,`store_id`,`order_status`,`coupon_code`),
  KEY `SALESRULE_COUPON_AGGREGATED_ORDER_STORE_ID` (`store_id`),
  KEY `SALESRULE_COUPON_AGGREGATED_ORDER_RULE_NAME` (`rule_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Coupon Aggregated Order';

--
-- Table structure for table `salesrule_coupon_aggregated_updated`
--

DROP TABLE IF EXISTS `salesrule_coupon_aggregated_updated`;
CREATE TABLE `salesrule_coupon_aggregated_updated` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date NOT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `coupon_code` varchar(50) DEFAULT NULL COMMENT 'Coupon Code',
  `coupon_uses` int(11) NOT NULL DEFAULT '0' COMMENT 'Coupon Uses',
  `subtotal_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal Amount',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `total_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Amount',
  `subtotal_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal Amount Actual',
  `discount_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount Actual',
  `total_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Amount Actual',
  `rule_name` varchar(255) DEFAULT NULL COMMENT 'Rule Name',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_7196FA120A4F0F84E1B66605E87E213E` (`period`,`store_id`,`order_status`,`coupon_code`),
  KEY `SALESRULE_COUPON_AGGREGATED_UPDATED_STORE_ID` (`store_id`),
  KEY `SALESRULE_COUPON_AGGREGATED_UPDATED_RULE_NAME` (`rule_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule Coupon Aggregated Updated';

--
-- Table structure for table `salesrule_coupon_usage`
--

DROP TABLE IF EXISTS `salesrule_coupon_usage`;
CREATE TABLE `salesrule_coupon_usage` (
  `coupon_id` int(10) unsigned NOT NULL COMMENT 'Coupon Id',
  `customer_id` int(10) unsigned NOT NULL COMMENT 'Customer Id',
  `times_used` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Times Used',
  PRIMARY KEY (`coupon_id`,`customer_id`),
  KEY `SALESRULE_COUPON_USAGE_CUSTOMER_ID` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule Coupon Usage';

--
-- Table structure for table `salesrule_customer`
--

DROP TABLE IF EXISTS `salesrule_customer`;
CREATE TABLE `salesrule_customer` (
  `rule_customer_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rule Customer Id',
  `rule_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Rule Id',
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Id',
  `times_used` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Times Used',
  PRIMARY KEY (`rule_customer_id`),
  KEY `SALESRULE_CUSTOMER_RULE_ID_CUSTOMER_ID` (`rule_id`,`customer_id`),
  KEY `SALESRULE_CUSTOMER_CUSTOMER_ID_RULE_ID` (`customer_id`,`rule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule Customer';

--
-- Table structure for table `salesrule_customer_group`
--

DROP TABLE IF EXISTS `salesrule_customer_group`;
CREATE TABLE `salesrule_customer_group` (
  `rule_id` int(10) unsigned NOT NULL COMMENT 'Rule Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  PRIMARY KEY (`rule_id`,`customer_group_id`),
  KEY `SALESRULE_CUSTOMER_GROUP_CUSTOMER_GROUP_ID` (`customer_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Rules To Customer Groups Relations';

--
-- Table structure for table `salesrule_label`
--

DROP TABLE IF EXISTS `salesrule_label`;
CREATE TABLE `salesrule_label` (
  `label_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Label Id',
  `rule_id` int(10) unsigned NOT NULL COMMENT 'Rule Id',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  `label` varchar(255) DEFAULT NULL COMMENT 'Label',
  PRIMARY KEY (`label_id`),
  UNIQUE KEY `SALESRULE_LABEL_RULE_ID_STORE_ID` (`rule_id`,`store_id`),
  KEY `SALESRULE_LABEL_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule Label';

--
-- Table structure for table `salesrule_product_attribute`
--

DROP TABLE IF EXISTS `salesrule_product_attribute`;
CREATE TABLE `salesrule_product_attribute` (
  `rule_id` int(10) unsigned NOT NULL COMMENT 'Rule Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute Id',
  PRIMARY KEY (`rule_id`,`website_id`,`customer_group_id`,`attribute_id`),
  KEY `SALESRULE_PRODUCT_ATTRIBUTE_WEBSITE_ID` (`website_id`),
  KEY `SALESRULE_PRODUCT_ATTRIBUTE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `SALESRULE_PRODUCT_ATTRIBUTE_ATTRIBUTE_ID` (`attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule Product Attribute';

--
-- Table structure for table `salesrule_website`
--

DROP TABLE IF EXISTS `salesrule_website`;
CREATE TABLE `salesrule_website` (
  `rule_id` int(10) unsigned NOT NULL COMMENT 'Rule Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  PRIMARY KEY (`rule_id`,`website_id`),
  KEY `SALESRULE_WEBSITE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Rules To Websites Relations';

--
-- Table structure for table `search_query`
--

DROP TABLE IF EXISTS `search_query`;
CREATE TABLE `search_query` (
  `query_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Query ID',
  `query_text` varchar(255) DEFAULT NULL COMMENT 'Query text',
  `num_results` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Num results',
  `popularity` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Popularity',
  `redirect` varchar(255) DEFAULT NULL COMMENT 'Redirect',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `display_in_terms` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Display in terms',
  `is_active` smallint(6) DEFAULT '1' COMMENT 'Active status',
  `is_processed` smallint(6) DEFAULT '0' COMMENT 'Processed status',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated at',
  PRIMARY KEY (`query_id`),
  UNIQUE KEY `SEARCH_QUERY_QUERY_TEXT_STORE_ID` (`query_text`,`store_id`),
  KEY `SEARCH_QUERY_QUERY_TEXT_STORE_ID_POPULARITY` (`query_text`,`store_id`,`popularity`),
  KEY `SEARCH_QUERY_STORE_ID` (`store_id`),
  KEY `SEARCH_QUERY_IS_PROCESSED` (`is_processed`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COMMENT='Search query table';

--
-- Dumping data for table `search_query`
--

LOCK TABLES `search_query` WRITE;
/*!40000 ALTER TABLE `search_query` DISABLE KEYS */;
INSERT INTO `search_query` VALUES ('1','rose','11','9',NULL,1,1,1,0,'2017-04-16 16:14:26'),('3','orange rose','1','6',NULL,1,1,1,0,'2017-04-13 07:52:44'),('15','D','0','1',NULL,1,1,1,0,'2017-04-13 08:33:52'),('17','114','1','1',NULL,1,1,1,0,'2017-04-13 08:34:01'),('19','fuchsia','1','2',NULL,1,1,1,0,'2017-04-13 08:56:25'),('30','flower','0','1',NULL,1,1,1,0,'2017-04-16 16:11:25');
/*!40000 ALTER TABLE `search_query` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `search_synonyms`
--

DROP TABLE IF EXISTS `search_synonyms`;
CREATE TABLE `search_synonyms` (
  `group_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Synonyms Group Id',
  `synonyms` text NOT NULL COMMENT 'list of synonyms making up this group',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id - identifies the store view these synonyms belong to',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website Id - identifies the website id these synonyms belong to',
  PRIMARY KEY (`group_id`),
  KEY `SEARCH_SYNONYMS_STORE_ID` (`store_id`),
  KEY `SEARCH_SYNONYMS_WEBSITE_ID` (`website_id`),
  FULLTEXT KEY `SEARCH_SYNONYMS_SYNONYMS` (`synonyms`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='table storing various synonyms groups';

--
-- Table structure for table `sendfriend_log`
--

DROP TABLE IF EXISTS `sendfriend_log`;
CREATE TABLE `sendfriend_log` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Log ID',
  `ip` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer IP address',
  `time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Log time',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website ID',
  PRIMARY KEY (`log_id`),
  KEY `SENDFRIEND_LOG_IP` (`ip`),
  KEY `SENDFRIEND_LOG_TIME` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Send to friend function log storage table';

--
-- Table structure for table `sequence_creditmemo_0`
--

DROP TABLE IF EXISTS `sequence_creditmemo_0`;
CREATE TABLE `sequence_creditmemo_0` (
  `sequence_value` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence_value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Table structure for table `sequence_creditmemo_1`
--

DROP TABLE IF EXISTS `sequence_creditmemo_1`;
CREATE TABLE `sequence_creditmemo_1` (
  `sequence_value` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence_value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Table structure for table `sequence_creditmemo_2`
--

DROP TABLE IF EXISTS `sequence_creditmemo_2`;
CREATE TABLE `sequence_creditmemo_2` (
  `sequence_value` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence_value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Table structure for table `sequence_creditmemo_3`
--

DROP TABLE IF EXISTS `sequence_creditmemo_3`;
CREATE TABLE `sequence_creditmemo_3` (
  `sequence_value` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence_value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Table structure for table `sequence_invoice_0`
--

DROP TABLE IF EXISTS `sequence_invoice_0`;
CREATE TABLE `sequence_invoice_0` (
  `sequence_value` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence_value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Table structure for table `sequence_invoice_1`
--

DROP TABLE IF EXISTS `sequence_invoice_1`;
CREATE TABLE `sequence_invoice_1` (
  `sequence_value` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence_value`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sequence_invoice_1`
--

LOCK TABLES `sequence_invoice_1` WRITE;
/*!40000 ALTER TABLE `sequence_invoice_1` DISABLE KEYS */;
INSERT INTO `sequence_invoice_1` VALUES ('1');
/*!40000 ALTER TABLE `sequence_invoice_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sequence_invoice_2`
--

DROP TABLE IF EXISTS `sequence_invoice_2`;
CREATE TABLE `sequence_invoice_2` (
  `sequence_value` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence_value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Table structure for table `sequence_invoice_3`
--

DROP TABLE IF EXISTS `sequence_invoice_3`;
CREATE TABLE `sequence_invoice_3` (
  `sequence_value` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence_value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Table structure for table `sequence_order_0`
--

DROP TABLE IF EXISTS `sequence_order_0`;
CREATE TABLE `sequence_order_0` (
  `sequence_value` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence_value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Table structure for table `sequence_order_1`
--

DROP TABLE IF EXISTS `sequence_order_1`;
CREATE TABLE `sequence_order_1` (
  `sequence_value` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence_value`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sequence_order_1`
--

LOCK TABLES `sequence_order_1` WRITE;
/*!40000 ALTER TABLE `sequence_order_1` DISABLE KEYS */;
INSERT INTO `sequence_order_1` VALUES ('1'),('2'),('3'),('4'),('5'),('6');
/*!40000 ALTER TABLE `sequence_order_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sequence_order_2`
--

DROP TABLE IF EXISTS `sequence_order_2`;
CREATE TABLE `sequence_order_2` (
  `sequence_value` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence_value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Table structure for table `sequence_order_3`
--

DROP TABLE IF EXISTS `sequence_order_3`;
CREATE TABLE `sequence_order_3` (
  `sequence_value` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence_value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Table structure for table `sequence_shipment_0`
--

DROP TABLE IF EXISTS `sequence_shipment_0`;
CREATE TABLE `sequence_shipment_0` (
  `sequence_value` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence_value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Table structure for table `sequence_shipment_1`
--

DROP TABLE IF EXISTS `sequence_shipment_1`;
CREATE TABLE `sequence_shipment_1` (
  `sequence_value` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence_value`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sequence_shipment_1`
--

LOCK TABLES `sequence_shipment_1` WRITE;
/*!40000 ALTER TABLE `sequence_shipment_1` DISABLE KEYS */;
INSERT INTO `sequence_shipment_1` VALUES ('1'),('2');
/*!40000 ALTER TABLE `sequence_shipment_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sequence_shipment_2`
--

DROP TABLE IF EXISTS `sequence_shipment_2`;
CREATE TABLE `sequence_shipment_2` (
  `sequence_value` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence_value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Table structure for table `sequence_shipment_3`
--

DROP TABLE IF EXISTS `sequence_shipment_3`;
CREATE TABLE `sequence_shipment_3` (
  `sequence_value` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence_value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Table structure for table `session`
--

DROP TABLE IF EXISTS `session`;
CREATE TABLE `session` (
  `session_id` varchar(255) NOT NULL COMMENT 'Session Id',
  `session_expires` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Date of Session Expiration',
  `session_data` mediumblob NOT NULL COMMENT 'Session Data',
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Database Sessions Storage';

--
-- Table structure for table `setup_module`
--

DROP TABLE IF EXISTS `setup_module`;
CREATE TABLE `setup_module` (
  `module` varchar(50) NOT NULL COMMENT 'Module',
  `schema_version` varchar(50) DEFAULT NULL COMMENT 'Schema Version',
  `data_version` varchar(50) DEFAULT NULL COMMENT 'Data Version',
  PRIMARY KEY (`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Module versions registry';

--
-- Dumping data for table `setup_module`
--

LOCK TABLES `setup_module` WRITE;
/*!40000 ALTER TABLE `setup_module` DISABLE KEYS */;
INSERT INTO `setup_module` VALUES ('Magento_AdminNotification','2.0.0','2.0.0'),('Magento_AdvancedPricingImportExport','2.0.0','2.0.0'),('Magento_Authorization','2.0.0','2.0.0'),('Magento_Authorizenet','2.0.0','2.0.0'),('Magento_Backend','2.0.0','2.0.0'),('Magento_Backup','2.0.0','2.0.0'),('Magento_Braintree','2.0.0','2.0.0'),('Magento_Bundle','2.0.2','2.0.2'),('Magento_BundleImportExport','2.0.0','2.0.0'),('Magento_CacheInvalidate','2.0.0','2.0.0'),('Magento_Captcha','2.0.0','2.0.0'),('Magento_Catalog','2.1.3','2.1.3'),('Magento_CatalogImportExport','2.0.0','2.0.0'),('Magento_CatalogInventory','2.0.1','2.0.1'),('Magento_CatalogRule','2.0.1','2.0.1'),('Magento_CatalogRuleConfigurable','2.0.0','2.0.0'),('Magento_CatalogSearch','2.0.0','2.0.0'),('Magento_CatalogUrlRewrite','2.0.0','2.0.0'),('Magento_CatalogWidget','2.0.0','2.0.0'),('Magento_Checkout','2.0.0','2.0.0'),('Magento_CheckoutAgreements','2.0.1','2.0.1'),('Magento_Cms','2.0.1','2.0.1'),('Magento_CmsUrlRewrite','2.0.0','2.0.0'),('Magento_Config','2.0.0','2.0.0'),('Magento_ConfigurableImportExport','2.0.0','2.0.0'),('Magento_ConfigurableProduct','2.0.0','2.0.0'),('Magento_Contact','2.0.0','2.0.0'),('Magento_Cookie','2.0.0','2.0.0'),('Magento_Cron','2.0.0','2.0.0'),('Magento_CurrencySymbol','2.0.0','2.0.0'),('Magento_Customer','2.0.9','2.0.9'),('Magento_CustomerImportExport','2.0.0','2.0.0'),('Magento_Deploy','2.0.0','2.0.0'),('Magento_Developer','2.0.0','2.0.0'),('Magento_Dhl','2.0.0','2.0.0'),('Magento_Directory','2.0.0','2.0.0'),('Magento_Downloadable','2.0.1','2.0.1'),('Magento_DownloadableImportExport','2.0.0','2.0.0'),('Magento_Eav','2.0.0','2.0.0'),('Magento_Email','2.0.0','2.0.0'),('Magento_EncryptionKey','2.0.0','2.0.0'),('Magento_Fedex','2.0.0','2.0.0'),('Magento_GiftMessage','2.0.1','2.0.1'),('Magento_GoogleAdwords','2.0.0','2.0.0'),('Magento_GoogleAnalytics','2.0.0','2.0.0'),('Magento_GoogleOptimizer','2.0.0','2.0.0'),('Magento_GroupedImportExport','2.0.0','2.0.0'),('Magento_GroupedProduct','2.0.1','2.0.1'),('Magento_ImportExport','2.0.1','2.0.1'),('Magento_Indexer','2.0.0','2.0.0'),('Magento_Integration','2.0.1','2.0.1'),('Magento_LayeredNavigation','2.0.0','2.0.0'),('Magento_Marketplace','1.0.0','1.0.0'),('Magento_MediaStorage','2.0.0','2.0.0'),('Magento_Msrp','2.1.3','2.1.3'),('Magento_Multishipping','2.0.0','2.0.0'),('Magento_NewRelicReporting','2.0.0','2.0.0'),('Magento_Newsletter','2.0.0','2.0.0'),('Magento_OfflinePayments','2.0.0','2.0.0'),('Magento_OfflineShipping','2.0.0','2.0.0'),('Magento_PageCache','2.0.0','2.0.0'),('Magento_Payment','2.0.0','2.0.0'),('Magento_Paypal','2.0.0','2.0.0'),('Magento_Persistent','2.0.0','2.0.0'),('Magento_ProductAlert','2.0.0','2.0.0'),('Magento_ProductVideo','2.0.0.2','2.0.0.2'),('Magento_Quote','2.0.3','2.0.3'),('Magento_Reports','2.0.0','2.0.0'),('Magento_RequireJs','2.0.0','2.0.0'),('Magento_Review','2.0.0','2.0.0'),('Magento_Rss','2.0.0','2.0.0'),('Magento_Rule','2.0.0','2.0.0'),('Magento_Sales','2.0.3','2.0.3'),('Magento_SalesInventory','1.0.0','1.0.0'),('Magento_SalesRule','2.0.1','2.0.1'),('Magento_SalesSequence','2.0.0','2.0.0'),('Magento_SampleData','2.0.0','2.0.0'),('Magento_Search','2.0.4','2.0.4'),('Magento_Security','2.0.1','2.0.1'),('Magento_SendFriend','2.0.0','2.0.0'),('Magento_Shipping','2.0.0','2.0.0'),('Magento_Sitemap','2.0.0','2.0.0'),('Magento_Store','2.0.0','2.0.0'),('Magento_Swagger','2.0.0','2.0.0'),('Magento_Swatches','2.0.1','2.0.1'),('Magento_SwatchesLayeredNavigation','2.0.0','2.0.0'),('Magento_Tax','2.0.1','2.0.1'),('Magento_TaxImportExport','2.0.0','2.0.0'),('Magento_Theme','2.0.1','2.0.1'),('Magento_Translation','2.0.0','2.0.0'),('Magento_Ui','2.0.0','2.0.0'),('Magento_Ups','2.0.0','2.0.0'),('Magento_UrlRewrite','2.0.0','2.0.0'),('Magento_User','2.0.1','2.0.1'),('Magento_Usps','2.0.0','2.0.0'),('Magento_Variable','2.0.0','2.0.0'),('Magento_Vault','2.0.2','2.0.2'),('Magento_Version','2.0.0','2.0.0'),('Magento_Webapi','2.0.0','2.0.0'),('Magento_WebapiSecurity','2.0.0','2.0.0'),('Magento_Weee','2.0.0','2.0.0'),('Magento_Widget','2.0.0','2.0.0'),('Magento_Wishlist','2.0.0','2.0.0'),('Plazathemes_Bannerslider','1.0.0','1.0.0'),('Plazathemes_Bestsellerproduct','2.0.0','2.0.0'),('Plazathemes_Blog','2.0.0','2.0.0'),('Plazathemes_Brandslider','1.0.0','1.0.0'),('Plazathemes_Featureproductslider','2.0.0','2.0.0'),('Plazathemes_Hozmegamenu','2.0.0','2.0.0'),('Plazathemes_InstagramGallery','1.0.0','1.0.0'),('Plazathemes_Layout','2.0.0','2.0.0'),('Plazathemes_Loadjs','2.0.0','2.0.0'),('Plazathemes_Newsletterpopup','2.0.0','2.0.0'),('Plazathemes_Override','2.0.0','2.0.0'),('Plazathemes_Pricecountdown','2.0.0','2.0.0'),('Plazathemes_Producttab','2.0.0','2.0.0'),('Plazathemes_Randomproductslider','1.0.0','1.0.0'),('Plazathemes_Recentproductslider','1.0.0','1.0.0'),('Plazathemes_Template','2.0.0','2.0.0'),('Plazathemes_Themeoptions','2.0.0','2.0.0');
/*!40000 ALTER TABLE `setup_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipping_tablerate`
--

DROP TABLE IF EXISTS `shipping_tablerate`;
CREATE TABLE `shipping_tablerate` (
  `pk` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary key',
  `website_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Website Id',
  `dest_country_id` varchar(4) NOT NULL DEFAULT '0' COMMENT 'Destination coutry ISO/2 or ISO/3 code',
  `dest_region_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Destination Region Id',
  `dest_zip` varchar(10) NOT NULL DEFAULT '*' COMMENT 'Destination Post Code (Zip)',
  `condition_name` varchar(20) NOT NULL COMMENT 'Rate Condition name',
  `condition_value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Rate condition value',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `cost` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Cost',
  PRIMARY KEY (`pk`),
  UNIQUE KEY `UNQ_D60821CDB2AFACEE1566CFC02D0D4CAA` (`website_id`,`dest_country_id`,`dest_region_id`,`dest_zip`,`condition_name`,`condition_value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Shipping Tablerate';

--
-- Table structure for table `sitemap`
--

DROP TABLE IF EXISTS `sitemap`;
CREATE TABLE `sitemap` (
  `sitemap_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Sitemap Id',
  `sitemap_type` varchar(32) DEFAULT NULL COMMENT 'Sitemap Type',
  `sitemap_filename` varchar(32) DEFAULT NULL COMMENT 'Sitemap Filename',
  `sitemap_path` varchar(255) DEFAULT NULL COMMENT 'Sitemap Path',
  `sitemap_time` timestamp NULL DEFAULT NULL COMMENT 'Sitemap Time',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store id',
  PRIMARY KEY (`sitemap_id`),
  KEY `SITEMAP_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='XML Sitemap';

--
-- Table structure for table `store`
--

DROP TABLE IF EXISTS `store`;
CREATE TABLE `store` (
  `store_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Store Id',
  `code` varchar(32) DEFAULT NULL COMMENT 'Code',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website Id',
  `group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Group Id',
  `name` varchar(255) NOT NULL COMMENT 'Store Name',
  `sort_order` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Sort Order',
  `is_active` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Activity',
  PRIMARY KEY (`store_id`),
  UNIQUE KEY `STORE_CODE` (`code`),
  KEY `STORE_WEBSITE_ID` (`website_id`),
  KEY `STORE_IS_ACTIVE_SORT_ORDER` (`is_active`,`sort_order`),
  KEY `STORE_GROUP_ID` (`group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Stores';

--
-- Dumping data for table `store`
--

LOCK TABLES `store` WRITE;
/*!40000 ALTER TABLE `store` DISABLE KEYS */;
INSERT INTO `store` VALUES (0,'admin',0,0,'Admin',0,1),(1,'default',1,1,'English',0,1),(2,'home2',1,1,'Home 2',0,1),(3,'qatar_english',1,2,'English',0,1);
/*!40000 ALTER TABLE `store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_group`
--

DROP TABLE IF EXISTS `store_group`;
CREATE TABLE `store_group` (
  `group_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Group Id',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website Id',
  `name` varchar(255) NOT NULL COMMENT 'Store Group Name',
  `root_category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Root Category Id',
  `default_store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Default Store Id',
  PRIMARY KEY (`group_id`),
  KEY `STORE_GROUP_WEBSITE_ID` (`website_id`),
  KEY `STORE_GROUP_DEFAULT_STORE_ID` (`default_store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Store Groups';

--
-- Dumping data for table `store_group`
--

LOCK TABLES `store_group` WRITE;
/*!40000 ALTER TABLE `store_group` DISABLE KEYS */;
INSERT INTO `store_group` VALUES (0,0,'Default','0',0),(1,1,'UAE','2',1),(2,1,'Qatar','2',3);
/*!40000 ALTER TABLE `store_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_website`
--

DROP TABLE IF EXISTS `store_website`;
CREATE TABLE `store_website` (
  `website_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Website Id',
  `code` varchar(32) DEFAULT NULL COMMENT 'Code',
  `name` varchar(64) DEFAULT NULL COMMENT 'Website Name',
  `sort_order` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `default_group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Default Group Id',
  `is_default` smallint(5) unsigned DEFAULT '0' COMMENT 'Defines Is Website Default',
  PRIMARY KEY (`website_id`),
  UNIQUE KEY `STORE_WEBSITE_CODE` (`code`),
  KEY `STORE_WEBSITE_SORT_ORDER` (`sort_order`),
  KEY `STORE_WEBSITE_DEFAULT_GROUP_ID` (`default_group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Websites';

--
-- Dumping data for table `store_website`
--

LOCK TABLES `store_website` WRITE;
/*!40000 ALTER TABLE `store_website` DISABLE KEYS */;
INSERT INTO `store_website` VALUES (0,'admin','Admin',0,0,0),(1,'base','Main Website',0,1,1);
/*!40000 ALTER TABLE `store_website` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tax_calculation`
--

DROP TABLE IF EXISTS `tax_calculation`;
CREATE TABLE `tax_calculation` (
  `tax_calculation_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Tax Calculation Id',
  `tax_calculation_rate_id` int(11) NOT NULL COMMENT 'Tax Calculation Rate Id',
  `tax_calculation_rule_id` int(11) NOT NULL COMMENT 'Tax Calculation Rule Id',
  `customer_tax_class_id` smallint(6) NOT NULL COMMENT 'Customer Tax Class Id',
  `product_tax_class_id` smallint(6) NOT NULL COMMENT 'Product Tax Class Id',
  PRIMARY KEY (`tax_calculation_id`),
  KEY `TAX_CALCULATION_TAX_CALCULATION_RULE_ID` (`tax_calculation_rule_id`),
  KEY `TAX_CALCULATION_CUSTOMER_TAX_CLASS_ID` (`customer_tax_class_id`),
  KEY `TAX_CALCULATION_PRODUCT_TAX_CLASS_ID` (`product_tax_class_id`),
  KEY `TAX_CALC_TAX_CALC_RATE_ID_CSTR_TAX_CLASS_ID_PRD_TAX_CLASS_ID` (`tax_calculation_rate_id`,`customer_tax_class_id`,`product_tax_class_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tax Calculation';

--
-- Table structure for table `tax_calculation_rate`
--

DROP TABLE IF EXISTS `tax_calculation_rate`;
CREATE TABLE `tax_calculation_rate` (
  `tax_calculation_rate_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Tax Calculation Rate Id',
  `tax_country_id` varchar(2) NOT NULL COMMENT 'Tax Country Id',
  `tax_region_id` int(11) NOT NULL COMMENT 'Tax Region Id',
  `tax_postcode` varchar(21) DEFAULT NULL COMMENT 'Tax Postcode',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `rate` decimal(12,4) NOT NULL COMMENT 'Rate',
  `zip_is_range` smallint(6) DEFAULT NULL COMMENT 'Zip Is Range',
  `zip_from` int(10) unsigned DEFAULT NULL COMMENT 'Zip From',
  `zip_to` int(10) unsigned DEFAULT NULL COMMENT 'Zip To',
  PRIMARY KEY (`tax_calculation_rate_id`),
  KEY `TAX_CALCULATION_RATE_TAX_COUNTRY_ID_TAX_REGION_ID_TAX_POSTCODE` (`tax_country_id`,`tax_region_id`,`tax_postcode`),
  KEY `TAX_CALCULATION_RATE_CODE` (`code`),
  KEY `IDX_CA799F1E2CB843495F601E56C84A626D` (`tax_calculation_rate_id`,`tax_country_id`,`tax_region_id`,`zip_is_range`,`tax_postcode`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Tax Calculation Rate';

--
-- Dumping data for table `tax_calculation_rate`
--

LOCK TABLES `tax_calculation_rate` WRITE;
/*!40000 ALTER TABLE `tax_calculation_rate` DISABLE KEYS */;
INSERT INTO `tax_calculation_rate` VALUES ('1','US','12','*','US-CA-*-Rate 1','8.2500',NULL,NULL,NULL),('2','US','43','*','US-NY-*-Rate 1','8.3750',NULL,NULL,NULL);
/*!40000 ALTER TABLE `tax_calculation_rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tax_calculation_rate_title`
--

DROP TABLE IF EXISTS `tax_calculation_rate_title`;
CREATE TABLE `tax_calculation_rate_title` (
  `tax_calculation_rate_title_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Tax Calculation Rate Title Id',
  `tax_calculation_rate_id` int(11) NOT NULL COMMENT 'Tax Calculation Rate Id',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  `value` varchar(255) NOT NULL COMMENT 'Value',
  PRIMARY KEY (`tax_calculation_rate_title_id`),
  KEY `TAX_CALCULATION_RATE_TITLE_TAX_CALCULATION_RATE_ID_STORE_ID` (`tax_calculation_rate_id`,`store_id`),
  KEY `TAX_CALCULATION_RATE_TITLE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tax Calculation Rate Title';

--
-- Table structure for table `tax_calculation_rule`
--

DROP TABLE IF EXISTS `tax_calculation_rule`;
CREATE TABLE `tax_calculation_rule` (
  `tax_calculation_rule_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Tax Calculation Rule Id',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `priority` int(11) NOT NULL COMMENT 'Priority',
  `position` int(11) NOT NULL COMMENT 'Position',
  `calculate_subtotal` int(11) NOT NULL COMMENT 'Calculate off subtotal option',
  PRIMARY KEY (`tax_calculation_rule_id`),
  KEY `TAX_CALCULATION_RULE_PRIORITY_POSITION` (`priority`,`position`),
  KEY `TAX_CALCULATION_RULE_CODE` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tax Calculation Rule';

--
-- Table structure for table `tax_class`
--

DROP TABLE IF EXISTS `tax_class`;
CREATE TABLE `tax_class` (
  `class_id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Class Id',
  `class_name` varchar(255) NOT NULL COMMENT 'Class Name',
  `class_type` varchar(8) NOT NULL DEFAULT 'CUSTOMER' COMMENT 'Class Type',
  PRIMARY KEY (`class_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Tax Class';

--
-- Dumping data for table `tax_class`
--

LOCK TABLES `tax_class` WRITE;
/*!40000 ALTER TABLE `tax_class` DISABLE KEYS */;
INSERT INTO `tax_class` VALUES (2,'Taxable Goods','PRODUCT'),(3,'Retail Customer','CUSTOMER');
/*!40000 ALTER TABLE `tax_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tax_order_aggregated_created`
--

DROP TABLE IF EXISTS `tax_order_aggregated_created`;
CREATE TABLE `tax_order_aggregated_created` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `order_status` varchar(50) NOT NULL COMMENT 'Order Status',
  `percent` float DEFAULT NULL COMMENT 'Percent',
  `orders_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `tax_base_amount_sum` float DEFAULT NULL COMMENT 'Tax Base Amount Sum',
  PRIMARY KEY (`id`),
  UNIQUE KEY `TAX_ORDER_AGGRED_CREATED_PERIOD_STORE_ID_CODE_PERCENT_ORDER_STS` (`period`,`store_id`,`code`,`percent`,`order_status`),
  KEY `TAX_ORDER_AGGREGATED_CREATED_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tax Order Aggregation';

--
-- Table structure for table `tax_order_aggregated_updated`
--

DROP TABLE IF EXISTS `tax_order_aggregated_updated`;
CREATE TABLE `tax_order_aggregated_updated` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `order_status` varchar(50) NOT NULL COMMENT 'Order Status',
  `percent` float DEFAULT NULL COMMENT 'Percent',
  `orders_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `tax_base_amount_sum` float DEFAULT NULL COMMENT 'Tax Base Amount Sum',
  PRIMARY KEY (`id`),
  UNIQUE KEY `TAX_ORDER_AGGRED_UPDATED_PERIOD_STORE_ID_CODE_PERCENT_ORDER_STS` (`period`,`store_id`,`code`,`percent`,`order_status`),
  KEY `TAX_ORDER_AGGREGATED_UPDATED_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tax Order Aggregated Updated';

--
-- Table structure for table `theme`
--

DROP TABLE IF EXISTS `theme`;
CREATE TABLE `theme` (
  `theme_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Theme identifier',
  `parent_id` int(11) DEFAULT NULL COMMENT 'Parent Id',
  `theme_path` varchar(255) DEFAULT NULL COMMENT 'Theme Path',
  `theme_title` varchar(255) NOT NULL COMMENT 'Theme Title',
  `preview_image` varchar(255) DEFAULT NULL COMMENT 'Preview Image',
  `is_featured` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Is Theme Featured',
  `area` varchar(255) NOT NULL COMMENT 'Theme Area',
  `type` smallint(6) NOT NULL COMMENT 'Theme type: 0:physical, 1:virtual, 2:staging',
  `code` text COMMENT 'Full theme code, including package',
  PRIMARY KEY (`theme_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='Core theme';

--
-- Dumping data for table `theme`
--

LOCK TABLES `theme` WRITE;
/*!40000 ALTER TABLE `theme` DISABLE KEYS */;
INSERT INTO `theme` VALUES ('1',NULL,'Magento/blank','Magento Blank','preview_image_58ef1f9f409e6.jpeg',0,'frontend',0,'Magento/blank'),('2','1','Magento/luma','Magento Luma','preview_image_58ef1f9f5eb1a.jpeg',0,'frontend',0,'Magento/luma'),('3',NULL,'Magento/backend','Magento 2 backend',NULL,0,'adminhtml',0,'Magento/backend'),('5','1','gemma/gemma_default','Magento gemma_default','preview_image_58f34e31552ef.jpeg',0,'frontend',0,'gemma/gemma_default'),('6','5','gemma/gemma2','gemma2','preview_image_58f34e3180600.jpeg',0,'frontend',0,'gemma/gemma2'),('7','5','gemma/gemma3','gemma3','preview_image_58f34e31a4a71.jpeg',0,'frontend',0,'gemma/gemma3'),('8','5','gemma/gemma4','gemma4','preview_image_58f34e31c8cb5.jpeg',0,'frontend',0,'gemma/gemma4'),('9','5','belpro/maisondesfleurs','Maison Des Fleurs','preview_image_58f37b5392a08.jpeg',0,'frontend',0,'belpro/maisondesfleurs'),('10','5','belpro/maisondesfleurs2','Maison Des Fleurs - Option 2','preview_image_58f5d4cd2dfe8.jpeg',0,'frontend',0,'belpro/maisondesfleurs2');
/*!40000 ALTER TABLE `theme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `theme_file`
--

DROP TABLE IF EXISTS `theme_file`;
CREATE TABLE `theme_file` (
  `theme_files_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Theme files identifier',
  `theme_id` int(10) unsigned NOT NULL COMMENT 'Theme Id',
  `file_path` varchar(255) DEFAULT NULL COMMENT 'Relative path to file',
  `file_type` varchar(32) NOT NULL COMMENT 'File Type',
  `content` longtext NOT NULL COMMENT 'File Content',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `is_temporary` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Is Temporary File',
  PRIMARY KEY (`theme_files_id`),
  KEY `THEME_FILE_THEME_ID_THEME_THEME_ID` (`theme_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Core theme files';

--
-- Table structure for table `translation`
--

DROP TABLE IF EXISTS `translation`;
CREATE TABLE `translation` (
  `key_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Key Id of Translation',
  `string` varchar(255) NOT NULL DEFAULT 'Translate String' COMMENT 'Translation String',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `translate` varchar(255) DEFAULT NULL COMMENT 'Translate',
  `locale` varchar(20) NOT NULL DEFAULT 'en_US' COMMENT 'Locale',
  `crc_string` bigint(20) NOT NULL DEFAULT '1591228201' COMMENT 'Translation String CRC32 Hash',
  PRIMARY KEY (`key_id`),
  UNIQUE KEY `TRANSLATION_STORE_ID_LOCALE_CRC_STRING_STRING` (`store_id`,`locale`,`crc_string`,`string`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Translations';

--
-- Table structure for table `ui_bookmark`
--

DROP TABLE IF EXISTS `ui_bookmark`;
CREATE TABLE `ui_bookmark` (
  `bookmark_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Bookmark identifier',
  `user_id` int(10) unsigned NOT NULL COMMENT 'User Id',
  `namespace` varchar(255) NOT NULL COMMENT 'Bookmark namespace',
  `identifier` varchar(255) NOT NULL COMMENT 'Bookmark Identifier',
  `current` smallint(6) NOT NULL COMMENT 'Mark current bookmark per user and identifier',
  `title` varchar(255) DEFAULT NULL COMMENT 'Bookmark title',
  `config` longtext COMMENT 'Bookmark config',
  `created_at` datetime NOT NULL COMMENT 'Bookmark created at',
  `updated_at` datetime NOT NULL COMMENT 'Bookmark updated at',
  PRIMARY KEY (`bookmark_id`),
  KEY `UI_BOOKMARK_USER_ID_NAMESPACE_IDENTIFIER` (`user_id`,`namespace`,`identifier`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='Bookmark';

--
-- Dumping data for table `ui_bookmark`
--

LOCK TABLES `ui_bookmark` WRITE;
/*!40000 ALTER TABLE `ui_bookmark` DISABLE KEYS */;
INSERT INTO `ui_bookmark` VALUES ('1','1','product_listing','default',1,'Default View','{\"views\":{\"default\":{\"label\":\"Default View\",\"index\":\"default\",\"editable\":false,\"data\":{\"filters\":{\"applied\":{\"placeholder\":true}},\"columns\":{\"entity_id\":{\"visible\":true,\"sorting\":\"asc\"},\"name\":{\"visible\":true,\"sorting\":false},\"sku\":{\"visible\":true,\"sorting\":false},\"price\":{\"visible\":true,\"sorting\":false},\"websites\":{\"visible\":true,\"sorting\":false},\"qty\":{\"visible\":true,\"sorting\":false},\"short_description\":{\"visible\":false,\"sorting\":false},\"special_price\":{\"visible\":false,\"sorting\":false},\"cost\":{\"visible\":false,\"sorting\":false},\"weight\":{\"visible\":false,\"sorting\":false},\"meta_title\":{\"visible\":false,\"sorting\":false},\"meta_keyword\":{\"visible\":false,\"sorting\":false},\"meta_description\":{\"visible\":false,\"sorting\":false},\"url_key\":{\"visible\":false,\"sorting\":false},\"msrp\":{\"visible\":false,\"sorting\":false},\"type_id\":{\"visible\":true,\"sorting\":false},\"attribute_set_id\":{\"visible\":true,\"sorting\":false},\"visibility\":{\"visible\":true,\"sorting\":false},\"status\":{\"visible\":true,\"sorting\":false},\"manufacturer\":{\"visible\":false,\"sorting\":false},\"color\":{\"visible\":false,\"sorting\":false},\"custom_design\":{\"visible\":false,\"sorting\":false},\"page_layout\":{\"visible\":false,\"sorting\":false},\"country_of_manufacture\":{\"visible\":false,\"sorting\":false},\"custom_layout\":{\"visible\":false,\"sorting\":false},\"tax_class_id\":{\"visible\":false,\"sorting\":false},\"gift_message_available\":{\"visible\":false,\"sorting\":false},\"ids\":{\"visible\":true,\"sorting\":false},\"thumbnail\":{\"visible\":true,\"sorting\":false},\"actions\":{\"visible\":true,\"sorting\":false},\"special_from_date\":{\"visible\":false,\"sorting\":false},\"special_to_date\":{\"visible\":false,\"sorting\":false},\"news_from_date\":{\"visible\":false,\"sorting\":false},\"news_to_date\":{\"visible\":false,\"sorting\":false},\"custom_design_from\":{\"visible\":false,\"sorting\":false},\"custom_design_to\":{\"visible\":false,\"sorting\":false}},\"displayMode\":\"grid\",\"positions\":{\"ids\":0,\"entity_id\":1,\"thumbnail\":2,\"name\":3,\"type_id\":4,\"attribute_set_id\":5,\"sku\":6,\"price\":7,\"qty\":8,\"visibility\":9,\"status\":10,\"websites\":11,\"short_description\":12,\"special_price\":13,\"special_from_date\":14,\"special_to_date\":15,\"cost\":16,\"weight\":17,\"manufacturer\":18,\"meta_title\":19,\"meta_keyword\":20,\"meta_description\":21,\"color\":22,\"news_from_date\":23,\"news_to_date\":24,\"custom_design\":25,\"custom_design_from\":26,\"custom_design_to\":27,\"page_layout\":28,\"country_of_manufacture\":29,\"custom_layout\":30,\"url_key\":31,\"msrp\":32,\"tax_class_id\":33,\"gift_message_available\":34,\"actions\":35},\"paging\":{\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20}},\"value\":\"Default View\"}}}','0000-00-00 00:00:00','0000-00-00 00:00:00'),('2','1','product_listing','current',0,NULL,'{\"current\":{\"filters\":{\"applied\":{\"placeholder\":true}},\"columns\":{\"entity_id\":{\"visible\":true,\"sorting\":\"asc\"},\"name\":{\"visible\":true,\"sorting\":false},\"sku\":{\"visible\":true,\"sorting\":false},\"price\":{\"visible\":true,\"sorting\":false},\"websites\":{\"visible\":true,\"sorting\":false},\"qty\":{\"visible\":true,\"sorting\":false},\"short_description\":{\"visible\":false,\"sorting\":false},\"special_price\":{\"visible\":false,\"sorting\":false},\"cost\":{\"visible\":false,\"sorting\":false},\"weight\":{\"visible\":false,\"sorting\":false},\"meta_title\":{\"visible\":false,\"sorting\":false},\"meta_keyword\":{\"visible\":false,\"sorting\":false},\"meta_description\":{\"visible\":false,\"sorting\":false},\"url_key\":{\"visible\":false,\"sorting\":false},\"msrp\":{\"visible\":false,\"sorting\":false},\"type_id\":{\"visible\":true,\"sorting\":false},\"attribute_set_id\":{\"visible\":true,\"sorting\":false},\"visibility\":{\"visible\":true,\"sorting\":false},\"status\":{\"visible\":true,\"sorting\":false},\"manufacturer\":{\"visible\":false,\"sorting\":false},\"color\":{\"visible\":false,\"sorting\":false},\"custom_design\":{\"visible\":false,\"sorting\":false},\"page_layout\":{\"visible\":false,\"sorting\":false},\"country_of_manufacture\":{\"visible\":false,\"sorting\":false},\"custom_layout\":{\"visible\":false,\"sorting\":false},\"tax_class_id\":{\"visible\":false,\"sorting\":false},\"gift_message_available\":{\"visible\":false,\"sorting\":false},\"ids\":{\"visible\":true,\"sorting\":false},\"thumbnail\":{\"visible\":true,\"sorting\":false},\"actions\":{\"visible\":true,\"sorting\":false},\"special_from_date\":{\"visible\":false,\"sorting\":false},\"special_to_date\":{\"visible\":false,\"sorting\":false},\"news_from_date\":{\"visible\":false,\"sorting\":false},\"news_to_date\":{\"visible\":false,\"sorting\":false},\"custom_design_from\":{\"visible\":false,\"sorting\":false},\"custom_design_to\":{\"visible\":false,\"sorting\":false},\"featured\":{\"visible\":false,\"sorting\":false}},\"displayMode\":\"grid\",\"positions\":{\"ids\":0,\"entity_id\":1,\"thumbnail\":2,\"name\":3,\"type_id\":4,\"attribute_set_id\":5,\"sku\":6,\"price\":7,\"qty\":8,\"visibility\":9,\"status\":10,\"websites\":11,\"short_description\":12,\"special_price\":13,\"special_from_date\":14,\"special_to_date\":15,\"cost\":16,\"weight\":17,\"manufacturer\":18,\"meta_title\":19,\"meta_keyword\":20,\"meta_description\":21,\"color\":22,\"news_from_date\":23,\"news_to_date\":24,\"custom_design\":25,\"custom_design_from\":26,\"custom_design_to\":27,\"page_layout\":28,\"country_of_manufacture\":29,\"custom_layout\":30,\"url_key\":31,\"msrp\":32,\"tax_class_id\":33,\"gift_message_available\":34,\"actions\":35,\"featured\":36},\"paging\":{\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20}}}','0000-00-00 00:00:00','0000-00-00 00:00:00'),('3','1','sales_order_grid','default',1,'Default View','{\"views\":{\"default\":{\"label\":\"Default View\",\"index\":\"default\",\"editable\":false,\"data\":{\"filters\":{\"applied\":{\"placeholder\":true}},\"columns\":{\"increment_id\":{\"visible\":true,\"sorting\":\"desc\"},\"store_id\":{\"visible\":true,\"sorting\":false},\"billing_name\":{\"visible\":true,\"sorting\":false},\"shipping_name\":{\"visible\":true,\"sorting\":false},\"base_grand_total\":{\"visible\":true,\"sorting\":false},\"grand_total\":{\"visible\":true,\"sorting\":false},\"billing_address\":{\"visible\":false,\"sorting\":false},\"shipping_address\":{\"visible\":false,\"sorting\":false},\"shipping_information\":{\"visible\":false,\"sorting\":false},\"customer_email\":{\"visible\":false,\"sorting\":false},\"subtotal\":{\"visible\":false,\"sorting\":false},\"shipping_and_handling\":{\"visible\":false,\"sorting\":false},\"customer_name\":{\"visible\":false,\"sorting\":false},\"total_refunded\":{\"visible\":false,\"sorting\":false},\"ids\":{\"visible\":true,\"sorting\":false},\"status\":{\"visible\":true,\"sorting\":false},\"customer_group\":{\"visible\":false,\"sorting\":false},\"payment_method\":{\"visible\":false,\"sorting\":false},\"actions\":{\"visible\":true,\"sorting\":false},\"created_at\":{\"visible\":true,\"sorting\":false}},\"displayMode\":\"grid\",\"paging\":{\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20},\"positions\":{\"ids\":0,\"increment_id\":1,\"store_id\":2,\"created_at\":3,\"billing_name\":4,\"shipping_name\":5,\"base_grand_total\":6,\"grand_total\":7,\"status\":8,\"billing_address\":9,\"shipping_address\":10,\"shipping_information\":11,\"customer_email\":12,\"customer_group\":13,\"subtotal\":14,\"shipping_and_handling\":15,\"customer_name\":16,\"payment_method\":17,\"total_refunded\":18,\"actions\":19},\"search\":{\"value\":\"\"}},\"value\":\"Default View\"}}}','0000-00-00 00:00:00','0000-00-00 00:00:00'),('4','1','sales_order_grid','current',0,NULL,'{\"current\":{\"filters\":{\"applied\":{\"placeholder\":true}},\"columns\":{\"increment_id\":{\"visible\":true,\"sorting\":\"desc\"},\"store_id\":{\"visible\":true,\"sorting\":false},\"billing_name\":{\"visible\":true,\"sorting\":false},\"shipping_name\":{\"visible\":true,\"sorting\":false},\"base_grand_total\":{\"visible\":true,\"sorting\":false},\"grand_total\":{\"visible\":true,\"sorting\":false},\"billing_address\":{\"visible\":false,\"sorting\":false},\"shipping_address\":{\"visible\":false,\"sorting\":false},\"shipping_information\":{\"visible\":false,\"sorting\":false},\"customer_email\":{\"visible\":false,\"sorting\":false},\"subtotal\":{\"visible\":false,\"sorting\":false},\"shipping_and_handling\":{\"visible\":false,\"sorting\":false},\"customer_name\":{\"visible\":false,\"sorting\":false},\"total_refunded\":{\"visible\":false,\"sorting\":false},\"ids\":{\"visible\":true,\"sorting\":false},\"status\":{\"visible\":true,\"sorting\":false},\"customer_group\":{\"visible\":false,\"sorting\":false},\"payment_method\":{\"visible\":false,\"sorting\":false},\"actions\":{\"visible\":true,\"sorting\":false},\"created_at\":{\"visible\":true,\"sorting\":false}},\"displayMode\":\"grid\",\"paging\":{\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20},\"positions\":{\"ids\":0,\"increment_id\":1,\"store_id\":2,\"created_at\":3,\"billing_name\":4,\"shipping_name\":5,\"base_grand_total\":6,\"grand_total\":7,\"status\":8,\"billing_address\":9,\"shipping_address\":10,\"shipping_information\":11,\"customer_email\":12,\"customer_group\":13,\"subtotal\":14,\"shipping_and_handling\":15,\"customer_name\":16,\"payment_method\":17,\"total_refunded\":18,\"actions\":19},\"search\":{\"value\":\"\"}}}','0000-00-00 00:00:00','0000-00-00 00:00:00'),('5','1','sales_order_view_invoice_grid','default',1,'Default View','{\"views\":{\"default\":{\"label\":\"Default View\",\"index\":\"default\",\"editable\":false,\"data\":{\"search\":{\"value\":\"\"},\"filters\":{\"applied\":{\"placeholder\":true}},\"columns\":{\"increment_id\":{\"visible\":true,\"sorting\":\"asc\"},\"order_increment_id\":{\"visible\":true,\"sorting\":false},\"billing_name\":{\"visible\":true,\"sorting\":false},\"grand_total\":{\"visible\":true,\"sorting\":false},\"store_id\":{\"visible\":false,\"sorting\":false},\"billing_address\":{\"visible\":false,\"sorting\":false},\"shipping_address\":{\"visible\":false,\"sorting\":false},\"customer_name\":{\"visible\":false,\"sorting\":false},\"customer_email\":{\"visible\":false,\"sorting\":false},\"shipping_information\":{\"visible\":false,\"sorting\":false},\"subtotal\":{\"visible\":false,\"sorting\":false},\"shipping_and_handling\":{\"visible\":false,\"sorting\":false},\"ids\":{\"visible\":true,\"sorting\":false},\"state\":{\"visible\":true,\"sorting\":false},\"customer_group_id\":{\"visible\":false,\"sorting\":false},\"payment_method\":{\"visible\":false,\"sorting\":false},\"actions\":{\"visible\":true,\"sorting\":false},\"created_at\":{\"visible\":true,\"sorting\":false},\"order_created_at\":{\"visible\":true,\"sorting\":false}},\"displayMode\":\"grid\",\"paging\":{\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20},\"positions\":{\"ids\":0,\"increment_id\":1,\"created_at\":2,\"order_increment_id\":3,\"order_created_at\":4,\"billing_name\":5,\"state\":6,\"grand_total\":7,\"store_id\":8,\"billing_address\":9,\"shipping_address\":10,\"customer_name\":11,\"customer_email\":12,\"customer_group_id\":13,\"payment_method\":14,\"shipping_information\":15,\"subtotal\":16,\"shipping_and_handling\":17,\"actions\":18}},\"value\":\"Default View\"}}}','0000-00-00 00:00:00','0000-00-00 00:00:00'),('6','1','sales_order_view_shipment_grid','default',1,'Default View','{\"views\":{\"default\":{\"label\":\"Default View\",\"index\":\"default\",\"editable\":false,\"data\":{\"search\":{\"value\":\"\"},\"filters\":{\"applied\":{\"placeholder\":true}},\"columns\":{\"increment_id\":{\"visible\":true,\"sorting\":\"asc\"},\"order_increment_id\":{\"visible\":true,\"sorting\":false},\"shipping_name\":{\"visible\":true,\"sorting\":false},\"total_qty\":{\"visible\":true,\"sorting\":false},\"store_id\":{\"visible\":false,\"sorting\":false},\"customer_name\":{\"visible\":false,\"sorting\":false},\"customer_email\":{\"visible\":false,\"sorting\":false},\"billing_address\":{\"visible\":false,\"sorting\":false},\"shipping_address\":{\"visible\":false,\"sorting\":false},\"shipping_information\":{\"visible\":false,\"sorting\":false},\"ids\":{\"visible\":true,\"sorting\":false},\"order_status\":{\"visible\":false,\"sorting\":false},\"customer_group_id\":{\"visible\":false,\"sorting\":false},\"payment_method\":{\"visible\":false,\"sorting\":false},\"actions\":{\"visible\":true,\"sorting\":false},\"created_at\":{\"visible\":true,\"sorting\":false},\"order_created_at\":{\"visible\":true,\"sorting\":false}},\"displayMode\":\"grid\",\"paging\":{\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20},\"positions\":{\"ids\":0,\"increment_id\":1,\"created_at\":2,\"order_increment_id\":3,\"order_created_at\":4,\"shipping_name\":5,\"total_qty\":6,\"order_status\":7,\"store_id\":8,\"customer_name\":9,\"customer_email\":10,\"customer_group_id\":11,\"billing_address\":12,\"shipping_address\":13,\"payment_method\":14,\"shipping_information\":15,\"actions\":16}},\"value\":\"Default View\"}}}','0000-00-00 00:00:00','0000-00-00 00:00:00'),('7','1','sales_order_view_creditmemo_grid','default',1,'Default View','{\"views\":{\"default\":{\"label\":\"Default View\",\"index\":\"default\",\"editable\":false,\"data\":{\"search\":{\"value\":\"\"},\"filters\":{\"applied\":{\"placeholder\":true}},\"columns\":{\"increment_id\":{\"visible\":true,\"sorting\":false},\"order_increment_id\":{\"visible\":true,\"sorting\":false},\"billing_name\":{\"visible\":true,\"sorting\":false},\"base_grand_total\":{\"visible\":true,\"sorting\":false},\"store_id\":{\"visible\":false,\"sorting\":false},\"billing_address\":{\"visible\":false,\"sorting\":false},\"shipping_address\":{\"visible\":false,\"sorting\":false},\"customer_name\":{\"visible\":false,\"sorting\":false},\"customer_email\":{\"visible\":false,\"sorting\":false},\"shipping_information\":{\"visible\":false,\"sorting\":false},\"subtotal\":{\"visible\":false,\"sorting\":false},\"shipping_and_handling\":{\"visible\":false,\"sorting\":false},\"adjustment_positive\":{\"visible\":false,\"sorting\":false},\"adjustment_negative\":{\"visible\":false,\"sorting\":false},\"order_base_grand_total\":{\"visible\":false,\"sorting\":false},\"ids\":{\"visible\":true,\"sorting\":false},\"state\":{\"visible\":true,\"sorting\":false},\"order_status\":{\"visible\":false,\"sorting\":false},\"customer_group_id\":{\"visible\":false,\"sorting\":false},\"payment_method\":{\"visible\":false,\"sorting\":false},\"actions\":{\"visible\":true,\"sorting\":false},\"created_at\":{\"visible\":true,\"sorting\":false},\"order_created_at\":{\"visible\":true,\"sorting\":false}},\"displayMode\":\"grid\",\"paging\":{\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20},\"positions\":{\"ids\":0,\"increment_id\":1,\"created_at\":2,\"order_increment_id\":3,\"order_created_at\":4,\"billing_name\":5,\"state\":6,\"base_grand_total\":7,\"order_status\":8,\"store_id\":9,\"billing_address\":10,\"shipping_address\":11,\"customer_name\":12,\"customer_email\":13,\"customer_group_id\":14,\"payment_method\":15,\"shipping_information\":16,\"subtotal\":17,\"shipping_and_handling\":18,\"adjustment_positive\":19,\"adjustment_negative\":20,\"order_base_grand_total\":21,\"actions\":22}},\"value\":\"Default View\"}}}','0000-00-00 00:00:00','0000-00-00 00:00:00'),('8','1','sales_order_view_creditmemo_grid','current',0,NULL,'{\"current\":{\"search\":{\"value\":\"\"},\"filters\":{\"applied\":{\"placeholder\":true}},\"columns\":{\"increment_id\":{\"visible\":true,\"sorting\":false},\"order_increment_id\":{\"visible\":true,\"sorting\":false},\"billing_name\":{\"visible\":true,\"sorting\":false},\"base_grand_total\":{\"visible\":true,\"sorting\":false},\"store_id\":{\"visible\":false,\"sorting\":false},\"billing_address\":{\"visible\":false,\"sorting\":false},\"shipping_address\":{\"visible\":false,\"sorting\":false},\"customer_name\":{\"visible\":false,\"sorting\":false},\"customer_email\":{\"visible\":false,\"sorting\":false},\"shipping_information\":{\"visible\":false,\"sorting\":false},\"subtotal\":{\"visible\":false,\"sorting\":false},\"shipping_and_handling\":{\"visible\":false,\"sorting\":false},\"adjustment_positive\":{\"visible\":false,\"sorting\":false},\"adjustment_negative\":{\"visible\":false,\"sorting\":false},\"order_base_grand_total\":{\"visible\":false,\"sorting\":false},\"ids\":{\"visible\":true,\"sorting\":false},\"state\":{\"visible\":true,\"sorting\":false},\"order_status\":{\"visible\":false,\"sorting\":false},\"customer_group_id\":{\"visible\":false,\"sorting\":false},\"payment_method\":{\"visible\":false,\"sorting\":false},\"actions\":{\"visible\":true,\"sorting\":false},\"created_at\":{\"visible\":true,\"sorting\":false},\"order_created_at\":{\"visible\":true,\"sorting\":false}},\"displayMode\":\"grid\",\"paging\":{\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20},\"positions\":{\"ids\":0,\"increment_id\":1,\"created_at\":2,\"order_increment_id\":3,\"order_created_at\":4,\"billing_name\":5,\"state\":6,\"base_grand_total\":7,\"order_status\":8,\"store_id\":9,\"billing_address\":10,\"shipping_address\":11,\"customer_name\":12,\"customer_email\":13,\"customer_group_id\":14,\"payment_method\":15,\"shipping_information\":16,\"subtotal\":17,\"shipping_and_handling\":18,\"adjustment_positive\":19,\"adjustment_negative\":20,\"order_base_grand_total\":21,\"actions\":22}}}','0000-00-00 00:00:00','0000-00-00 00:00:00'),('9','1','sales_order_view_invoice_grid','current',0,NULL,'{\"current\":{\"search\":{\"value\":\"\"},\"filters\":{\"applied\":{\"placeholder\":true}},\"columns\":{\"increment_id\":{\"visible\":true,\"sorting\":\"asc\"},\"order_increment_id\":{\"visible\":true,\"sorting\":false},\"billing_name\":{\"visible\":true,\"sorting\":false},\"grand_total\":{\"visible\":true,\"sorting\":false},\"store_id\":{\"visible\":false,\"sorting\":false},\"billing_address\":{\"visible\":false,\"sorting\":false},\"shipping_address\":{\"visible\":false,\"sorting\":false},\"customer_name\":{\"visible\":false,\"sorting\":false},\"customer_email\":{\"visible\":false,\"sorting\":false},\"shipping_information\":{\"visible\":false,\"sorting\":false},\"subtotal\":{\"visible\":false,\"sorting\":false},\"shipping_and_handling\":{\"visible\":false,\"sorting\":false},\"ids\":{\"visible\":true,\"sorting\":false},\"state\":{\"visible\":true,\"sorting\":false},\"customer_group_id\":{\"visible\":false,\"sorting\":false},\"payment_method\":{\"visible\":false,\"sorting\":false},\"actions\":{\"visible\":true,\"sorting\":false},\"created_at\":{\"visible\":true,\"sorting\":false},\"order_created_at\":{\"visible\":true,\"sorting\":false}},\"displayMode\":\"grid\",\"paging\":{\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20},\"positions\":{\"ids\":0,\"increment_id\":1,\"created_at\":2,\"order_increment_id\":3,\"order_created_at\":4,\"billing_name\":5,\"state\":6,\"grand_total\":7,\"store_id\":8,\"billing_address\":9,\"shipping_address\":10,\"customer_name\":11,\"customer_email\":12,\"customer_group_id\":13,\"payment_method\":14,\"shipping_information\":15,\"subtotal\":16,\"shipping_and_handling\":17,\"actions\":18}}}','0000-00-00 00:00:00','0000-00-00 00:00:00'),('10','1','sales_order_view_shipment_grid','current',0,NULL,'{\"current\":{\"search\":{\"value\":\"\"},\"filters\":{\"applied\":{\"placeholder\":true}},\"columns\":{\"increment_id\":{\"visible\":true,\"sorting\":\"asc\"},\"order_increment_id\":{\"visible\":true,\"sorting\":false},\"shipping_name\":{\"visible\":true,\"sorting\":false},\"total_qty\":{\"visible\":true,\"sorting\":false},\"store_id\":{\"visible\":false,\"sorting\":false},\"customer_name\":{\"visible\":false,\"sorting\":false},\"customer_email\":{\"visible\":false,\"sorting\":false},\"billing_address\":{\"visible\":false,\"sorting\":false},\"shipping_address\":{\"visible\":false,\"sorting\":false},\"shipping_information\":{\"visible\":false,\"sorting\":false},\"ids\":{\"visible\":true,\"sorting\":false},\"order_status\":{\"visible\":false,\"sorting\":false},\"customer_group_id\":{\"visible\":false,\"sorting\":false},\"payment_method\":{\"visible\":false,\"sorting\":false},\"actions\":{\"visible\":true,\"sorting\":false},\"created_at\":{\"visible\":true,\"sorting\":false},\"order_created_at\":{\"visible\":true,\"sorting\":false}},\"displayMode\":\"grid\",\"paging\":{\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20},\"positions\":{\"ids\":0,\"increment_id\":1,\"created_at\":2,\"order_increment_id\":3,\"order_created_at\":4,\"shipping_name\":5,\"total_qty\":6,\"order_status\":7,\"store_id\":8,\"customer_name\":9,\"customer_email\":10,\"customer_group_id\":11,\"billing_address\":12,\"shipping_address\":13,\"payment_method\":14,\"shipping_information\":15,\"actions\":16}}}','0000-00-00 00:00:00','0000-00-00 00:00:00'),('11','1','product_attributes_grid','default',1,'Default View','{\"views\":{\"default\":{\"label\":\"Default View\",\"index\":\"default\",\"editable\":false,\"data\":{\"displayMode\":\"grid\",\"columns\":{\"attribute_code\":{\"visible\":true,\"sorting\":\"asc\"},\"frontend_label\":{\"visible\":true,\"sorting\":false},\"ids\":{\"visible\":true,\"sorting\":false},\"is_required\":{\"visible\":true,\"sorting\":false},\"is_user_defined\":{\"visible\":true,\"sorting\":false},\"is_visible\":{\"visible\":true,\"sorting\":false},\"is_global\":{\"visible\":true,\"sorting\":false},\"is_searchable\":{\"visible\":true,\"sorting\":false},\"is_comparable\":{\"visible\":true,\"sorting\":false},\"is_filterable\":{\"visible\":true,\"sorting\":false}},\"positions\":{\"ids\":0,\"attribute_code\":1,\"frontend_label\":2,\"is_required\":3,\"is_user_defined\":4,\"is_visible\":5,\"is_global\":6,\"is_searchable\":7,\"is_comparable\":8,\"is_filterable\":9},\"paging\":{\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20}},\"value\":\"Default View\"}}}','0000-00-00 00:00:00','0000-00-00 00:00:00'),('12','1','product_attributes_grid','current',0,NULL,'{\"current\":{\"displayMode\":\"grid\",\"columns\":{\"attribute_code\":{\"visible\":true,\"sorting\":\"asc\"},\"frontend_label\":{\"visible\":true,\"sorting\":false},\"ids\":{\"visible\":true,\"sorting\":false},\"is_required\":{\"visible\":true,\"sorting\":false},\"is_user_defined\":{\"visible\":true,\"sorting\":false},\"is_visible\":{\"visible\":true,\"sorting\":false},\"is_global\":{\"visible\":true,\"sorting\":false},\"is_searchable\":{\"visible\":true,\"sorting\":false},\"is_comparable\":{\"visible\":true,\"sorting\":false},\"is_filterable\":{\"visible\":true,\"sorting\":false}},\"positions\":{\"ids\":0,\"attribute_code\":1,\"frontend_label\":2,\"is_required\":3,\"is_user_defined\":4,\"is_visible\":5,\"is_global\":6,\"is_searchable\":7,\"is_comparable\":8,\"is_filterable\":9},\"paging\":{\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20}}}','0000-00-00 00:00:00','0000-00-00 00:00:00'),('13','1','design_config_listing','default',1,'Default View','{\"views\":{\"default\":{\"label\":\"Default View\",\"index\":\"default\",\"editable\":false,\"data\":{\"filters\":{\"applied\":{\"placeholder\":true}},\"columns\":{\"default\":{\"visible\":true,\"sorting\":false},\"store_website_id\":{\"visible\":true,\"sorting\":false},\"store_group_id\":{\"visible\":true,\"sorting\":false},\"store_id\":{\"visible\":true,\"sorting\":false},\"theme_theme_id\":{\"visible\":true,\"sorting\":false},\"actions\":{\"visible\":true,\"sorting\":false}},\"displayMode\":\"grid\",\"paging\":{\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20},\"positions\":{\"default\":0,\"store_website_id\":1,\"store_group_id\":2,\"store_id\":3,\"theme_theme_id\":4,\"actions\":5}},\"value\":\"Default View\"}}}','0000-00-00 00:00:00','0000-00-00 00:00:00'),('14','1','design_config_listing','current',0,NULL,'{\"current\":{\"filters\":{\"applied\":{\"placeholder\":true}},\"columns\":{\"default\":{\"visible\":true,\"sorting\":false},\"store_website_id\":{\"visible\":true,\"sorting\":false},\"store_group_id\":{\"visible\":true,\"sorting\":false},\"store_id\":{\"visible\":true,\"sorting\":false},\"theme_theme_id\":{\"visible\":true,\"sorting\":false},\"actions\":{\"visible\":true,\"sorting\":false}},\"displayMode\":\"grid\",\"paging\":{\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20},\"positions\":{\"default\":0,\"store_website_id\":1,\"store_group_id\":2,\"store_id\":3,\"theme_theme_id\":4,\"actions\":5}}}','0000-00-00 00:00:00','0000-00-00 00:00:00'),('15','1','cms_block_listing','default',1,'Default View','{\"views\":{\"default\":{\"label\":\"Default View\",\"index\":\"default\",\"editable\":false,\"data\":{\"search\":{\"value\":\"\"},\"filters\":{\"applied\":{\"placeholder\":true}},\"columns\":{\"block_id\":{\"visible\":true,\"sorting\":\"asc\"},\"title\":{\"visible\":true,\"sorting\":false},\"identifier\":{\"visible\":true,\"sorting\":false},\"store_id\":{\"visible\":true,\"sorting\":false},\"ids\":{\"visible\":true,\"sorting\":false},\"is_active\":{\"visible\":true,\"sorting\":false},\"actions\":{\"visible\":true,\"sorting\":false},\"creation_time\":{\"visible\":true,\"sorting\":false},\"update_time\":{\"visible\":true,\"sorting\":false}},\"displayMode\":\"grid\",\"paging\":{\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20},\"positions\":{\"ids\":0,\"block_id\":1,\"title\":2,\"identifier\":3,\"store_id\":4,\"is_active\":5,\"creation_time\":6,\"update_time\":7,\"actions\":8}},\"value\":\"Default View\"}}}','0000-00-00 00:00:00','0000-00-00 00:00:00'),('16','1','cms_block_listing','current',0,NULL,'{\"current\":{\"search\":{\"value\":\"\"},\"filters\":{\"applied\":{\"placeholder\":true}},\"columns\":{\"block_id\":{\"visible\":true,\"sorting\":\"asc\"},\"title\":{\"visible\":true,\"sorting\":false},\"identifier\":{\"visible\":true,\"sorting\":false},\"store_id\":{\"visible\":true,\"sorting\":false},\"ids\":{\"visible\":true,\"sorting\":false},\"is_active\":{\"visible\":true,\"sorting\":false},\"actions\":{\"visible\":true,\"sorting\":false},\"creation_time\":{\"visible\":true,\"sorting\":false},\"update_time\":{\"visible\":true,\"sorting\":false}},\"displayMode\":\"grid\",\"paging\":{\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20},\"positions\":{\"ids\":0,\"block_id\":1,\"title\":2,\"identifier\":3,\"store_id\":4,\"is_active\":5,\"creation_time\":6,\"update_time\":7,\"actions\":8}}}','0000-00-00 00:00:00','0000-00-00 00:00:00'),('17','1','cms_page_listing','default',1,'Default View','{\"views\":{\"default\":{\"label\":\"Default View\",\"index\":\"default\",\"editable\":false,\"data\":{\"search\":{\"value\":\"\"},\"filters\":{\"applied\":{\"placeholder\":true}},\"columns\":{\"page_id\":{\"visible\":true,\"sorting\":\"asc\"},\"title\":{\"visible\":true,\"sorting\":false},\"identifier\":{\"visible\":true,\"sorting\":false},\"store_id\":{\"visible\":true,\"sorting\":false},\"meta_title\":{\"visible\":false,\"sorting\":false},\"meta_keywords\":{\"visible\":false,\"sorting\":false},\"meta_description\":{\"visible\":false,\"sorting\":false},\"ids\":{\"visible\":true,\"sorting\":false},\"page_layout\":{\"visible\":true,\"sorting\":false},\"is_active\":{\"visible\":true,\"sorting\":false},\"custom_theme\":{\"visible\":false,\"sorting\":false},\"custom_root_template\":{\"visible\":false,\"sorting\":false},\"actions\":{\"visible\":true,\"sorting\":false},\"creation_time\":{\"visible\":true,\"sorting\":false},\"update_time\":{\"visible\":true,\"sorting\":false},\"custom_theme_from\":{\"visible\":false,\"sorting\":false},\"custom_theme_to\":{\"visible\":false,\"sorting\":false}},\"displayMode\":\"grid\",\"paging\":{\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20},\"positions\":{\"ids\":0,\"page_id\":1,\"title\":2,\"identifier\":3,\"page_layout\":4,\"store_id\":5,\"is_active\":6,\"creation_time\":7,\"update_time\":8,\"custom_theme_from\":9,\"custom_theme_to\":10,\"custom_theme\":11,\"custom_root_template\":12,\"meta_title\":13,\"meta_keywords\":14,\"meta_description\":15,\"actions\":16}},\"value\":\"Default View\"}}}','0000-00-00 00:00:00','0000-00-00 00:00:00'),('18','1','cms_page_listing','current',0,NULL,'{\"current\":{\"search\":{\"value\":\"\"},\"filters\":{\"applied\":{\"placeholder\":true}},\"columns\":{\"page_id\":{\"visible\":true,\"sorting\":\"asc\"},\"title\":{\"visible\":true,\"sorting\":false},\"identifier\":{\"visible\":true,\"sorting\":false},\"store_id\":{\"visible\":true,\"sorting\":false},\"meta_title\":{\"visible\":false,\"sorting\":false},\"meta_keywords\":{\"visible\":false,\"sorting\":false},\"meta_description\":{\"visible\":false,\"sorting\":false},\"ids\":{\"visible\":true,\"sorting\":false},\"page_layout\":{\"visible\":true,\"sorting\":false},\"is_active\":{\"visible\":true,\"sorting\":false},\"custom_theme\":{\"visible\":false,\"sorting\":false},\"custom_root_template\":{\"visible\":false,\"sorting\":false},\"actions\":{\"visible\":true,\"sorting\":false},\"creation_time\":{\"visible\":true,\"sorting\":false},\"update_time\":{\"visible\":true,\"sorting\":false},\"custom_theme_from\":{\"visible\":false,\"sorting\":false},\"custom_theme_to\":{\"visible\":false,\"sorting\":false}},\"displayMode\":\"grid\",\"paging\":{\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20},\"positions\":{\"ids\":0,\"page_id\":1,\"title\":2,\"identifier\":3,\"page_layout\":4,\"store_id\":5,\"is_active\":6,\"creation_time\":7,\"update_time\":8,\"custom_theme_from\":9,\"custom_theme_to\":10,\"custom_theme\":11,\"custom_root_template\":12,\"meta_title\":13,\"meta_keywords\":14,\"meta_description\":15,\"actions\":16}}}','0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `ui_bookmark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `url_rewrite`
--

DROP TABLE IF EXISTS `url_rewrite`;
CREATE TABLE `url_rewrite` (
  `url_rewrite_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rewrite Id',
  `entity_type` varchar(32) NOT NULL COMMENT 'Entity type code',
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `request_path` varchar(255) DEFAULT NULL COMMENT 'Request Path',
  `target_path` varchar(255) DEFAULT NULL COMMENT 'Target Path',
  `redirect_type` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Redirect Type',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  `description` varchar(255) DEFAULT NULL COMMENT 'Description',
  `is_autogenerated` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is rewrite generated automatically flag',
  `metadata` varchar(255) DEFAULT NULL COMMENT 'Meta data for url rewrite',
  PRIMARY KEY (`url_rewrite_id`),
  UNIQUE KEY `URL_REWRITE_REQUEST_PATH_STORE_ID` (`request_path`,`store_id`),
  KEY `URL_REWRITE_TARGET_PATH` (`target_path`),
  KEY `URL_REWRITE_STORE_ID_ENTITY_ID` (`store_id`,`entity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=523 DEFAULT CHARSET=utf8 COMMENT='Url Rewrites';

--
-- Dumping data for table `url_rewrite`
--

LOCK TABLES `url_rewrite` WRITE;
/*!40000 ALTER TABLE `url_rewrite` DISABLE KEYS */;
INSERT INTO `url_rewrite` VALUES ('1','cms-page','1','no-route','cms/page/view/page_id/1',0,1,NULL,1,NULL),('3','cms-page','3','enable-cookies','cms/page/view/page_id/3',0,1,NULL,1,NULL),('4','cms-page','4','privacy-policy-cookie-restriction-mode','cms/page/view/page_id/4',0,1,NULL,1,NULL),('16','category','27','shop-online.html','catalog/category/view/id/27',0,1,NULL,1,NULL),('20','category','6','shop-online/festive-collections.html','catalog/category/view/id/6',0,1,NULL,1,NULL),('21','category','7','shop-online/delivery.html','catalog/category/view/id/7',0,1,NULL,1,NULL),('22','category','8','shop-online/united-arab-emirates.html','catalog/category/view/id/8',0,1,NULL,1,NULL),('23','category','9','shop-online/bahrain.html','catalog/category/view/id/9',0,1,NULL,1,NULL),('24','category','10','shop-online/qatar.html','catalog/category/view/id/10',0,1,NULL,1,NULL),('25','category','11','shop-online/oman.html','catalog/category/view/id/11',0,1,NULL,1,NULL),('26','category','12','shop-online/valentines-day-collections.html','catalog/category/view/id/12',0,1,NULL,1,NULL),('27','category','13','shop-online/march-special-collections.html','catalog/category/view/id/13',0,1,NULL,1,NULL),('28','category','14','about-the-maison-des-brand.html','catalog/category/view/id/14',0,1,NULL,1,NULL),('29','category','15','about-the-maison-des-brand/about-the-mdf.html','catalog/category/view/id/15',0,1,NULL,1,NULL),('30','category','16','about-the-maison-des-brand/the-maison-savoir-faire.html','catalog/category/view/id/16',0,1,NULL,1,NULL),('36','category','22','the-maison-gallery.html','catalog/category/view/id/22',0,1,NULL,1,NULL),('38','category','24','location.html','catalog/category/view/id/24',0,1,NULL,1,NULL),('39','category','25','contact-us.html','catalog/category/view/id/25',0,1,NULL,1,NULL),('45','product','2','36-long-life-fushia-roses-in-acrylic-clear-small-square-box.html','catalog/product/view/id/2',0,1,NULL,1,NULL),('133','category','3','fresh-roses.html','catalog/category/view/id/3',0,1,NULL,1,NULL),('134','category','28','fresh-roses/fresh-flower-boxes.html','catalog/category/view/id/28',0,1,NULL,1,NULL),('135','category','28','shop-online/fresh-roses/fresh-flower-boxes.html','fresh-roses/fresh-flower-boxes.html',301,1,NULL,0,NULL),('138','category','30','fresh-roses/fresh-flowers-in-black-square-box.html','catalog/category/view/id/30',0,1,NULL,1,NULL),('139','category','30','shop-online/fresh-roses/fresh-flowers-in-black-square-box.html','fresh-roses/fresh-flowers-in-black-square-box.html',301,1,NULL,0,NULL),('140','category','32','fresh-roses/fresh-flowers-in-black-round-box.html','catalog/category/view/id/32',0,1,NULL,1,NULL),('141','category','32','shop-online/fresh-roses/fresh-flowers-in-black-round-box.html','fresh-roses/fresh-flowers-in-black-round-box.html',301,1,NULL,0,NULL),('142','category','33','fresh-roses/fresh-flowers-in-black-rectangular-box.html','catalog/category/view/id/33',0,1,NULL,1,NULL),('143','category','33','shop-online/fresh-roses/fresh-flowers-in-black-rectangular-box.html','fresh-roses/fresh-flowers-in-black-rectangular-box.html',301,1,NULL,0,NULL),('144','category','34','fresh-roses/fresh-flowers-in-black-small-rectangular-box.html','catalog/category/view/id/34',0,1,NULL,1,NULL),('145','category','34','shop-online/fresh-roses/fresh-flowers-in-black-small-rectangular-box.html','fresh-roses/fresh-flowers-in-black-small-rectangular-box.html',301,1,NULL,0,NULL),('146','category','35','fresh-roses/fresh-roses-in-white-square-box.html','catalog/category/view/id/35',0,1,NULL,1,NULL),('147','category','35','shop-online/fresh-roses/fresh-roses-in-white-square-box.html','fresh-roses/fresh-roses-in-white-square-box.html',301,1,NULL,0,NULL),('148','category','36','fresh-roses/fresh-roses-in-white-round-box.html','catalog/category/view/id/36',0,1,NULL,1,NULL),('149','category','36','shop-online/fresh-roses/fresh-roses-in-white-round-box.html','fresh-roses/fresh-roses-in-white-round-box.html',301,1,NULL,0,NULL),('150','category','37','fresh-roses/acrylic-mini-square-box.html','catalog/category/view/id/37',0,1,NULL,1,NULL),('151','category','37','shop-online/fresh-roses/acrylic-mini-square-box.html','fresh-roses/acrylic-mini-square-box.html',301,1,NULL,0,NULL),('152','category','38','fresh-roses/acrylic-small-square-box.html','catalog/category/view/id/38',0,1,NULL,1,NULL),('153','category','38','shop-online/fresh-roses/acrylic-small-square-box.html','fresh-roses/acrylic-small-square-box.html',301,1,NULL,0,NULL),('154','category','39','fresh-roses/fresh-roses-in-acrylic-square-box.html','catalog/category/view/id/39',0,1,NULL,1,NULL),('155','category','39','shop-online/fresh-roses/fresh-roses-in-acrylic-square-box.html','fresh-roses/fresh-roses-in-acrylic-square-box.html',301,1,NULL,0,NULL),('156','category','40','fresh-roses/acrylic-square-box-big.html','catalog/category/view/id/40',0,1,NULL,1,NULL),('157','category','40','shop-online/fresh-roses/acrylic-square-box-big.html','fresh-roses/acrylic-square-box-big.html',301,1,NULL,0,NULL),('158','category','41','fresh-roses/fresh-roses-in-acrylic-round-box.html','catalog/category/view/id/41',0,1,NULL,1,NULL),('159','category','41','shop-online/fresh-roses/fresh-roses-in-acrylic-round-box.html','fresh-roses/fresh-roses-in-acrylic-round-box.html',301,1,NULL,0,NULL),('160','category','42','fresh-roses/fresh-roses-in-acrylic-rectangular-box.html','catalog/category/view/id/42',0,1,NULL,1,NULL),('161','category','42','shop-online/fresh-roses/fresh-roses-in-acrylic-rectangular-box.html','fresh-roses/fresh-roses-in-acrylic-rectangular-box.html',301,1,NULL,0,NULL),('162','category','3','shop-online/fresh-roses.html','fresh-roses.html',301,1,NULL,0,NULL),('163','product','1','114-orange-roses-in-acrylic-clear-large-rectangular-box.html','catalog/product/view/id/1',0,1,NULL,1,NULL),('164','product','1','fresh-roses/114-orange-roses-in-acrylic-clear-large-rectangular-box.html','catalog/product/view/id/1/category/3',0,1,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"3\";}'),('165','product','1','shop-online/114-orange-roses-in-acrylic-clear-large-rectangular-box.html','catalog/product/view/id/1/category/27',0,1,NULL,1,'a:1:{s:11:\"category_id\";s:2:\"27\";}'),('166','product','1','shop-online/fresh-roses/114-orange-roses-in-acrylic-clear-large-rectangular-box.html','fresh-roses/114-orange-roses-in-acrylic-clear-large-rectangular-box.html',301,1,NULL,0,'a:1:{s:11:\"category_id\";s:1:\"3\";}'),('167','product','1','/114-orange-roses-in-acrylic-clear-large-rectangular-box.html','catalog/product/view/id/1/category/2',0,1,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"2\";}'),('231','category','4','just-orchids.html','catalog/category/view/id/4',0,1,NULL,1,NULL),('232','category','43','just-orchids/black-small-square-box.html','catalog/category/view/id/43',0,1,NULL,1,NULL),('233','category','43','shop-online/just-orchids/black-small-square-box.html','just-orchids/black-small-square-box.html',301,1,NULL,0,NULL),('234','category','44','just-orchids/black-square-box.html','catalog/category/view/id/44',0,1,NULL,1,NULL),('235','category','44','shop-online/just-orchids/black-square-box.html','just-orchids/black-square-box.html',301,1,NULL,0,NULL),('236','category','45','just-orchids/black-round-box.html','catalog/category/view/id/45',0,1,NULL,1,NULL),('237','category','45','shop-online/just-orchids/black-round-box.html','just-orchids/black-round-box.html',301,1,NULL,0,NULL),('238','category','46','just-orchids/fresh-orchids-in-black-box.html','catalog/category/view/id/46',0,1,NULL,1,NULL),('239','category','46','shop-online/just-orchids/fresh-orchids-in-black-box.html','just-orchids/fresh-orchids-in-black-box.html',301,1,NULL,0,NULL),('240','category','47','just-orchids/white-square-box.html','catalog/category/view/id/47',0,1,NULL,1,NULL),('241','category','47','shop-online/just-orchids/white-square-box.html','just-orchids/white-square-box.html',301,1,NULL,0,NULL),('242','category','48','just-orchids/white-round-box.html','catalog/category/view/id/48',0,1,NULL,1,NULL),('243','category','48','shop-online/just-orchids/white-round-box.html','just-orchids/white-round-box.html',301,1,NULL,0,NULL),('244','category','4','shop-online/just-orchids.html','just-orchids.html',301,1,NULL,0,NULL),('245','category','5','long-life-roses.html','catalog/category/view/id/5',0,1,NULL,1,NULL),('246','category','49','long-life-roses/long-life-roses-in-black-small-box.html','catalog/category/view/id/49',0,1,NULL,1,NULL),('247','category','49','shop-online/long-life-roses/long-life-roses-in-black-small-box.html','long-life-roses/long-life-roses-in-black-small-box.html',301,1,NULL,0,NULL),('248','category','50','long-life-roses/long-life-roses-in-black-square-box.html','catalog/category/view/id/50',0,1,NULL,1,NULL),('249','category','50','shop-online/long-life-roses/long-life-roses-in-black-square-box.html','long-life-roses/long-life-roses-in-black-square-box.html',301,1,NULL,0,NULL),('250','category','51','long-life-roses/long-life-roses-in-black-round-box.html','catalog/category/view/id/51',0,1,NULL,1,NULL),('251','category','51','shop-online/long-life-roses/long-life-roses-in-black-round-box.html','long-life-roses/long-life-roses-in-black-round-box.html',301,1,NULL,0,NULL),('252','category','52','long-life-roses/black-big-rectangular-box.html','catalog/category/view/id/52',0,1,NULL,1,NULL),('253','category','52','shop-online/long-life-roses/black-big-rectangular-box.html','long-life-roses/black-big-rectangular-box.html',301,1,NULL,0,NULL),('254','category','53','long-life-roses/black-small-rectangular-box.html','catalog/category/view/id/53',0,1,NULL,1,NULL),('255','category','53','shop-online/long-life-roses/black-small-rectangular-box.html','long-life-roses/black-small-rectangular-box.html',301,1,NULL,0,NULL),('256','category','54','long-life-roses/long-life-roses-in-white-square-box.html','catalog/category/view/id/54',0,1,NULL,1,NULL),('257','category','54','shop-online/long-life-roses/long-life-roses-in-white-square-box.html','long-life-roses/long-life-roses-in-white-square-box.html',301,1,NULL,0,NULL),('258','category','55','long-life-roses/long-life-roses-in-white-round-box.html','catalog/category/view/id/55',0,1,NULL,1,NULL),('259','category','55','shop-online/long-life-roses/long-life-roses-in-white-round-box.html','long-life-roses/long-life-roses-in-white-round-box.html',301,1,NULL,0,NULL),('260','category','56','long-life-roses/acrylic-mini-square-box.html','catalog/category/view/id/56',0,1,NULL,1,NULL),('261','category','56','shop-online/long-life-roses/acrylic-mini-square-box.html','long-life-roses/acrylic-mini-square-box.html',301,1,NULL,0,NULL),('262','category','57','long-life-roses/long-life-roses-in-acrylic-small-square-box.html','catalog/category/view/id/57',0,1,NULL,1,NULL),('263','category','57','shop-online/long-life-roses/long-life-roses-in-acrylic-small-square-box.html','long-life-roses/long-life-roses-in-acrylic-small-square-box.html',301,1,NULL,0,NULL),('264','category','58','long-life-roses/acrylic-square-box-big.html','catalog/category/view/id/58',0,1,NULL,1,NULL),('265','category','58','shop-online/long-life-roses/acrylic-square-box-big.html','long-life-roses/acrylic-square-box-big.html',301,1,NULL,0,NULL),('266','category','59','long-life-roses/long-life-roses-in-acrylic-square-box.html','catalog/category/view/id/59',0,1,NULL,1,NULL),('267','category','59','shop-online/long-life-roses/long-life-roses-in-acrylic-square-box.html','long-life-roses/long-life-roses-in-acrylic-square-box.html',301,1,NULL,0,NULL),('268','category','60','long-life-roses/long-life-roses-in-acrylic-round-box.html','catalog/category/view/id/60',0,1,NULL,1,NULL),('269','category','60','shop-online/long-life-roses/long-life-roses-in-acrylic-round-box.html','long-life-roses/long-life-roses-in-acrylic-round-box.html',301,1,NULL,0,NULL),('270','category','61','long-life-roses/long-life-roses-in-acrylic-box.html','catalog/category/view/id/61',0,1,NULL,1,NULL),('271','category','61','shop-online/long-life-roses/long-life-roses-in-acrylic-box.html','long-life-roses/long-life-roses-in-acrylic-box.html',301,1,NULL,0,NULL),('272','category','62','long-life-roses/acrylic-black-smallest-square-box.html','catalog/category/view/id/62',0,1,NULL,1,NULL),('273','category','62','shop-online/long-life-roses/acrylic-black-smallest-square-box.html','long-life-roses/acrylic-black-smallest-square-box.html',301,1,NULL,0,NULL),('274','category','63','long-life-roses/acrylic-small-square-box.html','catalog/category/view/id/63',0,1,NULL,1,NULL),('275','category','63','shop-online/long-life-roses/acrylic-small-square-box.html','long-life-roses/acrylic-small-square-box.html',301,1,NULL,0,NULL),('276','category','64','long-life-roses/acrylic-square-box.html','catalog/category/view/id/64',0,1,NULL,1,NULL),('277','category','64','shop-online/long-life-roses/acrylic-square-box.html','long-life-roses/acrylic-square-box.html',301,1,NULL,0,NULL),('278','category','65','long-life-roses/acrylic-round-box.html','catalog/category/view/id/65',0,1,NULL,1,NULL),('279','category','65','shop-online/long-life-roses/acrylic-round-box.html','long-life-roses/acrylic-round-box.html',301,1,NULL,0,NULL),('280','category','66','long-life-roses/acrylic-large-rectangular-box.html','catalog/category/view/id/66',0,1,NULL,1,NULL),('281','category','66','shop-online/long-life-roses/acrylic-large-rectangular-box.html','long-life-roses/acrylic-large-rectangular-box.html',301,1,NULL,0,NULL),('282','category','67','long-life-roses/acrylic-large-square-box.html','catalog/category/view/id/67',0,1,NULL,1,NULL),('283','category','67','shop-online/long-life-roses/acrylic-large-square-box.html','long-life-roses/acrylic-large-square-box.html',301,1,NULL,0,NULL),('284','category','5','shop-online/long-life-roses.html','long-life-roses.html',301,1,NULL,0,NULL),('285','category','17','about-the-maison-des-brand/services.html','catalog/category/view/id/17',0,1,NULL,1,NULL),('286','category','18','about-the-maison-des-brand/services/events.html','catalog/category/view/id/18',0,1,NULL,1,NULL),('287','category','18','services/events.html','about-the-maison-des-brand/services/events.html',301,1,NULL,0,NULL),('288','category','19','about-the-maison-des-brand/services/weddings.html','catalog/category/view/id/19',0,1,NULL,1,NULL),('289','category','19','services/weddings.html','about-the-maison-des-brand/services/weddings.html',301,1,NULL,0,NULL),('290','category','20','about-the-maison-des-brand/services/corporate.html','catalog/category/view/id/20',0,1,NULL,1,NULL),('291','category','20','services/corporate.html','about-the-maison-des-brand/services/corporate.html',301,1,NULL,0,NULL),('292','category','21','about-the-maison-des-brand/services/home-lifestyle-collection.html','catalog/category/view/id/21',0,1,NULL,1,NULL),('293','category','21','services/home-lifestyle-collection.html','about-the-maison-des-brand/services/home-lifestyle-collection.html',301,1,NULL,0,NULL),('294','category','17','services.html','about-the-maison-des-brand/services.html',301,1,NULL,0,NULL),('295','category','23','about-the-maison-des-brand/news.html','catalog/category/view/id/23',0,1,NULL,1,NULL),('296','category','23','news.html','about-the-maison-des-brand/news.html',301,1,NULL,0,NULL),('297','category','68','silk-flowers.html','catalog/category/view/id/68',0,1,NULL,1,NULL),('298','category','29','fresh-roses/fresh-flowers-in-small-black-square-box.html','catalog/category/view/id/29',0,1,NULL,1,NULL),('299','category','29','shop-online/fresh-roses/fresh-flowers-in-small-black-square-box.html','fresh-roses/fresh-flowers-in-small-black-square-box.html',301,1,NULL,0,'a:0:{}'),('300','product','3','white-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/3',0,1,NULL,1,NULL),('301','product','3','fresh-roses/white-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/3/category/3',0,1,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"3\";}'),('302','product','3','shop-online/white-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/3/category/27',0,1,NULL,1,'a:1:{s:11:\"category_id\";s:2:\"27\";}'),('303','product','3','fresh-roses/fresh-flowers-in-small-black-square-box/white-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/3/category/29',0,1,NULL,1,'a:1:{s:11:\"category_id\";s:2:\"29\";}'),('304','product','3','shop-online/fresh-roses/white-roses-in-mdf-black-small-square-box.html','fresh-roses/white-roses-in-mdf-black-small-square-box.html',301,1,NULL,0,'a:1:{s:11:\"category_id\";s:1:\"3\";}'),('305','product','3','shop-online/fresh-roses/fresh-flowers-in-small-black-square-box/white-roses-in-mdf-black-small-square-box.html','fresh-roses/fresh-flowers-in-small-black-square-box/white-roses-in-mdf-black-small-square-box.html',301,1,NULL,0,'a:1:{s:11:\"category_id\";s:2:\"29\";}'),('306','product','3','/white-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/3/category/2',0,1,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"2\";}'),('307','product','4','1-white-orchid-bloom-and-white-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/4',0,1,NULL,1,NULL),('308','product','4','fresh-roses/1-white-orchid-bloom-and-white-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/4/category/3',0,1,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"3\";}'),('309','product','4','shop-online/1-white-orchid-bloom-and-white-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/4/category/27',0,1,NULL,1,'a:1:{s:11:\"category_id\";s:2:\"27\";}'),('310','product','4','fresh-roses/fresh-flowers-in-small-black-square-box/1-white-orchid-bloom-and-white-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/4/category/29',0,1,NULL,1,'a:1:{s:11:\"category_id\";s:2:\"29\";}'),('311','product','4','shop-online/fresh-roses/1-white-orchid-bloom-and-white-roses-in-mdf-black-small-square-box.html','fresh-roses/1-white-orchid-bloom-and-white-roses-in-mdf-black-small-square-box.html',301,1,NULL,0,'a:1:{s:11:\"category_id\";s:1:\"3\";}'),('312','product','4','shop-online/fresh-roses/fresh-flowers-in-small-black-square-box/1-white-orchid-bloom-and-white-roses-in-mdf-black-small-square-box.html','fresh-roses/fresh-flowers-in-small-black-square-box/1-white-orchid-bloom-and-white-roses-in-mdf-black-small-square-box.html',301,1,NULL,0,'a:1:{s:11:\"category_id\";s:2:\"29\";}'),('313','product','4','/1-white-orchid-bloom-and-white-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/4/category/2',0,1,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"2\";}'),('314','product','5','cream-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/5',0,1,NULL,1,NULL),('315','product','5','fresh-roses/cream-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/5/category/3',0,1,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"3\";}'),('316','product','5','shop-online/cream-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/5/category/27',0,1,NULL,1,'a:1:{s:11:\"category_id\";s:2:\"27\";}'),('317','product','5','fresh-roses/fresh-flowers-in-small-black-square-box/cream-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/5/category/29',0,1,NULL,1,'a:1:{s:11:\"category_id\";s:2:\"29\";}'),('318','product','5','shop-online/fresh-roses/cream-roses-in-mdf-black-small-square-box.html','fresh-roses/cream-roses-in-mdf-black-small-square-box.html',301,1,NULL,0,'a:1:{s:11:\"category_id\";s:1:\"3\";}'),('319','product','5','shop-online/fresh-roses/fresh-flowers-in-small-black-square-box/cream-roses-in-mdf-black-small-square-box.html','fresh-roses/fresh-flowers-in-small-black-square-box/cream-roses-in-mdf-black-small-square-box.html',301,1,NULL,0,'a:1:{s:11:\"category_id\";s:2:\"29\";}'),('320','product','5','/cream-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/5/category/2',0,1,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"2\";}'),('321','product','6','1-white-orchid-bloom-and-cream-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/6',0,1,NULL,1,NULL),('322','product','6','fresh-roses/1-white-orchid-bloom-and-cream-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/6/category/3',0,1,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"3\";}'),('323','product','6','shop-online/1-white-orchid-bloom-and-cream-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/6/category/27',0,1,NULL,1,'a:1:{s:11:\"category_id\";s:2:\"27\";}'),('324','product','6','fresh-roses/fresh-flowers-in-small-black-square-box/1-white-orchid-bloom-and-cream-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/6/category/29',0,1,NULL,1,'a:1:{s:11:\"category_id\";s:2:\"29\";}'),('325','product','6','shop-online/fresh-roses/1-white-orchid-bloom-and-cream-roses-in-mdf-black-small-square-box.html','fresh-roses/1-white-orchid-bloom-and-cream-roses-in-mdf-black-small-square-box.html',301,1,NULL,0,'a:1:{s:11:\"category_id\";s:1:\"3\";}'),('326','product','6','shop-online/fresh-roses/fresh-flowers-in-small-black-square-box/1-white-orchid-bloom-and-cream-roses-in-mdf-black-small-square-box.html','fresh-roses/fresh-flowers-in-small-black-square-box/1-white-orchid-bloom-and-cream-roses-in-mdf-black-small-square-box.html',301,1,NULL,0,'a:1:{s:11:\"category_id\";s:2:\"29\";}'),('327','product','6','/1-white-orchid-bloom-and-cream-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/6/category/2',0,1,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"2\";}'),('328','product','7','purple-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/7',0,1,NULL,1,NULL),('329','product','7','fresh-roses/purple-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/7/category/3',0,1,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"3\";}'),('330','product','7','shop-online/purple-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/7/category/27',0,1,NULL,1,'a:1:{s:11:\"category_id\";s:2:\"27\";}'),('331','product','7','fresh-roses/fresh-flowers-in-small-black-square-box/purple-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/7/category/29',0,1,NULL,1,'a:1:{s:11:\"category_id\";s:2:\"29\";}'),('332','product','7','shop-online/fresh-roses/purple-roses-in-mdf-black-small-square-box.html','fresh-roses/purple-roses-in-mdf-black-small-square-box.html',301,1,NULL,0,'a:1:{s:11:\"category_id\";s:1:\"3\";}'),('333','product','7','shop-online/fresh-roses/fresh-flowers-in-small-black-square-box/purple-roses-in-mdf-black-small-square-box.html','fresh-roses/fresh-flowers-in-small-black-square-box/purple-roses-in-mdf-black-small-square-box.html',301,1,NULL,0,'a:1:{s:11:\"category_id\";s:2:\"29\";}'),('334','product','7','/purple-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/7/category/2',0,1,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"2\";}'),('335','product','8','1-white-orchid-bloom-and-purple-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/8',0,1,NULL,1,NULL),('336','product','8','fresh-roses/1-white-orchid-bloom-and-purple-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/8/category/3',0,1,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"3\";}'),('337','product','8','shop-online/1-white-orchid-bloom-and-purple-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/8/category/27',0,1,NULL,1,'a:1:{s:11:\"category_id\";s:2:\"27\";}'),('338','product','8','fresh-roses/fresh-flowers-in-small-black-square-box/1-white-orchid-bloom-and-purple-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/8/category/29',0,1,NULL,1,'a:1:{s:11:\"category_id\";s:2:\"29\";}'),('339','product','8','shop-online/fresh-roses/1-white-orchid-bloom-and-purple-roses-in-mdf-black-small-square-box.html','fresh-roses/1-white-orchid-bloom-and-purple-roses-in-mdf-black-small-square-box.html',301,1,NULL,0,'a:1:{s:11:\"category_id\";s:1:\"3\";}'),('340','product','8','shop-online/fresh-roses/fresh-flowers-in-small-black-square-box/1-white-orchid-bloom-and-purple-roses-in-mdf-black-small-square-box.html','fresh-roses/fresh-flowers-in-small-black-square-box/1-white-orchid-bloom-and-purple-roses-in-mdf-black-small-square-box.html',301,1,NULL,0,'a:1:{s:11:\"category_id\";s:2:\"29\";}'),('341','product','8','/1-white-orchid-bloom-and-purple-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/8/category/2',0,1,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"2\";}'),('342','product','9','fushia-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/9',0,1,NULL,1,NULL),('343','product','9','fresh-roses/fushia-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/9/category/3',0,1,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"3\";}'),('344','product','9','shop-online/fushia-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/9/category/27',0,1,NULL,1,'a:1:{s:11:\"category_id\";s:2:\"27\";}'),('345','product','9','fresh-roses/fresh-flowers-in-small-black-square-box/fushia-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/9/category/29',0,1,NULL,1,'a:1:{s:11:\"category_id\";s:2:\"29\";}'),('346','product','9','shop-online/fresh-roses/fushia-roses-in-mdf-black-small-square-box.html','fresh-roses/fushia-roses-in-mdf-black-small-square-box.html',301,1,NULL,0,'a:1:{s:11:\"category_id\";s:1:\"3\";}'),('347','product','9','shop-online/fresh-roses/fresh-flowers-in-small-black-square-box/fushia-roses-in-mdf-black-small-square-box.html','fresh-roses/fresh-flowers-in-small-black-square-box/fushia-roses-in-mdf-black-small-square-box.html',301,1,NULL,0,'a:1:{s:11:\"category_id\";s:2:\"29\";}'),('348','product','9','/fushia-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/9/category/2',0,1,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"2\";}'),('349','product','10','1-white-orchid-bloom-and-fuchsia-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/10',0,1,NULL,1,NULL),('350','product','10','fresh-roses/1-white-orchid-bloom-and-fuchsia-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/10/category/3',0,1,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"3\";}'),('351','product','10','shop-online/1-white-orchid-bloom-and-fuchsia-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/10/category/27',0,1,NULL,1,'a:1:{s:11:\"category_id\";s:2:\"27\";}'),('352','product','10','fresh-roses/fresh-flowers-in-small-black-square-box/1-white-orchid-bloom-and-fuchsia-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/10/category/29',0,1,NULL,1,'a:1:{s:11:\"category_id\";s:2:\"29\";}'),('353','product','10','shop-online/fresh-roses/1-white-orchid-bloom-and-fuchsia-roses-in-mdf-black-small-square-box.html','fresh-roses/1-white-orchid-bloom-and-fuchsia-roses-in-mdf-black-small-square-box.html',301,1,NULL,0,'a:1:{s:11:\"category_id\";s:1:\"3\";}'),('354','product','10','shop-online/fresh-roses/fresh-flowers-in-small-black-square-box/1-white-orchid-bloom-and-fuchsia-roses-in-mdf-black-small-square-box.html','fresh-roses/fresh-flowers-in-small-black-square-box/1-white-orchid-bloom-and-fuchsia-roses-in-mdf-black-small-square-box.html',301,1,NULL,0,'a:1:{s:11:\"category_id\";s:2:\"29\";}'),('355','product','10','/1-white-orchid-bloom-and-fuchsia-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/10/category/2',0,1,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"2\";}'),('356','product','11','yellow-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/11',0,1,NULL,1,NULL),('357','product','11','fresh-roses/yellow-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/11/category/3',0,1,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"3\";}'),('358','product','11','shop-online/yellow-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/11/category/27',0,1,NULL,1,'a:1:{s:11:\"category_id\";s:2:\"27\";}'),('359','product','11','fresh-roses/fresh-flowers-in-small-black-square-box/yellow-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/11/category/29',0,1,NULL,1,'a:1:{s:11:\"category_id\";s:2:\"29\";}'),('360','product','11','shop-online/fresh-roses/yellow-roses-in-mdf-black-small-square-box.html','fresh-roses/yellow-roses-in-mdf-black-small-square-box.html',301,1,NULL,0,'a:1:{s:11:\"category_id\";s:1:\"3\";}'),('361','product','11','shop-online/fresh-roses/fresh-flowers-in-small-black-square-box/yellow-roses-in-mdf-black-small-square-box.html','fresh-roses/fresh-flowers-in-small-black-square-box/yellow-roses-in-mdf-black-small-square-box.html',301,1,NULL,0,'a:1:{s:11:\"category_id\";s:2:\"29\";}'),('362','product','11','/yellow-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/11/category/2',0,1,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"2\";}'),('363','cms-page','5','contact-us','cms/page/view/page_id/5',0,1,NULL,1,NULL),('366','category','14','about-the-maison-des-brand.html','catalog/category/view/id/14',0,2,NULL,1,NULL),('367','category','15','about-the-maison-des-brand/about-the-mdf.html','catalog/category/view/id/15',0,2,NULL,1,NULL),('368','category','16','about-the-maison-des-brand/the-maison-savoir-faire.html','catalog/category/view/id/16',0,2,NULL,1,NULL),('369','category','17','about-the-maison-des-brand/services.html','catalog/category/view/id/17',0,2,NULL,1,NULL),('370','category','18','about-the-maison-des-brand/services/events.html','catalog/category/view/id/18',0,2,NULL,1,NULL),('371','category','19','about-the-maison-des-brand/services/weddings.html','catalog/category/view/id/19',0,2,NULL,1,NULL),('372','category','20','about-the-maison-des-brand/services/corporate.html','catalog/category/view/id/20',0,2,NULL,1,NULL),('373','category','21','about-the-maison-des-brand/services/home-lifestyle-collection.html','catalog/category/view/id/21',0,2,NULL,1,NULL),('374','category','23','about-the-maison-des-brand/news.html','catalog/category/view/id/23',0,2,NULL,1,NULL),('375','category','22','the-maison-gallery.html','catalog/category/view/id/22',0,2,NULL,1,NULL),('376','category','24','location.html','catalog/category/view/id/24',0,2,NULL,1,NULL),('377','category','25','contact-us.html','catalog/category/view/id/25',0,2,NULL,1,NULL),('378','category','27','shop-online.html','catalog/category/view/id/27',0,2,NULL,1,NULL),('379','category','6','shop-online/festive-collections.html','catalog/category/view/id/6',0,2,NULL,1,NULL),('380','category','7','shop-online/delivery.html','catalog/category/view/id/7',0,2,NULL,1,NULL),('381','category','8','shop-online/united-arab-emirates.html','catalog/category/view/id/8',0,2,NULL,1,NULL),('382','category','9','shop-online/bahrain.html','catalog/category/view/id/9',0,2,NULL,1,NULL),('383','category','10','shop-online/qatar.html','catalog/category/view/id/10',0,2,NULL,1,NULL),('384','category','11','shop-online/oman.html','catalog/category/view/id/11',0,2,NULL,1,NULL),('385','category','12','shop-online/valentines-day-collections.html','catalog/category/view/id/12',0,2,NULL,1,NULL),('386','category','13','shop-online/march-special-collections.html','catalog/category/view/id/13',0,2,NULL,1,NULL),('387','category','68','silk-flowers.html','catalog/category/view/id/68',0,2,NULL,1,NULL),('388','product','1','114-orange-roses-in-acrylic-clear-large-rectangular-box.html','catalog/product/view/id/1',0,2,NULL,1,NULL),('389','product','1','fresh-roses/114-orange-roses-in-acrylic-clear-large-rectangular-box.html','catalog/product/view/id/1/category/3',0,2,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"3\";}'),('390','product','1','shop-online/114-orange-roses-in-acrylic-clear-large-rectangular-box.html','catalog/product/view/id/1/category/27',0,2,NULL,1,'a:1:{s:11:\"category_id\";s:2:\"27\";}'),('391','product','1','/114-orange-roses-in-acrylic-clear-large-rectangular-box.html','catalog/product/view/id/1/category/2',0,2,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"2\";}'),('392','product','2','36-long-life-fushia-roses-in-acrylic-clear-small-square-box.html','catalog/product/view/id/2',0,2,NULL,1,NULL),('393','product','3','white-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/3',0,2,NULL,1,NULL),('394','product','3','fresh-roses/white-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/3/category/3',0,2,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"3\";}'),('395','product','3','shop-online/white-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/3/category/27',0,2,NULL,1,'a:1:{s:11:\"category_id\";s:2:\"27\";}'),('396','product','3','fresh-roses/fresh-flowers-in-small-black-square-box/white-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/3/category/29',0,2,NULL,1,'a:1:{s:11:\"category_id\";s:2:\"29\";}'),('397','product','3','/white-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/3/category/2',0,2,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"2\";}'),('398','product','4','1-white-orchid-bloom-and-white-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/4',0,2,NULL,1,NULL),('399','product','4','fresh-roses/1-white-orchid-bloom-and-white-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/4/category/3',0,2,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"3\";}'),('400','product','4','shop-online/1-white-orchid-bloom-and-white-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/4/category/27',0,2,NULL,1,'a:1:{s:11:\"category_id\";s:2:\"27\";}'),('401','product','4','fresh-roses/fresh-flowers-in-small-black-square-box/1-white-orchid-bloom-and-white-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/4/category/29',0,2,NULL,1,'a:1:{s:11:\"category_id\";s:2:\"29\";}'),('402','product','4','/1-white-orchid-bloom-and-white-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/4/category/2',0,2,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"2\";}'),('403','product','5','cream-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/5',0,2,NULL,1,NULL),('404','product','5','fresh-roses/cream-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/5/category/3',0,2,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"3\";}'),('405','product','5','shop-online/cream-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/5/category/27',0,2,NULL,1,'a:1:{s:11:\"category_id\";s:2:\"27\";}'),('406','product','5','fresh-roses/fresh-flowers-in-small-black-square-box/cream-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/5/category/29',0,2,NULL,1,'a:1:{s:11:\"category_id\";s:2:\"29\";}'),('407','product','5','/cream-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/5/category/2',0,2,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"2\";}'),('408','product','6','1-white-orchid-bloom-and-cream-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/6',0,2,NULL,1,NULL),('409','product','6','fresh-roses/1-white-orchid-bloom-and-cream-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/6/category/3',0,2,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"3\";}'),('410','product','6','shop-online/1-white-orchid-bloom-and-cream-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/6/category/27',0,2,NULL,1,'a:1:{s:11:\"category_id\";s:2:\"27\";}'),('411','product','6','fresh-roses/fresh-flowers-in-small-black-square-box/1-white-orchid-bloom-and-cream-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/6/category/29',0,2,NULL,1,'a:1:{s:11:\"category_id\";s:2:\"29\";}'),('412','product','6','/1-white-orchid-bloom-and-cream-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/6/category/2',0,2,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"2\";}'),('413','product','7','purple-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/7',0,2,NULL,1,NULL),('414','product','7','fresh-roses/purple-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/7/category/3',0,2,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"3\";}'),('415','product','7','shop-online/purple-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/7/category/27',0,2,NULL,1,'a:1:{s:11:\"category_id\";s:2:\"27\";}'),('416','product','7','fresh-roses/fresh-flowers-in-small-black-square-box/purple-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/7/category/29',0,2,NULL,1,'a:1:{s:11:\"category_id\";s:2:\"29\";}'),('417','product','7','/purple-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/7/category/2',0,2,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"2\";}'),('418','product','8','1-white-orchid-bloom-and-purple-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/8',0,2,NULL,1,NULL),('419','product','8','fresh-roses/1-white-orchid-bloom-and-purple-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/8/category/3',0,2,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"3\";}'),('420','product','8','shop-online/1-white-orchid-bloom-and-purple-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/8/category/27',0,2,NULL,1,'a:1:{s:11:\"category_id\";s:2:\"27\";}'),('421','product','8','fresh-roses/fresh-flowers-in-small-black-square-box/1-white-orchid-bloom-and-purple-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/8/category/29',0,2,NULL,1,'a:1:{s:11:\"category_id\";s:2:\"29\";}'),('422','product','8','/1-white-orchid-bloom-and-purple-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/8/category/2',0,2,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"2\";}'),('423','product','9','fushia-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/9',0,2,NULL,1,NULL),('424','product','9','fresh-roses/fushia-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/9/category/3',0,2,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"3\";}'),('425','product','9','shop-online/fushia-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/9/category/27',0,2,NULL,1,'a:1:{s:11:\"category_id\";s:2:\"27\";}'),('426','product','9','fresh-roses/fresh-flowers-in-small-black-square-box/fushia-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/9/category/29',0,2,NULL,1,'a:1:{s:11:\"category_id\";s:2:\"29\";}'),('427','product','9','/fushia-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/9/category/2',0,2,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"2\";}'),('428','product','10','1-white-orchid-bloom-and-fuchsia-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/10',0,2,NULL,1,NULL),('429','product','10','fresh-roses/1-white-orchid-bloom-and-fuchsia-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/10/category/3',0,2,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"3\";}'),('430','product','10','shop-online/1-white-orchid-bloom-and-fuchsia-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/10/category/27',0,2,NULL,1,'a:1:{s:11:\"category_id\";s:2:\"27\";}'),('431','product','10','fresh-roses/fresh-flowers-in-small-black-square-box/1-white-orchid-bloom-and-fuchsia-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/10/category/29',0,2,NULL,1,'a:1:{s:11:\"category_id\";s:2:\"29\";}'),('432','product','10','/1-white-orchid-bloom-and-fuchsia-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/10/category/2',0,2,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"2\";}'),('433','product','11','yellow-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/11',0,2,NULL,1,NULL),('434','product','11','fresh-roses/yellow-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/11/category/3',0,2,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"3\";}'),('435','product','11','shop-online/yellow-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/11/category/27',0,2,NULL,1,'a:1:{s:11:\"category_id\";s:2:\"27\";}'),('436','product','11','fresh-roses/fresh-flowers-in-small-black-square-box/yellow-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/11/category/29',0,2,NULL,1,'a:1:{s:11:\"category_id\";s:2:\"29\";}'),('437','product','11','/yellow-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/11/category/2',0,2,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"2\";}'),('438','cms-page','6','home-2','cms/page/view/page_id/6',0,2,NULL,1,NULL),('439','cms-page','2','home','cms/page/view/page_id/2',0,1,NULL,1,NULL),('444','category','69','about-us.html','catalog/category/view/id/69',0,1,NULL,1,NULL),('445','category','69','about-us.html','catalog/category/view/id/69',0,2,NULL,1,NULL),('446','category','70','shop.html','catalog/category/view/id/70',0,1,NULL,1,NULL),('447','category','70','shop.html','catalog/category/view/id/70',0,2,NULL,1,NULL),('448','category','14','about-the-maison-des-brand.html','catalog/category/view/id/14',0,3,NULL,1,NULL),('449','category','15','about-the-maison-des-brand/about-the-mdf.html','catalog/category/view/id/15',0,3,NULL,1,NULL),('450','category','16','about-the-maison-des-brand/the-maison-savoir-faire.html','catalog/category/view/id/16',0,3,NULL,1,NULL),('451','category','17','about-the-maison-des-brand/services.html','catalog/category/view/id/17',0,3,NULL,1,NULL),('452','category','18','about-the-maison-des-brand/services/events.html','catalog/category/view/id/18',0,3,NULL,1,NULL),('453','category','19','about-the-maison-des-brand/services/weddings.html','catalog/category/view/id/19',0,3,NULL,1,NULL),('454','category','20','about-the-maison-des-brand/services/corporate.html','catalog/category/view/id/20',0,3,NULL,1,NULL),('455','category','21','about-the-maison-des-brand/services/home-lifestyle-collection.html','catalog/category/view/id/21',0,3,NULL,1,NULL),('456','category','23','about-the-maison-des-brand/news.html','catalog/category/view/id/23',0,3,NULL,1,NULL),('457','category','22','the-maison-gallery.html','catalog/category/view/id/22',0,3,NULL,1,NULL),('458','category','24','location.html','catalog/category/view/id/24',0,3,NULL,1,NULL),('459','category','25','contact-us.html','catalog/category/view/id/25',0,3,NULL,1,NULL),('460','category','27','shop-online.html','catalog/category/view/id/27',0,3,NULL,1,NULL),('461','category','6','shop-online/festive-collections.html','catalog/category/view/id/6',0,3,NULL,1,NULL),('462','category','7','shop-online/delivery.html','catalog/category/view/id/7',0,3,NULL,1,NULL),('463','category','8','shop-online/united-arab-emirates.html','catalog/category/view/id/8',0,3,NULL,1,NULL),('464','category','9','shop-online/bahrain.html','catalog/category/view/id/9',0,3,NULL,1,NULL),('465','category','10','shop-online/qatar.html','catalog/category/view/id/10',0,3,NULL,1,NULL),('466','category','11','shop-online/oman.html','catalog/category/view/id/11',0,3,NULL,1,NULL),('467','category','12','shop-online/valentines-day-collections.html','catalog/category/view/id/12',0,3,NULL,1,NULL),('468','category','13','shop-online/march-special-collections.html','catalog/category/view/id/13',0,3,NULL,1,NULL),('469','category','68','silk-flowers.html','catalog/category/view/id/68',0,3,NULL,1,NULL),('470','category','69','about-us.html','catalog/category/view/id/69',0,3,NULL,1,NULL),('471','category','70','shop.html','catalog/category/view/id/70',0,3,NULL,1,NULL),('472','product','1','114-orange-roses-in-acrylic-clear-large-rectangular-box.html','catalog/product/view/id/1',0,3,NULL,1,NULL),('473','product','1','fresh-roses/114-orange-roses-in-acrylic-clear-large-rectangular-box.html','catalog/product/view/id/1/category/3',0,3,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"3\";}'),('474','product','1','shop-online/114-orange-roses-in-acrylic-clear-large-rectangular-box.html','catalog/product/view/id/1/category/27',0,3,NULL,1,'a:1:{s:11:\"category_id\";s:2:\"27\";}'),('475','product','1','/114-orange-roses-in-acrylic-clear-large-rectangular-box.html','catalog/product/view/id/1/category/2',0,3,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"2\";}'),('476','product','2','36-long-life-fushia-roses-in-acrylic-clear-small-square-box.html','catalog/product/view/id/2',0,3,NULL,1,NULL),('477','product','3','white-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/3',0,3,NULL,1,NULL),('478','product','3','fresh-roses/white-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/3/category/3',0,3,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"3\";}'),('479','product','3','shop-online/white-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/3/category/27',0,3,NULL,1,'a:1:{s:11:\"category_id\";s:2:\"27\";}'),('480','product','3','fresh-roses/fresh-flowers-in-small-black-square-box/white-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/3/category/29',0,3,NULL,1,'a:1:{s:11:\"category_id\";s:2:\"29\";}'),('481','product','3','/white-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/3/category/2',0,3,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"2\";}'),('482','product','4','1-white-orchid-bloom-and-white-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/4',0,3,NULL,1,NULL),('483','product','4','fresh-roses/1-white-orchid-bloom-and-white-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/4/category/3',0,3,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"3\";}'),('484','product','4','shop-online/1-white-orchid-bloom-and-white-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/4/category/27',0,3,NULL,1,'a:1:{s:11:\"category_id\";s:2:\"27\";}'),('485','product','4','fresh-roses/fresh-flowers-in-small-black-square-box/1-white-orchid-bloom-and-white-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/4/category/29',0,3,NULL,1,'a:1:{s:11:\"category_id\";s:2:\"29\";}'),('486','product','4','/1-white-orchid-bloom-and-white-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/4/category/2',0,3,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"2\";}'),('487','product','5','cream-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/5',0,3,NULL,1,NULL),('488','product','5','fresh-roses/cream-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/5/category/3',0,3,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"3\";}'),('489','product','5','shop-online/cream-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/5/category/27',0,3,NULL,1,'a:1:{s:11:\"category_id\";s:2:\"27\";}'),('490','product','5','fresh-roses/fresh-flowers-in-small-black-square-box/cream-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/5/category/29',0,3,NULL,1,'a:1:{s:11:\"category_id\";s:2:\"29\";}'),('491','product','5','/cream-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/5/category/2',0,3,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"2\";}'),('492','product','6','1-white-orchid-bloom-and-cream-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/6',0,3,NULL,1,NULL),('493','product','6','fresh-roses/1-white-orchid-bloom-and-cream-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/6/category/3',0,3,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"3\";}'),('494','product','6','shop-online/1-white-orchid-bloom-and-cream-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/6/category/27',0,3,NULL,1,'a:1:{s:11:\"category_id\";s:2:\"27\";}'),('495','product','6','fresh-roses/fresh-flowers-in-small-black-square-box/1-white-orchid-bloom-and-cream-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/6/category/29',0,3,NULL,1,'a:1:{s:11:\"category_id\";s:2:\"29\";}'),('496','product','6','/1-white-orchid-bloom-and-cream-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/6/category/2',0,3,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"2\";}'),('497','product','7','purple-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/7',0,3,NULL,1,NULL),('498','product','7','fresh-roses/purple-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/7/category/3',0,3,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"3\";}'),('499','product','7','shop-online/purple-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/7/category/27',0,3,NULL,1,'a:1:{s:11:\"category_id\";s:2:\"27\";}'),('500','product','7','fresh-roses/fresh-flowers-in-small-black-square-box/purple-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/7/category/29',0,3,NULL,1,'a:1:{s:11:\"category_id\";s:2:\"29\";}'),('501','product','7','/purple-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/7/category/2',0,3,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"2\";}'),('502','product','8','1-white-orchid-bloom-and-purple-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/8',0,3,NULL,1,NULL),('503','product','8','fresh-roses/1-white-orchid-bloom-and-purple-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/8/category/3',0,3,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"3\";}'),('504','product','8','shop-online/1-white-orchid-bloom-and-purple-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/8/category/27',0,3,NULL,1,'a:1:{s:11:\"category_id\";s:2:\"27\";}'),('505','product','8','fresh-roses/fresh-flowers-in-small-black-square-box/1-white-orchid-bloom-and-purple-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/8/category/29',0,3,NULL,1,'a:1:{s:11:\"category_id\";s:2:\"29\";}'),('506','product','8','/1-white-orchid-bloom-and-purple-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/8/category/2',0,3,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"2\";}'),('507','product','9','fushia-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/9',0,3,NULL,1,NULL),('508','product','9','fresh-roses/fushia-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/9/category/3',0,3,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"3\";}'),('509','product','9','shop-online/fushia-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/9/category/27',0,3,NULL,1,'a:1:{s:11:\"category_id\";s:2:\"27\";}'),('510','product','9','fresh-roses/fresh-flowers-in-small-black-square-box/fushia-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/9/category/29',0,3,NULL,1,'a:1:{s:11:\"category_id\";s:2:\"29\";}'),('511','product','9','/fushia-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/9/category/2',0,3,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"2\";}'),('512','product','10','1-white-orchid-bloom-and-fuchsia-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/10',0,3,NULL,1,NULL),('513','product','10','fresh-roses/1-white-orchid-bloom-and-fuchsia-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/10/category/3',0,3,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"3\";}'),('514','product','10','shop-online/1-white-orchid-bloom-and-fuchsia-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/10/category/27',0,3,NULL,1,'a:1:{s:11:\"category_id\";s:2:\"27\";}'),('515','product','10','fresh-roses/fresh-flowers-in-small-black-square-box/1-white-orchid-bloom-and-fuchsia-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/10/category/29',0,3,NULL,1,'a:1:{s:11:\"category_id\";s:2:\"29\";}'),('516','product','10','/1-white-orchid-bloom-and-fuchsia-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/10/category/2',0,3,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"2\";}'),('517','product','11','yellow-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/11',0,3,NULL,1,NULL),('518','product','11','fresh-roses/yellow-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/11/category/3',0,3,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"3\";}'),('519','product','11','shop-online/yellow-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/11/category/27',0,3,NULL,1,'a:1:{s:11:\"category_id\";s:2:\"27\";}'),('520','product','11','fresh-roses/fresh-flowers-in-small-black-square-box/yellow-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/11/category/29',0,3,NULL,1,'a:1:{s:11:\"category_id\";s:2:\"29\";}'),('521','product','11','/yellow-roses-in-mdf-black-small-square-box.html','catalog/product/view/id/11/category/2',0,3,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"2\";}'),('522','cms-page','7','home-qatar','cms/page/view/page_id/7',0,3,NULL,1,NULL);
/*!40000 ALTER TABLE `url_rewrite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `variable`
--

DROP TABLE IF EXISTS `variable`;
CREATE TABLE `variable` (
  `variable_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Variable Id',
  `code` varchar(255) DEFAULT NULL COMMENT 'Variable Code',
  `name` varchar(255) DEFAULT NULL COMMENT 'Variable Name',
  PRIMARY KEY (`variable_id`),
  UNIQUE KEY `VARIABLE_CODE` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Variables';

--
-- Table structure for table `variable_value`
--

DROP TABLE IF EXISTS `variable_value`;
CREATE TABLE `variable_value` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Variable Value Id',
  `variable_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Variable Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `plain_value` text COMMENT 'Plain Text Value',
  `html_value` text COMMENT 'Html Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `VARIABLE_VALUE_VARIABLE_ID_STORE_ID` (`variable_id`,`store_id`),
  KEY `VARIABLE_VALUE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Variable Value';

--
-- Table structure for table `vault_payment_token`
--

DROP TABLE IF EXISTS `vault_payment_token`;
CREATE TABLE `vault_payment_token` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Id',
  `public_hash` varchar(128) NOT NULL COMMENT 'Hash code for using on frontend',
  `payment_method_code` varchar(128) NOT NULL COMMENT 'Payment method code',
  `type` varchar(128) NOT NULL COMMENT 'Type',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `expires_at` timestamp NULL DEFAULT NULL COMMENT 'Expires At',
  `gateway_token` varchar(255) NOT NULL COMMENT 'Gateway Token',
  `details` text COMMENT 'Details',
  `is_active` tinyint(1) NOT NULL COMMENT 'Is active flag',
  `is_visible` tinyint(1) NOT NULL COMMENT 'Is visible flag',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `VAULT_PAYMENT_TOKEN_HASH_UNIQUE_INDEX_PUBLIC_HASH` (`public_hash`),
  UNIQUE KEY `UNQ_54DCE14AEAEA03B587F9EF723EB10A10` (`payment_method_code`,`customer_id`,`gateway_token`),
  KEY `VAULT_PAYMENT_TOKEN_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Vault tokens of payment';

--
-- Dumping data for table `vault_payment_token`
--

LOCK TABLES `vault_payment_token` WRITE;
/*!40000 ALTER TABLE `vault_payment_token` DISABLE KEYS */;
INSERT INTO `vault_payment_token` VALUES ('1',NULL,'95912c423f2d1a2510d0014372254db9b89e27bd300d6e7fe55b40bbd86fc95e','braintree','card','2017-04-17 13:33:17','2020-02-01 00:00:00','b2mbxj','{\"type\":\"VI\",\"maskedCC\":\"1111\",\"expirationDate\":\"01\\/2020\"}',1,0),('2',NULL,'e04989402be0600a5fd2b427f5062b431a495ccf170c1b272364367247449550','braintree','card','2017-04-17 13:44:16','2019-02-01 00:00:00','9gqhrd','{\"type\":\"VI\",\"maskedCC\":\"1881\",\"expirationDate\":\"01\\/2019\"}',1,0),('3',NULL,'ac1c69d6400f46a077c33c3495f1268d59e41863210343cf9207a54610d1035a','braintree','card','2017-04-20 08:37:37','2020-02-01 00:00:00','ddr3wy','{\"type\":\"VI\",\"maskedCC\":\"1111\",\"expirationDate\":\"01\\/2020\"}',1,0);
/*!40000 ALTER TABLE `vault_payment_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vault_payment_token_order_payment_link`
--

DROP TABLE IF EXISTS `vault_payment_token_order_payment_link`;
CREATE TABLE `vault_payment_token_order_payment_link` (
  `order_payment_id` int(10) unsigned NOT NULL COMMENT 'Order payment Id',
  `payment_token_id` int(10) unsigned NOT NULL COMMENT 'Payment token Id',
  PRIMARY KEY (`order_payment_id`,`payment_token_id`),
  KEY `FK_4ED894655446D385894580BECA993862` (`payment_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Order payments to vault token';

--
-- Dumping data for table `vault_payment_token_order_payment_link`
--

LOCK TABLES `vault_payment_token_order_payment_link` WRITE;
/*!40000 ALTER TABLE `vault_payment_token_order_payment_link` DISABLE KEYS */;
INSERT INTO `vault_payment_token_order_payment_link` VALUES ('4','1'),('5','2'),('6','3');
/*!40000 ALTER TABLE `vault_payment_token_order_payment_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weee_tax`
--

DROP TABLE IF EXISTS `weee_tax`;
CREATE TABLE `weee_tax` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `country` varchar(2) DEFAULT NULL COMMENT 'Country',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value',
  `state` int(11) NOT NULL DEFAULT '0' COMMENT 'State',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute Id',
  PRIMARY KEY (`value_id`),
  KEY `WEEE_TAX_WEBSITE_ID` (`website_id`),
  KEY `WEEE_TAX_ENTITY_ID` (`entity_id`),
  KEY `WEEE_TAX_COUNTRY` (`country`),
  KEY `WEEE_TAX_ATTRIBUTE_ID` (`attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Weee Tax';

--
-- Table structure for table `widget`
--

DROP TABLE IF EXISTS `widget`;
CREATE TABLE `widget` (
  `widget_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Widget Id',
  `widget_code` varchar(255) DEFAULT NULL COMMENT 'Widget code for template directive',
  `widget_type` varchar(255) DEFAULT NULL COMMENT 'Widget Type',
  `parameters` text COMMENT 'Parameters',
  PRIMARY KEY (`widget_id`),
  KEY `WIDGET_WIDGET_CODE` (`widget_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Preconfigured Widgets';

--
-- Table structure for table `widget_instance`
--

DROP TABLE IF EXISTS `widget_instance`;
CREATE TABLE `widget_instance` (
  `instance_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Instance Id',
  `instance_type` varchar(255) DEFAULT NULL COMMENT 'Instance Type',
  `theme_id` int(10) unsigned NOT NULL COMMENT 'Theme id',
  `title` varchar(255) DEFAULT NULL COMMENT 'Widget Title',
  `store_ids` varchar(255) NOT NULL DEFAULT '0' COMMENT 'Store ids',
  `widget_parameters` text COMMENT 'Widget parameters',
  `sort_order` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort order',
  PRIMARY KEY (`instance_id`),
  KEY `WIDGET_INSTANCE_THEME_ID_THEME_THEME_ID` (`theme_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Instances of Widget for Package Theme';

--
-- Table structure for table `widget_instance_page`
--

DROP TABLE IF EXISTS `widget_instance_page`;
CREATE TABLE `widget_instance_page` (
  `page_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Page Id',
  `instance_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Instance Id',
  `page_group` varchar(25) DEFAULT NULL COMMENT 'Block Group Type',
  `layout_handle` varchar(255) DEFAULT NULL COMMENT 'Layout Handle',
  `block_reference` varchar(255) DEFAULT NULL COMMENT 'Container',
  `page_for` varchar(25) DEFAULT NULL COMMENT 'For instance entities',
  `entities` text COMMENT 'Catalog entities (comma separated)',
  `page_template` varchar(255) DEFAULT NULL COMMENT 'Path to widget template',
  PRIMARY KEY (`page_id`),
  KEY `WIDGET_INSTANCE_PAGE_INSTANCE_ID` (`instance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Instance of Widget on Page';

--
-- Table structure for table `widget_instance_page_layout`
--

DROP TABLE IF EXISTS `widget_instance_page_layout`;
CREATE TABLE `widget_instance_page_layout` (
  `page_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Page Id',
  `layout_update_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Layout Update Id',
  UNIQUE KEY `WIDGET_INSTANCE_PAGE_LAYOUT_LAYOUT_UPDATE_ID_PAGE_ID` (`layout_update_id`,`page_id`),
  KEY `WIDGET_INSTANCE_PAGE_LAYOUT_PAGE_ID` (`page_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Layout updates';

--
-- Table structure for table `wishlist`
--

DROP TABLE IF EXISTS `wishlist`;
CREATE TABLE `wishlist` (
  `wishlist_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Wishlist ID',
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer ID',
  `shared` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Sharing flag (0 or 1)',
  `sharing_code` varchar(32) DEFAULT NULL COMMENT 'Sharing encrypted code',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Last updated date',
  PRIMARY KEY (`wishlist_id`),
  UNIQUE KEY `WISHLIST_CUSTOMER_ID` (`customer_id`),
  KEY `WISHLIST_SHARED` (`shared`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Wishlist main Table';

--
-- Dumping data for table `wishlist`
--

LOCK TABLES `wishlist` WRITE;
/*!40000 ALTER TABLE `wishlist` DISABLE KEYS */;
INSERT INTO `wishlist` VALUES ('1','2',0,'4a01046dfb5833c2cbf7e0ce10615dcf','2017-04-16 13:31:01');
/*!40000 ALTER TABLE `wishlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishlist_item`
--

DROP TABLE IF EXISTS `wishlist_item`;
CREATE TABLE `wishlist_item` (
  `wishlist_item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Wishlist item ID',
  `wishlist_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Wishlist ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store ID',
  `added_at` timestamp NULL DEFAULT NULL COMMENT 'Add date and time',
  `description` text COMMENT 'Short description of wish list item',
  `qty` decimal(12,4) NOT NULL COMMENT 'Qty',
  PRIMARY KEY (`wishlist_item_id`),
  KEY `WISHLIST_ITEM_WISHLIST_ID` (`wishlist_id`),
  KEY `WISHLIST_ITEM_PRODUCT_ID` (`product_id`),
  KEY `WISHLIST_ITEM_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Wishlist items';

--
-- Table structure for table `wishlist_item_option`
--

DROP TABLE IF EXISTS `wishlist_item_option`;
CREATE TABLE `wishlist_item_option` (
  `option_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Id',
  `wishlist_item_id` int(10) unsigned NOT NULL COMMENT 'Wishlist Item Id',
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `value` text COMMENT 'Value',
  PRIMARY KEY (`option_id`),
  KEY `FK_A014B30B04B72DD0EAB3EECD779728D6` (`wishlist_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Wishlist Item Option Table';

ALTER TABLE `admin_passwords`
  ADD CONSTRAINT `ADMIN_PASSWORDS_USER_ID_ADMIN_USER_USER_ID` FOREIGN KEY (`user_id`) REFERENCES `admin_user` (`user_id`) ON DELETE CASCADE;

ALTER TABLE `admin_user_session`
  ADD CONSTRAINT `ADMIN_USER_SESSION_USER_ID_ADMIN_USER_USER_ID` FOREIGN KEY (`user_id`) REFERENCES `admin_user` (`user_id`) ON DELETE CASCADE;

ALTER TABLE `authorization_rule`
  ADD CONSTRAINT `AUTHORIZATION_RULE_ROLE_ID_AUTHORIZATION_ROLE_ROLE_ID` FOREIGN KEY (`role_id`) REFERENCES `authorization_role` (`role_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_category_entity_datetime`
  ADD CONSTRAINT `CATALOG_CATEGORY_ENTITY_DATETIME_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_CTGR_ENTT_DTIME_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_CTGR_ENTT_DTIME_ENTT_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_category_entity_decimal`
  ADD CONSTRAINT `CATALOG_CATEGORY_ENTITY_DECIMAL_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_CTGR_ENTT_DEC_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_CTGR_ENTT_DEC_ENTT_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_category_entity_int`
  ADD CONSTRAINT `CATALOG_CATEGORY_ENTITY_INT_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_CTGR_ENTT_INT_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_CTGR_ENTT_INT_ENTT_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_category_entity_text`
  ADD CONSTRAINT `CATALOG_CATEGORY_ENTITY_TEXT_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_CTGR_ENTT_TEXT_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_CTGR_ENTT_TEXT_ENTT_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_category_entity_varchar`
  ADD CONSTRAINT `CATALOG_CATEGORY_ENTITY_VARCHAR_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_CTGR_ENTT_VCHR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_CTGR_ENTT_VCHR_ENTT_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_category_product`
  ADD CONSTRAINT `CAT_CTGR_PRD_CTGR_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`category_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_CTGR_PRD_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_compare_item`
  ADD CONSTRAINT `CATALOG_COMPARE_ITEM_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CATALOG_COMPARE_ITEM_PRODUCT_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CATALOG_COMPARE_ITEM_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

ALTER TABLE `catalog_eav_attribute`
  ADD CONSTRAINT `CATALOG_EAV_ATTRIBUTE_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_bundle_option`
  ADD CONSTRAINT `CAT_PRD_BNDL_OPT_PARENT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`parent_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_bundle_option_value`
  ADD CONSTRAINT `CAT_PRD_BNDL_OPT_VAL_OPT_ID_CAT_PRD_BNDL_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `catalog_product_bundle_option` (`option_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_bundle_price_index`
  ADD CONSTRAINT `CAT_PRD_BNDL_PRICE_IDX_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_BNDL_PRICE_IDX_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_BNDL_PRICE_IDX_WS_ID_STORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_bundle_selection`
  ADD CONSTRAINT `CAT_PRD_BNDL_SELECTION_OPT_ID_CAT_PRD_BNDL_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `catalog_product_bundle_option` (`option_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_BNDL_SELECTION_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_bundle_selection_price`
  ADD CONSTRAINT `CAT_PRD_BNDL_SELECTION_PRICE_WS_ID_STORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_DCF37523AA05D770A70AA4ED7C2616E4` FOREIGN KEY (`selection_id`) REFERENCES `catalog_product_bundle_selection` (`selection_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_entity`
  ADD CONSTRAINT `CAT_PRD_ENTT_ATTR_SET_ID_EAV_ATTR_SET_ATTR_SET_ID` FOREIGN KEY (`attribute_set_id`) REFERENCES `eav_attribute_set` (`attribute_set_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_entity_datetime`
  ADD CONSTRAINT `CATALOG_PRODUCT_ENTITY_DATETIME_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_DTIME_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_DTIME_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_entity_decimal`
  ADD CONSTRAINT `CATALOG_PRODUCT_ENTITY_DECIMAL_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_DEC_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_DEC_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_entity_gallery`
  ADD CONSTRAINT `CATALOG_PRODUCT_ENTITY_GALLERY_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_GLR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_GLR_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_entity_int`
  ADD CONSTRAINT `CATALOG_PRODUCT_ENTITY_INT_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_INT_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_INT_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_entity_media_gallery`
  ADD CONSTRAINT `CAT_PRD_ENTT_MDA_GLR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_entity_media_gallery_value`
  ADD CONSTRAINT `CAT_PRD_ENTT_MDA_GLR_VAL_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_MDA_GLR_VAL_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_MDA_GLR_VAL_VAL_ID_CAT_PRD_ENTT_MDA_GLR_VAL_ID` FOREIGN KEY (`value_id`) REFERENCES `catalog_product_entity_media_gallery` (`value_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_entity_media_gallery_value_to_entity`
  ADD CONSTRAINT `CAT_PRD_ENTT_MDA_GLR_VAL_TO_ENTT_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_A6C6C8FAA386736921D3A7C4B50B1185` FOREIGN KEY (`value_id`) REFERENCES `catalog_product_entity_media_gallery` (`value_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_entity_media_gallery_value_video`
  ADD CONSTRAINT `CAT_PRD_ENTT_MDA_GLR_VAL_VIDEO_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_6FDF205946906B0E653E60AA769899F8` FOREIGN KEY (`value_id`) REFERENCES `catalog_product_entity_media_gallery` (`value_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_entity_text`
  ADD CONSTRAINT `CATALOG_PRODUCT_ENTITY_TEXT_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_TEXT_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_TEXT_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_entity_tier_price`
  ADD CONSTRAINT `CAT_PRD_ENTT_TIER_PRICE_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_TIER_PRICE_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_TIER_PRICE_WS_ID_STORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_entity_varchar`
  ADD CONSTRAINT `CATALOG_PRODUCT_ENTITY_VARCHAR_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_VCHR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_VCHR_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_index_price`
  ADD CONSTRAINT `CATALOG_PRODUCT_INDEX_PRICE_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_IDX_PRICE_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_IDX_PRICE_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_index_tier_price`
  ADD CONSTRAINT `CAT_PRD_IDX_TIER_PRICE_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_IDX_TIER_PRICE_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_IDX_TIER_PRICE_WS_ID_STORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_index_website`
  ADD CONSTRAINT `CAT_PRD_IDX_WS_WS_ID_STORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_link`
  ADD CONSTRAINT `CATALOG_PRODUCT_LINK_PRODUCT_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_LNK_LNKED_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`linked_product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_LNK_LNK_TYPE_ID_CAT_PRD_LNK_TYPE_LNK_TYPE_ID` FOREIGN KEY (`link_type_id`) REFERENCES `catalog_product_link_type` (`link_type_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_link_attribute`
  ADD CONSTRAINT `CAT_PRD_LNK_ATTR_LNK_TYPE_ID_CAT_PRD_LNK_TYPE_LNK_TYPE_ID` FOREIGN KEY (`link_type_id`) REFERENCES `catalog_product_link_type` (`link_type_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_link_attribute_decimal`
  ADD CONSTRAINT `CAT_PRD_LNK_ATTR_DEC_LNK_ID_CAT_PRD_LNK_LNK_ID` FOREIGN KEY (`link_id`) REFERENCES `catalog_product_link` (`link_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_AB2EFA9A14F7BCF1D5400056203D14B6` FOREIGN KEY (`product_link_attribute_id`) REFERENCES `catalog_product_link_attribute` (`product_link_attribute_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_link_attribute_int`
  ADD CONSTRAINT `CAT_PRD_LNK_ATTR_INT_LNK_ID_CAT_PRD_LNK_LNK_ID` FOREIGN KEY (`link_id`) REFERENCES `catalog_product_link` (`link_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_D6D878F8BA2A4282F8DDED7E6E3DE35C` FOREIGN KEY (`product_link_attribute_id`) REFERENCES `catalog_product_link_attribute` (`product_link_attribute_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_link_attribute_varchar`
  ADD CONSTRAINT `CAT_PRD_LNK_ATTR_VCHR_LNK_ID_CAT_PRD_LNK_LNK_ID` FOREIGN KEY (`link_id`) REFERENCES `catalog_product_link` (`link_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_DEE9C4DA61CFCC01DFCF50F0D79CEA51` FOREIGN KEY (`product_link_attribute_id`) REFERENCES `catalog_product_link_attribute` (`product_link_attribute_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_option`
  ADD CONSTRAINT `CAT_PRD_OPT_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_option_price`
  ADD CONSTRAINT `CATALOG_PRODUCT_OPTION_PRICE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_OPT_PRICE_OPT_ID_CAT_PRD_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `catalog_product_option` (`option_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_option_title`
  ADD CONSTRAINT `CATALOG_PRODUCT_OPTION_TITLE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_OPT_TTL_OPT_ID_CAT_PRD_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `catalog_product_option` (`option_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_option_type_price`
  ADD CONSTRAINT `CATALOG_PRODUCT_OPTION_TYPE_PRICE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_B523E3378E8602F376CC415825576B7F` FOREIGN KEY (`option_type_id`) REFERENCES `catalog_product_option_type_value` (`option_type_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_option_type_title`
  ADD CONSTRAINT `CATALOG_PRODUCT_OPTION_TYPE_TITLE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_C085B9CF2C2A302E8043FDEA1937D6A2` FOREIGN KEY (`option_type_id`) REFERENCES `catalog_product_option_type_value` (`option_type_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_option_type_value`
  ADD CONSTRAINT `CAT_PRD_OPT_TYPE_VAL_OPT_ID_CAT_PRD_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `catalog_product_option` (`option_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_relation`
  ADD CONSTRAINT `CAT_PRD_RELATION_CHILD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`child_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_RELATION_PARENT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`parent_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_super_attribute`
  ADD CONSTRAINT `CAT_PRD_SPR_ATTR_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_super_attribute_label`
  ADD CONSTRAINT `CATALOG_PRODUCT_SUPER_ATTRIBUTE_LABEL_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_309442281DF7784210ED82B2CC51E5D5` FOREIGN KEY (`product_super_attribute_id`) REFERENCES `catalog_product_super_attribute` (`product_super_attribute_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_super_link`
  ADD CONSTRAINT `CAT_PRD_SPR_LNK_PARENT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`parent_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_SPR_LNK_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_website`
  ADD CONSTRAINT `CATALOG_PRODUCT_WEBSITE_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_WS_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_url_rewrite_product_category`
  ADD CONSTRAINT `CAT_URL_REWRITE_PRD_CTGR_CTGR_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`category_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_URL_REWRITE_PRD_CTGR_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_BB79E64705D7F17FE181F23144528FC8` FOREIGN KEY (`url_rewrite_id`) REFERENCES `url_rewrite` (`url_rewrite_id`) ON DELETE CASCADE;

ALTER TABLE `cataloginventory_stock_item`
  ADD CONSTRAINT `CATINV_STOCK_ITEM_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CATINV_STOCK_ITEM_STOCK_ID_CATINV_STOCK_STOCK_ID` FOREIGN KEY (`stock_id`) REFERENCES `cataloginventory_stock` (`stock_id`) ON DELETE CASCADE;

ALTER TABLE `catalogrule_customer_group`
  ADD CONSTRAINT `CATALOGRULE_CUSTOMER_GROUP_RULE_ID_CATALOGRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `catalogrule` (`rule_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CATRULE_CSTR_GROUP_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE;

ALTER TABLE `catalogrule_group_website`
  ADD CONSTRAINT `CATALOGRULE_GROUP_WEBSITE_RULE_ID_CATALOGRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `catalogrule` (`rule_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CATALOGRULE_GROUP_WEBSITE_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CATRULE_GROUP_WS_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE;

ALTER TABLE `catalogrule_website`
  ADD CONSTRAINT `CATALOGRULE_WEBSITE_RULE_ID_CATALOGRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `catalogrule` (`rule_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CATALOGRULE_WEBSITE_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

ALTER TABLE `checkout_agreement_store`
  ADD CONSTRAINT `CHECKOUT_AGREEMENT_STORE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CHKT_AGRT_STORE_AGRT_ID_CHKT_AGRT_AGRT_ID` FOREIGN KEY (`agreement_id`) REFERENCES `checkout_agreement` (`agreement_id`) ON DELETE CASCADE;

ALTER TABLE `cms_block_store`
  ADD CONSTRAINT `CMS_BLOCK_STORE_BLOCK_ID_CMS_BLOCK_BLOCK_ID` FOREIGN KEY (`block_id`) REFERENCES `cms_block` (`block_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CMS_BLOCK_STORE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `cms_page_store`
  ADD CONSTRAINT `CMS_PAGE_STORE_PAGE_ID_CMS_PAGE_PAGE_ID` FOREIGN KEY (`page_id`) REFERENCES `cms_page` (`page_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CMS_PAGE_STORE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `customer_address_entity`
  ADD CONSTRAINT `CUSTOMER_ADDRESS_ENTITY_PARENT_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `customer_address_entity_datetime`
  ADD CONSTRAINT `CSTR_ADDR_ENTT_DTIME_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CSTR_ADDR_ENTT_DTIME_ENTT_ID_CSTR_ADDR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_address_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `customer_address_entity_decimal`
  ADD CONSTRAINT `CSTR_ADDR_ENTT_DEC_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CSTR_ADDR_ENTT_DEC_ENTT_ID_CSTR_ADDR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_address_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `customer_address_entity_int`
  ADD CONSTRAINT `CSTR_ADDR_ENTT_INT_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CSTR_ADDR_ENTT_INT_ENTT_ID_CSTR_ADDR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_address_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `customer_address_entity_text`
  ADD CONSTRAINT `CSTR_ADDR_ENTT_TEXT_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CSTR_ADDR_ENTT_TEXT_ENTT_ID_CSTR_ADDR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_address_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `customer_address_entity_varchar`
  ADD CONSTRAINT `CSTR_ADDR_ENTT_VCHR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CSTR_ADDR_ENTT_VCHR_ENTT_ID_CSTR_ADDR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_address_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `customer_eav_attribute`
  ADD CONSTRAINT `CUSTOMER_EAV_ATTRIBUTE_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE;

ALTER TABLE `customer_eav_attribute_website`
  ADD CONSTRAINT `CSTR_EAV_ATTR_WS_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CSTR_EAV_ATTR_WS_WS_ID_STORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

ALTER TABLE `customer_entity`
  ADD CONSTRAINT `CUSTOMER_ENTITY_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `CUSTOMER_ENTITY_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE SET NULL;

ALTER TABLE `customer_entity_datetime`
  ADD CONSTRAINT `CUSTOMER_ENTITY_DATETIME_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CUSTOMER_ENTITY_DATETIME_ENTITY_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `customer_entity_decimal`
  ADD CONSTRAINT `CUSTOMER_ENTITY_DECIMAL_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CUSTOMER_ENTITY_DECIMAL_ENTITY_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `customer_entity_int`
  ADD CONSTRAINT `CUSTOMER_ENTITY_INT_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CUSTOMER_ENTITY_INT_ENTITY_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `customer_entity_text`
  ADD CONSTRAINT `CUSTOMER_ENTITY_TEXT_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CUSTOMER_ENTITY_TEXT_ENTITY_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `customer_entity_varchar`
  ADD CONSTRAINT `CUSTOMER_ENTITY_VARCHAR_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CUSTOMER_ENTITY_VARCHAR_ENTITY_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `customer_form_attribute`
  ADD CONSTRAINT `CUSTOMER_FORM_ATTRIBUTE_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE;

ALTER TABLE `design_change`
  ADD CONSTRAINT `DESIGN_CHANGE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `directory_country_region_name`
  ADD CONSTRAINT `DIR_COUNTRY_REGION_NAME_REGION_ID_DIR_COUNTRY_REGION_REGION_ID` FOREIGN KEY (`region_id`) REFERENCES `directory_country_region` (`region_id`) ON DELETE CASCADE;

ALTER TABLE `downloadable_link`
  ADD CONSTRAINT `DOWNLOADABLE_LINK_PRODUCT_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `downloadable_link_price`
  ADD CONSTRAINT `DOWNLOADABLE_LINK_PRICE_LINK_ID_DOWNLOADABLE_LINK_LINK_ID` FOREIGN KEY (`link_id`) REFERENCES `downloadable_link` (`link_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `DOWNLOADABLE_LINK_PRICE_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

ALTER TABLE `downloadable_link_purchased`
  ADD CONSTRAINT `DL_LNK_PURCHASED_CSTR_ID_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `DOWNLOADABLE_LINK_PURCHASED_ORDER_ID_SALES_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_order` (`entity_id`) ON DELETE SET NULL;

ALTER TABLE `downloadable_link_purchased_item`
  ADD CONSTRAINT `DL_LNK_PURCHASED_ITEM_ORDER_ITEM_ID_SALES_ORDER_ITEM_ITEM_ID` FOREIGN KEY (`order_item_id`) REFERENCES `sales_order_item` (`item_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `DL_LNK_PURCHASED_ITEM_PURCHASED_ID_DL_LNK_PURCHASED_PURCHASED_ID` FOREIGN KEY (`purchased_id`) REFERENCES `downloadable_link_purchased` (`purchased_id`) ON DELETE CASCADE;

ALTER TABLE `downloadable_link_title`
  ADD CONSTRAINT `DOWNLOADABLE_LINK_TITLE_LINK_ID_DOWNLOADABLE_LINK_LINK_ID` FOREIGN KEY (`link_id`) REFERENCES `downloadable_link` (`link_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `DOWNLOADABLE_LINK_TITLE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `downloadable_sample`
  ADD CONSTRAINT `DOWNLOADABLE_SAMPLE_PRODUCT_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `downloadable_sample_title`
  ADD CONSTRAINT `DL_SAMPLE_TTL_SAMPLE_ID_DL_SAMPLE_SAMPLE_ID` FOREIGN KEY (`sample_id`) REFERENCES `downloadable_sample` (`sample_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `DOWNLOADABLE_SAMPLE_TITLE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `eav_attribute`
  ADD CONSTRAINT `EAV_ATTRIBUTE_ENTITY_TYPE_ID_EAV_ENTITY_TYPE_ENTITY_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE;

ALTER TABLE `eav_attribute_group`
  ADD CONSTRAINT `EAV_ATTR_GROUP_ATTR_SET_ID_EAV_ATTR_SET_ATTR_SET_ID` FOREIGN KEY (`attribute_set_id`) REFERENCES `eav_attribute_set` (`attribute_set_id`) ON DELETE CASCADE;

ALTER TABLE `eav_attribute_label`
  ADD CONSTRAINT `EAV_ATTRIBUTE_LABEL_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ATTRIBUTE_LABEL_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `eav_attribute_option`
  ADD CONSTRAINT `EAV_ATTRIBUTE_OPTION_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE;

ALTER TABLE `eav_attribute_option_swatch`
  ADD CONSTRAINT `EAV_ATTRIBUTE_OPTION_SWATCH_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ATTR_OPT_SWATCH_OPT_ID_EAV_ATTR_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `eav_attribute_option` (`option_id`) ON DELETE CASCADE;

ALTER TABLE `eav_attribute_option_value`
  ADD CONSTRAINT `EAV_ATTRIBUTE_OPTION_VALUE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ATTR_OPT_VAL_OPT_ID_EAV_ATTR_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `eav_attribute_option` (`option_id`) ON DELETE CASCADE;

ALTER TABLE `eav_attribute_set`
  ADD CONSTRAINT `EAV_ATTRIBUTE_SET_ENTITY_TYPE_ID_EAV_ENTITY_TYPE_ENTITY_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE;

ALTER TABLE `eav_entity`
  ADD CONSTRAINT `EAV_ENTITY_ENTITY_TYPE_ID_EAV_ENTITY_TYPE_ENTITY_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ENTITY_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `eav_entity_attribute`
  ADD CONSTRAINT `EAV_ENTITY_ATTRIBUTE_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ENTT_ATTR_ATTR_GROUP_ID_EAV_ATTR_GROUP_ATTR_GROUP_ID` FOREIGN KEY (`attribute_group_id`) REFERENCES `eav_attribute_group` (`attribute_group_id`) ON DELETE CASCADE;

ALTER TABLE `eav_entity_datetime`
  ADD CONSTRAINT `EAV_ENTITY_DATETIME_ENTITY_ID_EAV_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `eav_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ENTITY_DATETIME_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ENTT_DTIME_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE;

ALTER TABLE `eav_entity_decimal`
  ADD CONSTRAINT `EAV_ENTITY_DECIMAL_ENTITY_ID_EAV_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `eav_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ENTITY_DECIMAL_ENTITY_TYPE_ID_EAV_ENTITY_TYPE_ENTITY_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ENTITY_DECIMAL_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `eav_entity_int`
  ADD CONSTRAINT `EAV_ENTITY_INT_ENTITY_ID_EAV_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `eav_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ENTITY_INT_ENTITY_TYPE_ID_EAV_ENTITY_TYPE_ENTITY_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ENTITY_INT_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `eav_entity_store`
  ADD CONSTRAINT `EAV_ENTITY_STORE_ENTITY_TYPE_ID_EAV_ENTITY_TYPE_ENTITY_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ENTITY_STORE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `eav_entity_text`
  ADD CONSTRAINT `EAV_ENTITY_TEXT_ENTITY_ID_EAV_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `eav_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ENTITY_TEXT_ENTITY_TYPE_ID_EAV_ENTITY_TYPE_ENTITY_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ENTITY_TEXT_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `eav_entity_varchar`
  ADD CONSTRAINT `EAV_ENTITY_VARCHAR_ENTITY_ID_EAV_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `eav_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ENTITY_VARCHAR_ENTITY_TYPE_ID_EAV_ENTITY_TYPE_ENTITY_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ENTITY_VARCHAR_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `eav_form_element`
  ADD CONSTRAINT `EAV_FORM_ELEMENT_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_FORM_ELEMENT_FIELDSET_ID_EAV_FORM_FIELDSET_FIELDSET_ID` FOREIGN KEY (`fieldset_id`) REFERENCES `eav_form_fieldset` (`fieldset_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `EAV_FORM_ELEMENT_TYPE_ID_EAV_FORM_TYPE_TYPE_ID` FOREIGN KEY (`type_id`) REFERENCES `eav_form_type` (`type_id`) ON DELETE CASCADE;

ALTER TABLE `eav_form_fieldset`
  ADD CONSTRAINT `EAV_FORM_FIELDSET_TYPE_ID_EAV_FORM_TYPE_TYPE_ID` FOREIGN KEY (`type_id`) REFERENCES `eav_form_type` (`type_id`) ON DELETE CASCADE;

ALTER TABLE `eav_form_fieldset_label`
  ADD CONSTRAINT `EAV_FORM_FIELDSET_LABEL_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_FORM_FSET_LBL_FSET_ID_EAV_FORM_FSET_FSET_ID` FOREIGN KEY (`fieldset_id`) REFERENCES `eav_form_fieldset` (`fieldset_id`) ON DELETE CASCADE;

ALTER TABLE `eav_form_type`
  ADD CONSTRAINT `EAV_FORM_TYPE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `eav_form_type_entity`
  ADD CONSTRAINT `EAV_FORM_TYPE_ENTITY_TYPE_ID_EAV_FORM_TYPE_TYPE_ID` FOREIGN KEY (`type_id`) REFERENCES `eav_form_type` (`type_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_FORM_TYPE_ENTT_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE;

ALTER TABLE `googleoptimizer_code`
  ADD CONSTRAINT `GOOGLEOPTIMIZER_CODE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `integration`
  ADD CONSTRAINT `INTEGRATION_CONSUMER_ID_OAUTH_CONSUMER_ENTITY_ID` FOREIGN KEY (`consumer_id`) REFERENCES `oauth_consumer` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `layout_link`
  ADD CONSTRAINT `LAYOUT_LINK_LAYOUT_UPDATE_ID_LAYOUT_UPDATE_LAYOUT_UPDATE_ID` FOREIGN KEY (`layout_update_id`) REFERENCES `layout_update` (`layout_update_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `LAYOUT_LINK_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `LAYOUT_LINK_THEME_ID_THEME_THEME_ID` FOREIGN KEY (`theme_id`) REFERENCES `theme` (`theme_id`) ON DELETE CASCADE;

ALTER TABLE `newsletter_problem`
  ADD CONSTRAINT `NEWSLETTER_PROBLEM_QUEUE_ID_NEWSLETTER_QUEUE_QUEUE_ID` FOREIGN KEY (`queue_id`) REFERENCES `newsletter_queue` (`queue_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `NLTTR_PROBLEM_SUBSCRIBER_ID_NLTTR_SUBSCRIBER_SUBSCRIBER_ID` FOREIGN KEY (`subscriber_id`) REFERENCES `newsletter_subscriber` (`subscriber_id`) ON DELETE CASCADE;

ALTER TABLE `newsletter_queue`
  ADD CONSTRAINT `NEWSLETTER_QUEUE_TEMPLATE_ID_NEWSLETTER_TEMPLATE_TEMPLATE_ID` FOREIGN KEY (`template_id`) REFERENCES `newsletter_template` (`template_id`) ON DELETE CASCADE;

ALTER TABLE `newsletter_queue_link`
  ADD CONSTRAINT `NEWSLETTER_QUEUE_LINK_QUEUE_ID_NEWSLETTER_QUEUE_QUEUE_ID` FOREIGN KEY (`queue_id`) REFERENCES `newsletter_queue` (`queue_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `NLTTR_QUEUE_LNK_SUBSCRIBER_ID_NLTTR_SUBSCRIBER_SUBSCRIBER_ID` FOREIGN KEY (`subscriber_id`) REFERENCES `newsletter_subscriber` (`subscriber_id`) ON DELETE CASCADE;

ALTER TABLE `newsletter_queue_store_link`
  ADD CONSTRAINT `NEWSLETTER_QUEUE_STORE_LINK_QUEUE_ID_NEWSLETTER_QUEUE_QUEUE_ID` FOREIGN KEY (`queue_id`) REFERENCES `newsletter_queue` (`queue_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `NEWSLETTER_QUEUE_STORE_LINK_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `newsletter_subscriber`
  ADD CONSTRAINT `NEWSLETTER_SUBSCRIBER_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

ALTER TABLE `oauth_nonce`
  ADD CONSTRAINT `OAUTH_NONCE_CONSUMER_ID_OAUTH_CONSUMER_ENTITY_ID` FOREIGN KEY (`consumer_id`) REFERENCES `oauth_consumer` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `oauth_token`
  ADD CONSTRAINT `OAUTH_TOKEN_ADMIN_ID_ADMIN_USER_USER_ID` FOREIGN KEY (`admin_id`) REFERENCES `admin_user` (`user_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `OAUTH_TOKEN_CONSUMER_ID_OAUTH_CONSUMER_ENTITY_ID` FOREIGN KEY (`consumer_id`) REFERENCES `oauth_consumer` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `OAUTH_TOKEN_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `paypal_billing_agreement`
  ADD CONSTRAINT `PAYPAL_BILLING_AGREEMENT_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `PAYPAL_BILLING_AGREEMENT_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

ALTER TABLE `paypal_billing_agreement_order`
  ADD CONSTRAINT `PAYPAL_BILLING_AGREEMENT_ORDER_ORDER_ID_SALES_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_order` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `PAYPAL_BILLING_AGRT_ORDER_AGRT_ID_PAYPAL_BILLING_AGRT_AGRT_ID` FOREIGN KEY (`agreement_id`) REFERENCES `paypal_billing_agreement` (`agreement_id`) ON DELETE CASCADE;

ALTER TABLE `paypal_cert`
  ADD CONSTRAINT `PAYPAL_CERT_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

ALTER TABLE `paypal_settlement_report_row`
  ADD CONSTRAINT `FK_E183E488F593E0DE10C6EBFFEBAC9B55` FOREIGN KEY (`report_id`) REFERENCES `paypal_settlement_report` (`report_id`) ON DELETE CASCADE;

ALTER TABLE `persistent_session`
  ADD CONSTRAINT `PERSISTENT_SESSION_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `PERSISTENT_SESSION_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

ALTER TABLE `plazathemes_blog_category_store`
  ADD CONSTRAINT `FK_5CE7EA43DAADC8EAFEDD24CB3765DBCB` FOREIGN KEY (`category_id`) REFERENCES `plazathemes_blog_category` (`category_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `PLAZATHEMES_BLOG_CATEGORY_STORE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `plazathemes_blog_post_category`
  ADD CONSTRAINT `PLAZATHEMES_BLOG_POST_CTGR_CTGR_ID_PLAZATHEMES_BLOG_CTGR_CTGR_ID` FOREIGN KEY (`category_id`) REFERENCES `plazathemes_blog_category` (`category_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `PLAZATHEMES_BLOG_POST_CTGR_POST_ID_PLAZATHEMES_BLOG_POST_POST_ID` FOREIGN KEY (`post_id`) REFERENCES `plazathemes_blog_post` (`post_id`) ON DELETE CASCADE;

ALTER TABLE `plazathemes_blog_post_relatedpost`
  ADD CONSTRAINT `FK_9F4A4184A025A73B339BA1263D565D1E` FOREIGN KEY (`post_id`) REFERENCES `plazathemes_blog_post` (`post_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_D1DFCD681F1AE23DD14596C624890A62` FOREIGN KEY (`post_id`) REFERENCES `plazathemes_blog_post` (`post_id`) ON DELETE CASCADE;

ALTER TABLE `plazathemes_blog_post_relatedproduct`
  ADD CONSTRAINT `FK_F087337CF909C30B9C993D16115A82A6` FOREIGN KEY (`post_id`) REFERENCES `plazathemes_blog_post` (`post_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `PLAZATHEMES_BLOG_POST_RELATEDPRD_RELATED_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`related_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `plazathemes_blog_post_store`
  ADD CONSTRAINT `FK_A8F0C30220F3C333078301EB9CD221CC` FOREIGN KEY (`post_id`) REFERENCES `plazathemes_blog_post` (`post_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `PLAZATHEMES_BLOG_POST_STORE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `product_alert_price`
  ADD CONSTRAINT `PRODUCT_ALERT_PRICE_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `PRODUCT_ALERT_PRICE_PRODUCT_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `PRODUCT_ALERT_PRICE_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

ALTER TABLE `product_alert_stock`
  ADD CONSTRAINT `PRODUCT_ALERT_STOCK_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `PRODUCT_ALERT_STOCK_PRODUCT_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `PRODUCT_ALERT_STOCK_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

ALTER TABLE `quote`
  ADD CONSTRAINT `QUOTE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `quote_address`
  ADD CONSTRAINT `QUOTE_ADDRESS_QUOTE_ID_QUOTE_ENTITY_ID` FOREIGN KEY (`quote_id`) REFERENCES `quote` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `quote_address_item`
  ADD CONSTRAINT `QUOTE_ADDRESS_ITEM_QUOTE_ADDRESS_ID_QUOTE_ADDRESS_ADDRESS_ID` FOREIGN KEY (`quote_address_id`) REFERENCES `quote_address` (`address_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `QUOTE_ADDRESS_ITEM_QUOTE_ITEM_ID_QUOTE_ITEM_ITEM_ID` FOREIGN KEY (`quote_item_id`) REFERENCES `quote_item` (`item_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `QUOTE_ADDR_ITEM_PARENT_ITEM_ID_QUOTE_ADDR_ITEM_ADDR_ITEM_ID` FOREIGN KEY (`parent_item_id`) REFERENCES `quote_address_item` (`address_item_id`) ON DELETE CASCADE;

ALTER TABLE `quote_id_mask`
  ADD CONSTRAINT `QUOTE_ID_MASK_QUOTE_ID_QUOTE_ENTITY_ID` FOREIGN KEY (`quote_id`) REFERENCES `quote` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `quote_item`
  ADD CONSTRAINT `QUOTE_ITEM_PARENT_ITEM_ID_QUOTE_ITEM_ITEM_ID` FOREIGN KEY (`parent_item_id`) REFERENCES `quote_item` (`item_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `QUOTE_ITEM_QUOTE_ID_QUOTE_ENTITY_ID` FOREIGN KEY (`quote_id`) REFERENCES `quote` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `QUOTE_ITEM_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

ALTER TABLE `quote_item_option`
  ADD CONSTRAINT `QUOTE_ITEM_OPTION_ITEM_ID_QUOTE_ITEM_ITEM_ID` FOREIGN KEY (`item_id`) REFERENCES `quote_item` (`item_id`) ON DELETE CASCADE;

ALTER TABLE `quote_payment`
  ADD CONSTRAINT `QUOTE_PAYMENT_QUOTE_ID_QUOTE_ENTITY_ID` FOREIGN KEY (`quote_id`) REFERENCES `quote` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `quote_shipping_rate`
  ADD CONSTRAINT `QUOTE_SHIPPING_RATE_ADDRESS_ID_QUOTE_ADDRESS_ADDRESS_ID` FOREIGN KEY (`address_id`) REFERENCES `quote_address` (`address_id`) ON DELETE CASCADE;

ALTER TABLE `rating`
  ADD CONSTRAINT `RATING_ENTITY_ID_RATING_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `rating_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `rating_option`
  ADD CONSTRAINT `RATING_OPTION_RATING_ID_RATING_RATING_ID` FOREIGN KEY (`rating_id`) REFERENCES `rating` (`rating_id`) ON DELETE CASCADE;

ALTER TABLE `rating_option_vote`
  ADD CONSTRAINT `RATING_OPTION_VOTE_OPTION_ID_RATING_OPTION_OPTION_ID` FOREIGN KEY (`option_id`) REFERENCES `rating_option` (`option_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `RATING_OPTION_VOTE_REVIEW_ID_REVIEW_REVIEW_ID` FOREIGN KEY (`review_id`) REFERENCES `review` (`review_id`) ON DELETE CASCADE;

ALTER TABLE `rating_option_vote_aggregated`
  ADD CONSTRAINT `RATING_OPTION_VOTE_AGGREGATED_RATING_ID_RATING_RATING_ID` FOREIGN KEY (`rating_id`) REFERENCES `rating` (`rating_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `RATING_OPTION_VOTE_AGGREGATED_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `rating_store`
  ADD CONSTRAINT `RATING_STORE_RATING_ID_RATING_RATING_ID` FOREIGN KEY (`rating_id`) REFERENCES `rating` (`rating_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `RATING_STORE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `rating_title`
  ADD CONSTRAINT `RATING_TITLE_RATING_ID_RATING_RATING_ID` FOREIGN KEY (`rating_id`) REFERENCES `rating` (`rating_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `RATING_TITLE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `report_compared_product_index`
  ADD CONSTRAINT `REPORT_CMPD_PRD_IDX_CSTR_ID_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `REPORT_CMPD_PRD_IDX_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `REPORT_COMPARED_PRODUCT_INDEX_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

ALTER TABLE `report_event`
  ADD CONSTRAINT `REPORT_EVENT_EVENT_TYPE_ID_REPORT_EVENT_TYPES_EVENT_TYPE_ID` FOREIGN KEY (`event_type_id`) REFERENCES `report_event_types` (`event_type_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `REPORT_EVENT_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `report_viewed_product_aggregated_daily`
  ADD CONSTRAINT `REPORT_VIEWED_PRD_AGGRED_DAILY_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `REPORT_VIEWED_PRODUCT_AGGREGATED_DAILY_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `report_viewed_product_aggregated_monthly`
  ADD CONSTRAINT `REPORT_VIEWED_PRD_AGGRED_MONTHLY_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `REPORT_VIEWED_PRODUCT_AGGREGATED_MONTHLY_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `report_viewed_product_aggregated_yearly`
  ADD CONSTRAINT `REPORT_VIEWED_PRD_AGGRED_YEARLY_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `REPORT_VIEWED_PRODUCT_AGGREGATED_YEARLY_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `report_viewed_product_index`
  ADD CONSTRAINT `REPORT_VIEWED_PRD_IDX_CSTR_ID_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `REPORT_VIEWED_PRD_IDX_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `REPORT_VIEWED_PRODUCT_INDEX_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

ALTER TABLE `review`
  ADD CONSTRAINT `REVIEW_ENTITY_ID_REVIEW_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `review_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `REVIEW_STATUS_ID_REVIEW_STATUS_STATUS_ID` FOREIGN KEY (`status_id`) REFERENCES `review_status` (`status_id`) ON DELETE NO ACTION;

ALTER TABLE `review_detail`
  ADD CONSTRAINT `REVIEW_DETAIL_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `REVIEW_DETAIL_REVIEW_ID_REVIEW_REVIEW_ID` FOREIGN KEY (`review_id`) REFERENCES `review` (`review_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `REVIEW_DETAIL_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

ALTER TABLE `review_entity_summary`
  ADD CONSTRAINT `REVIEW_ENTITY_SUMMARY_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `review_store`
  ADD CONSTRAINT `REVIEW_STORE_REVIEW_ID_REVIEW_REVIEW_ID` FOREIGN KEY (`review_id`) REFERENCES `review` (`review_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `REVIEW_STORE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `sales_bestsellers_aggregated_daily`
  ADD CONSTRAINT `SALES_BESTSELLERS_AGGREGATED_DAILY_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `sales_bestsellers_aggregated_monthly`
  ADD CONSTRAINT `SALES_BESTSELLERS_AGGREGATED_MONTHLY_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `sales_bestsellers_aggregated_yearly`
  ADD CONSTRAINT `SALES_BESTSELLERS_AGGREGATED_YEARLY_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `sales_creditmemo`
  ADD CONSTRAINT `SALES_CREDITMEMO_ORDER_ID_SALES_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_order` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALES_CREDITMEMO_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

ALTER TABLE `sales_creditmemo_comment`
  ADD CONSTRAINT `SALES_CREDITMEMO_COMMENT_PARENT_ID_SALES_CREDITMEMO_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `sales_creditmemo` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `sales_creditmemo_item`
  ADD CONSTRAINT `SALES_CREDITMEMO_ITEM_PARENT_ID_SALES_CREDITMEMO_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `sales_creditmemo` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `sales_invoice`
  ADD CONSTRAINT `SALES_INVOICE_ORDER_ID_SALES_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_order` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALES_INVOICE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

ALTER TABLE `sales_invoice_comment`
  ADD CONSTRAINT `SALES_INVOICE_COMMENT_PARENT_ID_SALES_INVOICE_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `sales_invoice` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `sales_invoice_item`
  ADD CONSTRAINT `SALES_INVOICE_ITEM_PARENT_ID_SALES_INVOICE_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `sales_invoice` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `sales_invoiced_aggregated`
  ADD CONSTRAINT `SALES_INVOICED_AGGREGATED_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

ALTER TABLE `sales_invoiced_aggregated_order`
  ADD CONSTRAINT `SALES_INVOICED_AGGREGATED_ORDER_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

ALTER TABLE `sales_order`
  ADD CONSTRAINT `SALES_ORDER_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `SALES_ORDER_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

ALTER TABLE `sales_order_address`
  ADD CONSTRAINT `SALES_ORDER_ADDRESS_PARENT_ID_SALES_ORDER_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `sales_order` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `sales_order_aggregated_created`
  ADD CONSTRAINT `SALES_ORDER_AGGREGATED_CREATED_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

ALTER TABLE `sales_order_aggregated_updated`
  ADD CONSTRAINT `SALES_ORDER_AGGREGATED_UPDATED_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

ALTER TABLE `sales_order_item`
  ADD CONSTRAINT `SALES_ORDER_ITEM_ORDER_ID_SALES_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_order` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALES_ORDER_ITEM_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

ALTER TABLE `sales_order_payment`
  ADD CONSTRAINT `SALES_ORDER_PAYMENT_PARENT_ID_SALES_ORDER_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `sales_order` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `sales_order_status_history`
  ADD CONSTRAINT `SALES_ORDER_STATUS_HISTORY_PARENT_ID_SALES_ORDER_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `sales_order` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `sales_order_status_label`
  ADD CONSTRAINT `SALES_ORDER_STATUS_LABEL_STATUS_SALES_ORDER_STATUS_STATUS` FOREIGN KEY (`status`) REFERENCES `sales_order_status` (`status`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALES_ORDER_STATUS_LABEL_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `sales_order_status_state`
  ADD CONSTRAINT `SALES_ORDER_STATUS_STATE_STATUS_SALES_ORDER_STATUS_STATUS` FOREIGN KEY (`status`) REFERENCES `sales_order_status` (`status`) ON DELETE CASCADE;

ALTER TABLE `sales_order_tax_item`
  ADD CONSTRAINT `SALES_ORDER_TAX_ITEM_ASSOCIATED_ITEM_ID_SALES_ORDER_ITEM_ITEM_ID` FOREIGN KEY (`associated_item_id`) REFERENCES `sales_order_item` (`item_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALES_ORDER_TAX_ITEM_ITEM_ID_SALES_ORDER_ITEM_ITEM_ID` FOREIGN KEY (`item_id`) REFERENCES `sales_order_item` (`item_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALES_ORDER_TAX_ITEM_TAX_ID_SALES_ORDER_TAX_TAX_ID` FOREIGN KEY (`tax_id`) REFERENCES `sales_order_tax` (`tax_id`) ON DELETE CASCADE;

ALTER TABLE `sales_payment_transaction`
  ADD CONSTRAINT `FK_B99FF1A06402D725EBDB0F3A7ECD47A2` FOREIGN KEY (`parent_id`) REFERENCES `sales_payment_transaction` (`transaction_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALES_PAYMENT_TRANSACTION_ORDER_ID_SALES_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_order` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALES_PAYMENT_TRANSACTION_PAYMENT_ID_SALES_ORDER_PAYMENT_ENTT_ID` FOREIGN KEY (`payment_id`) REFERENCES `sales_order_payment` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `sales_refunded_aggregated`
  ADD CONSTRAINT `SALES_REFUNDED_AGGREGATED_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

ALTER TABLE `sales_refunded_aggregated_order`
  ADD CONSTRAINT `SALES_REFUNDED_AGGREGATED_ORDER_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

ALTER TABLE `sales_sequence_profile`
  ADD CONSTRAINT `SALES_SEQUENCE_PROFILE_META_ID_SALES_SEQUENCE_META_META_ID` FOREIGN KEY (`meta_id`) REFERENCES `sales_sequence_meta` (`meta_id`) ON DELETE CASCADE;

ALTER TABLE `sales_shipment`
  ADD CONSTRAINT `SALES_SHIPMENT_ORDER_ID_SALES_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_order` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALES_SHIPMENT_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

ALTER TABLE `sales_shipment_comment`
  ADD CONSTRAINT `SALES_SHIPMENT_COMMENT_PARENT_ID_SALES_SHIPMENT_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `sales_shipment` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `sales_shipment_item`
  ADD CONSTRAINT `SALES_SHIPMENT_ITEM_PARENT_ID_SALES_SHIPMENT_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `sales_shipment` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `sales_shipment_track`
  ADD CONSTRAINT `SALES_SHIPMENT_TRACK_PARENT_ID_SALES_SHIPMENT_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `sales_shipment` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `sales_shipping_aggregated`
  ADD CONSTRAINT `SALES_SHIPPING_AGGREGATED_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

ALTER TABLE `sales_shipping_aggregated_order`
  ADD CONSTRAINT `SALES_SHIPPING_AGGREGATED_ORDER_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

ALTER TABLE `salesrule_coupon`
  ADD CONSTRAINT `SALESRULE_COUPON_RULE_ID_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `salesrule` (`rule_id`) ON DELETE CASCADE;

ALTER TABLE `salesrule_coupon_aggregated`
  ADD CONSTRAINT `SALESRULE_COUPON_AGGREGATED_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `salesrule_coupon_aggregated_order`
  ADD CONSTRAINT `SALESRULE_COUPON_AGGREGATED_ORDER_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `salesrule_coupon_aggregated_updated`
  ADD CONSTRAINT `SALESRULE_COUPON_AGGREGATED_UPDATED_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `salesrule_coupon_usage`
  ADD CONSTRAINT `SALESRULE_COUPON_USAGE_COUPON_ID_SALESRULE_COUPON_COUPON_ID` FOREIGN KEY (`coupon_id`) REFERENCES `salesrule_coupon` (`coupon_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALESRULE_COUPON_USAGE_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `salesrule_customer`
  ADD CONSTRAINT `SALESRULE_CUSTOMER_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALESRULE_CUSTOMER_RULE_ID_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `salesrule` (`rule_id`) ON DELETE CASCADE;

ALTER TABLE `salesrule_customer_group`
  ADD CONSTRAINT `SALESRULE_CSTR_GROUP_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALESRULE_CUSTOMER_GROUP_RULE_ID_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `salesrule` (`rule_id`) ON DELETE CASCADE;

ALTER TABLE `salesrule_label`
  ADD CONSTRAINT `SALESRULE_LABEL_RULE_ID_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `salesrule` (`rule_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALESRULE_LABEL_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `salesrule_product_attribute`
  ADD CONSTRAINT `SALESRULE_PRD_ATTR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALESRULE_PRD_ATTR_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALESRULE_PRODUCT_ATTRIBUTE_RULE_ID_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `salesrule` (`rule_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALESRULE_PRODUCT_ATTRIBUTE_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

ALTER TABLE `salesrule_website`
  ADD CONSTRAINT `SALESRULE_WEBSITE_RULE_ID_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `salesrule` (`rule_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALESRULE_WEBSITE_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

ALTER TABLE `search_query`
  ADD CONSTRAINT `SEARCH_QUERY_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `search_synonyms`
  ADD CONSTRAINT `SEARCH_SYNONYMS_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SEARCH_SYNONYMS_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

ALTER TABLE `sitemap`
  ADD CONSTRAINT `SITEMAP_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `store`
  ADD CONSTRAINT `STORE_GROUP_ID_STORE_GROUP_GROUP_ID` FOREIGN KEY (`group_id`) REFERENCES `store_group` (`group_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `STORE_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

ALTER TABLE `store_group`
  ADD CONSTRAINT `STORE_GROUP_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

ALTER TABLE `tax_calculation`
  ADD CONSTRAINT `TAX_CALCULATION_CUSTOMER_TAX_CLASS_ID_TAX_CLASS_CLASS_ID` FOREIGN KEY (`customer_tax_class_id`) REFERENCES `tax_class` (`class_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `TAX_CALCULATION_PRODUCT_TAX_CLASS_ID_TAX_CLASS_CLASS_ID` FOREIGN KEY (`product_tax_class_id`) REFERENCES `tax_class` (`class_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `TAX_CALC_TAX_CALC_RATE_ID_TAX_CALC_RATE_TAX_CALC_RATE_ID` FOREIGN KEY (`tax_calculation_rate_id`) REFERENCES `tax_calculation_rate` (`tax_calculation_rate_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `TAX_CALC_TAX_CALC_RULE_ID_TAX_CALC_RULE_TAX_CALC_RULE_ID` FOREIGN KEY (`tax_calculation_rule_id`) REFERENCES `tax_calculation_rule` (`tax_calculation_rule_id`) ON DELETE CASCADE;

ALTER TABLE `tax_calculation_rate_title`
  ADD CONSTRAINT `FK_37FB965F786AD5897BB3AE90470C42AB` FOREIGN KEY (`tax_calculation_rate_id`) REFERENCES `tax_calculation_rate` (`tax_calculation_rate_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `TAX_CALCULATION_RATE_TITLE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `tax_order_aggregated_created`
  ADD CONSTRAINT `TAX_ORDER_AGGREGATED_CREATED_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `tax_order_aggregated_updated`
  ADD CONSTRAINT `TAX_ORDER_AGGREGATED_UPDATED_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `theme_file`
  ADD CONSTRAINT `THEME_FILE_THEME_ID_THEME_THEME_ID` FOREIGN KEY (`theme_id`) REFERENCES `theme` (`theme_id`) ON DELETE CASCADE;

ALTER TABLE `translation`
  ADD CONSTRAINT `TRANSLATION_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `ui_bookmark`
  ADD CONSTRAINT `UI_BOOKMARK_USER_ID_ADMIN_USER_USER_ID` FOREIGN KEY (`user_id`) REFERENCES `admin_user` (`user_id`) ON DELETE CASCADE;

ALTER TABLE `variable_value`
  ADD CONSTRAINT `VARIABLE_VALUE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `VARIABLE_VALUE_VARIABLE_ID_VARIABLE_VARIABLE_ID` FOREIGN KEY (`variable_id`) REFERENCES `variable` (`variable_id`) ON DELETE CASCADE;

ALTER TABLE `vault_payment_token`
  ADD CONSTRAINT `VAULT_PAYMENT_TOKEN_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `vault_payment_token_order_payment_link`
  ADD CONSTRAINT `FK_4ED894655446D385894580BECA993862` FOREIGN KEY (`payment_token_id`) REFERENCES `vault_payment_token` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_CF37B9D854256534BE23C818F6291CA2` FOREIGN KEY (`order_payment_id`) REFERENCES `sales_order_payment` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `weee_tax`
  ADD CONSTRAINT `WEEE_TAX_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `WEEE_TAX_COUNTRY_DIRECTORY_COUNTRY_COUNTRY_ID` FOREIGN KEY (`country`) REFERENCES `directory_country` (`country_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `WEEE_TAX_ENTITY_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `WEEE_TAX_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

ALTER TABLE `widget_instance`
  ADD CONSTRAINT `WIDGET_INSTANCE_THEME_ID_THEME_THEME_ID` FOREIGN KEY (`theme_id`) REFERENCES `theme` (`theme_id`) ON DELETE CASCADE;

ALTER TABLE `widget_instance_page`
  ADD CONSTRAINT `WIDGET_INSTANCE_PAGE_INSTANCE_ID_WIDGET_INSTANCE_INSTANCE_ID` FOREIGN KEY (`instance_id`) REFERENCES `widget_instance` (`instance_id`) ON DELETE CASCADE;

ALTER TABLE `widget_instance_page_layout`
  ADD CONSTRAINT `WIDGET_INSTANCE_PAGE_LAYOUT_PAGE_ID_WIDGET_INSTANCE_PAGE_PAGE_ID` FOREIGN KEY (`page_id`) REFERENCES `widget_instance_page` (`page_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `WIDGET_INSTANCE_PAGE_LYT_LYT_UPDATE_ID_LYT_UPDATE_LYT_UPDATE_ID` FOREIGN KEY (`layout_update_id`) REFERENCES `layout_update` (`layout_update_id`) ON DELETE CASCADE;

ALTER TABLE `wishlist`
  ADD CONSTRAINT `WISHLIST_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `wishlist_item`
  ADD CONSTRAINT `WISHLIST_ITEM_PRODUCT_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `WISHLIST_ITEM_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `WISHLIST_ITEM_WISHLIST_ID_WISHLIST_WISHLIST_ID` FOREIGN KEY (`wishlist_id`) REFERENCES `wishlist` (`wishlist_id`) ON DELETE CASCADE;

ALTER TABLE `wishlist_item_option`
  ADD CONSTRAINT `FK_A014B30B04B72DD0EAB3EECD779728D6` FOREIGN KEY (`wishlist_item_id`) REFERENCES `wishlist_item` (`wishlist_item_id`) ON DELETE CASCADE;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */; 
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-23 05:20:32 GMT