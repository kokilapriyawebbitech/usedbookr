-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 09, 2024 at 12:50 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `usedbookr`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `author` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT '1',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `author`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Urry1', '1', 1, 1, '2024-01-27 01:17:42', '2024-01-27 01:20:54'),
(2, 'Lisa', '1', 1, NULL, '2024-01-27 01:22:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bindings`
--

CREATE TABLE `bindings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bindings`
--

INSERT INTO `bindings` (`id`, `name`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'slim', 1, 1, 1, '2024-02-05 01:45:21', '2024-02-05 01:46:36'),
(2, 'Cover', 1, 1, NULL, '2024-02-05 01:46:43', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `binding_type_id` bigint(20) UNSIGNED NOT NULL,
  `condition_id` bigint(20) UNSIGNED NOT NULL,
  `binding` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `title_long` text NOT NULL,
  `isbn` varchar(255) DEFAULT NULL,
  `isbn13` varchar(255) DEFAULT NULL,
  `publisher` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `edition` varchar(255) DEFAULT NULL,
  `pages` varchar(255) DEFAULT NULL,
  `dimensions` varchar(255) DEFAULT NULL,
  `image` text DEFAULT NULL,
  `synopsis` text DEFAULT NULL,
  `price` decimal(8,2) DEFAULT NULL,
  `original_price` decimal(8,2) DEFAULT NULL,
  `offer` decimal(8,2) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `category_id`, `binding_type_id`, `condition_id`, `binding`, `name`, `title_long`, `isbn`, `isbn13`, `publisher`, `language`, `edition`, `pages`, `dimensions`, `image`, `synopsis`, `price`, `original_price`, `offer`, `status`, `created_at`, `updated_at`) VALUES
(1, 4, 1, 1, 'Paperback', 'The Art of Public Speaking with Media Ops Setup ISBN Lucas', 'The Art of Public Speaking with Media Ops Setup ISBN Lucas', '0077306295', '9780077306298', 'McGraw-Hill Education', 'en', '10th', 'Height: 9.5 Inches, Length: 7.5 Inches, Weight: 1.9 Pounds, Width: 0.5 Inches', NULL, 'https://images.isbndb.com/covers/62/98/9780077306298.jpg', 'demo', 10.00, 1.00, 5.00, 1, '2024-02-09 03:40:34', '2024-02-09 03:40:34'),
(2, 4, 1, 1, 'Unknown Binding', 'Integrated Arithmetic and Basic Algebra, College Prep Math (Custom Edition, Oklahoma City Community College, ISBN - 9780558702366/0558702368)', 'Integrated Arithmetic and Basic Algebra, College Prep Math (Custom Edition, Oklahoma City Community College, ISBN - 9780558702366/0558702368)', '0558702368', '9780558702366', 'Pearson', 'en', '12', 'Weight: 1.58 Pounds', NULL, 'https://images.isbndb.com/covers/23/66/9780558702366.jpg', '121', 12.00, 12.00, 12.00, 1, '2024-02-09 05:33:10', '2024-02-09 05:33:10');

-- --------------------------------------------------------

--
-- Table structure for table `book_conditions`
--

CREATE TABLE `book_conditions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `book_conditions`
--

INSERT INTO `book_conditions` (`id`, `name`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Good', 1, 1, 1, '2024-01-26 02:14:59', '2024-01-26 02:17:29');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(3, 'COMPETITIVE', 0, 1, NULL, '2024-01-26 01:39:32', NULL),
(4, 'non fiction', 1, 1, NULL, '2024-01-26 01:40:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `country_id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `country_id`, `state_id`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'salem1', 1, 1, 1, 1, NULL, '2024-01-26 05:47:26', '2024-01-26 05:47:26');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'India', 1, 1, 1, '2024-01-26 03:58:01', '2024-01-26 03:58:54'),
(2, 'Kerala', 1, 1, NULL, '2024-01-26 04:24:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_04_16_094302_create_suppliers_table', 1),
(6, '2024_01_26_064033_create_categories_table', 2),
(7, '2024_01_26_071334_create_book_conditions_table', 3),
(8, '2024_01_26_090925_create_countries_table', 4),
(9, '2024_01_26_092945_create_states_table', 5),
(10, '2024_01_26_100507_create_cities_table', 6),
(12, '2024_01_27_051823_create_authors_table', 8),
(13, '2024_02_05_065817_create_bindings_table', 9),
(14, '2024_02_07_052404_add_otp_to_users_table', 10),
(15, '2024_02_07_064242_add_expires_at_to_personal_access_tokens_table', 11),
(16, '2024_02_07_065444_add_phone_number_to_users_table', 12),
(17, '2024_02_09_070441_create_books_table', 13);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`, `expires_at`) VALUES
(1, 'App\\Models\\User', 17, 'authToken', '0171fc6bb9787dac96d0fe19a449d4ea37d2a9ebbba0aa91006dc1feeb320b36', '[\"*\"]', NULL, '2024-02-07 01:15:28', '2024-02-07 01:15:28', NULL),
(2, 'App\\Models\\User', 18, 'authToken', '487b0ec36e810368ced829b5e036fe7fcf88f27bfc5e779c99070271a7e033f5', '[\"*\"]', NULL, '2024-02-07 01:21:28', '2024-02-07 01:21:28', NULL),
(3, 'App\\Models\\User', 21, 'authToken', '6f355f5d94b68d8de8cfd779bd7bcb097e12eb19afd96e74e719995c5f4e7a93', '[\"*\"]', NULL, '2024-02-07 01:50:55', '2024-02-07 01:50:55', NULL),
(4, 'App\\Models\\User', 24, 'authToken', 'e55eec845d1c008811ad2296af74bd0e65b751194da4d598e229d9f240ed534d', '[\"*\"]', NULL, '2024-02-07 02:25:42', '2024-02-07 02:25:42', NULL),
(5, 'App\\Models\\User', 25, 'authToken', 'd5ace8183274e12777f9d826af78b7166765f4c49e1b18e442a0006c39c362ba', '[\"*\"]', NULL, '2024-02-07 03:55:43', '2024-02-07 03:55:43', NULL),
(6, 'App\\Models\\User', 26, 'authToken', 'd17935964e967fb98a54e628663ce9b852208928935093b71329548d3333a630', '[\"*\"]', NULL, '2024-02-07 03:57:44', '2024-02-07 03:57:44', NULL),
(7, 'App\\Models\\User', 27, 'authToken', 'f54a3f0ee350b9b249cc3ada64b12e63b1edde3f4d495cbf12c1c808ea25a2c2', '[\"*\"]', '2024-02-07 04:34:10', '2024-02-07 04:33:34', '2024-02-07 04:34:10', NULL),
(8, 'App\\Models\\User', 55, 'authToken', '6a4c2663bb5de20ae52a0a3c3814d30e8fe99f4dc5e3ea040d4c761c6d8642b2', '[\"*\"]', NULL, '2024-02-08 02:11:22', '2024-02-08 02:11:22', NULL),
(9, 'App\\Models\\User', 56, 'authToken', 'cf05bcad9b57c1b867e09ccce4f3fcdff13d0f324199288fe348e60cbf4e2b88', '[\"*\"]', NULL, '2024-02-08 02:17:23', '2024-02-08 02:17:23', NULL),
(10, 'App\\Models\\User', 57, 'authToken', 'b65fb9aa7cef9e2c90ede8b4a13bf4570782905822c1411b49d3cf1a1b5ac173', '[\"*\"]', NULL, '2024-02-08 02:25:14', '2024-02-08 02:25:14', NULL),
(11, 'App\\Models\\User', 58, 'authToken', '028dd5abd079b4efa91b81bcc40dd4f29a791e3e64187b86bab5927488f5f684', '[\"*\"]', NULL, '2024-02-08 04:47:01', '2024-02-08 04:47:01', NULL),
(12, 'App\\Models\\User', 60, 'authToken', '92ac6516dee5742d4388f6dd3582991c4442196864e78238774f4e51b46f5bc0', '[\"*\"]', NULL, '2024-02-08 05:33:21', '2024-02-08 05:33:21', NULL),
(13, 'App\\Models\\User', 62, 'authToken', '021097c798d3b16c7ef6bbca931d06b697cc885ca14745525175a6dfae9f1fb5', '[\"*\"]', '2024-02-08 23:04:14', '2024-02-08 23:03:47', '2024-02-08 23:04:14', NULL),
(14, 'App\\Models\\User', 63, 'authToken', 'a8a754c47119ddca639a973817d8d06496869e7c21ce46256f332636f43a5f25', '[\"*\"]', NULL, '2024-02-08 23:07:29', '2024-02-08 23:07:29', NULL),
(15, 'App\\Models\\User', 64, 'authToken', '981c93fbc5c6c9973919bd46e26f4998e58d8647677fbe2470baaa85ac9c130e', '[\"*\"]', NULL, '2024-02-08 23:19:05', '2024-02-08 23:19:05', NULL),
(16, 'App\\Models\\User', 65, 'authToken', '5c93c51aaf34ce4e974e829b44c0b33b03827198b1ae42175d9896f89c104712', '[\"*\"]', NULL, '2024-02-08 23:28:59', '2024-02-08 23:28:59', NULL),
(17, 'App\\Models\\User', 65, 'authToken', 'acec8105eb44b39720a49599302f2ae530abf004eaab3fb140a29bacf255e0f6', '[\"*\"]', NULL, '2024-02-08 23:29:52', '2024-02-08 23:29:52', NULL),
(18, 'App\\Models\\User', 65, 'authToken', 'e9cdda212a7c974d15a337a94b3bd7af5048da422f37a9677aed6a28ca3754dd', '[\"*\"]', NULL, '2024-02-08 23:30:06', '2024-02-08 23:30:06', NULL),
(19, 'App\\Models\\User', 65, 'authToken', 'd93ec285fa61ea4e217ab7738eccbbc33c93e86fb55671c6cf3fa3ed3e429d60', '[\"*\"]', NULL, '2024-02-08 23:30:19', '2024-02-08 23:30:19', NULL),
(20, 'App\\Models\\User', 65, 'authToken', '47997ab67c48c2dcf56469744b8c51607a9054ca586b1882e3d47cb60f6d559e', '[\"*\"]', NULL, '2024-02-08 23:30:35', '2024-02-08 23:30:35', NULL),
(21, 'App\\Models\\User', 65, 'authToken', '1165a4b2c6faf10808954d783b762e1f05f61500c3bb922fbd7b829430c8a5be', '[\"*\"]', '2024-02-09 00:12:28', '2024-02-08 23:31:13', '2024-02-09 00:12:28', NULL),
(22, 'App\\Models\\User', 65, 'authToken', 'bef32c3f2ee468ee6250fcb890851ea40c8e161a8813925af1af7a4ec64a6c54', '[\"*\"]', NULL, '2024-02-08 23:32:15', '2024-02-08 23:32:15', NULL),
(23, 'App\\Models\\User', 65, 'authToken', '0eee42570ecc1a054380fc27c8375578004f67bada2303b8c69fe95896fb3de1', '[\"*\"]', NULL, '2024-02-08 23:43:46', '2024-02-08 23:43:46', NULL),
(24, 'App\\Models\\User', 65, 'authToken', '29497140849cc4eb230ea46387e55c1e78ce7f8da032f0be90e3377a03fd9f19', '[\"*\"]', NULL, '2024-02-08 23:45:39', '2024-02-08 23:45:39', NULL),
(25, 'App\\Models\\User', 65, 'authToken', '3a0ead5725adddbda761b954a67acf9f5a9fe8f5047b8d6ff035c2695be303e1', '[\"*\"]', NULL, '2024-02-09 00:18:36', '2024-02-09 00:18:36', NULL),
(26, 'App\\Models\\User', 65, 'authToken', '78687964d5b7b2057c81bb8f97bab51bc553d975140764325f214bb21d5a3620', '[\"*\"]', NULL, '2024-02-09 00:18:37', '2024-02-09 00:18:37', NULL),
(27, 'App\\Models\\User', 65, 'authToken', 'fd6e74962f15c6b7a19fc3055af88b27e71f7636635c5366f7b1afb8036171ce', '[\"*\"]', NULL, '2024-02-09 00:19:06', '2024-02-09 00:19:06', NULL),
(28, 'App\\Models\\User', 65, 'authToken', '0691b7447a6dcea20691b97c7923cd6d383ab511e9d137d7965eefac77f870c1', '[\"*\"]', NULL, '2024-02-09 00:19:07', '2024-02-09 00:19:07', NULL),
(29, 'App\\Models\\User', 66, 'authToken', '69cb6bb48a5b434f2bd2f77f57e42c37a185b187ff9727c78b81ae5beac5d1bc', '[\"*\"]', NULL, '2024-02-09 00:35:46', '2024-02-09 00:35:46', NULL),
(30, 'App\\Models\\User', 66, 'authToken', 'dd2da137fbc10a01e098e03342da07b71a8a39fc01d7e872d6dc2010353c6d7b', '[\"*\"]', NULL, '2024-02-09 00:36:55', '2024-02-09 00:36:55', NULL),
(31, 'App\\Models\\User', 66, 'authToken', '9ce46aa72d5e40c1d58040b45657c9ed95913e3186b218e82d92fe5c820aabb0', '[\"*\"]', NULL, '2024-02-09 00:37:10', '2024-02-09 00:37:10', NULL),
(32, 'App\\Models\\User', 67, 'authToken', 'a84347797c3d5ab9448dc1a7c9d45157c6f7e449605969ce88baeb9e1c9314d2', '[\"*\"]', NULL, '2024-02-09 00:51:24', '2024-02-09 00:51:24', NULL),
(33, 'App\\Models\\User', 67, 'authToken', 'd2ef19d0d02ecc564d08073cda009d0d05f044b22b00706a3b74f6b46d656f74', '[\"*\"]', NULL, '2024-02-09 00:53:09', '2024-02-09 00:53:09', NULL),
(34, 'App\\Models\\User', 68, 'authToken', '8c53d13f5bc81c76415e361ad19701f796f75d542c3fc3d2cfeda59239b6116a', '[\"*\"]', NULL, '2024-02-09 01:01:18', '2024-02-09 01:01:18', NULL),
(35, 'App\\Models\\User', 68, 'authToken', '9d5e1d4adabfeea4921aa7333908c7d78e8ac4d42cc21aaf76cea76d1fb0ffc3', '[\"*\"]', NULL, '2024-02-09 01:02:20', '2024-02-09 01:02:20', NULL),
(36, 'App\\Models\\User', 68, 'authToken', '20b13254d68523b9e80c59fd5702a1dce0d0be635a38a1c6c055efabc994b340', '[\"*\"]', NULL, '2024-02-09 01:02:27', '2024-02-09 01:02:27', NULL),
(37, 'App\\Models\\User', 69, 'authToken', 'e52ccf2121a054f961a2e06099e586c91f044a6e6be0e15e611a98371f321892', '[\"*\"]', NULL, '2024-02-09 01:06:02', '2024-02-09 01:06:02', NULL),
(38, 'App\\Models\\User', 69, 'authToken', 'e4cb290de90a2cb0d69e3442f245730b6648808a7ed232cbd8154fa56da7edf4', '[\"*\"]', NULL, '2024-02-09 01:07:30', '2024-02-09 01:07:30', NULL),
(39, 'App\\Models\\User', 69, 'authToken', 'a2d7b692f98f1c11cfddbb738a00bde82b2481fddcc9c07017b3576dc199a5fb', '[\"*\"]', NULL, '2024-02-09 01:10:48', '2024-02-09 01:10:48', NULL),
(40, 'App\\Models\\User', 69, 'authToken', 'e59d5d1c5d7f7da3e74ab375c7a14b90f80eda0266a3c0d17becf23deaca7fa5', '[\"*\"]', NULL, '2024-02-09 01:12:44', '2024-02-09 01:12:44', NULL),
(41, 'App\\Models\\User', 69, 'authToken', '53a3acda8f5ce8a8b3ced6962396ee1593a82a6ad28711538528d8b47f6637d5', '[\"*\"]', NULL, '2024-02-09 01:12:51', '2024-02-09 01:12:51', NULL),
(42, 'App\\Models\\User', 70, 'authToken', 'dc488573549fd80497a2c89122a29741efd47cf1c1e121a5ca11b453fc6d71d1', '[\"*\"]', NULL, '2024-02-09 01:16:43', '2024-02-09 01:16:43', NULL),
(43, 'App\\Models\\User', 70, 'authToken', 'fa933b17e75af0a702e38653b594f0cd830a346737753b4ae6a2597eff2ff9a0', '[\"*\"]', NULL, '2024-02-09 01:17:52', '2024-02-09 01:17:52', NULL),
(44, 'App\\Models\\User', 70, 'authToken', '2ed2fac34fc1bd6852273aca7ed04964bc1e016183dc073ac73d2ef09bebfc99', '[\"*\"]', NULL, '2024-02-09 01:18:13', '2024-02-09 01:18:13', NULL),
(45, 'App\\Models\\User', 70, 'authToken', '853393291e9887484b2357243c819623c23448b246c6b324a7d2dbeefb940b1d', '[\"*\"]', NULL, '2024-02-09 01:21:33', '2024-02-09 01:21:33', NULL),
(46, 'App\\Models\\User', 70, 'authToken', 'bd41544961e02edf86a833f40ce8874930875e45f4edf27318b9ca78b91b7afd', '[\"*\"]', NULL, '2024-02-09 01:21:56', '2024-02-09 01:21:56', NULL),
(47, 'App\\Models\\User', 70, 'authToken', '30aebccd5b78a0f1687f3a73562ccec55940073cb08787f7fa60a4a0b51d0b86', '[\"*\"]', NULL, '2024-02-09 01:23:32', '2024-02-09 01:23:32', NULL),
(48, 'App\\Models\\User', 70, 'authToken', '448a46b22ac2866b57298b70b6e0a1d1f7cb2ba692c48e2cbd97593f8ce5da9a', '[\"*\"]', NULL, '2024-02-09 01:23:45', '2024-02-09 01:23:45', NULL),
(49, 'App\\Models\\User', 70, 'authToken', '6a947b444ae9044e48fefe5fd62b926f494ece305c15c0d5ec81039a266e971b', '[\"*\"]', NULL, '2024-02-09 01:24:18', '2024-02-09 01:24:18', NULL),
(50, 'App\\Models\\User', 70, 'authToken', '2802df4bce11c4466b32e3bf0b3333e340fcc717c33a86281666ea49dcdf8a58', '[\"*\"]', NULL, '2024-02-09 01:28:24', '2024-02-09 01:28:24', NULL),
(51, 'App\\Models\\User', 70, 'authToken', '6857fe0654dd60d9e2219c6931cc159e4213c004aa86f3aa12d6143b129808a2', '[\"*\"]', NULL, '2024-02-09 01:28:43', '2024-02-09 01:28:43', NULL),
(52, 'App\\Models\\User', 70, 'authToken', 'ebe11192f93693673486b8e83638ebab063452a0d1a159b083a460de64a983a1', '[\"*\"]', NULL, '2024-02-09 01:29:06', '2024-02-09 01:29:06', NULL),
(53, 'App\\Models\\User', 70, 'authToken', '7709b2bcd16b1ae464a914c164cb96f6f1a8a226d73427ee65fe5b62fe1dfc8e', '[\"*\"]', NULL, '2024-02-09 01:29:27', '2024-02-09 01:29:27', NULL),
(54, 'App\\Models\\User', 70, 'authToken', '43b82fc76ce038d5be15c1fd113edcda9fde7f06105f36c434988ffcf3eb6312', '[\"*\"]', NULL, '2024-02-09 01:31:07', '2024-02-09 01:31:07', NULL),
(55, 'App\\Models\\User', 70, 'authToken', '35c797f237786ecf9face22724720f7f084315ead563552c65f801258e039a8b', '[\"*\"]', '2024-02-09 01:32:52', '2024-02-09 01:32:52', '2024-02-09 01:32:52', NULL),
(56, 'App\\Models\\User', 70, 'authToken', '84651a21d80c259b2cfe8d398fe4b58f361568da8686b33417d1505412fd9f2f', '[\"*\"]', '2024-02-09 01:33:57', '2024-02-09 01:33:56', '2024-02-09 01:33:57', NULL),
(57, 'App\\Models\\User', 70, 'authToken', 'b6e7c923d9f3b9f020b002a39016e29a16094ebc6fcd5d3139c46a36ff3398d4', '[\"*\"]', '2024-02-09 02:06:09', '2024-02-09 01:34:11', '2024-02-09 02:06:09', NULL),
(58, 'App\\Models\\User', 72, 'authToken', '2754de29ea74e6dfaf6a29e6fc31a47b575ac09fdb4715201e115606be65656d', '[\"*\"]', NULL, '2024-02-09 01:38:40', '2024-02-09 01:38:40', NULL),
(59, 'App\\Models\\User', 72, 'authToken', '586f89a76ce8e2c2425e52f752717b83e051ec051de170ef6c8a0944a113e41d', '[\"*\"]', NULL, '2024-02-09 01:41:04', '2024-02-09 01:41:04', NULL),
(60, 'App\\Models\\User', 73, 'authToken', 'cd291140f64468be9756d308e48ea3835b3b2e71d3a1c96b2fd852c5a7f00676', '[\"*\"]', '2024-02-09 03:18:45', '2024-02-09 01:50:51', '2024-02-09 03:18:45', NULL),
(61, 'App\\Models\\User', 74, 'authToken', 'ae3b2fd566a770e0b95075accc5579d5a4dce86dd0a5c11080c821628b239c9a', '[\"*\"]', '2024-02-09 03:23:56', '2024-02-09 03:07:25', '2024-02-09 03:23:56', NULL),
(62, 'App\\Models\\User', 75, 'authToken', '9cb0f471da2a0aa25ced84c198e1835bd3f22a481430cdda505b70e9aba93309', '[\"*\"]', '2024-02-09 03:33:22', '2024-02-09 03:28:31', '2024-02-09 03:33:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `country_id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `name`, `country_id`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Tamil Nadu1', 1, 1, 1, 1, '2024-01-26 04:17:11', '2024-01-26 04:27:18');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `mobile_no` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `otp` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone_number`, `username`, `email_verified_at`, `password`, `otp`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '', 'admin', NULL, '$2y$10$ju8RRwyQarN0Tkl.8YpKvetBnPZWe9cthCz2jqfpKUBf9rlkmCUza', NULL, NULL, '2024-01-26 00:59:31', '2024-01-26 00:59:31'),
(76, 'ajithkumar', 'ajitkumarwebbitech1@gmail.com', '7548876967', 'ajit6967', NULL, '$2y$10$OPmhRI0cEybJV40Xq7hsEu3QSTTxdn9dQhYcrLzEZjeYpWWod6kym', '390614', NULL, '2024-02-09 03:37:32', '2024-02-09 03:37:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bindings`
--
ALTER TABLE `bindings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book_conditions`
--
ALTER TABLE `book_conditions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `bindings`
--
ALTER TABLE `bindings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `book_conditions`
--
ALTER TABLE `book_conditions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
