-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 16, 2024 at 04:22 PM
-- Server version: 8.0.30
-- PHP Version: 8.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `traveldb`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('spatie.permission.cache', 'a:3:{s:5:\"alias\";a:4:{s:1:\"a\";s:2:\"id\";s:1:\"b\";s:4:\"name\";s:1:\"c\";s:10:\"guard_name\";s:1:\"r\";s:5:\"roles\";}s:11:\"permissions\";a:6:{i:0;a:3:{s:1:\"a\";i:1;s:1:\"b\";s:17:\"manage categories\";s:1:\"c\";s:3:\"web\";}i:1;a:3:{s:1:\"a\";i:2;s:1:\"b\";s:15:\"manage packages\";s:1:\"c\";s:3:\"web\";}i:2;a:3:{s:1:\"a\";i:3;s:1:\"b\";s:19:\"manage transactions\";s:1:\"c\";s:3:\"web\";}i:3;a:3:{s:1:\"a\";i:4;s:1:\"b\";s:20:\"manage package banks\";s:1:\"c\";s:3:\"web\";}i:4;a:4:{s:1:\"a\";i:5;s:1:\"b\";s:16:\"checkout package\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:5;a:4:{s:1:\"a\";i:6;s:1:\"b\";s:11:\"view orders\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}}s:5:\"roles\";a:1:{i:0;a:3:{s:1:\"a\";i:1;s:1:\"b\";s:8:\"customer\";s:1:\"c\";s:3:\"web\";}}}', 1723826385);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `icon`, `slug`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'beaches', 'icons/7qlVUSOTepgY2fgKVXJ0wph2lPINoo1eJjVteW3r.png', 'beaches', NULL, '2024-07-15 10:18:55', '2024-07-15 12:02:08'),
(2, 'mountain', 'icons/VJ4QuPSMybUwZM9seC1cw0HYYOe65bfCEKqfig3v.png', 'mountain', '2024-07-15 10:59:17', '2024-07-15 10:33:29', '2024-07-15 10:59:17'),
(3, 'Historical', 'icons/jPR3jQXYglf1901nrUAKz9Mb5gRxLHZrzDe5qXn5.png', 'historical', NULL, '2024-07-15 10:36:41', '2024-07-16 09:30:34'),
(4, 'Camps', 'icons/tMR2O06umqYODCStZyzIePHwaBtOD5oeNwT99Kzm.png', 'camps', NULL, '2024-07-16 09:31:09', '2024-07-16 09:31:09'),
(5, 'Mountain', 'icons/kI7x8GWZj3DsUdr88RISZnRqAPOZmf4XSMpyVLyp.png', 'mountain', NULL, '2024-07-16 09:31:46', '2024-07-16 09:31:46');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_07_07_162852_create_permission_tables', 1),
(5, '2024_07_07_171410_create_categories_table', 1),
(6, '2024_07_07_171706_create_package_banks_table', 1),
(7, '2024_07_07_171724_create_package_tours_table', 1),
(8, '2024_07_07_171744_create_package_photos_table', 1),
(9, '2024_07_07_171803_create_package_bookings_table', 1),
(10, '2024_07_18_172830_add_soft_deletes_to_package_photos_table', 2),
(11, '2024_07_19_174029_add_link_to_package_tours_table', 3),
(12, '2024_07_19_175153_add_link_to_package_tours_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(2, 'App\\Models\\User', 1),
(1, 'App\\Models\\User', 2),
(1, 'App\\Models\\User', 3),
(1, 'App\\Models\\User', 4),
(1, 'App\\Models\\User', 5);

-- --------------------------------------------------------

--
-- Table structure for table `package_banks`
--

CREATE TABLE `package_banks` (
  `id` bigint UNSIGNED NOT NULL,
  `bank_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_account_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_account_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `package_banks`
--

INSERT INTO `package_banks` (`id`, `bank_name`, `bank_account_name`, `bank_account_number`, `logo`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Bank Central Asia', 'Hary Saputra', '5167241', 'logos/DwfgPoTVj9dIno58T0Dad62JKUsUSF0mChpYpR0w.png', NULL, '2024-07-30 06:45:11', '2024-07-30 06:45:11'),
(2, 'Bank Mandiri Indonesia', 'Hary Saputra', '815234561', 'logos/palRzT3pHeptAQrpSKZHdebLL9qlYaRFmqJOzwSI.png', NULL, '2024-07-30 06:46:46', '2024-07-30 06:46:46');

-- --------------------------------------------------------

--
-- Table structure for table `package_bookings`
--

CREATE TABLE `package_bookings` (
  `id` bigint UNSIGNED NOT NULL,
  `package_bank_id` bigint UNSIGNED NOT NULL,
  `package_tour_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `quantity` bigint UNSIGNED NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `total_amount` bigint UNSIGNED NOT NULL,
  `is_paid` tinyint(1) NOT NULL,
  `proof` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_total` bigint UNSIGNED NOT NULL,
  `insurance` bigint UNSIGNED NOT NULL,
  `tax` bigint UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `package_bookings`
--

INSERT INTO `package_bookings` (`id`, `package_bank_id`, `package_tour_id`, `user_id`, `quantity`, `start_date`, `end_date`, `total_amount`, `is_paid`, `proof`, `sub_total`, `insurance`, `tax`, `deleted_at`, `created_at`, `updated_at`) VALUES
(2, 2, 1, 3, 4, '2024-09-19', '2024-09-28', 12200000, 1, 'proofs/A4IM1dOpgfOjtK3vs2pUQlqwYPqlDBUuvYXvifQD.jpg', 10000000, 1200000, 1000000, NULL, '2024-07-30 07:11:09', '2024-08-02 10:06:37'),
(3, 1, 1, 3, 2, '2024-09-18', '2024-09-27', 6100000, 0, 'proofs/bog9ERE32KmtIBHbJdO1pTxn5rDBHD9PcBna2WpY.jpg', 5000000, 600000, 500000, NULL, '2024-07-31 09:56:38', '2024-07-31 09:57:04'),
(4, 2, 1, 3, 6, '2024-09-27', '2024-10-06', 18300000, 0, 'xx.png', 15000000, 1800000, 1500000, NULL, '2024-08-01 11:42:24', '2024-08-01 11:42:24'),
(5, 2, 1, 3, 8, '2024-08-06', '2024-08-15', 24400000, 0, 'xx.png', 20000000, 2400000, 2000000, NULL, '2024-08-01 11:57:19', '2024-08-01 11:57:19'),
(6, 2, 1, 3, 8, '2024-08-20', '2024-08-29', 24400000, 0, 'xx.png', 20000000, 2400000, 2000000, NULL, '2024-08-01 12:02:22', '2024-08-01 12:02:22'),
(7, 1, 1, 3, 5, '2024-08-19', '2024-08-28', 15250000, 0, 'xx.png', 12500000, 1500000, 1250000, NULL, '2024-08-01 12:32:54', '2024-08-01 12:33:04'),
(8, 2, 1, 3, 10, '2024-08-12', '2024-08-21', 30500000, 0, 'proofs/6HXejh5kBCSCc1pGB7Zxfz106waRzo8d2XcsG3Uj.jpg', 25000000, 3000000, 2500000, NULL, '2024-08-01 12:34:49', '2024-08-01 12:35:16'),
(9, 2, 1, 3, 3, '2024-08-29', '2024-09-07', 9150000, 0, 'xx.png', 7500000, 900000, 750000, NULL, '2024-08-15 09:44:43', '2024-08-15 09:44:43'),
(10, 2, 1, 3, 3, '2024-08-27', '2024-09-05', 9150000, 0, 'xx.png', 7500000, 900000, 750000, NULL, '2024-08-15 09:45:40', '2024-08-15 09:45:40');

-- --------------------------------------------------------

--
-- Table structure for table `package_photos`
--

CREATE TABLE `package_photos` (
  `id` bigint UNSIGNED NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `package_tour_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `package_photos`
--

INSERT INTO `package_photos` (`id`, `photo`, `package_tour_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'package_photos/2024/07/17/r7roey2fEjyvn1R4frC791MDIj0AuSg1RvM99d9R.jpg', 1, '2024-07-17 10:04:18', '2024-07-17 10:04:18', NULL),
(2, 'package_photos/2024/07/17/SktGYDx7weoHoYJfaGgnq7TwYsVEJG8MoXR7QbIE.jpg', 1, '2024-07-17 10:04:18', '2024-07-17 10:04:18', NULL),
(3, 'package_photos/2024/07/17/OaaumQnXJIT7DWDzq401drTR6NA6unMBGS8TEOXK.jpg', 1, '2024-07-17 10:04:18', '2024-07-17 10:04:18', NULL),
(4, 'package_photos/2024/07/18/fWMVwgnnvdYGgyKkFUMauM7GS0d3rl6lKpHt8ScF.jpg', 2, '2024-07-18 10:57:08', '2024-07-18 10:57:08', NULL),
(5, 'package_photos/2024/07/18/9ZCpIiHOGWFuFwY82smfaMWbiBoA4qNsjgYuoxeh.jpg', 2, '2024-07-18 10:57:08', '2024-07-18 10:57:08', NULL),
(6, 'package_photos/2024/07/18/X1KLEDTMEEQzlUXOtOdw07speDGDZ7CjhFy8oCWF.jpg', 2, '2024-07-18 10:57:08', '2024-07-18 10:57:08', NULL),
(7, 'package_photos/2024/07/19/KYBQm3l1md3At1Hhf8UH2BMB5nmF1zHUKjQ7TNKW.jpg', 4, '2024-07-19 11:28:38', '2024-07-19 11:28:38', NULL),
(8, 'package_photos/2024/07/19/HKueACRN7jJZ0Mo3HIDjmVy1EFGmWX5eQwM9nUus.jpg', 4, '2024-07-19 11:28:38', '2024-07-19 11:28:38', NULL),
(9, 'package_photos/2024/07/19/fxuAZblURrajHe8hcFc9q1nmOuS0l6Idd84HZDVA.jpg', 4, '2024-07-19 11:28:38', '2024-07-19 11:28:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `package_tours`
--

CREATE TABLE `package_tours` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` bigint UNSIGNED NOT NULL,
  `days` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `package_tours`
--

INSERT INTO `package_tours` (`id`, `name`, `slug`, `thumbnail`, `about`, `location`, `price`, `days`, `category_id`, `deleted_at`, `created_at`, `updated_at`, `link`) VALUES
(1, 'Nusa Penida', 'nusa-penida', 'thumbnails/2024/07/17/qnv92uwdtLIqAvJld65T8FuDQw8ujnshRG9hzKFD.jpg', 'dfgnhgrert erwhysfsgjh', 'Bali, Indonesia.', 2500000, 10, 1, NULL, '2024-07-17 10:04:18', '2024-07-19 12:47:00', 'https://www.youtube.com/embed/oZ3yC4i589M?si=7tXUWLfo7l7IbJV9&amp;start=7'),
(2, 'KJGHFHGJ', 'kjghfhgj', 'thumbnails/2024/07/18/XqRVvsglpR0A0u4fgYWnixXpbEPhF1OQfssfhSOw.jpg', 'KHJGFTDFYGUHIJ TDYUIO YTRTFYGU', 'CGFD', 3500000, 5, 3, '2024-07-19 10:29:33', '2024-07-18 10:57:08', '2024-07-19 10:29:33', ''),
(4, 'hdsjks', 'hdsjks', 'thumbnails/2024/07/19/mz3m5NwU9uDBgcGOPpIFUrlDAeyCEHAU9EW1nTLX.jpg', 'dfdsd vdfd erg jhgafgh', 'brazil', 45000000, 20, 3, '2024-07-19 12:45:26', '2024-07-19 11:28:38', '2024-07-19 12:45:26', 'https://www.youtube.com/embed/NcLvfuVVjFY?si=Xslg8D77Xxm3WfLY');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('harysaputra2703@gmail.com', '$2y$12$hGccKbLGXVFxXwsDpdKh/ulHvflmoHLYp1NoOmnWaniAppyJHid1C', '2024-07-11 11:28:05');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'manage categories', 'web', '2024-07-08 11:25:18', '2024-07-08 11:25:18'),
(2, 'manage packages', 'web', '2024-07-08 11:25:18', '2024-07-08 11:25:18'),
(3, 'manage transactions', 'web', '2024-07-08 11:25:18', '2024-07-08 11:25:18'),
(4, 'manage package banks', 'web', '2024-07-08 11:25:18', '2024-07-08 11:25:18'),
(5, 'checkout package', 'web', '2024-07-08 11:25:18', '2024-07-08 11:25:18'),
(6, 'view orders', 'web', '2024-07-08 11:25:18', '2024-07-08 11:25:18');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'customer', 'web', '2024-07-08 11:25:18', '2024-07-08 11:25:18'),
(2, 'Super_Admin', 'web', '2024-07-08 11:25:18', '2024-07-08 11:25:18');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(5, 1),
(6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('DAgMHc7RlvZLzP4m6zZdNUtFFi9pAhbS2eIlXEyf', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibE13QjdJa1pwSHFOTDZwY2ZIT3Z5WkRZNkpsbk1CQjNMNGE4TUU2eSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHA6Ly93ZWItdHJhdmVsLnRlc3Q6ODA4MC9kZXRhaWxzL251c2EtcGVuaWRhIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1723811403),
('hPQQI7Ed3jipIngIAQFbhUW3c4eEE8bGVlUF7Rgu', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidEpSWWdKQm5HUENYZW0xdUlpeU9HWk56djdzQ0FSTGtQbDZqYnRmWiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHA6Ly93ZWItdHJhdmVsLnRlc3Q6ODA4MC9kZXRhaWxzL251c2EtcGVuaWRhIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1723811398),
('lbIzdf8Nf5AwUIHqGuKlZNf2NrL7zX9HuSVJh6l1', 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoibTJSTFpZbVVjMmJDWnI0eW9ONjd6Z2hOdDVsRHVOd3o1aGRaaXhjcyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly93ZWItdHJhdmVsLnRlc3Q6ODA4MCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjM7fQ==', 1723816640),
('x0ImhBoN3drZT7ykDK68V7plfzwJLcHPYi6K5QLt', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWnJhdlNEb2FuS0Ribnl6OHRaY2V3alpjR0NLTFpEOEZZQmZXdFpQUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHA6Ly93ZWItdHJhdmVsLnRlc3Q6ODA4MC9kZXRhaWxzL251c2EtcGVuaWRhIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1723811398);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `avatar`, `phone_number`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Super_Admin', '', '1087774444', 'admin@example.com', NULL, '$2y$12$BQuaCvTnP/eiJ9Gm1giKHOkcmg7X9W603JkUlKMU6faE2Rd8oHwGy', NULL, '2024-07-08 11:25:18', '2024-07-08 11:25:18'),
(3, 'Hary Saputra', 'avatars/2SFhyXBWDxEPcbKMPF7YOkd1v1C71Xg0OUxlQEEZ.png', '087733875246', 'harysaputra2703@gmail.com', NULL, '$2y$12$Oqvr14Cq0030vxxXWSv98.8QEBjJwYxREDoQkVVwuby.wnJNE0YRe', NULL, '2024-07-11 11:32:06', '2024-07-11 11:32:06'),
(4, 'sami mawon', 'avatars/aLPZ0YEGb0UwrfQfJowcDUQ32s0MsjHjKYEcLw1O.jpg', '624567876545', 'samisami@gmail.com', NULL, '$2y$12$PfFYIgL56PypAguvsGxEIOQqBHa3mIyhoJMn3FE2oJL8s2AmKV6ae', NULL, '2024-07-23 11:22:53', '2024-07-23 11:22:53'),
(5, 'Hary Saputra', 'avatars/da7vyOPA61FnGjylWdhyu9h1wsI2RqTX0m9INRjN.png', '62786543467', 'harysaputra0303@gmail.com', NULL, '$2y$12$BrcSksp6Pzp24fWZwV4J2uOffmaG9y3EEoS4R//t.I3FyGv6a5lfq', NULL, '2024-07-24 16:28:19', '2024-07-24 16:28:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `package_banks`
--
ALTER TABLE `package_banks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package_bookings`
--
ALTER TABLE `package_bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `package_bookings_package_bank_id_foreign` (`package_bank_id`),
  ADD KEY `package_bookings_package_tour_id_foreign` (`package_tour_id`),
  ADD KEY `package_bookings_user_id_foreign` (`user_id`);

--
-- Indexes for table `package_photos`
--
ALTER TABLE `package_photos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `package_photos_package_tour_id_foreign` (`package_tour_id`);

--
-- Indexes for table `package_tours`
--
ALTER TABLE `package_tours`
  ADD PRIMARY KEY (`id`),
  ADD KEY `package_tours_category_id_foreign` (`category_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `package_banks`
--
ALTER TABLE `package_banks`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `package_bookings`
--
ALTER TABLE `package_bookings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `package_photos`
--
ALTER TABLE `package_photos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `package_tours`
--
ALTER TABLE `package_tours`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `package_bookings`
--
ALTER TABLE `package_bookings`
  ADD CONSTRAINT `package_bookings_package_bank_id_foreign` FOREIGN KEY (`package_bank_id`) REFERENCES `package_banks` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `package_bookings_package_tour_id_foreign` FOREIGN KEY (`package_tour_id`) REFERENCES `package_tours` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `package_bookings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `package_photos`
--
ALTER TABLE `package_photos`
  ADD CONSTRAINT `package_photos_package_tour_id_foreign` FOREIGN KEY (`package_tour_id`) REFERENCES `package_tours` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `package_tours`
--
ALTER TABLE `package_tours`
  ADD CONSTRAINT `package_tours_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
