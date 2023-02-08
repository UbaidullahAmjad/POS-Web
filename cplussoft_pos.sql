-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 07, 2021 at 10:40 PM
-- Server version: 5.7.33-log-cll-lve
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cplussoft_pos`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Cafe', '0', '2021-03-25 10:20:38', NULL),
(2, 'Bakers', '0', '2021-04-02 17:25:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `drafts`
--

CREATE TABLE `drafts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `grand_total` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `products` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `drafts`
--

INSERT INTO `drafts` (`id`, `grand_total`, `products`, `user_id`, `created_at`, `updated_at`) VALUES
(23, '91956', '{\"4\":{\"id\":4,\"name\":\"Pizza\",\"price\":899,\"quantity\":1,\"discount\":\"0\",\"attributes\":[],\"conditions\":[]},\"27\":{\"id\":27,\"name\":\"fairy\",\"price\":50000,\"quantity\":1,\"discount\":\"0\",\"attributes\":[],\"conditions\":[]},\"40\":{\"id\":40,\"name\":\"cake piece\",\"price\":540,\"quantity\":1,\"discount\":\"0\",\"attributes\":[],\"conditions\":[]},\"34\":{\"id\":34,\"name\":\"Big Pizza\",\"price\":5000,\"quantity\":8,\"discount\":\"0\",\"attributes\":[],\"conditions\":[]},\"45\":{\"id\":45,\"name\":\"sweets tofe\",\"price\":550,\"quantity\":1,\"discount\":\"6\",\"attributes\":[],\"conditions\":[]}}', '1', '2021-06-08 13:39:52', NULL),
(26, '1729', '{\"2\":{\"id\":2,\"name\":\"Biscuit\",\"price\":20,\"quantity\":1,\"discount\":\"5\",\"attributes\":[],\"conditions\":[]},\"30\":{\"id\":30,\"name\":\"Alexander Roberts\",\"price\":732,\"quantity\":1,\"discount\":\"0\",\"attributes\":[],\"conditions\":[]},\"37\":{\"id\":37,\"name\":\"ddd\",\"price\":500,\"quantity\":1,\"discount\":\"0\",\"attributes\":[],\"conditions\":[]},\"36\":{\"id\":36,\"name\":\"asdas\",\"price\":331,\"quantity\":1,\"discount\":\"0\",\"attributes\":[],\"conditions\":[]},\"32\":{\"id\":32,\"name\":\"newname\",\"price\":150,\"quantity\":1,\"discount\":\"2\",\"attributes\":[],\"conditions\":[]}}', '1', '2021-06-08 16:28:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` int(20) NOT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expensetype_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `expensetypes`
--

CREATE TABLE `expensetypes` (
  `id` int(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `expensetypes`
--

INSERT INTO `expensetypes` (`id`, `name`, `active`, `created_at`, `updated_at`) VALUES
(12, 'Rents', '0', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `kitchens`
--

CREATE TABLE `kitchens` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_id` int(10) UNSIGNED NOT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `kitchens`
--

INSERT INTO `kitchens` (`id`, `name`, `type_id`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 'kainat', 1, 'cotton|100', '2021-04-01 02:06:30', '2021-04-01 02:06:30'),
(2, 'maida', 2, 'cotton|50', '2021-04-02 18:06:50', '2021-04-02 18:06:50'),
(3, 'hwllp', 2, 'kg|2', '2021-04-02 18:19:41', '2021-04-02 18:19:41'),
(4, 'hwllp', 2, 'kg|sd', '2021-04-02 18:21:17', '2021-04-05 13:35:15'),
(5, 'hwllp', 2, 'kg|2', '2021-04-02 18:22:09', '2021-04-02 18:22:09'),
(6, 'nehellp', 2, 'kg|2', '2021-04-02 18:23:28', '2021-04-02 18:23:28'),
(7, 'maida', 9, 'kg|20', '2021-04-02 18:25:06', '2021-04-02 18:25:06'),
(8, 'Barfi', 10, 'kg|1', '2021-05-22 13:07:29', '2021-05-22 13:07:29'),
(9, 'Gulab jaman', 10, 'kg|1', '2021-05-22 13:08:06', '2021-05-22 13:08:06'),
(14, 'showkii paa', 14, 'kg|g', '2021-06-02 11:30:48', '2021-06-08 11:12:06'),
(15, 'Aidan Forbes', 16, 'pc|972', '2021-06-02 20:04:17', '2021-06-02 20:04:17'),
(16, 'newname', 14, 'pc|10', '2021-06-08 11:12:34', '2021-06-08 11:12:34'),
(17, 'showkat', 11, 'kg|600', '2021-06-08 11:13:03', '2021-06-08 11:13:20');

-- --------------------------------------------------------

--
-- Table structure for table `kitchen_types`
--

CREATE TABLE `kitchen_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `kitchen_types`
--

INSERT INTO `kitchen_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(11, 'Refreshment Kitchen', '2021-05-22 12:44:47', '2021-05-22 12:44:47'),
(12, 'Fast Food Kitchen', '2021-05-22 12:45:16', '2021-05-22 12:45:16');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_03_13_144156_create_permission_tables', 1),
(5, '2021_03_13_145224_create_categories_table', 1),
(6, '2021_03_13_145303_create_products_table', 1),
(7, '2021_03_13_145339_create_sales_table', 1),
(8, '2021_03_13_145625_create_product_sale_table', 1),
(9, '2021_03_13_145706_create_drafts_table', 1),
(10, '2021_03_13_160619_create_expensetypes_table', 1),
(11, '2021_03_13_160638_create_expenses_table', 1),
(51, '2014_10_12_000000_create_users_table', 1),
(52, '2014_10_12_100000_create_password_resets_table', 1),
(53, '2019_08_19_000000_create_failed_jobs_table', 1),
(54, '2021_03_13_144156_create_permission_tables', 1),
(55, '2021_03_13_145224_create_categories_table', 1),
(56, '2021_03_13_145303_create_products_table', 1),
(57, '2021_03_13_145339_create_sales_table', 1),
(58, '2021_03_13_145625_create_product_sale_table', 1),
(59, '2021_03_13_145706_create_drafts_table', 1),
(60, '2021_03_13_160619_create_expensetypes_table', 1),
(61, '2021_03_13_160638_create_expenses_table', 1),
(62, '2021_03_31_074909_create_kitchens_table', 1),
(63, '2021_03_31_075426_create_kitchen_types_table', 1),
(64, '2021_04_01_060215_create_raw_inventories_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(3, 'App\\Models\\User', 4),
(3, 'App\\Models\\User', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) DEFAULT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `barcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` int(11) NOT NULL DEFAULT '0',
  `active` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `quantity`, `category_id`, `barcode`, `discount`, `active`, `created_at`, `updated_at`) VALUES
(2, 'Biscuit', 20, '21', 1, '20125', 5, '1', NULL, '2021-06-08 16:24:25'),
(3, 'Pepsi', 110, '413', 1, '2016200180008', 7, '1', NULL, '2021-06-08 16:24:25'),
(4, 'Pizza', 899, '854', 2, '20125001200013', 0, '1', NULL, '2021-06-08 16:24:25'),
(27, 'fairy', 50000, '19', 2, '435345', 0, '1', NULL, '2021-06-08 16:24:25'),
(29, 'Sybill Shannon', 709, '518', 2, '123456789', 0, '1', NULL, '2021-06-08 16:24:25'),
(30, 'Alexander Roberts', 732, '581', 1, '34', 0, '1', NULL, '2021-06-08 16:24:25'),
(32, 'newname', 150, '43', 1, '435345', 2, '1', NULL, '2021-06-08 16:24:25'),
(34, 'Big Pizza', 5000, '19', 2, '3312345', 0, '1', NULL, '2021-06-08 16:24:25'),
(35, 'Big Cake', 540, '102', 2, '201250012000122', 0, '1', NULL, '2021-06-08 16:24:25'),
(36, 'asdas', 331, '46', 1, '0', 3, '1', NULL, '2021-06-08 16:25:06'),
(37, 'ddd', 500, '60', 1, '552233', 0, '1', NULL, '2021-06-08 16:24:25'),
(38, 'palaks', 20, '64', 1, '435345', 10, '1', NULL, '2021-06-08 16:24:25'),
(39, 'asd', 202, '31', 1, '33213', 0, '1', NULL, '2021-06-08 16:24:25'),
(40, 'cake piece', 540, '53', 2, '4353455', 0, '1', NULL, '2021-06-08 16:24:25'),
(41, 'Chips', 5000, '26', 2, '435345', 0, '1', NULL, '2021-06-08 16:24:25'),
(42, 'Sweets', 323, '35', 2, '435345233', 0, '1', NULL, '2021-06-08 16:24:25'),
(43, 'jubilee', 20, '0', 2, '3332423432', 3, '1', NULL, '2021-06-07 00:44:43'),
(44, 'miro', 1223, '40', 2, '24567876543', 5, '1', NULL, '2021-06-08 12:05:03'),
(45, 'sweets tofe', 550, '87', 2, '4353453', 6, '1', NULL, '2021-06-08 10:36:48'),
(46, 'Boris Flores', 882, '132', 2, '20162', 10, '1', NULL, '2021-06-08 14:14:41'),
(47, 'Coca cola', 20, '93', 1, '20101', 0, '1', NULL, '2021-06-08 16:24:25'),
(48, 'fairyss', 50, '98', 1, '435345', 12, '1', NULL, '2021-06-08 12:05:03'),
(51, 'Bernard Kramer', 277, '381', 1, '0', 26, '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_sale`
--

CREATE TABLE `product_sale` (
  `id` int(11) NOT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Return_quantity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `sale_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `unit_price` int(11) NOT NULL,
  `discount` int(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `product_sale`
--

INSERT INTO `product_sale` (`id`, `quantity`, `Return_quantity`, `sale_id`, `product_id`, `unit_price`, `discount`, `created_at`, `updated_at`) VALUES
(464, '1', '1', 149, 2, 20, 5, NULL, NULL),
(465, '1', '1', 149, 3, 110, 7, NULL, NULL),
(466, '1', '0', 149, 32, 150, 2, NULL, NULL),
(467, '1', '0', 149, 33, 100, 6, NULL, NULL),
(468, '1', '0', 150, 4, 899, 0, NULL, NULL),
(469, '1', '0', 150, 27, 50000, 0, NULL, NULL),
(470, '1', '0', 150, 29, 709, 0, NULL, NULL),
(471, '1', '0', 150, 40, 540, 0, NULL, NULL),
(472, '1', '0', 150, 35, 540, 0, NULL, NULL),
(473, '1', '0', 150, 34, 5000, 0, NULL, NULL),
(474, '1', '0', 151, 47, 100, 0, NULL, NULL),
(475, '1', '0', 151, 2, 120, 5, NULL, NULL),
(476, '1', '0', 152, 2, 20, 5, NULL, NULL),
(477, '1', '0', 152, 3, 110, 7, NULL, NULL),
(478, '1', '0', 152, 30, 732, 0, NULL, NULL),
(479, '1', '0', 152, 33, 100, 6, NULL, NULL),
(480, '1', '0', 152, 32, 150, 2, NULL, NULL),
(481, '1', '0', 153, 2, 20, 5, NULL, NULL),
(482, '1', '0', 153, 3, 110, 7, NULL, NULL),
(483, '1', '0', 153, 30, 732, 0, NULL, NULL),
(484, '1', '0', 153, 36, 331, 0, NULL, NULL),
(485, '2', '0', 153, 32, 150, 2, NULL, NULL),
(486, '1', '0', 154, 27, 50000, 0, NULL, NULL),
(487, '1', '0', 154, 29, 709, 0, NULL, NULL),
(488, '1', '0', 154, 40, 540, 0, NULL, NULL),
(489, '1', '0', 154, 35, 540, 0, NULL, NULL),
(490, '1', '0', 154, 34, 5000, 0, NULL, NULL),
(491, '2', '0', 154, 4, 899, 0, NULL, NULL),
(492, '1', '0', 154, 2, 20, 5, NULL, NULL),
(493, '1', '0', 154, 3, 110, 7, NULL, NULL),
(494, '1', '0', 154, 30, 732, 0, NULL, NULL),
(495, '1', '0', 154, 36, 331, 0, NULL, NULL),
(496, '1', '0', 154, 33, 100, 6, NULL, NULL),
(497, '1', '0', 154, 32, 150, 2, NULL, NULL),
(498, '1', '0', 155, 3, 110, 7, NULL, NULL),
(499, '1', '0', 156, 3, 110, 7, NULL, NULL),
(500, '3', '0', 157, 3, 110, 7, NULL, NULL),
(501, '1', '0', 158, 2, 20, 5, NULL, NULL),
(502, '1', '0', 158, 3, 110, 7, NULL, NULL),
(503, '1', '0', 158, 30, 732, 0, NULL, NULL),
(504, '1', '0', 158, 36, 331, 0, NULL, NULL),
(505, '1', '0', 158, 33, 100, 6, NULL, NULL),
(506, '1', '0', 158, 32, 150, 2, NULL, NULL),
(507, '1', '1', 159, 2, 20, 5, NULL, NULL),
(508, '1', '1', 159, 3, 110, 7, NULL, NULL),
(509, '1', '1', 159, 30, 732, 0, NULL, NULL),
(510, '1', '0', 159, 36, 331, 0, NULL, NULL),
(511, '1', '0', 159, 33, 100, 6, NULL, NULL),
(512, '1', '0', 159, 32, 150, 2, NULL, NULL),
(513, '2', '0', 159, 39, 202, 0, NULL, NULL),
(514, '2', '0', 159, 38, 20, 10, NULL, NULL),
(515, '2', '0', 159, 37, 500, 0, NULL, NULL),
(516, '1', '0', 159, 4, 899, 0, NULL, NULL),
(517, '1', '0', 159, 27, 50000, 0, NULL, NULL),
(518, '1', '0', 159, 29, 709, 0, NULL, NULL),
(519, '1', '0', 159, 40, 540, 0, NULL, NULL),
(520, '1', '0', 159, 35, 540, 0, NULL, NULL),
(521, '1', '0', 159, 34, 5000, 0, NULL, NULL),
(522, '1', '0', 159, 41, 5000, 0, NULL, NULL),
(523, '1', '0', 159, 42, 323, 0, NULL, NULL),
(524, '1', '0', 159, 46, 882, 10, NULL, NULL),
(525, '1', '0', 159, 45, 550, 6, NULL, NULL),
(526, '1', '0', 159, 44, 1223, 5, NULL, NULL),
(527, '4', '3', 160, 4, 899, 0, NULL, NULL),
(528, '4', '3', 160, 27, 50000, 0, NULL, NULL),
(529, '4', '2', 160, 29, 709, 0, NULL, NULL),
(530, '1', '0', 161, 34, 5000, 0, NULL, NULL),
(531, '1', '0', 161, 46, 882, 10, NULL, NULL),
(532, '2', '0', 161, 35, 540, 0, NULL, NULL),
(533, '1', '0', 161, 44, 1223, 5, NULL, NULL),
(534, '1', '0', 161, 30, 732, 0, NULL, NULL),
(535, '1', '0', 161, 36, 331, 0, NULL, NULL),
(536, '1', '0', 161, 33, 100, 6, NULL, NULL),
(537, '1', '0', 161, 37, 500, 0, NULL, NULL),
(538, '1', '0', 161, 38, 20, 10, NULL, NULL),
(539, '1', '0', 161, 39, 202, 0, NULL, NULL),
(540, '1', '0', 161, 40, 540, 0, NULL, NULL),
(541, '1', '0', 161, 41, 5000, 0, NULL, NULL),
(542, '2', '0', 161, 48, 50, 12, NULL, NULL),
(543, '3', '0', 161, 32, 150, 2, NULL, NULL),
(544, '2', '0', 161, 3, 110, 7, NULL, NULL),
(545, '2', '0', 161, 2, 20, 5, NULL, NULL),
(546, '5', '0', 161, 27, 50000, 0, NULL, NULL),
(547, '2', '0', 161, 4, 899, 0, NULL, NULL),
(548, '2', '0', 161, 29, 709, 0, NULL, NULL),
(549, '1', '0', 163, 2, 20, 5, NULL, NULL),
(550, '1', '0', 163, 3, 110, 7, NULL, NULL),
(551, '1', '0', 163, 30, 732, 0, NULL, NULL),
(552, '1', '0', 163, 36, 331, 0, NULL, NULL),
(553, '1', '0', 163, 33, 100, 6, NULL, NULL),
(554, '1', '0', 163, 32, 150, 2, NULL, NULL),
(555, '1', '0', 164, 4, 899, 0, NULL, NULL),
(556, '1', '0', 164, 27, 50000, 0, NULL, NULL),
(557, '1', '0', 164, 29, 709, 0, NULL, NULL),
(558, '1', '0', 164, 40, 540, 0, NULL, NULL),
(559, '1', '0', 164, 35, 540, 0, NULL, NULL),
(560, '1', '0', 164, 34, 5000, 0, NULL, NULL),
(561, '1', '0', 164, 41, 5000, 0, NULL, NULL),
(562, '1', '0', 164, 42, 323, 0, NULL, NULL),
(563, '1', '0', 165, 4, 899, 0, NULL, NULL),
(564, '1', '0', 165, 27, 50000, 0, NULL, NULL),
(565, '1', '0', 165, 29, 709, 0, NULL, NULL),
(566, '1', '0', 165, 40, 540, 0, NULL, NULL),
(567, '1', '0', 165, 35, 540, 0, NULL, NULL),
(568, '1', '0', 165, 34, 5000, 0, NULL, NULL),
(569, '1', '0', 165, 41, 5000, 0, NULL, NULL),
(570, '1', '0', 165, 42, 323, 0, NULL, NULL),
(571, '1', '0', 166, 2, 20, 5, NULL, NULL),
(572, '1', '0', 166, 3, 110, 7, NULL, NULL),
(573, '1', '0', 166, 30, 732, 0, NULL, NULL),
(574, '1', '0', 166, 36, 331, 0, NULL, NULL),
(575, '1', '0', 166, 33, 100, 6, NULL, NULL),
(576, '1', '0', 166, 32, 150, 2, NULL, NULL),
(577, '1', '0', 166, 37, 500, 0, NULL, NULL),
(578, '1', '0', 166, 38, 20, 10, NULL, NULL),
(579, '1', '0', 166, 39, 202, 0, NULL, NULL),
(580, '1', '0', 167, 30, 732, 0, NULL, NULL),
(581, '1', '0', 167, 2, 20, 5, NULL, NULL),
(582, '1', '0', 167, 32, 150, 2, NULL, NULL),
(583, '1', '0', 167, 33, 100, 6, NULL, NULL),
(584, '1', '0', 167, 36, 331, 0, NULL, NULL),
(585, '1', '0', 167, 39, 202, 0, NULL, NULL),
(586, '2', '0', 167, 3, 110, 7, NULL, NULL),
(587, '1', '0', 167, 38, 20, 10, NULL, NULL),
(588, '1', '0', 168, 2, 20, 5, NULL, NULL),
(589, '1', '0', 168, 3, 110, 7, NULL, NULL),
(590, '1', '0', 168, 30, 732, 0, NULL, NULL),
(591, '1', '0', 168, 36, 331, 0, NULL, NULL),
(592, '1', '0', 168, 33, 100, 6, NULL, NULL),
(593, '1', '0', 168, 32, 150, 2, NULL, NULL),
(594, '1', '0', 169, 2, 20, 5, NULL, NULL),
(595, '1', '0', 169, 30, 732, 0, NULL, NULL),
(596, '1', '0', 169, 33, 100, 6, NULL, NULL),
(597, '1', '0', 169, 37, 500, 0, NULL, NULL),
(598, '1', '0', 169, 38, 20, 10, NULL, NULL),
(599, '1', '0', 170, 2, 20, 5, NULL, NULL),
(600, '1', '0', 170, 30, 732, 0, NULL, NULL),
(601, '1', '1', 170, 32, 150, 2, NULL, NULL),
(602, '2', '2', 170, 36, 331, 0, NULL, NULL),
(603, '2', '0', 170, 33, 100, 6, NULL, NULL),
(604, '1', '0', 171, 4, 899, 0, NULL, NULL),
(605, '1', '0', 171, 27, 50000, 0, NULL, NULL),
(606, '1', '0', 171, 29, 709, 0, NULL, NULL),
(607, '1', '0', 171, 40, 540, 0, NULL, NULL),
(608, '1', '0', 171, 35, 540, 0, NULL, NULL),
(609, '1', '0', 171, 34, 5000, 0, NULL, NULL),
(610, '1', '0', 171, 41, 5000, 0, NULL, NULL),
(611, '1', '0', 171, 42, 323, 0, NULL, NULL),
(612, '1', '0', 172, 3, 110, 7, NULL, NULL),
(613, '1', '0', 172, 2, 20, 5, NULL, NULL),
(614, '1', '0', 172, 30, 732, 0, NULL, NULL),
(615, '1', '0', 173, 29, 709, 0, NULL, NULL),
(616, '2', '0', 173, 27, 50000, 0, NULL, NULL),
(617, '6', '0', 173, 40, 540, 0, NULL, NULL),
(618, '2', '0', 174, 47, 100, 0, NULL, NULL),
(619, '2', '0', 174, 46, 180, 10, NULL, NULL),
(620, '2', '0', 174, 2, 120, 5, NULL, NULL),
(621, '1', '0', 175, 4, 899, 0, NULL, NULL),
(622, '2', '0', 175, 29, 709, 0, NULL, NULL),
(623, '1', '0', 175, 40, 540, 0, NULL, NULL),
(624, '1', '0', 175, 34, 5000, 0, NULL, NULL),
(625, '2', '0', 175, 27, 50000, 0, NULL, NULL),
(626, '1', '0', 176, 2, 20, 5, NULL, NULL),
(627, '1', '0', 176, 3, 110, 7, NULL, NULL),
(628, '1', '0', 176, 30, 732, 0, NULL, NULL),
(629, '1', '0', 176, 37, 500, 0, NULL, NULL),
(630, '1', '0', 176, 36, 331, 0, NULL, NULL),
(631, '1', '0', 176, 32, 150, 2, NULL, NULL),
(632, '1', '0', 176, 47, 20, 0, NULL, NULL),
(633, '1', '0', 176, 39, 202, 0, NULL, NULL),
(634, '1', '0', 176, 38, 20, 10, NULL, NULL),
(635, '1', '0', 177, 2, 20, 5, NULL, NULL),
(636, '1', '0', 177, 3, 110, 7, NULL, NULL),
(637, '1', '0', 177, 30, 732, 0, NULL, NULL),
(638, '1', '0', 177, 37, 500, 0, NULL, NULL),
(639, '1', '0', 177, 36, 331, 0, NULL, NULL),
(640, '1', '0', 177, 32, 150, 2, NULL, NULL),
(641, '1', '0', 177, 38, 20, 10, NULL, NULL),
(642, '1', '0', 177, 39, 202, 0, NULL, NULL),
(643, '1', '0', 177, 47, 20, 0, NULL, NULL),
(644, '1', '0', 177, 4, 899, 0, NULL, NULL),
(645, '1', '0', 177, 27, 50000, 0, NULL, NULL),
(646, '1', '0', 177, 29, 709, 0, NULL, NULL),
(647, '1', '0', 177, 40, 540, 0, NULL, NULL),
(648, '1', '0', 177, 35, 540, 0, NULL, NULL),
(649, '1', '0', 177, 34, 5000, 0, NULL, NULL),
(650, '1', '0', 177, 41, 5000, 0, NULL, NULL),
(651, '1', '0', 177, 42, 323, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `raw_inventories`
--

CREATE TABLE `raw_inventories` (
  `id` int(10) UNSIGNED NOT NULL,
  `item` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `raw_inventories`
--

INSERT INTO `raw_inventories` (`id`, `item`, `quantity`, `created_at`, `updated_at`) VALUES
(2, 'Optio ut sapiente s', 'cotton|235', '2021-06-01 19:18:11', '2021-06-01 19:18:11'),
(4, 'Nesciunt quo vitae', 'cotton|118', '2021-06-07 11:44:58', '2021-06-07 11:44:58'),
(5, 'Deserunt veniam mag', 'kg|788', '2021-06-07 11:45:07', '2021-06-08 12:15:38'),
(6, 'asdasdas', 'kg|100', '2021-06-08 11:13:45', '2021-06-08 16:26:29');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'SuperAdmin', 'web', NULL, NULL),
(2, 'Inventory', 'web', NULL, NULL),
(3, 'Cashier', 'web', '2021-06-01 17:10:25', '2021-06-01 17:10:25');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(20) NOT NULL,
  `sale_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `grand_total` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `receive` int(20) NOT NULL,
  `change` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `return_amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `return_date` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `sale_id`, `grand_total`, `receive`, `change`, `user_id`, `return_amount`, `return_date`, `created_at`, `updated_at`) VALUES
(149, 'Arooma-149', '362.3', 500, '137.7', 1, '121.3', '2021-06-07 06:52:54', '2021-06-07 13:48:30', '2021-06-07 13:52:54'),
(150, 'Arooma-150', '57688', 58000, '312', 1, '0', NULL, '2021-06-07 13:55:55', '2021-06-07 13:55:55'),
(151, 'Arooma-151', '214', 214, '0', 1, '0', NULL, '2021-05-07 16:50:34', '2021-05-07 16:50:34'),
(152, 'Arooma-152', '1094.3', 2000, '905.7', 3, '0', NULL, '2021-06-07 18:05:54', '2021-06-07 18:05:54'),
(153, 'Arooma-153', '1478.3', 1500, '21.7', 1, '0', NULL, '2021-06-07 19:02:44', '2021-06-07 19:02:44'),
(154, 'Arooma-154', '60012.3', 65000, '4987.7', 1, '0', NULL, '2021-06-07 19:15:09', '2021-06-07 19:15:09'),
(155, 'Arooma-155', '102.3', 105, '2.7', 1, '0', NULL, '2021-06-07 21:31:12', '2021-06-07 21:31:12'),
(156, 'Arooma-156', '102.3', 105, '2.7', 1, '0', NULL, '2021-06-07 21:32:50', '2021-06-07 21:32:50'),
(157, 'Arooma-157', '306.9', 310, '3.1', 1, '0', NULL, '2021-06-07 22:08:15', '2021-06-07 22:08:15'),
(158, 'Arooma-158', '1425.3', 1500, '74.7', 1, '0', NULL, '2021-06-07 22:18:25', '2021-06-07 22:18:25'),
(159, 'Arooma-159', '68348.95', 70000, '1651.05', 1, '853.3', '2021-06-08 04:28:31', '2021-06-08 10:36:48', '2021-06-08 11:28:31'),
(160, 'Arooma-160', '206432', 207000, '568', 1, '154115', '2021-06-08 04:25:19', '2021-06-08 11:20:01', '2021-06-08 11:25:19'),
(161, 'Arooma-161', '269440.25', 270000, '559.75', 1, '0', NULL, '2021-06-08 12:05:03', '2021-06-08 12:05:03'),
(162, 'Arooma-162', '0', 237, '237', 1, '0', NULL, '2021-06-08 12:20:08', '2021-06-08 12:20:08'),
(163, 'Arooma-163', '1425.3', 454535, '453109.7', 1, '0', NULL, '2021-06-08 12:35:22', '2021-06-08 12:35:22'),
(164, 'Arooma-164', '63011', 65000, '1989', 1, '0', NULL, '2021-06-08 12:37:25', '2021-06-08 12:37:25'),
(165, 'Arooma-165', '63011', 63500, '489', 1, '0', NULL, '2021-06-08 12:37:53', '2021-06-08 12:37:53'),
(166, 'Arooma-166', '2145.3', 2500, '354.7', 1, '0', NULL, '2021-06-08 12:38:36', '2021-06-08 12:38:36'),
(167, 'Arooma-167', '1747.6', 1780, '32.4', 1, '0', NULL, '2021-06-08 12:40:36', '2021-06-08 12:40:36'),
(168, 'Arooma-168', '1425.3', 1500, '74.7', 1, '0', NULL, '2021-06-08 12:54:04', '2021-06-08 12:54:04'),
(169, 'Arooma-169', '1363', 1400, '37', 1, '0', NULL, '2021-06-08 12:59:03', '2021-06-08 12:59:03'),
(170, 'Arooma-170', '1748', 1800, '52', 3, '809', '2021-06-08 06:05:15', '2021-06-08 13:00:39', '2021-06-08 13:05:15'),
(171, 'Arooma-171', '63011', 64000, '989', 1, '0', NULL, '2021-06-08 13:14:36', '2021-06-08 13:14:36'),
(172, 'Arooma-172', '853.3', 75500, '74646.7', 1, '0', NULL, '2021-06-08 13:43:16', '2021-06-08 13:43:16'),
(173, 'Arooma-173', '103949', 5454654, '5350705', 1, '0', NULL, '2021-06-08 13:47:14', '2021-06-08 13:47:14'),
(174, 'Arooma-174', '752', 1000, '248', 1, '0', NULL, '2021-06-08 14:14:41', '2021-06-08 14:14:41'),
(175, 'Arooma-175', '107857', 110000, '2143', 1, '0', NULL, '2021-06-08 14:31:38', '2021-06-08 14:31:38'),
(176, 'Arooma-176', '2071.3', 2100, '28.7', 1, '0', NULL, '2021-06-08 14:32:20', '2021-06-08 14:32:20'),
(177, 'Arooma-177', '65082.3', 66000, '917.7', 1, '0', NULL, '2021-06-08 16:24:25', '2021-06-08 16:24:25');

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `id` int(11) NOT NULL,
  `username` int(11) DEFAULT NULL,
  `email` int(11) DEFAULT NULL,
  `password` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'cplussoft', 'cplusoft@gmail.com', NULL, '$2y$10$8rG0c7JKy4udF5P4wJ.w8uNl2bG/VYW9mTmZG4ElB53tZGWN6GUUC', '', NULL, '2021-04-01 15:59:04'),
(2, 'Inventory', 'inventory@gmail.com', NULL, '$2y$10$wHkPz6p6qV6yBC4snuUCcupeOeBQsY5tI63isYvWEF5jXPvHBhckm', NULL, '2021-05-21 07:54:07', '2021-06-03 12:01:12'),
(3, 'Cashier', 'cashier@gmail.com', NULL, '$2y$10$mhwKpXIG5FCglF1ZD6QohuUhu/DZ7aqnsHzDcmW8ZkvqQ91WwMDm2', NULL, '2021-05-21 07:54:28', '2021-06-03 12:00:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `drafts`
--
ALTER TABLE `drafts`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expenses_expensetype_id_foreign` (`expensetype_id`) USING BTREE,
  ADD KEY `expenses_user_id_foreign` (`user_id`) USING BTREE;

--
-- Indexes for table `expensetypes`
--
ALTER TABLE `expensetypes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kitchens`
--
ALTER TABLE `kitchens`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `kitchen_types`
--
ALTER TABLE `kitchen_types`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`(191)) USING BTREE;

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `products_category_id_foreign` (`category_id`) USING BTREE;

--
-- Indexes for table `product_sale`
--
ALTER TABLE `product_sale`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `raw_inventories`
--
ALTER TABLE `raw_inventories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `drafts`
--
ALTER TABLE `drafts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expensetypes`
--
ALTER TABLE `expensetypes`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `kitchens`
--
ALTER TABLE `kitchens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `kitchen_types`
--
ALTER TABLE `kitchen_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `product_sale`
--
ALTER TABLE `product_sale`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=652;

--
-- AUTO_INCREMENT for table `raw_inventories`
--
ALTER TABLE `raw_inventories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;

--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
