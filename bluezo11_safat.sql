-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 07, 2022 at 07:55 AM
-- Server version: 10.2.40-MariaDB
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
-- Database: `bluezo11_safat`
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
(1, 'كراسى', 'Chairs', 'uploads/basic_categories/images/164367679474860075782.jpg', '2021-09-11 21:13:56', '2022-02-02 14:15:18'),
(2, 'الأثاث', 'furniture', 'uploads/basic_categories/images/164367681660260075951.jpg', '2021-09-11 21:13:56', '2022-02-02 14:15:01'),
(4, 'غرف معيشه', 'Rooms', 'uploads/basic_categories/images/164367676595612.jpg', '2021-11-14 09:48:09', '2022-02-02 14:15:47');

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
(20, 53, 1, '2022-01-26 07:07:49', '2022-01-26 07:07:49'),
(21, 125, 1, '2022-02-07 02:10:29', '2022-02-07 02:10:29');

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
(3, 'كراسى', 'Chairs', 1, '2021-09-11 21:13:56', '2022-02-02 14:18:44'),
(5, 'الأثاث', 'furniture', 2, '2021-09-11 21:13:56', '2022-02-02 14:19:20'),
(19, 'غرف معيشه', 'Rooms', 4, '2022-01-07 13:23:40', '2022-02-02 14:17:49'),
(21, 'A', 'A', 1, '2022-02-06 01:28:59', '2022-02-06 01:28:59');

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
(1, 'الكويت', 'Kuwait', '4', 'KWT', NULL, 'uploads/countries/images//1631402665824kuwait.png', 1, '2021-09-11 21:24:25', '2021-09-11 21:25:20');

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
(28, '2021_11_25_004705_create_size_guides_table', 6),
(29, '2022_02_01_144346_create_prod_properties_table', 7);

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
(1, 'Safat home the best Products with a high quality', 'صافة هوم افضل المنتجات و الخصومات', 1, '2021-11-17 08:02:40', '2022-02-02 14:13:49'),
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
(72, 'saramerdas', 'safat@gmail.com', '96700033', 1, 5, 1, 'الجزيره', 'جادة جاده واحد شارع محمود محمود مبني رقم 1 طابق رقم 1 شقه رقم 1', '0', NULL, NULL, NULL, '1240983', 'https://demo.MyFatoorah.com/KWT/ie/01072124098341', 1, '33', '2', '2022-02-07 02:10:29', '2022-02-07 02:11:28');

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
(1, 72, 125, 0, 0, 3, '2', '2022-02-07 02:10:29', '2022-02-07 02:10:29');

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
(1, 'الشروط و الأحكام', 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق. إذا كنت تحتاج إلى عدد أكبر من الفقرات يتيح لك مولد النص العربى زيادة عدد الفقرات كما تريد، النص لن يبدو مقسما ولا يحوي أخطاء لغوية، مولد النص العربى مفيد لمصممي المواقع على وجه الخصوص، حيث يحتاج العميل فى كثير من الأحيان أن يطلع على صورة حقيقية لتصميم\r\n الموقع. ومن هنا وجب على المصمم أن يضع نصوصا مؤقتة على التصميم ليظهر للعميل الشكل كاملاً،دور مولد النص العربى أن يوفر على المصمم عناء\r\n  البحث عن نص بديل لا علاقة له بالموضوع الذى يتحدث عنه التصميم فيظهر بشكل لا يليق. هذا النص يمكن أن يتم تركيبه على أي تصميم دون مشكلة فلن يبدو وكأنه نص منسوخ، غير منظم، غير منسق، أو حتى غير مفهوم.\r\n   لأنه مازال نصاً بديلاً ومؤقتاً.', 'Terms and conditions', 'This text is an example of text\r\nthat can be replaced in the same space, this text has been generated\r\nfrom the Arabic text generator, where you can generate such text or many other\r\ntexts in addition to increasing the number of characters generated by the application. If you need\r\na larger number of paragraphs, the Arabic text generator allows you to increase the number of paragraphs as\r\nyou want, the text will not appear divided and does not contain linguistic errors, the Arabic text generator\r\nis useful for web designers in particular, as the client often needs to see a real picture For website design. Hence,\r\nthe designer must put temporary texts on the design to show the customer the complete form, the role of the Arabic text\r\ngenerator is to spare the designer the trouble of searching for an alternative text that has nothing to do with the topic\r\nthe design is talking about, so it appears in an inappropriate way. This text can be installed on any design without\r\nproblem, it will not look like copied text, unorganized, unformatted, or even incomprehensible. Because it is\r\nstill an alternate and temporary text.', '2021-09-11 21:13:56', '2022-02-06 07:54:14'),
(2, 'من نحن', ' يبق أن وجهان مليون التجارية. لكل و بقصف وانتهاءً التبرعات, قد التبرعات ويكيبيديا، أما. تلك جيما عليها جزيرتي ثم, أضف رئيس بتطويق انتصارهم أم. عدم عن فشكّل الأسيوي واعتلاء. لعملة أوروبا إنطلاق عل هذا, عدد مشروط اليابان في. بحث ماشاء طوكيو إذ, بل بأيدي الشرقي دار, بل نقطة أواخر لكل. دنو أن مارد وجهان اوروبا, بها من أسيا مكثّفة سليمان،. ولم كل لمحاكم لبلجيكا،. أم\r\n سابق الأعمال التكاليف بعض, بها تسبب الشمل الثالث، و.\r\n يبق أن وجهان مليون التجارية. لكل و بقصف وانتهاءً التبرعات, قد التبرعات ويكيبيديا، أما. تلك جيما عليها جزيرتي ثم, أضف رئيس بتطويق انتصارهم أم. عدم عن فشكّل الأسيوي واعتلاء. لعملة أوروبا إنطلاق عل هذا, عدد مشروط اليابان في. بحث ماشاء طوكيو إذ, بل بأيدي الشرقي دار, بل نقطة أواخر لكل. دنو أن مارد وجهان اوروبا, بها من أسيا مكثّفة سليمان،. ولم كل لمحاكم لبلجيكا،.\r\n أم سابق الأعمال التكاليف بعض, بها تسبب الشمل الثالث، و.', 'About Us', ' Lorem Ipsum is simply dummy text of the printing and typesetting industry.\r\nLorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s,\r\nwhen an unknown printer took a galley of type and scrambled it to make a type specimen book.\r\nIt has survived not only five centuries, but also the leap into electronic typesetting, remaining\r\nessentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,\r\nand more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum Lorem Ipsum is\r\nsimply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard\r\ndummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\r\n It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially\r\n  unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and\r\n  more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum Lorem Ipsum\r\n  is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the\r\n  industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled\r\n  it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,\r\n  remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing\r\n  Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including\r\n  versions of Lorem Ipsum Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been\r\n  the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled\r\n  it to make a type specimen book. It has survived not only five centuries, but also the leap into\r\n  electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of\r\n  Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker\r\n  including versions of Lorem Ipsum', '2021-09-11 21:13:56', '2021-09-11 21:13:56'),
(4, 'التوصيل', ' هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو\r\nالعديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق. إذا كنت تحتاج إلى عدد أكبر من الفقرات يتيح لك مولد النص العربى زيادة عدد الفقرات كما تريد، النص لن يبدو مقسما ولا يحوي أخطاء لغوية، مولد النص العربى مفيد لمصممي المواقع على وجه الخصوص، حيث يحتاج العميل فى كثير من الأحيان أن يطلع\r\n على صورة حقيقية لتصميم الموقع. ومن هنا وجب على المصمم أن يضع نصوصا مؤقتة على التصميم ليظهر للعميل الشكل كاملاً،دور مولد النص العربى أن يوفر على المصمم عناء\r\n  البحث عن نص بديل لا علاقة له بالموضوع الذى يتحدث عنه التصميم فيظهر بشكل لا يليق. هذا النص يمكن أن يتم تركيبه على أي تصميم دون مشكلة فلن يبدو وكأنه نص منسوخ، غير منظم، غير منسق، أو حتى غير مفهوم.\r\n   لأنه مازال نصاً بديلاً ومؤقتاً. ', 'Delivery', '', '2021-09-11 21:13:56', '2021-09-11 21:13:56');

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
  `quantity` int(11) NOT NULL,
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

INSERT INTO `products` (`id`, `title_en`, `title_ar`, `description_en`, `description_ar`, `appearance`, `featured`, `new`, `price`, `delivery_period`, `img`, `best_selling`, `basic_category_id`, `category_id`, `quantity`, `is_order`, `order_type`, `order_s`, `order_l`, `order_m`, `order_xl`, `created_at`, `updated_at`) VALUES
(103, 'PAMELA BED 160 X 200', 'سرير باميلا 160 × 200', 'PAMELA BED 160 X 200 PAMELA BED 160 X 200 PAMELA BED 160 X 200', 'سرير باميلا 160 × 200 سرير باميلا 160 × 200 سرير باميلا 160 × 200', 1, 0, 1, 100, NULL, 'uploads/products/images/164384120963560077612.jpg', 1, 1, 3, 24, 0, 0, 0, 0, 0, 0, '2022-01-01 11:28:24', '2022-02-03 06:33:29'),
(123, 'ROYALQUEEN BED 160 X 200 CM', 'سرير مع لوح رأسي تيوب مع درج رمادي داكن 200X200', 'ROYALQUEEN BED 160 X 200 CM ROYALQUEEN BED 160 X 200 CM ROYALQUEEN BED 160 X 200 CM', 'سرير مع لوح رأسي تيوب مع درج رمادي داكن 200X200 سرير مع لوح رأسي تيوب مع درج رمادي داكن 200X200 سرير مع لوح رأسي تيوب مع درج رمادي داكن 200X200', 1, 0, 1, 120, NULL, 'uploads/products/images/16438410622777.jpg', 1, 2, 5, 80, 0, 0, 0, 0, 0, 0, '2022-01-07 13:26:22', '2022-02-03 06:31:02'),
(125, 'VEGAS NIGHTSTAND', 'خزانة بجانب السرير فيغاس', 'خزانة بجانب السرير فيغاس خزانة بجانب السرير فيغاس خزانة بجانب السرير فيغاس', 'خزانة بجانب السرير فيغاس خزانة بجانب السرير فيغاس خزانة بجانب السرير فيغاس', 1, 0, 1, 15, NULL, 'uploads/products/images/16441703467746.jpg', 1, 4, 19, 8, 0, 0, 0, 0, 0, 0, '2022-01-08 14:38:32', '2022-02-07 02:10:29');

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

-- --------------------------------------------------------

--
-- Table structure for table `prod_properties`
--

CREATE TABLE `prod_properties` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `prop_name_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prop_value_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prop_name_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prop_value_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `prod_properties`
--

INSERT INTO `prod_properties` (`id`, `prop_name_ar`, `prop_value_ar`, `prop_name_en`, `prop_value_en`, `product_id`, `created_at`, `updated_at`) VALUES
(13, 'نوع الأثاث', 'ســـرير', 'FURNITURE TYPE', 'Bed', 123, '2022-02-03 06:31:02', '2022-02-03 06:31:02'),
(14, 'الطراز', 'حديث', 'BED SIZE', 'Queen', 123, '2022-02-03 06:31:02', '2022-02-03 06:31:02'),
(15, 'الطول (سم)', '200', 'LENGTH (CM)', '200', 123, '2022-02-03 06:31:02', '2022-02-03 06:31:02'),
(16, 'العرض(سم)', '200', 'WIDTH (CM)', '200', 123, '2022-02-03 06:31:02', '2022-02-03 06:31:02'),
(17, 'اللون', 'أحمر', 'Color', 'Red', 103, '2022-02-03 06:33:29', '2022-02-03 06:33:29'),
(18, 'نوع الأثاث', 'ســـرير', 'FURNITURE TYPE', 'Bed', 103, '2022-02-03 06:33:29', '2022-02-03 06:33:29'),
(19, 'المقاس', '200', 'Size', '200', 103, '2022-02-03 06:33:29', '2022-02-03 06:33:29'),
(40, 'اللون', 'خشـــب الجوز', 'Color', 'Walnut', 125, '2022-02-07 02:09:24', '2022-02-07 02:09:24'),
(41, 'الطول (سم)', '49.5', 'LENGTH (CM)', '49.5', 125, '2022-02-07 02:09:24', '2022-02-07 02:09:24'),
(42, 'العرض(سم)', '39.5', 'WIDTH (CM)', '39.5', 125, '2022-02-07 02:09:24', '2022-02-07 02:09:24'),
(43, 'الإرتفاع(سم)', '39.5', 'HEIGHT (CM)', '39.5', 125, '2022-02-07 02:09:24', '2022-02-07 02:09:24'),
(44, 'الطراز', 'حديث', 'MATERIALS', 'Melamine Particle', 125, '2022-02-07 02:09:24', '2022-02-07 02:09:24');

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
(1, 1, 'App\\User'),
(1, 9, 'App\\User');

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
(2, 'uploads/logos/images//1643676194457safat-logo-ar.png', 'uploads/logos/images//1643675597955safat-logo-ar.png', 'uploads/logos/images//16436773689131.jpg', 'https://instagram.com/', 'صافات هوم', 'Safat Home', NULL, NULL, NULL, 'https://instagram.com/', NULL, 'https://instagram.com/', '96700033', NULL, NULL, 'https://instagram.com/', 'https://instagram.com/', '96700033', 'https://instagram.com/', 'uploads/logos/images//1641306237844تشكيلة.jpg', 'uploads/logos/images//1641306521499ففف.jpg', '2021-09-11 21:13:56', '2022-02-02 14:25:15');

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
  `name_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_ar` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `name_ar`, `name_en`, `description_ar`, `description_en`, `img`, `created_at`, `updated_at`) VALUES
(1, 'اقوي عروض الشتاء', 'Winter Offers', 'عروض الشتاء', 'عروض الشتاء', 'uploads/sliders/images/16436764475591.jpg', '2021-09-13 21:59:10', '2022-01-31 22:47:27'),
(2, NULL, NULL, NULL, NULL, 'uploads/sliders/images/16436764286274.jpg', '2021-09-13 21:59:25', '2022-02-07 02:18:45'),
(3, 'Victor Mays', 'Aidan Odom', 'Distinctio Autem co', 'Distinctio Autem co', 'uploads/sliders/images/16436764087143.jpg', '2022-01-31 22:20:22', '2022-01-31 22:46:49'),
(4, 'Steven Mclean', 'Steven Garrison', 'Libero sed et volupt', 'Libero sed et volupt', 'uploads/sliders/images/16436763898392.jpg', '2022-01-31 22:20:43', '2022-01-31 22:46:30');

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
(1, 'Safat', 'safat@gmail.com', NULL, '$2y$10$dE.nwjPPhjzpkftB2KlprOGgRjyiEWkqVP9TNK8rul/WjqPhyZUsm', 'safat2022', '96700033', 1, 1, NULL, '2021-09-11 21:13:55', '2022-02-07 02:11:55'),
(2, 'Sacha Campbell', 'cegefybi@mailinator.com', NULL, '$2y$10$2XwODCSKMYOXR3i4UDgi5uW8bZHJbi.dtgCvqfpf6.0kmTs6rtxzS', 'Aliquam tempore eu ', '5425421', 1, 0, NULL, '2021-10-17 16:53:26', '2021-10-17 16:53:26'),
(3, 'Islam Ramadan', NULL, NULL, '$2y$10$ZcfO5V.mzNIRy871OgjFhOYNgZNZE/SGslK4Ii0vIFVhxzW17mmji', 'Pa$$w0rd!', '0', 1, 0, NULL, '2021-10-23 08:05:06', '2021-10-23 08:54:05'),
(7, 'Islam', 'eslam.iniesta@gmail.com', NULL, '$2y$10$lp5VGWZktT0wSbAnkhOGrugCVt10pDijwjs8MlmkiRsZ8199/BncO', '11111111', '01229078596', 1, 1, NULL, '2021-11-17 09:59:56', '2021-11-17 09:59:56'),
(9, 'Hayes Benjamin', 'xipufa@mailinator.com', NULL, '$2y$10$kxYzaNhr2SxmYmksDGFKDeNFTrWTJZXLxvNd0tQ2zPX4Sl5kLsT5q', '12345678', '0325215412', 1, 1, NULL, '2022-02-06 07:53:25', '2022-02-06 07:53:25'),
(10, 'Islam Ramadan', NULL, NULL, '$2y$10$7rPFrQBSmQRJVMyJhiMqOOj6nM6qvzKXI.mBkyPw6epAwmz4b1dKq', '123456789', '01100618115', 1, 0, NULL, '2022-02-07 02:12:43', '2022-02-07 02:13:01');

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
(32, 57, '2021-12-09 17:34:14', '2022-02-01 11:48:33'),
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
(73, 103, '2022-01-01 18:10:26', '2022-02-06 01:33:36'),
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
(98, 123, '2022-01-07 13:28:47', '2022-02-06 00:11:57'),
(99, 124, '2022-01-08 13:39:15', '2022-01-08 13:39:15'),
(100, 126, '2022-01-08 15:02:47', '2022-01-30 12:35:50'),
(101, 125, '2022-01-08 15:53:28', '2022-02-07 02:09:36'),
(102, 127, '2022-01-08 16:11:08', '2022-01-08 16:11:08'),
(103, 129, '2022-01-08 16:16:54', '2022-01-29 02:44:06'),
(104, 133, '2022-01-08 16:42:22', '2022-01-31 10:55:18'),
(105, 130, '2022-01-08 16:42:39', '2022-01-29 02:41:48'),
(106, 132, '2022-01-08 16:43:58', '2022-01-27 19:16:33'),
(107, 135, '2022-01-08 17:00:37', '2022-02-01 11:40:05'),
(108, 138, '2022-01-09 00:18:44', '2022-02-01 11:42:39'),
(109, 139, '2022-01-09 04:25:57', '2022-02-02 13:20:55'),
(110, 140, '2022-01-09 16:34:49', '2022-01-09 16:34:49'),
(111, 136, '2022-01-09 18:32:17', '2022-02-02 12:56:06'),
(112, 141, '2022-01-10 16:10:38', '2022-01-10 16:16:28'),
(113, 131, '2022-01-10 17:40:07', '2022-01-23 11:56:29'),
(114, 137, '2022-02-01 12:01:59', '2022-02-01 12:01:59');

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
-- Indexes for table `prod_properties`
--
ALTER TABLE `prod_properties`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

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
  ADD UNIQUE KEY `users_phone_unique` (`phone`) USING BTREE;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `best_sellers`
--
ALTER TABLE `best_sellers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- AUTO_INCREMENT for table `prod_colors`
--
ALTER TABLE `prod_colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `prod_heights`
--
ALTER TABLE `prod_heights`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prod_imgs`
--
ALTER TABLE `prod_imgs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=466;

--
-- AUTO_INCREMENT for table `prod_properties`
--
ALTER TABLE `prod_properties`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `prod_sizes`
--
ALTER TABLE `prod_sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `views`
--
ALTER TABLE `views`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `wish_list`
--
ALTER TABLE `wish_list`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
