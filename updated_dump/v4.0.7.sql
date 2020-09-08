-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 01, 2020 at 10:33 AM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

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
-- Table structure for table `menus`
--
DROP TABLE IF EXISTS `menus`;
DROP TABLE IF EXISTS `menu_translation`;
DROP TABLE IF EXISTS `reviews`;
DROP TABLE IF EXISTS `reviews_description`;


CREATE TABLE `menus` (
  `id` int(11) NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `sub_sort_order` int(11) DEFAULT NULL,
  `parent_id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `external_link` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `page_id` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

CREATE TABLE `menu_translation` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `menu_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
-- Dumping data for table `payment_methods`
--

INSERT INTO `payment_methods` (`payment_methods_id`, `payment_method`, `status`, `environment`, `created_at`, `updated_at`) VALUES
(7, 'razor_pay', 1, 0, '2019-09-18 11:56:44', '0000-00-00 00:00:00'),
(8, 'pay_tm', 1, 0, '2019-09-18 11:56:44', '0000-00-00 00:00:00');

-- --------------------------------------------------------


--
-- Dumping data for table `payment_methods_detail`
--

INSERT INTO `payment_methods_detail` (`id`, `payment_methods_id`, `key`, `value`) VALUES
(35, 7, 'RAZORPAY_KEY', 'rzp_test_izyMwtDZYAQeSA'),
(36, 7, 'RAZORPAY_SECRET', 'LBIgacPG7Da6mdOARfig205j'),
(37, 8, 'paytm_mid', 'QROqBU67944622696360'),
(39, 8, 'paytm_key', 'w#5bJEFYV5EU4vnP'),
(40, 8, 'current_domain_name', 'http://localhost:8000');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `reviews_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `customers_id` int(11) DEFAULT NULL,
  `customers_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reviews_rating` int(11) DEFAULT NULL,
  `reviews_status` tinyint(1) NOT NULL DEFAULT '0',
  `reviews_read` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

CREATE TABLE `reviews_description` (
  `id` int(11) NOT NULL,
  `review_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `reviews_text` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews_description`
--

INSERT INTO `reviews_description` (`id`, `review_id`, `language_id`, `reviews_text`) VALUES
(20, 17, 1, 'fdssdgsg sfsd fds gs g dsgds gsdgsdg s gds gsd gsdgs dgs sgds sgd sg dsg dsg sgs gdssdg sdgsdgsgdsgsgs gs sd gsgdsgsg sdgsd gsdsd gsgd sdg sdgsdgs gds gdsgsd gs gsgsdgsdgdsg sdgsd sddsgsgsd sdg dsgds gsgsgs gs dgs dg gd gsdgsd gsdgsg sdggsdgsdgsd gsdg gsdgdsg sdgsdgds dsgsdg dsgdsgsdgds d sgdgds gds gdgdsg dssdg ds gsdgdsgds gs gsdgsgdd  sdgdgds gdsgds gsd gdsgdsgdsgdsg sdg s'),
(21, 18, 1, 'fdssdgsg sfsd fds gs g dsgds gsdgsdg s gds gsd gsdgs dgs sgds sgd sg dsg dsg sgs gdssdg sdgsdgsgdsgsgs gs sd gsgdsgsg sdgsd gsdsd gsgd sdg sdgsdgs gds gdsgsd gs gsgsdgsdgdsg sdgsd sddsgsgsd sdg dsgds gsgsgs gs dgs dg gd gsdgsd gsdgsg sdggsdgsdgsd gsdg gsdgdsg sdgsdgds dsgsdg dsgdsgsdgds d sgdgds gds gdgdsg dssdg ds gsdgdsgds gs gsdgsgdd  sdgdgds gdsgds gsd gdsgdsgdsgdsg sdg s');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_translation`
--
ALTER TABLE `menu_translation`
  ADD PRIMARY KEY (`id`);


--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`reviews_id`),
  ADD KEY `idx_reviews_products_id` (`products_id`),
  ADD KEY `idx_reviews_customers_id` (`customers_id`);

--
-- Indexes for table `reviews_description`
--
ALTER TABLE `reviews_description`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `menu_translation`
--
ALTER TABLE `menu_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;


--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `reviews_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `reviews_description`
--
ALTER TABLE `reviews_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
