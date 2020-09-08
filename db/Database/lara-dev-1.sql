-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 12, 2020 at 05:25 AM
-- Server version: 5.7.26
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lara-dev-1`
--

-- --------------------------------------------------------

--
-- Table structure for table `action_recorder`
--

DROP TABLE IF EXISTS `action_recorder`;
CREATE TABLE IF NOT EXISTS `action_recorder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `identifier` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `success` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_action_recorder_module` (`module`),
  KEY `idx_action_recorder_user_id` (`user_id`),
  KEY `idx_action_recorder_identifier` (`identifier`),
  KEY `idx_action_recorder_date_added` (`date_added`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `address_book`
--

DROP TABLE IF EXISTS `address_book`;
CREATE TABLE IF NOT EXISTS `address_book` (
  `address_book_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `entry_gender` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customers_id` int(11) DEFAULT NULL,
  `entry_company` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entry_firstname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `entry_lastname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `entry_street_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `entry_suburb` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entry_postcode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `entry_city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `entry_state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entry_country_id` int(11) NOT NULL DEFAULT '0',
  `entry_zone_id` int(11) NOT NULL DEFAULT '0',
  `entry_latitude` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entry_longitude` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`address_book_id`),
  KEY `idx_address_book_customers_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `address_format`
--

DROP TABLE IF EXISTS `address_format`;
CREATE TABLE IF NOT EXISTS `address_format` (
  `address_format_id` int(11) NOT NULL AUTO_INCREMENT,
  `address_format` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_summary` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`address_format_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `alert_settings`
--

DROP TABLE IF EXISTS `alert_settings`;
CREATE TABLE IF NOT EXISTS `alert_settings` (
  `alert_id` int(11) NOT NULL AUTO_INCREMENT,
  `create_customer_email` tinyint(1) NOT NULL DEFAULT '0',
  `create_customer_notification` tinyint(1) NOT NULL DEFAULT '0',
  `order_status_email` tinyint(1) NOT NULL DEFAULT '0',
  `order_status_notification` tinyint(1) NOT NULL DEFAULT '0',
  `new_product_email` tinyint(1) NOT NULL DEFAULT '0',
  `new_product_notification` tinyint(1) NOT NULL DEFAULT '0',
  `forgot_email` tinyint(1) NOT NULL DEFAULT '0',
  `forgot_notification` tinyint(1) NOT NULL DEFAULT '0',
  `news_email` tinyint(1) NOT NULL DEFAULT '0',
  `news_notification` tinyint(1) NOT NULL DEFAULT '0',
  `contact_us_email` tinyint(1) NOT NULL DEFAULT '0',
  `contact_us_notification` tinyint(1) NOT NULL DEFAULT '0',
  `order_email` tinyint(1) NOT NULL DEFAULT '0',
  `order_notification` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`alert_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `alert_settings`
--

INSERT INTO `alert_settings` (`alert_id`, `create_customer_email`, `create_customer_notification`, `order_status_email`, `order_status_notification`, `new_product_email`, `new_product_notification`, `forgot_email`, `forgot_notification`, `news_email`, `news_notification`, `contact_us_email`, `contact_us_notification`, `order_email`, `order_notification`) VALUES
(1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `api_calls_list`
--

DROP TABLE IF EXISTS `api_calls_list`;
CREATE TABLE IF NOT EXISTS `api_calls_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nonce` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `device_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `api_calls_list`
--

INSERT INTO `api_calls_list` (`id`, `nonce`, `url`, `device_id`, `created_at`) VALUES
(1, '15725171683009998', 'getallproducts', 'aasdasds,', '2019-11-12 06:41:46'),
(2, '157251716830099983', 'addtoorder', 'aasdaslgds,', '2019-11-18 07:10:33');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

DROP TABLE IF EXISTS `banners`;
CREATE TABLE IF NOT EXISTS `banners` (
  `banners_id` int(11) NOT NULL AUTO_INCREMENT,
  `banners_title` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banners_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banners_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `banners_group` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banners_html_text` text COLLATE utf8mb4_unicode_ci,
  `expires_impressions` int(11) DEFAULT '0',
  `expires_date` datetime DEFAULT NULL,
  `date_scheduled` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL,
  `date_status_change` datetime DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `type` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banners_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`banners_id`),
  KEY `idx_banners_group` (`banners_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banners_history`
--

DROP TABLE IF EXISTS `banners_history`;
CREATE TABLE IF NOT EXISTS `banners_history` (
  `banners_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `banners_id` int(11) NOT NULL,
  `banners_shown` int(11) NOT NULL DEFAULT '0',
  `banners_clicked` int(11) NOT NULL DEFAULT '0',
  `banners_history_date` datetime NOT NULL,
  PRIMARY KEY (`banners_history_id`),
  KEY `idx_banners_history_banners_id` (`banners_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `block_ips`
--

DROP TABLE IF EXISTS `block_ips`;
CREATE TABLE IF NOT EXISTS `block_ips` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `device_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `categories_id` int(11) NOT NULL AUTO_INCREMENT,
  `categories_image` text COLLATE utf8mb4_unicode_ci,
  `categories_icon` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `sort_order` int(11) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `categories_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`categories_id`),
  KEY `idx_categories_parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`categories_id`, `categories_image`, `categories_icon`, `parent_id`, `sort_order`, `date_added`, `last_modified`, `categories_slug`, `categories_status`, `created_at`, `updated_at`) VALUES
(3, '85', '85', 0, NULL, NULL, NULL, 'chonsa', 1, '2020-05-01 00:59:30', NULL),
(4, '83', '91', 0, NULL, NULL, NULL, 'langra', 1, '2020-05-01 00:59:50', NULL),
(5, '83', '83', 0, NULL, NULL, NULL, 'dasehri', 1, '2020-05-01 01:00:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories_description`
--

DROP TABLE IF EXISTS `categories_description`;
CREATE TABLE IF NOT EXISTS `categories_description` (
  `categories_description_id` int(11) NOT NULL AUTO_INCREMENT,
  `categories_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL DEFAULT '1',
  `categories_name` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`categories_description_id`),
  KEY `idx_categories_name` (`categories_name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories_description`
--

INSERT INTO `categories_description` (`categories_description_id`, `categories_id`, `language_id`, `categories_name`) VALUES
(5, 3, 1, 'Chonsa'),
(6, 4, 1, 'Langra'),
(7, 5, 1, 'Dasehri');

-- --------------------------------------------------------

--
-- Table structure for table `categories_role`
--

DROP TABLE IF EXISTS `categories_role`;
CREATE TABLE IF NOT EXISTS `categories_role` (
  `categories_role_id` int(11) NOT NULL AUTO_INCREMENT,
  `categories_ids` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_id` int(11) NOT NULL,
  PRIMARY KEY (`categories_role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `compare`
--

DROP TABLE IF EXISTS `compare`;
CREATE TABLE IF NOT EXISTS `compare` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_ids` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `compare`
--

INSERT INTO `compare` (`id`, `product_ids`, `customer_id`) VALUES
(1, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `constant_banners`
--

DROP TABLE IF EXISTS `constant_banners`;
CREATE TABLE IF NOT EXISTS `constant_banners` (
  `banners_id` int(11) NOT NULL AUTO_INCREMENT,
  `banners_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banners_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `banners_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_added` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `languages_id` int(11) NOT NULL,
  `type` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`banners_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `constant_banners`
--

INSERT INTO `constant_banners` (`banners_id`, `banners_title`, `banners_url`, `banners_image`, `date_added`, `status`, `languages_id`, `type`) VALUES
(1, 'style0', '', '114', '2019-09-08 18:43:14', 1, 1, '1'),
(2, 'style0', '', '114', '2019-09-08 18:43:25', 1, 1, '2'),
(3, '3', '', '83', '2020-01-01 06:05:52', 1, 1, '3'),
(4, 'banner1', '', '83', '2019-09-08 18:43:42', 1, 1, '4'),
(5, 'banner1', '', '83', '2019-09-08 18:44:15', 1, 1, '5'),
(6, 'banner2_3_4', '', '84', '2019-09-10 08:50:55', 1, 1, '6'),
(7, 'banner2_3_4', '', '85', '2019-09-10 08:54:18', 1, 1, '7'),
(8, 'banner2_3_4', '', '86', '2019-09-10 08:54:28', 1, 1, '8'),
(9, 'banner2_3_4', '', '86', '2019-09-10 08:54:38', 1, 1, '9'),
(10, 'banner5_6', '', '92', '2019-09-10 09:31:13', 1, 1, '10'),
(11, 'banner5_6', '', '92', '2019-09-10 09:31:24', 1, 1, '11'),
(12, 'banner5_6', '', '92', '2019-09-10 09:31:35', 1, 1, '12'),
(13, 'banner5_6', '', '92', '2019-09-10 09:32:18', 1, 1, '13'),
(14, 'banner5_6', '', '91', '2019-09-10 09:32:28', 1, 1, '14'),
(15, 'banner7_8', '', '95', '2019-09-10 09:52:02', 1, 1, '15'),
(16, 'banner7_8', '', '96', '2019-09-10 09:52:29', 1, 1, '16'),
(17, 'banner7_8', '', '96', '2019-09-10 09:47:56', 1, 1, '17'),
(18, 'banner7_8', '', '94', '2019-09-10 09:48:05', 1, 1, '18'),
(19, 'banner9', '', '97', '2019-09-10 10:19:03', 1, 1, '19'),
(20, 'banner9', '', '97', '2019-09-10 10:19:13', 1, 1, '20'),
(21, 'banner10_11_12', '', '98', '2019-09-10 10:26:12', 1, 1, '21'),
(22, 'banner10_11_12', '', '96', '2019-09-10 10:26:30', 1, 1, '22'),
(23, 'banner10_11_12', '', '96', '2019-09-10 10:26:41', 1, 1, '23'),
(24, 'banner10_11_12', '', '99', '2019-09-10 10:26:54', 1, 1, '24'),
(25, 'banner13_14_15', '', '100', '2019-09-10 11:01:09', 1, 1, '25'),
(26, 'banner13_14_15', '', '101', '2019-09-10 11:01:27', 1, 1, '26'),
(27, 'banner13_14_15', '', '101', '2019-09-10 11:02:12', 1, 1, '27'),
(28, 'banner13_14_15', '', '101', '2019-09-10 11:02:23', 1, 1, '28'),
(29, 'banner13_14_15', '', '101', '2019-09-10 11:02:36', 1, 1, '29'),
(30, 'banner16_17', '', '104', '2019-09-10 11:19:45', 1, 1, '30'),
(31, 'banner16_17', '', '104', '2019-09-10 11:19:58', 1, 1, '31'),
(32, 'banner16_17', '', '105', '2019-09-10 11:21:00', 1, 1, '32'),
(33, 'banner18_19', '', '116', '2019-09-10 11:30:35', 1, 1, '33'),
(34, 'banner18_19', '', '116', '2019-09-10 11:30:49', 1, 1, '34'),
(35, 'banner18_19', '', '96', '2019-09-10 11:31:04', 1, 1, '35'),
(36, 'banner18_19', '', '96', '2019-09-10 11:31:20', 1, 1, '36'),
(37, 'banner18_19', '', '115', '2019-09-10 11:31:54', 1, 1, '37'),
(38, 'banner18_19', '', '115', '2019-09-10 11:32:06', 1, 1, '38'),
(39, 'ad_banner1', '', '107', '2019-09-11 06:17:45', 1, 1, '39'),
(40, 'ad_banner2', '', '106', '2019-09-11 06:17:58', 1, 1, '40');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
CREATE TABLE IF NOT EXISTS `countries` (
  `countries_id` int(11) NOT NULL AUTO_INCREMENT,
  `countries_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `countries_iso_code_2` char(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `countries_iso_code_3` char(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_format_id` int(11) NOT NULL,
  `country_code` int(11) DEFAULT NULL,
  PRIMARY KEY (`countries_id`),
  KEY `IDX_COUNTRIES_NAME` (`countries_name`)
) ENGINE=InnoDB AUTO_INCREMENT=240 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`countries_id`, `countries_name`, `countries_iso_code_2`, `countries_iso_code_3`, `address_format_id`, `country_code`) VALUES
(1, 'Afghanistan', 'AF', 'AFG', 1, 0),
(2, 'Albania', 'AL', 'ALB', 1, 0),
(3, 'Algeria', 'DZ', 'DZA', 1, 0),
(4, 'American Samoa', 'AS', 'ASM', 1, 0),
(5, 'Andorra', 'AD', 'AND', 1, 0),
(6, 'Angola', 'AO', 'AGO', 1, 0),
(7, 'Anguilla', 'AI', 'AIA', 1, 0),
(8, 'Antarctica', 'AQ', 'ATA', 1, 0),
(9, 'Antigua and Barbuda', 'AG', 'ATG', 1, 0),
(10, 'Argentina', 'AR', 'ARG', 1, 0),
(11, 'Armenia', 'AM', 'ARM', 1, 0),
(12, 'Aruba', 'AW', 'ABW', 1, 0),
(13, 'Australia', 'AU', 'AUS', 1, 0),
(14, 'Austria', 'AT', 'AUT', 5, 0),
(15, 'Azerbaijan', 'AZ', 'AZE', 1, 0),
(16, 'Bahamas', 'BS', 'BHS', 1, 0),
(17, 'Bahrain', 'BH', 'BHR', 1, 0),
(18, 'Bangladesh', 'BD', 'BGD', 1, 0),
(19, 'Barbados', 'BB', 'BRB', 1, 0),
(20, 'Belarus', 'BY', 'BLR', 1, 0),
(21, 'Belgium', 'BE', 'BEL', 1, 0),
(22, 'Belize', 'BZ', 'BLZ', 1, 0),
(23, 'Benin', 'BJ', 'BEN', 1, 0),
(24, 'Bermuda', 'BM', 'BMU', 1, 0),
(25, 'Bhutan', 'BT', 'BTN', 1, 0),
(26, 'Bolivia', 'BO', 'BOL', 1, 0),
(27, 'Bosnia and Herzegowina', 'BA', 'BIH', 1, 0),
(28, 'Botswana', 'BW', 'BWA', 1, 0),
(29, 'Bouvet Island', 'BV', 'BVT', 1, 0),
(30, 'Brazil', 'BR', 'BRA', 1, 0),
(31, 'British Indian Ocean Territory', 'IO', 'IOT', 1, 0),
(32, 'Brunei Darussalam', 'BN', 'BRN', 1, 0),
(33, 'Bulgaria', 'BG', 'BGR', 1, 0),
(34, 'Burkina Faso', 'BF', 'BFA', 1, 0),
(35, 'Burundi', 'BI', 'BDI', 1, 0),
(36, 'Cambodia', 'KH', 'KHM', 1, 0),
(37, 'Cameroon', 'CM', 'CMR', 1, 0),
(38, 'Canada', 'CA', 'CAN', 1, 0),
(39, 'Cape Verde', 'CV', 'CPV', 1, 0),
(40, 'Cayman Islands', 'KY', 'CYM', 1, 0),
(41, 'Central African Republic', 'CF', 'CAF', 1, 0),
(42, 'Chad', 'TD', 'TCD', 1, 0),
(43, 'Chile', 'CL', 'CHL', 1, 0),
(44, 'China', 'CN', 'CHN', 1, 0),
(45, 'Christmas Island', 'CX', 'CXR', 1, 0),
(46, 'Cocos (Keeling) Islands', 'CC', 'CCK', 1, 0),
(47, 'Colombia', 'CO', 'COL', 1, 0),
(48, 'Comoros', 'KM', 'COM', 1, 0),
(49, 'Congo', 'CG', 'COG', 1, 0),
(50, 'Cook Islands', 'CK', 'COK', 1, 0),
(51, 'Costa Rica', 'CR', 'CRI', 1, 0),
(52, 'Cote D\'Ivoire', 'CI', 'CIV', 1, 0),
(53, 'Croatia', 'HR', 'HRV', 1, 0),
(54, 'Cuba', 'CU', 'CUB', 1, 0),
(55, 'Cyprus', 'CY', 'CYP', 1, 0),
(56, 'Czech Republic', 'CZ', 'CZE', 1, 0),
(57, 'Denmark', 'DK', 'DNK', 1, 0),
(58, 'Djibouti', 'DJ', 'DJI', 1, 0),
(59, 'Dominica', 'DM', 'DMA', 1, 0),
(60, 'Dominican Republic', 'DO', 'DOM', 1, 0),
(61, 'East Timor', 'TP', 'TMP', 1, 0),
(62, 'Ecuador', 'EC', 'ECU', 1, 0),
(63, 'Egypt', 'EG', 'EGY', 1, 0),
(64, 'El Salvador', 'SV', 'SLV', 1, 0),
(65, 'Equatorial Guinea', 'GQ', 'GNQ', 1, 0),
(66, 'Eritrea', 'ER', 'ERI', 1, 0),
(67, 'Estonia', 'EE', 'EST', 1, 0),
(68, 'Ethiopia', 'ET', 'ETH', 1, 0),
(69, 'Falkland Islands (Malvinas)', 'FK', 'FLK', 1, 0),
(70, 'Faroe Islands', 'FO', 'FRO', 1, 0),
(71, 'Fiji', 'FJ', 'FJI', 1, 0),
(72, 'Finland', 'FI', 'FIN', 1, 0),
(73, 'France', 'FR', 'FRA', 1, 0),
(74, 'France, Metropolitan', 'FX', 'FXX', 1, 0),
(75, 'French Guiana', 'GF', 'GUF', 1, 0),
(76, 'French Polynesia', 'PF', 'PYF', 1, 0),
(77, 'French Southern Territories', 'TF', 'ATF', 1, 0),
(78, 'Gabon', 'GA', 'GAB', 1, 0),
(79, 'Gambia', 'GM', 'GMB', 1, 0),
(80, 'Georgia', 'GE', 'GEO', 1, 0),
(81, 'Germany', 'DE', 'DEU', 5, 0),
(82, 'Ghana', 'GH', 'GHA', 1, 0),
(83, 'Gibraltar', 'GI', 'GIB', 1, 0),
(84, 'Greece', 'GR', 'GRC', 1, 0),
(85, 'Greenland', 'GL', 'GRL', 1, 0),
(86, 'Grenada', 'GD', 'GRD', 1, 0),
(87, 'Guadeloupe', 'GP', 'GLP', 1, 0),
(88, 'Guam', 'GU', 'GUM', 1, 0),
(89, 'Guatemala', 'GT', 'GTM', 1, 0),
(90, 'Guinea', 'GN', 'GIN', 1, 0),
(91, 'Guinea-bissau', 'GW', 'GNB', 1, 0),
(92, 'Guyana', 'GY', 'GUY', 1, 0),
(93, 'Haiti', 'HT', 'HTI', 1, 0),
(94, 'Heard and Mc Donald Islands', 'HM', 'HMD', 1, 0),
(95, 'Honduras', 'HN', 'HND', 1, 0),
(96, 'Hong Kong', 'HK', 'HKG', 1, 0),
(97, 'Hungary', 'HU', 'HUN', 1, 0),
(98, 'Iceland', 'IS', 'ISL', 1, 0),
(99, 'India', 'IN', 'IND', 1, 0),
(100, 'Indonesia', 'ID', 'IDN', 1, 0),
(101, 'Iran (Islamic Republic of)', 'IR', 'IRN', 1, 0),
(102, 'Iraq', 'IQ', 'IRQ', 1, 0),
(103, 'Ireland', 'IE', 'IRL', 1, 0),
(104, 'Israel', 'IL', 'ISR', 1, 0),
(105, 'Italy', 'IT', 'ITA', 1, 0),
(106, 'Jamaica', 'JM', 'JAM', 1, 0),
(107, 'Japan', 'JP', 'JPN', 1, 0),
(108, 'Jordan', 'JO', 'JOR', 1, 0),
(109, 'Kazakhstan', 'KZ', 'KAZ', 1, 0),
(110, 'Kenya', 'KE', 'KEN', 1, 0),
(111, 'Kiribati', 'KI', 'KIR', 1, 0),
(112, 'Korea, Democratic People\'s Republic of', 'KP', 'PRK', 1, 0),
(113, 'Korea, Republic of', 'KR', 'KOR', 1, 0),
(114, 'Kuwait', 'KW', 'KWT', 1, 0),
(115, 'Kyrgyzstan', 'KG', 'KGZ', 1, 0),
(116, 'Lao People\'s Democratic Republic', 'LA', 'LAO', 1, 0),
(117, 'Latvia', 'LV', 'LVA', 1, 0),
(118, 'Lebanon', 'LB', 'LBN', 1, 0),
(119, 'Lesotho', 'LS', 'LSO', 1, 0),
(120, 'Liberia', 'LR', 'LBR', 1, 0),
(121, 'Libyan Arab Jamahiriya', 'LY', 'LBY', 1, 0),
(122, 'Liechtenstein', 'LI', 'LIE', 1, 0),
(123, 'Lithuania', 'LT', 'LTU', 1, 0),
(124, 'Luxembourg', 'LU', 'LUX', 1, 0),
(125, 'Macau', 'MO', 'MAC', 1, 0),
(126, 'Macedonia, The Former Yugoslav Republic of', 'MK', 'MKD', 1, 0),
(127, 'Madagascar', 'MG', 'MDG', 1, 0),
(128, 'Malawi', 'MW', 'MWI', 1, 0),
(129, 'Malaysia', 'MY', 'MYS', 1, 0),
(130, 'Maldives', 'MV', 'MDV', 1, 0),
(131, 'Mali', 'ML', 'MLI', 1, 0),
(132, 'Malta', 'MT', 'MLT', 1, 0),
(133, 'Marshall Islands', 'MH', 'MHL', 1, 0),
(134, 'Martinique', 'MQ', 'MTQ', 1, 0),
(135, 'Mauritania', 'MR', 'MRT', 1, 0),
(136, 'Mauritius', 'MU', 'MUS', 1, 0),
(137, 'Mayotte', 'YT', 'MYT', 1, 0),
(138, 'Mexico', 'MX', 'MEX', 1, 0),
(139, 'Micronesia, Federated States of', 'FM', 'FSM', 1, 0),
(140, 'Moldova, Republic of', 'MD', 'MDA', 1, 0),
(141, 'Monaco', 'MC', 'MCO', 1, 0),
(142, 'Mongolia', 'MN', 'MNG', 1, 0),
(143, 'Montserrat', 'MS', 'MSR', 1, 0),
(144, 'Morocco', 'MA', 'MAR', 1, 0),
(145, 'Mozambique', 'MZ', 'MOZ', 1, 0),
(146, 'Myanmar', 'MM', 'MMR', 1, 0),
(147, 'Namibia', 'NA', 'NAM', 1, 0),
(148, 'Nauru', 'NR', 'NRU', 1, 0),
(149, 'Nepal', 'NP', 'NPL', 1, 0),
(150, 'Netherlands', 'NL', 'NLD', 1, 0),
(151, 'Netherlands Antilles', 'AN', 'ANT', 1, 0),
(152, 'New Caledonia', 'NC', 'NCL', 1, 0),
(153, 'New Zealand', 'NZ', 'NZL', 1, 0),
(154, 'Nicaragua', 'NI', 'NIC', 1, 0),
(155, 'Niger', 'NE', 'NER', 1, 0),
(156, 'Nigeria', 'NG', 'NGA', 1, 0),
(157, 'Niue', 'NU', 'NIU', 1, 0),
(158, 'Norfolk Island', 'NF', 'NFK', 1, 0),
(159, 'Northern Mariana Islands', 'MP', 'MNP', 1, 0),
(160, 'Norway', 'NO', 'NOR', 1, 0),
(161, 'Oman', 'OM', 'OMN', 1, 0),
(162, 'Pakistan', 'PK', 'PAK', 1, 0),
(163, 'Palau', 'PW', 'PLW', 1, 0),
(164, 'Panama', 'PA', 'PAN', 1, 0),
(165, 'Papua New Guinea', 'PG', 'PNG', 1, 0),
(166, 'Paraguay', 'PY', 'PRY', 1, 0),
(167, 'Peru', 'PE', 'PER', 1, 0),
(168, 'Philippines', 'PH', 'PHL', 1, 0),
(169, 'Pitcairn', 'PN', 'PCN', 1, 0),
(170, 'Poland', 'PL', 'POL', 1, 0),
(171, 'Portugal', 'PT', 'PRT', 1, 0),
(172, 'Puerto Rico', 'PR', 'PRI', 1, 0),
(173, 'Qatar', 'QA', 'QAT', 1, 0),
(174, 'Reunion', 'RE', 'REU', 1, 0),
(175, 'Romania', 'RO', 'ROM', 1, 0),
(176, 'Russian Federation', 'RU', 'RUS', 1, 0),
(177, 'Rwanda', 'RW', 'RWA', 1, 0),
(178, 'Saint Kitts and Nevis', 'KN', 'KNA', 1, 0),
(179, 'Saint Lucia', 'LC', 'LCA', 1, 0),
(180, 'Saint Vincent and the Grenadines', 'VC', 'VCT', 1, 0),
(181, 'Samoa', 'WS', 'WSM', 1, 0),
(182, 'San Marino', 'SM', 'SMR', 1, 0),
(183, 'Sao Tome and Principe', 'ST', 'STP', 1, 0),
(184, 'Saudi Arabia', 'SA', 'SAU', 1, 0),
(185, 'Senegal', 'SN', 'SEN', 1, 0),
(186, 'Seychelles', 'SC', 'SYC', 1, 0),
(187, 'Sierra Leone', 'SL', 'SLE', 1, 0),
(188, 'Singapore', 'SG', 'SGP', 4, 0),
(189, 'Slovakia (Slovak Republic)', 'SK', 'SVK', 1, 0),
(190, 'Slovenia', 'SI', 'SVN', 1, 0),
(191, 'Solomon Islands', 'SB', 'SLB', 1, 0),
(192, 'Somalia', 'SO', 'SOM', 1, 0),
(193, 'South Africa', 'ZA', 'ZAF', 1, 0),
(194, 'South Georgia and the South Sandwich Islands', 'GS', 'SGS', 1, 0),
(195, 'Spain', 'ES', 'ESP', 3, 0),
(196, 'Sri Lanka', 'LK', 'LKA', 1, 0),
(197, 'St. Helena', 'SH', 'SHN', 1, 0),
(198, 'St. Pierre and Miquelon', 'PM', 'SPM', 1, 0),
(199, 'Sudan', 'SD', 'SDN', 1, 0),
(200, 'Suriname', 'SR', 'SUR', 1, 0),
(201, 'Svalbard and Jan Mayen Islands', 'SJ', 'SJM', 1, 0),
(202, 'Swaziland', 'SZ', 'SWZ', 1, 0),
(203, 'Sweden', 'SE', 'SWE', 1, 0),
(204, 'Switzerland', 'CH', 'CHE', 1, 0),
(205, 'Syrian Arab Republic', 'SY', 'SYR', 1, 0),
(206, 'Taiwan', 'TW', 'TWN', 1, 0),
(207, 'Tajikistan', 'TJ', 'TJK', 1, 0),
(208, 'Tanzania, United Republic of', 'TZ', 'TZA', 1, 0),
(209, 'Thailand', 'TH', 'THA', 1, 0),
(210, 'Togo', 'TG', 'TGO', 1, 0),
(211, 'Tokelau', 'TK', 'TKL', 1, 0),
(212, 'Tonga', 'TO', 'TON', 1, 0),
(213, 'Trinidad and Tobago', 'TT', 'TTO', 1, 0),
(214, 'Tunisia', 'TN', 'TUN', 1, 0),
(215, 'Turkey', 'TR', 'TUR', 1, 0),
(216, 'Turkmenistan', 'TM', 'TKM', 1, 0),
(217, 'Turks and Caicos Islands', 'TC', 'TCA', 1, 0),
(218, 'Tuvalu', 'TV', 'TUV', 1, 0),
(219, 'Uganda', 'UG', 'UGA', 1, 0),
(220, 'Ukraine', 'UA', 'UKR', 1, 0),
(221, 'United Arab Emirates', 'AE', 'ARE', 1, 0),
(222, 'United Kingdom', 'GB', 'GBR', 1, 0),
(223, 'United States', 'US', 'USA', 2, 0),
(224, 'United States Minor Outlying Islands', 'UM', 'UMI', 1, 0),
(225, 'Uruguay', 'UY', 'URY', 1, 0),
(226, 'Uzbekistan', 'UZ', 'UZB', 1, 0),
(227, 'Vanuatu', 'VU', 'VUT', 1, 0),
(228, 'Vatican City State (Holy See)', 'VA', 'VAT', 1, 0),
(229, 'Venezuela', 'VE', 'VEN', 1, 0),
(230, 'Viet Nam', 'VN', 'VNM', 1, 0),
(231, 'Virgin Islands (British)', 'VG', 'VGB', 1, 0),
(232, 'Virgin Islands (U.S.)', 'VI', 'VIR', 1, 0),
(233, 'Wallis and Futuna Islands', 'WF', 'WLF', 1, 0),
(234, 'Western Sahara', 'EH', 'ESH', 1, 0),
(235, 'Yemen', 'YE', 'YEM', 1, 0),
(236, 'Yugoslavia', 'YU', 'YUG', 1, 0),
(237, 'Zaire', 'ZR', 'ZAR', 1, 0),
(238, 'Zambia', 'ZM', 'ZMB', 1, 0),
(239, 'Zimbabwe', 'ZW', 'ZWE', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

DROP TABLE IF EXISTS `coupons`;
CREATE TABLE IF NOT EXISTS `coupons` (
  `coupans_id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `discount_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Options: fixed_cart, percent, fixed_product and percent_product. Default: fixed_cart.',
  `amount` int(11) NOT NULL,
  `expiry_date` datetime NOT NULL,
  `usage_count` int(11) NOT NULL,
  `individual_use` tinyint(1) NOT NULL DEFAULT '0',
  `product_ids` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exclude_product_ids` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `usage_limit` int(11) DEFAULT NULL,
  `usage_limit_per_user` int(11) DEFAULT NULL,
  `limit_usage_to_x_items` int(11) NOT NULL,
  `free_shipping` tinyint(1) NOT NULL DEFAULT '0',
  `product_categories` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excluded_product_categories` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exclude_sale_items` tinyint(1) NOT NULL DEFAULT '0',
  `minimum_amount` decimal(10,2) NOT NULL,
  `maximum_amount` decimal(10,2) NOT NULL,
  `email_restrictions` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `used_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`coupans_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

DROP TABLE IF EXISTS `currencies`;
CREATE TABLE IF NOT EXISTS `currencies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` char(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol_left` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `symbol_right` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `decimal_point` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thousands_point` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `decimal_places` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `value` double(13,8) DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `is_current` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_currencies_code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `title`, `code`, `symbol_left`, `symbol_right`, `decimal_point`, `thousands_point`, `decimal_places`, `created_at`, `updated_at`, `value`, `is_default`, `status`, `is_current`) VALUES
(1, 'U.S. Dollar', 'USD', '$', NULL, NULL, NULL, '2', '2019-12-30 00:48:19', '2019-12-30 00:48:19', 1.00000000, 1, 1, 1),
(2, 'Euro', 'AED', 'Euro', 'Euro', '', '', '1', '2019-10-29 04:14:33', '2019-10-29 04:14:33', 1.00000000, 0, 1, 1),
(3, 'PKR', 'PKR', 'Rs', NULL, NULL, NULL, '0', '2019-12-09 05:20:39', '2019-12-09 05:20:39', 156.00000000, 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `currency_record`
--

DROP TABLE IF EXISTS `currency_record`;
CREATE TABLE IF NOT EXISTS `currency_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=171 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currency_record`
--

INSERT INTO `currency_record` (`id`, `code`, `currency_name`) VALUES
(1, 'AED', 'United Arab Emirates Dirham'),
(2, 'AFN', 'Afghan Afghani'),
(3, 'ALL', 'Albanian Lek'),
(4, 'AMD', 'Armenian Dram'),
(5, 'ANG', 'Netherlands Antillean Guilder'),
(6, 'AOA', 'Angolan Kwanza'),
(7, 'ARS', 'Argentine Peso'),
(8, 'AUD', 'Australian Dollar'),
(9, 'AWG', 'Aruban Florin'),
(10, 'AZN', 'Azerbaijani Manat'),
(11, 'BAM', 'Bosnia-Herzegovina Convertible Mark'),
(12, 'BBD', 'Barbadian Dollar'),
(13, 'BDT', 'Bangladeshi Taka'),
(14, 'BGN', 'Bulgarian Lev'),
(15, 'BHD', 'Bahraini Dinar'),
(16, 'BIF', 'Burundian Franc'),
(17, 'BMD', 'Bermudan Dollar'),
(18, 'BND', 'Brunei Dollar'),
(19, 'BOB', 'Bolivian Boliviano'),
(20, 'BRL', 'Brazilian Real'),
(21, 'BSD', 'Bahamian Dollar'),
(22, 'BTC', 'Bitcoin'),
(23, 'BTN', 'Bhutanese Ngultrum'),
(24, 'BWP', 'Botswanan Pula'),
(25, 'BYN', 'Belarusian Ruble'),
(26, 'BZD', 'Belize Dollar'),
(27, 'CAD', 'Canadian Dollar'),
(28, 'CDF', 'Congolese Franc'),
(29, 'CHF', 'Swiss Franc'),
(30, 'CLF', 'Chilean Unit of Account (UF)'),
(31, 'CLP', 'Chilean Peso'),
(32, 'CNH', 'Chinese Yuan (Offshore)'),
(33, 'CNY', 'Chinese Yuan'),
(34, 'COP', 'Colombian Peso'),
(35, 'CRC', 'Costa Rican Colón'),
(36, 'CUC', 'Cuban Convertible Peso'),
(37, 'CUP', 'Cuban Peso'),
(38, 'CVE', 'Cape Verdean Escudo'),
(39, 'CZK', 'Czech Republic Koruna'),
(40, 'DJF', 'Djiboutian Franc'),
(41, 'DKK', 'Danish Krone'),
(42, 'DOP', 'Dominican Peso'),
(43, 'DZD', 'Algerian Dinar'),
(44, 'EGP', 'Egyptian Pound'),
(45, 'ERN', 'Eritrean Nakfa'),
(46, 'ETB', 'Ethiopian Birr'),
(47, 'EUR', 'Euro'),
(48, 'FJD', 'Fijian Dollar'),
(49, 'FKP', 'Falkland Islands Pound'),
(50, 'GBP', 'British Pound Sterling'),
(51, 'GEL', 'Georgian Lari'),
(52, 'GGP', 'Guernsey Pound'),
(53, 'GHS', 'Ghanaian Cedi'),
(54, 'GIP', 'Gibraltar Pound'),
(55, 'GMD', 'Gambian Dalasi'),
(56, 'GNF', 'Guinean Franc'),
(57, 'GTQ', 'Guatemalan Quetzal'),
(58, 'GYD', 'Guyanaese Dollar'),
(59, 'HKD', 'Hong Kong Dollar'),
(60, 'HNL', 'Honduran Lempira'),
(61, 'HRK', 'Croatian Kuna'),
(62, 'HTG', 'Haitian Gourde'),
(63, 'HUF', 'Hungarian Forint'),
(64, 'IDR', 'Indonesian Rupiah'),
(65, 'ILS', 'Israeli New Sheqel'),
(66, 'IMP', 'Manx pound'),
(67, 'INR', 'Indian Rupee'),
(68, 'IQD', 'Iraqi Dinar'),
(69, 'IRR', 'Iranian Rial'),
(70, 'ISK', 'Icelandic Króna'),
(71, 'JEP', 'Jersey Pound'),
(72, 'JMD', 'Jamaican Dollar'),
(73, 'JOD', 'Jordanian Dinar'),
(74, 'JPY', 'Japanese Yen'),
(75, 'KES', 'Kenyan Shilling'),
(76, 'KGS', 'Kyrgystani Som'),
(77, 'KHR', 'Cambodian Riel'),
(78, 'KMF', 'Comorian Franc'),
(79, 'KPW', 'North Korean Won'),
(80, 'KRW', 'South Korean Won'),
(81, 'KWD', 'Kuwaiti Dinar'),
(82, 'KYD', 'Cayman Islands Dollar'),
(83, 'KZT', 'Kazakhstani Tenge'),
(84, 'LAK', 'Laotian Kip'),
(85, 'LBP', 'Lebanese Pound'),
(86, 'LKR', 'Sri Lankan Rupee'),
(87, 'LRD', 'Liberian Dollar'),
(88, 'LSL', 'Lesotho Loti'),
(89, 'LYD', 'Libyan Dinar'),
(90, 'MAD', 'Moroccan Dirham'),
(91, 'MDL', 'Moldovan Leu'),
(92, 'MGA', 'Malagasy Ariary'),
(93, 'MKD', 'Macedonian Denar'),
(94, 'MMK', 'Myanma Kyat'),
(95, 'MNT', 'Mongolian Tugrik'),
(96, 'MOP', 'Macanese Pataca'),
(97, 'MRO', 'Mauritanian Ouguiya (pre-2018)'),
(98, 'MRU', 'Mauritanian Ouguiya'),
(99, 'MUR', 'Mauritian Rupee'),
(100, 'MVR', 'Maldivian Rufiyaa'),
(101, 'MWK', 'Malawian Kwacha'),
(102, 'MXN', 'Mexican Peso'),
(103, 'MYR', 'Malaysian Ringgit'),
(104, 'MZN', 'Mozambican Metical'),
(105, 'NAD', 'Namibian Dollar'),
(106, 'NGN', 'Nigerian Naira'),
(107, 'NIO', 'Nicaraguan Córdoba'),
(108, 'NOK', 'Norwegian Krone'),
(109, 'NPR', 'Nepalese Rupee'),
(110, 'NZD', 'New Zealand Dollar'),
(111, 'OMR', 'Omani Rial'),
(112, 'PAB', 'Panamanian Balboa'),
(113, 'PEN', 'Peruvian Nuevo Sol'),
(114, 'PGK', 'Papua New Guinean Kina'),
(115, 'PHP', 'Philippine Peso'),
(116, 'PKR', 'Pakistani Rupee'),
(117, 'PLN', 'Polish Zloty'),
(118, 'PYG', 'Paraguayan Guarani'),
(119, 'QAR', 'Qatari Rial'),
(120, 'RON', 'Romanian Leu'),
(121, 'RSD', 'Serbian Dinar'),
(122, 'RUB', 'Russian Ruble'),
(123, 'RWF', 'Rwandan Franc'),
(124, 'SAR', 'Saudi Riyal'),
(125, 'SBD', 'Solomon Islands Dollar'),
(126, 'SCR', 'Seychellois Rupee'),
(127, 'SDG', 'Sudanese Pound'),
(128, 'SEK', 'Swedish Krona'),
(129, 'SGD', 'Singapore Dollar'),
(130, 'SHP', 'Saint Helena Pound'),
(131, 'SLL', 'Sierra Leonean Leone'),
(132, 'SOS', 'Somali Shilling'),
(133, 'SRD', 'Surinamese Dollar'),
(134, 'SSP', 'South Sudanese Pound'),
(135, 'STD', 'São Tomé and Príncipe Dobra (pre-2018)'),
(136, 'STN', 'São Tomé and Príncipe Dobra'),
(137, 'SVC', 'Salvadoran Colón'),
(138, 'SYP', 'Syrian Pound'),
(139, 'SZL', 'Swazi Lilangeni'),
(140, 'THB', 'Thai Baht'),
(141, 'TJS', 'Tajikistani Somoni'),
(142, 'TMT', 'Turkmenistani Manat'),
(143, 'TND', 'Tunisian Dinar'),
(144, 'TOP', 'Tongan Pa\'anga'),
(145, 'TRY', 'Turkish Lira'),
(146, 'TTD', 'Trinidad and Tobago Dollar'),
(147, 'TWD', 'New Taiwan Dollar'),
(148, 'TZS', 'Tanzanian Shilling'),
(149, 'UAH', 'Ukrainian Hryvnia'),
(150, 'UGX', 'Ugandan Shilling'),
(151, 'USD', 'United States Dollar'),
(152, 'UYU', 'Uruguayan Peso'),
(153, 'UZS', 'Uzbekistan Som'),
(154, 'VEF', 'Venezuelan Bolívar Fuerte'),
(155, 'VND', 'Vietnamese Dong'),
(156, 'VUV', 'Vanuatu Vatu'),
(157, 'WST', 'Samoan Tala'),
(158, 'XAF', 'CFA Franc BEAC'),
(159, 'XAG', 'Silver Ounce'),
(160, 'XAU', 'Gold Ounce'),
(161, 'XCD', 'East Caribbean Dollar'),
(162, 'XDR', 'Special Drawing Rights'),
(163, 'XOF', 'CFA Franc BCEAO'),
(164, 'XPD', 'Palladium Ounce'),
(165, 'XPF', 'CFP Franc'),
(166, 'XPT', 'Platinum Ounce'),
(167, 'YER', 'Yemeni Rial'),
(168, 'ZAR', 'South African Rand'),
(169, 'ZMW', 'Zambian Kwacha'),
(170, 'ZWL', 'Zimbabwean Dollar');

-- --------------------------------------------------------

--
-- Table structure for table `current_theme`
--

DROP TABLE IF EXISTS `current_theme`;
CREATE TABLE IF NOT EXISTS `current_theme` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `header` int(11) NOT NULL,
  `carousel` int(11) NOT NULL,
  `banner` int(11) NOT NULL,
  `footer` int(11) NOT NULL,
  `product_section_order` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cart` int(11) NOT NULL,
  `news` int(11) NOT NULL,
  `detail` int(11) NOT NULL,
  `shop` int(11) NOT NULL,
  `contact` int(11) NOT NULL,
  `session_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customers_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `current_theme`
--

INSERT INTO `current_theme` (`id`, `header`, `carousel`, `banner`, `footer`, `product_section_order`, `cart`, `news`, `detail`, `shop`, `contact`, `session_id`, `customers_id`) VALUES
(1, 1, 1, 1, 1, '[{\"id\":10,\"name\":\"Second Ad Section\",\"order\":1,\"file_name\":\"sec_ad_banner\",\"status\":1,\"image\":\"images\\/prototypes\\/sec_ad_section.jpg\",\"disabled_image\":\"images\\/prototypes\\/sec_ad_section-cross.jpg\",\"alt\":\"Second Ad Section\"},{\"id\":5,\"name\":\"Categories\",\"order\":2,\"file_name\":\"categories\",\"status\":1,\"image\":\"images\\/prototypes\\/categories.jpg\",\"disabled_image\":\"images\\/prototypes\\/categories-cross.jpg\",\"alt\":\"Categories\"},{\"id\":1,\"name\":\"Banner Section\",\"order\":3,\"file_name\":\"banner_section\",\"status\":1,\"image\":\"images\\/prototypes\\/banner_section.jpg\",\"alt\":\"Banner Section\"},{\"id\":9,\"name\":\"Top Selling\",\"order\":4,\"file_name\":\"top\",\"status\":1,\"image\":\"images\\/prototypes\\/top.jpg\",\"disabled_image\":\"images\\/prototypes\\/top-cross.jpg\",\"alt\":\"Top Selling\"},{\"id\":8,\"name\":\"Newest Product Section\",\"order\":5,\"file_name\":\"newest_product\",\"status\":1,\"image\":\"images\\/prototypes\\/newest_product.jpg\",\"disabled_image\":\"images\\/prototypes\\/newest_product-cross.jpg\",\"alt\":\"Newest Product Section\"},{\"id\":11,\"name\":\"Tab Products View\",\"order\":6,\"file_name\":\"tab\",\"status\":1,\"image\":\"images\\/prototypes\\/tab.jpg\",\"disabled_image\":\"images\\/prototypes\\/tab-cross.jpg\",\"alt\":\"Tab Products View\"},{\"id\":3,\"name\":\"Special Products Section\",\"order\":7,\"file_name\":\"special\",\"status\":1,\"image\":\"images\\/prototypes\\/special_product.jpg\",\"disabled_image\":\"images\\/prototypes\\/special_product-cross.jpg\",\"alt\":\"Special Products Section\"},{\"id\":2,\"name\":\"Flash Sale Section\",\"order\":8,\"file_name\":\"flash_sale_section\",\"status\":1,\"image\":\"images\\/prototypes\\/flash_sale_section.jpg\",\"disabled_image\":\"images\\/prototypes\\/flash_sale_section-cross.jpg\",\"alt\":\"Flash Sale Section\"},{\"id\":4,\"name\":\"Ad Section\",\"order\":9,\"file_name\":\"ad_banner_section\",\"status\":1,\"image\":\"images\\/prototypes\\/ad_banner_section.jpg\",\"disabled_image\":\"images\\/prototypes\\/ad_banner_section-cross.jpg\",\"alt\":\"Ad Section\"},{\"id\":6,\"name\":\"Blog Section\",\"order\":10,\"file_name\":\"blog_section\",\"status\":1,\"image\":\"images\\/prototypes\\/blog_section.jpg\",\"disabled_image\":\"images\\/prototypes\\/blog_section-cross.jpg\",\"alt\":\"Blog Section\"},{\"id\":7,\"name\":\"Info Boxes\",\"order\":11,\"file_name\":\"info_boxes\",\"status\":1,\"image\":\"images\\/prototypes\\/info_boxes.jpg\",\"disabled_image\":\"images\\/prototypes\\/info_boxes-cross.jpg\",\"alt\":\"Info Boxes\"}]', 1, 1, 1, 1, 1, '', '-1'),
(7, 1, 1, 1, 10, '[{\"id\":10,\"name\":\"Second Ad Section\",\"order\":1,\"file_name\":\"sec_ad_banner\",\"status\":1,\"image\":\"images\\/prototypes\\/sec_ad_section.jpg\",\"disabled_image\":\"images\\/prototypes\\/sec_ad_section-cross.jpg\",\"alt\":\"Second Ad Section\"},{\"id\":5,\"name\":\"Categories\",\"order\":2,\"file_name\":\"categories\",\"status\":1,\"image\":\"images\\/prototypes\\/categories.jpg\",\"disabled_image\":\"images\\/prototypes\\/categories-cross.jpg\",\"alt\":\"Categories\"},{\"id\":1,\"name\":\"Banner Section\",\"order\":3,\"file_name\":\"banner_section\",\"status\":1,\"image\":\"images\\/prototypes\\/banner_section.jpg\",\"alt\":\"Banner Section\"},{\"id\":9,\"name\":\"Top Selling\",\"order\":4,\"file_name\":\"top\",\"status\":1,\"image\":\"images\\/prototypes\\/top.jpg\",\"disabled_image\":\"images\\/prototypes\\/top-cross.jpg\",\"alt\":\"Top Selling\"},{\"id\":8,\"name\":\"Newest Product Section\",\"order\":5,\"file_name\":\"newest_product\",\"status\":1,\"image\":\"images\\/prototypes\\/newest_product.jpg\",\"disabled_image\":\"images\\/prototypes\\/newest_product-cross.jpg\",\"alt\":\"Newest Product Section\"},{\"id\":11,\"name\":\"Tab Products View\",\"order\":6,\"file_name\":\"tab\",\"status\":1,\"image\":\"images\\/prototypes\\/tab.jpg\",\"disabled_image\":\"images\\/prototypes\\/tab-cross.jpg\",\"alt\":\"Tab Products View\"},{\"id\":3,\"name\":\"Special Products Section\",\"order\":7,\"file_name\":\"special\",\"status\":1,\"image\":\"images\\/prototypes\\/special_product.jpg\",\"disabled_image\":\"images\\/prototypes\\/special_product-cross.jpg\",\"alt\":\"Special Products Section\"},{\"id\":2,\"name\":\"Flash Sale Section\",\"order\":8,\"file_name\":\"flash_sale_section\",\"status\":1,\"image\":\"images\\/prototypes\\/flash_sale_section.jpg\",\"disabled_image\":\"images\\/prototypes\\/flash_sale_section-cross.jpg\",\"alt\":\"Flash Sale Section\"},{\"id\":4,\"name\":\"Ad Section\",\"order\":9,\"file_name\":\"ad_banner_section\",\"status\":1,\"image\":\"images\\/prototypes\\/ad_banner_section.jpg\",\"disabled_image\":\"images\\/prototypes\\/ad_banner_section-cross.jpg\",\"alt\":\"Ad Section\"},{\"id\":6,\"name\":\"Blog Section\",\"order\":10,\"file_name\":\"blog_section\",\"status\":1,\"image\":\"images\\/prototypes\\/blog_section.jpg\",\"disabled_image\":\"images\\/prototypes\\/blog_section-cross.jpg\",\"alt\":\"Blog Section\"},{\"id\":7,\"name\":\"Info Boxes\",\"order\":11,\"file_name\":\"info_boxes\",\"status\":1,\"image\":\"images\\/prototypes\\/info_boxes.jpg\",\"disabled_image\":\"images\\/prototypes\\/info_boxes-cross.jpg\",\"alt\":\"Info Boxes\"}]', 2, 1, 1, 5, 1, '1PVV6ZzFcf7uN0mpq9iTxfdFejyqT3Cpx6ngX1ju', '0'),
(8, 1, 1, 16, 1, '[{\"id\":10,\"name\":\"Second Ad Section\",\"order\":1,\"file_name\":\"sec_ad_banner\",\"status\":1,\"image\":\"images\\/prototypes\\/sec_ad_section.jpg\",\"disabled_image\":\"images\\/prototypes\\/sec_ad_section-cross.jpg\",\"alt\":\"Second Ad Section\"},{\"id\":5,\"name\":\"Categories\",\"order\":2,\"file_name\":\"categories\",\"status\":1,\"image\":\"images\\/prototypes\\/categories.jpg\",\"disabled_image\":\"images\\/prototypes\\/categories-cross.jpg\",\"alt\":\"Categories\"},{\"id\":1,\"name\":\"Banner Section\",\"order\":3,\"file_name\":\"banner_section\",\"status\":1,\"image\":\"images\\/prototypes\\/banner_section.jpg\",\"alt\":\"Banner Section\"},{\"id\":9,\"name\":\"Top Selling\",\"order\":4,\"file_name\":\"top\",\"status\":1,\"image\":\"images\\/prototypes\\/top.jpg\",\"disabled_image\":\"images\\/prototypes\\/top-cross.jpg\",\"alt\":\"Top Selling\"},{\"id\":8,\"name\":\"Newest Product Section\",\"order\":5,\"file_name\":\"newest_product\",\"status\":1,\"image\":\"images\\/prototypes\\/newest_product.jpg\",\"disabled_image\":\"images\\/prototypes\\/newest_product-cross.jpg\",\"alt\":\"Newest Product Section\"},{\"id\":11,\"name\":\"Tab Products View\",\"order\":6,\"file_name\":\"tab\",\"status\":1,\"image\":\"images\\/prototypes\\/tab.jpg\",\"disabled_image\":\"images\\/prototypes\\/tab-cross.jpg\",\"alt\":\"Tab Products View\"},{\"id\":3,\"name\":\"Special Products Section\",\"order\":7,\"file_name\":\"special\",\"status\":1,\"image\":\"images\\/prototypes\\/special_product.jpg\",\"disabled_image\":\"images\\/prototypes\\/special_product-cross.jpg\",\"alt\":\"Special Products Section\"},{\"id\":2,\"name\":\"Flash Sale Section\",\"order\":8,\"file_name\":\"flash_sale_section\",\"status\":1,\"image\":\"images\\/prototypes\\/flash_sale_section.jpg\",\"disabled_image\":\"images\\/prototypes\\/flash_sale_section-cross.jpg\",\"alt\":\"Flash Sale Section\"},{\"id\":4,\"name\":\"Ad Section\",\"order\":9,\"file_name\":\"ad_banner_section\",\"status\":1,\"image\":\"images\\/prototypes\\/ad_banner_section.jpg\",\"disabled_image\":\"images\\/prototypes\\/ad_banner_section-cross.jpg\",\"alt\":\"Ad Section\"},{\"id\":6,\"name\":\"Blog Section\",\"order\":10,\"file_name\":\"blog_section\",\"status\":1,\"image\":\"images\\/prototypes\\/blog_section.jpg\",\"disabled_image\":\"images\\/prototypes\\/blog_section-cross.jpg\",\"alt\":\"Blog Section\"},{\"id\":7,\"name\":\"Info Boxes\",\"order\":11,\"file_name\":\"info_boxes\",\"status\":1,\"image\":\"images\\/prototypes\\/info_boxes.jpg\",\"disabled_image\":\"images\\/prototypes\\/info_boxes-cross.jpg\",\"alt\":\"Info Boxes\"}]', 1, 1, 1, 1, 1, 'abV2fZHzKEq7uEt0XBwYDe2BtkIbwAcajBvAJtEG', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
CREATE TABLE IF NOT EXISTS `customers` (
  `customers_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `customers_fax` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customers_newsletter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fb_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auth_id_tiwilo` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`customers_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customers_id`, `user_id`, `customers_fax`, `customers_newsletter`, `fb_id`, `google_id`, `auth_id_tiwilo`, `created_at`, `updated_at`) VALUES
(3, 7, '', '', '1397019480462476', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 8, '', '', '', '100729965818911895811', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `customers_basket`
--

DROP TABLE IF EXISTS `customers_basket`;
CREATE TABLE IF NOT EXISTS `customers_basket` (
  `customers_basket_id` int(11) NOT NULL AUTO_INCREMENT,
  `customers_id` int(11) NOT NULL,
  `products_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `customers_basket_quantity` int(11) NOT NULL,
  `final_price` decimal(15,2) DEFAULT NULL,
  `customers_basket_date_added` char(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_order` tinyint(1) NOT NULL DEFAULT '0',
  `session_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`customers_basket_id`),
  KEY `idx_customers_basket_customers_id` (`customers_id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers_basket`
--

INSERT INTO `customers_basket` (`customers_basket_id`, `customers_id`, `products_id`, `customers_basket_quantity`, `final_price`, `customers_basket_date_added`, `is_order`, `session_id`) VALUES
(8, 2, '1', 2, '222.00', '2019-10-21', 0, 'gCswBXxz0VElNw5Mf6SnObMULHTJF6kvytuQ4i5G'),
(12, 3, '1', 6, '222.00', '2019-10-21', 0, 'NZAvMYuLLmJQ1avoa7wmKTY2tkiDcCiR5iYZualG'),
(13, 0, '2', 1, '213.00', '2019-10-23', 1, 'YHKiCaipnhoFuf43VQVcH7zCDOsu68z0fpoQzX3Q'),
(14, 0, '4', 10, '123.00', '2019-10-23', 0, 'YHKiCaipnhoFuf43VQVcH7zCDOsu68z0fpoQzX3Q'),
(15, 0, '4', 1, '123.00', '2019-10-24', 0, 'LLb3gaJfnxs1FdOslyoPWnjVcjiorWhrByVDqEZS'),
(20, 0, '4', 12, '123.00', '2019-10-24', 0, 'zOsHL4josQo3dkyhpBAauNUMDvXZXRZ4dPiWyoWF'),
(21, 4, '2', 1, '213.00', '2019-10-29', 1, 'O3XjlZNBiqdV5nCja8k4eSyXOuskIuXxvv3M3apu'),
(22, 0, '4', 6, '123.00', '2019-10-30', 0, '04BGuy3xTCxP8gvBt9HQJRF1RFneKyqEE5vrTuku'),
(23, 4, '2', 1, '213.00', '2019-11-18', 1, 'QrRb7cOxIj3eWr1330nOoPHjg1iJrs2puvH4ifvv'),
(24, 4, '2', 3, '213.00', '2019-11-18', 1, 'QrRb7cOxIj3eWr1330nOoPHjg1iJrs2puvH4ifvv'),
(25, 4, '2', 1, '213.00', '2019-11-18', 1, 'QrRb7cOxIj3eWr1330nOoPHjg1iJrs2puvH4ifvv'),
(26, 10, '2', 1, '213.00', '2019-11-18', 1, 'pJ8XEiYdJMdvoaUIPgXB6LlXTsJUjo7MzPgRwQRr'),
(27, 10, '1', 1, '222.00', '2019-11-18', 1, 'pJ8XEiYdJMdvoaUIPgXB6LlXTsJUjo7MzPgRwQRr'),
(28, 10, '2', 1, '213.00', '2019-11-18', 1, 'pJ8XEiYdJMdvoaUIPgXB6LlXTsJUjo7MzPgRwQRr'),
(29, 0, '2', 1, '213.00', '2019-11-18', 0, '2lDSv6efcVv2rXX50nM0jMkUseaJ102SiRIuVQ0c'),
(30, 0, '2', 3, '213.00', '2019-11-18', 0, 'aHhCLhiz9WUyHbU0i9j8v5fTxqcEYp5mR0zwYnVl'),
(31, 0, '3', 6, '123.00', '2019-11-18', 0, 'aHhCLhiz9WUyHbU0i9j8v5fTxqcEYp5mR0zwYnVl'),
(32, 0, '4', 4, '11123.00', '2019-11-27', 0, 'bmokCWySHR3XrA4y81BOAbmqSKKZuoKrCtSBS2jh'),
(33, 0, '4', 4, '11123.00', '2019-11-29', 0, '1PVV6ZzFcf7uN0mpq9iTxfdFejyqT3Cpx6ngX1ju'),
(35, 4, '3', 1, '123.00', '2019-12-03', 1, 'abV2fZHzKEq7uEt0XBwYDe2BtkIbwAcajBvAJtEG'),
(43, 4, '3', 1, '123.00', '2019-12-03', 1, 'abV2fZHzKEq7uEt0XBwYDe2BtkIbwAcajBvAJtEG'),
(44, 4, '3', 2, '123.00', '2019-12-03', 1, 'abV2fZHzKEq7uEt0XBwYDe2BtkIbwAcajBvAJtEG'),
(45, 4, '3', 1, '123.00', '2019-12-03', 0, 'abV2fZHzKEq7uEt0XBwYDe2BtkIbwAcajBvAJtEG'),
(46, 13, '3', 1, '123.00', '2019-12-05', 1, 'D2gtaGCgqMzBQCIfY7M9icncAVBvEF665jNvYtNw'),
(47, 13, '2', 2, '213.00', '2019-12-05', 1, 'D2gtaGCgqMzBQCIfY7M9icncAVBvEF665jNvYtNw'),
(48, 13, '1', 2, '222.00', '2019-12-05', 1, 'D2gtaGCgqMzBQCIfY7M9icncAVBvEF665jNvYtNw'),
(49, 13, '1', 1, '222.00', '2019-12-05', 1, 'D2gtaGCgqMzBQCIfY7M9icncAVBvEF665jNvYtNw'),
(50, 13, '2', 1, '213.00', '2019-12-11', 1, 'V2NiL927LWfCfkM98t2ZO36K6kEpbzShVUMLyLx7'),
(52, 4, '2', 1, '213.00', '2019-12-18', 0, 'aFjqEO6iUHDenG5diofVQMJil2W4VXEniLDRhve6'),
(53, 15, '1', 2, '222.00', '2020-01-01', 1, 'oeJbxgy6JSEYDzfq7GPt5p36LtkzFh1wmRAWBYKv'),
(54, 15, '4', 1, '11123.00', '2020-01-01', 1, 'oeJbxgy6JSEYDzfq7GPt5p36LtkzFh1wmRAWBYKv'),
(55, 15, '4', 1, '11123.00', '2020-01-01', 1, 'oeJbxgy6JSEYDzfq7GPt5p36LtkzFh1wmRAWBYKv'),
(56, 15, '4', 1, '11123.00', '2020-01-01', 1, 'oeJbxgy6JSEYDzfq7GPt5p36LtkzFh1wmRAWBYKv'),
(57, 15, '4', 1, '11123.00', '2020-01-01', 1, 'oeJbxgy6JSEYDzfq7GPt5p36LtkzFh1wmRAWBYKv'),
(58, 15, '3', 3, '123.00', '2020-01-01', 1, 'oeJbxgy6JSEYDzfq7GPt5p36LtkzFh1wmRAWBYKv'),
(59, 15, '3', 3, '123.00', '2020-01-01', 1, 'oeJbxgy6JSEYDzfq7GPt5p36LtkzFh1wmRAWBYKv');

-- --------------------------------------------------------

--
-- Table structure for table `customers_basket_attributes`
--

DROP TABLE IF EXISTS `customers_basket_attributes`;
CREATE TABLE IF NOT EXISTS `customers_basket_attributes` (
  `customers_basket_attributes_id` int(11) NOT NULL AUTO_INCREMENT,
  `customers_basket_id` int(11) NOT NULL,
  `customers_id` int(11) NOT NULL,
  `products_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `products_options_id` int(11) NOT NULL,
  `products_options_values_id` int(11) NOT NULL,
  `session_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`customers_basket_attributes_id`),
  KEY `idx_customers_basket_att_customers_id` (`customers_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers_basket_attributes`
--

INSERT INTO `customers_basket_attributes` (`customers_basket_attributes_id`, `customers_basket_id`, `customers_id`, `products_id`, `products_options_id`, `products_options_values_id`, `session_id`) VALUES
(1, 31, 0, '3', 1, 1, 'aHhCLhiz9WUyHbU0i9j8v5fTxqcEYp5mR0zwYnVl'),
(2, 31, 0, '3', 2, 3, 'aHhCLhiz9WUyHbU0i9j8v5fTxqcEYp5mR0zwYnVl'),
(3, 35, 4, '3', 1, 1, 'abV2fZHzKEq7uEt0XBwYDe2BtkIbwAcajBvAJtEG'),
(4, 35, 4, '3', 2, 3, 'abV2fZHzKEq7uEt0XBwYDe2BtkIbwAcajBvAJtEG'),
(15, 43, 4, '3', 1, 1, 'abV2fZHzKEq7uEt0XBwYDe2BtkIbwAcajBvAJtEG'),
(16, 43, 4, '3', 2, 3, 'abV2fZHzKEq7uEt0XBwYDe2BtkIbwAcajBvAJtEG'),
(17, 44, 4, '3', 1, 1, 'abV2fZHzKEq7uEt0XBwYDe2BtkIbwAcajBvAJtEG'),
(18, 44, 4, '3', 2, 4, 'abV2fZHzKEq7uEt0XBwYDe2BtkIbwAcajBvAJtEG'),
(19, 45, 4, '3', 1, 1, 'abV2fZHzKEq7uEt0XBwYDe2BtkIbwAcajBvAJtEG'),
(20, 45, 4, '3', 2, 3, 'abV2fZHzKEq7uEt0XBwYDe2BtkIbwAcajBvAJtEG'),
(21, 46, 0, '3', 1, 1, 'D2gtaGCgqMzBQCIfY7M9icncAVBvEF665jNvYtNw'),
(22, 46, 0, '3', 2, 3, 'D2gtaGCgqMzBQCIfY7M9icncAVBvEF665jNvYtNw'),
(23, 58, 15, '3', 1, 1, 'oeJbxgy6JSEYDzfq7GPt5p36LtkzFh1wmRAWBYKv'),
(24, 58, 15, '3', 2, 3, 'oeJbxgy6JSEYDzfq7GPt5p36LtkzFh1wmRAWBYKv'),
(25, 59, 15, '3', 1, 1, 'oeJbxgy6JSEYDzfq7GPt5p36LtkzFh1wmRAWBYKv'),
(26, 59, 15, '3', 2, 3, 'oeJbxgy6JSEYDzfq7GPt5p36LtkzFh1wmRAWBYKv');

-- --------------------------------------------------------

--
-- Table structure for table `customers_info`
--

DROP TABLE IF EXISTS `customers_info`;
CREATE TABLE IF NOT EXISTS `customers_info` (
  `customers_info_id` int(11) NOT NULL,
  `customers_info_date_of_last_logon` datetime DEFAULT NULL,
  `customers_info_number_of_logons` int(11) DEFAULT NULL,
  `customers_info_date_account_created` datetime DEFAULT NULL,
  `customers_info_date_account_last_modified` datetime DEFAULT NULL,
  `global_product_notifications` int(11) DEFAULT '0',
  PRIMARY KEY (`customers_info_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers_info`
--

INSERT INTO `customers_info` (`customers_info_id`, `customers_info_date_of_last_logon`, `customers_info_number_of_logons`, `customers_info_date_account_created`, `customers_info_date_account_last_modified`, `global_product_notifications`) VALUES
(1, '2019-11-01 05:52:19', 1, '2019-11-01 05:52:19', '0000-00-00 00:00:00', 1),
(2, '2019-11-01 05:58:52', 1, '2019-11-01 05:58:52', '0000-00-00 00:00:00', 1),
(3, '2019-11-01 06:01:33', 1, '2019-11-01 06:01:33', '0000-00-00 00:00:00', 1),
(4, '2019-11-01 06:14:08', 1, '2019-11-01 06:14:08', '0000-00-00 00:00:00', 1),
(5, '2019-11-01 05:55:18', 1, '2019-11-01 05:55:18', '0000-00-00 00:00:00', 1),
(7, '2019-11-01 06:49:11', 6, '2019-11-01 06:03:59', '0000-00-00 00:00:00', 1),
(8, '2019-11-01 06:55:22', 1, '2019-11-01 06:55:22', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `devices`
--

DROP TABLE IF EXISTS `devices`;
CREATE TABLE IF NOT EXISTS `devices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `device_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `device_type` int(11) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `ram` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `processor` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_os` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latittude` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_model` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `manufacturer` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `operating_system` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `browser_info` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_notify` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fedex_shipping`
--

DROP TABLE IF EXISTS `fedex_shipping`;
CREATE TABLE IF NOT EXISTS `fedex_shipping` (
  `fedex_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parcel_height` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parcel_width` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `person_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_line_1` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_line_2` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_of_package` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`fedex_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flash_sale`
--

DROP TABLE IF EXISTS `flash_sale`;
CREATE TABLE IF NOT EXISTS `flash_sale` (
  `flash_sale_id` int(11) NOT NULL AUTO_INCREMENT,
  `products_id` int(11) NOT NULL,
  `flash_sale_products_price` decimal(15,2) NOT NULL,
  `flash_sale_date_added` int(11) NOT NULL,
  `flash_sale_last_modified` int(11) NOT NULL,
  `flash_start_date` int(11) NOT NULL,
  `flash_expires_date` int(11) NOT NULL,
  `flash_status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`flash_sale_id`),
  KEY `products_id` (`products_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `flash_sale`
--

INSERT INTO `flash_sale` (`flash_sale_id`, `products_id`, `flash_sale_products_price`, `flash_sale_date_added`, `flash_sale_last_modified`, `flash_start_date`, `flash_expires_date`, `flash_status`, `created_at`, `updated_at`) VALUES
(1, 5, '111.00', 0, 0, 1575891900, 1577533500, 1, '2019-12-11 01:47:10', NULL),
(2, 6, '30.00', 0, 0, 1588201200, 1590879600, 1, '2020-05-01 01:04:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `flate_rate`
--

DROP TABLE IF EXISTS `flate_rate`;
CREATE TABLE IF NOT EXISTS `flate_rate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `flate_rate` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `flate_rate`
--

INSERT INTO `flate_rate` (`id`, `flate_rate`, `currency`) VALUES
(1, '11', 'USD');

-- --------------------------------------------------------

--
-- Table structure for table `front_end_theme_content`
--

DROP TABLE IF EXISTS `front_end_theme_content`;
CREATE TABLE IF NOT EXISTS `front_end_theme_content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `headers` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `carousels` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `banners` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `footers` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_section_order` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cart` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `news` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `shop` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `front_end_theme_content`
--

INSERT INTO `front_end_theme_content` (`id`, `headers`, `carousels`, `banners`, `footers`, `product_section_order`, `cart`, `news`, `detail`, `shop`, `contact`) VALUES
(1, '[\r\n{\r\n\"id\": 1,\r\n\"name\": \"Header One\",\r\n\"image\": \"images/prototypes/header1.jpg\",\r\n\"alt\" : \"header One\" \r\n},\r\n{\r\n\"id\": 2,\r\n\"name\": \"Header Two\",\r\n\"image\": \"images/prototypes/header2.jpg\",\r\n\"alt\" : \"header Two\" \r\n},\r\n{\r\n\"id\": 3,\r\n\"name\": \"Header Three\",\r\n\"image\": \"images/prototypes/header3.jpg\",\r\n\"alt\" : \"header Three\" \r\n},\r\n{\r\n\"id\": 4,\r\n\"name\": \"Header Four\",\r\n\"image\": \"images/prototypes/header4.jpg\",\r\n\"alt\" : \"header Four\" \r\n},\r\n{\r\n\"id\": 5,\r\n\"name\": \"Header Five\",\r\n\"image\": \"images/prototypes/header5.jpg\",\r\n\"alt\" : \"header Five\" \r\n},\r\n{\r\n\"id\": 6,\r\n\"name\": \"Header Six\",\r\n\"image\": \"images/prototypes/header6.jpg\",\r\n\"alt\" : \"header Six\" \r\n},\r\n{\r\n\"id\": 7,\r\n\"name\": \"Header Seven\",\r\n\"image\": \"images/prototypes/header7.jpg\",\r\n\"alt\" : \"header Seven\" \r\n},\r\n{\r\n\"id\": 8,\r\n\"name\": \"Header Eight\",\r\n\"image\": \"images/prototypes/header8.jpg\",\r\n\"alt\" : \"header Eight\" \r\n},\r\n{\r\n\"id\": 9,\r\n\"name\": \"Header Nine\",\r\n\"image\": \"images/prototypes/header9.jpg\",\r\n\"alt\" : \"header Nine\" \r\n},\r\n{\r\n\"id\": 10,\r\n\"name\": \"Header Ten\",\r\n\"image\": \"images/prototypes/header10.jpg\",\r\n\"alt\" : \"header Ten\" \r\n}\r\n]', '[\r\n{\r\n\"id\": 1,\r\n\"name\": \"Bootstrap Carousel Content Full Screen\",\r\n\"image\": \"images/prototypes/carousal1.jpg\",\r\n\"alt\": \"Bootstrap Carousel Content Full Screen\"\r\n},\r\n{\r\n\"id\": 2,\r\n\"name\": \"Bootstrap Carousel Content Full Width\",\r\n\"image\": \"images/prototypes/carousal2.jpg\",\r\n\"alt\": \"Bootstrap Carousel Content Full Width\"\r\n},\r\n{\r\n\"id\": 3,\r\n\"name\": \"Bootstrap Carousel Content with Left Banner\",\r\n\"image\": \"images/prototypes/carousal3.jpg\",\r\n\"alt\": \"Bootstrap Carousel Content with Left Banner\"\r\n},\r\n{\r\n\"id\": 4,\r\n\"name\": \"Bootstrap Carousel Content with Navigation\",\r\n\"image\": \"images/prototypes/carousal4.jpg\",\r\n\"alt\": \"Bootstrap Carousel Content with Navigation\"\r\n},\r\n{\r\n\"id\": 5,\r\n\"name\": \"Bootstrap Carousel Content with Right Banner\",\r\n\"image\": \"images/prototypes/carousal5.jpg\",\r\n\"alt\": \"Bootstrap Carousel Content with Right Banner\"\r\n}\r\n]', '[\r\n{\r\n\"id\": 1,\r\n\"name\": \"Banner One\",\r\n\"image\": \"images/prototypes/banner1.jpg\",\r\n\"alt\": \"Banner One\"\r\n},\r\n{\r\n\"id\": 2,\r\n\"name\": \"Banner Two\",\r\n\"image\": \"images/prototypes/banner2.jpg\",\r\n\"alt\": \"Banner Two\"\r\n},\r\n{\r\n\"id\": 3,\r\n\"name\": \"Banner Three\",\r\n\"image\": \"images/prototypes/banner3.jpg\",\r\n\"alt\": \"Banner Three\"\r\n},\r\n{\r\n\"id\": 4,\r\n\"name\": \"Banner Four\",\r\n\"image\": \"images/prototypes/banner4.jpg\",\r\n\"alt\": \"Banner Four\"\r\n},\r\n{\r\n\"id\": 5,\r\n\"name\": \"Banner Five\",\r\n\"image\": \"images/prototypes/banner5.jpg\",\r\n\"alt\": \"Banner Five\"\r\n},\r\n{\r\n\"id\": 6,\r\n\"name\": \"Banner Six\",\r\n\"image\": \"images/prototypes/banner6.jpg\",\r\n\"alt\": \"Banner Six\"\r\n},\r\n{\r\n\"id\": 7,\r\n\"name\": \"Banner Seven\",\r\n\"image\": \"images/prototypes/banner7.jpg\",\r\n\"alt\": \"Banner Seven\"\r\n},\r\n{\r\n\"id\": 8,\r\n\"name\": \"Banner Eight\",\r\n\"image\": \"images/prototypes/banner8.jpg\",\r\n\"alt\": \"Banner Eight\"\r\n},\r\n{\r\n\"id\": 9,\r\n\"name\": \"Banner Nine\",\r\n\"image\": \"images/prototypes/banner9.jpg\",\r\n\"alt\": \"Banner Nine\"\r\n},\r\n{\r\n\"id\": 10,\r\n\"name\": \"Banner Ten\",\r\n\"image\": \"images/prototypes/banner10.jpg\",\r\n\"alt\": \"Banner Ten\"\r\n},\r\n{\r\n\"id\": 11,\r\n\"name\": \"Banner Eleven\",\r\n\"image\": \"images/prototypes/banner11.jpg\",\r\n\"alt\": \"Banner Eleven\"\r\n},\r\n{\r\n\"id\": 12,\r\n\"name\": \"Banner Twelve\",\r\n\"image\": \"images/prototypes/banner12.jpg\",\r\n\"alt\": \"Banner Twelve\"\r\n},\r\n{\r\n\"id\": 13,\r\n\"name\": \"Banner Thirteen\",\r\n\"image\": \"images/prototypes/banner13.jpg\",\r\n\"alt\": \"Banner Thirteen\"\r\n},\r\n{\r\n\"id\": 14,\r\n\"name\": \"Banner Fourteen\",\r\n\"image\": \"images/prototypes/banner14.jpg\",\r\n\"alt\": \"Banner Fourteen\"\r\n},\r\n{\r\n\"id\": 15,\r\n\"name\": \"Banner Fifteen\",\r\n\"image\": \"images/prototypes/banner15.jpg\",\r\n\"alt\": \"Banner Fifteen\"\r\n},\r\n{\r\n\"id\": 16,\r\n\"name\": \"Banner Sixteen\",\r\n\"image\": \"images/prototypes/banner16.jpg\",\r\n\"alt\": \"Banner Sixteen\"\r\n},\r\n{\r\n\"id\": 17,\r\n\"name\": \"Banner Seventeen\",\r\n\"image\": \"images/prototypes/banner17.jpg\",\r\n\"alt\": \"Banner Seventeen\"\r\n},\r\n{\r\n\"id\": 18,\r\n\"name\": \"Banner Eighteen\",\r\n\"image\": \"images/prototypes/banner18.jpg\",\r\n\"alt\": \"Banner Eighteen\"\r\n},\r\n{\r\n\"id\": 19,\r\n\"name\": \"Banner Nineteen\",\r\n\"image\": \"images/prototypes/banner19.jpg\",\r\n\"alt\": \"Banner Nineteen\"\r\n}\r\n]', '[\r\n{\r\n\"id\": 1,\r\n\"name\": \"Footer One\",\r\n\"image\": \"images/prototypes/footer1.png\",\r\n\"alt\" : \"Footer One\"\r\n},\r\n{\r\n\"id\": 2,\r\n\"name\": \"Footer Two\",\r\n\"image\": \"images/prototypes/footer2.png\",\r\n\"alt\" : \"Footer Two\"\r\n},\r\n{\r\n\"id\": 3,\r\n\"name\": \"Footer Three\",\r\n\"image\": \"images/prototypes/footer3.png\",\r\n\"alt\" : \"Footer Three\"\r\n},\r\n{\r\n\"id\": 4,\r\n\"name\": \"Footer Four\",\r\n\"image\": \"images/prototypes/footer4.png\",\r\n\"alt\" : \"Footer Four\"\r\n},\r\n{\r\n\"id\": 5,\r\n\"name\": \"Footer Five\",\r\n\"image\": \"images/prototypes/footer5.png\",\r\n\"alt\" : \"Footer Five\"\r\n},\r\n{\r\n\"id\": 6,\r\n\"name\": \"Footer Six\",\r\n\"image\": \"images/prototypes/footer6.png\",\r\n\"alt\" : \"Footer Six\"\r\n},\r\n{\r\n\"id\": 7,\r\n\"name\": \"Footer Seven\",\r\n\"image\": \"images/prototypes/footer7.png\",\r\n\"alt\" : \"Footer Seven\"\r\n},\r\n{\r\n\"id\": 8,\r\n\"name\": \"Footer Eight\",\r\n\"image\": \"images/prototypes/footer8.png\",\r\n\"alt\" : \"Footer Eight\"\r\n},\r\n{\r\n\"id\": 9,\r\n\"name\": \"Footer Nine\",\r\n\"image\": \"images/prototypes/footer9.png\",\r\n\"alt\" : \"Footer Nine\"\r\n},\r\n{\r\n\"id\": 10,\r\n\"name\": \"Footer Ten\",\r\n\"image\": \"images/prototypes/footer10.png\",\r\n\"alt\" : \"Footer Ten\"\r\n}\r\n]', '[{\"id\":10,\"name\":\"Second Ad Section\",\"order\":1,\"file_name\":\"sec_ad_banner\",\"status\":1,\"image\":\"images\\/prototypes\\/sec_ad_section.jpg\",\"disabled_image\":\"images\\/prototypes\\/sec_ad_section-cross.jpg\",\"alt\":\"Second Ad Section\"},{\"id\":5,\"name\":\"Categories\",\"order\":2,\"file_name\":\"categories\",\"status\":1,\"image\":\"images\\/prototypes\\/categories.jpg\",\"disabled_image\":\"images\\/prototypes\\/categories-cross.jpg\",\"alt\":\"Categories\"},{\"id\":1,\"name\":\"Banner Section\",\"order\":3,\"file_name\":\"banner_section\",\"status\":1,\"image\":\"images\\/prototypes\\/banner_section.jpg\",\"alt\":\"Banner Section\"},{\"id\":9,\"name\":\"Top Selling\",\"order\":4,\"file_name\":\"top\",\"status\":1,\"image\":\"images\\/prototypes\\/top.jpg\",\"disabled_image\":\"images\\/prototypes\\/top-cross.jpg\",\"alt\":\"Top Selling\"},{\"id\":8,\"name\":\"Newest Product Section\",\"order\":5,\"file_name\":\"newest_product\",\"status\":1,\"image\":\"images\\/prototypes\\/newest_product.jpg\",\"disabled_image\":\"images\\/prototypes\\/newest_product-cross.jpg\",\"alt\":\"Newest Product Section\"},{\"id\":11,\"name\":\"Tab Products View\",\"order\":6,\"file_name\":\"tab\",\"status\":1,\"image\":\"images\\/prototypes\\/tab.jpg\",\"disabled_image\":\"images\\/prototypes\\/tab-cross.jpg\",\"alt\":\"Tab Products View\"},{\"id\":3,\"name\":\"Special Products Section\",\"order\":7,\"file_name\":\"special\",\"status\":1,\"image\":\"images\\/prototypes\\/special_product.jpg\",\"disabled_image\":\"images\\/prototypes\\/special_product-cross.jpg\",\"alt\":\"Special Products Section\"},{\"id\":2,\"name\":\"Flash Sale Section\",\"order\":8,\"file_name\":\"flash_sale_section\",\"status\":1,\"image\":\"images\\/prototypes\\/flash_sale_section.jpg\",\"disabled_image\":\"images\\/prototypes\\/flash_sale_section-cross.jpg\",\"alt\":\"Flash Sale Section\"},{\"id\":4,\"name\":\"Ad Section\",\"order\":9,\"file_name\":\"ad_banner_section\",\"status\":1,\"image\":\"images\\/prototypes\\/ad_banner_section.jpg\",\"disabled_image\":\"images\\/prototypes\\/ad_banner_section-cross.jpg\",\"alt\":\"Ad Section\"},{\"id\":6,\"name\":\"Blog Section\",\"order\":10,\"file_name\":\"blog_section\",\"status\":1,\"image\":\"images\\/prototypes\\/blog_section.jpg\",\"disabled_image\":\"images\\/prototypes\\/blog_section-cross.jpg\",\"alt\":\"Blog Section\"},{\"id\":7,\"name\":\"Info Boxes\",\"order\":11,\"file_name\":\"info_boxes\",\"status\":1,\"image\":\"images\\/prototypes\\/info_boxes.jpg\",\"disabled_image\":\"images\\/prototypes\\/info_boxes-cross.jpg\",\"alt\":\"Info Boxes\"}]', '[      {         \"id\":1,       \"name\":\"Cart One\"    },    {         \"id\":2,       \"name\":\"Cart Two\"    }     ]', '[      {         \"id\":1,       \"name\":\"Blog One\"    },    {         \"id\":2,       \"name\":\"Blog Two\"    }     ]', '[  \r\n{  \r\n\"id\":1,\r\n\"name\":\"Product Detail Page One\"\r\n},\r\n{  \r\n\"id\":2,\r\n\"name\":\"Product Detail Page Two\"\r\n},\r\n{  \r\n\"id\":3,\r\n\"name\":\"Product Detail Page Three\"\r\n},\r\n{  \r\n\"id\":4,\r\n\"name\":\"Product Detail Page Four\"\r\n},\r\n{  \r\n\"id\":5,\r\n\"name\":\"Product Detail Page Five\"\r\n},\r\n{  \r\n\"id\":6,\r\n\"name\":\"Product Detail Page Six\"\r\n}\r\n\n]', '[      {         \"id\":1,       \"name\":\"Shop Page One\"    },    {         \"id\":2,       \"name\":\"Shop Page Two\"    },    {         \"id\":3,       \"name\":\"Shop Page Three\"    },    {         \"id\":4,       \"name\":\"Shop Page Four\"    },    {         \"id\":5,       \"name\":\"Shop Page Five\"    }     ]', '[      {         \"id\":1,       \"name\":\"Contact Page One\"    },    {         \"id\":2,       \"name\":\"Contact Page Two\"    } ]');

-- --------------------------------------------------------

--
-- Table structure for table `geo_zones`
--

DROP TABLE IF EXISTS `geo_zones`;
CREATE TABLE IF NOT EXISTS `geo_zones` (
  `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `geo_zone_name` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `geo_zone_description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`geo_zone_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `http_call_record`
--

DROP TABLE IF EXISTS `http_call_record`;
CREATE TABLE IF NOT EXISTS `http_call_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `device_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ping_time` datetime DEFAULT NULL,
  `difference_from_previous` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `http_call_record`
--

INSERT INTO `http_call_record` (`id`, `device_id`, `ip`, `url`, `ping_time`, `difference_from_previous`) VALUES
(1, 'aasdasds,', '192.168.1.11', 'getallproducts', '2019-11-12 11:41:46', '0000-00-00 00:00:00'),
(2, 'aasdasds,', '192.168.1.11', 'getallproducts', '2019-11-12 11:42:10', '0000-00-00 00:00:00'),
(3, 'aasdasds,', '192.168.1.11', 'getallproducts', '2019-11-12 11:43:07', '0000-00-00 00:00:00'),
(4, 'aasdasds,', '192.168.1.11', 'getallproducts', '2019-11-12 11:44:18', '0000-00-00 00:00:00'),
(5, 'aasdasds,', '192.168.1.11', 'getallproducts', '2019-11-12 11:45:06', '0000-00-00 00:00:00'),
(6, 'aasdaslgds,', '192.168.1.18', 'addtoorder', '2019-11-18 12:10:33', '0000-00-00 00:00:00'),
(7, 'aasdaslgds,', '192.168.1.18', 'addtoorder', '2019-11-18 12:13:34', '0000-00-00 00:00:00'),
(8, 'aasdaslgds,', '192.168.1.18', 'addtoorder', '2019-11-18 12:14:18', '0000-00-00 00:00:00'),
(9, 'aasdaslgds,', '192.168.1.18', 'addtoorder', '2019-11-18 12:14:40', '0000-00-00 00:00:00'),
(10, 'aasdaslgds,', '192.168.1.18', 'addtoorder', '2019-11-18 12:14:49', '0000-00-00 00:00:00'),
(11, 'aasdaslgds,', '192.168.1.18', 'addtoorder', '2019-11-18 12:16:23', '0000-00-00 00:00:00'),
(12, NULL, NULL, 'getallproducts', '2020-05-01 19:10:53', '0000-00-00 00:00:00'),
(13, NULL, NULL, 'getallproducts', '2020-05-01 19:11:18', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `hula_our_infos`
--

DROP TABLE IF EXISTS `hula_our_infos`;
CREATE TABLE IF NOT EXISTS `hula_our_infos` (
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
CREATE TABLE IF NOT EXISTS `images` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `name`, `user_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(3, 'XUF1110211.png', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, '0S9Uj10711.png', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, '49YbL10411.png', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 'JqYfZ11207.jpg', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, '6Q4Qy11507.jpg', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 'jOVnc11207.jpg', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 'Ake4A11107.jpg', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 'nDQtA11407.jpg', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 'ueyod11407.jpg', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 'xD6MF11207.jpg', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 'YZyoU11507.jpg', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 'RLshK11309.jpg', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 'pTZdI11309.jpg', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, '2t7BU11909.jpg', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 'O0cLp11909.jpg', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 'ncXhn11709.jpg', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, '3876V11310.jpg', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, '80IGj11510.jpg', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 'ueeqM11410.jpg', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 'UrgVW11410.jpg', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 'a18kN11510.jpg', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 'qQM0R11310.jpg', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 'VrhhT11510.jpg', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 'gSkR011310.jpg', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 'DXoxt11610.jpg', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 'N4WSZ11310.jpg', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 'z9MLR11610.jpg', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 'YNVyV11410.jpg', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110, 'YinE411810.jpg', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111, '97VNC11210.jpg', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(114, 'zZZ2n11710.jpg', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(115, 'vMNsa11710.jpg', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(116, 'qujIz11610.jpg', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(118, 'PJG0C11511.jpg', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(119, 'SKOMJ11512.jpg', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(128, 'PQEZm05610.png', 1, NULL, NULL, NULL),
(129, 'ktXYq05910.png', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `image_categories`
--

DROP TABLE IF EXISTS `image_categories`;
CREATE TABLE IF NOT EXISTS `image_categories` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `image_id` int(10) UNSIGNED NOT NULL,
  `image_type` enum('ACTUAL','THUMBNAIL','LARGE','MEDIUM') COLLATE utf8mb4_unicode_ci NOT NULL,
  `height` int(11) NOT NULL,
  `width` int(11) NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=212 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `image_categories`
--

INSERT INTO `image_categories` (`id`, `image_id`, `image_type`, `height`, `width`, `path`, `created_at`, `updated_at`) VALUES
(84, 83, 'ACTUAL', 277, 370, 'images/media/2019/10/JqYfZ11207.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 83, 'THUMBNAIL', 112, 150, 'images/media/2019/10/thumbnail1570778231JqYfZ11207.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 84, 'ACTUAL', 301, 770, 'images/media/2019/10/6Q4Qy11507.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 85, 'ACTUAL', 550, 368, 'images/media/2019/10/jOVnc11207.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 85, 'THUMBNAIL', 150, 100, 'images/media/2019/10/thumbnail1570778446jOVnc11207.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 85, 'MEDIUM', 400, 268, 'images/media/2019/10/medium1570778446jOVnc11207.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 86, 'ACTUAL', 220, 370, 'images/media/2019/10/Ake4A11107.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 86, 'THUMBNAIL', 89, 150, 'images/media/2019/10/thumbnail1570778447Ake4A11107.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 89, 'ACTUAL', 229, 270, 'images/media/2019/10/nDQtA11407.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 89, 'THUMBNAIL', 127, 150, 'images/media/2019/10/thumbnail1570778680nDQtA11407.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 90, 'ACTUAL', 298, 568, 'images/media/2019/10/ueyod11407.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 90, 'THUMBNAIL', 79, 150, 'images/media/2019/10/thumbnail1570778749ueyod11407.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 90, 'MEDIUM', 210, 400, 'images/media/2019/10/medium1570778749ueyod11407.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 91, 'ACTUAL', 490, 570, 'images/media/2019/10/xD6MF11207.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 91, 'THUMBNAIL', 129, 150, 'images/media/2019/10/thumbnail1570778967xD6MF11207.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 91, 'MEDIUM', 344, 400, 'images/media/2019/10/medium1570778967xD6MF11207.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 92, 'ACTUAL', 229, 270, 'images/media/2019/10/YZyoU11507.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 92, 'THUMBNAIL', 127, 150, 'images/media/2019/10/thumbnail1570778968YZyoU11507.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 93, 'ACTUAL', 301, 770, 'images/media/2019/10/RLshK11309.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 93, 'THUMBNAIL', 59, 150, 'images/media/2019/10/thumbnail1570787475RLshK11309.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 93, 'MEDIUM', 156, 400, 'images/media/2019/10/medium1570787476RLshK11309.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 94, 'ACTUAL', 211, 570, 'images/media/2019/10/pTZdI11309.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110, 94, 'THUMBNAIL', 56, 150, 'images/media/2019/10/thumbnail1570787731pTZdI11309.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111, 94, 'MEDIUM', 148, 400, 'images/media/2019/10/medium1570787731pTZdI11309.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112, 95, 'ACTUAL', 451, 570, 'images/media/2019/10/2t7BU11909.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(113, 95, 'THUMBNAIL', 119, 150, 'images/media/2019/10/thumbnail15707877532t7BU11909.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(114, 95, 'MEDIUM', 316, 400, 'images/media/2019/10/medium15707877542t7BU11909.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(115, 96, 'ACTUAL', 211, 270, 'images/media/2019/10/O0cLp11909.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(116, 96, 'THUMBNAIL', 117, 150, 'images/media/2019/10/thumbnail1570787792O0cLp11909.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(117, 97, 'ACTUAL', 298, 568, 'images/media/2019/10/ncXhn11709.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(118, 97, 'THUMBNAIL', 79, 150, 'images/media/2019/10/thumbnail1570787936ncXhn11709.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(119, 97, 'MEDIUM', 210, 400, 'images/media/2019/10/medium1570787936ncXhn11709.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(120, 98, 'ACTUAL', 452, 569, 'images/media/2019/10/3876V11310.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(121, 98, 'THUMBNAIL', 119, 150, 'images/media/2019/10/thumbnail15707880203876V11310.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(122, 98, 'MEDIUM', 318, 400, 'images/media/2019/10/medium15707880213876V11310.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(123, 99, 'ACTUAL', 451, 271, 'images/media/2019/10/80IGj11510.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(124, 99, 'THUMBNAIL', 150, 90, 'images/media/2019/10/thumbnail157078802180IGj11510.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(125, 99, 'MEDIUM', 400, 240, 'images/media/2019/10/medium157078802180IGj11510.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(126, 100, 'ACTUAL', 493, 370, 'images/media/2019/10/ueeqM11410.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(127, 100, 'THUMBNAIL', 150, 113, 'images/media/2019/10/thumbnail1570788170ueeqM11410.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(128, 100, 'MEDIUM', 400, 300, 'images/media/2019/10/medium1570788171ueeqM11410.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(129, 101, 'ACTUAL', 230, 370, 'images/media/2019/10/UrgVW11410.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(130, 101, 'THUMBNAIL', 93, 150, 'images/media/2019/10/thumbnail1570788171UrgVW11410.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(131, 102, 'ACTUAL', 230, 370, 'images/media/2019/10/a18kN11510.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(132, 102, 'THUMBNAIL', 93, 150, 'images/media/2019/10/thumbnail1570788301a18kN11510.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(133, 103, 'ACTUAL', 493, 370, 'images/media/2019/10/qQM0R11310.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(134, 103, 'THUMBNAIL', 150, 113, 'images/media/2019/10/thumbnail1570788302qQM0R11310.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(135, 103, 'MEDIUM', 400, 300, 'images/media/2019/10/medium1570788302qQM0R11310.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(136, 104, 'ACTUAL', 259, 770, 'images/media/2019/10/VrhhT11510.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(137, 104, 'THUMBNAIL', 50, 150, 'images/media/2019/10/thumbnail1570788382VrhhT11510.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(138, 104, 'MEDIUM', 135, 400, 'images/media/2019/10/medium1570788382VrhhT11510.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(139, 105, 'ACTUAL', 546, 372, 'images/media/2019/10/gSkR011310.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(140, 105, 'THUMBNAIL', 150, 102, 'images/media/2019/10/thumbnail1570788383gSkR011310.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(141, 105, 'MEDIUM', 400, 273, 'images/media/2019/10/medium1570788383gSkR011310.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(142, 106, 'ACTUAL', 430, 1599, 'images/media/2019/10/DXoxt11610.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(143, 106, 'THUMBNAIL', 40, 150, 'images/media/2019/10/thumbnail1570789393DXoxt11610.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(144, 106, 'MEDIUM', 108, 400, 'images/media/2019/10/medium1570789394DXoxt11610.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(145, 106, 'LARGE', 242, 900, 'images/media/2019/10/large1570789394DXoxt11610.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(146, 107, 'ACTUAL', 236, 1169, 'images/media/2019/10/N4WSZ11310.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(147, 107, 'THUMBNAIL', 30, 150, 'images/media/2019/10/thumbnail1570789395N4WSZ11310.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(148, 107, 'MEDIUM', 81, 400, 'images/media/2019/10/medium1570789395N4WSZ11310.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(149, 107, 'LARGE', 182, 900, 'images/media/2019/10/large1570789395N4WSZ11310.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(150, 108, 'ACTUAL', 421, 1170, 'images/media/2019/10/z9MLR11610.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(151, 108, 'THUMBNAIL', 54, 150, 'images/media/2019/10/thumbnail1570789643z9MLR11610.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(152, 108, 'MEDIUM', 144, 400, 'images/media/2019/10/medium1570789643z9MLR11610.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(153, 108, 'LARGE', 324, 900, 'images/media/2019/10/large1570789644z9MLR11610.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(154, 109, 'ACTUAL', 418, 885, 'images/media/2019/10/YNVyV11410.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(155, 109, 'THUMBNAIL', 71, 150, 'images/media/2019/10/thumbnail1570789935YNVyV11410.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(156, 109, 'MEDIUM', 189, 400, 'images/media/2019/10/medium1570789935YNVyV11410.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(157, 110, 'ACTUAL', 387, 770, 'images/media/2019/10/YinE411810.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(158, 110, 'THUMBNAIL', 75, 150, 'images/media/2019/10/thumbnail1570790072YinE411810.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(159, 110, 'MEDIUM', 201, 400, 'images/media/2019/10/medium1570790072YinE411810.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(160, 111, 'ACTUAL', 421, 1600, 'images/media/2019/10/97VNC11210.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(161, 111, 'THUMBNAIL', 39, 150, 'images/media/2019/10/thumbnail157079031897VNC11210.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(162, 111, 'MEDIUM', 105, 400, 'images/media/2019/10/medium157079031997VNC11210.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(163, 111, 'LARGE', 237, 900, 'images/media/2019/10/large157079031997VNC11210.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(168, 114, 'ACTUAL', 179, 370, 'images/media/2019/10/zZZ2n11710.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(169, 114, 'THUMBNAIL', 73, 150, 'images/media/2019/10/thumbnail1570790472zZZ2n11710.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(170, 115, 'ACTUAL', 211, 370, 'images/media/2019/10/vMNsa11710.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(171, 115, 'THUMBNAIL', 86, 150, 'images/media/2019/10/thumbnail1570790553vMNsa11710.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(172, 116, 'ACTUAL', 208, 465, 'images/media/2019/10/qujIz11610.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(173, 116, 'THUMBNAIL', 67, 150, 'images/media/2019/10/thumbnail1570790554qujIz11610.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(174, 116, 'MEDIUM', 179, 400, 'images/media/2019/10/medium1570790554qujIz11610.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(176, 118, 'ACTUAL', 20, 30, 'images/media/2019/10/PJG0C11511.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(177, 119, 'ACTUAL', 20, 30, 'images/media/2019/10/SKOMJ11512.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(204, 128, 'ACTUAL', 900, 1440, 'images/media/2019/12/PQEZm05610.png', NULL, NULL),
(205, 128, 'THUMBNAIL', 94, 150, 'images/media/2019/12/thumbnail1575542692PQEZm05610.png', NULL, NULL),
(206, 128, 'MEDIUM', 250, 400, 'images/media/2019/12/medium1575542692PQEZm05610.png', NULL, NULL),
(207, 128, 'LARGE', 563, 900, 'images/media/2019/12/large1575542693PQEZm05610.png', NULL, NULL),
(208, 129, 'ACTUAL', 900, 1440, 'images/media/2019/12/ktXYq05910.png', NULL, NULL),
(209, 129, 'THUMBNAIL', 94, 150, 'images/media/2019/12/thumbnail1575542694ktXYq05910.png', NULL, NULL),
(210, 129, 'MEDIUM', 250, 400, 'images/media/2019/12/medium1575542694ktXYq05910.png', NULL, NULL),
(211, 129, 'LARGE', 563, 900, 'images/media/2019/12/large1575542695ktXYq05910.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
CREATE TABLE IF NOT EXISTS `inventory` (
  `inventory_ref_id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_id` int(11) NOT NULL,
  `added_date` int(11) NOT NULL,
  `reference_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `purchase_price` decimal(10,2) DEFAULT NULL,
  `stock_type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`inventory_ref_id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`inventory_ref_id`, `admin_id`, `added_date`, `reference_code`, `stock`, `products_id`, `purchase_price`, `stock_type`, `created_at`, `updated_at`) VALUES
(43, 4, 0, 'uktit', 100, 7, '1000.00', 'in', '2020-07-08 03:19:17', NULL),
(44, 4, 0, 'rst', 2, 7, '0.00', 'in', '2020-07-08 03:21:43', NULL),
(45, 4, 0, '543fgbgbgf', 3, 7, '54543.00', 'in', '2020-07-08 07:19:38', NULL),
(46, 4, 0, '224', 322, 6, '24.00', 'in', '2020-07-08 01:06:35', NULL),
(47, 4, 0, 'eeeeee', 23, 6, '223.00', 'in', '2020-07-08 01:07:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `inventory_detail`
--

DROP TABLE IF EXISTS `inventory_detail`;
CREATE TABLE IF NOT EXISTS `inventory_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `inventory_ref_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inventory_detail`
--

INSERT INTO `inventory_detail` (`id`, `inventory_ref_id`, `products_id`, `attribute_id`) VALUES
(25, 43, 7, 10),
(26, 43, 7, 11),
(27, 44, 7, 10),
(28, 45, 7, 10),
(29, 45, 7, 12);

-- --------------------------------------------------------

--
-- Table structure for table `labels`
--

DROP TABLE IF EXISTS `labels`;
CREATE TABLE IF NOT EXISTS `labels` (
  `label_id` int(11) NOT NULL AUTO_INCREMENT,
  `label_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`label_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1058 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `labels`
--

INSERT INTO `labels` (`label_id`, `label_name`) VALUES
(1, 'I\'ve forgotten my password?'),
(2, 'Creating an account means you’re okay with shopify\'s Terms of Service, Privacy Policy'),
(872, 'Login with'),
(873, 'or'),
(874, 'Email'),
(875, 'Password'),
(876, 'Register'),
(877, 'Forgot Password'),
(878, 'Send'),
(879, 'About Us'),
(880, 'Categories'),
(881, 'Contact Us'),
(882, 'Name'),
(883, 'Your Messsage'),
(884, 'Please connect to the internet'),
(885, 'Recently Viewed'),
(886, 'Products are available.'),
(887, 'Top Seller'),
(888, 'Special Deals'),
(889, 'Most Liked'),
(890, 'All Categories'),
(891, 'Deals'),
(892, 'REMOVE'),
(893, 'Intro'),
(894, 'Skip Intro'),
(895, 'Got It!'),
(896, 'Order Detail'),
(897, 'Price Detail'),
(898, 'Total'),
(899, 'Sub Total'),
(900, 'Shipping'),
(901, 'Product Details'),
(902, 'New'),
(903, 'Out of Stock'),
(904, 'In Stock'),
(905, 'Add to Cart'),
(906, 'ADD TO CART'),
(907, 'Product Description'),
(908, 'Techincal details'),
(909, 'OFF'),
(910, 'No Products Found'),
(911, 'Reset Filters'),
(912, 'Search'),
(913, 'Main Categories'),
(914, 'Sub Categories'),
(915, 'Shipping method'),
(916, 'Thank You'),
(917, 'Thank you for shopping with us.'),
(918, 'My Orders'),
(919, 'Continue Shopping'),
(920, 'Favourite'),
(921, 'Your wish List is empty'),
(922, 'Continue Adding'),
(923, 'Explore'),
(924, 'Word Press Post Detail'),
(925, 'Go Back'),
(926, 'Top Sellers'),
(927, 'News'),
(928, 'Enter keyword'),
(929, 'Settings'),
(930, 'Shop'),
(931, 'Reset'),
(932, 'Select Language'),
(933, 'OUT OF STOCK'),
(934, 'Newest'),
(935, 'Refund Policy'),
(936, 'Privacy Policy'),
(937, 'Term and Services'),
(938, 'Skip'),
(939, 'Top Dishes'),
(940, 'Recipe of Day'),
(941, 'Food Categories'),
(942, 'Coupon Code'),
(943, 'Coupon Amount'),
(944, 'coupon code'),
(945, 'Coupon'),
(946, 'Note to the buyer'),
(947, 'Explore More'),
(948, 'All'),
(949, 'A - Z'),
(950, 'Z - A'),
(951, 'Price : high - low'),
(952, 'Price : low - high'),
(953, 'Special Products'),
(954, 'Sort Products'),
(955, 'Cancel'),
(956, 'most liked'),
(957, 'special'),
(958, 'top seller'),
(959, 'newest'),
(960, 'Likes'),
(961, 'My Account'),
(962, 'Mobile'),
(963, 'Date of Birth'),
(964, 'Update'),
(965, 'Current Password'),
(966, 'New Password'),
(967, 'Change Password'),
(968, 'Customer Orders'),
(969, 'Order Status'),
(970, 'Orders ID'),
(971, 'Product Price'),
(972, 'No. of Products'),
(973, 'Date'),
(974, 'Customer Address'),
(975, 'Please add your new shipping address for the futher processing of the your order'),
(976, 'Add new Address'),
(977, 'Create an Account'),
(978, 'First Name'),
(979, 'Last Name'),
(980, 'Already Memeber?'),
(981, 'Billing Info'),
(982, 'Address'),
(983, 'Phone'),
(984, 'Same as Shipping Address'),
(985, 'Next'),
(986, 'Order'),
(987, 'Billing Address'),
(988, 'Shipping Method'),
(989, 'Products'),
(990, 'SubTotal'),
(991, 'Products Price'),
(992, 'Tax'),
(993, 'Shipping Cost'),
(994, 'Order Notes'),
(995, 'Payment'),
(996, 'Card Number'),
(997, 'Expiration Date'),
(998, 'Expiration'),
(999, 'Error: invalid card number!'),
(1000, 'Error: invalid expiry date!'),
(1001, 'Error: invalid cvc number!'),
(1002, 'Continue'),
(1003, 'My Cart'),
(1004, 'Your cart is empty'),
(1005, 'continue shopping'),
(1006, 'Price'),
(1007, 'Quantity'),
(1008, 'by'),
(1009, 'View'),
(1010, 'Remove'),
(1011, 'Proceed'),
(1012, 'Shipping Address'),
(1013, 'Country'),
(1014, 'other'),
(1015, 'Zone'),
(1016, 'City'),
(1017, 'Post code'),
(1018, 'State'),
(1019, 'Update Address'),
(1020, 'Save Address'),
(1021, 'Login & Register'),
(1022, 'Please login or create an account for free'),
(1023, 'Log Out'),
(1024, 'My Wish List'),
(1025, 'Filters'),
(1026, 'Price Range'),
(1027, 'Close'),
(1028, 'Apply'),
(1029, 'Clear'),
(1030, 'Menu'),
(1031, 'Home'),
(1033, 'Creating an account means you’re okay with our'),
(1034, 'Login'),
(1035, 'Turn on/off Local Notifications'),
(1036, 'Turn on/off Notifications'),
(1037, 'Change Language'),
(1038, 'Official Website'),
(1039, 'Rate Us'),
(1040, 'Share'),
(1041, 'Edit Profile'),
(1042, 'A percentage discount for the entire cart'),
(1043, 'A fixed total discount for the entire cart'),
(1044, 'A fixed total discount for selected products only'),
(1045, 'A percentage discount for selected products only'),
(1047, 'Network Connected Reloading Data'),
(1048, 'Sort by'),
(1049, 'Flash Sale'),
(1050, 'ok'),
(1051, 'Number'),
(1052, 'Expire Month'),
(1053, 'Expire Year'),
(1054, 'Payment Method'),
(1055, 'Status'),
(1056, 'And'),
(1057, 'cccc');

-- --------------------------------------------------------

--
-- Table structure for table `label_value`
--

DROP TABLE IF EXISTS `label_value`;
CREATE TABLE IF NOT EXISTS `label_value` (
  `label_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `label_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `label_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`label_value_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1520 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `label_value`
--

INSERT INTO `label_value` (`label_value_id`, `label_value`, `language_id`, `label_id`) VALUES
(1297, 'Home', 1, 1031),
(1298, 'Menu', 1, 1030),
(1299, 'Clear', 1, 1029),
(1300, 'Apply', 1, 1028),
(1301, 'Close', 1, 1027),
(1302, 'Price Range', 1, 1026),
(1303, 'Filters', 1, 1025),
(1304, 'My Wish List', 1, 1024),
(1305, 'Log Out', 1, 1023),
(1306, 'Please login or create an account for free', 1, 1022),
(1307, 'login & Register', 1, 1021),
(1308, 'Save Address', 1, 1020),
(1309, 'State', 1, 1018),
(1310, 'Update Address', 1, 1019),
(1311, 'Post code', 1, 1017),
(1312, 'City', 1, 1016),
(1313, 'Zone', 1, 1015),
(1314, 'other', 1, 1014),
(1315, 'Country', 1, 1013),
(1316, 'Shipping Address', 1, 1012),
(1317, 'Proceed', 1, 1011),
(1318, 'Remove', 1, 1010),
(1319, 'by', 1, 1008),
(1320, 'View', 1, 1009),
(1321, 'Quantity', 1, 1007),
(1322, 'Price', 1, 1006),
(1323, 'continue shopping', 1, 1005),
(1324, 'Your cart is empty', 1, 1004),
(1325, 'My Cart', 1, 1003),
(1326, 'Continue', 1, 1002),
(1327, 'Error: invalid cvc number!', 1, 1001),
(1328, 'Error: invalid expiry date!', 1, 1000),
(1329, 'Error: invalid card number!', 1, 999),
(1330, 'Expiration', 1, 998),
(1331, 'Expiration Date', 1, 997),
(1332, 'Card Number', 1, 996),
(1333, 'Payment', 1, 995),
(1334, 'Order Notes', 1, 994),
(1335, 'Shipping Cost', 1, 993),
(1336, 'Tax', 1, 992),
(1337, 'Products Price', 1, 991),
(1338, 'SubTotal', 1, 990),
(1339, 'Products', 1, 989),
(1340, 'Shipping Method', 1, 988),
(1341, 'Billing Address', 1, 987),
(1342, 'Order', 1, 986),
(1343, 'Next', 1, 985),
(1344, 'Same as Shipping Address', 1, 984),
(1345, 'Billing Info', 1, 981),
(1346, 'Address', 1, 982),
(1347, 'Phone', 1, 983),
(1348, 'Already Memeber?', 1, 980),
(1349, 'Last Name', 1, 979),
(1350, 'First Name', 1, 978),
(1351, 'Create an Account', 1, 977),
(1352, 'Add new Address', 1, 976),
(1353, 'Please add your new shipping address for the futher processing of the your order', 1, 975),
(1354, 'Order Status', 1, 969),
(1355, 'Orders ID', 1, 970),
(1356, 'Product Price', 1, 971),
(1357, 'No. of Products', 1, 972),
(1358, 'Date', 1, 973),
(1359, 'Customer Address', 1, 974),
(1360, 'Customer Orders', 1, 968),
(1361, 'Change Password', 1, 967),
(1362, 'New Password', 1, 966),
(1363, 'Current Password', 1, 965),
(1364, 'Update', 1, 964),
(1365, 'Date of Birth', 1, 963),
(1366, 'Mobile', 1, 962),
(1367, 'My Account', 1, 961),
(1368, 'Likes', 1, 960),
(1369, 'Newest', 1, 959),
(1370, 'Top Seller', 1, 958),
(1371, 'Special', 1, 957),
(1372, 'Most Liked', 1, 956),
(1373, 'Cancel', 1, 955),
(1374, 'Sort Products', 1, 954),
(1375, 'Special Products', 1, 953),
(1376, 'Price : low - high', 1, 952),
(1377, 'Price : high - low', 1, 951),
(1378, 'Z - A', 1, 950),
(1379, 'A - Z', 1, 949),
(1380, 'All', 1, 948),
(1381, 'Explore More', 1, 947),
(1382, 'Note to the buyer', 1, 946),
(1383, 'Coupon', 1, 945),
(1384, 'coupon code', 1, 944),
(1385, 'Coupon Amount', 1, 943),
(1386, 'Coupon Code', 1, 942),
(1387, 'Food Categories', 1, 941),
(1388, 'Recipe of Day', 1, 940),
(1389, 'Top Dishes', 1, 939),
(1390, 'Skip', 1, 938),
(1391, 'Term and Services', 1, 937),
(1392, 'Privacy Policy', 1, 936),
(1393, 'Refund Policy', 1, 935),
(1394, 'Newest', 1, 934),
(1395, 'OUT OF STOCK', 1, 933),
(1396, 'Select Language', 1, 932),
(1397, 'Reset', 1, 931),
(1398, 'Shop', 1, 930),
(1399, 'Settings', 1, 929),
(1400, 'Enter keyword', 1, 928),
(1401, 'News', 1, 927),
(1402, 'Top Sellers', 1, 926),
(1403, 'Go Back', 1, 925),
(1404, 'Word Press Post Detail', 1, 924),
(1405, 'Explore', 1, 923),
(1406, 'Continue Adding', 1, 922),
(1407, 'Your wish List is empty', 1, 921),
(1408, 'Favourite', 1, 920),
(1409, 'Continue Shopping', 1, 919),
(1410, 'My Orders', 1, 918),
(1411, 'Thank you for shopping with us.', 1, 917),
(1412, 'Thank You', 1, 916),
(1413, 'Shipping method', 1, 915),
(1414, 'Sub Categories', 1, 914),
(1415, 'Main Categories', 1, 913),
(1416, 'Search', 1, 912),
(1417, 'Reset Filters', 1, 911),
(1418, 'No Products Found', 1, 910),
(1419, 'OFF', 1, 909),
(1420, 'Techincal details', 1, 908),
(1421, 'Product Description', 1, 907),
(1422, 'ADD TO CART', 1, 906),
(1423, 'Add to Cart', 1, 905),
(1424, 'In Stock', 1, 904),
(1425, 'Out of Stock', 1, 903),
(1426, 'New', 1, 902),
(1427, 'Product Details', 1, 901),
(1428, 'Shipping', 1, 900),
(1429, 'Sub Total', 1, 899),
(1430, 'Total', 1, 898),
(1431, 'Price Detail', 1, 897),
(1432, 'Order Detail', 1, 896),
(1433, 'Got It!', 1, 895),
(1434, 'Skip Intro', 1, 894),
(1435, 'Intro', 1, 893),
(1436, 'REMOVE', 1, 892),
(1437, 'Deals', 1, 891),
(1438, 'All Categories', 1, 890),
(1439, 'Most Liked', 1, 889),
(1440, 'Special Deals', 1, 888),
(1441, 'Top Seller', 1, 887),
(1442, 'Products are available.', 1, 886),
(1443, 'Recently Viewed', 1, 885),
(1444, 'Please connect to the internet', 1, 884),
(1445, 'Contact Us', 1, 881),
(1446, 'Name', 1, 882),
(1447, 'Your Message', 1, 883),
(1448, 'Categories', 1, 880),
(1449, 'About Us', 1, 879),
(1450, 'Send', 1, 878),
(1451, 'Forgot Password', 1, 877),
(1452, 'Register', 1, 876),
(1453, 'Password', 1, 875),
(1454, 'Email', 1, 874),
(1455, 'or', 1, 873),
(1456, 'Login with', 1, 872),
(1457, 'Creating an account means you\'re okay with shopify\'s Terms of Service, Privacy Policy', 1, 2),
(1458, 'I\'ve forgotten my password?', 1, 1),
(1459, '', 1, 0),
(1462, 'Creating an account means you’re okay with our', 1, 1033),
(1465, 'Login', 1, 1034),
(1468, 'Turn on/off Local Notifications', 1, 1035),
(1471, 'Turn on/off Notifications', 1, 1036),
(1474, 'Change Language', 1, 1037),
(1477, 'Official Website', 1, 1038),
(1480, 'Rate Us', 1, 1039),
(1483, 'Share', 1, 1040),
(1486, 'Edit Profile', 1, 1041),
(1489, 'A percentage discount for the entire cart', 1, 1042),
(1492, 'A fixed total discount for the entire cart', 1, 1043),
(1495, 'A fixed total discount for selected products only', 1, 1044),
(1498, 'A percentage discount for selected products only', 1, 1045),
(1501, 'Network Connected Reloading Data', 1, 1047),
(1503, 'Sort by', 1, 1048),
(1505, 'Flash Sale', 1, 1049),
(1507, 'ok', 1, 1050),
(1509, 'Number', 1, 1051),
(1511, 'Expire Month', 1, 1052),
(1513, 'Expire Year', 1, 1053),
(1515, 'Payment Method', 1, 1054),
(1517, 'Status', 1, 1055),
(1519, 'And', 1, 1056);

-- --------------------------------------------------------

--
-- Table structure for table `label_values`
--

DROP TABLE IF EXISTS `label_values`;
CREATE TABLE IF NOT EXISTS `label_values` (
  `label_value_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `label_value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language_id` int(11) NOT NULL,
  `label_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`label_value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
CREATE TABLE IF NOT EXISTS `languages` (
  `languages_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` char(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  `directory` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `direction` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`languages_id`),
  KEY `IDX_LANGUAGES_NAME` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`languages_id`, `name`, `code`, `image`, `directory`, `sort_order`, `direction`, `is_default`) VALUES
(1, 'English', 'en', '118', '', 1, 'ltr', 1);

-- --------------------------------------------------------

--
-- Table structure for table `liked_products`
--

DROP TABLE IF EXISTS `liked_products`;
CREATE TABLE IF NOT EXISTS `liked_products` (
  `like_id` int(11) NOT NULL AUTO_INCREMENT,
  `liked_products_id` int(11) NOT NULL,
  `liked_customers_id` int(11) NOT NULL,
  `date_liked` datetime DEFAULT NULL,
  PRIMARY KEY (`like_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `manage_min_max`
--

DROP TABLE IF EXISTS `manage_min_max`;
CREATE TABLE IF NOT EXISTS `manage_min_max` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `min_level` int(11) NOT NULL,
  `max_level` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `inventory_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `manage_min_max`
--

INSERT INTO `manage_min_max` (`id`, `min_level`, `max_level`, `products_id`, `inventory_id`) VALUES
(1, 3, 112, 3, '17'),
(2, 43, 334, 7, '0');

-- --------------------------------------------------------

--
-- Table structure for table `manage_role`
--

DROP TABLE IF EXISTS `manage_role`;
CREATE TABLE IF NOT EXISTS `manage_role` (
  `manage_role_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_types_id` tinyint(1) NOT NULL DEFAULT '0',
  `dashboard_view` tinyint(1) NOT NULL DEFAULT '0',
  `manufacturer_view` tinyint(1) NOT NULL DEFAULT '0',
  `manufacturer_create` tinyint(1) NOT NULL DEFAULT '0',
  `manufacturer_update` tinyint(1) NOT NULL DEFAULT '0',
  `manufacturer_delete` tinyint(1) NOT NULL DEFAULT '0',
  `categories_view` tinyint(1) NOT NULL DEFAULT '0',
  `categories_create` tinyint(1) NOT NULL DEFAULT '0',
  `categories_update` tinyint(1) NOT NULL DEFAULT '0',
  `categories_delete` tinyint(1) NOT NULL DEFAULT '0',
  `products_view` tinyint(1) NOT NULL DEFAULT '0',
  `products_create` tinyint(1) NOT NULL DEFAULT '0',
  `products_update` tinyint(1) NOT NULL DEFAULT '0',
  `products_delete` tinyint(1) NOT NULL DEFAULT '0',
  `news_view` tinyint(1) NOT NULL DEFAULT '0',
  `news_create` tinyint(1) NOT NULL DEFAULT '0',
  `news_update` tinyint(1) NOT NULL DEFAULT '0',
  `news_delete` tinyint(1) NOT NULL DEFAULT '0',
  `customers_view` tinyint(1) NOT NULL DEFAULT '0',
  `customers_create` tinyint(1) NOT NULL DEFAULT '0',
  `customers_update` tinyint(1) NOT NULL DEFAULT '0',
  `customers_delete` tinyint(1) NOT NULL DEFAULT '0',
  `tax_location_view` tinyint(1) NOT NULL DEFAULT '0',
  `tax_location_create` tinyint(1) NOT NULL DEFAULT '0',
  `tax_location_update` tinyint(1) NOT NULL DEFAULT '0',
  `tax_location_delete` tinyint(1) NOT NULL DEFAULT '0',
  `coupons_view` tinyint(1) NOT NULL DEFAULT '0',
  `coupons_create` tinyint(1) NOT NULL DEFAULT '0',
  `coupons_update` tinyint(1) NOT NULL DEFAULT '0',
  `coupons_delete` tinyint(1) NOT NULL DEFAULT '0',
  `notifications_view` tinyint(1) NOT NULL DEFAULT '0',
  `notifications_send` tinyint(1) NOT NULL DEFAULT '0',
  `orders_view` tinyint(1) NOT NULL DEFAULT '0',
  `orders_confirm` tinyint(1) NOT NULL DEFAULT '0',
  `shipping_methods_view` tinyint(1) NOT NULL DEFAULT '0',
  `shipping_methods_update` tinyint(1) NOT NULL DEFAULT '0',
  `payment_methods_view` tinyint(1) NOT NULL DEFAULT '0',
  `payment_methods_update` tinyint(1) NOT NULL DEFAULT '0',
  `reports_view` tinyint(1) NOT NULL DEFAULT '0',
  `website_setting_view` tinyint(1) NOT NULL DEFAULT '0',
  `website_setting_update` tinyint(1) NOT NULL DEFAULT '0',
  `application_setting_view` tinyint(1) NOT NULL DEFAULT '0',
  `application_setting_update` tinyint(1) NOT NULL DEFAULT '0',
  `general_setting_view` tinyint(1) NOT NULL DEFAULT '0',
  `general_setting_update` tinyint(1) NOT NULL DEFAULT '0',
  `manage_admins_view` tinyint(1) NOT NULL DEFAULT '0',
  `manage_admins_create` tinyint(1) NOT NULL DEFAULT '0',
  `manage_admins_update` tinyint(1) NOT NULL DEFAULT '0',
  `manage_admins_delete` tinyint(1) NOT NULL DEFAULT '0',
  `language_view` tinyint(1) NOT NULL DEFAULT '0',
  `language_create` tinyint(1) NOT NULL DEFAULT '0',
  `language_update` tinyint(1) NOT NULL DEFAULT '0',
  `language_delete` tinyint(1) NOT NULL DEFAULT '0',
  `profile_view` tinyint(1) NOT NULL DEFAULT '0',
  `profile_update` tinyint(1) NOT NULL DEFAULT '0',
  `admintype_view` tinyint(1) NOT NULL DEFAULT '0',
  `admintype_create` tinyint(1) NOT NULL DEFAULT '0',
  `admintype_update` tinyint(1) NOT NULL DEFAULT '0',
  `admintype_delete` tinyint(1) NOT NULL DEFAULT '0',
  `manage_admins_role` tinyint(1) NOT NULL DEFAULT '0',
  `add_media` tinyint(1) NOT NULL DEFAULT '0',
  `edit_media` tinyint(1) NOT NULL DEFAULT '0',
  `view_media` tinyint(1) NOT NULL DEFAULT '0',
  `delete_media` tinyint(1) NOT NULL DEFAULT '0',
  `edit_management` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`manage_role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `manage_role`
--

INSERT INTO `manage_role` (`manage_role_id`, `user_types_id`, `dashboard_view`, `manufacturer_view`, `manufacturer_create`, `manufacturer_update`, `manufacturer_delete`, `categories_view`, `categories_create`, `categories_update`, `categories_delete`, `products_view`, `products_create`, `products_update`, `products_delete`, `news_view`, `news_create`, `news_update`, `news_delete`, `customers_view`, `customers_create`, `customers_update`, `customers_delete`, `tax_location_view`, `tax_location_create`, `tax_location_update`, `tax_location_delete`, `coupons_view`, `coupons_create`, `coupons_update`, `coupons_delete`, `notifications_view`, `notifications_send`, `orders_view`, `orders_confirm`, `shipping_methods_view`, `shipping_methods_update`, `payment_methods_view`, `payment_methods_update`, `reports_view`, `website_setting_view`, `website_setting_update`, `application_setting_view`, `application_setting_update`, `general_setting_view`, `general_setting_update`, `manage_admins_view`, `manage_admins_create`, `manage_admins_update`, `manage_admins_delete`, `language_view`, `language_create`, `language_update`, `language_delete`, `profile_view`, `profile_update`, `admintype_view`, `admintype_create`, `admintype_update`, `admintype_delete`, `manage_admins_role`, `add_media`, `edit_media`, `view_media`, `delete_media`, `edit_management`) VALUES
(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `manufacturers`
--

DROP TABLE IF EXISTS `manufacturers`;
CREATE TABLE IF NOT EXISTS `manufacturers` (
  `manufacturers_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `manufacturer_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `manufacturer_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `manufacturers_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_added` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_modified` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `manufacturers_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`manufacturers_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `manufacturers_info`
--

DROP TABLE IF EXISTS `manufacturers_info`;
CREATE TABLE IF NOT EXISTS `manufacturers_info` (
  `manufacturers_id` int(11) NOT NULL,
  `languages_id` int(11) NOT NULL,
  `manufacturers_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url_clicked` int(11) NOT NULL DEFAULT '0',
  `date_last_click` datetime DEFAULT NULL,
  PRIMARY KEY (`manufacturers_id`,`languages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
CREATE TABLE IF NOT EXISTS `menus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) DEFAULT NULL,
  `sub_sort_order` int(11) DEFAULT NULL,
  `parent_id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `external_link` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `page_id` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `sort_order`, `sub_sort_order`, `parent_id`, `type`, `external_link`, `link`, `page_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 0, 1, NULL, '/', NULL, 1, NULL, NULL),
(2, 2, NULL, 0, 1, NULL, 'shop', NULL, 1, NULL, NULL),
(3, 4, NULL, 0, 1, NULL, '#', NULL, 1, NULL, NULL),
(18, NULL, 4, 3, 1, NULL, '/page?name=about-us', 1, 1, NULL, NULL),
(19, NULL, 2, 3, 1, NULL, '/page?name=privacy-policy', 1, 1, NULL, NULL),
(20, 5, NULL, 0, 1, NULL, '#', NULL, 1, NULL, NULL),
(21, NULL, 1, 20, 1, NULL, 'news?category=demo', 1, 1, NULL, NULL),
(22, 6, NULL, 0, 1, NULL, 'http://localhost:8000/contact', 1, 1, NULL, NULL),
(24, NULL, 3, 3, 1, NULL, 'page?name=about-us', 1, 1, NULL, NULL),
(25, NULL, 1, 3, 1, NULL, 'page?name=privacy-policy', 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `menu_translation`
--

DROP TABLE IF EXISTS `menu_translation`;
CREATE TABLE IF NOT EXISTS `menu_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `menu_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu_translation`
--

INSERT INTO `menu_translation` (`id`, `menu_id`, `language_id`, `menu_name`) VALUES
(2, 1, 1, 'Home'),
(3, 1, 2, 'Homee'),
(11, 2, 1, 'SHOP'),
(12, 2, 2, 'SHOP'),
(25, 3, 1, 'INFO PAGES'),
(26, 3, 2, 'INFO PAGES'),
(33, 18, 1, 'About Us'),
(34, 18, 2, 'About Us'),
(35, 19, 1, 'Privacy Policy'),
(36, 19, 2, 'Privacy Policy'),
(37, 20, 1, 'News'),
(38, 20, 2, 'News'),
(39, 21, 1, 'Demo'),
(40, 21, 2, 'Demo'),
(41, 22, 1, 'Contact Us'),
(42, 22, 2, 'Contact Us'),
(45, 24, 1, 'Sub Menu 1'),
(46, 24, 2, 'Sub Menu 1'),
(47, 25, 1, 'Sub Menu 12'),
(48, 25, 2, 'Sub Menu 12');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_09_24_122557_create_action_recorder_table', 1),
(2, '2019_09_24_122557_create_address_book_table', 1),
(3, '2019_09_24_122557_create_address_format_table', 1),
(4, '2019_09_24_122557_create_alert_settings_table', 1),
(5, '2019_09_24_122557_create_api_calls_list_table', 1),
(6, '2019_09_24_122557_create_banners_history_table', 1),
(7, '2019_09_24_122557_create_banners_table', 1),
(8, '2019_09_24_122557_create_block_ips_table', 1),
(9, '2019_09_24_122557_create_categories_description_table', 1),
(10, '2019_09_24_122557_create_categories_role_table', 1),
(11, '2019_09_24_122557_create_categories_table', 1),
(12, '2019_09_24_122557_create_compare_table', 1),
(13, '2019_09_24_122557_create_constant_banners_table', 1),
(14, '2019_09_24_122557_create_countries_table', 1),
(15, '2019_09_24_122557_create_coupons_table', 1),
(16, '2019_09_24_122557_create_currencies_table', 1),
(17, '2019_09_24_122557_create_currency_record_table', 1),
(18, '2019_09_24_122557_create_current_theme_table', 1),
(19, '2019_09_24_122557_create_customers_basket_attributes_table', 1),
(20, '2019_09_24_122557_create_customers_basket_table', 1),
(21, '2019_09_24_122557_create_customers_info_table', 1),
(22, '2019_09_24_122557_create_customers_table', 1),
(23, '2019_09_24_122557_create_devices_table', 1),
(24, '2019_09_24_122557_create_fedex_shipping_table', 1),
(25, '2019_09_24_122557_create_flash_sale_table', 1),
(26, '2019_09_24_122557_create_flate_rate_table', 1),
(27, '2019_09_24_122557_create_front_end_theme_content_table', 1),
(28, '2019_09_24_122557_create_geo_zones_table', 1),
(29, '2019_09_24_122557_create_http_call_record_table', 1),
(30, '2019_09_24_122557_create_hula_our_infos_table', 1),
(31, '2019_09_24_122557_create_image_categories_table', 1),
(32, '2019_09_24_122557_create_images_table', 1),
(33, '2019_09_24_122557_create_inventory_detail_table', 1),
(34, '2019_09_24_122557_create_inventory_table', 1),
(35, '2019_09_24_122557_create_label_value_table', 1),
(36, '2019_09_24_122557_create_label_values_table', 1),
(37, '2019_09_24_122557_create_labels_table', 1),
(38, '2019_09_24_122557_create_languages_table', 1),
(39, '2019_09_24_122557_create_liked_products_table', 1),
(40, '2019_09_24_122557_create_manage_min_max_table', 1),
(41, '2019_09_24_122557_create_manage_role_table', 1),
(42, '2019_09_24_122557_create_manufacturers_info_table', 1),
(43, '2019_09_24_122557_create_manufacturers_table', 1),
(44, '2019_09_24_122557_create_news_categories_description_table', 1),
(45, '2019_09_24_122557_create_news_categories_table', 1),
(46, '2019_09_24_122557_create_news_description_table', 1),
(47, '2019_09_24_122557_create_news_table', 1),
(48, '2019_09_24_122557_create_news_to_news_categories_table', 1),
(49, '2019_09_24_122557_create_newsletters_table', 1),
(50, '2019_09_24_122557_create_orders_products_attributes_table', 1),
(51, '2019_09_24_122557_create_orders_products_download_table', 1),
(52, '2019_09_24_122557_create_orders_products_table', 1),
(53, '2019_09_24_122557_create_orders_status_description_table', 1),
(54, '2019_09_24_122557_create_orders_status_history_table', 1),
(55, '2019_09_24_122557_create_orders_status_table', 1),
(56, '2019_09_24_122557_create_orders_table', 1),
(57, '2019_09_24_122557_create_orders_total_table', 1),
(58, '2019_09_24_122557_create_pages_description_table', 1),
(59, '2019_09_24_122557_create_pages_table', 1),
(60, '2019_09_24_122557_create_payment_description_table', 1),
(61, '2019_09_24_122557_create_payment_methods_detail_table', 1),
(62, '2019_09_24_122557_create_payment_methods_table', 1),
(63, '2019_09_24_122557_create_permissions_table', 1),
(64, '2019_09_24_122557_create_products_attributes_download_table', 1),
(65, '2019_09_24_122557_create_products_attributes_table', 1),
(66, '2019_09_24_122557_create_products_description_table', 1),
(67, '2019_09_24_122557_create_products_images_table', 1),
(68, '2019_09_24_122557_create_products_notifications_table', 1),
(69, '2019_09_24_122557_create_products_options_descriptions_table', 1),
(70, '2019_09_24_122557_create_products_options_table', 1),
(71, '2019_09_24_122557_create_products_options_values_descriptions_table', 1),
(72, '2019_09_24_122557_create_products_options_values_table', 1),
(73, '2019_09_24_122557_create_products_shipping_rates_table', 1),
(74, '2019_09_24_122557_create_products_table', 1),
(75, '2019_09_24_122557_create_products_to_categories_table', 1),
(76, '2019_09_24_122557_create_reviews_description_table', 1),
(77, '2019_09_24_122557_create_reviews_table', 1),
(78, '2019_09_24_122557_create_sec_directory_whitelist_table', 1),
(79, '2019_09_24_122557_create_sessions_table', 1),
(80, '2019_09_24_122557_create_settings_table', 1),
(81, '2019_09_24_122557_create_shipping_description_table', 1),
(82, '2019_09_24_122557_create_shipping_methods_table', 1),
(83, '2019_09_24_122557_create_sliders_images_table', 1),
(84, '2019_09_24_122557_create_specials_table', 1),
(85, '2019_09_24_122557_create_tax_class_table', 1),
(86, '2019_09_24_122557_create_tax_rates_table', 1),
(87, '2019_09_24_122557_create_units_descriptions_table', 1),
(88, '2019_09_24_122557_create_units_table', 1),
(89, '2019_09_24_122557_create_ups_shipping_table', 1),
(90, '2019_09_24_122557_create_user_to_address_table', 1),
(91, '2019_09_24_122557_create_user_types_table', 1),
(92, '2019_09_24_122557_create_users_table', 1),
(93, '2019_09_24_122557_create_whos_online_table', 1),
(94, '2019_09_24_122557_create_zones_table', 1),
(95, '2019_09_24_122557_create_zones_to_geo_zones_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `news_id` int(11) NOT NULL AUTO_INCREMENT,
  `news_image` text COLLATE utf8mb4_unicode_ci,
  `news_date_added` datetime NOT NULL,
  `news_last_modified` datetime DEFAULT NULL,
  `news_status` tinyint(1) NOT NULL,
  `is_feature` tinyint(1) NOT NULL DEFAULT '0',
  `news_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`news_id`),
  KEY `idx_products_date_added` (`news_date_added`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`news_id`, `news_image`, `news_date_added`, `news_last_modified`, `news_status`, `is_feature`, `news_slug`, `created_at`, `updated_at`) VALUES
(1, '84', '0000-00-00 00:00:00', NULL, 1, 0, 'lorem-ipsum-dolor-sit-ame', '2019-12-10 03:02:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

DROP TABLE IF EXISTS `newsletters`;
CREATE TABLE IF NOT EXISTS `newsletters` (
  `newsletters_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `module` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_added` datetime NOT NULL,
  `date_sent` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `locked` int(11) DEFAULT '0',
  PRIMARY KEY (`newsletters_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `news_categories`
--

DROP TABLE IF EXISTS `news_categories`;
CREATE TABLE IF NOT EXISTS `news_categories` (
  `categories_id` int(11) NOT NULL AUTO_INCREMENT,
  `categories_image` text COLLATE utf8mb4_unicode_ci,
  `categories_icon` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `sort_order` int(11) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `news_categories_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`categories_id`),
  KEY `idx_categories_parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news_categories`
--

INSERT INTO `news_categories` (`categories_id`, `categories_image`, `categories_icon`, `parent_id`, `sort_order`, `date_added`, `last_modified`, `news_categories_slug`, `categories_status`, `created_at`, `updated_at`) VALUES
(1, '90', '', 0, 1, NULL, NULL, 'demo', 1, '2019-12-10 03:01:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `news_categories_description`
--

DROP TABLE IF EXISTS `news_categories_description`;
CREATE TABLE IF NOT EXISTS `news_categories_description` (
  `categories_description_id` int(11) NOT NULL AUTO_INCREMENT,
  `categories_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL DEFAULT '1',
  `categories_name` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`categories_description_id`),
  KEY `idx_categories_name` (`categories_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news_categories_description`
--

INSERT INTO `news_categories_description` (`categories_description_id`, `categories_id`, `language_id`, `categories_name`) VALUES
(1, 1, 1, 'Demo'),
(2, 1, 2, 'أراض فقد, عل هذه بحشد العدّ الهج');

-- --------------------------------------------------------

--
-- Table structure for table `news_description`
--

DROP TABLE IF EXISTS `news_description`;
CREATE TABLE IF NOT EXISTS `news_description` (
  `language_id` int(11) NOT NULL DEFAULT '1',
  `news_name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `news_id` int(11) NOT NULL,
  `news_description` text COLLATE utf8mb4_unicode_ci,
  `news_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `news_viewed` int(11) DEFAULT '0',
  KEY `products_name` (`news_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news_description`
--

INSERT INTO `news_description` (`language_id`, `news_name`, `news_id`, `news_description`, `news_url`, `news_viewed`) VALUES
(1, 'Lorem ipsum dolor sit ame', 1, '<p>dsds</p>', '0', 0),
(2, 'أراض فقد, عل هذه بحشد العدّ الهجوم', 1, '<p>dsds</p>', '0', 0);

-- --------------------------------------------------------

--
-- Table structure for table `news_to_news_categories`
--

DROP TABLE IF EXISTS `news_to_news_categories`;
CREATE TABLE IF NOT EXISTS `news_to_news_categories` (
  `news_id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`news_id`,`categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news_to_news_categories`
--

INSERT INTO `news_to_news_categories` (`news_id`, `categories_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2019-12-10 03:02:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `orders_id` int(11) NOT NULL AUTO_INCREMENT,
  `total_tax` decimal(7,2) NOT NULL,
  `customers_id` int(11) NOT NULL,
  `customers_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customers_company` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customers_street_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customers_suburb` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customers_city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customers_postcode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customers_state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customers_country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customers_telephone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customers_address_format_id` int(11) DEFAULT NULL,
  `delivery_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_company` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_street_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_suburb` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_postcode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_address_format_id` int(11) DEFAULT NULL,
  `billing_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_company` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_street_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_suburb` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_postcode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_address_format_id` int(11) NOT NULL,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc_type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc_owner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc_number` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc_expires` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_purchased` datetime DEFAULT NULL,
  `orders_date_finished` datetime DEFAULT NULL,
  `currency` char(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_value` decimal(14,6) DEFAULT NULL,
  `order_price` decimal(10,2) NOT NULL,
  `shipping_cost` decimal(10,2) NOT NULL,
  `shipping_method` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_duration` int(11) DEFAULT NULL,
  `order_information` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_seen` tinyint(1) NOT NULL DEFAULT '0',
  `coupon_code` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_amount` int(11) NOT NULL,
  `exclude_product_ids` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_categories` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excluded_product_categories` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `free_shipping` tinyint(1) NOT NULL DEFAULT '0',
  `product_ids` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordered_source` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1: Website, 2: App',
  `delivery_phone` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_phone` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_id` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`orders_id`),
  KEY `idx_orders_customers_id` (`customers_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orders_id`, `total_tax`, `customers_id`, `customers_name`, `customers_company`, `customers_street_address`, `customers_suburb`, `customers_city`, `customers_postcode`, `customers_state`, `customers_country`, `customers_telephone`, `email`, `customers_address_format_id`, `delivery_name`, `delivery_company`, `delivery_street_address`, `delivery_suburb`, `delivery_city`, `delivery_postcode`, `delivery_state`, `delivery_country`, `delivery_address_format_id`, `billing_name`, `billing_company`, `billing_street_address`, `billing_suburb`, `billing_city`, `billing_postcode`, `billing_state`, `billing_country`, `billing_address_format_id`, `payment_method`, `cc_type`, `cc_owner`, `cc_number`, `cc_expires`, `last_modified`, `date_purchased`, `orders_date_finished`, `currency`, `currency_value`, `order_price`, `shipping_cost`, `shipping_method`, `shipping_duration`, `order_information`, `is_seen`, `coupon_code`, `coupon_amount`, `exclude_product_ids`, `product_categories`, `excluded_product_categories`, `free_shipping`, `product_ids`, `ordered_source`, `delivery_phone`, `billing_phone`, `transaction_id`, `created_at`, `updated_at`) VALUES
(1, '0.00', 4, 'Rehan Tariq', '', 'hgfdsfd', '', 'FDSF', '569969', 'other', 'Bahrain', '', 'customer@ecommerce.com', 0, 'Rehan Tariq', '', 'hgfdsfd', '', 'FDSF', '569969', 'other', 'Bahrain', 0, 'Rehan Tariq', '', 'hgfdsfd', '', 'FDSF', '569969', 'other', 'Bahrain', 0, 'Cash on Delivery', '', '', '', '', '2019-10-29 09:02:30', '2019-10-29 09:02:30', '0000-00-00 00:00:00', '$', '0.000000', '224.00', '11.00', 'Flat Rate', 0, '[]', 1, '', 0, '', '', '', 0, '', 1, '+923017232211', '+923017232211', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, '0.00', 9, 'Rehan Tariq', '', 'hgfdsfd', '', 'FDSF', '569969', 'other', 'Bahrain', '', 'bintariq11@gmail.com', 0, 'Rehan Tariq', '', 'hgfdsfd', '', 'FDSF', '569969', 'other', 'Bahrain', 0, 'Rehan Tariq', '', 'hgfdsfd', '', 'FDSF', '569969', 'other', 'Bahrain', 0, 'Cash on Delivery', '', '', '', '', '2019-11-18 07:21:25', '2019-11-18 07:21:25', '0000-00-00 00:00:00', '$', '0.000000', '224.00', '11.00', 'Flat Rate', 0, '[]', 0, '', 0, '', '', '', 0, '', 1, '03017232211', '03017232211', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, '0.00', 9, 'Rehan Tariq', '', 'hgfdsfd', '', 'FDSF', '569969', 'other', 'Bahrain', '', 'bintariq11@gmail.com', 0, 'Rehan Tariq', '', 'hgfdsfd', '', 'FDSF', '569969', 'other', 'Bahrain', 0, 'Rehan Tariq', '', 'hgfdsfd', '', 'FDSF', '569969', 'other', 'Bahrain', 0, 'Cash on Delivery', '', '', '', '', '2019-11-18 07:33:59', '2019-11-18 07:33:59', '0000-00-00 00:00:00', '$', '0.000000', '224.00', '11.00', 'Flat Rate', 0, '[]', 0, '', 0, '', '', '', 0, '', 1, '03017232211', '03017232211', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, '0.00', 9, 'Rehan Tariq', '', 'dd', '', 'FDSF', '569969', 'other', 'Bahrain', '', 'bintariq11@gmail.com', 0, 'Rehan Tariq', '', 'dd', '', 'FDSF', '569969', 'other', 'Bahrain', 0, 'Rehan Tariq', '', 'dd', '', 'FDSF', '569969', 'other', 'Bahrain', 0, 'Cash on Delivery', '', '', '', '', '2019-11-18 07:39:54', '2019-11-18 07:39:54', '0000-00-00 00:00:00', '$', '0.000000', '650.00', '11.00', 'Flat Rate', 0, '[]', 0, '', 0, '', '', '', 0, '', 1, '03017232211', '03017232211', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, '0.00', 9, 'Rehan Tariq', '', 'hgfdsfd', '', 'FDSF', '569969', 'other', 'Bahrain', '', 'bintariq11@gmail.com', 0, 'Rehan Tariq', '', 'hgfdsfd', '', 'FDSF', '569969', 'other', 'Bahrain', 0, 'Rehan Tariq', '', 'hgfdsfd', '', 'FDSF', '569969', 'other', 'Bahrain', 0, 'Cash on Delivery', '', '', '', '', '2019-11-18 07:47:56', '2019-11-18 07:47:56', '0000-00-00 00:00:00', '$', '0.000000', '224.00', '11.00', 'Flat Rate', 0, '[]', 0, '', 0, '', '', '', 0, '', 1, '03017232211', '03017232211', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, '0.00', 10, 'Rehan Tariq', '', 'hgfdsfd', '', 'FDSF', '569969', 'other', 'Bahrain', '', 'test123456@gmail.com', 0, 'Rehan Tariq', '', 'hgfdsfd', '', 'FDSF', '569969', 'other', 'Bahrain', 0, 'Rehan Tariq', '', 'hgfdsfd', '', 'FDSF', '569969', 'other', 'Bahrain', 0, 'Cash on Delivery', '', '', '', '', '2019-11-18 07:58:43', '2019-11-18 07:58:43', '0000-00-00 00:00:00', '$', '0.000000', '435.00', '0.00', 'Flat Rate', 0, '[]', 0, '', 0, '', '', '', 0, '', 1, '03017232211', '03017232211', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, '0.00', 10, 'Rehan Tariq', '', 'hgfdsfd', '', 'FDSF', '569969', 'other', 'Argentina', '', 'test123456@gmail.com', 0, 'Rehan Tariq', '', 'hgfdsfd', '', 'FDSF', '569969', 'other', 'Argentina', 0, 'Rehan Tariq', '', 'hgfdsfd', '', 'FDSF', '569969', 'other', 'Argentina', 0, 'Cash on Delivery', '', '', '', '', '2019-11-18 07:59:36', '2019-11-18 07:59:36', '0000-00-00 00:00:00', '$', '0.000000', '224.00', '11.00', 'Flat Rate', 0, '[]', 0, '', 0, '', '', '', 0, '', 1, '03017232211', '03017232211', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, '0.00', 34, 'nbl amd', '', 'Plot 252, Block A People\'s Colony No 1, Faisalabad, Punjab, Pakistan', 'Chidambaram', 'fsb', '38000', 'other', 'India', '03167418077', 'nbl@gmail.com', 0, 'nbl amd', '', 'Plot 252, Block A People\'s Colony No 1, Faisalabad, Punjab, Pakistan', 'Chidambaram', 'fsb', '38000', 'other', 'India', 0, 'nblss amd', '', 'Plot 252, Block A People\'s Colony No 1, Faisalabad, Punjab, Pakistan', 'Chidambaram', 'fsb', '38000', 'other', 'India', 0, 'Paypal', '', '', '', '', '2019-11-18 12:13:34', '2019-11-18 12:13:34', '0000-00-00 00:00:00', 'USD', '2019.000000', '153.99', '130.00', 'Shipping Price', 0, 'null', 0, '', 0, '', '', '', 0, '', 2, '+9203167418077', '+9203167418077', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, '0.00', 11, 'nbl amd', '', 'Plot 252, Block A People\'s Colony No 1, Faisalabad, Punjab, Pakistan', 'Chidambaram', 'fsb', '38000', 'other', 'India', '03167418077', 'nbl@gmail.com', 0, 'nbl amd', '', 'Plot 252, Block A People\'s Colony No 1, Faisalabad, Punjab, Pakistan', 'Chidambaram', 'fsb', '38000', 'other', 'India', 0, 'nblss amd', '', 'Plot 252, Block A People\'s Colony No 1, Faisalabad, Punjab, Pakistan', 'Chidambaram', 'fsb', '38000', 'other', 'India', 0, 'Paypal', '', '', '', '', '2019-11-18 12:14:40', '2019-11-18 12:14:40', '0000-00-00 00:00:00', 'USD', '2019.000000', '153.99', '130.00', 'Shipping Price', 0, 'null', 0, '', 0, '', '', '', 0, '', 2, '+9203167418077', '+9203167418077', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, '0.00', 11, 'nbl amd', '', 'Plot 252, Block A People\'s Colony No 1, Faisalabad, Punjab, Pakistan', 'Chidambaram', 'fsb', '38000', 'other', 'India', '03167418077', 'nbl@gmail.com', 0, 'nbl amd', '', 'Plot 252, Block A People\'s Colony No 1, Faisalabad, Punjab, Pakistan', 'Chidambaram', 'fsb', '38000', 'other', 'India', 0, 'nblss amd', '', 'Plot 252, Block A People\'s Colony No 1, Faisalabad, Punjab, Pakistan', 'Chidambaram', 'fsb', '38000', 'other', 'India', 0, 'Paypal', '', '', '', '', '2019-11-18 12:14:49', '2019-11-18 12:14:49', '0000-00-00 00:00:00', 'USD', '2019.000000', '153.99', '130.00', 'Shipping Price', 0, 'null', 0, '', 0, '', '', '', 0, '', 2, '+9203167418077', '+9203167418077', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, '0.00', 12, 'nbl amd', '', 'Plot 252, Block A People\'s Colony No 1, Faisalabad, Punjab, Pakistan', 'Chidambaram', 'fsb', '38000', 'other', 'India', '03167418077', 'nblxx@gmail.com', 0, 'nbl amd', '', 'Plot 252, Block A People\'s Colony No 1, Faisalabad, Punjab, Pakistan', 'Chidambaram', 'fsb', '38000', 'other', 'India', 0, 'nblss amd', '', 'Plot 252, Block A People\'s Colony No 1, Faisalabad, Punjab, Pakistan', 'Chidambaram', 'fsb', '38000', 'other', 'India', 0, 'Paypal', '', '', '', '', '2019-11-18 12:16:23', '2019-11-18 12:16:23', '0000-00-00 00:00:00', 'USD', '2019.000000', '153.99', '130.00', 'Shipping Price', 0, 'null', 0, '', 0, '', '', '', 0, '', 2, '+9203167418077', '+9203167418077', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, '0.00', 13, 'Rehan Tariq', NULL, 'hgfdsfd', '', 'FDSF', '569969', 'other', 'Bahrain', '', 'demo@ecommerce.com', NULL, 'Rehan Tariq', NULL, 'hgfdsfd', '', 'FDSF', '569969', 'other', 'Bahrain', NULL, 'Rehan Tariq', NULL, 'hgfdsfd', '', 'FDSF', '569969', 'other', 'Bahrain', 0, 'razor_pay', '', '', '', '', '2019-12-03 06:25:31', '2019-12-03 06:25:31', NULL, '$', NULL, '134.00', '11.00', 'Flat Rate', NULL, 'null', 0, '', 0, '', '', '', 0, '', 1, '03017232211', '03017232211', NULL, NULL, NULL),
(13, '0.00', 13, 'Rehan Tariq', NULL, 'hgfdsfd', '', 'FDSF', '569969', 'other', 'Bahrain', '', 'demo@ecommerce.com', NULL, 'Rehan Tariq', NULL, 'hgfdsfd', '', 'FDSF', '569969', 'other', 'Bahrain', NULL, 'Rehan Tariq', NULL, 'hgfdsfd', '', 'FDSF', '569969', 'other', 'Bahrain', 0, 'razor_pay', '', '', '', '', '2019-12-03 06:32:00', '2019-12-03 06:32:00', NULL, '$', NULL, '44503.00', '11.00', 'Flat Rate', NULL, '\"\"', 0, '', 0, '', '', '', 0, '', 1, '03017232211', '03017232211', NULL, NULL, NULL),
(14, '0.00', 13, 'gfdg gfdgdf', NULL, 'gfdgfdgfdg', '', 'gfdgfdgfd', '354144', 'WI', 'Austria', '', 'demo@ecommerce.com', NULL, 'gfdg gfdgdf', NULL, 'gfdgfdgfdg', '', 'gfdgfdgfd', '354144', 'WI', 'Austria', NULL, 'gfdg gfdgdf', NULL, 'gfdgfdgfdg', '', 'gfdgfdgfd', '354144', 'WI', 'Austria', 0, 'razor_pay', '', '', '', '', '2019-12-03 07:30:35', '2019-12-03 07:30:35', NULL, '$', NULL, '380.00', '11.00', 'Flat Rate', NULL, '\"\"', 0, '', 0, '', '', '', 0, '', 1, '03017232211', '03017232211', NULL, NULL, NULL),
(15, '0.00', 13, 'Rehan Tariq', NULL, 'hgfdsfd', '', 'FDSF', '569969', 'other', 'Bahrain', '', 'demo@ecommerce.com', NULL, 'Rehan Tariq', NULL, 'hgfdsfd', '', 'FDSF', '569969', 'other', 'Bahrain', NULL, 'Rehan Tariq', NULL, 'hgfdsfd', '', 'FDSF', '569969', 'other', 'Bahrain', 0, 'pay_tm', '', '', '', '', '2019-12-05 08:39:40', '2019-12-05 08:39:40', NULL, '$', NULL, '134.00', '11.00', 'Flat Rate', NULL, 'null', 0, '', 0, '', '', '', 0, '', 1, '03017232211', '03017232211', NULL, NULL, NULL),
(16, '0.00', 13, 'Rehan Tariq', NULL, 'hgfdsfd', '', 'FDSF', '569969', 'other', 'Argentina', '', 'demo@ecommerce.com', NULL, 'Rehan Tariq', NULL, 'hgfdsfd', '', 'FDSF', '569969', 'other', 'Argentina', NULL, 'Rehan Tariq', NULL, 'hgfdsfd', '', 'FDSF', '569969', 'other', 'Argentina', 0, 'Cash on Delivery', '', '', '', '', '2019-12-05 08:45:06', '2019-12-05 08:45:06', NULL, '$', NULL, '870.00', '0.00', 'Flat Rate', NULL, '[]', 0, '', 0, '', '', '', 0, '', 1, '03017232211', '03017232211', NULL, NULL, NULL),
(17, '0.00', 13, 'Rehan Tariq', NULL, 'hgfdsfd', '', 'FDSF', '569969', 'other', 'Bahrain', '', 'demo@ecommerce.com', NULL, 'Rehan Tariq', NULL, 'hgfdsfd', '', 'FDSF', '569969', 'other', 'Bahrain', NULL, 'Rehan Tariq', NULL, 'hgfdsfd', '', 'FDSF', '569969', 'other', 'Bahrain', 0, 'pay_tm', '', '', '', '', '2019-12-05 08:47:20', '2019-12-05 08:47:20', NULL, '$', NULL, '233.00', '11.00', 'Flat Rate', NULL, '\"\"', 0, '', 0, '', '', '', 0, '', 1, '03017232211', '03017232211', NULL, NULL, NULL),
(18, '0.00', 13, 'gfdg gfdgdf', NULL, 'vfdvdvdfv', '', 'gfdgfdgfd', '354144', 'WI', 'Austria', '', 'demo@ecommerce.com', NULL, 'gfdg gfdgdf', NULL, 'vfdvdvdfv', '', 'gfdgfdgfd', '354144', 'WI', 'Austria', NULL, 'gfdg gfdgdf', NULL, 'vfdvdvdfv', '', 'gfdgfdgfd', '354144', 'WI', 'Austria', 0, 'pay_tm', '', '', '', '', '2019-12-11 07:52:41', '2019-12-11 07:52:41', NULL, '$', NULL, '224.00', '11.00', 'Flat Rate', NULL, 'null', 0, '', 0, '', '', '', 0, '', 1, '03017232211', '03017232211', NULL, NULL, NULL),
(19, '0.00', 15, 'gfdg gfdgdf', NULL, 'vfdvdvdfv', '', 'gfdgfdgfd', '354144', 'WI', 'Austria', '', 'demo@ecommerce.com', NULL, 'gfdg gfdgdf', NULL, 'vfdvdvdfv', '', 'gfdgfdgfd', '354144', 'WI', 'Austria', NULL, 'gfdg gfdgdf', NULL, 'vfdvdvdfv', '', 'gfdgfdgfd', '354144', 'WI', 'Austria', 0, 'Cash on Delivery', '', '', '', '', '2020-01-01 07:24:00', '2020-01-01 07:24:00', NULL, '$', NULL, '444.00', '0.00', 'Flat Rate', NULL, '[]', 1, '', 0, '', '', '', 0, '', 1, '+923017232211', '+923017232211', NULL, NULL, NULL),
(20, '0.00', 15, 'gfdg gfdgdf', NULL, 'vfdvdvdfv', '', 'gfdgfdgfd', '354144', 'WI', 'Austria', '', 'demo@ecommerce.com', NULL, 'gfdg gfdgdf', NULL, 'vfdvdvdfv', '', 'gfdgfdgfd', '354144', 'WI', 'Austria', NULL, 'gfdg gfdgdf', NULL, 'vfdvdvdfv', '', 'gfdgfdgfd', '354144', 'WI', 'Austria', 0, 'Cash on Delivery', '', '', '', '', '2020-01-01 07:26:32', '2020-01-01 07:26:32', NULL, '$', NULL, '11123.00', '0.00', 'Flat Rate', NULL, '[]', 1, '', 0, '', '', '', 0, '', 1, '+923017232211', '+923017232211', NULL, NULL, NULL),
(21, '0.00', 15, 'gfdg gfdgdf', NULL, 'vfdvdvdfv', '', 'gfdgfdgfd', '354144', 'WI', 'Austria', '', 'demo@ecommerce.com', NULL, 'gfdg gfdgdf', NULL, 'vfdvdvdfv', '', 'gfdgfdgfd', '354144', 'WI', 'Austria', NULL, 'gfdg gfdgdf', NULL, 'vfdvdvdfv', '', 'gfdgfdgfd', '354144', 'WI', 'Austria', 0, 'Cash on Delivery', '', '', '', '', '2020-01-01 08:00:34', '2020-01-01 08:00:34', NULL, '$', NULL, '11123.00', '0.00', 'Flat Rate', NULL, '[]', 1, '', 0, '', '', '', 0, '', 1, '03017232211', '03017232211', NULL, NULL, NULL),
(22, '0.00', 15, 'tr terter', NULL, 'trretre', '', 'tret', '57575', 'other', 'Albania', '', 'demo@ecommerce.com', NULL, 'tr terter', NULL, 'trretre', '', 'tret', '57575', 'other', 'Albania', NULL, 'tr terter', NULL, 'trretre', '', 'tret', '57575', 'other', 'Albania', 0, 'Cash on Delivery', '', '', '', '', '2020-01-01 08:04:47', '2020-01-01 08:04:47', NULL, '$', NULL, '11123.00', '0.00', 'Flat Rate', NULL, '[]', 1, '', 0, '', '', '', 0, '', 1, '03017232211', '03017232211', NULL, NULL, NULL),
(23, '0.00', 15, 'hfgh hfghf', NULL, 'hfghf', '', 'ghfg', '57575', 'other', 'Afghanistan', '', 'demo@ecommerce.com', NULL, 'hfgh hfghf', NULL, 'hfghf', '', 'ghfg', '57575', 'other', 'Afghanistan', NULL, 'hfgh hfghf', NULL, 'hfghf', '', 'ghfg', '57575', 'other', 'Afghanistan', 0, 'Cash on Delivery', '', '', '', '', '2020-01-01 08:18:20', '2020-01-01 08:18:20', NULL, '$', NULL, '11123.00', '0.00', 'Flat Rate', NULL, '[]', 1, '', 0, '', '', '', 0, '', 1, '03017232211', '03017232211', NULL, NULL, NULL),
(24, '0.00', 15, 'Rehan Tariq', NULL, 'hgfdsfd', '', 'FDSF', '569969', 'other', 'Argentina', '', 'demo@ecommerce.com', NULL, 'Rehan Tariq', NULL, 'hgfdsfd', '', 'FDSF', '569969', 'other', 'Argentina', NULL, 'Rehan Tariq', NULL, 'hgfdsfd', '', 'FDSF', '569969', 'other', 'Argentina', 0, 'Cash on Delivery', '', '', '', '', '2020-01-01 08:26:57', '2020-01-01 08:26:57', NULL, '$', NULL, '380.00', '11.00', 'Flat Rate', NULL, '[]', 1, '', 0, '', '', '', 0, '', 1, '+923017232211', '+923017232211', NULL, NULL, NULL),
(25, '0.00', 15, 'gfdg gfdgdf', NULL, 'vfdvdvdfv', '', 'gfdgfdgfd', '354144', 'WI', 'Austria', '', 'demo@ecommerce.com', NULL, 'gfdg gfdgdf', NULL, 'vfdvdvdfv', '', 'gfdgfdgfd', '354144', 'WI', 'Austria', NULL, 'gfdg gfdgdf', NULL, 'vfdvdvdfv', '', 'gfdgfdgfd', '354144', 'WI', 'Austria', 0, 'Cash on Delivery', '', '', '', '', '2020-01-01 08:58:43', '2020-01-01 08:58:43', NULL, '$', NULL, '380.00', '11.00', 'Flat Rate', NULL, '[]', 0, '', 0, '', '', '', 0, '', 1, '+923017232211', '+923017232211', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders_products`
--

DROP TABLE IF EXISTS `orders_products`;
CREATE TABLE IF NOT EXISTS `orders_products` (
  `orders_products_id` int(11) NOT NULL AUTO_INCREMENT,
  `orders_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `products_model` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `products_name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `products_price` decimal(15,2) NOT NULL,
  `final_price` decimal(15,2) NOT NULL,
  `products_tax` decimal(7,0) NOT NULL,
  `products_quantity` int(11) NOT NULL,
  PRIMARY KEY (`orders_products_id`),
  KEY `idx_orders_products_orders_id` (`orders_id`),
  KEY `idx_orders_products_products_id` (`products_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders_products`
--

INSERT INTO `orders_products` (`orders_products_id`, `orders_id`, `products_id`, `products_model`, `products_name`, `products_price`, `final_price`, `products_tax`, `products_quantity`) VALUES
(1, 1, 2, '', 'dsfsd', '213.00', '213.00', '1', 1),
(2, 2, 2, '', 'dsfsd', '213.00', '213.00', '1', 1),
(3, 4, 2, '', 'dsfsd', '213.00', '639.00', '1', 3),
(4, 7, 2, '', 'dsfsd', '213.00', '213.00', '1', 1),
(5, 8, 117, '', 'PROPELL II SNEAKER', '23.99', '23.99', '1', 1),
(6, 9, 117, '', 'PROPELL II SNEAKER', '23.99', '23.99', '1', 1),
(7, 10, 117, '', 'PROPELL II SNEAKER', '23.99', '23.99', '1', 1),
(8, 11, 117, '', 'PROPELL II SNEAKER', '23.99', '23.99', '1', 1),
(9, 12, 4, NULL, 'test 1', '11123.00', '44492.00', '1', 4),
(10, 13, 4, NULL, 'test 1', '11123.00', '44492.00', '1', 4),
(11, 14, 3, NULL, 'asd', '123.00', '123.00', '1', 1),
(12, 14, 3, NULL, 'asd', '123.00', '246.00', '1', 2),
(13, 16, 2, NULL, 'dsfsd', '213.00', '426.00', '1', 2),
(14, 16, 1, NULL, 'test product', '222.00', '444.00', '1', 2),
(15, 17, 1, NULL, 'test product', '222.00', '222.00', '1', 1),
(16, 20, 4, NULL, 'test 1', '11123.00', '11123.00', '1', 1),
(17, 21, 4, NULL, 'test 1', '11123.00', '11123.00', '1', 1),
(18, 22, 4, NULL, 'test 1', '11123.00', '11123.00', '1', 1),
(19, 23, 4, NULL, 'test 1', '11123.00', '11123.00', '1', 1),
(20, 24, 3, NULL, 'asd', '123.00', '369.00', '1', 3),
(21, 25, 3, NULL, 'asd', '123.00', '369.00', '1', 3);

-- --------------------------------------------------------

--
-- Table structure for table `orders_products_attributes`
--

DROP TABLE IF EXISTS `orders_products_attributes`;
CREATE TABLE IF NOT EXISTS `orders_products_attributes` (
  `orders_products_attributes_id` int(11) NOT NULL AUTO_INCREMENT,
  `orders_id` int(11) NOT NULL,
  `orders_products_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `products_options` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `products_options_values` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options_values_price` decimal(15,2) NOT NULL,
  `price_prefix` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`orders_products_attributes_id`),
  KEY `idx_orders_products_att_orders_id` (`orders_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders_products_attributes`
--

INSERT INTO `orders_products_attributes` (`orders_products_attributes_id`, `orders_id`, `orders_products_id`, `products_id`, `products_options`, `products_options_values`, `options_values_price`, `price_prefix`) VALUES
(1, 14, 11, 3, 'COlor', 'red', '0.00', '+'),
(2, 14, 11, 3, 'Size', 'Small', '0.00', '+'),
(3, 14, 12, 3, 'COlor', 'red', '0.00', '+'),
(4, 14, 12, 3, 'Size', 'Large', '0.00', '+'),
(5, 24, 20, 3, 'COlor', 'red', '0.00', '+'),
(6, 24, 20, 3, 'Size', 'Small', '0.00', '+'),
(7, 25, 21, 3, 'COlor', 'red', '0.00', '+'),
(8, 25, 21, 3, 'Size', 'Small', '0.00', '+');

-- --------------------------------------------------------

--
-- Table structure for table `orders_products_download`
--

DROP TABLE IF EXISTS `orders_products_download`;
CREATE TABLE IF NOT EXISTS `orders_products_download` (
  `orders_products_download_id` int(11) NOT NULL AUTO_INCREMENT,
  `orders_id` int(11) NOT NULL DEFAULT '0',
  `orders_products_id` int(11) NOT NULL DEFAULT '0',
  `orders_products_filename` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `download_maxdays` int(11) NOT NULL DEFAULT '0',
  `download_count` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`orders_products_download_id`),
  KEY `idx_orders_products_download_orders_id` (`orders_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders_status`
--

DROP TABLE IF EXISTS `orders_status`;
CREATE TABLE IF NOT EXISTS `orders_status` (
  `orders_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `public_flag` int(11) DEFAULT '0',
  `downloads_flag` int(11) DEFAULT '0',
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`orders_status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders_status`
--

INSERT INTO `orders_status` (`orders_status_id`, `public_flag`, `downloads_flag`, `role_id`) VALUES
(1, 0, 0, 2),
(2, 0, 0, 2),
(3, 0, 0, 2),
(4, 0, 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `orders_status_description`
--

DROP TABLE IF EXISTS `orders_status_description`;
CREATE TABLE IF NOT EXISTS `orders_status_description` (
  `orders_status_description_id` int(11) NOT NULL AUTO_INCREMENT,
  `orders_status_id` int(11) NOT NULL,
  `orders_status_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language_id` int(11) NOT NULL,
  PRIMARY KEY (`orders_status_description_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders_status_description`
--

INSERT INTO `orders_status_description` (`orders_status_description_id`, `orders_status_id`, `orders_status_name`, `language_id`) VALUES
(1, 1, 'Pending', 1),
(2, 2, 'Completed', 1),
(3, 3, 'Cancel', 1),
(4, 4, 'Return', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders_status_history`
--

DROP TABLE IF EXISTS `orders_status_history`;
CREATE TABLE IF NOT EXISTS `orders_status_history` (
  `orders_status_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `orders_id` int(11) NOT NULL,
  `orders_status_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `customer_notified` int(11) DEFAULT '0',
  `comments` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`orders_status_history_id`),
  KEY `idx_orders_status_history_orders_id` (`orders_id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders_status_history`
--

INSERT INTO `orders_status_history` (`orders_status_history_id`, `orders_id`, `orders_status_id`, `date_added`, `customer_notified`, `comments`) VALUES
(1, 1, 1, '2019-10-29 09:02:30', 1, ''),
(2, 1, 2, '2019-10-29 09:08:28', 1, 'ffff'),
(3, 2, 1, '2019-11-18 07:21:25', 1, ''),
(4, 3, 1, '2019-11-18 07:33:59', 1, ''),
(5, 4, 1, '2019-11-18 07:39:54', 1, ''),
(6, 2, 3, '2019-11-18 07:43:02', 1, ''),
(7, 5, 1, '2019-11-18 07:47:56', 1, ''),
(8, 6, 1, '2019-11-18 07:58:43', 1, ''),
(9, 7, 1, '2019-11-18 07:59:36', 1, ''),
(10, 8, 1, '2019-11-18 12:13:34', 1, ''),
(11, 9, 1, '2019-11-18 12:14:40', 1, ''),
(12, 10, 1, '2019-11-18 12:14:49', 1, ''),
(13, 11, 1, '2019-11-18 12:16:23', 1, ''),
(14, 12, 1, '2019-12-03 06:25:31', 1, ''),
(15, 13, 1, '2019-12-03 06:32:00', 1, ''),
(16, 14, 1, '2019-12-03 07:30:35', 1, ''),
(17, 15, 1, '2019-12-05 08:39:40', 1, ''),
(18, 16, 1, '2019-12-05 08:45:06', 1, ''),
(19, 17, 1, '2019-12-05 08:47:20', 1, ''),
(20, 18, 1, '2019-12-11 07:52:41', 1, ''),
(21, 19, 1, '2020-01-01 07:24:00', 1, ''),
(22, 19, 2, '2020-01-01 07:24:56', 1, NULL),
(23, 20, 1, '2020-01-01 07:26:32', 1, ''),
(24, 21, 1, '2020-01-01 08:00:34', 1, ''),
(25, 21, 3, '2020-01-01 08:02:31', 1, NULL),
(26, 22, 1, '2020-01-01 08:04:47', 1, ''),
(27, 22, 3, '2020-01-01 08:05:13', 1, NULL),
(28, 22, 3, '2020-01-01 08:05:44', 1, NULL),
(29, 23, 1, '2020-01-01 08:18:20', 1, ''),
(30, 23, 3, '2020-01-01 08:18:42', 1, NULL),
(31, 23, 3, '2020-01-01 08:23:38', 1, NULL),
(32, 23, 3, '2020-01-01 08:24:11', 1, NULL),
(33, 24, 1, '2020-01-01 08:26:57', 1, ''),
(34, 24, 3, '2020-01-01 08:27:33', 1, NULL),
(35, 24, 3, '2020-01-01 08:50:34', 1, NULL),
(36, 24, 3, '2020-01-01 08:51:18', 1, NULL),
(37, 24, 3, '2020-01-01 08:51:52', 1, NULL),
(38, 24, 3, '2020-01-01 08:52:06', 1, NULL),
(39, 24, 3, '2020-01-01 08:52:20', 1, NULL),
(40, 24, 3, '2020-01-01 08:52:52', 1, NULL),
(41, 24, 3, '2020-01-01 08:53:18', 1, NULL),
(42, 24, 3, '2020-01-01 08:57:11', 1, NULL),
(43, 25, 1, '2020-01-01 08:58:43', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `orders_total`
--

DROP TABLE IF EXISTS `orders_total`;
CREATE TABLE IF NOT EXISTS `orders_total` (
  `orders_total_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `orders_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` decimal(15,4) NOT NULL,
  `class` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort_order` int(11) NOT NULL,
  PRIMARY KEY (`orders_total_id`),
  KEY `idx_orders_total_orders_id` (`orders_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
CREATE TABLE IF NOT EXISTS `pages` (
  `page_id` int(11) NOT NULL AUTO_INCREMENT,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL,
  PRIMARY KEY (`page_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`page_id`, `slug`, `status`, `type`) VALUES
(1, 'privacy-policy', 1, 1),
(2, 'term-services', 1, 1),
(3, 'refund-policy', 1, 1),
(4, 'about-us', 1, 1),
(5, 'privacy-policy', 1, 2),
(6, 'term-services', 1, 2),
(7, 'refund-policy', 1, 2),
(8, 'about-us', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `pages_description`
--

DROP TABLE IF EXISTS `pages_description`;
CREATE TABLE IF NOT EXISTS `pages_description` (
  `page_description_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language_id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL,
  PRIMARY KEY (`page_description_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages_description`
--

INSERT INTO `pages_description` (`page_description_id`, `name`, `description`, `language_id`, `page_id`) VALUES
(1, 'Privacy Policy', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy</p>\r\n\r\n<p>text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen</p>\r\n\r\n<p>book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially</p>\r\n\r\n<p>unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,</p>\r\n\r\n<p>and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem</p>\r\n\r\n<p>Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type</p>\r\n\r\n<p>specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining</p>\r\n\r\n<p>essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum</p>\r\n\r\n<p>passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem</p>\r\n\r\n<p>Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s</p>\r\n\r\n<p>standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make</p>\r\n\r\n<p>a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been</p>\r\n\r\n<p>the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled</p>\r\n\r\n<p>it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been</p>\r\n\r\n<p>the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled</p>\r\n\r\n<p>it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum.</p>\r\n', 1, 1),
(4, 'Term & Services', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy</p>\r\n\r\n<p>text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen</p>\r\n\r\n<p>book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially</p>\r\n\r\n<p>unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,</p>\r\n\r\n<p>and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem</p>\r\n\r\n<p>Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type</p>\r\n\r\n<p>specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining</p>\r\n\r\n<p>essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum</p>\r\n\r\n<p>passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem</p>\r\n\r\n<p>Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s</p>\r\n\r\n<p>standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make</p>\r\n\r\n<p>a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been</p>\r\n\r\n<p>the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled</p>\r\n\r\n<p>it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been</p>\r\n\r\n<p>the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled</p>\r\n\r\n<p>it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum.</p>\r\n', 1, 2),
(7, 'Refund Policy', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy</p>\r\n\r\n<p>text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen</p>\r\n\r\n<p>book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially</p>\r\n\r\n<p>unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,</p>\r\n\r\n<p>and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem</p>\r\n\r\n<p>Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type</p>\r\n\r\n<p>specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining</p>\r\n\r\n<p>essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum</p>\r\n\r\n<p>passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem</p>\r\n\r\n<p>Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s</p>\r\n\r\n<p>standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make</p>\r\n\r\n<p>a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been</p>\r\n\r\n<p>the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled</p>\r\n\r\n<p>it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been</p>\r\n\r\n<p>the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled</p>\r\n\r\n<p>it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum.</p>\r\n', 1, 3),
(10, 'About Us', '<h2><strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</strong></h2>\r\n\r\n<p>Cras non justo sed nulla finibus pulvinar sit amet et neque. Duis et odio vitae orci mattis gravida. Nullam vel tincidunt ex. Praesent vel neque egestas arcu feugiat venenatis. Donec eget dolor quis justo tempus mattis. Phasellus dictum nunc ut dapibus dictum. Etiam vel leo nulla. Ut eu mi hendrerit, eleifend lacus sed, dictum neque.</p>\r\n\r\n<p>Aliquam non convallis nibh. Donec luctus purus magna, et commodo urna fermentum sed. Cras vel ex blandit, pretium nulla id, efficitur massa. Suspendisse potenti. Maecenas vel vehicula velit. Etiam quis orci molestie, elementum nisl eget, ultricies felis. Ut condimentum quam ut mi scelerisque accumsan. Suspendisse potenti. Etiam orci purus, iaculis sit amet ornare sit amet, finibus sed ligula. Quisque et mollis libero, sit amet consectetur augue. Vestibulum posuere pellentesque enim, in facilisis diam dictum eget. Phasellus sed vestibulum urna, in aliquet felis. Vivamus quis lacus id est ornare faucibus at id nulla.</p>\r\n\r\n<h2>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.</h2>\r\n\r\n<p>Nulla justo lectus, sollicitudin at lorem eu, sollicitudin molestie augue. Maecenas egestas facilisis dolor mattis feugiat. Donec sed orci tellus. Maecenas tortor ipsum, varius vel dolor nec, bibendum porttitor felis. Mauris rutrum tristique vehicula. Sed ullamcorper nisl non erat pharetra, sit amet mattis enim posuere. Nulla convallis fringilla tortor, at vestibulum mauris cursus eget. Ut semper sollicitudin odio, sed molestie libero luctus quis. Integer viverra rutrum diam non maximus. Maecenas pellentesque tortor et sapien fermentum laoreet non et est. Phasellus felis quam, laoreet rhoncus erat eget, tempor condimentum massa. Integer gravida turpis id suscipit bibendum. Phasellus pellentesque venenatis erat, ut maximus justo vulputate sed. Vestibulum maximus enim ligula, non suscipit lectus dignissim vel. Suspendisse eleifend lorem egestas, tristique ligula id, condimentum est.</p>\r\n\r\n<p>Mauris nulla nulla, laoreet at auctor quis, bibendum rutrum neque. Donec eu ligula mi. Nam cursus vulputate semper. Phasellus facilisis mollis tellus, interdum laoreet justo rutrum pulvinar. Praesent molestie, nibh sed ultrices porttitor, nulla tortor volutpat enim, quis auctor est sem et orci. Proin lacinia vestibulum ex ut convallis. Phasellus tempus odio purus.</p>\r\n\r\n<ul>\r\n<li>Nam lacinia urna eu arcu auctor, eget euismod metus sagittis.</li>\r\n<li>Etiam eleifend ex eu interdum varius.</li>\r\n<li>Nunc dapibus purus eu felis tincidunt, vel rhoncus erat tristique.</li>\r\n<li>Aenean nec augue sit amet lorem blandit ultrices.</li>\r\n<li>Nullam at lacus eleifend, pulvinar velit tempor, auctor nisi.</li>\r\n</ul>\r\n\r\n<p>Nunc accumsan tincidunt augue sed blandit. Duis et dignissim nisi. Phasellus sed ligula velit. Etiam rhoncus aliquet magna, nec volutpat nulla imperdiet et. Nunc vel tincidunt magna. Vestibulum lacinia odio a metus placerat maximus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam et faucibus neque. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aenean et metus malesuada, ullamcorper dui vel, convallis est. Donec congue libero sed turpis porta consequat. Suspendisse potenti. Aliquam pharetra nibh in magna iaculis, non elementum ipsum luctus.</p>\r\n\r\n<p>&nbsp;</p>', 1, 4),
(13, 'Privacy Policy', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy</p>\r\n\r\n<p>text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen</p>\r\n\r\n<p>book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially</p>\r\n\r\n<p>unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,</p>\r\n\r\n<p>and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem</p>\r\n\r\n<p>Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type</p>\r\n\r\n<p>specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining</p>\r\n\r\n<p>essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum</p>\r\n\r\n<p>passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem</p>\r\n\r\n<p>Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s</p>\r\n\r\n<p>standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make</p>\r\n\r\n<p>a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been</p>\r\n\r\n<p>the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled</p>\r\n\r\n<p>it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been</p>\r\n\r\n<p>the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled</p>\r\n\r\n<p>it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum.</p>', 1, 5),
(16, 'Term & Services', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy</p>\r\n\r\n<p>text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen</p>\r\n\r\n<p>book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially</p>\r\n\r\n<p>unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,</p>\r\n\r\n<p>and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem</p>\r\n\r\n<p>Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type</p>\r\n\r\n<p>specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining</p>\r\n\r\n<p>essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum</p>\r\n\r\n<p>passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem</p>\r\n\r\n<p>Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s</p>\r\n\r\n<p>standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make</p>\r\n\r\n<p>a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been</p>\r\n\r\n<p>the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled</p>\r\n\r\n<p>it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been</p>\r\n\r\n<p>the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled</p>\r\n\r\n<p>it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum.</p>', 1, 6),
(19, 'Refund Policy', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy</p>\r\n\r\n<p>text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen</p>\r\n\r\n<p>book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially</p>\r\n\r\n<p>unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,</p>\r\n\r\n<p>and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem</p>\r\n\r\n<p>Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type</p>\r\n\r\n<p>specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining</p>\r\n\r\n<p>essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum</p>\r\n\r\n<p>passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem</p>\r\n\r\n<p>Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s</p>\r\n\r\n<p>standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make</p>\r\n\r\n<p>a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been</p>\r\n\r\n<p>the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled</p>\r\n\r\n<p>it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been</p>\r\n\r\n<p>the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled</p>\r\n\r\n<p>it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum.</p>', 1, 7),
(22, 'About Us', '<h2><strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</strong></h2>\r\n\r\n<p><strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</strong></p>\r\n\r\n<p>Cras non justo sed nulla finibus pulvinar sit amet et neque. Duis et odio vitae orci mattis gravida. Nullam vel tincidunt ex. Praesent vel neque egestas arcu feugiat venenatis. Donec eget dolor quis justo tempus mattis. Phasellus dictum nunc ut dapibus dictum. Etiam vel leo nulla. Ut eu mi hendrerit, eleifend lacus sed, dictum neque.</p>\r\n\r\n<p>Aliquam non convallis nibh. Donec luctus purus magna, et commodo urna fermentum sed. Cras vel ex blandit, pretium nulla id, efficitur massa. Suspendisse potenti. Maecenas vel vehicula velit. Etiam quis orci molestie, elementum nisl eget, ultricies felis. Ut condimentum quam ut mi scelerisque accumsan. Suspendisse potenti. Etiam orci purus, iaculis sit amet ornare sit amet, finibus sed ligula. Quisque et mollis libero, sit amet consectetur augue. Vestibulum posuere pellentesque enim, in facilisis diam dictum eget. Phasellus sed vestibulum urna, in aliquet felis. Vivamus quis lacus id est ornare faucibus at id nulla.</p>\r\n\r\n<h2>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.</h2>\r\n\r\n<p>Nulla justo lectus, sollicitudin at lorem eu, sollicitudin molestie augue. Maecenas egestas facilisis dolor mattis feugiat. Donec sed orci tellus. Maecenas tortor ipsum, varius vel dolor nec, bibendum porttitor felis. Mauris rutrum tristique vehicula. Sed ullamcorper nisl non erat pharetra, sit amet mattis enim posuere. Nulla convallis fringilla tortor, at vestibulum mauris cursus eget. Ut semper sollicitudin odio, sed molestie libero luctus quis. Integer viverra rutrum diam non maximus. Maecenas pellentesque tortor et sapien fermentum laoreet non et est. Phasellus felis quam, laoreet rhoncus erat eget, tempor condimentum massa. Integer gravida turpis id suscipit bibendum. Phasellus pellentesque venenatis erat, ut maximus justo vulputate sed. Vestibulum maximus enim ligula, non suscipit lectus dignissim vel. Suspendisse eleifend lorem egestas, tristique ligula id, condimentum est.</p>\r\n\r\n<p>Mauris nulla nulla, laoreet at auctor quis, bibendum rutrum neque. Donec eu ligula mi. Nam cursus vulputate semper. Phasellus facilisis mollis tellus, interdum laoreet justo rutrum pulvinar. Praesent molestie, nibh sed ultrices porttitor, nulla tortor volutpat enim, quis auctor est sem et orci. Proin lacinia vestibulum ex ut convallis. Phasellus tempus odio purus.</p>\r\n\r\n<ul>\r\n<li>Nam lacinia urna eu arcu auctor, eget euismod metus sagittis.</li>\r\n<li>Etiam eleifend ex eu interdum varius.</li>\r\n<li>Nunc dapibus purus eu felis tincidunt, vel rhoncus erat tristique.</li>\r\n<li>Aenean nec augue sit amet lorem blandit ultrices.</li>\r\n<li>Nullam at lacus eleifend, pulvinar velit tempor, auctor nisi.</li>\r\n</ul>\r\n\r\n<p>Nunc accumsan tincidunt augue sed blandit. Duis et dignissim nisi. Phasellus sed ligula velit. Etiam rhoncus aliquet magna, nec volutpat nulla imperdiet et. Nunc vel tincidunt magna. Vestibulum lacinia odio a metus placerat maximus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam et faucibus neque. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aenean et metus malesuada, ullamcorper dui vel, convallis est. Donec congue libero sed turpis porta consequat. Suspendisse potenti. Aliquam pharetra nibh in magna iaculis, non elementum ipsum luctus.</p>', 1, 8);

-- --------------------------------------------------------

--
-- Table structure for table `payment_description`
--

DROP TABLE IF EXISTS `payment_description`;
CREATE TABLE IF NOT EXISTS `payment_description` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `payment_methods_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language_id` int(11) NOT NULL,
  `sub_name_1` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_name_2` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_description`
--

INSERT INTO `payment_description` (`id`, `payment_methods_id`, `name`, `language_id`, `sub_name_1`, `sub_name_2`) VALUES
(1, 1, 'Braintree', 1, 'Credit Card', 'Paypal'),
(4, 2, 'Stripe', 1, '', ''),
(5, 3, 'Paypal', 1, '', ''),
(6, 4, 'Cash on Delivery', 1, '', ''),
(7, 5, 'Instamojo', 1, '', ''),
(8, 0, 'Cybersoure', 1, '', ''),
(9, 6, 'Hyperpay', 1, '', ''),
(10, 7, 'Razor Pay', 1, '', ''),
(11, 8, 'PayTm', 1, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

DROP TABLE IF EXISTS `payment_methods`;
CREATE TABLE IF NOT EXISTS `payment_methods` (
  `payment_methods_id` int(11) NOT NULL AUTO_INCREMENT,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `environment` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`payment_methods_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_methods`
--

INSERT INTO `payment_methods` (`payment_methods_id`, `payment_method`, `status`, `environment`, `created_at`, `updated_at`) VALUES
(1, 'braintree', 1, 0, '2019-09-18 11:40:13', '0000-00-00 00:00:00'),
(2, 'stripe', 1, 0, '2019-09-18 11:56:17', '0000-00-00 00:00:00'),
(3, 'paypal', 1, 0, '2019-09-18 11:56:04', '0000-00-00 00:00:00'),
(4, 'cash_on_delivery', 1, 0, '2019-09-18 11:56:37', '0000-00-00 00:00:00'),
(5, 'instamojo', 1, 0, '2019-09-18 11:57:23', '0000-00-00 00:00:00'),
(6, 'hyperpay', 1, 0, '2019-09-18 11:56:44', '0000-00-00 00:00:00'),
(7, 'razor_pay', 1, 0, '2019-09-18 11:56:44', '0000-00-00 00:00:00'),
(8, 'pay_tm', 1, 0, '2019-09-18 11:56:44', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods_detail`
--

DROP TABLE IF EXISTS `payment_methods_detail`;
CREATE TABLE IF NOT EXISTS `payment_methods_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `payment_methods_id` int(11) NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_methods_detail`
--

INSERT INTO `payment_methods_detail` (`id`, `payment_methods_id`, `key`, `value`) VALUES
(3, 1, 'merchant_id', 'wrv3cwbft6n3bg5g'),
(4, 1, 'public_key', '2bz5kxcj2gs3hdbx'),
(5, 1, 'private_key', '55ae08cb061e36dca59aaf2a883190bf'),
(9, 2, 'secret_key', 'sk_test_Gsz7jL4wRikI8YFaNzbwxKOF'),
(10, 2, 'publishable_key', 'pk_test_cCAEC6EejawuAvsvR9bhKrGR'),
(15, 3, 'id', 'AULJ0Q_kdXwEbi7PCBunUBJc4Kkg2vvdazF8kJoywAV9_i7iJMQphB9NLwdR0v2BAUlLF974iTrynbys'),
(18, 3, 'payment_currency', 'USD'),
(21, 5, 'api_key', 'c5a348bd5fcb4c866074c48e9c77c6c4'),
(22, 5, 'auth_token', '99448897defb4423b921fe47e0851b86'),
(23, 5, 'client_id', 'test_9l7MW8I7c2bwIw7q0koc6B1j5NrvzyhasQh'),
(24, 5, 'client_secret', 'test_m9Ey3Jqp9AfmyWKmUMktt4K3g1uMIdapledVRRYJha7WinxOsBVV5900QMlwvv3l2zRmzcYDEOKPh1cvnVedkAKtHOFFpJbqcoNCNrjx1FtZhtDMkEJFv9MJuXD'),
(32, 6, 'userid', '8a82941865340dc8016537cdac1e0841'),
(33, 6, 'password', 'sXrYy8pnsf'),
(34, 6, 'entityid', '8a82941865340dc8016537ce08db0845'),
(35, 7, 'RAZORPAY_KEY', 'rzp_test_izyMwtDZYAQeSA'),
(36, 7, 'RAZORPAY_SECRET', 'LBIgacPG7Da6mdOARfig205j'),
(37, 8, 'paytm_mid', 'QROqBU67944622696360'),
(39, 8, 'paytm_key', 'w#5bJEFYV5EU4vnP'),
(40, 8, 'current_domain_name', 'http://localhost:8000');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `products_id` int(11) NOT NULL AUTO_INCREMENT,
  `products_quantity` int(11) NOT NULL,
  `products_model` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `products_image` text COLLATE utf8mb4_unicode_ci,
  `products_price` decimal(15,2) NOT NULL,
  `products_date_added` datetime NOT NULL,
  `products_last_modified` datetime DEFAULT NULL,
  `products_date_available` datetime DEFAULT NULL,
  `products_weight` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `products_weight_unit` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `products_status` tinyint(1) NOT NULL,
  `is_current` tinyint(1) NOT NULL,
  `products_tax_class_id` int(11) NOT NULL,
  `manufacturers_id` int(11) DEFAULT NULL,
  `products_ordered` int(11) NOT NULL DEFAULT '0',
  `products_liked` int(11) NOT NULL,
  `low_limit` int(11) NOT NULL,
  `is_feature` tinyint(1) NOT NULL DEFAULT '0',
  `products_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `products_type` int(11) NOT NULL DEFAULT '0',
  `products_min_order` int(11) NOT NULL DEFAULT '1',
  `products_max_stock` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`products_id`),
  KEY `idx_products_model` (`products_model`),
  KEY `idx_products_date_added` (`products_date_added`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`products_id`, `products_quantity`, `products_model`, `products_image`, `products_price`, `products_date_added`, `products_last_modified`, `products_date_available`, `products_weight`, `products_weight_unit`, `products_status`, `is_current`, `products_tax_class_id`, `manufacturers_id`, `products_ordered`, `products_liked`, `low_limit`, `is_feature`, `products_slug`, `products_type`, `products_min_order`, `products_max_stock`, `created_at`, `updated_at`) VALUES
(6, 0, 'Chonsa', '89', '38.00', '0000-00-00 00:00:00', NULL, NULL, '1', 'Kilogram', 1, 1, 0, NULL, 0, 0, 0, 0, 'chonsa-frutine-mango', 0, 1, 1, '2020-05-01 01:04:45', NULL),
(7, 0, NULL, '89', '66.00', '0000-00-00 00:00:00', NULL, NULL, '6', 'Gram', 1, 1, 0, NULL, 0, 0, 0, 0, 'kiio', 1, 1, NULL, '2020-05-01 02:17:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products_attributes`
--

DROP TABLE IF EXISTS `products_attributes`;
CREATE TABLE IF NOT EXISTS `products_attributes` (
  `products_attributes_id` int(11) NOT NULL AUTO_INCREMENT,
  `products_id` int(11) NOT NULL,
  `options_id` int(11) NOT NULL,
  `options_values_id` int(11) NOT NULL,
  `options_values_price` decimal(15,2) NOT NULL,
  `price_prefix` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`products_attributes_id`),
  KEY `idx_products_attributes_products_id` (`products_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_attributes`
--

INSERT INTO `products_attributes` (`products_attributes_id`, `products_id`, `options_id`, `options_values_id`, `options_values_price`, `price_prefix`, `is_default`) VALUES
(10, 7, 1, 1, '0.00', '+', 1),
(11, 7, 2, 3, '0.00', '+', 1),
(12, 7, 2, 4, '0.00', '+', 1);

-- --------------------------------------------------------

--
-- Table structure for table `products_description`
--

DROP TABLE IF EXISTS `products_description`;
CREATE TABLE IF NOT EXISTS `products_description` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `products_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '1',
  `products_name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `products_description` text COLLATE utf8mb4_unicode_ci,
  `products_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `products_viewed` int(11) DEFAULT '0',
  `products_left_banner` text COLLATE utf8mb4_unicode_ci,
  `products_left_banner_start_date` int(11) DEFAULT NULL,
  `products_left_banner_expire_date` int(11) DEFAULT NULL,
  `products_right_banner` text COLLATE utf8mb4_unicode_ci,
  `products_right_banner_start_date` int(11) DEFAULT NULL,
  `products_right_banner_expire_date` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `products_name` (`products_name`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_description`
--

INSERT INTO `products_description` (`id`, `products_id`, `language_id`, `products_name`, `products_description`, `products_url`, `products_viewed`, `products_left_banner`, `products_left_banner_start_date`, `products_left_banner_expire_date`, `products_right_banner`, `products_right_banner_start_date`, `products_right_banner_expire_date`) VALUES
(11, 6, 1, 'Chonsa Frutine Mango', '<p>Lorum Ipsum Upsum Kupsum Tupsum Mupsum Ipsim Gipsum Nupsum</p>', NULL, 0, '', NULL, NULL, '', NULL, NULL),
(12, 7, 1, 'kiio', '<p>khl</p>', NULL, 0, '', NULL, NULL, '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products_images`
--

DROP TABLE IF EXISTS `products_images`;
CREATE TABLE IF NOT EXISTS `products_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `products_id` int(11) NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  `htmlcontent` text COLLATE utf8mb4_unicode_ci,
  `sort_order` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `products_images_prodid` (`products_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_images`
--

INSERT INTO `products_images` (`id`, `products_id`, `image`, `htmlcontent`, `sort_order`) VALUES
(1, 1, '120', '', 1),
(2, 1, '91', '', 2),
(3, 6, '83', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `products_notifications`
--

DROP TABLE IF EXISTS `products_notifications`;
CREATE TABLE IF NOT EXISTS `products_notifications` (
  `products_id` int(11) NOT NULL,
  `customers_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`products_id`,`customers_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products_options`
--

DROP TABLE IF EXISTS `products_options`;
CREATE TABLE IF NOT EXISTS `products_options` (
  `products_options_id` int(11) NOT NULL AUTO_INCREMENT,
  `products_options_name` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`products_options_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_options`
--

INSERT INTO `products_options` (`products_options_id`, `products_options_name`) VALUES
(1, 'COlor'),
(2, 'Size');

-- --------------------------------------------------------

--
-- Table structure for table `products_options_descriptions`
--

DROP TABLE IF EXISTS `products_options_descriptions`;
CREATE TABLE IF NOT EXISTS `products_options_descriptions` (
  `products_options_descriptions_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `options_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `products_options_id` int(11) NOT NULL,
  PRIMARY KEY (`products_options_descriptions_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_options_descriptions`
--

INSERT INTO `products_options_descriptions` (`products_options_descriptions_id`, `language_id`, `options_name`, `products_options_id`) VALUES
(1, 1, 'COlor', 1),
(2, 2, 'COlor ar', 1),
(3, 1, 'Size', 2),
(4, 2, 'Size ar', 2);

-- --------------------------------------------------------

--
-- Table structure for table `products_options_values`
--

DROP TABLE IF EXISTS `products_options_values`;
CREATE TABLE IF NOT EXISTS `products_options_values` (
  `products_options_values_id` int(11) NOT NULL AUTO_INCREMENT,
  `products_options_id` int(11) NOT NULL,
  `products_options_values_name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`products_options_values_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_options_values`
--

INSERT INTO `products_options_values` (`products_options_values_id`, `products_options_id`, `products_options_values_name`) VALUES
(1, 1, 'red'),
(2, 1, 'Green'),
(3, 2, 'Small'),
(4, 2, 'Large');

-- --------------------------------------------------------

--
-- Table structure for table `products_options_values_descriptions`
--

DROP TABLE IF EXISTS `products_options_values_descriptions`;
CREATE TABLE IF NOT EXISTS `products_options_values_descriptions` (
  `products_options_values_descriptions_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `options_values_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `products_options_values_id` int(11) NOT NULL,
  PRIMARY KEY (`products_options_values_descriptions_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_options_values_descriptions`
--

INSERT INTO `products_options_values_descriptions` (`products_options_values_descriptions_id`, `language_id`, `options_values_name`, `products_options_values_id`) VALUES
(1, 1, 'red', 1),
(3, 1, 'Green', 2),
(5, 1, 'Small', 3),
(7, 1, 'Large', 4);

-- --------------------------------------------------------

--
-- Table structure for table `products_shipping_rates`
--

DROP TABLE IF EXISTS `products_shipping_rates`;
CREATE TABLE IF NOT EXISTS `products_shipping_rates` (
  `products_shipping_rates_id` int(11) NOT NULL AUTO_INCREMENT,
  `weight_from` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight_to` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight_price` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `products_shipping_status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`products_shipping_rates_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_shipping_rates`
--

INSERT INTO `products_shipping_rates` (`products_shipping_rates_id`, `weight_from`, `weight_to`, `weight_price`, `unit_id`, `products_shipping_status`) VALUES
(1, '0', '10', 10, 1, 1),
(2, '10', '20', 10, 1, 1),
(3, '20', '30', 10, 1, 1),
(4, '30', '50', 50, 1, 1),
(5, '50', '100000', 70, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `products_to_categories`
--

DROP TABLE IF EXISTS `products_to_categories`;
CREATE TABLE IF NOT EXISTS `products_to_categories` (
  `products_to_categories_id` int(11) NOT NULL AUTO_INCREMENT,
  `products_id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL,
  PRIMARY KEY (`products_to_categories_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_to_categories`
--

INSERT INTO `products_to_categories` (`products_to_categories_id`, `products_id`, `categories_id`) VALUES
(17, 6, 3),
(18, 7, 4);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
CREATE TABLE IF NOT EXISTS `reviews` (
  `reviews_id` int(11) NOT NULL AUTO_INCREMENT,
  `products_id` int(11) NOT NULL,
  `customers_id` int(11) DEFAULT NULL,
  `customers_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reviews_rating` int(11) DEFAULT NULL,
  `reviews_status` tinyint(1) NOT NULL DEFAULT '0',
  `reviews_read` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`reviews_id`),
  KEY `idx_reviews_products_id` (`products_id`),
  KEY `idx_reviews_customers_id` (`customers_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`reviews_id`, `products_id`, `customers_id`, `customers_name`, `reviews_rating`, `reviews_status`, `reviews_read`, `created_at`, `updated_at`) VALUES
(17, 4, 14, 'Rehan', 5, 1, 1, '0000-00-00 00:00:00', NULL),
(18, 4, 14, 'Rehan', 5, 1, 1, '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `reviews_description`
--

DROP TABLE IF EXISTS `reviews_description`;
CREATE TABLE IF NOT EXISTS `reviews_description` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `review_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `reviews_text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews_description`
--

INSERT INTO `reviews_description` (`id`, `review_id`, `language_id`, `reviews_text`) VALUES
(20, 17, 1, 'fdssdgsg sfsd fds gs g dsgds gsdgsdg s gds gsd gsdgs dgs sgds sgd sg dsg dsg sgs gdssdg sdgsdgsgdsgsgs gs sd gsgdsgsg sdgsd gsdsd gsgd sdg sdgsdgs gds gdsgsd gs gsgsdgsdgdsg sdgsd sddsgsgsd sdg dsgds gsgsgs gs dgs dg gd gsdgsd gsdgsg sdggsdgsdgsd gsdg gsdgdsg sdgsdgds dsgsdg dsgdsgsdgds d sgdgds gds gdgdsg dssdg ds gsdgdsgds gs gsdgsgdd  sdgdgds gdsgds gsd gdsgdsgdsgdsg sdg s'),
(21, 18, 1, 'fdssdgsg sfsd fds gs g dsgds gsdgsdg s gds gsd gsdgs dgs sgds sgd sg dsg dsg sgs gdssdg sdgsdgsgdsgsgs gs sd gsgdsgsg sdgsd gsdsd gsgd sdg sdgsdgs gds gdsgsd gs gsgsdgsdgdsg sdgsd sddsgsgsd sdg dsgds gsgsgs gs dgs dg gd gsdgsd gsdgsg sdggsdgsdgsd gsdg gsdgdsg sdgsdgds dsgsdg dsgdsgsdgds d sgdgds gds gdgdsg dssdg ds gsdgdsgds gs gsdgsgdd  sdgdgds gdsgds gsd gdsgdsgdsgdsg sdg s');

-- --------------------------------------------------------

--
-- Table structure for table `sec_directory_whitelist`
--

DROP TABLE IF EXISTS `sec_directory_whitelist`;
CREATE TABLE IF NOT EXISTS `sec_directory_whitelist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `directory` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE IF NOT EXISTS `sessions` (
  `sesskey` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiry` int(10) UNSIGNED NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`sesskey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `value`, `created_at`, `updated_at`) VALUES
(1, 'facebook_app_id', 'FB_CLIENT_ID', '2018-04-26 19:00:00', '2019-11-01 01:58:53'),
(2, 'facebook_secret_id', 'FB_SECRET_KEY', '2018-04-26 19:00:00', '2019-11-01 01:58:53'),
(3, 'facebook_login', '1', '2018-04-26 19:00:00', '2019-11-01 01:58:53'),
(4, 'contact_us_email', 'vectorcoder@gmail.com', '2018-04-26 19:00:00', '2019-12-27 07:10:48'),
(5, 'address', 'address', '2018-04-26 19:00:00', '2019-12-27 07:10:48'),
(6, 'city', 'City', '2018-04-26 19:00:00', '2019-12-27 07:10:48'),
(7, 'state', 'State', '2018-04-26 19:00:00', '2019-12-27 07:10:48'),
(8, 'zip', 'Zip', '2018-04-26 19:00:00', '2019-12-27 07:10:48'),
(9, 'country', 'Country', '2018-04-26 19:00:00', '2019-12-27 07:10:48'),
(10, 'latitude', 'Latitude', '2018-04-26 19:00:00', '2019-12-27 07:10:48'),
(11, 'longitude', 'Longitude', '2018-04-26 19:00:00', '2019-12-27 07:10:48'),
(12, 'phone_no', '+92 312 1234567', '2018-04-26 19:00:00', '2019-12-27 07:10:48'),
(13, 'fcm_android', '', '2018-04-26 19:00:00', '2019-02-05 06:42:15'),
(14, 'fcm_ios', '', '2018-04-26 19:00:00', '0000-00-00 00:00:00'),
(15, 'fcm_desktop', '', '2018-04-26 19:00:00', '0000-00-00 00:00:00'),
(16, 'website_logo', 'https://i.imgur.com/n5tjHFD.png', '2018-04-26 19:00:00', '2019-10-11 06:57:29'),
(17, 'fcm_android_sender_id', '', '2018-04-26 19:00:00', '0000-00-00 00:00:00'),
(18, 'fcm_ios_sender_id', '', '2018-04-26 19:00:00', '2019-02-05 06:42:15'),
(19, 'app_name', '', '2018-04-26 19:00:00', '2019-12-27 07:10:48'),
(20, 'currency_symbol', '$', '2018-04-26 19:00:00', '2018-11-19 02:26:01'),
(21, 'new_product_duration', '20', '2018-04-26 19:00:00', '2019-12-27 07:10:48'),
(22, 'notification_title', 'Ionic Ecommerce', '2018-04-26 19:00:00', '2019-05-15 05:58:30'),
(23, 'notification_text', 'A bundle of products waiting for you!', '2018-04-26 19:00:00', '0000-00-00 00:00:00'),
(24, 'lazzy_loading_effect', 'Detail', '2018-04-26 19:00:00', '2019-05-15 05:58:30'),
(25, 'footer_button', '1', '2018-04-26 19:00:00', '2019-05-15 05:58:30'),
(26, 'cart_button', '1', '2018-04-26 19:00:00', '2019-05-15 05:58:30'),
(27, 'featured_category', '', '2018-04-26 19:00:00', '0000-00-00 00:00:00'),
(28, 'notification_duration', 'year', '2018-04-26 19:00:00', '2019-05-15 05:58:30'),
(29, 'home_style', '1', '2018-04-26 19:00:00', '2019-05-15 05:58:30'),
(30, 'wish_list_page', '1', '2018-04-26 19:00:00', '2019-05-15 05:58:30'),
(31, 'edit_profile_page', '1', '2018-04-26 19:00:00', '2019-05-15 05:58:30'),
(32, 'shipping_address_page', '1', '2018-04-26 19:00:00', '2019-05-15 05:58:30'),
(33, 'my_orders_page', '1', '2018-04-26 19:00:00', '2019-05-15 05:58:30'),
(34, 'contact_us_page', '1', '2018-04-26 19:00:00', '2019-05-15 05:58:30'),
(35, 'about_us_page', '1', '2018-04-26 19:00:00', '2019-05-15 05:58:30'),
(36, 'news_page', '1', '2018-04-26 19:00:00', '2019-05-15 05:58:30'),
(37, 'intro_page', '1', '2018-04-26 19:00:00', '2019-05-15 05:58:30'),
(38, 'setting_page', '1', '2018-04-26 19:00:00', '0000-00-00 00:00:00'),
(39, 'share_app', '1', '2018-04-26 19:00:00', '2019-05-15 05:58:30'),
(40, 'rate_app', '1', '2018-04-26 19:00:00', '2019-05-15 05:58:30'),
(41, 'site_url', 'URL', '2018-04-26 19:00:00', '2018-11-19 02:26:01'),
(42, 'admob', '0', '2018-04-26 19:00:00', '2019-05-15 05:58:05'),
(43, 'admob_id', 'ID', '2018-04-26 19:00:00', '2019-05-15 05:58:05'),
(44, 'ad_unit_id_banner', 'Unit ID', '2018-04-26 19:00:00', '2019-05-15 05:58:05'),
(45, 'ad_unit_id_interstitial', 'Indestrial', '2018-04-26 19:00:00', '2019-05-15 05:58:05'),
(46, 'category_style', '4', '2018-04-26 19:00:00', '2019-05-15 05:58:30'),
(47, 'package_name', 'package name', '2018-04-26 19:00:00', '2019-05-15 05:58:30'),
(48, 'google_analytic_id', 'test', '2018-04-26 19:00:00', '2019-05-15 05:58:30'),
(49, 'themes', 'themeone', '2018-04-26 19:00:00', '0000-00-00 00:00:00'),
(50, 'company_name', '#', '2018-04-26 19:00:00', '2019-10-07 04:52:24'),
(51, 'facebook_url', '#', '2018-04-26 19:00:00', '2019-10-11 06:57:29'),
(52, 'google_url', '#', '2018-04-26 19:00:00', '2019-10-11 06:57:29'),
(53, 'twitter_url', '#', '2018-04-26 19:00:00', '2019-10-11 06:57:29'),
(54, 'linked_in', '#', '2018-04-26 19:00:00', '2019-10-11 06:57:29'),
(55, 'default_notification', 'onesignal', '2018-04-26 19:00:00', '2019-02-05 06:42:15'),
(56, 'onesignal_app_id', '6053d948-b8f6-472a-87e4-379fa89f78d8', '2018-04-26 19:00:00', '2019-02-05 06:42:15'),
(57, 'onesignal_sender_id', '50877237723', '2018-04-26 19:00:00', '2019-02-05 06:42:15'),
(58, 'ios_admob', '1', '2018-04-26 19:00:00', '2019-05-15 05:58:05'),
(59, 'ios_admob_id', 'AdMob ID', '2018-04-26 19:00:00', '2019-05-15 05:58:05'),
(60, 'ios_ad_unit_id_banner', 'Unit ID Banner', '2018-04-26 19:00:00', '2019-05-15 05:58:05'),
(61, 'ios_ad_unit_id_interstitial', 'ID Interstitial', '2018-04-26 19:00:00', '2019-05-15 05:58:05'),
(62, 'google_login', '1', '0000-00-00 00:00:00', '2019-11-01 01:58:36'),
(63, 'google_app_id', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 'google_secret_id', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 'google_callback_url', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 'facebook_callback_url', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 'is_app_purchased', '0', '0000-00-00 00:00:00', '2018-05-03 22:24:44'),
(68, 'is_web_purchased', '1', '0000-00-00 00:00:00', '2018-05-03 22:24:44'),
(69, 'consumer_key', 'dadb7a7c1557917902724bbbf5', '0000-00-00 00:00:00', '2019-05-15 05:58:22'),
(70, 'consumer_secret', '3ba77f821557917902b1d57373', '0000-00-00 00:00:00', '2019-05-15 05:58:22'),
(71, 'order_email', 'orders@gmail.com', '0000-00-00 00:00:00', '2019-12-27 07:10:48'),
(72, 'website_themes', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 'seo_title', '', '0000-00-00 00:00:00', '2018-11-19 02:21:57'),
(74, 'seo_metatag', '', '0000-00-00 00:00:00', '2018-11-19 02:21:57'),
(75, 'seo_keyword', '', '0000-00-00 00:00:00', '2018-11-19 02:21:57'),
(76, 'seo_description', '', '0000-00-00 00:00:00', '2018-11-19 02:21:57'),
(77, 'before_head_tag', '', '0000-00-00 00:00:00', '2018-11-19 02:22:15'),
(78, 'end_body_tag', 'name', '0000-00-00 00:00:00', '2019-10-11 06:57:29'),
(79, 'sitename_logo', 'ECommerce', '0000-00-00 00:00:00', '2019-10-11 06:57:29'),
(80, 'website_name', 'ECOMMERCE', '0000-00-00 00:00:00', '2018-11-19 02:22:25'),
(81, 'web_home_pages_style', 'two', '0000-00-00 00:00:00', '2018-11-19 02:22:25'),
(82, 'web_color_style', 'app', '0000-00-00 00:00:00', '2018-11-19 02:22:25'),
(83, 'free_shipping_limit', '400', '0000-00-00 00:00:00', '2019-12-27 07:10:48'),
(84, 'app_icon_image', 'icon', '0000-00-00 00:00:00', '2019-02-05 05:12:59'),
(85, 'twilio_status', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 'twilio_authy_api_id', '1213213', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 'favicon', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 'Thumbnail_height', '150', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 'Thumbnail_width', '150', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 'Medium_height', '400', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 'Medium_width', '400', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 'Large_height', '900', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 'Large_width', '900', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 'environment', 'local', '0000-00-00 00:00:00', '2019-12-27 07:10:48'),
(95, 'maintenance_text', 'https://example.com', '0000-00-00 00:00:00', '2019-12-27 07:10:48'),
(96, 'package_charge_taxt', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 'order_commission', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 'all_items_price_included_tax', 'yes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 'all_items_price_included_tax_value', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 'driver_accept_multiple_order', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 'min_order_price', '100', '0000-00-00 00:00:00', '2019-12-27 07:10:48'),
(102, 'youtube_link', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 'external_website_link', 'http://localhost:8000', '0000-00-00 00:00:00', '2019-12-27 07:10:48'),
(104, 'google_map_api', '', '0000-00-00 00:00:00', '2019-12-27 07:10:48'),
(105, 'is_pos_purchased', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 'admin_version', '4.0.2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 'app_version', '4.0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 'web_version', '4.0.0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 'pos_version', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110, 'android_app_link', '#', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111, 'iphone_app_link', '#', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112, 'about_content', 'Lorum Ipsum Upsum Kupsum Jipsum Mipsum Lorum Ipsum Upsum Kupsum Jipsum Mipsum Lorum Ipsum Upsum Kupsum Jipsum Mipsum Lorum Ipsum Upsum Kupsum Jipsum Mipsum Lorum Ipsum Upsum Kupsum Jipsum Mipsum Lorum Ipsum Upsum Kupsum Jipsum Mipsum Lorum Ipsum Upsum Kupsum Jipsum Mipsum', '0000-00-00 00:00:00', '2019-10-11 06:57:29'),
(113, 'contact_content', 'Lorum Ipsum Upsum Kupsum Jipsum Mipsum Lorum Ipsum Upsum Kupsum Jipsum Mipsum Lorum Ipsum Upsum Kupsum Jipsum Mipsum Lorum Ipsum Upsum Kupsum Jipsum Mipsum Lorum Ipsum Upsum Kupsum Jipsum Mipsum Lorum Ipsum Upsum Kupsum Jipsum Mipsum Lorum Ipsum Upsum Kupsum Jipsum Mipsum', '0000-00-00 00:00:00', '2019-10-11 06:57:29'),
(114, 'testkh', '2654', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(115, 'fb_redirect_url', 'http://YOUR_DOMAIN_NAME/login/facebook/callback', '0000-00-00 00:00:00', '2019-11-01 01:58:53'),
(116, 'google_client_id', 'GOOGLE_CLIENT_ID', '0000-00-00 00:00:00', '2019-11-01 01:58:36'),
(117, 'google_client_secret', 'GOOGLE_SECRET_KEY', '0000-00-00 00:00:00', '2019-11-01 01:58:36'),
(118, 'google_redirect_url', 'http://YOUR_DOMAIN_NAME/login/google/callback', '0000-00-00 00:00:00', '2019-11-01 01:58:36');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_description`
--

DROP TABLE IF EXISTS `shipping_description`;
CREATE TABLE IF NOT EXISTS `shipping_description` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language_id` int(11) NOT NULL,
  `table_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_labels` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping_description`
--

INSERT INTO `shipping_description` (`id`, `name`, `language_id`, `table_name`, `sub_labels`) VALUES
(1, 'Free Shipping', 1, 'free_shipping', ''),
(4, 'Local Pickup', 1, 'local_pickup', ''),
(7, 'Flat Rate', 1, 'flate_rate', ''),
(10, 'UPS Shipping', 1, 'ups_shipping', '[{\r\n	\"language_id\": 1,\r\n	\"lang_name\": \"English\",\r\n	\"values\": [{\r\n		\"nextDayAir\": \"Next Day Air\",\r\n		\"secondDayAir\": \"2nd Day Air\",\r\n		\"ground\": \"Ground\",\r\n		\"threeDaySelect\": \"3 Day Select\",\r\n		\"nextDayAirSaver\": \"Next Day AirSaver\",\r\n		\"nextDayAirEarlyAM\": \"Next Day Air Early A.M.\",\r\n		\"secondndDayAirAM\": \"2nd Day Air A.M.\"\r\n	}]\r\n}, {\r\n	\"language_id\": 21,\r\n	\"lang_name\": \"Arabic\",\r\n	\"values\": [{\r\n		\"nextDayAir\": \"Next Day Air\",\r\n		\"secondDayAir\": \"2nd Day Air\",\r\n		\"ground\": \"Ground\",\r\n		\"threeDaySelect\": \"3 Day Select\",\r\n		\"nextDayAirSaver\": \"Next Day AirSaver\",\r\n		\"nextDayAirEarlyAM\": \"Next Day Air Early A.M.\",\r\n		\"secondndDayAirAM\": \"2nd Day Air A.M.\"\r\n	}]\r\n}]\r\n'),
(13, 'Shipping Price', 1, 'shipping_by_weight', '');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_methods`
--

DROP TABLE IF EXISTS `shipping_methods`;
CREATE TABLE IF NOT EXISTS `shipping_methods` (
  `shipping_methods_id` int(11) NOT NULL AUTO_INCREMENT,
  `methods_type_link` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isDefault` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`shipping_methods_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping_methods`
--

INSERT INTO `shipping_methods` (`shipping_methods_id`, `methods_type_link`, `isDefault`, `status`, `table_name`) VALUES
(1, 'upsShipping', 0, 0, 'ups_shipping'),
(2, 'freeShipping', 0, 0, 'free_shipping'),
(3, 'localPickup', 0, 0, 'local_pickup'),
(4, 'flateRate', 1, 1, 'flate_rate'),
(5, 'shippingByWeight', 0, 1, 'shipping_by_weight');

-- --------------------------------------------------------

--
-- Table structure for table `sliders_images`
--

DROP TABLE IF EXISTS `sliders_images`;
CREATE TABLE IF NOT EXISTS `sliders_images` (
  `sliders_id` int(11) NOT NULL AUTO_INCREMENT,
  `sliders_title` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sliders_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `carousel_id` int(11) DEFAULT NULL,
  `sliders_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sliders_group` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sliders_html_text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `expires_date` datetime NOT NULL,
  `date_added` datetime NOT NULL,
  `status` tinyint(1) NOT NULL,
  `type` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_status_change` datetime DEFAULT NULL,
  `languages_id` int(11) NOT NULL,
  PRIMARY KEY (`sliders_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders_images`
--

INSERT INTO `sliders_images` (`sliders_id`, `sliders_title`, `sliders_url`, `carousel_id`, `sliders_image`, `sliders_group`, `sliders_html_text`, `expires_date`, `date_added`, `status`, `type`, `date_status_change`, `languages_id`) VALUES
(1, 'ewgrege', 'test-product', 5, '110', '', '', '2020-07-09 00:00:00', '2020-01-01 06:18:39', 1, 'product', '2020-01-01 06:18:39', 1),
(2, 'frgergege', 'test-product', 5, '110', '', '', '2020-10-14 00:00:00', '2019-10-21 08:11:16', 1, 'product', '2019-10-21 08:11:16', 1),
(3, 'dgdthrh', 'test-product', 5, '110', '', '', '2019-09-18 00:00:00', '2019-10-21 08:11:37', 1, 'product', '2019-10-21 08:11:37', 1),
(4, 'sdasdasdass', '', 1, '111', '', '', '2020-07-15 00:00:00', '2019-09-10 08:26:49', 1, 'product', '0000-00-00 00:00:00', 1),
(5, 'fdsfds', '', 1, '111', '', '', '2020-08-14 00:00:00', '2019-09-10 08:27:04', 1, 'product', '0000-00-00 00:00:00', 1),
(6, 'fsfsfsfss', '', 1, '111', '', '', '2030-01-30 00:00:00', '2019-09-10 08:27:21', 1, 'product', '0000-00-00 00:00:00', 1),
(7, 'fdssdfsf', '', 2, '108', '', '', '2020-11-19 00:00:00', '2019-09-10 08:28:18', 1, 'product', '0000-00-00 00:00:00', 1),
(8, 'dasdada', '', 2, '108', '', '', '2021-07-14 00:00:00', '2019-09-10 08:28:31', 1, 'product', '0000-00-00 00:00:00', 1),
(9, 'dad', '', 2, '108', '', '', '2020-06-24 00:00:00', '2019-09-10 08:28:49', 1, 'product', '0000-00-00 00:00:00', 1),
(10, 'daadsd', '', 3, '110', '', '', '2021-10-20 00:00:00', '2019-09-10 08:29:41', 1, 'product', '0000-00-00 00:00:00', 1),
(11, 'sasdasd', '', 3, '110', '', '', '2020-07-15 00:00:00', '2019-09-10 08:29:58', 1, 'product', '0000-00-00 00:00:00', 1),
(12, 'ewef', '', 3, '110', '', '', '2021-07-15 00:00:00', '2019-09-10 08:30:13', 1, 'product', '0000-00-00 00:00:00', 1),
(13, 'fvtrgr', '', 4, '109', '', '', '2021-06-15 00:00:00', '2019-09-10 12:29:16', 1, 'product', '0000-00-00 00:00:00', 1),
(14, 't4tt', '', 4, '109', '', '', '2021-10-25 00:00:00', '2019-09-10 12:29:33', 1, 'product', '0000-00-00 00:00:00', 1),
(15, '4t4t4', '', 4, '109', '', '', '2022-07-07 00:00:00', '2019-09-10 12:29:50', 1, 'product', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `specials`
--

DROP TABLE IF EXISTS `specials`;
CREATE TABLE IF NOT EXISTS `specials` (
  `specials_id` int(11) NOT NULL AUTO_INCREMENT,
  `products_id` int(11) NOT NULL,
  `specials_new_products_price` decimal(15,2) NOT NULL,
  `specials_date_added` int(11) NOT NULL,
  `specials_last_modified` int(11) NOT NULL,
  `expires_date` int(11) NOT NULL,
  `date_status_change` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`specials_id`),
  KEY `idx_specials_products_id` (`products_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tax_class`
--

DROP TABLE IF EXISTS `tax_class`;
CREATE TABLE IF NOT EXISTS `tax_class` (
  `tax_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_class_title` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_class_description` text COLLATE utf8mb4_unicode_ci,
  `last_modified` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`tax_class_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tax_class`
--

INSERT INTO `tax_class` (`tax_class_id`, `tax_class_title`, `tax_class_description`, `last_modified`, `date_added`, `created_at`, `updated_at`) VALUES
(1, 'wfffwff', 'fwefc', NULL, '0000-00-00 00:00:00', '2020-06-28 13:05:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tax_rates`
--

DROP TABLE IF EXISTS `tax_rates`;
CREATE TABLE IF NOT EXISTS `tax_rates` (
  `tax_rates_id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_zone_id` int(11) NOT NULL,
  `tax_class_id` int(11) NOT NULL,
  `tax_priority` int(11) DEFAULT '1',
  `tax_rate` decimal(7,2) NOT NULL,
  `tax_description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`tax_rates_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tax_rates`
--

INSERT INTO `tax_rates` (`tax_rates_id`, `tax_zone_id`, `tax_class_id`, `tax_priority`, `tax_rate`, `tax_description`, `last_modified`, `date_added`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '3.00', '32rfd23vvvv', NULL, '0000-00-00 00:00:00', '2020-06-28 13:05:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

DROP TABLE IF EXISTS `units`;
CREATE TABLE IF NOT EXISTS `units` (
  `unit_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `is_active` tinyint(1) NOT NULL,
  `date_added` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`unit_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`unit_id`, `is_active`, `date_added`, `last_modified`, `created_at`, `updated_at`) VALUES
(1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2019-01-01 03:04:18', '2019-01-01 03:04:18'),
(2, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2019-01-01 03:04:18', '2019-01-01 03:04:18');

-- --------------------------------------------------------

--
-- Table structure for table `units_descriptions`
--

DROP TABLE IF EXISTS `units_descriptions`;
CREATE TABLE IF NOT EXISTS `units_descriptions` (
  `units_description_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `units_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `languages_id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`units_description_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units_descriptions`
--

INSERT INTO `units_descriptions` (`units_description_id`, `units_name`, `languages_id`, `unit_id`, `created_at`, `updated_at`) VALUES
(1, 'Gram', 1, 1, '2019-01-01 03:04:18', '2019-01-01 03:04:18'),
(2, 'غرام', 2, 1, '2019-01-01 03:04:18', '2019-01-01 03:04:18'),
(3, 'Kilogram', 1, 2, '2019-01-01 03:04:18', '2019-01-01 03:04:18'),
(4, 'كيلوغرام', 2, 2, '2019-01-01 03:04:18', '2019-01-01 03:04:18');

-- --------------------------------------------------------

--
-- Table structure for table `ups_shipping`
--

DROP TABLE IF EXISTS `ups_shipping`;
CREATE TABLE IF NOT EXISTS `ups_shipping` (
  `ups_id` int(11) NOT NULL AUTO_INCREMENT,
  `pickup_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isDisplayCal` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `serviceType` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shippingEnvironment` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `person_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_line_1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_line_2` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_of_package` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parcel_height` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parcel_width` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`ups_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ups_shipping`
--

INSERT INTO `ups_shipping` (`ups_id`, `pickup_method`, `isDisplayCal`, `serviceType`, `shippingEnvironment`, `user_name`, `access_key`, `password`, `person_name`, `company_name`, `phone_number`, `address_line_1`, `address_line_2`, `country`, `state`, `post_code`, `city`, `no_of_package`, `parcel_height`, `parcel_width`, `title`) VALUES
(1, '20', '', 'US_01,US_02,US_03,US_12,US_13,US_14,US_59', '0', 'nyblueprint', 'FCD7C8F94CB5EF46', 'delfia11', '', '', '', 'D Ground', '', 'US', 'NY', '10312', 'New York City', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `user_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_address_id` int(11) NOT NULL DEFAULT '0',
  `country_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `is_seen` tinyint(1) NOT NULL DEFAULT '0',
  `phone_verified` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auth_id_tiwilo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` varchar(33) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `user_name`, `first_name`, `last_name`, `gender`, `default_address_id`, `country_code`, `phone`, `email`, `password`, `avatar`, `status`, `is_seen`, `phone_verified`, `remember_token`, `auth_id_tiwilo`, `dob`, `created_at`, `updated_at`) VALUES
(4, 1, '', 'Rehan', 'Tariq', '0', 0, '', '', 'demo@ecommerce.com', '$2y$10$x3RTsiRQvbrVZeIvm2t/8uWHzTdrl3drZUyDpmaxpRXhzMX/1AjqS', '', '1', 0, '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 2, NULL, 'Rehan', 'Tariq', '0', 0, NULL, NULL, 'customer@ecommerce.com', '$2y$10$WS.vseOlOS9CBKfKo1Bsjuy9c5gCUMsiaE8RayIRDCyA8EHsOBwkC', NULL, '1', 0, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 2, NULL, 'gfdg', 'gfdgdf', NULL, 0, NULL, '+923017232211', 'demo@ecommerce.com', '$2y$10$wQAEH2K5U/sSp1iu3/bHiuqsIr4V26jQ4kuTersI6g3Armb9JLvqO', NULL, '1', 0, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_to_address`
--

DROP TABLE IF EXISTS `user_to_address`;
CREATE TABLE IF NOT EXISTS `user_to_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `address_book_id` int(11) NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_types`
--

DROP TABLE IF EXISTS `user_types`;
CREATE TABLE IF NOT EXISTS `user_types` (
  `user_types_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_types_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`user_types_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_types`
--

INSERT INTO `user_types` (`user_types_id`, `user_types_name`, `created_at`, `updated_at`, `isActive`) VALUES
(1, 'Super Admin', 1534774230, 0, 1),
(2, 'Customers', 1534777027, 0, 1),
(3, 'Vendors', 1538390209, 0, 1),
(4, 'Delivery Guy', 1542965906, 0, 1),
(5, 'Test 1', 1542965906, 0, 1),
(6, 'Test 2', 1542965906, 0, 1),
(7, 'Test 3', 1542965906, 0, 1),
(8, 'Test 4', 1542965906, 0, 1),
(9, 'Test 5', 1542965906, 0, 1),
(10, 'Test 6', 1542965906, 0, 1),
(11, 'test', 1574051544, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `whos_online`
--

DROP TABLE IF EXISTS `whos_online`;
CREATE TABLE IF NOT EXISTS `whos_online` (
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `full_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_id` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_address` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_entry` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_last_click` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_page_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `whos_online`
--

INSERT INTO `whos_online` (`customer_id`, `full_name`, `session_id`, `ip_address`, `time_entry`, `time_last_click`, `last_page_url`) VALUES
(1, 'Rehan Tariq', '', '', '2019-11-01 05:', '', ''),
(2, 'new test', '', '', '2019-11-01 05:', '', ''),
(3, 'Rehan Tariq', '', '', '2019-11-01 06:', '', ''),
(4, 'Rehan Tariq', '', '', '2019-11-01 06:', '', ''),
(5, 'Rehan Tariq', '', '', '2019-11-01 05:', '', ''),
(7, 'Rehan Tariq', '', '', '2019-11-01 06:', '', ''),
(8, 'Rehan Tariq', '', '', '2019-11-01 06:', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `zones`
--

DROP TABLE IF EXISTS `zones`;
CREATE TABLE IF NOT EXISTS `zones` (
  `zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `zone_country_id` int(11) NOT NULL,
  `zone_code` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`zone_id`),
  KEY `idx_zones_country_id` (`zone_country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=182 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `zones`
--

INSERT INTO `zones` (`zone_id`, `zone_country_id`, `zone_code`, `zone_name`) VALUES
(1, 223, 'AL', 'Alabama'),
(2, 223, 'AK', 'Alaska'),
(3, 223, 'AS', 'American Samoa'),
(4, 223, 'AZ', 'Arizona'),
(5, 223, 'AR', 'Arkansas'),
(6, 223, 'AF', 'Armed Forces Africa'),
(7, 223, 'AA', 'Armed Forces Americas'),
(8, 223, 'AC', 'Armed Forces Canada'),
(9, 223, 'AE', 'Armed Forces Europe'),
(10, 223, 'AM', 'Armed Forces Middle East'),
(11, 223, 'AP', 'Armed Forces Pacific'),
(12, 223, 'CA', 'California'),
(13, 223, 'CO', 'Colorado'),
(14, 223, 'CT', 'Connecticut'),
(15, 223, 'DE', 'Delaware'),
(16, 223, 'DC', 'District of Columbia'),
(17, 223, 'FM', 'Federated States Of Micronesia'),
(18, 223, 'FL', 'Florida'),
(19, 223, 'GA', 'Georgia'),
(20, 223, 'GU', 'Guam'),
(21, 223, 'HI', 'Hawaii'),
(22, 223, 'ID', 'Idaho'),
(23, 223, 'IL', 'Illinois'),
(24, 223, 'IN', 'Indiana'),
(25, 223, 'IA', 'Iowa'),
(26, 223, 'KS', 'Kansas'),
(27, 223, 'KY', 'Kentucky'),
(28, 223, 'LA', 'Louisiana'),
(29, 223, 'ME', 'Maine'),
(30, 223, 'MH', 'Marshall Islands'),
(31, 223, 'MD', 'Maryland'),
(32, 223, 'MA', 'Massachusetts'),
(33, 223, 'MI', 'Michigan'),
(34, 223, 'MN', 'Minnesota'),
(35, 223, 'MS', 'Mississippi'),
(36, 223, 'MO', 'Missouri'),
(37, 223, 'MT', 'Montana'),
(38, 223, 'NE', 'Nebraska'),
(39, 223, 'NV', 'Nevada'),
(40, 223, 'NH', 'New Hampshire'),
(41, 223, 'NJ', 'New Jersey'),
(42, 223, 'NM', 'New Mexico'),
(43, 223, 'NY', 'New York'),
(44, 223, 'NC', 'North Carolina'),
(45, 223, 'ND', 'North Dakota'),
(46, 223, 'MP', 'Northern Mariana Islands'),
(47, 223, 'OH', 'Ohio'),
(48, 223, 'OK', 'Oklahoma'),
(49, 223, 'OR', 'Oregon'),
(50, 223, 'PW', 'Palau'),
(51, 223, 'PA', 'Pennsylvania'),
(52, 223, 'PR', 'Puerto Rico'),
(53, 223, 'RI', 'Rhode Island'),
(54, 223, 'SC', 'South Carolina'),
(55, 223, 'SD', 'South Dakota'),
(56, 223, 'TN', 'Tennessee'),
(57, 223, 'TX', 'Texas'),
(58, 223, 'UT', 'Utah'),
(59, 223, 'VT', 'Vermont'),
(60, 223, 'VI', 'Virgin Islands'),
(61, 223, 'VA', 'Virginia'),
(62, 223, 'WA', 'Washington'),
(63, 223, 'WV', 'West Virginia'),
(64, 223, 'WI', 'Wisconsin'),
(65, 223, 'WY', 'Wyoming'),
(66, 38, 'AB', 'Alberta'),
(67, 38, 'BC', 'British Columbia'),
(68, 38, 'MB', 'Manitoba'),
(69, 38, 'NF', 'Newfoundland'),
(70, 38, 'NB', 'New Brunswick'),
(71, 38, 'NS', 'Nova Scotia'),
(72, 38, 'NT', 'Northwest Territories'),
(73, 38, 'NU', 'Nunavut'),
(74, 38, 'ON', 'Ontario'),
(75, 38, 'PE', 'Prince Edward Island'),
(76, 38, 'QC', 'Quebec'),
(77, 38, 'SK', 'Saskatchewan'),
(78, 38, 'YT', 'Yukon Territory'),
(79, 81, 'NDS', 'Niedersachsen'),
(80, 81, 'BAW', 'Baden-Württemberg'),
(81, 81, 'BAY', 'Bayern'),
(82, 81, 'BER', 'Berlin'),
(83, 81, 'BRG', 'Brandenburg'),
(84, 81, 'BRE', 'Bremen'),
(85, 81, 'HAM', 'Hamburg'),
(86, 81, 'HES', 'Hessen'),
(87, 81, 'MEC', 'Mecklenburg-Vorpommern'),
(88, 81, 'NRW', 'Nordrhein-Westfalen'),
(89, 81, 'RHE', 'Rheinland-Pfalz'),
(90, 81, 'SAR', 'Saarland'),
(91, 81, 'SAS', 'Sachsen'),
(92, 81, 'SAC', 'Sachsen-Anhalt'),
(93, 81, 'SCN', 'Schleswig-Holstein'),
(94, 81, 'THE', 'Thüringen'),
(95, 14, 'WI', 'Wien'),
(96, 14, 'NO', 'Niederösterreich'),
(97, 14, 'OO', 'Oberösterreich'),
(98, 14, 'SB', 'Salzburg'),
(99, 14, 'KN', 'Kärnten'),
(100, 14, 'ST', 'Steiermark'),
(101, 14, 'TI', 'Tirol'),
(102, 14, 'BL', 'Burgenland'),
(103, 14, 'VB', 'Voralberg'),
(104, 204, 'AG', 'Aargau'),
(105, 204, 'AI', 'Appenzell Innerrhoden'),
(106, 204, 'AR', 'Appenzell Ausserrhoden'),
(107, 204, 'BE', 'Bern'),
(108, 204, 'BL', 'Basel-Landschaft'),
(109, 204, 'BS', 'Basel-Stadt'),
(110, 204, 'FR', 'Freiburg'),
(111, 204, 'GE', 'Genf'),
(112, 204, 'GL', 'Glarus'),
(113, 204, 'JU', 'Graubünden'),
(114, 204, 'JU', 'Jura'),
(115, 204, 'LU', 'Luzern'),
(116, 204, 'NE', 'Neuenburg'),
(117, 204, 'NW', 'Nidwalden'),
(118, 204, 'OW', 'Obwalden'),
(119, 204, 'SG', 'St. Gallen'),
(120, 204, 'SH', 'Schaffhausen'),
(121, 204, 'SO', 'Solothurn'),
(122, 204, 'SZ', 'Schwyz'),
(123, 204, 'TG', 'Thurgau'),
(124, 204, 'TI', 'Tessin'),
(125, 204, 'UR', 'Uri'),
(126, 204, 'VD', 'Waadt'),
(127, 204, 'VS', 'Wallis'),
(128, 204, 'ZG', 'Zug'),
(129, 204, 'ZH', 'Zürich'),
(130, 195, 'A Coruña', 'A Coruña'),
(131, 195, 'Alava', 'Alava'),
(132, 195, 'Albacete', 'Albacete'),
(133, 195, 'Alicante', 'Alicante'),
(134, 195, 'Almeria', 'Almeria'),
(135, 195, 'Asturias', 'Asturias'),
(136, 195, 'Avila', 'Avila'),
(137, 195, 'Badajoz', 'Badajoz'),
(138, 195, 'Baleares', 'Baleares'),
(139, 195, 'Barcelona', 'Barcelona'),
(140, 195, 'Burgos', 'Burgos'),
(141, 195, 'Caceres', 'Caceres'),
(142, 195, 'Cadiz', 'Cadiz'),
(143, 195, 'Cantabria', 'Cantabria'),
(144, 195, 'Castellon', 'Castellon'),
(145, 195, 'Ceuta', 'Ceuta'),
(146, 195, 'Ciudad Real', 'Ciudad Real'),
(147, 195, 'Cordoba', 'Cordoba'),
(148, 195, 'Cuenca', 'Cuenca'),
(149, 195, 'Girona', 'Girona'),
(150, 195, 'Granada', 'Granada'),
(151, 195, 'Guadalajara', 'Guadalajara'),
(152, 195, 'Guipuzcoa', 'Guipuzcoa'),
(153, 195, 'Huelva', 'Huelva'),
(154, 195, 'Huesca', 'Huesca'),
(155, 195, 'Jaen', 'Jaen'),
(156, 195, 'La Rioja', 'La Rioja'),
(157, 195, 'Las Palmas', 'Las Palmas'),
(158, 195, 'Leon', 'Leon'),
(159, 195, 'Lleida', 'Lleida'),
(160, 195, 'Lugo', 'Lugo'),
(161, 195, 'Madrid', 'Madrid'),
(162, 195, 'Malaga', 'Malaga'),
(163, 195, 'Melilla', 'Melilla'),
(164, 195, 'Murcia', 'Murcia'),
(165, 195, 'Navarra', 'Navarra'),
(166, 195, 'Ourense', 'Ourense'),
(167, 195, 'Palencia', 'Palencia'),
(168, 195, 'Pontevedra', 'Pontevedra'),
(169, 195, 'Salamanca', 'Salamanca'),
(170, 195, 'Santa Cruz de Tenerife', 'Santa Cruz de Tenerife'),
(171, 195, 'Segovia', 'Segovia'),
(172, 195, 'Sevilla', 'Sevilla'),
(173, 195, 'Soria', 'Soria'),
(174, 195, 'Tarragona', 'Tarragona'),
(175, 195, 'Teruel', 'Teruel'),
(176, 195, 'Toledo', 'Toledo'),
(177, 195, 'Valencia', 'Valencia'),
(178, 195, 'Valladolid', 'Valladolid'),
(179, 195, 'Vizcaya', 'Vizcaya'),
(180, 195, 'Zamora', 'Zamora'),
(181, 195, 'Zaragoza', 'Zaragoza');

-- --------------------------------------------------------

--
-- Table structure for table `zones_to_geo_zones`
--

DROP TABLE IF EXISTS `zones_to_geo_zones`;
CREATE TABLE IF NOT EXISTS `zones_to_geo_zones` (
  `association_id` int(11) NOT NULL AUTO_INCREMENT,
  `zone_country_id` int(11) NOT NULL,
  `zone_id` int(11) DEFAULT NULL,
  `geo_zone_id` int(11) DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`association_id`),
  KEY `idx_zones_to_geo_zones_country_id` (`zone_country_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
