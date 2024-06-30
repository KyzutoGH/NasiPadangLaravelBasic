-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 30, 2024 at 04:08 PM
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
-- Database: `db_resto`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Paket Masakan', '2024-06-29 02:25:14', '2024-06-29 02:25:14'),
(2, 'Minuman', '2024-06-29 02:25:17', '2024-06-29 02:25:17'),
(3, 'Lauk Pauk', '2024-06-30 05:04:11', '2024-06-30 05:04:11');

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
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`id`, `name`, `description`, `price`, `category_id`, `image`, `created_at`, `updated_at`) VALUES
(4, 'Paket Nasi Ayam Rendang', 'Nasi dengan Ayam Rendang', 20000, 1, '1719752321.jpg', '2024-06-30 05:58:41', '2024-06-30 07:06:21'),
(5, 'Telur Balado', 'Telur dengan bumbu balado', 10000, 3, '1719752366.jpg', '2024-06-30 05:59:26', '2024-06-30 07:05:52'),
(6, 'Sayur Nangka Muda Bumbu Merah', 'Sayur Nangka dengan bumbu merah', 10000, 3, '1719752419.jpeg', '2024-06-30 06:00:19', '2024-06-30 07:07:28'),
(7, 'Sayur Singkong', 'Sayur Daun Singkong', 10000, 3, '1719752443.jpg', '2024-06-30 06:00:43', '2024-06-30 07:07:42'),
(8, 'Sayur Nangka', 'Sayur Nangka', 10000, 3, '1719752467.jpeg', '2024-06-30 06:01:07', '2024-06-30 07:03:26'),
(9, 'Sayur Kapau', 'Campuran Nangka Muda, Kacang Panjang, dan Kol', 10000, 3, '1719752489.jpg', '2024-06-30 06:01:29', '2024-06-30 07:05:22'),
(10, 'Perkedel', 'Kentang rebus yang dilumatkan', 9000, 3, '1719752526.jpg', '2024-06-30 06:02:06', '2024-06-30 07:03:06'),
(11, 'Paket Nasi Ikan Goreng', 'Nasi dengan Ikan Goreng', 12000, 1, '1719752561.jpg', '2024-06-30 06:02:41', '2024-06-30 07:03:52'),
(12, 'Paket Nasi Ikan Bakar', 'Nasi dengan Ikan Bakar', 15000, 1, '1719752589.jpg', '2024-06-30 06:03:09', '2024-06-30 07:01:55'),
(13, 'Paket Nasi Campur', 'Nasi dengan lauk Telur, Perkedel, Sayur Singkong', 15000, 1, '1719752608.jpeg', '2024-06-30 06:03:28', '2024-06-30 06:58:42'),
(14, 'Nasi Gulai', 'Nasi dengan campuran Gulai', 13000, 3, '1719752670.jpg', '2024-06-30 06:04:30', '2024-06-30 06:54:15'),
(15, 'Nasi Rendang', 'Nasi dengan campuran Daging Rendang', 12000, 3, '1719752685.png', '2024-06-30 06:04:45', '2024-06-30 06:59:41'),
(16, 'Nasi Putih', 'Nasi putih biasa', 5000, 3, '1719752711.jpg', '2024-06-30 06:05:11', '2024-06-30 06:53:42'),
(17, 'Kopi', 'Kopi Hitam HOT~', 6000, 2, '1719752741.jpg', '2024-06-30 06:05:41', '2024-06-30 06:53:02'),
(18, 'Ikan Goreng', 'Ikan Digoreng..', 9000, 3, '1719752794.jpg', '2024-06-30 06:06:34', '2024-06-30 06:52:21'),
(19, 'Ikan Bakar', 'Ikan dibakar..', 10000, 3, '1719752811.jpg', '2024-06-30 06:06:51', '2024-06-30 06:52:05'),
(20, 'Es Teh', 'Es Teh enak..', 10000, 2, '1719752834.jpg', '2024-06-30 06:07:14', '2024-06-30 06:51:38'),
(21, 'Dendeng Batokok Lado Hijau', 'Dendeng basah yang diberi sambal hijau', 10000, 3, '1719752860.jpg', '2024-06-30 06:07:40', '2024-06-30 07:01:30'),
(22, 'Daging Rendang', 'Optional', 9000, 3, '1719752880.jpg', '2024-06-30 06:08:00', '2024-06-30 06:09:10'),
(23, 'Ayam Pop', 'Ayam rebus kemudian digoreng kering', 9000, 3, '1719752904.jpg', '2024-06-30 06:08:24', '2024-06-30 06:50:29'),
(24, 'Ayam Gulai', 'Ayam dimasak gulai', 9000, 3, '1719752929.jpeg', '2024-06-30 06:08:49', '2024-06-30 06:54:40'),
(25, 'Ayam Goreng', 'Ayam digoreng', 9000, 3, '1719752946.jpg', '2024-06-30 06:09:06', '2024-06-30 06:50:42'),
(26, 'Ayam Balado', 'Ayam dengan campuran sambal', 9000, 3, '1719752972.jpg', '2024-06-30 06:09:32', '2024-06-30 06:43:52'),
(27, 'Es Jeruk', 'Enak Sekali', 5000, 2, '1719755042.jpg', '2024-06-30 06:44:02', '2024-06-30 06:44:02');

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
(5, '2024_06_29_073221_create_categories_table', 1),
(6, '2024_06_29_073448_create_food_table', 1);

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Muhammad Yesus', 'yes.us@gmail.com', NULL, '$2y$10$SHai3HtzMtxYrjGW9NhLSOPfD.qOVZTysE154I0ooVceRRE7IxVfy', 'lmheXOxwUCgUxs2xxXLCkVj8Xg1r3K6cda1YUXWhXout7EHnDoyNNNa42SHS', '2024-06-30 04:56:46', '2024-06-30 04:56:46'),
(2, 'Cak J', 'cakj@gmail.com', NULL, '$2y$10$mKpzCi8a2X.rdx0hknQRTOYgFulQHhvY9.YMIhu6X9aFzxqLnjEVi', NULL, '2024-06-30 06:05:17', '2024-06-30 06:05:17');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
