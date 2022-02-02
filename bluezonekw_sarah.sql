-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 31, 2022 at 11:56 AM
-- Server version: 10.3.32-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bluezonekw_sarah`
--

-- --------------------------------------------------------

--
-- Table structure for table `basic_categories`
--

CREATE TABLE `basic_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `basic_categories`
--

INSERT INTO `basic_categories` (`id`, `name_ar`, `name_en`, `image_url`, `created_at`, `updated_at`) VALUES
(1, 'العبايات', 'Abayat', 'uploads/basic_categories/images/1641492518855عبايات.jpeg', '2021-09-11 21:13:56', '2022-01-06 18:08:38'),
(2, 'دراعات', 'Daraat', 'uploads/basic_categories/images/1641492531403دراعات.jpeg', '2021-09-11 21:13:56', '2022-01-06 18:08:51'),
(4, 'خمارات', 'Khamarat', 'uploads/basic_categories/images/1641492498918خمارات.jpeg', '2021-11-14 09:48:09', '2022-01-06 18:08:18'),
(6, 'بدل', 'jacket', 'uploads/basic_categories/images/1641492488692بدل.jpeg', '2021-11-14 09:49:40', '2022-01-06 18:08:08'),
(7, 'جمبسوت', 'Jumpsuit', 'uploads/basic_categories/images/1641492477414جمبوسات.jpeg', '2021-11-14 09:50:54', '2022-01-06 18:07:57'),
(8, 'بنطلونات', 'Pants', 'uploads/basic_categories/images/1641492459966بنطلونات.jpg', '2021-12-01 12:58:32', '2022-01-06 18:07:40');

-- --------------------------------------------------------

--
-- Table structure for table `best_sellers`
--

CREATE TABLE `best_sellers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `rate` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `best_sellers`
--

INSERT INTO `best_sellers` (`id`, `product_id`, `rate`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2021-09-13 22:51:58', '2021-09-13 22:51:58'),
(2, 2, 1, '2021-10-23 08:37:33', '2021-10-23 08:37:33'),
(3, 3, 1, '2021-11-11 23:42:21', '2021-11-11 23:42:21'),
(4, 6, 3, '2021-11-16 04:16:45', '2021-11-16 18:36:53'),
(5, 8, 7, '2021-11-16 18:34:17', '2022-01-09 18:37:34'),
(6, 9, 11, '2021-11-17 00:55:04', '2021-11-22 15:50:19'),
(7, 65, 1, '2021-12-12 10:41:49', '2021-12-12 10:41:49'),
(8, 91, 4, '2021-12-26 10:12:49', '2021-12-26 10:14:26'),
(9, 15, 6, '2022-01-03 13:57:19', '2022-01-10 16:31:36'),
(10, 116, 2, '2022-01-03 14:11:38', '2022-01-04 07:40:53'),
(11, 110, 4, '2022-01-04 07:35:07', '2022-01-04 07:37:26'),
(12, 106, 1, '2022-01-09 18:35:06', '2022-01-09 18:35:06'),
(13, 87, 1, '2022-01-09 18:40:20', '2022-01-09 18:40:20'),
(14, 11, 1, '2022-01-10 15:48:55', '2022-01-10 15:48:55'),
(15, 48, 1, '2022-01-10 16:59:47', '2022-01-10 16:59:47'),
(16, 141, 1, '2022-01-10 17:00:48', '2022-01-10 17:00:48'),
(17, 132, 1, '2022-01-10 20:18:21', '2022-01-10 20:18:21'),
(18, 135, 4, '2022-01-11 03:27:55', '2022-01-26 10:34:35'),
(19, 54, 1, '2022-01-24 18:44:35', '2022-01-24 18:44:35'),
(20, 53, 1, '2022-01-26 07:07:49', '2022-01-26 07:07:49');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `basic_category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name_ar`, `name_en`, `basic_category_id`, `created_at`, `updated_at`) VALUES
(1, 'عبايات ساده', 'Abayat Basic', 1, '2021-09-11 21:13:56', '2021-11-14 09:54:46'),
(2, 'عبايات ملونه', 'colorful abaya', 1, '2021-09-11 21:13:56', '2022-01-06 18:02:05'),
(3, 'عبايات مطرزه', 'embroidered abaya', 1, '2021-09-11 21:13:56', '2021-11-14 09:54:08'),
(4, 'دراعات ناعمه', 'Soft Daraat', 2, '2021-09-11 21:13:56', '2021-11-14 09:56:07'),
(5, 'دراعات مطرزه', 'Embroidered daraat', 2, '2021-09-11 21:13:56', '2021-11-14 09:57:04'),
(6, 'بدل استقبال', 'Reception suit', 6, '2021-09-11 21:13:56', '2022-01-08 14:04:39'),
(7, 'جمبسوت', 'Jump suits', 7, '2021-09-11 21:13:56', '2021-11-14 09:58:44'),
(17, 'بنطلونات', 'ALL', 8, '2021-12-01 13:02:06', '2021-12-01 13:02:06'),
(19, 'خمارات', 'khamarat', 4, '2022-01-07 13:23:40', '2022-01-09 12:44:58'),
(20, 'بدل ناعمة', 'soft suit', 6, '2022-01-08 16:00:07', '2022-01-08 16:00:07');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_period` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name_ar`, `name_en`, `delivery`, `delivery_period`, `country_id`, `created_at`, `updated_at`) VALUES
(1, 'دسمان', 'dasman', '3', '14', 1, '2021-09-11 21:25:57', '2022-01-09 12:59:02'),
(2, 'صباح الاحمد البحرية', 'Sabah al-Ahmad Marine City', '3', '0', 1, '2021-09-11 21:26:29', '2022-01-09 16:29:53'),
(3, 'ام الهيمان', 'Umm Al Hayman', '3', '0', 1, '2022-01-09 12:59:24', '2022-01-09 16:29:46'),
(4, 'جزيرة وربة', 'Warba Island', '3', '0', 1, '2022-01-09 13:00:14', '2022-01-09 16:29:40'),
(5, 'جزيرة بوبيان', 'Bubiyan Island', '3', '0', 1, '2022-01-09 13:00:50', '2022-01-09 16:29:33'),
(6, 'محافظة مبارك الكبير', 'Mubarak Al-Kabeer', '3', '0', 1, '2022-01-09 13:01:29', '2022-01-09 16:29:22'),
(7, 'محافظة حولي', 'Hawalli Governorate', '3', '0', 1, '2022-01-09 13:01:55', '2022-01-09 16:27:17'),
(8, 'محافظة الجهراء', 'Jahra Governorate', '3', '0', 1, '2022-01-09 13:02:31', '2022-01-09 16:27:10'),
(9, 'محافظة الفروانية', 'Farwaniya Governorate', '3', '0', 1, '2022-01-09 13:02:52', '2022-01-09 16:27:01'),
(10, 'محافظة الاحمدي', 'Ahmadi Governorate', '3', '0', 1, '2022-01-09 13:04:22', '2022-01-09 16:26:54'),
(11, 'محافظة العاصمة', 'Capital Governorate', '3', '0', 1, '2022-01-09 13:04:41', '2022-01-09 16:26:44');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `name_ar`, `name_en`, `code`, `created_at`, `updated_at`) VALUES
(1, 'احمر', 'Red', NULL, '2021-12-23 20:37:04', '2021-12-23 20:37:04'),
(2, 'اصفر', 'Yellow', NULL, '2021-12-23 20:37:26', '2021-12-23 20:37:26'),
(3, 'أسود', 'Black', NULL, '2021-12-25 17:42:01', '2021-12-25 20:38:22'),
(4, 'ابيض', 'white', NULL, '2021-12-25 17:41:46', '2021-12-25 17:41:46');

-- --------------------------------------------------------

--
-- Table structure for table `contact_messages`
--

CREATE TABLE `contact_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_messages`
--

INSERT INTO `contact_messages` (`id`, `name`, `phone`, `email`, `subject`, `body`, `created_at`, `updated_at`) VALUES
(1, 'Eric Jones', '555-555-1212', 'eric.jones.z.mail@gmail.com', 'Strike when the iron’s hot', 'Hey there, I just found your site, quick question…\r\n\r\nMy name’s Eric, I found saramerdas.shop after doing a quick search – you showed up near the top of the rankings, so whatever you’re doing for SEO, looks like it’s working well.\r\n\r\nSo here’s my question – what happens AFTER someone lands on your site?  Anything?\r\n\r\nResearch tells us at least 70% of the people who find your site, after a quick once-over, they disappear… forever.\r\n\r\nThat means that all the work and effort you put into getting them to show up, goes down the tubes.\r\n\r\nWhy would you want all that good work – and the great site you’ve built – go to waste?\r\n\r\nBecause the odds are they’ll just skip over calling or even grabbing their phone, leaving you high and dry.\r\n\r\nBut here’s a thought… what if you could make it super-simple for someone to raise their hand, say, “okay, let’s talk” without requiring them to even pull their cell phone from their pocket?\r\n  \r\nYou can – thanks to revolutionary new software that can literally make that first call happen NOW.\r\n\r\nTalk With Web Visitor is a software widget that sits on your site, ready and waiting to capture any visitor’s Name, Email address and Phone Number.  It lets you know IMMEDIATELY – so that you can talk to that lead while they’re still there at your site.\r\n  \r\nYou know, strike when the iron’s hot!\r\n\r\nCLICK HERE http://jumboleadmagnet.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nWhen targeting leads, you HAVE to act fast – the difference between contacting someone within 5 minutes versus 30 minutes later is huge – like 100 times better!\r\n\r\nThat’s why you should check out our new SMS Text With Lead feature as well… once you’ve captured the phone number of the website visitor, you can automatically kick off a text message (SMS) conversation with them. \r\n \r\nImagine how powerful this could be – even if they don’t take you up on your offer immediately, you can stay in touch with them using text messages to make new offers, provide links to great content, and build your credibility.\r\n\r\nJust this alone could be a game changer to make your website even more effective.\r\n\r\nStrike when  the iron’s hot!\r\n\r\nCLICK HERE http://jumboleadmagnet.com to learn more about everything Talk With Web Visitor can do for your business – you’ll be amazed.\r\n\r\nThanks and keep up the great work!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – you could be converting up to 100x more leads immediately!   \r\nIt even includes International Long Distance Calling. \r\nStop wasting money chasing eyeballs that don’t turn into paying customers. \r\nCLICK HERE http://jumboleadmagnet.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://jumboleadmagnet.com/unsubscribe.aspx?d=saramerdas.shop', '2022-01-10 05:53:18', '2022-01-10 05:53:18'),
(2, 'Natalie Turner', '8053086538', 'natalie@socialgrowthengine.com', 'Introduction to SGE', 'Hey it\'s Natalie a business developer here at Social Growth Engine, I just wanted to quickly reach out to see if we could help you with attracting new local customers on any of the major socials like Instagram, Twitter, YouTube and LinkedIn.\r\n\r\nI am sure you get a number of inquiries like this everyday so I will save the elevator pitch and just tell you straight out.  We are a team of 60+ Yanks, Aussies and Brits who dedicate our days to growing your accounts and getting sales on the largest social media platforms like Instagram, TikTok, YouTube etc.\r\n\r\nWe don’t use bots, everything we do is by hand manually and efficiently, we’ve helped 5000+ customers in 2021 alone and our 2022 is already off to a great start.\r\n\r\nWant to learn more? View our most loved products here https://linktr.ee/socialgrowthengine\r\n\r\nWarmest Regards\r\n\r\nNatalie Turner\r\nBusiness Development Manager - Social Growth Engine\r\nhttps://www.socialgrowthengine.com\r\n(I submitted this via your website contact form at https://saramerdas.shop/en/contact_us_user, I hope you don\'t mind :-))', '2022-01-11 18:12:18', '2022-01-11 18:12:18'),
(3, 'Eric Jones', '555-555-1212', 'eric.jones.z.mail@gmail.com', 'Cool website!', 'Cool website!\r\n\r\nMy name’s Eric, and I just found your site - saramerdas.shop - while surfing the net. You showed up at the top of the search results, so I checked you out. Looks like what you’re doing is pretty cool.\r\n \r\nBut if you don’t mind me asking – after someone like me stumbles across saramerdas.shop, what usually happens?\r\n\r\nIs your site generating leads for your business? \r\n \r\nI’m guessing some, but I also bet you’d like more… studies show that 7 out 10 who land on a site wind up leaving without a trace.\r\n\r\nNot good.\r\n\r\nHere’s a thought – what if there was an easy way for every visitor to “raise their hand” to get a phone call from you INSTANTLY… the second they hit your site and said, “call me now.”\r\n\r\nYou can –\r\n  \r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It lets you know IMMEDIATELY – so that you can talk to that lead while they’re literally looking over your site.\r\n\r\nCLICK HERE http://jumboleadmagnet.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nTime is money when it comes to connecting with leads – the difference between contacting someone within 5 minutes versus 30 minutes later can be huge – like 100 times better!\r\n\r\nThat’s why we built out our new SMS Text With Lead feature… because once you’ve captured the visitor’s phone number, you can automatically start a text message (SMS) conversation.\r\n  \r\nThink about the possibilities – even if you don’t close a deal then and there, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nWouldn’t that be cool?\r\n\r\nCLICK HERE http://jumboleadmagnet.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\nEric\r\n\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://jumboleadmagnet.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://jumboleadmagnet.com/unsubscribe.aspx?d=saramerdas.shop', '2022-01-25 03:41:36', '2022-01-25 03:41:36'),
(4, 'ام محمد', '67733541', 'asoomma2012@gmail.com', 'فاتوره', 'السلام عليكم سويت اوردر ودفعت بس ماطلعت فاتوره طلعلي فشل التحميل وتم خصم مني بالبنك شنو مقبول طلبي ولا لأ', '2022-01-26 07:11:48', '2022-01-26 07:11:48');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name_ar`, `name_en`, `code`, `country_code`, `delivery`, `image_url`, `currency_id`, `created_at`, `updated_at`) VALUES
(1, 'الكويت', 'Kuwait', '4', 'KWT', NULL, 'uploads/countries/images//1631402665824kuwait.png', 1, '2021-09-11 21:24:25', '2021-09-11 21:25:20'),
(3, 'السعودية', 'Saudi Arabia', '966', 'SAU', NULL, 'uploads/countries/images//16417345455840.jpg', 3, '2022-01-09 13:22:25', '2022-01-09 13:22:25'),
(4, 'سلطنة عمان', 'Oman', '968', 'OMR', NULL, 'uploads/countries/images//1641735837427o.jpg', 6, '2022-01-09 13:43:57', '2022-01-09 13:43:57'),
(5, 'قطر', 'Qatar', '974', 'QAR', NULL, 'uploads/countries/images//1641735902986q.png', 7, '2022-01-09 13:45:02', '2022-01-09 13:45:02'),
(6, 'البحرين', 'Bahrain', '973', 'BHR', NULL, 'uploads/countries/images//1641735985100ح.jpg', 4, '2022-01-09 13:46:25', '2022-01-09 13:46:25'),
(7, 'الامارات العربية', 'United Arab Emirates', '971', 'UAE', NULL, 'uploads/countries/images//1641736043708e.png', 5, '2022-01-09 13:47:23', '2022-01-09 13:47:23');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `percentage` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `percentage`, `created_at`, `updated_at`) VALUES
(1, 'abc', 50, '2021-11-19 01:14:35', '2021-11-19 01:14:35');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code_ar` varchar(90) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `rate`, `code`, `code_ar`, `created_at`, `updated_at`) VALUES
(1, 'دينار كويتي', '1', 'K.D', 'د.ك', '2021-09-11 21:23:06', '2022-01-09 13:25:06'),
(3, 'ريال سعودي', '0.080', 'SAR', 'ر.س', '2021-11-16 19:10:04', '2021-11-16 19:10:04'),
(4, 'دينار بحريني', '0.8', 'BHD', 'د.ب', '2021-11-16 19:11:43', '2022-01-09 13:40:52'),
(5, 'درهم اماراتي', '0.082', 'UAE', NULL, '2022-01-09 13:34:17', '2022-01-09 13:38:48'),
(6, 'ريال عماني', '0.78', 'OMR', NULL, '2022-01-09 13:38:10', '2022-01-09 13:39:31'),
(7, 'ريال قطري', '0.08', 'QAR', NULL, '2022-01-09 13:40:14', '2022-01-09 13:40:14');

-- --------------------------------------------------------

--
-- Table structure for table `custom_sizes`
--

CREATE TABLE `custom_sizes` (
  `id` int(11) NOT NULL,
  `order_item_id` int(11) DEFAULT NULL,
  `is_cart` tinyint(1) NOT NULL DEFAULT 1,
  `height` float NOT NULL,
  `shoulder` float DEFAULT NULL,
  `chest` float DEFAULT NULL,
  `the_front` int(11) DEFAULT NULL,
  `veil_size` int(11) DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `sleeve_length` float DEFAULT NULL,
  `hole_sleeve` float DEFAULT NULL,
  `order_size` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `custom_sizes`
--

INSERT INTO `custom_sizes` (`id`, `order_item_id`, `is_cart`, `height`, `shoulder`, `chest`, `the_front`, `veil_size`, `note`, `sleeve_length`, `hole_sleeve`, `order_size`, `created_at`, `updated_at`) VALUES
(1, 48, 1, 10, 20, 12, 2, 1, 'rgrgrg', 5, 25, NULL, '2022-01-04 07:40:53', '2022-01-04 07:40:53'),
(2, 51, 1, 11, 15, 125, 2, 1, 'ب', 12, 142, NULL, '2022-01-09 18:35:06', '2022-01-09 18:35:06'),
(3, 53, 1, 12, 12, 12, 2, 2, NULL, 12, 12, NULL, '2022-01-09 18:37:34', '2022-01-09 18:37:34'),
(4, 56, 1, 14, 42, 42, 1, 1, '4272', 42, 42, 'S', '2022-01-09 18:40:20', '2022-01-09 18:40:20'),
(5, 59, 1, 12, NULL, NULL, 1, 1, '020', NULL, NULL, 'S', '2022-01-10 15:36:19', '2022-01-10 15:36:19'),
(6, 60, 1, 12, NULL, NULL, 1, 1, '020', NULL, NULL, 'S', '2022-01-10 15:45:56', '2022-01-10 15:45:56'),
(7, 62, 1, 10, NULL, NULL, 0, 0, 'ny', NULL, NULL, 'S', '2022-01-10 15:48:55', '2022-01-10 15:48:55'),
(8, 63, 1, 12, NULL, NULL, 1, 1, '020', NULL, NULL, 'S', '2022-01-10 15:48:55', '2022-01-10 15:48:55'),
(9, 64, 1, 12, NULL, NULL, 2, 2, '111', NULL, NULL, 'L', '2022-01-10 16:31:36', '2022-01-10 16:31:36'),
(10, 65, 1, 57, NULL, NULL, 1, 1, NULL, NULL, NULL, 'S', '2022-01-10 16:59:47', '2022-01-10 16:59:47'),
(11, 66, 1, 11, NULL, NULL, 1, 1, NULL, NULL, NULL, 'S', '2022-01-10 17:00:48', '2022-01-10 17:00:48'),
(12, 72, 1, 54, NULL, NULL, 2, 2, NULL, NULL, NULL, 'M', '2022-01-10 20:18:21', '2022-01-10 20:18:21'),
(13, 73, 1, 154, NULL, NULL, 1, 1, NULL, NULL, NULL, 'M', '2022-01-11 03:27:55', '2022-01-11 03:27:55'),
(14, 74, 1, 154, NULL, NULL, 1, 1, NULL, NULL, NULL, 'M', '2022-01-11 03:28:23', '2022-01-11 03:28:23'),
(15, 75, 1, 53, NULL, NULL, 2, 2, 'الكتف ١٤\nالصدر ٤٠\nطول الجم ٢١', NULL, NULL, 'L', '2022-01-24 18:44:35', '2022-01-24 18:44:35'),
(16, 76, 1, 51, NULL, NULL, 1, 1, NULL, NULL, NULL, 'M', '2022-01-26 07:07:49', '2022-01-26 07:07:49'),
(17, 77, 1, 55, NULL, NULL, 1, 2, 'محيط الصدر ٤٨\nالكتف ١٥\nالطول٥٥\nوطول الكم ٢٤\nوفيه طباقي الكم', NULL, NULL, 'L', '2022-01-26 10:26:53', '2022-01-26 10:26:53'),
(18, 78, 1, 55, NULL, NULL, 1, 2, 'محيط الصدر ٤٨\nالكتف ١٥\nالطول٥٥\nوطول الكم ٢٤\nوفيه طباقي الكم', NULL, NULL, 'L', '2022-01-26 10:34:35', '2022-01-26 10:34:35');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `heights`
--

CREATE TABLE `heights` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `heights`
--

INSERT INTO `heights` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, '50', '2021-09-11 21:13:56', '2021-09-11 21:13:56'),
(2, '51', '2021-09-11 21:13:56', '2021-09-11 21:13:56'),
(3, '52', '2021-09-11 21:13:56', '2021-09-11 21:13:56'),
(4, '53', '2021-09-11 21:13:56', '2021-09-11 21:13:56'),
(5, '54', '2021-09-11 21:13:56', '2021-09-11 21:13:56'),
(6, '55', '2021-09-11 21:13:56', '2021-09-11 21:13:56'),
(7, '56', '2021-09-11 21:13:56', '2021-09-11 21:13:56'),
(8, '57', '2021-09-11 21:13:56', '2021-09-11 21:13:56'),
(9, '58', '2021-09-11 21:13:56', '2021-09-11 21:13:56'),
(10, '59', '2021-09-11 21:13:56', '2021-09-11 21:13:56'),
(12, '60', '2021-11-14 17:13:40', '2021-11-14 17:13:40'),
(13, '70', '2021-11-21 00:05:45', '2021-11-21 00:05:45'),
(14, 'free', '2021-12-01 12:49:04', '2021-12-01 12:49:04');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_08_15_012612_laratrust_setup_tables', 1),
(5, '2021_08_15_040324_create_basic_categories_table', 1),
(6, '2021_08_15_040614_create_categories_table', 1),
(7, '2021_08_15_041045_create_currencies_table', 1),
(8, '2021_08_15_041057_create_countries_table', 1),
(9, '2021_08_15_041106_create_cities_table', 1),
(10, '2021_08_17_133717_create_sliders_table', 1),
(11, '2021_08_17_161537_create_settings_table', 1),
(12, '2021_08_17_161551_create_pages_table', 1),
(13, '2021_08_17_163313_create_contact_messages_table', 1),
(14, '2021_08_17_182358_create_sizes_table', 1),
(15, '2021_08_17_182535_create_heights_table', 1),
(16, '2021_08_18_031802_create_products_table', 1),
(17, '2021_08_18_120403_create_prod_sizes_table', 1),
(18, '2021_08_18_120505_create_prod_heights_table', 1),
(19, '2021_08_18_120544_create_prod_imgs_table', 1),
(20, '2021_08_19_170714_create_wish_lists_table', 1),
(21, '2021_08_22_053016_create_views_table', 1),
(22, '2021_08_28_104240_create_orders_table', 1),
(23, '2021_08_28_104325_create_order_items_table', 1),
(24, '2021_09_13_114827_create_best_sellers_table', 2),
(25, '2021_11_11_120919_create_posts_table', 3),
(26, '2021_11_13_183327_create_news_table', 4),
(27, '2021_11_17_122802_create_coupons_table', 5),
(28, '2021_11_25_004705_create_size_guides_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_ar` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `appearance` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `content_en`, `content_ar`, `appearance`, `created_at`, `updated_at`) VALUES
(1, 'Sara Merdas the best Abayas with a high quality', 'ساره مرداس افضل العبايات و الجوده العاليه', 1, '2021-11-17 08:02:40', '2021-11-17 08:02:51'),
(2, 'shop now and enjoy the best offers and sales', 'تسوق الان و احصل علي افضل العروض و الخصومات', 1, '2021-11-17 08:03:31', '2021-11-17 08:03:31');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` bigint(20) UNSIGNED NOT NULL,
  `city_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `region` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address1` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address2` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `national_id` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_id` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_link` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `total_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_quantity` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `email`, `phone`, `country_id`, `city_id`, `user_id`, `region`, `address1`, `postal_code`, `address2`, `national_id`, `note`, `invoice_id`, `invoice_link`, `status`, `total_price`, `total_quantity`, `created_at`, `updated_at`) VALUES
(44, 'dsdfd', 'admin@admin.com', '11146469865', 1, 1, 0, NULL, 'sdfsd', '0', NULL, NULL, NULL, '43616778', 'https://portal.myfatoorah.com/KWT/ie/0508330054361677867', 1, '968', '1', '2022-01-04 07:40:53', '2022-01-04 07:40:54'),
(45, 'saramerdas', 'saramerdas@gmail.com', '96700033', 1, 2, 1, NULL, 'الكويت شارع اي شئ', '0', NULL, NULL, NULL, NULL, NULL, 0, '45', '1', '2022-01-09 18:33:35', '2022-01-09 18:33:35'),
(46, 'saramerdas', 'saramerdas@gmail.com', '96700033', 1, 1, 1, NULL, 'kuwait', '0', NULL, NULL, NULL, '43981045', 'https://portal.myfatoorah.com/KWT/ie/0508330054398104566', 0, '298', '2', '2022-01-09 18:35:06', '2022-01-09 18:35:07'),
(47, 'saramerdas', 'saramerdas@gmail.com', '96700033', 1, 1, 1, NULL, 'الكويت شارع اي شئ', '0', NULL, NULL, NULL, NULL, NULL, 0, '45', '1', '2022-01-09 18:35:42', '2022-01-09 18:35:42'),
(48, 'redsugar80', 'eng.ah2019@gmail.com', '99759489', 1, 1, 0, NULL, 'dfdfdgdg', '0', NULL, NULL, NULL, '43981198', 'https://portal.myfatoorah.com/KWT/ie/0508330054398119867', 0, '59', '1', '2022-01-09 18:37:34', '2022-01-09 18:37:35'),
(49, 'saramerdas', 'saramerdas@gmail.com', '96700033', 1, 1, 1, NULL, 'dsfddf', '0', NULL, NULL, NULL, NULL, NULL, 0, '58', '1', '2022-01-09 18:39:00', '2022-01-09 18:39:00'),
(50, 'saramerdas', 'saramerdas@gmail.com', '96700033', 1, 1, 1, NULL, 'dsfddf', '0', NULL, NULL, NULL, NULL, NULL, 0, '58', '1', '2022-01-09 18:39:22', '2022-01-09 18:39:22'),
(51, 'saramerdas', 'saramerdas@gmail.com', '96700033', 1, 1, 1, NULL, 'dsfddf', '0', NULL, NULL, NULL, '43981364', 'https://portal.myfatoorah.com/KWT/ie/0508330054398136467', 1, '58', '1', '2022-01-09 18:40:20', '2022-01-09 18:40:20'),
(52, 'Sara', 's.m.almutairi87@gmail.com', '96700033', 1, 1, 0, NULL, 'Bl3 st17 h29', '0', NULL, NULL, NULL, NULL, NULL, 0, '123', '1', '2022-01-10 12:13:19', '2022-01-10 12:13:19'),
(53, 'dsdfd', 'master@admin.com', '11146469865', 1, 1, 0, 'dsfdsf', 'sdfsd', '0', NULL, NULL, NULL, NULL, NULL, 0, '38', '1', '2022-01-10 15:35:25', '2022-01-10 15:35:25'),
(54, 'dsdfd', 'master@admin.com', '11146469865', 1, 1, 0, 'dsfdsf', 'sdfsd', '0', NULL, NULL, NULL, '44032690', 'https://portal.myfatoorah.com/KWT/ie/0508330054403269066', 1, '38', '1', '2022-01-10 15:36:19', '2022-01-10 15:36:20'),
(55, 'saramerdas', 'saramerdas@gmail.com', '96700033', 1, 1, 1, 'dsfdsf', 'sdfsd', '0', NULL, NULL, NULL, NULL, NULL, 0, '53', '2', '2022-01-10 15:45:56', '2022-01-10 15:45:56'),
(56, 'saramerdas', 'saramerdas@gmail.com', '96700033', 1, 1, 1, 'dsfdsf', 'sdfsd', '0', NULL, NULL, NULL, '44033594', 'https://portal.myfatoorah.com/KWT/ie/0508330054403359466', 1, '73', '2', '2022-01-10 15:48:55', '2022-01-10 15:48:56'),
(57, 'MOHAMMED ELAHFEE', 'bazar.alkuwait@gmail.com', '97244282', 1, 1, 0, 'Kuwait region', 'HWALII', '0', NULL, NULL, NULL, '44036754', 'https://portal.myfatoorah.com/KWT/ie/0508330054403675466', 0, '38', '1', '2022-01-10 16:31:36', '2022-01-10 16:31:37'),
(58, 'Sara', 's.m.almutairi87@gmail.com', '98872220', 1, 9, 0, 'صباح الناصر ق3', 'شارع 17 منزل 1', '0', NULL, NULL, NULL, '44038905', 'https://portal.myfatoorah.com/KWT/ie/0508330054403890566', 0, '78', '1', '2022-01-10 16:59:47', '2022-01-10 16:59:48'),
(59, 'saramerdas', 'saramerdas@gmail.com', '96700033', 1, 1, 1, 'Kuwait region', 'HWALII', '0', NULL, NULL, NULL, '44038989', 'https://portal.myfatoorah.com/KWT/ie/0508330054403898968', 0, '126', '1', '2022-01-10 17:00:48', '2022-01-10 17:00:49'),
(60, 'مشاعل غايب العازمي', 'Kuwait2020k@yahoo.com', '97924914', 1, 6, 0, 'صباح السالم', 'صباح السالم قطعه 9 الشارع 2 مقابل جاده 1 منزل 36', '0', NULL, NULL, NULL, NULL, NULL, 0, '35', '1', '2022-01-10 20:05:04', '2022-01-10 20:05:04'),
(61, 'مشاعل غايب العازمي', 'Kuwait2020k@yahoo.com', '97924914', 1, 6, 0, 'صباح السالم', 'صباح السالم قطعه 9 الشارع 2 مقابل جاده 1 منزل 36', '0', NULL, NULL, NULL, NULL, NULL, 0, '35', '1', '2022-01-10 20:05:43', '2022-01-10 20:05:43'),
(62, 'مشاعل غايب العازمي', 'Kuwait2020k@yahoo.com', '97924914', 1, 6, 0, 'صباح السالم', 'صباح السالم قطعه 9 الشارع 2 مقابل جاده 1 منزل 36', '0', NULL, NULL, NULL, NULL, NULL, 0, '35', '1', '2022-01-10 20:05:57', '2022-01-10 20:05:57'),
(63, 'مشاعل غايب سالم العازمي', 'Kuwait2020k@yahoo.com', '97924914', 1, 6, 0, 'صباح السالم', 'صباح السالم قطعه 9 الشارع 2 مقابل جاده 1 منزل 36', '0', NULL, NULL, NULL, NULL, NULL, 0, '35', '1', '2022-01-10 20:06:45', '2022-01-10 20:06:45'),
(64, 'مشاعل غايب العازمي', 'Kuwait2020k@yahoo.com', '96924914', 1, 6, 0, 'صباح السالم', 'صباح السالم قطعه 9 مقابل جاده 1 منزل 36', '0', NULL, NULL, NULL, NULL, NULL, 0, '35', '1', '2022-01-10 20:08:03', '2022-01-10 20:08:03'),
(65, 'ساره الرشيدي', 'sarahalrasheedii@gmail.com', '55551872', 1, 9, 0, 'اشبيليه', 'قطعه 3 شارع 318 منزل 6', '0', NULL, NULL, NULL, '44050282', 'https://portal.myfatoorah.com/KWT/ie/0508330054405028266', 0, '33', '1', '2022-01-10 20:18:21', '2022-01-10 20:18:22'),
(66, 'aliah alm', '3zoozy90@gmail.com', '55935558', 1, 9, 0, 'ishbelya', 'black', '0', NULL, NULL, NULL, '44058082', 'https://portal.myfatoorah.com/KWT/ie/0508330054405808266', 0, '41', '1', '2022-01-11 03:27:55', '2022-01-11 03:27:56'),
(67, 'aliah alm', '3zoozy90@gmail.com', '55935558', 1, 9, 0, 'ishbelya', 'blok 3 street 305  home 2', '0', NULL, NULL, NULL, '44058092', 'https://portal.myfatoorah.com/KWT/ie/0508330054405809266', 1, '41', '1', '2022-01-11 03:28:23', '2022-01-11 03:28:24'),
(68, 'نايفه السعيدي', 'naifa1974@gmail.com', '55100155', 1, 8, 0, 'سعد العبدالله قطعه 5 شارع 520 من ل 144 الأزرق 3', 'سعد العبدالله قطعه 5 شارع 520 منزل 144 الازرق 3', '0', NULL, NULL, NULL, '44967812', 'https://portal.myfatoorah.com/KWT/ie/0508330054496781267', 0, '68', '1', '2022-01-24 18:44:35', '2022-01-24 18:44:36'),
(69, 'ام محمد', 'asoomma2012@gmail.com', '67733541', 1, 10, 0, 'الصباحية', 'قطعة 4 شارع 13 منزل 87(الرجاء عدم دق الجرس والتواصل هاتفيا فقط)', '0', NULL, NULL, NULL, '45088200', 'https://portal.myfatoorah.com/KWT/ie/0508330054508820066', 1, '43', '1', '2022-01-26 07:07:49', '2022-01-26 07:07:50'),
(70, 'نوف بدر', 'kwt5609@gmail.com', '99395896', 1, 6, 0, 'صباح السالم', 'صباح السالم ق٨ ش١ جاده ٧ م١٥', '0', NULL, NULL, NULL, '45101683', 'https://portal.myfatoorah.com/KWT/ie/0508330054510168366', 0, '41', '1', '2022-01-26 10:26:53', '2022-01-26 10:26:54'),
(71, 'نوف بدر', 'kwt5609@gmail.com', '99395896', 1, 6, 0, 'صباح السالم', 'صباح السالم ق٨ ش١ جاده ٧ م١٥', '0', NULL, NULL, NULL, '45102352', 'https://portal.myfatoorah.com/KWT/ie/0508330054510235265', 1, '41', '1', '2022-01-26 10:34:35', '2022-01-26 10:34:35');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `product_height_id` bigint(20) UNSIGNED NOT NULL,
  `product_size_id` bigint(20) UNSIGNED NOT NULL,
  `color` bigint(20) NOT NULL DEFAULT 3,
  `quantity` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `product_height_id`, `product_size_id`, `color`, `quantity`, `created_at`, `updated_at`) VALUES
(48, 44, 119, 0, 0, 179, '1', '2022-01-04 07:40:53', '2022-01-04 07:40:53'),
(49, 45, 136, 0, 0, 482, '1', '2022-01-09 18:33:35', '2022-01-09 18:33:35'),
(50, 46, 15, 1169, 234, 4, '1', '2022-01-09 18:35:06', '2022-01-09 18:35:06'),
(51, 46, 106, 0, 0, 422, '1', '2022-01-09 18:35:06', '2022-01-09 18:35:06'),
(52, 47, 136, 0, 0, 482, '1', '2022-01-09 18:35:42', '2022-01-09 18:35:42'),
(53, 48, 8, 0, 0, 60, '1', '2022-01-09 18:37:34', '2022-01-09 18:37:34'),
(54, 49, 87, 0, 0, 55, '1', '2022-01-09 18:39:00', '2022-01-09 18:39:00'),
(55, 50, 87, 0, 0, 55, '1', '2022-01-09 18:39:22', '2022-01-09 18:39:22'),
(56, 51, 87, 0, 0, 55, '1', '2022-01-09 18:40:20', '2022-01-09 18:40:20'),
(57, 52, 107, 0, 0, 360, '1', '2022-01-10 12:13:19', '2022-01-10 12:13:19'),
(58, 53, 15, 0, 0, 0, '1', '2022-01-10 15:35:25', '2022-01-10 15:35:25'),
(59, 54, 15, 0, 0, 0, '1', '2022-01-10 15:36:19', '2022-01-10 15:36:19'),
(60, 55, 15, 0, 0, 0, '1', '2022-01-10 15:45:56', '2022-01-10 15:45:56'),
(61, 55, 123, 0, 0, 0, '1', '2022-01-10 15:45:56', '2022-01-10 15:45:56'),
(62, 56, 11, 0, 0, 0, '1', '2022-01-10 15:48:55', '2022-01-10 15:48:55'),
(63, 56, 15, 0, 0, 0, '1', '2022-01-10 15:48:55', '2022-01-10 15:48:55'),
(64, 57, 15, 0, 0, 0, '1', '2022-01-10 16:31:36', '2022-01-10 16:31:36'),
(65, 58, 48, 0, 0, 0, '1', '2022-01-10 16:59:47', '2022-01-10 16:59:47'),
(66, 59, 141, 0, 0, 0, '1', '2022-01-10 17:00:48', '2022-01-10 17:00:48'),
(67, 60, 133, 0, 0, 0, '1', '2022-01-10 20:05:04', '2022-01-10 20:05:04'),
(68, 61, 133, 0, 0, 0, '1', '2022-01-10 20:05:43', '2022-01-10 20:05:43'),
(69, 62, 133, 0, 0, 0, '1', '2022-01-10 20:05:57', '2022-01-10 20:05:57'),
(70, 63, 133, 0, 0, 0, '1', '2022-01-10 20:06:46', '2022-01-10 20:06:46'),
(71, 64, 133, 0, 0, 0, '1', '2022-01-10 20:08:03', '2022-01-10 20:08:03'),
(72, 65, 132, 0, 0, 0, '1', '2022-01-10 20:18:21', '2022-01-10 20:18:21'),
(73, 66, 135, 0, 0, 0, '1', '2022-01-11 03:27:55', '2022-01-11 03:27:55'),
(74, 67, 135, 0, 0, 0, '1', '2022-01-11 03:28:23', '2022-01-11 03:28:23'),
(75, 68, 54, 0, 0, 0, '1', '2022-01-24 18:44:35', '2022-01-24 18:44:35'),
(76, 69, 53, 0, 0, 0, '1', '2022-01-26 07:07:49', '2022-01-26 07:07:49'),
(77, 70, 135, 0, 0, 0, '1', '2022-01-26 10:26:53', '2022-01-26 10:26:53'),
(78, 71, 135, 0, 0, 0, '1', '2022-01-26 10:34:35', '2022-01-26 10:34:35');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_title_ar` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_details_ar` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_title_en` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_details_en` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `page_title_ar`, `page_details_ar`, `page_title_en`, `page_details_en`, `created_at`, `updated_at`) VALUES
(1, 'سياسة الخصوصية', ' هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق. إذا كنت تحتاج إلى عدد أكبر من الفقرات يتيح لك مولد النص العربى زيادة عدد الفقرات كما تريد، النص لن يبدو مقسما ولا يحوي أخطاء لغوية، مولد النص العربى مفيد لمصممي المواقع على وجه الخصوص، حيث يحتاج العميل فى كثير من الأحيان أن يطلع على صورة حقيقية لتصميم\r\n الموقع. ومن هنا وجب على المصمم أن يضع نصوصا مؤقتة على التصميم ليظهر للعميل الشكل كاملاً،دور مولد النص العربى أن يوفر على المصمم عناء\r\n  البحث عن نص بديل لا علاقة له بالموضوع الذى يتحدث عنه التصميم فيظهر بشكل لا يليق. هذا النص يمكن أن يتم تركيبه على أي تصميم دون مشكلة فلن يبدو وكأنه نص منسوخ، غير منظم، غير منسق، أو حتى غير مفهوم.\r\n   لأنه مازال نصاً بديلاً ومؤقتاً.', 'Privacy Policy', ' This text is an example of text\r\nthat can be replaced in the same space, this text has been generated\r\nfrom the Arabic text generator, where you can generate such text or many other\r\ntexts in addition to increasing the number of characters generated by the application. If you need\r\na larger number of paragraphs, the Arabic text generator allows you to increase the number of paragraphs as\r\nyou want, the text will not appear divided and does not contain linguistic errors, the Arabic text generator\r\nis useful for web designers in particular, as the client often needs to see a real picture For website design. Hence,\r\nthe designer must put temporary texts on the design to show the customer the complete form, the role of the Arabic text\r\ngenerator is to spare the designer the trouble of searching for an alternative text that has nothing to do with the topic\r\nthe design is talking about, so it appears in an inappropriate way. This text can be installed on any design without\r\nproblem, it will not look like copied text, unorganized, unformatted, or even incomprehensible. Because it is\r\nstill an alternate and temporary text. ', '2021-09-11 21:13:56', '2021-09-11 21:13:56'),
(2, 'من نحن', ' يبق أن وجهان مليون التجارية. لكل و بقصف وانتهاءً التبرعات, قد التبرعات ويكيبيديا، أما. تلك جيما عليها جزيرتي ثم, أضف رئيس بتطويق انتصارهم أم. عدم عن فشكّل الأسيوي واعتلاء. لعملة أوروبا إنطلاق عل هذا, عدد مشروط اليابان في. بحث ماشاء طوكيو إذ, بل بأيدي الشرقي دار, بل نقطة أواخر لكل. دنو أن مارد وجهان اوروبا, بها من أسيا مكثّفة سليمان،. ولم كل لمحاكم لبلجيكا،. أم\r\n سابق الأعمال التكاليف بعض, بها تسبب الشمل الثالث، و.\r\n يبق أن وجهان مليون التجارية. لكل و بقصف وانتهاءً التبرعات, قد التبرعات ويكيبيديا، أما. تلك جيما عليها جزيرتي ثم, أضف رئيس بتطويق انتصارهم أم. عدم عن فشكّل الأسيوي واعتلاء. لعملة أوروبا إنطلاق عل هذا, عدد مشروط اليابان في. بحث ماشاء طوكيو إذ, بل بأيدي الشرقي دار, بل نقطة أواخر لكل. دنو أن مارد وجهان اوروبا, بها من أسيا مكثّفة سليمان،. ولم كل لمحاكم لبلجيكا،.\r\n أم سابق الأعمال التكاليف بعض, بها تسبب الشمل الثالث، و.', 'About Us', ' Lorem Ipsum is simply dummy text of the printing and typesetting industry.\r\nLorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s,\r\nwhen an unknown printer took a galley of type and scrambled it to make a type specimen book.\r\nIt has survived not only five centuries, but also the leap into electronic typesetting, remaining\r\nessentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,\r\nand more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum Lorem Ipsum is\r\nsimply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard\r\ndummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\r\n It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially\r\n  unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and\r\n  more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum Lorem Ipsum\r\n  is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the\r\n  industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled\r\n  it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,\r\n  remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing\r\n  Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including\r\n  versions of Lorem Ipsum Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been\r\n  the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled\r\n  it to make a type specimen book. It has survived not only five centuries, but also the leap into\r\n  electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of\r\n  Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker\r\n  including versions of Lorem Ipsum', '2021-09-11 21:13:56', '2021-09-11 21:13:56'),
(3, 'الشروط والأحكام', ' هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق.\r\n إذا كنت تحتاج إلى عدد أكبر من الفقرات يتيح لك مولد النص العربى زيادة عدد الفقرات كما تريد، النص لن يبدو مقسما ولا يحوي أخطاء لغوية، مولد النص العربى مفيد لمصممي المواقع على وجه الخصوص، حيث يحتاج العميل فى كثير من الأحيان أن يطلع على صورة حقيقية لتصميم الموقع.\r\n ومن هنا وجب على المصمم أن يضع نصوصا مؤقتة على التصميم ليظهر للعميل الشكل كاملاً،دور مولد النص العربى أن يوفر على المصمم عناء البحث عن نص بديل لا علاقة له بالموضوع الذى يتحدث عنه التصميم فيظهر بشكل لا يليق.\r\n هذا النص يمكن أن يتم تركيبه على أي تصميم دون مشكلة فلن يبدو وكأنه نص منسوخ، غير منظم، غير منسق، أو حتى غير مفهوم. لأنه مازال نصاً بديلاً ومؤقتاً.\r\n ', 'Terms', '', '2021-09-11 21:13:56', '2021-09-11 21:13:56'),
(4, 'التوصيل', ' هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو\r\nالعديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق. إذا كنت تحتاج إلى عدد أكبر من الفقرات يتيح لك مولد النص العربى زيادة عدد الفقرات كما تريد، النص لن يبدو مقسما ولا يحوي أخطاء لغوية، مولد النص العربى مفيد لمصممي المواقع على وجه الخصوص، حيث يحتاج العميل فى كثير من الأحيان أن يطلع\r\n على صورة حقيقية لتصميم الموقع. ومن هنا وجب على المصمم أن يضع نصوصا مؤقتة على التصميم ليظهر للعميل الشكل كاملاً،دور مولد النص العربى أن يوفر على المصمم عناء\r\n  البحث عن نص بديل لا علاقة له بالموضوع الذى يتحدث عنه التصميم فيظهر بشكل لا يليق. هذا النص يمكن أن يتم تركيبه على أي تصميم دون مشكلة فلن يبدو وكأنه نص منسوخ، غير منظم، غير منسق، أو حتى غير مفهوم.\r\n   لأنه مازال نصاً بديلاً ومؤقتاً. ', 'Delivery', '', '2021-09-11 21:13:56', '2021-09-11 21:13:56'),
(5, 'طرق الدفع', ' هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من\r\n النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق. إذا كنت تحتاج إلى عدد أكبر من الفقرات يتيح لك مولد النص العربى زيادة عدد الفقرات كما تريد، النص لن يبدو مقسما ولا يحوي أخطاء لغوية، مولد النص العربى مفيد لمصممي المواقع على وجه الخصوص، حيث يحتاج العميل فى كثير من\r\n  الأحيان أن يطلع على صورة حقيقية لتصميم الموقع. ومن هنا وجب على المصمم أن يضع نصوصا مؤقتة على التصميم ليظهر للعميل الشكل كاملاً،دور مولد النص العربى أن يوفر على المصمم عناء البحث عن نص بديل\r\n   لا علاقة له بالموضوع الذى يتحدث عنه التصميم فيظهر بشكل لا يليق. هذا النص يمكن أن يتم تركيبه على أي تصميم دون مشكلة فلن يبدو وكأنه نص منسوخ، غير منظم، غير منسق،\r\n    أو حتى غير مفهوم. لأنه مازال نصاً بديلاً ومؤقتاً. ', 'Payment Methods', '', '2021-09-11 21:13:56', '2021-09-11 21:13:56'),
(6, 'الأسترجاع والاستبدال', '..هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها\r\n التطبيق. إذا كنت تحتاج إلى عدد أكبر من الفقرات يتيح لك مولد النص العربى زيادة عدد الفقرات كما تريد، النص لن يبدو مقسما ولا يحوي أخطاء لغوية، مولد النص العربى مفيد لمصممي المواقع\r\n  على وجه الخصوص، حيث يحتاج العميل فى كثير من الأحيان أن يطلع على صورة حقيقية لتصميم الموقع. ومن هنا وجب على المصمم أن يضع نصوصا مؤقتة على التصميم ليظهر للعميل الشكل كاملاً،دور مولد النص العربى أن يوفر على المصمم عناء البحث عن نص بديل لا علاقة له بالموضوع الذى يتحدث عنه التصميم فيظهر بشكل\r\n  لا يليق. هذا النص يمكن أن يتم تركيبه على أي تصميم دون مشكلة فلن\r\n   يبدو وكأنه نص منسوخ، غير منظم، غير منسق، أو حتى غير مفهوم. لأنه مازال نصاً بديلاً ومؤقتاً. ', 'Exchanges', 'Lorem Ipsum is simply dummy text of the printing and\r\ntypesetting industry. Lorem Ipsum has been the industry\'s standard dummy\r\ntext ever since the 1500s, when an unknown printer took a galley of type and\r\nscrambled it to make a type specimen book. It has survived not only five centuries,\r\nbut also the leap into electronic typesetting, remaining essentially unchanged. It was popularised\r\n in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently\r\n with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '2021-09-11 21:13:56', '2021-09-11 21:13:56'),
(7, 'الأسئلة المتكررة', 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص\r\nالأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق. إذا كنت تحتاج إلى عدد أكبر من الفقرات يتيح لك مولد النص العربى زيادة عدد الفقرات كما تريد، النص لن يبدو مقسما ولا يحوي أخطاء لغوية، مولد النص العربى مفيد لمصممي المواقع على وجه الخصوص، حيث يحتاج العميل فى كثير من\r\n الأحيان أن يطلع على صورة حقيقية لتصميم الموقعز  ومن هنا وجب على المصمم أن يضع نصوصا مؤقتة على التصميم ليظهر للعميل الشكل كاملاً،دور مولد النص العربى أن يوفر على المصمم عناء البحث عن نص بديل لا\r\n  علاقة له بالموضوع الذى يتحدث عنه التصميم فيظهر بشكل لا يليق. هذا النص يمكن أن يتم تركيبه على أي تصميم دون مشكلة فلن يبدو وكأنه نص منسوخ، غير منظم، غير منسق،\r\n   أو حتى غير مفهوم. لأنه مازال نصاً بديلاً ومؤقتاً', 'FAQ', 'Details', '2021-09-11 21:13:56', '2021-09-11 21:13:56');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('nnnnali123@gmail.com', 'pWVV7UHOdaJWG4RiC9F53ZZeQw1zsdNUF3mDTkLQwxkmqnud1AhD3GpEHe9NXkGB', '2021-11-16 23:23:01');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_user`
--

CREATE TABLE `permission_user` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_ar` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_en1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_ar1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `appearance` tinyint(1) DEFAULT 1,
  `img1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title_ar`, `title_en`, `description_ar`, `description_en`, `description_en1`, `description_ar1`, `appearance`, `img1`, `img2`, `created_at`, `updated_at`) VALUES
(1, 'ملابس المحجبات.. كيف تطورت عبر الزمن؟', 'Veiled clothes .. How has it evolved over time?', 'تتنوع قصات ملابس المحجات حسب رغبة الأسواق والفتيات، ويتركز في الأسواق أنواع القصات المواكبة للموضة، ولكن نحن نعلم أن قصة الفستان الطويل هي أهم ما يناسب موضة المحجبات. ولكن تتنوع القصات مثل التنورة الطويلة والقميص عليها أو الرداء الطويل، وهناك الكثير من القصات الأخرى التي تصممها متخصصات الأزياء والتي تناسب إطلالة الأناقة.', 'In the context of constantly evolving conditions in various fields, the headscarf for veiled girls has become an integral part of elegance, but it may also be used to hide certain parts of the defects that girls do not want and then highlight the natural beauty, as we can call the fashion of the veil with perfect beauty as if Tie with the fashion of hairstyles.', 'The styles of veiled clothes vary according to the desire of markets and girls, and the markets focus on types of fashionable cuts, but we know that the story of the long dress is the most important thing that suits the fashion of veiled women. But the styles vary, such as the long skirt and the shirt on it or the long robe, and there are many other styles designed by fashion specialists that fit the elegance look.', 'تتنوع قصات ملابس المحجات حسب رغبة الأسواق والفتيات، ويتركز في الأسواق أنواع القصات المواكبة للموضة، ولكن نحن نعلم أن قصة الفستان الطويل هي أهم ما يناسب موضة المحجبات. ولكن تتنوع القصات مثل التنورة الطويلة والقميص عليها أو الرداء الطويل، وهناك الكثير من القصات الأخرى التي تصممها متخصصات الأزياء والتي تناسب إطلالة الأناقة.', 1, 'uploads/posts/images/16380372375601.jpg', 'uploads/posts/images/163803723749319_3.jpg', '2021-11-16 02:53:23', '2021-11-27 18:20:37'),
(2, 'تطور موضة غطاء الرأس', 'The evolution of the headdress fashion', 'تتنوع قصات ملابس المحجات حسب رغبة الأسواق والفتيات، ويتركز في الأسواق أنواع القصات المواكبة للموضة، ولكن نحن نعلم أن قصة الفستان الطويل هي أهم ما يناسب موضة المحجبات. ولكن تتنوع القصات مثل التنورة الطويلة والقميص عليها أو الرداء الطويل، وهناك الكثير من القصات الأخرى التي تصممها متخصصات الأزياء والتي تناسب إطلالة الأناقة.', 'The styles of veiled clothes vary according to the desire of markets and girls, and the markets focus on types of fashionable cuts, but we know that the story of the long dress is the most important thing that suits the fashion of veiled women. But the styles vary, such as the long skirt and the shirt on it or the long robe, and there are many other styles designed by fashion specialists that fit the elegance look.', 'The styles of veiled clothes vary according to the desire of markets and girls, and the markets focus on types of fashionable cuts, but we know that the story of the long dress is the most important thing that suits the fashion of veiled women. But the styles vary, such as the long skirt and the shirt on it or the long robe, and there are many other styles designed by fashion specialists that fit the elegance look.', 'تتنوع قصات ملابس المحجات حسب رغبة الأسواق والفتيات، ويتركز في الأسواق أنواع القصات المواكبة للموضة، ولكن نحن نعلم أن قصة الفستان الطويل هي أهم ما يناسب موضة المحجبات. ولكن تتنوع القصات مثل التنورة الطويلة والقميص عليها أو الرداء الطويل، وهناك الكثير من القصات الأخرى التي تصممها متخصصات الأزياء والتي تناسب إطلالة الأناقة.', 1, 'uploads/posts/images/16380372101046.jpg', 'uploads/posts/images/163803721174214.jpg', '2021-11-16 02:54:33', '2021-11-27 18:20:11'),
(3, 'ملابس المحجبات.. كيف تطورت عبر الزمن؟', 'The evolution of the headdress fashion', 'تتنوع قصات ملابس المحجات حسب رغبة الأسواق والفتيات، ويتركز في الأسواق أنواع القصات المواكبة للموضة، ولكن نحن نعلم أن قصة الفستان الطويل هي أهم ما يناسب موضة المحجبات. ولكن تتنوع القصات مثل التنورة الطويلة والقميص عليها أو الرداء الطويل، وهناك الكثير من القصات الأخرى التي تصممها متخصصات الأزياء والتي تناسب إطلالة الأناقة.', 'The styles of veiled clothes vary according to the desire of markets and girls, and the markets focus on types of fashionable cuts, but we know that the story of the long dress is the most important thing that suits the fashion of veiled women. But the styles vary, such as the long skirt and the shirt on it or the long robe, and there are many other styles designed by fashion specialists that fit the elegance look.', 'The styles of veiled clothes vary according to the desire of markets and girls, and the markets focus on types of fashionable cuts, but we know that the story of the long dress is the most important thing that suits the fashion of veiled women. But the styles vary, such as the long skirt and the shirt on it or the long robe, and there are many other styles designed by fashion specialists that fit the elegance look.', 'تتنوع قصات ملابس المحجات حسب رغبة الأسواق والفتيات، ويتركز في الأسواق أنواع القصات المواكبة للموضة، ولكن نحن نعلم أن قصة الفستان الطويل هي أهم ما يناسب موضة المحجبات. ولكن تتنوع القصات مثل التنورة الطويلة والقميص عليها أو الرداء الطويل، وهناك الكثير من القصات الأخرى التي تصممها متخصصات الأزياء والتي تناسب إطلالة الأناقة.', 1, 'uploads/posts/images/163803718454112.jpg', 'uploads/posts/images/163803718467111.jpg', '2021-11-16 02:55:52', '2021-11-27 18:19:44');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_ar` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `appearance` tinyint(1) DEFAULT NULL,
  `featured` tinyint(1) DEFAULT NULL,
  `new` tinyint(1) DEFAULT NULL,
  `price` float NOT NULL,
  `delivery_period` int(11) DEFAULT NULL,
  `img` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `best_selling` tinyint(1) NOT NULL DEFAULT 0,
  `basic_category_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `size_guide_id` int(11) NOT NULL,
  `is_order` tinyint(1) NOT NULL DEFAULT 0,
  `order_type` tinyint(1) NOT NULL DEFAULT 0,
  `order_s` tinyint(1) NOT NULL DEFAULT 0,
  `order_l` tinyint(1) NOT NULL DEFAULT 0,
  `order_m` tinyint(1) NOT NULL DEFAULT 0,
  `order_xl` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title_en`, `title_ar`, `description_en`, `description_ar`, `appearance`, `featured`, `new`, `price`, `delivery_period`, `img`, `best_selling`, `basic_category_id`, `category_id`, `size_guide_id`, `is_order`, `order_type`, `order_s`, `order_l`, `order_m`, `order_xl`, `created_at`, `updated_at`) VALUES
(8, 'wonderful abaya', 'عبايه باكمام عريضة', 'عبايه ملونه بتطريز', 'عبايه ملونه بتطريز', 1, 0, 1, 56, NULL, 'uploads/products/images/1640077655510130218981_848136202667295_1535321041659418513_n(1).jpg', 1, 1, 3, 4, 1, 1, 1, 1, 1, 1, '2021-11-14 10:04:40', '2021-12-21 09:11:25'),
(11, 'Gold Abaya', 'عبايه مذهبه', 'عبايه مذهبه باكمام طويلة', 'عبايه مذهبه باكمام طويلة', 1, 0, 1, 35, NULL, 'uploads/products/images/1640078874908130784149_224183989086921_878355651443595137_n.jpg', 1, 2, 4, 1, 1, 0, 1, 1, 1, 1, '2021-11-27 17:54:35', '2022-01-08 14:03:05'),
(14, 'Black+wsrrib +blue', 'أسود + وسريب + أزرق', 'أسود + وسريب + أزرق', 'أسود + وسريب + أزرق', 1, 0, 0, 50, NULL, 'uploads/products/images/163828044424921756e94-63c7-4084-85e1-37857a005cff-scaled.jpeg', 1, 2, 4, 1, 1, 0, 1, 1, 1, 1, '2021-11-30 13:54:04', '2022-01-08 14:03:26'),
(15, 'Abaya with the file', 'عبايه مع الملفع', 'عبايه مع الملفع يمكن اختيار لون التخريج حسب الرغبه\r\nيرجى وضع اللون المرغوب بالملاحضات', 'عبايه مع الملفع يمكن اختيار لون التخريج حسب الرغبه\r\nيرجى وضع اللون المرغوب بالملاحضات', 1, 0, 0, 35, NULL, 'uploads/products/images/1638280569616dsc_1022-scaled.jpg', 1, 1, 1, 4, 1, 1, 1, 1, 1, 1, '2021-11-30 13:56:10', '2021-11-30 15:12:44'),
(17, 'RM20-26', 'RM20-26', 'RM20-26', 'RM20-26', 0, 0, 0, 110, NULL, 'uploads/products/images/1638280955343ek5vr-ba.jpg', 0, 2, 4, 1, 1, 0, 1, 1, 1, 1, '2021-11-30 14:02:35', '2022-01-08 14:06:26'),
(19, 'gm4', 'gm4', 'جمبسوت + روب حرير', 'جمبسوت + روب حرير', 0, 0, 0, 70, NULL, 'uploads/products/images/1640079647815117675423_620773112161009_283965073426867893_n.jpg', 0, 7, 7, 2, 1, 0, 1, 1, 1, 1, '2021-11-30 14:21:07', '2022-01-05 15:23:38'),
(20, 'YR12 Abaya, embroidered silk chamois', 'YR12 عبايه تطريز حرير شامواه', 'عبايه تطريز حرير شامواه', 'عبايه تطريز حرير شامواه', 1, 0, 0, 65, NULL, 'uploads/products/images/1638282261676dsc_1248-scaled.jpg', 1, 1, 3, 4, 1, 1, 1, 1, 1, 1, '2021-11-30 14:24:21', '2022-01-08 14:07:52'),
(23, 'Dr 45 olive+w', 'Dr 45 olive+w', 'Dr 45 olive+w', 'Dr 45 olive+w', 1, 0, 0, 45, NULL, 'uploads/products/images/1638283503980c1c389e3-bc3a-47ab-9825-87a5d563f9cc-scaled.jpeg', 1, 2, 4, 1, 1, 0, 1, 1, 1, 1, '2021-11-30 14:45:04', '2022-01-08 14:27:01'),
(43, 'Quod vel est officia', 'Sint sint non quod', 'Et modi sapiente bla', 'Et modi sapiente bla', 1, 0, 1, 50, NULL, 'uploads/products/images/1640080887682162875507_1403850723288820_3541970055031805033_n(1).jpg', 1, 2, 4, 1, 1, 0, 1, 1, 1, 1, '2021-12-01 00:29:22', '2022-01-08 15:56:30'),
(47, 'YR14  Pants', 'YR14  بنطلونات', 'YR14  متوفر باي لون يرجى تحديد اللون المطلوب بالملاحظات', 'YR14  متوفر باي لون يرجى تحديد اللون المطلوب بالملاحظات', 1, 0, 0, 35, NULL, 'uploads/products/images/1641491776212بلوزوه.jpg', 1, 8, 17, 3, 1, 0, 1, 1, 1, 1, '2021-12-01 13:04:48', '2022-01-06 17:56:17'),
(48, 'YR13  Light beige crepe abaya', 'عبايه كريب بيج فاتح  YR13', 'عبايه كريب بيج فاتح\r\n3 قطع بنطلون عبايه وملفع\r\nويمكن توفيره باللون الاسود', 'عبايه كريب بيج فاتح\r\n3 قطع بنطلون عبايه وملفع\r\nويمكن توفيره باللون الاسود', 1, 0, 0, 75, NULL, 'uploads/products/images/1638364055306dsc_1305-scaled.jpg', 1, 1, 2, 4, 1, 1, 1, 1, 1, 1, '2021-12-01 13:07:36', '2021-12-01 13:09:18'),
(52, 'Abaya with pants and a scarf', 'عبايه مع بنطلون والملفع', 'Abaya with pants and a new custom fabric cover up\r\nAbaya and pants size required', 'عبايه مع بنطلون والملفع قماش مخصص جديد\r\nمطلوب قياس العبايه والبنطلون', 1, 0, 0, 70, NULL, 'uploads/products/images/1638364956449dsc_1132-scaled.jpg', 1, 1, 2, 4, 1, 1, 1, 1, 1, 1, '2021-12-01 13:22:36', '2021-12-01 13:22:36'),
(53, 'Plain Pleated Abaya With Muffler', 'عبايه ساده بكسرات مع ملفع', 'Plain Pleated Abaya With Muffler', 'عبايه ساده بكسرات مع ملفع', 1, 0, 0, 40, NULL, 'uploads/products/images/1638365421239dsc_0880-scaled.jpg', 1, 1, 1, 4, 1, 1, 1, 1, 1, 1, '2021-12-01 13:30:21', '2021-12-01 13:30:21'),
(54, 'abaya with file', 'عبايه مع الملفع', 'عبايه مع الملفع يمكن اختيار لون التطريز حسب الرغبه\r\nيرجى وضع اللون المرغوب بالملاحظات', 'عبايه مع الملفع يمكن اختيار لون التطريز حسب الرغبه\r\nيرجى وضع اللون المرغوب بالملاحظات', 1, 0, 1, 65, NULL, 'uploads/products/images/1640081671893242073769_1020864338484554_3813791362483686978_n.jpg', 1, 1, 1, 4, 1, 1, 1, 1, 1, 1, '2021-12-01 13:34:28', '2021-12-21 10:14:31'),
(55, 'YG03', 'YG03', 'The thread color can be chosen as desired, and please put the desired color in the notes', 'يمكن اختيار لون الخيط حسب الرغبه ويرجى وضع اللون المرغوب بالملاحظات', 1, 0, 0, 60, NULL, 'uploads/products/images/1638369892261dsc_0815-scaled.jpg', 1, 1, 1, 4, 1, 1, 1, 1, 1, 1, '2021-12-01 14:44:52', '2021-12-01 14:44:52'),
(56, 'black abaya N16', 'عباية أسود N16', 'عباية أسود N16', 'عباية أسود N16', 1, 0, 1, 65, NULL, 'uploads/products/images/163905875467934234234.jpg', 1, 1, 1, 4, 1, 1, 1, 1, 1, 1, '2021-12-09 14:05:54', '2021-12-21 12:52:03'),
(57, 'plain abaya N8', 'عباية سادة N8', 'عباية سادة N8', 'عباية سادة  N8', 1, 0, 1, 45, NULL, 'uploads/products/images/1639058972459323234353.jpg', 1, 1, 1, 4, 1, 1, 1, 1, 1, 1, '2021-12-09 14:09:32', '2021-12-21 12:44:54'),
(59, 'Quilted black velvet', 'شت مخمل', 'شت مخمل اسود مبطن\r\nالوان نااااطعة\r\nومشغول يدويا\r\n+ مطعم بقطعه جاكار ايطالي\r\n\r\nمتوفر بالموقع عدد محدود', 'شت مخمل اسود مبطن\r\nالوان نااااطعة\r\nومشغول يدويا\r\n+ مطعم بقطعه جاكار ايطالي\r\n\r\nمتوفر بالموقع عدد محدود', 1, 0, 1, 70, NULL, 'uploads/products/images/1641491897997شت مخمل.jpg', 1, 2, 4, 4, 1, 0, 1, 1, 1, 1, '2021-12-09 14:25:04', '2022-01-08 15:57:13'),
(62, 'Daraa Alwan', 'دراعة ملونة', 'دراعة ملونة', 'دراعة ملونة', 1, 0, 1, 68, NULL, 'uploads/products/images/16392272364031212121212.jpg', 1, 2, 4, 1, 1, 0, 1, 1, 1, 1, '2021-12-11 12:53:56', '2022-01-08 15:59:21'),
(63, 'بدلة', 'بدلة', 'بدلة', 'بدلة', 1, 0, 1, 95, NULL, 'uploads/products/images/1639227578576323424244353.jpg', 1, 6, 6, 1, 1, 0, 1, 1, 1, 1, '2021-12-11 12:59:38', '2022-01-08 15:52:34'),
(66, 'Abaya with a silk chamois drape N23', 'عباية مع ملفع N23', 'عباية مع ملفع حرير شامواه N23', 'عباية مع ملفع حرير شامواه N23', 1, 0, 1, 65, NULL, 'uploads/products/images/1640082265972125457668_2996369823800075_4191490695534367173_n.jpg', 1, 1, 2, 4, 1, 1, 1, 1, 1, 1, '2021-12-13 10:24:41', '2022-01-08 13:52:18'),
(67, '3-piece set', 'طقم 3 قطع', '3 قطع( القميص + التنوره + الشيله )\r\nيمكن طلبها بلون البيج المعروض\r\nاو لون اسود', '3 قطع( القميص + التنوره + الشيله )\r\nيمكن طلبها بلون البيج المعروض\r\nاو لون اسود', 1, 0, 1, 85, NULL, 'uploads/products/images/1640082406847118763878_165023778538946_3772547149869456885_n(1).jpg', 1, 6, 6, 1, 1, 0, 1, 1, 1, 1, '2021-12-13 10:32:27', '2022-01-08 15:43:28'),
(68, 'Plain white dara', 'دراعة ابيض سادة', 'دراعة ابيض سادة', 'دراعة ابيض سادة', 1, 0, 1, 68, NULL, 'uploads/products/images/1640082684801117620014_3374134385942362_358233913406972492_n(1).jpg', 1, 2, 4, 1, 1, 0, 1, 1, 1, 1, '2021-12-13 13:10:49', '2022-01-08 15:58:58'),
(74, 'abaya colors', 'عباية الوان', 'عباية الوان', 'عباية الوان', 1, 0, 1, 200, NULL, 'uploads/products/images/1640084981479104614215_2743090352592116_1908054522815923486_n.jpg', 1, 1, 1, 4, 1, 1, 1, 1, 1, 1, '2021-12-15 12:28:39', '2021-12-21 11:09:41'),
(76, 'N9', 'N9', 'N9', 'N9', 1, 0, 1, 40, NULL, 'uploads/products/images/1640087221957126156462_407895467237493_4713059303422064770_n.jpg', 1, 1, 3, 4, 1, 1, 1, 1, 1, 1, '2021-12-21 11:47:01', '2021-12-21 12:46:05'),
(77, 'N10', 'N10', 'N10', 'N10', 1, 0, 1, 65, NULL, 'uploads/products/images/16400881964824a2325bd-e089-435b-b5a4-0f9184bcc24d.jpg', 1, 1, 3, 4, 1, 1, 1, 1, 1, 1, '2021-12-21 12:03:16', '2021-12-21 12:46:27'),
(78, 'N11', 'N11', 'N11', 'N11', 1, 0, 1, 30, NULL, 'uploads/products/images/164008846867856a5506b-348e-402b-97df-58a1f6893c63.jpg', 1, 1, 2, 4, 1, 1, 1, 1, 1, 1, '2021-12-21 12:07:48', '2021-12-21 12:46:55'),
(79, 'N12', 'N12', 'N12', 'N12', 1, 0, 1, 40, NULL, 'uploads/products/images/16400887216469ea6fd93-942e-41e1-909f-b1622ac91eef.jpg', 1, 1, 1, 4, 1, 1, 1, 1, 1, 1, '2021-12-21 12:12:01', '2021-12-21 12:39:21'),
(80, 'n8', 'N13N13', 'N13', 'N13', 1, 0, 1, 30, NULL, 'uploads/products/images/16400888704001792eb8f-ead5-439c-b15c-9f0575c2a08c.jpg', 1, 1, 3, 4, 1, 1, 1, 1, 1, 1, '2021-12-21 12:14:30', '2021-12-21 12:47:38'),
(81, 'N14', 'N14', 'N14', 'N14', 1, 0, 1, 45, NULL, 'uploads/products/images/164008915372932ab2556-0747-4366-90eb-cdc90f43c52c.jpg', 1, 1, 1, 4, 1, 1, 1, 1, 1, 1, '2021-12-21 12:19:13', '2021-12-21 12:48:00'),
(82, 'N15', 'N15', 'N15', 'N15', 1, 0, 1, 45, NULL, 'uploads/products/images/1640089403514111.jpg', 1, 1, 3, 4, 1, 1, 1, 1, 1, 1, '2021-12-21 12:23:23', '2021-12-21 12:48:18'),
(84, 'N19', 'N19', 'N19', 'N19', 1, 0, 1, 65, NULL, 'uploads/products/images/164009013959200256131-7475-43d1-be3a-ec7cf29e0d8b.jpg', 1, 1, 3, 4, 1, 1, 1, 1, 1, 1, '2021-12-21 12:35:40', '2021-12-21 12:55:35'),
(85, 'N16', 'N16', 'N16', 'N16', 1, 0, 1, 65, NULL, 'uploads/products/images/1640091272922d3e19739-176e-4024-bbb0-b18cf218c0f0.jpg', 0, 1, 2, 4, 1, 1, 1, 1, 1, 1, '2021-12-21 12:54:32', '2021-12-21 12:54:32'),
(86, 'Feb11', 'Feb11', 'Feb11', 'Feb11', 1, 0, 1, 40, NULL, 'uploads/products/images/164042706935570d2dbc1-d736-4cef-a4ba-afb6e29008e1.jpg', 1, 1, 1, 4, 1, 1, 1, 1, 1, 1, '2021-12-25 10:11:09', '2021-12-25 10:11:09'),
(87, 'Smh1901', 'Smh1901', 'Smh1901', 'Smh1901', 1, 0, 1, 55, NULL, 'uploads/products/images/1640427142588eb79854e-354c-4647-bd7f-136da054e10e.jpg', 1, 1, 1, 4, 1, 1, 1, 1, 1, 1, '2021-12-25 10:12:23', '2021-12-25 10:12:23'),
(88, 'Aug4', 'Aug4', 'Aug4', 'Aug4', 1, 0, 1, 45, NULL, 'uploads/products/images/164042721747342eb0934-74a1-4eea-a218-9ebd46ce1d6a.jpg', 1, 1, 3, 4, 1, 1, 1, 1, 1, 1, '2021-12-25 10:13:37', '2021-12-25 10:13:37'),
(89, 'Dec14', 'Dec14', 'Dec14', 'Dec14', 1, 0, 1, 48, NULL, 'uploads/products/images/16404273073462a01b988-62f7-4d47-b984-b0be43cd462a.jpg', 1, 1, 1, 4, 1, 1, 1, 1, 1, 1, '2021-12-25 10:15:07', '2021-12-25 10:15:07'),
(90, 'May9', 'May9', 'May9', 'May9', 1, 0, 1, 57, NULL, 'uploads/products/images/164042739530880e4b8c8-e92c-4fbf-98e9-990e0333a66d.jpg', 1, 1, 1, 4, 1, 1, 1, 1, 1, 1, '2021-12-25 10:16:36', '2021-12-25 10:16:36'),
(91, 'Dec35', 'Dec35', 'Dec35', 'Dec35', 1, 0, 1, 43, NULL, 'uploads/products/images/16404275497607b3118fb-27e6-4272-8540-e51d6321a69e.jpg', 1, 1, 2, 4, 1, 1, 1, 1, 1, 1, '2021-12-25 10:19:09', '2021-12-25 10:19:09'),
(94, 'embroidered abaya', 'عباية مطرزة', 'عباية مطرزة', 'عباية مطرزة', 1, 0, 1, 65, NULL, 'uploads/products/images/16410360481877571fdbb-000f-4ce4-bae2-85f93308ff19.jpg', 1, 1, 3, 4, 1, 1, 1, 1, 1, 1, '2022-01-01 11:20:48', '2022-01-08 13:50:16'),
(95, 'embroidered abaya', 'عباية مطرزة', 'عباية مطرزة', 'embroidered abaya', 1, 0, 1, 65, NULL, 'uploads/products/images/1641036094618be2b7deb-340a-4345-94dd-0c0c1e9692b1.jpg', 1, 1, 3, 4, 1, 1, 1, 1, 1, 1, '2022-01-01 11:21:35', '2022-01-01 11:21:35'),
(96, 'embroidered abaya', 'عباية مطرزة', 'embroidered abaya', 'عباية مطرزة', 1, 0, 1, 62, NULL, 'uploads/products/images/164103613534169061106-af1a-4c5f-aaac-1a773ea74e68.jpg', 1, 1, 3, 4, 1, 1, 1, 1, 1, 1, '2022-01-01 11:22:15', '2022-01-01 11:22:15'),
(97, 'embroidered abaya', 'عباية مطرزة', 'embroidered abaya', 'عباية مطرزة', 1, 0, 1, 48, NULL, 'uploads/products/images/1641036181321baeb31a3-09dd-4614-84f9-9e774ca39d7c.jpg', 1, 1, 3, 4, 1, 1, 1, 1, 1, 1, '2022-01-01 11:23:02', '2022-01-01 11:23:02'),
(98, 'embroidered abaya', 'عباية مطرزة', 'embroidered abaya', 'عباية مطرزة', 1, 0, 1, 45, NULL, 'uploads/products/images/16410362269357b07587c-bfad-4236-b6ad-6d39443ec065.jpg', 1, 1, 3, 4, 1, 1, 1, 1, 1, 1, '2022-01-01 11:23:46', '2022-01-01 11:23:46'),
(99, 'embroidered abaya', 'عباية مطرزة', 'embroidered abaya', 'عباية مطرزة', 1, 0, 1, 45, NULL, 'uploads/products/images/1641036279672428700eb-e218-43a2-a313-ddb1a833bc50.jpg', 1, 1, 3, 4, 1, 1, 1, 1, 1, 1, '2022-01-01 11:24:39', '2022-01-01 11:24:39'),
(100, 'embroidered abaya', 'عباية مطرزة', 'عباية مطرزة', 'عباية مطرزة', 1, 0, 1, 65, NULL, 'uploads/products/images/1641835466456147.jpg', 1, 1, 3, 4, 1, 1, 1, 1, 1, 1, '2022-01-01 11:25:24', '2022-01-10 17:24:26'),
(101, 'embroidered abaya', 'عباية مطرزة', 'embroidered abaya', 'عباية مطرزة', 1, 0, 1, 65, NULL, 'uploads/products/images/1641036368323a28936eb-b471-4a15-9e51-0a81d50e8451.jpg', 1, 1, 3, 4, 1, 1, 1, 1, 1, 1, '2022-01-01 11:26:09', '2022-01-01 11:26:09'),
(102, 'embroidered abaya', 'عباية مطرزة', 'embroidered abaya', 'عباية مطرزة', 1, 0, 1, 40, NULL, 'uploads/products/images/1641036411232ab167574-ce8c-40ff-b69e-0561c283b9c0.jpg', 1, 1, 3, 4, 1, 1, 1, 1, 1, 1, '2022-01-01 11:26:52', '2022-01-01 11:26:52'),
(103, 'embroidered abaya', 'عباية مطرزة', 'Abaya in its spirit at a price of 68 dinars\r\nAbaya with pants for 78 dinars', 'العباية بروحها بسعر 68 دينار\r\nالعباية مع البنطلون بسعر 78 دينار', 1, 0, 1, 78, NULL, 'uploads/products/images/16410365045456c9d4e78-9403-4740-94aa-945ad6386c6c.jpg', 1, 1, 3, 4, 1, 1, 1, 1, 1, 1, '2022-01-01 11:28:24', '2022-01-01 11:28:24'),
(104, 'بدلة استقبال', 'بدلة استقبال', 'بدلة استقبال', 'بدلة استقبال', 1, 0, 1, 110, NULL, 'uploads/products/images/164149153692200.png', 1, 6, 6, 1, 1, 0, 1, 1, 1, 1, '2022-01-01 11:29:11', '2022-01-08 16:02:46'),
(105, '2-piece set', 'طقم قطعتين', 'طقم قطعتين\r\nالقميص بسعر 23 دينار\r\nالبنطلون بسعر 98 دينار', 'طقم قطعتين\r\nالقميص بسعر 23 دينار\r\nالبنطلون بسعر 98 دينار', 1, 0, 1, 98, NULL, 'uploads/products/images/1641491575695بنط.jpeg', 1, 8, 17, 3, 1, 0, 1, 1, 1, 1, '2022-01-01 11:30:48', '2022-01-06 17:52:55'),
(106, '2-piece set', 'جمبسوت', 'جمبسوت', 'جمبسوت', 1, 0, 1, 260, NULL, 'uploads/products/images/1641491662994قطعتين.jpeg', 1, 7, 7, 2, 1, 0, 1, 1, 1, 1, '2022-01-01 11:58:46', '2022-01-08 14:28:34'),
(107, 'jumpsuit', 'سادة', 'سادة', 'سادة', 1, 0, 1, 120, NULL, 'uploads/products/images/164149165090913.jpeg', 1, 7, 7, 4, 1, 0, 1, 1, 1, 1, '2022-01-01 11:59:58', '2022-01-08 13:45:18'),
(109, 'jumpsuits', 'جمبسوت', 'جمبسوت', 'جمبسوت', 1, 0, 1, 280, NULL, 'uploads/products/images/164149126685028.png', 1, 7, 7, 2, 1, 0, 1, 1, 1, 1, '2022-01-01 12:01:37', '2022-01-08 13:43:32'),
(110, 'jumpsuits', 'جمبسوت', 'jumpsuits مع امكانية تقفيل الطقم بأي شكل ممكن', 'jumpsuits مع امكانية تقفيل الطقم بأي شكل ممكن', 1, 0, 1, 290, NULL, 'uploads/products/images/16414913224510289.png', 1, 7, 7, 2, 1, 0, 1, 1, 1, 1, '2022-01-01 12:02:49', '2022-01-08 13:32:13'),
(111, 'embroidered abaya', 'عباية سادة', 'عباية سادة', 'عباية سادة', 1, 0, 1, 60, NULL, 'uploads/products/images/16414911757710199.jpg', 1, 1, 1, 4, 1, 1, 1, 1, 1, 1, '2022-01-01 12:03:41', '2022-01-06 17:46:19'),
(119, 'Jumpsuits', 'جمبسوت', 'جمبسوت1049', 'جمبسوت1049', 1, 0, 1, 170, NULL, 'uploads/products/images/16414909618241049.jpeg', 1, 7, 7, 2, 1, 0, 1, 1, 1, 1, '2022-01-05 15:54:24', '2022-01-08 13:28:57'),
(120, 'Jumpsuits', 'جمبسوت', 'جبمسوت 923', 'جبمسوت 923', 1, 0, 1, 170, NULL, 'uploads/products/images/164149078842717.jpeg', 1, 7, 7, 2, 1, 0, 1, 1, 1, 1, '2022-01-05 15:57:19', '2022-01-08 10:37:52'),
(123, 'Khomar', 'خمار مع قبعه', 'خمار مع قبعه داخليه من غير نقاب', 'خمار مع قبعه داخليه من غير نقاب', 1, 0, 1, 15, NULL, 'uploads/products/images/1641652325704790.jpg', 1, 4, 19, 4, 1, 0, 1, 1, 1, 1, '2022-01-07 13:26:22', '2022-01-09 12:45:24'),
(125, 'خمار مع قبعه داخليه من غير نقاب', 'خمار مع قبعه داخليه من غير نقاب', 'خمار مع قبعه داخليه من غير نقاب', 'خمار مع قبعه داخليه من غير نقاب', 1, 0, 1, 15, NULL, 'uploads/products/images/164165271228905.jpg', 1, 4, 19, 4, 1, 0, 1, 1, 1, 1, '2022-01-08 14:38:32', '2022-01-08 14:38:32'),
(126, 'Jumpsuits', 'جمبسوت', 'جمبسوت', 'جمبسوت', 1, 0, 1, 280, NULL, 'uploads/products/images/16416537208780022.jpg', 1, 7, 7, 2, 1, 0, 1, 1, 1, 1, '2022-01-08 14:55:20', '2022-01-08 14:55:20'),
(129, 'Sada 1012', 'سادة 1012', 'سادة 1012', 'سادة 1012', 1, 0, 1, 38, NULL, 'uploads/products/images/16416589024361.jpeg', 1, 1, 1, 4, 1, 1, 1, 1, 1, 1, '2022-01-08 16:16:24', '2022-01-08 16:21:42'),
(130, 'Sada A', 'سادة A', 'Sada A', 'Sada A', 1, 0, 1, 30, NULL, 'uploads/products/images/164165910732130.jpeg', 1, 1, 1, 4, 1, 1, 1, 1, 1, 1, '2022-01-08 16:25:07', '2022-01-08 16:25:07'),
(131, 'Sada B', 'سادة B', 'Sada B', 'Sada B', 1, 0, 1, 30, NULL, 'uploads/products/images/1641659315521sadab.jpeg', 1, 1, 1, 4, 1, 1, 1, 1, 1, 1, '2022-01-08 16:28:35', '2022-01-08 16:28:35'),
(132, 'Sada M', 'سادة M', 'Sada M', 'Sada M', 1, 0, 1, 30, NULL, 'uploads/products/images/1641659538696m.jpeg', 1, 1, 1, 4, 1, 1, 1, 1, 1, 1, '2022-01-08 16:32:18', '2022-01-08 16:32:18'),
(133, 'Sada besht J', 'سادة بشت', 'Sada besht J', 'Sada besht J', 1, 0, 1, 32, NULL, 'uploads/products/images/1641659836134ب.jpeg', 1, 1, 1, 4, 1, 1, 1, 1, 1, 1, '2022-01-08 16:37:16', '2022-01-08 16:37:16'),
(134, 'Sada besht k', 'سادة بشت K', 'عبايه بششت بكسرات من الخلف', 'عبايه بششت بكسرات من الخلف', 0, 0, 0, 35, NULL, 'uploads/products/images/1641659995308b6.jpeg', 0, 1, 1, 4, 1, 1, 1, 1, 1, 1, '2022-01-08 16:39:56', '2022-01-08 16:39:56'),
(135, 'Sada T', 'سادة T', 'عبايه بزم على الجوانب تربل كلوش', 'عبايه بزم على الجوانب تربل كلوش', 1, 0, 1, 38, NULL, 'uploads/products/images/1641660148565t5.jpeg', 1, 1, 1, 4, 1, 1, 1, 1, 1, 1, '2022-01-08 16:42:28', '2022-01-08 16:42:28'),
(136, 'Sada Q', 'سادة Q', 'عبايه بشت بقصه مميزه جدا وعمليه', 'عبايه بشت بقصه مميزه جدا وعمليه', 1, 0, 1, 42, NULL, 'uploads/products/images/1641660379670q.jpeg', 0, 1, 1, 4, 1, 1, 1, 1, 1, 1, '2022-01-08 16:46:19', '2022-01-08 16:46:19'),
(137, 'China\'s abaya W', 'سادة W', 'China\'s abaya W', 'China\'s abaya W', 0, 0, 0, 32, NULL, 'uploads/products/images/1641660521122w.jpeg', 0, 1, 1, 4, 1, 1, 1, 1, 1, 1, '2022-01-08 16:48:41', '2022-01-08 16:48:41'),
(138, 'Sada R', 'سادة R', 'عبايه بقصه رائع دبل دبل كلوش', 'عبايه بقصه رائع دبل دبل كلوش', 1, 0, 1, 48, NULL, 'uploads/products/images/1641660678521r.jpeg', 1, 1, 1, 4, 1, 1, 1, 1, 1, 1, '2022-01-08 16:51:18', '2022-01-08 16:51:18'),
(139, 'Sada P', 'سادة P', 'عبايه قصه شاينيز تربل كلوش', 'عبايه قصه شاينيز تربل كلوش', 1, 0, 1, 38, NULL, 'uploads/products/images/1641660838740p.jpeg', 1, 1, 1, 4, 1, 1, 1, 0, 0, 1, '2022-01-08 16:53:58', '2022-01-09 18:15:12');

-- --------------------------------------------------------

--
-- Table structure for table `prod_colors`
--

CREATE TABLE `prod_colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `color_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `prod_heights`
--

CREATE TABLE `prod_heights` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `size_id` bigint(20) UNSIGNED NOT NULL,
  `height_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `prod_heights`
--

INSERT INTO `prod_heights` (`id`, `quantity`, `product_id`, `size_id`, `height_id`, `created_at`, `updated_at`) VALUES
(1168, 0, 15, 1, 4, '2021-11-30 15:12:44', '2022-01-03 13:57:19'),
(1169, 4, 15, 2, 4, '2021-11-30 15:12:44', '2022-01-09 18:35:06'),
(1228, 5, 48, 1, 4, '2021-12-01 13:09:18', '2021-12-01 13:09:18'),
(1229, 5, 48, 3, 4, '2021-12-01 13:09:18', '2021-12-01 13:09:18'),
(1237, 6, 52, 1, 5, '2021-12-01 13:22:36', '2021-12-01 13:22:36'),
(1238, 5, 52, 3, 4, '2021-12-01 13:22:37', '2021-12-01 13:22:37'),
(1239, 5, 53, 1, 4, '2021-12-01 13:30:21', '2021-12-01 13:30:21'),
(1240, 4, 53, 2, 4, '2021-12-01 13:30:21', '2021-12-01 13:30:21'),
(1243, 5, 55, 1, 4, '2021-12-01 14:44:52', '2021-12-01 14:44:52'),
(1244, 4, 55, 2, 4, '2021-12-01 14:44:52', '2021-12-01 14:44:52'),
(1334, 14, 8, 1, 1, '2021-12-21 09:11:25', '2021-12-21 09:11:25'),
(1335, 12, 8, 1, 2, '2021-12-21 09:11:25', '2021-12-21 09:11:25'),
(1336, 0, 8, 1, 3, '2021-12-21 09:11:25', '2021-12-21 09:11:25'),
(1337, 0, 8, 1, 7, '2021-12-21 09:11:25', '2021-12-21 09:11:25'),
(1338, 0, 8, 1, 8, '2021-12-21 09:11:25', '2021-12-21 09:11:25'),
(1339, 0, 8, 1, 10, '2021-12-21 09:11:25', '2021-12-21 09:11:25'),
(1340, 0, 8, 2, 1, '2021-12-21 09:11:25', '2021-12-21 09:11:25'),
(1341, 0, 8, 2, 2, '2021-12-21 09:11:25', '2021-12-21 09:11:25'),
(1342, 0, 8, 2, 3, '2021-12-21 09:11:25', '2021-12-21 09:11:25'),
(1343, 0, 8, 2, 4, '2021-12-21 09:11:25', '2021-12-21 09:11:25'),
(1344, 0, 8, 2, 7, '2021-12-21 09:11:25', '2021-12-21 09:11:25'),
(1345, 0, 8, 2, 9, '2021-12-21 09:11:25', '2021-12-21 09:11:25'),
(1346, 0, 8, 2, 10, '2021-12-21 09:11:25', '2021-12-21 09:11:25'),
(1347, 0, 8, 3, 1, '2021-12-21 09:11:25', '2021-12-21 09:11:25'),
(1348, 0, 8, 3, 2, '2021-12-21 09:11:25', '2021-12-21 09:11:25'),
(1349, 0, 8, 3, 3, '2021-12-21 09:11:25', '2021-12-21 09:11:25'),
(1350, 0, 8, 3, 4, '2021-12-21 09:11:25', '2021-12-21 09:11:25'),
(1351, 0, 8, 3, 7, '2021-12-21 09:11:25', '2021-12-21 09:11:25'),
(1352, 0, 8, 3, 8, '2021-12-21 09:11:25', '2021-12-21 09:11:25'),
(1353, 0, 8, 3, 9, '2021-12-21 09:11:25', '2021-12-21 09:11:25'),
(1354, 0, 8, 3, 10, '2021-12-21 09:11:25', '2021-12-21 09:11:25'),
(1355, 0, 8, 4, 1, '2021-12-21 09:11:25', '2021-12-21 09:11:25'),
(1356, 0, 8, 4, 2, '2021-12-21 09:11:25', '2021-12-21 09:11:25'),
(1357, 0, 8, 4, 3, '2021-12-21 09:11:25', '2021-12-21 09:11:25'),
(1358, 0, 8, 4, 4, '2021-12-21 09:11:25', '2021-12-21 09:11:25'),
(1359, 0, 8, 4, 5, '2021-12-21 09:11:25', '2021-12-21 09:11:25'),
(1360, 0, 8, 4, 8, '2021-12-21 09:11:25', '2021-12-21 09:11:25'),
(1361, 0, 8, 4, 9, '2021-12-21 09:11:25', '2021-12-21 09:11:25'),
(1362, 0, 8, 4, 10, '2021-12-21 09:11:25', '2021-12-21 09:11:25'),
(1363, 0, 8, 4, 12, '2021-12-21 09:11:25', '2021-12-21 09:11:25'),
(1364, 0, 8, 5, 1, '2021-12-21 09:11:25', '2021-12-21 09:11:25'),
(1365, 0, 8, 5, 2, '2021-12-21 09:11:25', '2021-12-21 09:11:25'),
(1366, 0, 8, 5, 3, '2021-12-21 09:11:25', '2021-12-21 09:11:25'),
(1367, 0, 8, 5, 7, '2021-12-21 09:11:25', '2021-12-21 09:11:25'),
(1368, 0, 8, 5, 8, '2021-12-21 09:11:25', '2021-12-21 09:11:25'),
(1369, 0, 8, 5, 9, '2021-12-21 09:11:25', '2021-12-21 09:11:25'),
(1388, 4, 54, 2, 4, '2021-12-21 10:14:31', '2021-12-21 10:14:31'),
(1389, 5, 54, 3, 4, '2021-12-21 10:14:31', '2021-12-21 10:14:31'),
(1403, 2, 74, 1, 4, '2021-12-21 11:09:41', '2021-12-21 11:09:41'),
(1415, 4, 57, 1, 4, '2021-12-21 12:44:54', '2021-12-21 12:44:54'),
(1416, 4, 57, 2, 4, '2021-12-21 12:44:54', '2021-12-21 12:44:54'),
(1417, 4, 57, 6, 4, '2021-12-21 12:44:54', '2021-12-21 12:44:54'),
(1421, 4, 76, 5, 4, '2021-12-21 12:46:05', '2021-12-21 12:46:05'),
(1422, 3, 77, 1, 4, '2021-12-21 12:46:27', '2021-12-21 12:46:27'),
(1423, 4, 78, 5, 4, '2021-12-21 12:46:55', '2021-12-21 12:46:55'),
(1424, 3, 78, 6, 4, '2021-12-21 12:46:55', '2021-12-21 12:46:55'),
(1425, 5, 79, 1, 4, '2021-12-21 12:47:07', '2021-12-21 12:47:07'),
(1426, 5, 80, 1, 4, '2021-12-21 12:47:38', '2021-12-21 12:47:38'),
(1427, 5, 81, 2, 4, '2021-12-21 12:48:00', '2021-12-21 12:48:00'),
(1428, 6, 82, 1, 4, '2021-12-21 12:48:18', '2021-12-21 12:48:18'),
(1429, 5, 56, 1, 4, '2021-12-21 12:52:04', '2021-12-21 12:52:04'),
(1430, 6, 56, 2, 4, '2021-12-21 12:52:04', '2021-12-21 12:52:04'),
(1431, 5, 56, 3, 4, '2021-12-21 12:52:04', '2021-12-21 12:52:04'),
(1432, 4, 85, 2, 4, '2021-12-21 12:54:32', '2021-12-21 12:54:32'),
(1434, 3, 84, 1, 4, '2021-12-21 12:55:35', '2021-12-21 12:55:35'),
(1464, 4, 90, 1, 4, '2021-12-25 20:36:55', '2021-12-25 20:36:55'),
(1465, 4, 89, 1, 4, '2021-12-25 20:37:12', '2021-12-25 20:37:12'),
(1466, 3, 88, 1, 4, '2021-12-25 20:37:55', '2021-12-25 20:37:55'),
(1467, 3, 87, 1, 4, '2021-12-25 20:38:43', '2021-12-25 20:38:43'),
(1468, 3, 86, 1, 4, '2021-12-25 20:39:04', '2021-12-25 20:39:04'),
(1469, 1, 91, 1, 4, '2021-12-26 10:34:02', '2021-12-26 10:34:02'),
(1484, 4, 95, 1, 4, '2022-01-01 11:21:35', '2022-01-01 11:21:35'),
(1485, 4, 96, 1, 4, '2022-01-01 11:22:16', '2022-01-01 11:22:16'),
(1486, 5, 97, 2, 4, '2022-01-01 11:23:02', '2022-01-01 11:23:02'),
(1487, 2, 98, 1, 3, '2022-01-01 11:23:46', '2022-01-01 11:23:46'),
(1488, 2, 99, 1, 3, '2022-01-01 11:24:40', '2022-01-01 11:24:40'),
(1490, 4, 101, 1, 4, '2022-01-01 11:26:09', '2022-01-01 11:26:09'),
(1491, 3, 102, 1, 4, '2022-01-01 11:26:52', '2022-01-01 11:26:52'),
(1492, 4, 103, 1, 4, '2022-01-01 11:28:25', '2022-01-01 11:28:25'),
(1572, 4, 105, 1, 4, '2022-01-06 17:52:55', '2022-01-06 17:52:55'),
(1575, 4, 47, 1, 3, '2022-01-06 17:56:17', '2022-01-06 17:56:17'),
(1576, 5, 47, 3, 4, '2022-01-06 17:56:17', '2022-01-06 17:56:17'),
(1619, 20, 120, 1, 1, '2022-01-08 10:40:20', '2022-01-08 10:40:20'),
(1620, 20, 120, 1, 2, '2022-01-08 10:40:20', '2022-01-08 10:40:20'),
(1621, 20, 120, 1, 3, '2022-01-08 10:40:20', '2022-01-08 10:40:20'),
(1622, 20, 120, 1, 4, '2022-01-08 10:40:20', '2022-01-08 10:40:20'),
(1623, 20, 120, 1, 5, '2022-01-08 10:40:20', '2022-01-08 10:40:20'),
(1624, 20, 120, 1, 6, '2022-01-08 10:40:20', '2022-01-08 10:40:20'),
(1625, 20, 120, 1, 7, '2022-01-08 10:40:20', '2022-01-08 10:40:20'),
(1626, 20, 120, 1, 8, '2022-01-08 10:40:20', '2022-01-08 10:40:20'),
(1627, 20, 120, 1, 9, '2022-01-08 10:40:20', '2022-01-08 10:40:20'),
(1628, 20, 120, 1, 10, '2022-01-08 10:40:20', '2022-01-08 10:40:20'),
(1629, 20, 120, 1, 12, '2022-01-08 10:40:20', '2022-01-08 10:40:20'),
(1630, 20, 120, 1, 13, '2022-01-08 10:40:20', '2022-01-08 10:40:20'),
(1631, 20, 120, 2, 1, '2022-01-08 10:40:20', '2022-01-08 10:40:20'),
(1632, 20, 120, 2, 2, '2022-01-08 10:40:20', '2022-01-08 10:40:20'),
(1633, 20, 120, 2, 3, '2022-01-08 10:40:20', '2022-01-08 10:40:20'),
(1634, 20, 120, 2, 4, '2022-01-08 10:40:20', '2022-01-08 10:40:20'),
(1635, 20, 120, 2, 5, '2022-01-08 10:40:20', '2022-01-08 10:40:20'),
(1636, 20, 120, 2, 6, '2022-01-08 10:40:20', '2022-01-08 10:40:20'),
(1637, 20, 120, 2, 7, '2022-01-08 10:40:20', '2022-01-08 10:40:20'),
(1638, 20, 120, 2, 8, '2022-01-08 10:40:20', '2022-01-08 10:40:20'),
(1639, 20, 120, 2, 9, '2022-01-08 10:40:20', '2022-01-08 10:40:20'),
(1640, 20, 120, 2, 10, '2022-01-08 10:40:20', '2022-01-08 10:40:20'),
(1641, 20, 120, 2, 12, '2022-01-08 10:40:20', '2022-01-08 10:40:20'),
(1642, 20, 120, 2, 13, '2022-01-08 10:40:20', '2022-01-08 10:40:20'),
(1643, 0, 120, 4, 1, '2022-01-08 10:40:20', '2022-01-08 10:40:20'),
(1644, 20, 120, 5, 1, '2022-01-08 10:40:20', '2022-01-08 10:40:20'),
(1645, 20, 120, 5, 2, '2022-01-08 10:40:20', '2022-01-08 10:40:20'),
(1646, 20, 120, 5, 3, '2022-01-08 10:40:20', '2022-01-08 10:40:20'),
(1647, 20, 120, 5, 4, '2022-01-08 10:40:20', '2022-01-08 10:40:20'),
(1648, 20, 120, 5, 5, '2022-01-08 10:40:20', '2022-01-08 10:40:20'),
(1649, 20, 120, 5, 6, '2022-01-08 10:40:20', '2022-01-08 10:40:20'),
(1650, 20, 120, 5, 7, '2022-01-08 10:40:20', '2022-01-08 10:40:20'),
(1651, 20, 120, 5, 8, '2022-01-08 10:40:20', '2022-01-08 10:40:20'),
(1652, 20, 120, 5, 9, '2022-01-08 10:40:20', '2022-01-08 10:40:20'),
(1653, 20, 120, 5, 10, '2022-01-08 10:40:20', '2022-01-08 10:40:20'),
(1654, 20, 120, 5, 12, '2022-01-08 10:40:20', '2022-01-08 10:40:20'),
(1655, 20, 120, 5, 13, '2022-01-08 10:40:20', '2022-01-08 10:40:20'),
(1662, 0, 119, 1, 1, '2022-01-08 13:29:35', '2022-01-08 13:29:35'),
(1663, 0, 119, 1, 2, '2022-01-08 13:29:35', '2022-01-08 13:29:35'),
(1664, 0, 119, 1, 3, '2022-01-08 13:29:35', '2022-01-08 13:29:35'),
(1665, 0, 119, 1, 4, '2022-01-08 13:29:35', '2022-01-08 13:29:35'),
(1666, 0, 119, 1, 5, '2022-01-08 13:29:35', '2022-01-08 13:29:35'),
(1667, 0, 119, 1, 6, '2022-01-08 13:29:35', '2022-01-08 13:29:35'),
(1668, 0, 119, 2, 1, '2022-01-08 13:29:35', '2022-01-08 13:29:35'),
(1669, 0, 119, 2, 2, '2022-01-08 13:29:35', '2022-01-08 13:29:35'),
(1670, 0, 119, 2, 3, '2022-01-08 13:29:35', '2022-01-08 13:29:35'),
(1671, 0, 119, 2, 4, '2022-01-08 13:29:35', '2022-01-08 13:29:35'),
(1672, 0, 119, 3, 1, '2022-01-08 13:29:35', '2022-01-08 13:29:35'),
(1673, 0, 119, 3, 2, '2022-01-08 13:29:35', '2022-01-08 13:29:35'),
(1674, 0, 119, 3, 3, '2022-01-08 13:29:35', '2022-01-08 13:29:35'),
(1675, 0, 119, 3, 4, '2022-01-08 13:29:35', '2022-01-08 13:29:35'),
(1676, 0, 119, 5, 1, '2022-01-08 13:29:35', '2022-01-08 13:29:35'),
(1677, 0, 119, 5, 2, '2022-01-08 13:29:35', '2022-01-08 13:29:35'),
(1678, 0, 119, 5, 3, '2022-01-08 13:29:35', '2022-01-08 13:29:35'),
(1679, 0, 119, 5, 4, '2022-01-08 13:29:35', '2022-01-08 13:29:35'),
(1680, 20, 119, 5, 5, '2022-01-08 13:29:35', '2022-01-08 13:29:35'),
(1681, 10, 119, 5, 6, '2022-01-08 13:29:35', '2022-01-08 13:29:35'),
(1682, 0, 111, 1, 1, '2022-01-08 13:31:19', '2022-01-08 13:31:19'),
(1683, 0, 111, 1, 2, '2022-01-08 13:31:19', '2022-01-08 13:31:19'),
(1684, 0, 111, 1, 3, '2022-01-08 13:31:19', '2022-01-08 13:31:19'),
(1685, 2, 111, 1, 4, '2022-01-08 13:31:19', '2022-01-08 13:31:19'),
(1686, 0, 111, 1, 5, '2022-01-08 13:31:19', '2022-01-08 13:31:19'),
(1687, 0, 111, 1, 6, '2022-01-08 13:31:19', '2022-01-08 13:31:19'),
(1688, 0, 111, 2, 1, '2022-01-08 13:31:19', '2022-01-08 13:31:19'),
(1689, 0, 111, 2, 2, '2022-01-08 13:31:19', '2022-01-08 13:31:19'),
(1690, 0, 111, 2, 3, '2022-01-08 13:31:19', '2022-01-08 13:31:19'),
(1691, 0, 111, 2, 4, '2022-01-08 13:31:20', '2022-01-08 13:31:20'),
(1692, 0, 111, 2, 5, '2022-01-08 13:31:20', '2022-01-08 13:31:20'),
(1693, 0, 111, 2, 6, '2022-01-08 13:31:20', '2022-01-08 13:31:20'),
(1694, 0, 111, 3, 1, '2022-01-08 13:31:20', '2022-01-08 13:31:20'),
(1695, 0, 111, 3, 2, '2022-01-08 13:31:20', '2022-01-08 13:31:20'),
(1696, 0, 111, 3, 3, '2022-01-08 13:31:20', '2022-01-08 13:31:20'),
(1697, 0, 111, 3, 4, '2022-01-08 13:31:20', '2022-01-08 13:31:20'),
(1698, 0, 111, 3, 5, '2022-01-08 13:31:20', '2022-01-08 13:31:20'),
(1699, 0, 111, 3, 6, '2022-01-08 13:31:20', '2022-01-08 13:31:20'),
(1700, 0, 111, 4, 1, '2022-01-08 13:31:20', '2022-01-08 13:31:20'),
(1701, 0, 111, 4, 2, '2022-01-08 13:31:20', '2022-01-08 13:31:20'),
(1702, 0, 111, 4, 3, '2022-01-08 13:31:20', '2022-01-08 13:31:20'),
(1703, 0, 111, 4, 4, '2022-01-08 13:31:20', '2022-01-08 13:31:20'),
(1704, 0, 111, 4, 5, '2022-01-08 13:31:20', '2022-01-08 13:31:20'),
(1705, 0, 111, 4, 6, '2022-01-08 13:31:20', '2022-01-08 13:31:20'),
(1706, 0, 111, 5, 1, '2022-01-08 13:31:20', '2022-01-08 13:31:20'),
(1707, 0, 111, 5, 2, '2022-01-08 13:31:20', '2022-01-08 13:31:20'),
(1708, 0, 111, 5, 3, '2022-01-08 13:31:20', '2022-01-08 13:31:20'),
(1709, 0, 111, 5, 4, '2022-01-08 13:31:20', '2022-01-08 13:31:20'),
(1710, 0, 111, 5, 5, '2022-01-08 13:31:20', '2022-01-08 13:31:20'),
(1711, 0, 111, 5, 6, '2022-01-08 13:31:20', '2022-01-08 13:31:20'),
(1712, 0, 110, 1, 1, '2022-01-08 13:32:13', '2022-01-08 13:32:13'),
(1713, 0, 110, 1, 2, '2022-01-08 13:32:13', '2022-01-08 13:32:13'),
(1714, 0, 110, 1, 3, '2022-01-08 13:32:13', '2022-01-08 13:32:13'),
(1715, 0, 110, 1, 4, '2022-01-08 13:32:13', '2022-01-08 13:32:13'),
(1716, 0, 110, 1, 5, '2022-01-08 13:32:13', '2022-01-08 13:32:13'),
(1717, 0, 110, 1, 6, '2022-01-08 13:32:13', '2022-01-08 13:32:13'),
(1718, 0, 110, 2, 1, '2022-01-08 13:32:13', '2022-01-08 13:32:13'),
(1719, 0, 110, 2, 2, '2022-01-08 13:32:13', '2022-01-08 13:32:13'),
(1720, 0, 110, 2, 3, '2022-01-08 13:32:13', '2022-01-08 13:32:13'),
(1721, 0, 110, 2, 4, '2022-01-08 13:32:13', '2022-01-08 13:32:13'),
(1722, 0, 110, 2, 5, '2022-01-08 13:32:13', '2022-01-08 13:32:13'),
(1723, 0, 110, 2, 6, '2022-01-08 13:32:13', '2022-01-08 13:32:13'),
(1724, 0, 110, 3, 1, '2022-01-08 13:32:13', '2022-01-08 13:32:13'),
(1725, 0, 110, 3, 2, '2022-01-08 13:32:13', '2022-01-08 13:32:13'),
(1726, 0, 110, 3, 3, '2022-01-08 13:32:13', '2022-01-08 13:32:13'),
(1727, 0, 110, 3, 4, '2022-01-08 13:32:13', '2022-01-08 13:32:13'),
(1728, 0, 110, 3, 5, '2022-01-08 13:32:13', '2022-01-08 13:32:13'),
(1729, 0, 110, 3, 6, '2022-01-08 13:32:13', '2022-01-08 13:32:13'),
(1730, 0, 110, 4, 1, '2022-01-08 13:32:13', '2022-01-08 13:32:13'),
(1731, 0, 110, 4, 2, '2022-01-08 13:32:13', '2022-01-08 13:32:13'),
(1732, 0, 110, 4, 3, '2022-01-08 13:32:13', '2022-01-08 13:32:13'),
(1733, 0, 110, 4, 4, '2022-01-08 13:32:13', '2022-01-08 13:32:13'),
(1734, 0, 110, 4, 5, '2022-01-08 13:32:13', '2022-01-08 13:32:13'),
(1735, 0, 110, 4, 6, '2022-01-08 13:32:13', '2022-01-08 13:32:13'),
(1736, 0, 110, 5, 1, '2022-01-08 13:32:13', '2022-01-08 13:32:13'),
(1737, 0, 110, 5, 2, '2022-01-08 13:32:13', '2022-01-08 13:32:13'),
(1738, 0, 110, 5, 3, '2022-01-08 13:32:13', '2022-01-08 13:32:13'),
(1739, 0, 110, 5, 4, '2022-01-08 13:32:13', '2022-01-08 13:32:13'),
(1740, 0, 110, 5, 5, '2022-01-08 13:32:13', '2022-01-08 13:32:13'),
(1741, 0, 110, 5, 6, '2022-01-08 13:32:13', '2022-01-08 13:32:13'),
(1742, 4, 109, 1, 4, '2022-01-08 13:43:32', '2022-01-08 13:43:32'),
(1745, 4, 107, 1, 4, '2022-01-08 13:45:18', '2022-01-08 13:45:18'),
(1765, 5, 94, 1, 4, '2022-01-08 13:50:16', '2022-01-08 13:50:16'),
(1766, 4, 66, 1, 5, '2022-01-08 13:52:18', '2022-01-08 13:52:18'),
(1767, 5, 66, 3, 4, '2022-01-08 13:52:18', '2022-01-08 13:52:18'),
(1768, 4, 66, 5, 4, '2022-01-08 13:52:18', '2022-01-08 13:52:18'),
(1800, 12, 11, 1, 1, '2022-01-08 14:03:05', '2022-01-08 14:03:05'),
(1801, 7, 14, 1, 4, '2022-01-08 14:03:26', '2022-01-08 14:03:26'),
(1802, 7, 14, 2, 4, '2022-01-08 14:03:26', '2022-01-08 14:03:26'),
(1805, 5, 17, 1, 4, '2022-01-08 14:06:27', '2022-01-08 14:06:27'),
(1806, 5, 17, 2, 4, '2022-01-08 14:06:27', '2022-01-08 14:06:27'),
(1809, 4, 19, 1, 12, '2022-01-08 14:07:14', '2022-01-08 14:07:14'),
(1810, 4, 19, 2, 5, '2022-01-08 14:07:14', '2022-01-08 14:07:14'),
(1811, 2, 19, 5, 4, '2022-01-08 14:07:14', '2022-01-08 14:07:14'),
(1812, 4, 19, 5, 10, '2022-01-08 14:07:14', '2022-01-08 14:07:14'),
(1813, 5, 20, 2, 4, '2022-01-08 14:07:52', '2022-01-08 14:07:52'),
(1814, 5, 20, 3, 4, '2022-01-08 14:07:52', '2022-01-08 14:07:52'),
(1815, 4, 20, 5, 4, '2022-01-08 14:07:52', '2022-01-08 14:07:52'),
(1838, 4, 23, 2, 4, '2022-01-08 14:27:01', '2022-01-08 14:27:01'),
(1839, 4, 23, 3, 4, '2022-01-08 14:27:01', '2022-01-08 14:27:01'),
(1840, 4, 23, 5, 4, '2022-01-08 14:27:01', '2022-01-08 14:27:01'),
(1847, 20, 106, 1, 1, '2022-01-08 14:28:34', '2022-01-08 14:28:34'),
(1848, 20, 106, 1, 2, '2022-01-08 14:28:34', '2022-01-08 14:28:34'),
(1849, 20, 106, 1, 3, '2022-01-08 14:28:34', '2022-01-08 14:28:34'),
(1850, 20, 106, 1, 4, '2022-01-08 14:28:34', '2022-01-08 14:28:34'),
(1851, 20, 106, 1, 5, '2022-01-08 14:28:34', '2022-01-08 14:28:34'),
(1852, 20, 106, 2, 1, '2022-01-08 14:28:34', '2022-01-08 14:28:34'),
(1853, 20, 106, 2, 2, '2022-01-08 14:28:34', '2022-01-08 14:28:34'),
(1854, 30, 106, 2, 3, '2022-01-08 14:28:34', '2022-01-08 14:28:34'),
(1855, 20, 106, 2, 4, '2022-01-08 14:28:34', '2022-01-08 14:28:34'),
(1856, 20, 106, 3, 1, '2022-01-08 14:28:34', '2022-01-08 14:28:34'),
(1857, 20, 106, 3, 2, '2022-01-08 14:28:34', '2022-01-08 14:28:34'),
(1858, 20, 106, 3, 3, '2022-01-08 14:28:34', '2022-01-08 14:28:34'),
(1859, 20, 106, 4, 1, '2022-01-08 14:28:34', '2022-01-08 14:28:34'),
(1860, 20, 106, 4, 2, '2022-01-08 14:28:34', '2022-01-08 14:28:34'),
(1861, 20, 106, 4, 3, '2022-01-08 14:28:34', '2022-01-08 14:28:34'),
(1862, 20, 106, 5, 1, '2022-01-08 14:28:34', '2022-01-08 14:28:34'),
(1863, 20, 106, 5, 2, '2022-01-08 14:28:34', '2022-01-08 14:28:34'),
(1864, 20, 106, 5, 3, '2022-01-08 14:28:34', '2022-01-08 14:28:34'),
(1878, 3, 67, 1, 4, '2022-01-08 15:43:28', '2022-01-08 15:43:28'),
(1879, 4, 67, 2, 4, '2022-01-08 15:43:28', '2022-01-08 15:43:28'),
(1884, 3, 63, 1, 4, '2022-01-08 15:52:34', '2022-01-08 15:52:34'),
(1885, 5, 63, 2, 4, '2022-01-08 15:52:34', '2022-01-08 15:52:34'),
(1888, 385, 43, 1, 1, '2022-01-08 15:56:30', '2022-01-08 15:56:30'),
(1889, 984, 43, 1, 4, '2022-01-08 15:56:30', '2022-01-08 15:56:30'),
(1890, 298, 43, 1, 8, '2022-01-08 15:56:30', '2022-01-08 15:56:30'),
(1891, 316, 43, 2, 1, '2022-01-08 15:56:30', '2022-01-08 15:56:30'),
(1892, 951, 43, 2, 2, '2022-01-08 15:56:30', '2022-01-08 15:56:30'),
(1893, 434, 43, 2, 3, '2022-01-08 15:56:30', '2022-01-08 15:56:30'),
(1894, 473, 43, 2, 4, '2022-01-08 15:56:30', '2022-01-08 15:56:30'),
(1895, 70, 43, 2, 6, '2022-01-08 15:56:30', '2022-01-08 15:56:30'),
(1896, 866, 43, 2, 9, '2022-01-08 15:56:30', '2022-01-08 15:56:30'),
(1897, 982, 43, 2, 12, '2022-01-08 15:56:30', '2022-01-08 15:56:30'),
(1898, 82, 43, 2, 13, '2022-01-08 15:56:30', '2022-01-08 15:56:30'),
(1899, 4, 59, 1, 4, '2022-01-08 15:57:13', '2022-01-08 15:57:13'),
(1900, 5, 59, 3, 4, '2022-01-08 15:57:14', '2022-01-08 15:57:14'),
(1904, 0, 68, 1, 1, '2022-01-08 15:58:58', '2022-01-08 15:58:58'),
(1905, 0, 68, 1, 2, '2022-01-08 15:58:58', '2022-01-08 15:58:58'),
(1906, 0, 68, 1, 3, '2022-01-08 15:58:58', '2022-01-08 15:58:58'),
(1907, 4, 68, 1, 4, '2022-01-08 15:58:58', '2022-01-08 15:58:58'),
(1908, 0, 68, 1, 5, '2022-01-08 15:58:58', '2022-01-08 15:58:58'),
(1909, 0, 68, 1, 6, '2022-01-08 15:58:58', '2022-01-08 15:58:58'),
(1910, 0, 68, 2, 1, '2022-01-08 15:58:58', '2022-01-08 15:58:58'),
(1911, 0, 68, 2, 2, '2022-01-08 15:58:58', '2022-01-08 15:58:58'),
(1912, 0, 68, 2, 3, '2022-01-08 15:58:58', '2022-01-08 15:58:58'),
(1913, 0, 68, 2, 4, '2022-01-08 15:58:58', '2022-01-08 15:58:58'),
(1914, 0, 68, 2, 5, '2022-01-08 15:58:58', '2022-01-08 15:58:58'),
(1915, 0, 68, 2, 6, '2022-01-08 15:58:58', '2022-01-08 15:58:58'),
(1916, 0, 68, 3, 1, '2022-01-08 15:58:58', '2022-01-08 15:58:58'),
(1917, 0, 68, 3, 2, '2022-01-08 15:58:58', '2022-01-08 15:58:58'),
(1918, 0, 68, 3, 3, '2022-01-08 15:58:58', '2022-01-08 15:58:58'),
(1919, 0, 68, 3, 4, '2022-01-08 15:58:58', '2022-01-08 15:58:58'),
(1920, 0, 68, 3, 5, '2022-01-08 15:58:58', '2022-01-08 15:58:58'),
(1921, 4, 62, 1, 3, '2022-01-08 15:59:21', '2022-01-08 15:59:21'),
(1922, 4, 62, 3, 4, '2022-01-08 15:59:21', '2022-01-08 15:59:21'),
(1924, 4, 104, 1, 4, '2022-01-08 16:02:46', '2022-01-08 16:02:46'),
(1929, 10, 129, 1, 1, '2022-01-08 16:22:03', '2022-01-08 16:22:03'),
(1930, 10, 129, 1, 2, '2022-01-08 16:22:03', '2022-01-08 16:22:03'),
(1931, 10, 129, 2, 1, '2022-01-08 16:22:03', '2022-01-08 16:22:03'),
(1932, 10, 129, 2, 2, '2022-01-08 16:22:03', '2022-01-08 16:22:03'),
(1933, 10, 129, 3, 1, '2022-01-08 16:22:03', '2022-01-08 16:22:03'),
(1934, 10, 129, 3, 2, '2022-01-08 16:22:03', '2022-01-08 16:22:03'),
(1935, 10, 129, 3, 3, '2022-01-08 16:22:03', '2022-01-08 16:22:03'),
(1936, 4110, 129, 3, 4, '2022-01-08 16:22:03', '2022-01-08 16:22:03'),
(1937, 10, 130, 2, 1, '2022-01-08 16:25:07', '2022-01-08 16:25:07'),
(1938, 10, 130, 2, 2, '2022-01-08 16:25:07', '2022-01-08 16:25:07'),
(1939, 10, 130, 2, 3, '2022-01-08 16:25:07', '2022-01-08 16:25:07'),
(1940, 10, 130, 2, 4, '2022-01-08 16:25:07', '2022-01-08 16:25:07'),
(1941, 10, 130, 3, 1, '2022-01-08 16:25:07', '2022-01-08 16:25:07'),
(1942, 10, 130, 3, 2, '2022-01-08 16:25:07', '2022-01-08 16:25:07'),
(1943, 10, 130, 3, 3, '2022-01-08 16:25:07', '2022-01-08 16:25:07'),
(1944, 10, 130, 3, 4, '2022-01-08 16:25:07', '2022-01-08 16:25:07'),
(1945, 10, 130, 4, 1, '2022-01-08 16:25:07', '2022-01-08 16:25:07'),
(1946, 10, 130, 4, 2, '2022-01-08 16:25:07', '2022-01-08 16:25:07'),
(1947, 10, 130, 4, 3, '2022-01-08 16:25:07', '2022-01-08 16:25:07'),
(1948, 10, 130, 4, 4, '2022-01-08 16:25:07', '2022-01-08 16:25:07'),
(1949, 10, 131, 1, 1, '2022-01-08 16:28:36', '2022-01-08 16:28:36'),
(1950, 10, 131, 1, 2, '2022-01-08 16:28:36', '2022-01-08 16:28:36'),
(1951, 10, 131, 1, 3, '2022-01-08 16:28:36', '2022-01-08 16:28:36'),
(1952, 10, 131, 1, 4, '2022-01-08 16:28:36', '2022-01-08 16:28:36'),
(1953, 10, 131, 2, 1, '2022-01-08 16:28:36', '2022-01-08 16:28:36'),
(1954, 10, 131, 2, 2, '2022-01-08 16:28:36', '2022-01-08 16:28:36'),
(1955, 10, 131, 2, 3, '2022-01-08 16:28:36', '2022-01-08 16:28:36'),
(1956, 10, 131, 2, 4, '2022-01-08 16:28:36', '2022-01-08 16:28:36'),
(1957, 10, 131, 3, 1, '2022-01-08 16:28:36', '2022-01-08 16:28:36'),
(1958, 10, 131, 3, 2, '2022-01-08 16:28:36', '2022-01-08 16:28:36'),
(1959, 10, 131, 3, 3, '2022-01-08 16:28:36', '2022-01-08 16:28:36'),
(1969, 140, 132, 1, 1, '2022-01-08 16:33:59', '2022-01-08 16:33:59'),
(1970, 10, 132, 1, 2, '2022-01-08 16:33:59', '2022-01-08 16:33:59'),
(1971, 10, 132, 1, 3, '2022-01-08 16:33:59', '2022-01-08 16:33:59'),
(1972, 10, 132, 2, 1, '2022-01-08 16:33:59', '2022-01-08 16:33:59'),
(1973, 10, 132, 2, 3, '2022-01-08 16:33:59', '2022-01-08 16:33:59'),
(1974, 10, 132, 2, 4, '2022-01-08 16:33:59', '2022-01-08 16:33:59'),
(1975, 10, 132, 3, 1, '2022-01-08 16:33:59', '2022-01-08 16:33:59'),
(1976, 10, 132, 3, 2, '2022-01-08 16:33:59', '2022-01-08 16:33:59'),
(1977, 10, 132, 3, 3, '2022-01-08 16:33:59', '2022-01-08 16:33:59'),
(1978, 10, 133, 1, 1, '2022-01-08 16:37:17', '2022-01-08 16:37:17'),
(1979, 10, 133, 1, 2, '2022-01-08 16:37:17', '2022-01-08 16:37:17'),
(1980, 10, 133, 1, 3, '2022-01-08 16:37:17', '2022-01-08 16:37:17'),
(1981, 10, 133, 1, 4, '2022-01-08 16:37:17', '2022-01-08 16:37:17'),
(1982, 10, 133, 2, 1, '2022-01-08 16:37:17', '2022-01-08 16:37:17'),
(1983, 10, 133, 2, 2, '2022-01-08 16:37:17', '2022-01-08 16:37:17'),
(1984, 10, 133, 2, 3, '2022-01-08 16:37:17', '2022-01-08 16:37:17'),
(1985, 10, 133, 3, 1, '2022-01-08 16:37:17', '2022-01-08 16:37:17'),
(1986, 10, 133, 3, 2, '2022-01-08 16:37:17', '2022-01-08 16:37:17'),
(1987, 10, 133, 3, 3, '2022-01-08 16:37:17', '2022-01-08 16:37:17'),
(1988, 10, 133, 3, 4, '2022-01-08 16:37:17', '2022-01-08 16:37:17'),
(1989, 10, 134, 1, 1, '2022-01-08 16:39:56', '2022-01-08 16:39:56'),
(1990, 10, 134, 1, 2, '2022-01-08 16:39:56', '2022-01-08 16:39:56'),
(1991, 10, 134, 1, 3, '2022-01-08 16:39:56', '2022-01-08 16:39:56'),
(1992, 10, 134, 2, 1, '2022-01-08 16:39:56', '2022-01-08 16:39:56'),
(1993, 10, 134, 2, 2, '2022-01-08 16:39:56', '2022-01-08 16:39:56'),
(1994, 10, 134, 2, 3, '2022-01-08 16:39:56', '2022-01-08 16:39:56'),
(1995, 10, 134, 3, 1, '2022-01-08 16:39:56', '2022-01-08 16:39:56'),
(1996, 10, 134, 3, 2, '2022-01-08 16:39:56', '2022-01-08 16:39:56'),
(1997, 10, 134, 3, 3, '2022-01-08 16:39:56', '2022-01-08 16:39:56'),
(2001, 10, 135, 1, 1, '2022-01-08 16:43:17', '2022-01-08 16:43:17'),
(2002, 10, 135, 1, 2, '2022-01-08 16:43:17', '2022-01-08 16:43:17'),
(2003, 10, 135, 1, 3, '2022-01-08 16:43:17', '2022-01-08 16:43:17'),
(2004, 10, 135, 2, 1, '2022-01-08 16:43:17', '2022-01-08 16:43:17'),
(2005, 10, 135, 2, 2, '2022-01-08 16:43:17', '2022-01-08 16:43:17'),
(2006, 10, 135, 2, 3, '2022-01-08 16:43:17', '2022-01-08 16:43:17'),
(2007, 10, 135, 3, 1, '2022-01-08 16:43:17', '2022-01-08 16:43:17'),
(2008, 10, 135, 3, 2, '2022-01-08 16:43:17', '2022-01-08 16:43:17'),
(2009, 10, 135, 3, 3, '2022-01-08 16:43:17', '2022-01-08 16:43:17'),
(2010, 10, 135, 4, 1, '2022-01-08 16:43:17', '2022-01-08 16:43:17'),
(2011, 10, 135, 4, 2, '2022-01-08 16:43:17', '2022-01-08 16:43:17'),
(2012, 10, 135, 4, 3, '2022-01-08 16:43:17', '2022-01-08 16:43:17'),
(2013, 10, 136, 1, 1, '2022-01-08 16:46:20', '2022-01-08 16:46:20'),
(2014, 10, 136, 1, 2, '2022-01-08 16:46:20', '2022-01-08 16:46:20'),
(2015, 10, 136, 1, 3, '2022-01-08 16:46:20', '2022-01-08 16:46:20'),
(2016, 10, 136, 2, 1, '2022-01-08 16:46:20', '2022-01-08 16:46:20'),
(2017, 10, 136, 2, 2, '2022-01-08 16:46:20', '2022-01-08 16:46:20'),
(2018, 10, 136, 2, 3, '2022-01-08 16:46:20', '2022-01-08 16:46:20'),
(2019, 10, 136, 3, 1, '2022-01-08 16:46:20', '2022-01-08 16:46:20'),
(2020, 10, 136, 3, 2, '2022-01-08 16:46:20', '2022-01-08 16:46:20'),
(2021, 10, 136, 3, 3, '2022-01-08 16:46:20', '2022-01-08 16:46:20'),
(2022, 10, 137, 1, 1, '2022-01-08 16:48:41', '2022-01-08 16:48:41'),
(2023, 10, 137, 1, 2, '2022-01-08 16:48:41', '2022-01-08 16:48:41'),
(2024, 10, 137, 1, 3, '2022-01-08 16:48:41', '2022-01-08 16:48:41'),
(2025, 10, 137, 2, 1, '2022-01-08 16:48:42', '2022-01-08 16:48:42'),
(2026, 10, 137, 2, 2, '2022-01-08 16:48:42', '2022-01-08 16:48:42'),
(2027, 10, 137, 2, 3, '2022-01-08 16:48:42', '2022-01-08 16:48:42'),
(2028, 10, 137, 3, 1, '2022-01-08 16:48:42', '2022-01-08 16:48:42'),
(2029, 10, 137, 3, 2, '2022-01-08 16:48:42', '2022-01-08 16:48:42'),
(2030, 10, 137, 3, 3, '2022-01-08 16:48:42', '2022-01-08 16:48:42'),
(2031, 10, 138, 1, 1, '2022-01-08 16:51:19', '2022-01-08 16:51:19'),
(2032, 10, 138, 1, 2, '2022-01-08 16:51:19', '2022-01-08 16:51:19'),
(2033, 10, 138, 1, 3, '2022-01-08 16:51:19', '2022-01-08 16:51:19'),
(2034, 10, 138, 2, 1, '2022-01-08 16:51:19', '2022-01-08 16:51:19'),
(2035, 10, 138, 2, 2, '2022-01-08 16:51:19', '2022-01-08 16:51:19'),
(2036, 10, 138, 2, 3, '2022-01-08 16:51:19', '2022-01-08 16:51:19'),
(2037, 10, 138, 3, 1, '2022-01-08 16:51:19', '2022-01-08 16:51:19'),
(2038, 10, 138, 3, 2, '2022-01-08 16:51:19', '2022-01-08 16:51:19'),
(2039, 10, 138, 3, 3, '2022-01-08 16:51:19', '2022-01-08 16:51:19'),
(2049, 10, 123, 1, 1, '2022-01-09 12:45:24', '2022-01-09 12:45:24'),
(2050, 10, 123, 1, 2, '2022-01-09 12:45:24', '2022-01-09 12:45:24'),
(2132, 10, 139, 1, 1, '2022-01-10 15:52:48', '2022-01-10 15:52:48'),
(2133, 10, 139, 1, 2, '2022-01-10 15:52:48', '2022-01-10 15:52:48'),
(2134, 10, 139, 1, 3, '2022-01-10 15:52:48', '2022-01-10 15:52:48'),
(2135, 10, 139, 2, 1, '2022-01-10 15:52:48', '2022-01-10 15:52:48'),
(2136, 10, 139, 2, 2, '2022-01-10 15:52:48', '2022-01-10 15:52:48'),
(2137, 10, 139, 2, 3, '2022-01-10 15:52:48', '2022-01-10 15:52:48'),
(2138, 10, 139, 3, 1, '2022-01-10 15:52:48', '2022-01-10 15:52:48'),
(2139, 10, 139, 3, 2, '2022-01-10 15:52:48', '2022-01-10 15:52:48'),
(2140, 10, 139, 3, 3, '2022-01-10 15:52:48', '2022-01-10 15:52:48'),
(2141, 3, 100, 1, 4, '2022-01-10 17:24:26', '2022-01-10 17:24:26');

-- --------------------------------------------------------

--
-- Table structure for table `prod_imgs`
--

CREATE TABLE `prod_imgs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `img` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `prod_imgs`
--

INSERT INTO `prod_imgs` (`id`, `img`, `product_id`, `created_at`, `updated_at`) VALUES
(21, 'upload/advertising/163828045861a62d0a6c3c3.jpeg', 14, '2021-11-30 13:54:18', '2021-11-30 13:54:18'),
(22, 'upload/advertising/163828058061a62d84abaed.jpg', 15, '2021-11-30 13:56:20', '2021-11-30 13:56:20'),
(23, 'upload/advertising/163828058861a62d8cddca3.jpg', 15, '2021-11-30 13:56:28', '2021-11-30 13:56:28'),
(24, 'upload/advertising/163828096361a62f03bcb29.jpg', 17, '2021-11-30 14:02:43', '2021-11-30 14:02:43'),
(27, 'upload/advertising/163828228161a63429562ab.jpg', 19, '2021-11-30 14:24:41', '2021-11-30 14:24:41'),
(28, 'upload/advertising/163828228161a6342957a32.jpg', 19, '2021-11-30 14:24:41', '2021-11-30 14:24:41'),
(29, 'upload/advertising/163828228161a634295c7d2.jpg', 19, '2021-11-30 14:24:41', '2021-11-30 14:24:41'),
(30, 'upload/advertising/163828231361a6344961eab.jpg', 20, '2021-11-30 14:25:13', '2021-11-30 14:25:13'),
(31, 'upload/advertising/163828231361a6344965a5c.jpg', 20, '2021-11-30 14:25:13', '2021-11-30 14:25:13'),
(32, 'upload/advertising/163828231361a634496a536.jpg', 20, '2021-11-30 14:25:13', '2021-11-30 14:25:13'),
(40, 'upload/advertising/163828351461a638fab8550.jpeg', 23, '2021-11-30 14:45:14', '2021-11-30 14:45:14'),
(43, 'upload/advertising/163836409361a773bd2660f.jpg', 48, '2021-12-01 13:08:13', '2021-12-01 13:08:13'),
(44, 'upload/advertising/163836409361a773bd80838.jpg', 48, '2021-12-01 13:08:13', '2021-12-01 13:08:13'),
(45, 'upload/advertising/163836409361a773bdcce99.jpg', 48, '2021-12-01 13:08:14', '2021-12-01 13:08:14'),
(53, 'upload/advertising/163836497161a7772b85133.jpg', 52, '2021-12-01 13:22:52', '2021-12-01 13:22:52'),
(54, 'upload/advertising/163836497861a7773246c02.jpg', 52, '2021-12-01 13:22:58', '2021-12-01 13:22:58'),
(55, 'upload/advertising/163836500761a7774fb0fd0.jpg', 52, '2021-12-01 13:23:28', '2021-12-01 13:23:28'),
(56, 'upload/advertising/163836545561a7790fec000.jpg', 53, '2021-12-01 13:30:56', '2021-12-01 13:30:56'),
(57, 'upload/advertising/163836546161a77915a9900.jpg', 53, '2021-12-01 13:31:02', '2021-12-01 13:31:02'),
(58, 'upload/advertising/163836568161a779f1c59ec.jpg', 54, '2021-12-01 13:34:42', '2021-12-01 13:34:42'),
(59, 'upload/advertising/163836569161a779fbe0779.jpg', 54, '2021-12-01 13:34:52', '2021-12-01 13:34:52'),
(60, 'upload/advertising/163836569961a77a0358662.jpg', 54, '2021-12-01 13:34:59', '2021-12-01 13:34:59'),
(61, 'upload/advertising/163836990461a78a70162c8.jpg', 55, '2021-12-01 14:45:04', '2021-12-01 14:45:04'),
(62, 'upload/advertising/163836992161a78a81a899a.jpg', 55, '2021-12-01 14:45:21', '2021-12-01 14:45:21'),
(63, 'upload/advertising/163836993561a78a8f2f122.jpg', 55, '2021-12-01 14:45:35', '2021-12-01 14:45:35'),
(66, 'upload/advertising/163905899561b20e330f1bd.jpg', 57, '2021-12-09 14:09:55', '2021-12-09 14:09:55'),
(67, 'upload/advertising/163905899561b20e3330583.jpg', 57, '2021-12-09 14:09:55', '2021-12-09 14:09:55'),
(68, 'upload/advertising/163905899561b20e3354057.jpg', 57, '2021-12-09 14:09:55', '2021-12-09 14:09:55'),
(74, 'upload/advertising/163922728461b49f947a79c.jpg', 62, '2021-12-11 12:54:44', '2021-12-11 12:54:44'),
(75, 'upload/advertising/163922728461b49f94abd8e.jpg', 62, '2021-12-11 12:54:44', '2021-12-11 12:54:44'),
(76, 'upload/advertising/163922728461b49f94d2b85.jpg', 62, '2021-12-11 12:54:44', '2021-12-11 12:54:44'),
(77, 'upload/advertising/163922760761b4a0d78c1ab.jpg', 63, '2021-12-11 13:00:07', '2021-12-11 13:00:07'),
(78, 'upload/advertising/163922760761b4a0d7b22ef.jpg', 63, '2021-12-11 13:00:07', '2021-12-11 13:00:07'),
(80, 'upload/advertising/163939111761b71f8d47a18.jpg', 66, '2021-12-13 10:25:17', '2021-12-13 10:25:17'),
(81, 'upload/advertising/163939111761b71f8d6c5c7.jpg', 66, '2021-12-13 10:25:17', '2021-12-13 10:25:17'),
(82, 'upload/advertising/163939111761b71f8d8f832.jpg', 66, '2021-12-13 10:25:17', '2021-12-13 10:25:17'),
(83, 'upload/advertising/163939111761b71f8db1c3b.jpg', 66, '2021-12-13 10:25:17', '2021-12-13 10:25:17'),
(84, 'upload/advertising/163939156861b7215071701.jpg', 67, '2021-12-13 10:32:48', '2021-12-13 10:32:48'),
(85, 'upload/advertising/163939156861b721509829f.jpg', 67, '2021-12-13 10:32:48', '2021-12-13 10:32:48'),
(98, 'upload/advertising/163957134461b9df905454c.jpg', 74, '2021-12-15 12:29:04', '2021-12-15 12:29:04'),
(101, 'upload/advertising/164007777461c199ce193e3.jpg', 8, '2021-12-21 09:09:34', '2021-12-21 09:09:34'),
(102, 'upload/advertising/164007777461c199ce3020b.jpg', 8, '2021-12-21 09:09:34', '2021-12-21 09:09:34'),
(103, 'upload/advertising/164007898661c19e8ad5525.jpg', 11, '2021-12-21 09:29:47', '2021-12-21 09:29:47'),
(104, 'upload/advertising/164007898761c19e8b2d5b1.jpg', 11, '2021-12-21 09:29:47', '2021-12-21 09:29:47'),
(105, 'upload/advertising/164007898761c19e8b5f36a.jpg', 11, '2021-12-21 09:29:47', '2021-12-21 09:29:47'),
(106, 'upload/advertising/164007898761c19e8b75cf5.jpg', 11, '2021-12-21 09:29:47', '2021-12-21 09:29:47'),
(107, 'upload/advertising/164007968961c1a1499ad3e.jpg', 19, '2021-12-21 09:41:29', '2021-12-21 09:41:29'),
(108, 'upload/advertising/164008097961c1a65314094.jpg', 43, '2021-12-21 10:02:59', '2021-12-21 10:02:59'),
(109, 'upload/advertising/164008097961c1a653295d9.jpg', 43, '2021-12-21 10:02:59', '2021-12-21 10:02:59'),
(110, 'upload/advertising/164008173861c1a94a233a3.jpg', 54, '2021-12-21 10:15:38', '2021-12-21 10:15:38'),
(111, 'upload/advertising/164008173861c1a94a57b45.jpg', 54, '2021-12-21 10:15:38', '2021-12-21 10:15:38'),
(112, 'upload/advertising/164008186361c1a9c71944d.jpg', 54, '2021-12-21 10:17:43', '2021-12-21 10:17:43'),
(113, 'upload/advertising/164008186361c1a9c742faf.jpg', 54, '2021-12-21 10:17:43', '2021-12-21 10:17:43'),
(117, 'upload/advertising/164008230561c1ab81cde85.jpg', 66, '2021-12-21 10:25:06', '2021-12-21 10:25:06'),
(118, 'upload/advertising/164008250661c1ac4a27450.jpg', 67, '2021-12-21 10:28:26', '2021-12-21 10:28:26'),
(119, 'upload/advertising/164008250661c1ac4a3a3dd.jpg', 67, '2021-12-21 10:28:26', '2021-12-21 10:28:26'),
(120, 'upload/advertising/164008250661c1ac4a678c0.jpg', 67, '2021-12-21 10:28:26', '2021-12-21 10:28:26'),
(121, 'upload/advertising/164008250661c1ac4a771c7.jpg', 67, '2021-12-21 10:28:26', '2021-12-21 10:28:26'),
(122, 'upload/advertising/164008270961c1ad15d1735.jpg', 68, '2021-12-21 10:31:50', '2021-12-21 10:31:50'),
(123, 'upload/advertising/164008271061c1ad160a94a.jpg', 68, '2021-12-21 10:31:50', '2021-12-21 10:31:50'),
(134, 'upload/advertising/164008502361c1b61f89899.jpg', 74, '2021-12-21 11:10:23', '2021-12-21 11:10:23'),
(135, 'upload/advertising/164008642361c1bb97a4a7a.jpg', 66, '2021-12-21 11:33:43', '2021-12-21 11:33:43'),
(136, 'upload/advertising/164008642361c1bb97d7c5b.jpg', 66, '2021-12-21 11:33:43', '2021-12-21 11:33:43'),
(137, 'upload/advertising/164008642461c1bb9801b0d.jpg', 66, '2021-12-21 11:33:44', '2021-12-21 11:33:44'),
(138, 'upload/advertising/164008729161c1befb8a2e9.jpg', 76, '2021-12-21 11:48:11', '2021-12-21 11:48:11'),
(139, 'upload/advertising/164008729161c1befbb52ae.jpg', 76, '2021-12-21 11:48:11', '2021-12-21 11:48:11'),
(140, 'upload/advertising/164008822561c1c2a1bea82.jpg', 77, '2021-12-21 12:03:45', '2021-12-21 12:03:45'),
(141, 'upload/advertising/164008822561c1c2a1dac42.jpg', 77, '2021-12-21 12:03:45', '2021-12-21 12:03:45'),
(142, 'upload/advertising/164008822661c1c2a2011fb.jpg', 77, '2021-12-21 12:03:46', '2021-12-21 12:03:46'),
(143, 'upload/advertising/164008822661c1c2a219c84.jpg', 77, '2021-12-21 12:03:46', '2021-12-21 12:03:46'),
(144, 'upload/advertising/164008822661c1c2a232a2c.jpg', 77, '2021-12-21 12:03:46', '2021-12-21 12:03:46'),
(145, 'upload/advertising/164008822661c1c2a24b460.jpg', 77, '2021-12-21 12:03:46', '2021-12-21 12:03:46'),
(146, 'upload/advertising/164008849361c1c3ad14f85.jpg', 78, '2021-12-21 12:08:13', '2021-12-21 12:08:13'),
(147, 'upload/advertising/164008849361c1c3ad2fc28.jpg', 78, '2021-12-21 12:08:13', '2021-12-21 12:08:13'),
(148, 'upload/advertising/164008849361c1c3ad49a1b.jpg', 78, '2021-12-21 12:08:13', '2021-12-21 12:08:13'),
(149, 'upload/advertising/164008849361c1c3ad63143.jpg', 78, '2021-12-21 12:08:13', '2021-12-21 12:08:13'),
(150, 'upload/advertising/164008895061c1c5763038a.jpg', 80, '2021-12-21 12:15:50', '2021-12-21 12:15:50'),
(151, 'upload/advertising/164008895061c1c576545d6.jpg', 80, '2021-12-21 12:15:50', '2021-12-21 12:15:50'),
(152, 'upload/advertising/164008895061c1c57675d9b.jpg', 80, '2021-12-21 12:15:50', '2021-12-21 12:15:50'),
(153, 'upload/advertising/164008895061c1c57699b15.jpg', 80, '2021-12-21 12:15:50', '2021-12-21 12:15:50'),
(154, 'upload/advertising/164008895061c1c576b5bb2.jpg', 80, '2021-12-21 12:15:50', '2021-12-21 12:15:50'),
(155, 'upload/advertising/164008895061c1c576d5070.jpg', 80, '2021-12-21 12:15:50', '2021-12-21 12:15:50'),
(156, 'upload/advertising/164008895061c1c576f0b00.jpg', 80, '2021-12-21 12:15:51', '2021-12-21 12:15:51'),
(157, 'upload/advertising/164008918161c1c65da066d.jpg', 81, '2021-12-21 12:19:41', '2021-12-21 12:19:41'),
(158, 'upload/advertising/164008918161c1c65dba4b4.jpg', 81, '2021-12-21 12:19:41', '2021-12-21 12:19:41'),
(159, 'upload/advertising/164008918161c1c65dd3a6a.jpg', 81, '2021-12-21 12:19:41', '2021-12-21 12:19:41'),
(160, 'upload/advertising/164008918161c1c65decf0d.jpg', 81, '2021-12-21 12:19:42', '2021-12-21 12:19:42'),
(161, 'upload/advertising/164008918261c1c65e11671.jpg', 81, '2021-12-21 12:19:42', '2021-12-21 12:19:42'),
(162, 'upload/advertising/164008918261c1c65e2cd4b.jpg', 81, '2021-12-21 12:19:42', '2021-12-21 12:19:42'),
(163, 'upload/advertising/164008918261c1c65e46c2a.jpg', 81, '2021-12-21 12:19:42', '2021-12-21 12:19:42'),
(164, 'upload/advertising/164008948661c1c78e47006.jpg', 82, '2021-12-21 12:24:46', '2021-12-21 12:24:46'),
(165, 'upload/advertising/164008948661c1c78e61e23.jpg', 82, '2021-12-21 12:24:46', '2021-12-21 12:24:46'),
(166, 'upload/advertising/164008948661c1c78e829ae.jpg', 82, '2021-12-21 12:24:46', '2021-12-21 12:24:46'),
(167, 'upload/advertising/164008948661c1c78e9b45a.jpg', 82, '2021-12-21 12:24:46', '2021-12-21 12:24:46'),
(168, 'upload/advertising/164008948661c1c78eb3e90.jpg', 82, '2021-12-21 12:24:46', '2021-12-21 12:24:46'),
(169, 'upload/advertising/164008948661c1c78ece60e.jpg', 82, '2021-12-21 12:24:46', '2021-12-21 12:24:46'),
(170, 'upload/advertising/164008948661c1c78eeac01.jpg', 82, '2021-12-21 12:24:47', '2021-12-21 12:24:47'),
(171, 'upload/advertising/164008948761c1c78f0f47f.jpg', 82, '2021-12-21 12:24:47', '2021-12-21 12:24:47'),
(172, 'upload/advertising/164008948761c1c78f2817a.jpg', 82, '2021-12-21 12:24:47', '2021-12-21 12:24:47'),
(173, 'upload/advertising/164008948761c1c78f4174d.jpg', 82, '2021-12-21 12:24:47', '2021-12-21 12:24:47'),
(174, 'upload/advertising/164008970161c1c8653cb5c.jpg', 56, '2021-12-21 12:28:21', '2021-12-21 12:28:21'),
(175, 'upload/advertising/164008970161c1c86559ca4.jpg', 56, '2021-12-21 12:28:21', '2021-12-21 12:28:21'),
(176, 'upload/advertising/164008970161c1c86574d2c.jpg', 56, '2021-12-21 12:28:21', '2021-12-21 12:28:21'),
(177, 'upload/advertising/164008970161c1c8658e085.jpg', 56, '2021-12-21 12:28:21', '2021-12-21 12:28:21'),
(178, 'upload/advertising/164008970161c1c865a6cc0.jpg', 56, '2021-12-21 12:28:21', '2021-12-21 12:28:21'),
(179, 'upload/advertising/164008970161c1c865c06bd.jpg', 56, '2021-12-21 12:28:21', '2021-12-21 12:28:21'),
(180, 'upload/advertising/164008970161c1c865da78b.jpg', 56, '2021-12-21 12:28:21', '2021-12-21 12:28:21'),
(188, 'upload/advertising/164009016561c1ca35bee7c.jpg', 84, '2021-12-21 12:36:05', '2021-12-21 12:36:05'),
(189, 'upload/advertising/164009016561c1ca35de56d.jpg', 84, '2021-12-21 12:36:06', '2021-12-21 12:36:06'),
(190, 'upload/advertising/164009016661c1ca360486c.jpg', 84, '2021-12-21 12:36:06', '2021-12-21 12:36:06'),
(191, 'upload/advertising/164009016661c1ca361f397.jpg', 84, '2021-12-21 12:36:06', '2021-12-21 12:36:06'),
(192, 'upload/advertising/164009128761c1ce9774483.jpg', 85, '2021-12-21 12:54:47', '2021-12-21 12:54:47'),
(193, 'upload/advertising/164009128761c1ce979db6e.jpg', 85, '2021-12-21 12:54:47', '2021-12-21 12:54:47'),
(194, 'upload/advertising/164009128761c1ce97b8ba6.jpg', 85, '2021-12-21 12:54:47', '2021-12-21 12:54:47'),
(195, 'upload/advertising/164009128761c1ce97d1868.jpg', 85, '2021-12-21 12:54:47', '2021-12-21 12:54:47'),
(196, 'upload/advertising/164009128761c1ce97e9760.jpg', 85, '2021-12-21 12:54:48', '2021-12-21 12:54:48'),
(197, 'upload/advertising/164009128861c1ce980d514.jpg', 85, '2021-12-21 12:54:48', '2021-12-21 12:54:48'),
(198, 'upload/advertising/164042708561c6ee4dd374c.jpg', 86, '2021-12-25 10:11:25', '2021-12-25 10:11:25'),
(199, 'upload/advertising/164042708561c6ee4deff10.jpg', 86, '2021-12-25 10:11:26', '2021-12-25 10:11:26'),
(200, 'upload/advertising/164042715161c6ee8fb80ed.jpg', 87, '2021-12-25 10:12:31', '2021-12-25 10:12:31'),
(201, 'upload/advertising/164042715661c6ee94817e5.jpg', 87, '2021-12-25 10:12:36', '2021-12-25 10:12:36'),
(202, 'upload/advertising/164042733361c6ef45689d3.jpg', 89, '2021-12-25 10:15:33', '2021-12-25 10:15:33'),
(203, 'upload/advertising/164042733361c6ef458560d.jpg', 89, '2021-12-25 10:15:33', '2021-12-25 10:15:33'),
(204, 'upload/advertising/164042741961c6ef9bbfb61.jpg', 90, '2021-12-25 10:16:59', '2021-12-25 10:16:59'),
(205, 'upload/advertising/164042741961c6ef9bdc6f9.jpg', 90, '2021-12-25 10:17:00', '2021-12-25 10:17:00'),
(206, 'upload/advertising/164042759561c6f04b80949.jpg', 91, '2021-12-25 10:19:55', '2021-12-25 10:19:55'),
(207, 'upload/advertising/164042759561c6f04b9c5e9.jpg', 91, '2021-12-25 10:19:55', '2021-12-25 10:19:55'),
(208, 'upload/advertising/164042759561c6f04bb95c7.jpg', 91, '2021-12-25 10:19:55', '2021-12-25 10:19:55'),
(212, 'upload/advertising/164103604861d0391098b1b.jpg', 94, '2022-01-01 11:20:48', '2022-01-01 11:20:48'),
(213, 'upload/advertising/164103609561d0393f498e1.jpg', 95, '2022-01-01 11:21:35', '2022-01-01 11:21:35'),
(214, 'upload/advertising/164103613561d03967d8eb2.jpg', 96, '2022-01-01 11:22:16', '2022-01-01 11:22:16'),
(215, 'upload/advertising/164103618261d039961dd18.jpg', 97, '2022-01-01 11:23:02', '2022-01-01 11:23:02'),
(216, 'upload/advertising/164103622661d039c29a82b.jpg', 98, '2022-01-01 11:23:46', '2022-01-01 11:23:46'),
(217, 'upload/advertising/164103627961d039f7c93d8.jpg', 99, '2022-01-01 11:24:40', '2022-01-01 11:24:40'),
(219, 'upload/advertising/164103636961d03a51241a2.jpg', 101, '2022-01-01 11:26:09', '2022-01-01 11:26:09'),
(220, 'upload/advertising/164103641261d03a7c33aee.jpg', 102, '2022-01-01 11:26:52', '2022-01-01 11:26:52'),
(221, 'upload/advertising/164103650461d03ad8d0987.jpg', 103, '2022-01-01 11:28:25', '2022-01-01 11:28:25'),
(222, 'upload/advertising/164103655161d03b07d10ad.jpg', 104, '2022-01-01 11:29:12', '2022-01-01 11:29:12'),
(223, 'upload/advertising/164103664861d03b68332f9.jpg', 105, '2022-01-01 11:30:48', '2022-01-01 11:30:48'),
(224, 'upload/advertising/164103832661d041f6a70af.jpg', 106, '2022-01-01 11:58:46', '2022-01-01 11:58:46'),
(225, 'upload/advertising/164103839861d0423e6492f.jpg', 107, '2022-01-01 11:59:58', '2022-01-01 11:59:58'),
(227, 'upload/advertising/164103849761d042a18b001.jpg', 109, '2022-01-01 12:01:37', '2022-01-01 12:01:37'),
(229, 'upload/advertising/164103862161d0431d355c1.jpg', 111, '2022-01-01 12:03:41', '2022-01-01 12:03:41'),
(249, 'upload/advertising/164111971461d17fe20dfa2.jpg', 109, '2022-01-02 10:35:14', '2022-01-02 10:35:14'),
(250, 'upload/advertising/164111971461d17fe25a20e.jpg', 109, '2022-01-02 10:35:14', '2022-01-02 10:35:14'),
(251, 'upload/advertising/164111971461d17fe2af4ab.jpg', 109, '2022-01-02 10:35:15', '2022-01-02 10:35:15'),
(252, 'upload/advertising/164111971561d17fe30adb5.jpg', 109, '2022-01-02 10:35:15', '2022-01-02 10:35:15'),
(253, 'upload/advertising/164111971561d17fe3619a4.jpg', 109, '2022-01-02 10:35:15', '2022-01-02 10:35:15'),
(254, 'upload/advertising/164111971561d17fe3b088b.jpg', 109, '2022-01-02 10:35:15', '2022-01-02 10:35:15'),
(255, 'upload/advertising/164111971561d17fe3f2d66.jpg', 109, '2022-01-02 10:35:16', '2022-01-02 10:35:16'),
(256, 'upload/advertising/164111971661d17fe4406c9.jpg', 109, '2022-01-02 10:35:16', '2022-01-02 10:35:16'),
(257, 'upload/advertising/164111971661d17fe484167.jpg', 109, '2022-01-02 10:35:16', '2022-01-02 10:35:16'),
(268, 'upload/advertising/164112166061d1877c6179c.jpg', 107, '2022-01-02 11:07:40', '2022-01-02 11:07:40'),
(269, 'upload/advertising/164112166061d1877cae07d.jpg', 107, '2022-01-02 11:07:41', '2022-01-02 11:07:41'),
(270, 'upload/advertising/164112166161d1877d0eeb7.jpg', 107, '2022-01-02 11:07:41', '2022-01-02 11:07:41'),
(271, 'upload/advertising/164112166161d1877d5b22f.jpg', 107, '2022-01-02 11:07:41', '2022-01-02 11:07:41'),
(272, 'upload/advertising/164112166161d1877da3b57.jpg', 107, '2022-01-02 11:07:41', '2022-01-02 11:07:41'),
(273, 'upload/advertising/164112166161d1877debc9f.jpg', 107, '2022-01-02 11:07:42', '2022-01-02 11:07:42'),
(274, 'upload/advertising/164112166261d1877e43315.jpg', 107, '2022-01-02 11:07:42', '2022-01-02 11:07:42'),
(275, 'upload/advertising/164112166261d1877e91541.jpg', 107, '2022-01-02 11:07:42', '2022-01-02 11:07:42'),
(276, 'upload/advertising/164112168561d1879596f0b.jpg', 107, '2022-01-02 11:08:05', '2022-01-02 11:08:05'),
(277, 'upload/advertising/164112168561d18795eeab6.jpg', 107, '2022-01-02 11:08:06', '2022-01-02 11:08:06'),
(278, 'upload/advertising/164112168661d18796460dc.jpg', 107, '2022-01-02 11:08:06', '2022-01-02 11:08:06'),
(279, 'upload/advertising/164112240761d18a678da7e.jpg', 106, '2022-01-02 11:20:07', '2022-01-02 11:20:07'),
(280, 'upload/advertising/164112240761d18a67d9358.jpg', 106, '2022-01-02 11:20:08', '2022-01-02 11:20:08'),
(281, 'upload/advertising/164112240861d18a68276ed.jpg', 106, '2022-01-02 11:20:08', '2022-01-02 11:20:08'),
(282, 'upload/advertising/164112240861d18a6869870.jpg', 106, '2022-01-02 11:20:08', '2022-01-02 11:20:08'),
(283, 'upload/advertising/164112240861d18a68a797c.jpg', 106, '2022-01-02 11:20:08', '2022-01-02 11:20:08'),
(284, 'upload/advertising/164112244061d18a8877405.jpg', 106, '2022-01-02 11:20:40', '2022-01-02 11:20:40'),
(285, 'upload/advertising/164112244061d18a88b9114.jpg', 106, '2022-01-02 11:20:40', '2022-01-02 11:20:40'),
(286, 'upload/advertising/164112244161d18a890ad87.jpg', 106, '2022-01-02 11:20:41', '2022-01-02 11:20:41'),
(287, 'upload/advertising/164112244161d18a8945b72.jpg', 106, '2022-01-02 11:20:41', '2022-01-02 11:20:41'),
(288, 'upload/advertising/164112244161d18a897ff06.jpg', 106, '2022-01-02 11:20:41', '2022-01-02 11:20:41'),
(289, 'upload/advertising/164112244161d18a89bc08a.jpg', 106, '2022-01-02 11:20:41', '2022-01-02 11:20:41'),
(290, 'upload/advertising/164112288561d18c450cb2e.jpg', 105, '2022-01-02 11:28:05', '2022-01-02 11:28:05'),
(291, 'upload/advertising/164112288561d18c4558426.jpg', 105, '2022-01-02 11:28:05', '2022-01-02 11:28:05'),
(292, 'upload/advertising/164112288561d18c4599bb8.jpg', 105, '2022-01-02 11:28:05', '2022-01-02 11:28:05'),
(293, 'upload/advertising/164112288561d18c45dae7c.jpg', 105, '2022-01-02 11:28:06', '2022-01-02 11:28:06'),
(294, 'upload/advertising/164112288661d18c462a178.jpg', 105, '2022-01-02 11:28:06', '2022-01-02 11:28:06'),
(295, 'upload/advertising/164112288661d18c4667894.jpg', 105, '2022-01-02 11:28:06', '2022-01-02 11:28:06'),
(296, 'upload/advertising/164112288661d18c46a5625.jpg', 105, '2022-01-02 11:28:06', '2022-01-02 11:28:06'),
(297, 'upload/advertising/164112288661d18c46e08d1.jpg', 105, '2022-01-02 11:28:07', '2022-01-02 11:28:07'),
(298, 'upload/advertising/164112879461d1a35a9fd32.jpg', 96, '2022-01-02 13:06:34', '2022-01-02 13:06:34'),
(299, 'upload/advertising/164112879561d1a35b01483.jpg', 96, '2022-01-02 13:06:35', '2022-01-02 13:06:35'),
(300, 'upload/advertising/164112879561d1a35b50e14.jpg', 96, '2022-01-02 13:06:35', '2022-01-02 13:06:35'),
(301, 'upload/advertising/164112879561d1a35b9a56a.jpg', 96, '2022-01-02 13:06:35', '2022-01-02 13:06:35'),
(302, 'upload/advertising/164112909461d1a486545cf.jpg', 95, '2022-01-02 13:11:34', '2022-01-02 13:11:34'),
(303, 'upload/advertising/164112909461d1a486a1f30.jpg', 95, '2022-01-02 13:11:34', '2022-01-02 13:11:34'),
(304, 'upload/advertising/164112909461d1a486e6e79.jpg', 95, '2022-01-02 13:11:35', '2022-01-02 13:11:35'),
(305, 'upload/advertising/164112909561d1a48737d37.jpg', 95, '2022-01-02 13:11:35', '2022-01-02 13:11:35'),
(306, 'upload/advertising/164112909561d1a4877d2d8.jpg', 95, '2022-01-02 13:11:35', '2022-01-02 13:11:35'),
(307, 'upload/advertising/164112909561d1a487bf379.jpg', 95, '2022-01-02 13:11:36', '2022-01-02 13:11:36'),
(308, 'upload/advertising/164112909661d1a48811603.jpg', 95, '2022-01-02 13:11:36', '2022-01-02 13:11:36'),
(309, 'upload/advertising/164112909661d1a4885f7c1.jpg', 95, '2022-01-02 13:11:36', '2022-01-02 13:11:36'),
(310, 'upload/advertising/164112909661d1a4889f58d.jpg', 95, '2022-01-02 13:11:36', '2022-01-02 13:11:36'),
(311, 'upload/advertising/164112930161d1a5559eef6.jpg', 102, '2022-01-02 13:15:02', '2022-01-02 13:15:02'),
(312, 'upload/advertising/164112930261d1a556744be.jpg', 102, '2022-01-02 13:15:03', '2022-01-02 13:15:03'),
(313, 'upload/advertising/164112930361d1a5573f4d9.jpg', 102, '2022-01-02 13:15:03', '2022-01-02 13:15:03'),
(314, 'upload/advertising/164112930361d1a557f27e2.jpg', 102, '2022-01-02 13:15:04', '2022-01-02 13:15:04'),
(315, 'upload/advertising/164112930461d1a5589e7df.jpg', 102, '2022-01-02 13:15:05', '2022-01-02 13:15:05'),
(316, 'upload/advertising/164112930561d1a55920ad1.jpg', 102, '2022-01-02 13:15:05', '2022-01-02 13:15:05'),
(317, 'upload/advertising/164113078761d1ab239f0b7.jpg', 101, '2022-01-02 13:39:47', '2022-01-02 13:39:47'),
(318, 'upload/advertising/164113078761d1ab23ed55b.jpg', 101, '2022-01-02 13:39:48', '2022-01-02 13:39:48'),
(319, 'upload/advertising/164113078861d1ab24490a0.jpg', 101, '2022-01-02 13:39:48', '2022-01-02 13:39:48'),
(320, 'upload/advertising/164113078861d1ab2493cf7.jpg', 101, '2022-01-02 13:39:48', '2022-01-02 13:39:48'),
(321, 'upload/advertising/164113078861d1ab24dab42.jpg', 101, '2022-01-02 13:39:49', '2022-01-02 13:39:49'),
(322, 'upload/advertising/164113078961d1ab2529431.jpg', 101, '2022-01-02 13:39:49', '2022-01-02 13:39:49'),
(323, 'upload/advertising/164113078961d1ab256d1ac.jpg', 101, '2022-01-02 13:39:49', '2022-01-02 13:39:49'),
(324, 'upload/advertising/164113122561d1acd9dec8b.jpg', 100, '2022-01-02 13:47:06', '2022-01-02 13:47:06'),
(325, 'upload/advertising/164113122661d1acda627a1.jpg', 100, '2022-01-02 13:47:06', '2022-01-02 13:47:06'),
(326, 'upload/advertising/164113122661d1acdabf6de.jpg', 100, '2022-01-02 13:47:07', '2022-01-02 13:47:07'),
(327, 'upload/advertising/164113122761d1acdb169c7.jpg', 100, '2022-01-02 13:47:07', '2022-01-02 13:47:07'),
(328, 'upload/advertising/164113122761d1acdb7c5ed.jpg', 100, '2022-01-02 13:47:08', '2022-01-02 13:47:08'),
(329, 'upload/advertising/164113122861d1acdc0c95a.jpg', 100, '2022-01-02 13:47:08', '2022-01-02 13:47:08'),
(330, 'upload/advertising/164113122861d1acdc7a975.jpg', 100, '2022-01-02 13:47:08', '2022-01-02 13:47:08'),
(340, 'upload/advertising/164139806461d5bf3064d86.jpeg', 119, '2022-01-05 15:54:24', '2022-01-05 15:54:24'),
(341, 'upload/advertising/164139806461d5bf30ac35b.jpeg', 119, '2022-01-05 15:54:25', '2022-01-05 15:54:25'),
(342, 'upload/advertising/164139806561d5bf311eb18.jpeg', 119, '2022-01-05 15:54:25', '2022-01-05 15:54:25'),
(343, 'upload/advertising/164139823961d5bfdf50ce7.jpeg', 120, '2022-01-05 15:57:19', '2022-01-05 15:57:19'),
(344, 'upload/advertising/164139823961d5bfdf969ee.jpeg', 120, '2022-01-05 15:57:19', '2022-01-05 15:57:19'),
(345, 'upload/advertising/164139823961d5bfdfd27ab.jpeg', 120, '2022-01-05 15:57:20', '2022-01-05 15:57:20'),
(347, 'upload/advertising/164148080561d702654a180.jpg', 110, '2022-01-06 14:53:25', '2022-01-06 14:53:25'),
(348, 'upload/advertising/164148080561d7026576f20.jpg', 110, '2022-01-06 14:53:25', '2022-01-06 14:53:25'),
(349, 'upload/advertising/164148080561d702659d045.jpg', 110, '2022-01-06 14:53:25', '2022-01-06 14:53:25'),
(350, 'upload/advertising/164148080561d70265ca72c.jpg', 110, '2022-01-06 14:53:25', '2022-01-06 14:53:25'),
(358, 'upload/advertising/164156198261d83f7e4ad52.jpeg', 123, '2022-01-07 13:26:22', '2022-01-07 13:26:22'),
(359, 'upload/advertising/164156198261d83f7e7c2eb.jpeg', 123, '2022-01-07 13:26:22', '2022-01-07 13:26:22'),
(360, 'upload/advertising/164156198261d83f7eaaf2d.jpeg', 123, '2022-01-07 13:26:22', '2022-01-07 13:26:22'),
(362, 'upload/advertising/164165271261d9a1e88f3d1.jpg', 125, '2022-01-08 14:38:32', '2022-01-08 14:38:32'),
(363, 'upload/advertising/164165271261d9a1e89c7e3.jpg', 125, '2022-01-08 14:38:32', '2022-01-08 14:38:32'),
(364, 'upload/advertising/164165271261d9a1e8aa6cf.jpg', 125, '2022-01-08 14:38:32', '2022-01-08 14:38:32'),
(365, 'upload/advertising/164165372061d9a5d86cabf.jpg', 126, '2022-01-08 14:55:20', '2022-01-08 14:55:20'),
(366, 'upload/advertising/164165372061d9a5d89d810.jpeg', 126, '2022-01-08 14:55:20', '2022-01-08 14:55:20'),
(376, 'upload/advertising/164165858461d9b8d87b3a3.jpeg', 129, '2022-01-08 16:16:24', '2022-01-08 16:16:24'),
(377, 'upload/advertising/164165858461d9b8d8ac24a.jpeg', 129, '2022-01-08 16:16:24', '2022-01-08 16:16:24'),
(378, 'upload/advertising/164165910761d9bae32c1e5.jpeg', 130, '2022-01-08 16:25:07', '2022-01-08 16:25:07'),
(379, 'upload/advertising/164165910761d9bae34d7aa.jpeg', 130, '2022-01-08 16:25:07', '2022-01-08 16:25:07'),
(380, 'upload/advertising/164165910761d9bae373593.jpeg', 130, '2022-01-08 16:25:07', '2022-01-08 16:25:07'),
(381, 'upload/advertising/164165910761d9bae395079.jpeg', 130, '2022-01-08 16:25:07', '2022-01-08 16:25:07'),
(382, 'upload/advertising/164165931561d9bbb3b3737.jpeg', 131, '2022-01-08 16:28:35', '2022-01-08 16:28:35'),
(383, 'upload/advertising/164165931561d9bbb3d326a.jpeg', 131, '2022-01-08 16:28:35', '2022-01-08 16:28:35'),
(384, 'upload/advertising/164165931561d9bbb3f1738.jpeg', 131, '2022-01-08 16:28:36', '2022-01-08 16:28:36'),
(385, 'upload/advertising/164165953861d9bc92c896b.jpeg', 132, '2022-01-08 16:32:18', '2022-01-08 16:32:18'),
(386, 'upload/advertising/164165953861d9bc92eb0cb.jpeg', 132, '2022-01-08 16:32:19', '2022-01-08 16:32:19'),
(387, 'upload/advertising/164165953961d9bc931678e.jpeg', 132, '2022-01-08 16:32:19', '2022-01-08 16:32:19'),
(388, 'upload/advertising/164165953961d9bc9336f2d.jpeg', 132, '2022-01-08 16:32:19', '2022-01-08 16:32:19'),
(389, 'upload/advertising/164165983661d9bdbcc6d65.jpeg', 133, '2022-01-08 16:37:16', '2022-01-08 16:37:16'),
(390, 'upload/advertising/164165983661d9bdbce7a12.jpeg', 133, '2022-01-08 16:37:17', '2022-01-08 16:37:17'),
(391, 'upload/advertising/164165983761d9bdbd11c46.jpeg', 133, '2022-01-08 16:37:17', '2022-01-08 16:37:17'),
(392, 'upload/advertising/164165983761d9bdbd30c2c.jpeg', 133, '2022-01-08 16:37:17', '2022-01-08 16:37:17'),
(393, 'upload/advertising/164165999661d9be5c04863.jpeg', 134, '2022-01-08 16:39:56', '2022-01-08 16:39:56'),
(394, 'upload/advertising/164165999661d9be5c231d9.jpeg', 134, '2022-01-08 16:39:56', '2022-01-08 16:39:56'),
(395, 'upload/advertising/164165999661d9be5c4a05c.jpeg', 134, '2022-01-08 16:39:56', '2022-01-08 16:39:56'),
(396, 'upload/advertising/164165999661d9be5c6cf7e.jpeg', 134, '2022-01-08 16:39:56', '2022-01-08 16:39:56'),
(397, 'upload/advertising/164166014861d9bef47aeb7.jpeg', 135, '2022-01-08 16:42:28', '2022-01-08 16:42:28'),
(398, 'upload/advertising/164166014861d9bef49e916.jpeg', 135, '2022-01-08 16:42:28', '2022-01-08 16:42:28'),
(399, 'upload/advertising/164166014861d9bef4bd788.jpeg', 135, '2022-01-08 16:42:28', '2022-01-08 16:42:28'),
(400, 'upload/advertising/164166014861d9bef4dcc71.jpeg', 135, '2022-01-08 16:42:29', '2022-01-08 16:42:29'),
(401, 'upload/advertising/164166037961d9bfdb785b4.jpeg', 136, '2022-01-08 16:46:19', '2022-01-08 16:46:19'),
(402, 'upload/advertising/164166037961d9bfdb9af4a.jpeg', 136, '2022-01-08 16:46:19', '2022-01-08 16:46:19'),
(403, 'upload/advertising/164166037961d9bfdbba4c9.jpeg', 136, '2022-01-08 16:46:19', '2022-01-08 16:46:19'),
(404, 'upload/advertising/164166037961d9bfdbdbb6c.jpeg', 136, '2022-01-08 16:46:20', '2022-01-08 16:46:20'),
(405, 'upload/advertising/164166052161d9c069a42bb.jpeg', 137, '2022-01-08 16:48:41', '2022-01-08 16:48:41'),
(406, 'upload/advertising/164166052161d9c069c8eff.jpeg', 137, '2022-01-08 16:48:41', '2022-01-08 16:48:41'),
(407, 'upload/advertising/164166067861d9c10682091.jpeg', 138, '2022-01-08 16:51:18', '2022-01-08 16:51:18'),
(408, 'upload/advertising/164166067861d9c106a3051.jpeg', 138, '2022-01-08 16:51:18', '2022-01-08 16:51:18'),
(409, 'upload/advertising/164166067861d9c106c29fe.jpeg', 138, '2022-01-08 16:51:18', '2022-01-08 16:51:18'),
(410, 'upload/advertising/164166067861d9c106e20f1.jpeg', 138, '2022-01-08 16:51:19', '2022-01-08 16:51:19'),
(411, 'upload/advertising/164166067961d9c10710e41.jpeg', 138, '2022-01-08 16:51:19', '2022-01-08 16:51:19'),
(412, 'upload/advertising/164166083861d9c1a6ceb01.jpeg', 139, '2022-01-08 16:53:58', '2022-01-08 16:53:58'),
(413, 'upload/advertising/164166083861d9c1a6ee324.jpeg', 139, '2022-01-08 16:53:59', '2022-01-08 16:53:59'),
(414, 'upload/advertising/164166083961d9c1a7188df.jpeg', 139, '2022-01-08 16:53:59', '2022-01-08 16:53:59'),
(415, 'upload/advertising/164166083961d9c1a7372b5.jpeg', 139, '2022-01-08 16:53:59', '2022-01-08 16:53:59'),
(416, 'upload/advertising/164168293161da17f34a360.jpg', 97, '2022-01-08 23:02:11', '2022-01-08 23:02:11'),
(417, 'upload/advertising/164168293161da17f38973b.jpg', 97, '2022-01-08 23:02:11', '2022-01-08 23:02:11'),
(418, 'upload/advertising/164168293161da17f3c2bb7.jpg', 97, '2022-01-08 23:02:12', '2022-01-08 23:02:12'),
(419, 'upload/advertising/164168293261da17f40b277.jpg', 97, '2022-01-08 23:02:12', '2022-01-08 23:02:12'),
(420, 'upload/advertising/164168293261da17f448a23.jpg', 97, '2022-01-08 23:02:12', '2022-01-08 23:02:12'),
(421, 'upload/advertising/164168325561da1937a8270.jpg', 98, '2022-01-08 23:07:35', '2022-01-08 23:07:35'),
(422, 'upload/advertising/164168325661da193846cbc.jpg', 98, '2022-01-08 23:07:36', '2022-01-08 23:07:36'),
(423, 'upload/advertising/164168325661da193882f3e.jpg', 98, '2022-01-08 23:07:36', '2022-01-08 23:07:36'),
(424, 'upload/advertising/164168325761da193952a47.jpg', 98, '2022-01-08 23:07:37', '2022-01-08 23:07:37'),
(425, 'upload/advertising/164168325761da193992cf5.jpg', 98, '2022-01-08 23:07:37', '2022-01-08 23:07:37'),
(426, 'upload/advertising/164168366361da1acf2c96c.jpg', 99, '2022-01-08 23:14:23', '2022-01-08 23:14:23'),
(427, 'upload/advertising/164168366361da1acf6ba41.jpg', 99, '2022-01-08 23:14:23', '2022-01-08 23:14:23'),
(428, 'upload/advertising/164168366361da1acfa4232.jpg', 99, '2022-01-08 23:14:23', '2022-01-08 23:14:23'),
(429, 'upload/advertising/164168366361da1acfe1cc7.jpg', 99, '2022-01-08 23:14:24', '2022-01-08 23:14:24'),
(430, 'upload/advertising/164168366461da1ad02666e.jpg', 99, '2022-01-08 23:14:24', '2022-01-08 23:14:24'),
(431, 'upload/advertising/164168366461da1ad0611fd.jpg', 99, '2022-01-08 23:14:24', '2022-01-08 23:14:24'),
(432, 'upload/advertising/164168366461da1ad099127.jpg', 99, '2022-01-08 23:14:24', '2022-01-08 23:14:24'),
(433, 'upload/advertising/164168423261da1d083a223.jpg', 111, '2022-01-08 23:23:52', '2022-01-08 23:23:52'),
(434, 'upload/advertising/164168423261da1d087a430.jpg', 111, '2022-01-08 23:23:52', '2022-01-08 23:23:52'),
(435, 'upload/advertising/164168423261da1d08b4402.jpg', 111, '2022-01-08 23:23:52', '2022-01-08 23:23:52'),
(436, 'upload/advertising/164168423261da1d08ec78d.jpg', 111, '2022-01-08 23:23:53', '2022-01-08 23:23:53'),
(437, 'upload/advertising/164168423361da1d093483a.jpg', 111, '2022-01-08 23:23:53', '2022-01-08 23:23:53'),
(438, 'upload/advertising/164168423361da1d0977069.jpg', 111, '2022-01-08 23:23:53', '2022-01-08 23:23:53'),
(439, 'upload/advertising/164168423361da1d09b60e0.jpg', 111, '2022-01-08 23:23:53', '2022-01-08 23:23:53'),
(440, 'upload/advertising/164168423461da1d0a000f5.jpg', 111, '2022-01-08 23:23:54', '2022-01-08 23:23:54'),
(441, 'upload/advertising/164168484561da1f6dbb928.jpg', 103, '2022-01-08 23:34:06', '2022-01-08 23:34:06'),
(442, 'upload/advertising/164168484661da1f6e15d24.jpg', 103, '2022-01-08 23:34:06', '2022-01-08 23:34:06'),
(443, 'upload/advertising/164168484661da1f6e5c593.jpg', 103, '2022-01-08 23:34:06', '2022-01-08 23:34:06'),
(444, 'upload/advertising/164168484661da1f6e9d8e8.jpg', 103, '2022-01-08 23:34:06', '2022-01-08 23:34:06'),
(445, 'upload/advertising/164168484661da1f6ed8dd0.jpg', 103, '2022-01-08 23:34:07', '2022-01-08 23:34:07'),
(446, 'upload/advertising/164168484761da1f6f1cfa3.jpg', 103, '2022-01-08 23:34:07', '2022-01-08 23:34:07'),
(447, 'upload/advertising/164168486861da1f842fd5e.jpg', 103, '2022-01-08 23:34:28', '2022-01-08 23:34:28'),
(448, 'upload/advertising/164168486861da1f8467c8f.jpg', 103, '2022-01-08 23:34:28', '2022-01-08 23:34:28'),
(449, 'upload/advertising/164168486861da1f84b8cda.jpg', 103, '2022-01-08 23:34:29', '2022-01-08 23:34:29'),
(450, 'upload/advertising/164168486961da1f8504714.jpg', 103, '2022-01-08 23:34:29', '2022-01-08 23:34:29'),
(451, 'upload/advertising/164168486961da1f8546a5f.jpg', 103, '2022-01-08 23:34:29', '2022-01-08 23:34:29');

-- --------------------------------------------------------

--
-- Table structure for table `prod_sizes`
--

CREATE TABLE `prod_sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `size_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `prod_sizes`
--

INSERT INTO `prod_sizes` (`id`, `product_id`, `size_id`, `created_at`, `updated_at`) VALUES
(233, 15, 1, '2021-11-30 15:12:44', '2021-11-30 15:12:44'),
(234, 15, 2, '2021-11-30 15:12:44', '2021-11-30 15:12:44'),
(259, 48, 1, '2021-12-01 13:09:18', '2021-12-01 13:09:18'),
(260, 48, 3, '2021-12-01 13:09:18', '2021-12-01 13:09:18'),
(268, 52, 1, '2021-12-01 13:22:36', '2021-12-01 13:22:36'),
(269, 52, 3, '2021-12-01 13:22:37', '2021-12-01 13:22:37'),
(270, 53, 1, '2021-12-01 13:30:21', '2021-12-01 13:30:21'),
(271, 53, 2, '2021-12-01 13:30:21', '2021-12-01 13:30:21'),
(274, 55, 1, '2021-12-01 14:44:52', '2021-12-01 14:44:52'),
(275, 55, 2, '2021-12-01 14:44:52', '2021-12-01 14:44:52'),
(333, 8, 1, '2021-12-21 09:11:25', '2021-12-21 09:11:25'),
(334, 8, 2, '2021-12-21 09:11:25', '2021-12-21 09:11:25'),
(335, 8, 3, '2021-12-21 09:11:25', '2021-12-21 09:11:25'),
(336, 8, 4, '2021-12-21 09:11:25', '2021-12-21 09:11:25'),
(337, 8, 5, '2021-12-21 09:11:25', '2021-12-21 09:11:25'),
(346, 54, 2, '2021-12-21 10:14:31', '2021-12-21 10:14:31'),
(347, 54, 3, '2021-12-21 10:14:31', '2021-12-21 10:14:31'),
(361, 74, 1, '2021-12-21 11:09:41', '2021-12-21 11:09:41'),
(373, 57, 1, '2021-12-21 12:44:54', '2021-12-21 12:44:54'),
(374, 57, 2, '2021-12-21 12:44:54', '2021-12-21 12:44:54'),
(375, 57, 6, '2021-12-21 12:44:54', '2021-12-21 12:44:54'),
(379, 76, 5, '2021-12-21 12:46:05', '2021-12-21 12:46:05'),
(380, 77, 1, '2021-12-21 12:46:27', '2021-12-21 12:46:27'),
(381, 78, 5, '2021-12-21 12:46:55', '2021-12-21 12:46:55'),
(382, 78, 6, '2021-12-21 12:46:55', '2021-12-21 12:46:55'),
(383, 79, 1, '2021-12-21 12:47:07', '2021-12-21 12:47:07'),
(384, 80, 1, '2021-12-21 12:47:38', '2021-12-21 12:47:38'),
(385, 81, 2, '2021-12-21 12:48:00', '2021-12-21 12:48:00'),
(386, 82, 1, '2021-12-21 12:48:18', '2021-12-21 12:48:18'),
(387, 56, 1, '2021-12-21 12:52:04', '2021-12-21 12:52:04'),
(388, 56, 2, '2021-12-21 12:52:04', '2021-12-21 12:52:04'),
(389, 56, 3, '2021-12-21 12:52:04', '2021-12-21 12:52:04'),
(390, 85, 2, '2021-12-21 12:54:32', '2021-12-21 12:54:32'),
(392, 84, 1, '2021-12-21 12:55:35', '2021-12-21 12:55:35'),
(404, 90, 1, '2021-12-25 20:36:55', '2021-12-25 20:36:55'),
(405, 89, 1, '2021-12-25 20:37:12', '2021-12-25 20:37:12'),
(406, 88, 1, '2021-12-25 20:37:55', '2021-12-25 20:37:55'),
(407, 87, 1, '2021-12-25 20:38:43', '2021-12-25 20:38:43'),
(408, 86, 1, '2021-12-25 20:39:04', '2021-12-25 20:39:04'),
(409, 91, 1, '2021-12-26 10:34:02', '2021-12-26 10:34:02'),
(413, 95, 1, '2022-01-01 11:21:35', '2022-01-01 11:21:35'),
(414, 96, 1, '2022-01-01 11:22:16', '2022-01-01 11:22:16'),
(415, 97, 2, '2022-01-01 11:23:02', '2022-01-01 11:23:02'),
(416, 98, 1, '2022-01-01 11:23:46', '2022-01-01 11:23:46'),
(417, 99, 1, '2022-01-01 11:24:40', '2022-01-01 11:24:40'),
(419, 101, 1, '2022-01-01 11:26:09', '2022-01-01 11:26:09'),
(420, 102, 1, '2022-01-01 11:26:52', '2022-01-01 11:26:52'),
(421, 103, 1, '2022-01-01 11:28:25', '2022-01-01 11:28:25'),
(458, 105, 1, '2022-01-06 17:52:55', '2022-01-06 17:52:55'),
(461, 47, 1, '2022-01-06 17:56:17', '2022-01-06 17:56:17'),
(462, 47, 3, '2022-01-06 17:56:17', '2022-01-06 17:56:17'),
(490, 120, 1, '2022-01-08 10:40:20', '2022-01-08 10:40:20'),
(491, 120, 2, '2022-01-08 10:40:20', '2022-01-08 10:40:20'),
(492, 120, 4, '2022-01-08 10:40:20', '2022-01-08 10:40:20'),
(493, 120, 5, '2022-01-08 10:40:20', '2022-01-08 10:40:20'),
(495, 119, 1, '2022-01-08 13:29:35', '2022-01-08 13:29:35'),
(496, 119, 2, '2022-01-08 13:29:35', '2022-01-08 13:29:35'),
(497, 119, 3, '2022-01-08 13:29:35', '2022-01-08 13:29:35'),
(498, 119, 5, '2022-01-08 13:29:35', '2022-01-08 13:29:35'),
(499, 111, 1, '2022-01-08 13:31:19', '2022-01-08 13:31:19'),
(500, 111, 2, '2022-01-08 13:31:19', '2022-01-08 13:31:19'),
(501, 111, 3, '2022-01-08 13:31:20', '2022-01-08 13:31:20'),
(502, 111, 4, '2022-01-08 13:31:20', '2022-01-08 13:31:20'),
(503, 111, 5, '2022-01-08 13:31:20', '2022-01-08 13:31:20'),
(504, 110, 1, '2022-01-08 13:32:13', '2022-01-08 13:32:13'),
(505, 110, 2, '2022-01-08 13:32:13', '2022-01-08 13:32:13'),
(506, 110, 3, '2022-01-08 13:32:13', '2022-01-08 13:32:13'),
(507, 110, 4, '2022-01-08 13:32:13', '2022-01-08 13:32:13'),
(508, 110, 5, '2022-01-08 13:32:13', '2022-01-08 13:32:13'),
(509, 109, 1, '2022-01-08 13:43:32', '2022-01-08 13:43:32'),
(514, 107, 1, '2022-01-08 13:45:18', '2022-01-08 13:45:18'),
(521, 94, 1, '2022-01-08 13:50:16', '2022-01-08 13:50:16'),
(522, 66, 1, '2022-01-08 13:52:18', '2022-01-08 13:52:18'),
(523, 66, 3, '2022-01-08 13:52:18', '2022-01-08 13:52:18'),
(524, 66, 5, '2022-01-08 13:52:18', '2022-01-08 13:52:18'),
(542, 11, 1, '2022-01-08 14:03:05', '2022-01-08 14:03:05'),
(543, 14, 1, '2022-01-08 14:03:26', '2022-01-08 14:03:26'),
(544, 14, 2, '2022-01-08 14:03:26', '2022-01-08 14:03:26'),
(547, 17, 1, '2022-01-08 14:06:27', '2022-01-08 14:06:27'),
(548, 17, 2, '2022-01-08 14:06:27', '2022-01-08 14:06:27'),
(551, 19, 1, '2022-01-08 14:07:14', '2022-01-08 14:07:14'),
(552, 19, 2, '2022-01-08 14:07:14', '2022-01-08 14:07:14'),
(553, 19, 5, '2022-01-08 14:07:14', '2022-01-08 14:07:14'),
(554, 20, 2, '2022-01-08 14:07:52', '2022-01-08 14:07:52'),
(555, 20, 3, '2022-01-08 14:07:52', '2022-01-08 14:07:52'),
(556, 20, 5, '2022-01-08 14:07:52', '2022-01-08 14:07:52'),
(570, 23, 2, '2022-01-08 14:27:01', '2022-01-08 14:27:01'),
(571, 23, 3, '2022-01-08 14:27:01', '2022-01-08 14:27:01'),
(572, 23, 5, '2022-01-08 14:27:01', '2022-01-08 14:27:01'),
(578, 106, 1, '2022-01-08 14:28:34', '2022-01-08 14:28:34'),
(579, 106, 2, '2022-01-08 14:28:34', '2022-01-08 14:28:34'),
(580, 106, 3, '2022-01-08 14:28:34', '2022-01-08 14:28:34'),
(581, 106, 4, '2022-01-08 14:28:34', '2022-01-08 14:28:34'),
(582, 106, 5, '2022-01-08 14:28:34', '2022-01-08 14:28:34'),
(596, 67, 1, '2022-01-08 15:43:28', '2022-01-08 15:43:28'),
(597, 67, 2, '2022-01-08 15:43:28', '2022-01-08 15:43:28'),
(602, 63, 1, '2022-01-08 15:52:34', '2022-01-08 15:52:34'),
(603, 63, 2, '2022-01-08 15:52:34', '2022-01-08 15:52:34'),
(606, 43, 1, '2022-01-08 15:56:30', '2022-01-08 15:56:30'),
(607, 43, 2, '2022-01-08 15:56:30', '2022-01-08 15:56:30'),
(608, 59, 1, '2022-01-08 15:57:13', '2022-01-08 15:57:13'),
(609, 59, 3, '2022-01-08 15:57:14', '2022-01-08 15:57:14'),
(613, 68, 1, '2022-01-08 15:58:58', '2022-01-08 15:58:58'),
(614, 68, 2, '2022-01-08 15:58:58', '2022-01-08 15:58:58'),
(615, 68, 3, '2022-01-08 15:58:58', '2022-01-08 15:58:58'),
(616, 62, 1, '2022-01-08 15:59:21', '2022-01-08 15:59:21'),
(617, 62, 3, '2022-01-08 15:59:21', '2022-01-08 15:59:21'),
(619, 104, 1, '2022-01-08 16:02:46', '2022-01-08 16:02:46'),
(626, 129, 1, '2022-01-08 16:22:03', '2022-01-08 16:22:03'),
(627, 129, 2, '2022-01-08 16:22:03', '2022-01-08 16:22:03'),
(628, 129, 3, '2022-01-08 16:22:03', '2022-01-08 16:22:03'),
(629, 130, 2, '2022-01-08 16:25:07', '2022-01-08 16:25:07'),
(630, 130, 3, '2022-01-08 16:25:07', '2022-01-08 16:25:07'),
(631, 130, 4, '2022-01-08 16:25:07', '2022-01-08 16:25:07'),
(632, 131, 1, '2022-01-08 16:28:36', '2022-01-08 16:28:36'),
(633, 131, 2, '2022-01-08 16:28:36', '2022-01-08 16:28:36'),
(634, 131, 3, '2022-01-08 16:28:36', '2022-01-08 16:28:36'),
(639, 132, 1, '2022-01-08 16:33:59', '2022-01-08 16:33:59'),
(640, 132, 2, '2022-01-08 16:33:59', '2022-01-08 16:33:59'),
(641, 132, 3, '2022-01-08 16:33:59', '2022-01-08 16:33:59'),
(642, 133, 1, '2022-01-08 16:37:17', '2022-01-08 16:37:17'),
(643, 133, 2, '2022-01-08 16:37:17', '2022-01-08 16:37:17'),
(644, 133, 3, '2022-01-08 16:37:17', '2022-01-08 16:37:17'),
(645, 134, 1, '2022-01-08 16:39:56', '2022-01-08 16:39:56'),
(646, 134, 2, '2022-01-08 16:39:56', '2022-01-08 16:39:56'),
(647, 134, 3, '2022-01-08 16:39:56', '2022-01-08 16:39:56'),
(650, 135, 1, '2022-01-08 16:43:17', '2022-01-08 16:43:17'),
(651, 135, 2, '2022-01-08 16:43:17', '2022-01-08 16:43:17'),
(652, 135, 3, '2022-01-08 16:43:17', '2022-01-08 16:43:17'),
(653, 135, 4, '2022-01-08 16:43:17', '2022-01-08 16:43:17'),
(654, 136, 1, '2022-01-08 16:46:20', '2022-01-08 16:46:20'),
(655, 136, 2, '2022-01-08 16:46:20', '2022-01-08 16:46:20'),
(656, 136, 3, '2022-01-08 16:46:20', '2022-01-08 16:46:20'),
(657, 137, 1, '2022-01-08 16:48:41', '2022-01-08 16:48:41'),
(658, 137, 2, '2022-01-08 16:48:41', '2022-01-08 16:48:41'),
(659, 137, 3, '2022-01-08 16:48:42', '2022-01-08 16:48:42'),
(660, 138, 1, '2022-01-08 16:51:19', '2022-01-08 16:51:19'),
(661, 138, 2, '2022-01-08 16:51:19', '2022-01-08 16:51:19'),
(662, 138, 3, '2022-01-08 16:51:19', '2022-01-08 16:51:19'),
(666, 123, 1, '2022-01-09 12:45:24', '2022-01-09 12:45:24'),
(694, 139, 1, '2022-01-10 15:52:48', '2022-01-10 15:52:48'),
(695, 139, 2, '2022-01-10 15:52:48', '2022-01-10 15:52:48'),
(696, 139, 3, '2022-01-10 15:52:48', '2022-01-10 15:52:48'),
(697, 100, 1, '2022-01-10 17:24:26', '2022-01-10 17:24:26');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'User Administrator', 'User is allowed to manage and edit other users', '2021-09-11 21:13:55', '2021-09-11 21:13:55');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`role_id`, `user_id`, `user_type`) VALUES
(1, 1, 'App\\User');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ad_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_name_ar` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_name_en` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_des_ar` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_des_en` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_plus` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ios_link` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `android_link` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telegram` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `snapchat` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_image` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_image_mob` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `logo`, `footer_logo`, `ad_image`, `facebook`, `site_name_ar`, `site_name_en`, `site_des_ar`, `site_des_en`, `email`, `twitter`, `google_plus`, `youtube`, `whatsapp`, `ios_link`, `android_link`, `instagram`, `telegram`, `phone`, `snapchat`, `landing_image`, `landing_image_mob`, `created_at`, `updated_at`) VALUES
(2, 'uploads/logos/images//16375860775411636989944422sara-logo.png', 'uploads/logos/images//16375860777951636469094960sara-logo-02.png', 'uploads/logos/images//1638787777313f2.png', 'https://instagram.com/saramerdas.almutairi?igshid=8shenfzrapuc', 'ساره المطيري', 'Sara Almitairi', NULL, NULL, NULL, 'https://instagram.com/saramerdas.almutairi?igshid=8shenfzrapuc', NULL, 'https://instagram.com/saramerdas.almutairi?igshid=8shenfzrapuc', '96700033', NULL, NULL, 'https://instagram.com/saramerdas.almutairi?igshid=8shenfzrapuc', 'https://instagram.com/saramerdas.almutairi?igshid=8shenfzrapuc', '96700033', 'https://www.snapchat.com/add/miss_almutairi', 'uploads/logos/images//1641306237844تشكيلة.jpg', 'uploads/logos/images//1641306521499ففف.jpg', '2021-09-11 21:13:56', '2022-01-04 14:47:06');

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'S', '2021-09-11 21:13:56', '2021-09-11 21:13:56'),
(2, 'M', '2021-09-11 21:13:56', '2021-09-11 21:13:56'),
(3, 'L', '2021-09-11 21:13:56', '2021-09-11 21:13:56'),
(4, 'XL', '2021-09-11 21:13:56', '2021-09-11 21:13:56'),
(5, 'XXL', '2021-09-11 21:13:56', '2021-09-11 21:13:56'),
(6, 'اكسسوارات', '2021-12-01 11:43:58', '2021-12-01 11:43:58');

-- --------------------------------------------------------

--
-- Table structure for table `size_guides`
--

CREATE TABLE `size_guides` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `size_guides`
--

INSERT INTO `size_guides` (`id`, `name_en`, `name_ar`, `image_url`, `created_at`, `updated_at`) VALUES
(1, 'Dresses and Daraa', 'فساتين ودراعات', 'uploads/size_guides/images//1641638251207فساتين ودراعات00.jpg', '2021-11-25 15:10:57', '2022-01-08 10:37:31'),
(2, 'jumpsuit', 'جمبسوت', 'uploads/size_guides/images//1641638193847جمبوست 02 copy.jpg', '2021-11-25 15:11:19', '2022-01-08 10:36:33'),
(3, 'pants', 'بناطيل', 'uploads/size_guides/images//1641638133525untitled-1.jpg', '2021-11-25 18:15:48', '2022-01-08 10:35:33'),
(4, 'Abayas', 'عبايات', 'uploads/size_guides/images//1641638039213عباية 01.jpg', '2021-11-25 18:16:20', '2022-01-08 10:33:59');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_ar` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `name_ar`, `name_en`, `description_ar`, `description_en`, `img`, `created_at`, `updated_at`) VALUES
(1, 'اقوي عروض الشتاء', 'Winter Offers', 'عروض الشتاء', 'عروض الشتاء', 'uploads/sliders/images/1641399072350بانتظارك.png', '2021-09-13 21:59:10', '2022-01-05 16:11:12'),
(2, '.', '.', '.', '.', 'uploads/sliders/images/1638789089206تشكيلة.png', '2021-09-13 21:59:25', '2021-12-06 11:11:30');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'no@gmail.com',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password_view` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` bigint(20) UNSIGNED DEFAULT NULL,
  `job_id` int(11) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `password_view`, `phone`, `country_id`, `job_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'saramerdas', 'saramerdas@gmail.com', NULL, '$2y$10$dZ4GLT.wAdOm./W4DgFNwOsCTRuNqIAkVsabTl8NLHKkU/RNnx5Mm', 'sara2021', '96700033', 1, 1, NULL, '2021-09-11 21:13:55', '2021-12-26 10:12:30'),
(2, 'Sacha Campbell', 'cegefybi@mailinator.com', NULL, '$2y$10$2XwODCSKMYOXR3i4UDgi5uW8bZHJbi.dtgCvqfpf6.0kmTs6rtxzS', 'Aliquam tempore eu ', '5425421', 2, 0, NULL, '2021-10-17 16:53:26', '2021-10-17 16:53:26'),
(3, 'Islam Ramadan', NULL, NULL, '$2y$10$ZcfO5V.mzNIRy871OgjFhOYNgZNZE/SGslK4Ii0vIFVhxzW17mmji', 'Pa$$w0rd!', '0', 2, 0, NULL, '2021-10-23 08:05:06', '2021-10-23 08:54:05'),
(4, 'Islam Ramadann', 'o@gmail.com', NULL, '$2y$10$weHNYJr/RU0njmqPVswpWuHBEQefiO0qKhRwn3Q7acKfpsUYQ4FRe', '01100618113', '01100618113', 1, 0, NULL, '2021-11-08 11:59:59', '2021-11-08 11:59:59'),
(6, 'AHMED', 'no@gmail.com', NULL, '$2y$10$tNhHAVEb1BpuZ49Vy63ejeeYOO3xDXxOmBjBJTS0PHx733mIol82C', '12345678', '99427261', 1, 0, NULL, '2021-11-16 17:06:37', '2021-11-16 17:06:37'),
(7, 'Islam', 'eslam.iniesta@gmail.com', NULL, '$2y$10$lp5VGWZktT0wSbAnkhOGrugCVt10pDijwjs8MlmkiRsZ8199/BncO', '11111111', '01229078596', 1, 1, NULL, '2021-11-17 09:59:56', '2021-11-17 09:59:56'),
(8, 'انوار العنزي', NULL, NULL, '$2y$10$Ophz8C.BKc11ukSI9SIrhubiKxvgP/E5EWqnKlyd6h4o0USnXGC72', 'a123123a', '68886532', 1, 0, NULL, '2022-01-10 19:57:26', '2022-01-10 19:57:26');

-- --------------------------------------------------------

--
-- Table structure for table `views`
--

CREATE TABLE `views` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `views`
--

INSERT INTO `views` (`id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-09-11 21:33:37', '2021-11-09 14:00:54'),
(2, 2, '2021-10-16 16:47:15', '2021-11-11 23:03:41'),
(3, 4, '2021-11-07 08:15:01', '2021-11-12 00:04:17'),
(4, 5, '2021-11-07 08:16:33', '2021-11-09 10:19:58'),
(5, 3, '2021-11-09 10:09:36', '2021-11-13 17:50:18'),
(6, 6, '2021-11-14 10:08:25', '2021-11-30 17:52:44'),
(7, 8, '2021-11-14 16:44:41', '2022-01-31 03:39:06'),
(8, 7, '2021-11-14 16:58:12', '2021-11-29 09:17:55'),
(9, 9, '2021-11-15 17:19:25', '2021-11-30 14:57:08'),
(10, 10, '2021-11-25 17:48:20', '2021-11-25 17:48:20'),
(11, 11, '2021-11-27 19:04:01', '2022-01-31 10:58:41'),
(12, 17, '2021-11-30 14:03:41', '2022-01-27 09:18:24'),
(13, 15, '2021-11-30 14:06:12', '2022-01-31 03:38:52'),
(14, 18, '2021-11-30 14:58:09', '2022-01-10 14:43:39'),
(15, 16, '2021-11-30 14:58:57', '2022-01-07 15:07:34'),
(16, 22, '2021-11-30 17:53:01', '2022-01-07 07:54:59'),
(17, 45, '2021-12-01 11:48:27', '2021-12-01 11:48:27'),
(18, 46, '2021-12-01 12:50:25', '2021-12-01 12:50:34'),
(19, 50, '2021-12-01 15:25:40', '2022-01-09 16:40:06'),
(20, 47, '2021-12-01 15:44:52', '2022-01-31 11:00:55'),
(21, 24, '2021-12-01 17:20:21', '2022-01-08 03:22:52'),
(22, 48, '2021-12-02 09:43:35', '2022-01-31 10:52:46'),
(23, 55, '2021-12-06 10:26:47', '2022-01-30 15:45:21'),
(24, 54, '2021-12-06 14:47:21', '2022-01-31 10:56:54'),
(25, 43, '2021-12-06 14:53:17', '2022-01-30 15:46:38'),
(26, 23, '2021-12-06 14:56:51', '2022-01-30 09:39:48'),
(27, 53, '2021-12-06 15:02:55', '2022-01-30 17:14:59'),
(28, 20, '2021-12-06 15:55:02', '2022-01-25 19:09:55'),
(29, 49, '2021-12-08 21:40:38', '2022-01-07 07:24:38'),
(30, 21, '2021-12-08 23:37:29', '2022-01-06 10:39:57'),
(31, 14, '2021-12-09 17:06:02', '2022-01-30 09:38:52'),
(32, 57, '2021-12-09 17:34:14', '2022-01-30 06:37:12'),
(33, 58, '2021-12-09 20:46:30', '2022-01-10 01:11:16'),
(34, 56, '2021-12-09 22:25:13', '2022-01-29 17:28:28'),
(35, 52, '2021-12-10 12:31:39', '2022-01-29 17:24:46'),
(36, 60, '2021-12-10 12:31:47', '2022-01-06 19:50:08'),
(37, 59, '2021-12-10 12:31:52', '2022-01-29 10:50:43'),
(38, 51, '2021-12-10 12:31:58', '2022-01-09 16:18:53'),
(39, 65, '2021-12-12 05:39:41', '2022-01-07 18:56:07'),
(40, 68, '2021-12-13 21:04:13', '2022-01-27 16:47:50'),
(41, 61, '2021-12-14 14:08:15', '2022-01-06 20:37:21'),
(42, 67, '2021-12-14 17:35:43', '2022-01-29 22:55:43'),
(43, 69, '2021-12-14 17:36:58', '2022-01-07 12:58:54'),
(44, 72, '2021-12-15 19:23:52', '2022-01-07 06:39:10'),
(45, 74, '2021-12-15 19:23:55', '2022-01-29 09:10:12'),
(46, 71, '2021-12-15 19:23:57', '2022-01-07 22:28:23'),
(47, 70, '2021-12-15 19:23:59', '2022-01-07 16:43:37'),
(48, 73, '2021-12-15 19:24:01', '2022-01-06 20:57:38'),
(49, 66, '2021-12-15 19:24:33', '2022-01-31 10:46:33'),
(50, 64, '2021-12-15 19:24:35', '2022-01-07 05:02:33'),
(51, 63, '2021-12-15 19:24:38', '2022-01-28 20:52:44'),
(52, 62, '2021-12-15 19:24:41', '2022-01-29 02:21:38'),
(53, 75, '2021-12-20 14:15:51', '2021-12-21 08:00:55'),
(54, 81, '2021-12-21 18:18:20', '2022-01-27 16:37:59'),
(55, 82, '2021-12-21 18:18:23', '2022-01-30 09:11:23'),
(56, 85, '2021-12-21 18:18:26', '2022-01-31 10:52:14'),
(57, 83, '2021-12-21 18:18:29', '2022-01-07 13:29:45'),
(58, 84, '2021-12-21 18:18:32', '2022-01-31 03:38:34'),
(59, 80, '2021-12-21 18:18:35', '2022-01-30 15:16:38'),
(60, 79, '2021-12-21 18:18:57', '2022-01-31 10:56:36'),
(61, 78, '2021-12-21 18:19:00', '2022-01-29 17:31:29'),
(62, 76, '2021-12-21 18:19:05', '2022-01-30 06:37:24'),
(63, 77, '2021-12-21 18:19:07', '2022-01-29 17:42:35'),
(64, 19, '2021-12-22 18:13:19', '2022-01-29 23:49:20'),
(65, 89, '2021-12-25 17:50:17', '2022-01-31 10:56:19'),
(66, 86, '2021-12-25 19:32:21', '2022-01-30 11:51:57'),
(67, 87, '2021-12-25 19:32:24', '2022-01-31 10:57:20'),
(68, 88, '2021-12-25 19:32:39', '2022-01-30 06:26:06'),
(69, 90, '2021-12-25 19:32:58', '2022-01-30 06:29:50'),
(70, 91, '2021-12-25 19:33:06', '2022-01-25 17:23:28'),
(71, 110, '2022-01-01 13:10:23', '2022-01-30 12:36:25'),
(72, 112, '2022-01-01 14:18:08', '2022-01-01 14:18:08'),
(73, 103, '2022-01-01 18:10:26', '2022-01-31 03:37:49'),
(74, 101, '2022-01-01 18:10:47', '2022-01-31 02:26:38'),
(75, 100, '2022-01-01 18:11:17', '2022-01-30 06:28:02'),
(76, 97, '2022-01-01 18:11:28', '2022-01-31 02:06:38'),
(77, 96, '2022-01-01 21:01:42', '2022-01-30 06:33:55'),
(78, 99, '2022-01-01 23:48:31', '2022-01-30 06:34:12'),
(79, 102, '2022-01-02 01:26:47', '2022-01-30 11:49:26'),
(80, 104, '2022-01-02 04:26:47', '2022-01-31 03:35:53'),
(81, 94, '2022-01-02 07:18:31', '2022-01-31 03:37:08'),
(82, 98, '2022-01-02 07:26:47', '2022-01-29 17:41:25'),
(83, 107, '2022-01-02 11:48:55', '2022-01-30 12:36:00'),
(84, 108, '2022-01-02 11:48:55', '2022-01-07 20:37:28'),
(85, 111, '2022-01-02 16:41:47', '2022-01-31 10:55:42'),
(86, 95, '2022-01-02 18:32:08', '2022-01-31 03:39:28'),
(87, 114, '2022-01-03 08:43:08', '2022-01-03 08:44:52'),
(88, 116, '2022-01-03 08:51:56', '2022-01-06 17:45:36'),
(89, 109, '2022-01-03 19:35:11', '2022-01-30 12:35:03'),
(90, 106, '2022-01-04 05:03:05', '2022-01-30 12:34:21'),
(91, 117, '2022-01-04 12:02:38', '2022-01-04 12:03:06'),
(92, 118, '2022-01-04 12:19:52', '2022-01-04 12:19:52'),
(93, 105, '2022-01-05 15:19:24', '2022-01-31 11:00:30'),
(94, 120, '2022-01-05 21:08:57', '2022-01-30 12:35:38'),
(95, 119, '2022-01-06 00:49:20', '2022-01-30 09:40:44'),
(96, 121, '2022-01-06 16:16:14', '2022-01-06 16:18:57'),
(97, 122, '2022-01-06 16:21:27', '2022-01-06 17:41:14'),
(98, 123, '2022-01-07 13:28:47', '2022-01-31 04:50:43'),
(99, 124, '2022-01-08 13:39:15', '2022-01-08 13:39:15'),
(100, 126, '2022-01-08 15:02:47', '2022-01-30 12:35:50'),
(101, 125, '2022-01-08 15:53:28', '2022-01-31 11:01:27'),
(102, 127, '2022-01-08 16:11:08', '2022-01-08 16:11:08'),
(103, 129, '2022-01-08 16:16:54', '2022-01-29 02:44:06'),
(104, 133, '2022-01-08 16:42:22', '2022-01-31 10:55:18'),
(105, 130, '2022-01-08 16:42:39', '2022-01-29 02:41:48'),
(106, 132, '2022-01-08 16:43:58', '2022-01-27 19:16:33'),
(107, 135, '2022-01-08 17:00:37', '2022-01-31 10:59:28'),
(108, 138, '2022-01-09 00:18:44', '2022-01-31 03:34:17'),
(109, 139, '2022-01-09 04:25:57', '2022-01-31 10:40:57'),
(110, 140, '2022-01-09 16:34:49', '2022-01-09 16:34:49'),
(111, 136, '2022-01-09 18:32:17', '2022-01-31 10:54:56'),
(112, 141, '2022-01-10 16:10:38', '2022-01-10 16:16:28'),
(113, 131, '2022-01-10 17:40:07', '2022-01-23 11:56:29');

-- --------------------------------------------------------

--
-- Table structure for table `wish_list`
--

CREATE TABLE `wish_list` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wish_list`
--

INSERT INTO `wish_list` (`id`, `product_id`, `user_id`, `created_at`, `updated_at`) VALUES
(5, 8, 6, '2021-11-16 17:14:43', '2021-11-16 17:14:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `basic_categories`
--
ALTER TABLE `basic_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `best_sellers`
--
ALTER TABLE `best_sellers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_basic_category_id_foreign` (`basic_category_id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cities_country_id_foreign` (`country_id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_messages`
--
ALTER TABLE `contact_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `countries_currency_id_unique` (`currency_id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_sizes`
--
ALTER TABLE `custom_sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `heights`
--
ALTER TABLE `heights`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD PRIMARY KEY (`user_id`,`permission_id`,`user_type`),
  ADD KEY `permission_user_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_basic_category_id_foreign` (`basic_category_id`),
  ADD KEY `category_id_foreign` (`category_id`);

--
-- Indexes for table `prod_colors`
--
ALTER TABLE `prod_colors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prod_colors_product_id_foreign` (`product_id`),
  ADD KEY `prod_colors_color_id_foreign` (`color_id`);

--
-- Indexes for table `prod_heights`
--
ALTER TABLE `prod_heights`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prod_heights_product_id_foreign` (`product_id`),
  ADD KEY `prod_heights_height_id_foreign` (`height_id`),
  ADD KEY `prod_heights_size_id_foreign` (`size_id`);

--
-- Indexes for table `prod_imgs`
--
ALTER TABLE `prod_imgs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prod_imgs_product_id_foreign` (`product_id`);

--
-- Indexes for table `prod_sizes`
--
ALTER TABLE `prod_sizes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prod_sizes_product_id_foreign` (`product_id`),
  ADD KEY `prod_sizes_size_id_foreign` (`size_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`,`user_type`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `size_guides`
--
ALTER TABLE `size_guides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `views`
--
ALTER TABLE `views`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wish_list`
--
ALTER TABLE `wish_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wish_list_product_id_foreign` (`product_id`),
  ADD KEY `wish_list_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `basic_categories`
--
ALTER TABLE `basic_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `best_sellers`
--
ALTER TABLE `best_sellers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `contact_messages`
--
ALTER TABLE `contact_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `custom_sizes`
--
ALTER TABLE `custom_sizes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `heights`
--
ALTER TABLE `heights`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT for table `prod_colors`
--
ALTER TABLE `prod_colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prod_heights`
--
ALTER TABLE `prod_heights`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2142;

--
-- AUTO_INCREMENT for table `prod_imgs`
--
ALTER TABLE `prod_imgs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=457;

--
-- AUTO_INCREMENT for table `prod_sizes`
--
ALTER TABLE `prod_sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=698;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `size_guides`
--
ALTER TABLE `size_guides`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `views`
--
ALTER TABLE `views`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `wish_list`
--
ALTER TABLE `wish_list`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_basic_category_id_foreign` FOREIGN KEY (`basic_category_id`) REFERENCES `basic_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cities`
--
ALTER TABLE `cities`
  ADD CONSTRAINT `cities_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `countries`
--
ALTER TABLE `countries`
  ADD CONSTRAINT `countries_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_basic_category_id_foreign` FOREIGN KEY (`basic_category_id`) REFERENCES `basic_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `prod_heights`
--
ALTER TABLE `prod_heights`
  ADD CONSTRAINT `prod_heights_height_id_foreign` FOREIGN KEY (`height_id`) REFERENCES `heights` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `prod_heights_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `prod_heights_size_id_foreign` FOREIGN KEY (`size_id`) REFERENCES `sizes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `prod_imgs`
--
ALTER TABLE `prod_imgs`
  ADD CONSTRAINT `prod_imgs_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `prod_sizes`
--
ALTER TABLE `prod_sizes`
  ADD CONSTRAINT `prod_sizes_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `prod_sizes_size_id_foreign` FOREIGN KEY (`size_id`) REFERENCES `sizes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `wish_list`
--
ALTER TABLE `wish_list`
  ADD CONSTRAINT `wish_list_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wish_list_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
