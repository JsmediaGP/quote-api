-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 31, 2023 at 02:47 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quoteapi`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category`, `created_at`, `updated_at`) VALUES
(1, 'success', '2023-08-31 09:55:50', '2023-08-31 09:55:50'),
(2, 'work', '2023-08-31 09:56:07', '2023-08-31 09:56:07'),
(3, 'failure', '2023-08-31 09:57:12', '2023-08-31 09:57:12'),
(4, 'inspirational', '2023-08-31 09:57:47', '2023-08-31 09:57:47'),
(5, 'depression', '2023-08-31 09:58:20', '2023-08-31 09:58:20'),
(6, 'joyful', '2023-08-31 09:58:53', '2023-08-31 09:58:53');

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
(19, '2014_10_12_000000_create_users_table', 1),
(20, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(21, '2019_08_19_000000_create_failed_jobs_table', 1),
(22, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(23, '2023_08_30_133349_create_category_table', 1),
(24, '2023_08_30_133418_create_quote_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quote`
--

CREATE TABLE `quote` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `content` varchar(5000) NOT NULL,
  `Author` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quote`
--

INSERT INTO `quote` (`id`, `category_id`, `content`, `Author`, `created_at`, `updated_at`) VALUES
(1, 1, 'Success is not final, failure is not fatal: It is the courage to continue that counts.', 'Winston Churchill', '2023-08-31 10:03:14', '2023-08-31 10:03:14'),
(2, 1, 'Success is walking from failure to failure with no loss of enthusiasm.', 'Winston Churchill', '2023-08-31 10:03:51', '2023-08-31 10:03:51'),
(3, 1, 'The only place where success comes before work is in the dictionary.', 'Vidal Sassoon', '2023-08-31 10:04:22', '2023-08-31 10:04:22'),
(4, 1, 'Success is not how high you have climbed, but how you make a positive difference to the world.', 'Roy T. Bennett', '2023-08-31 10:05:07', '2023-08-31 10:05:07'),
(5, 1, 'Success is not in what you have, but who you are.', 'Bo Bennett', '2023-08-31 10:05:39', '2023-08-31 10:05:39'),
(6, 1, 'The road to success and the road to failure are almost exactly the same.', 'Colin R. Davis', '2023-08-31 10:06:15', '2023-08-31 10:06:15'),
(7, 1, 'Success is not the key to happiness. Happiness is the key to success. If you love what you are doing, you will be successful.', 'Albert Schweitzer', '2023-08-31 10:08:44', '2023-08-31 10:08:44'),
(8, 1, 'The secret of success is to do the common thing uncommonly well.', 'John D. Rockefeller Jr.', '2023-08-31 10:09:11', '2023-08-31 10:09:11'),
(9, 1, 'Success usually comes to those who are too busy to be looking for.', 'Henry David Thoreau', '2023-08-31 10:09:45', '2023-08-31 10:09:45'),
(10, 1, 'Success is not the result of spontaneous combustion. You must set yourself on fire.', 'Arnold H. Glasow', '2023-08-31 10:10:38', '2023-08-31 10:10:38'),
(11, 1, 'The only place where success comes before work is in the dictionary.', 'Vidal Sassoon', '2023-08-31 10:11:08', '2023-08-31 10:11:08'),
(12, 1, 'The secret of success is to do the common thing uncommonly well.', 'John D. Rockefeller Jr.', '2023-08-31 10:16:03', '2023-08-31 10:16:03'),
(13, 1, 'Success is not in what you have, but who you are.', 'Bo Bennett', '2023-08-31 10:16:28', '2023-08-31 10:16:28'),
(14, 1, 'The road to success and the road to failure are almost exactly the same.', 'Colin R. Davis', '2023-08-31 10:16:50', '2023-08-31 10:16:50'),
(15, 1, 'Success is not how high you have climbed, but how you make a positive difference to the world.', 'Roy T. Bennett', '2023-08-31 10:17:38', '2023-08-31 10:17:38'),
(16, 2, 'Choose a job you love, and you will never have to work a day in your life.', 'Confucius', '2023-08-31 11:14:56', '2023-08-31 11:14:56'),
(17, 2, 'Hard work beats talent when talent doesn\'t work hard.', 'Tim Notke', '2023-08-31 11:15:18', '2023-08-31 11:15:18'),
(18, 2, 'Your work is going to fill a large part of your life, and the only way to be truly satisfied is to do what you believe is great work. And the only way to do great work is to love what you do.', 'Steve Jobs', '2023-08-31 11:16:06', '2023-08-31 11:16:06'),
(19, 2, 'The best way to appreciate your job is to imagine yourself without one.', 'Oscar Wilde', '2023-08-31 11:16:20', '2023-08-31 11:16:20'),
(20, 2, 'The only thing that overcomes hard luck is hard work.', 'Harry Golden', '2023-08-31 11:16:39', '2023-08-31 11:16:39'),
(21, 2, 'The only place success comes before work is in the dictionary.', 'Vidal Sassoon', '2023-08-31 11:17:00', '2023-08-31 11:17:00'),
(22, 2, 'Work hard, stay focused, and never give up. Your dreams are worth it.', 'Unknown', '2023-08-31 11:17:24', '2023-08-31 11:17:24'),
(23, 2, 'Success is no accident. It is hard work, perseverance, learning, studying, sacrifice, and most of all, love of what you are doing or learning to do.', 'Pelé', '2023-08-31 11:17:45', '2023-08-31 11:17:45'),
(24, 2, 'Find out what you like doing best and get someone to pay you for doing it.', 'Katherine Whitehorn', '2023-08-31 11:18:00', '2023-08-31 11:18:00'),
(25, 2, 'The future depends on what you do today.', 'Mahatma Gandhi', '2023-08-31 11:18:18', '2023-08-31 11:18:18'),
(26, 3, 'Failure is simply the opportunity to begin again, this time more intelligently.', 'Henry Ford', '2023-08-31 11:19:48', '2023-08-31 11:19:48'),
(27, 3, 'Success is not final, failure is not fatal: It is the courage to continue that counts.', 'Winston Churchill', '2023-08-31 11:20:09', '2023-08-31 11:20:09'),
(28, 3, 'Failure is the condiment that gives success its flavor.', 'Truman Capote', '2023-08-31 11:20:26', '2023-08-31 11:20:26'),
(29, 3, 'I have not failed. I\'ve just found 10,000 ways that won\'t work.', 'Thomas A. Edison', '2023-08-31 11:20:42', '2023-08-31 11:20:42'),
(30, 3, 'Success is stumbling from failure to failure with no loss of enthusiasm.', 'Winston S. Churchill', '2023-08-31 11:20:57', '2023-08-31 11:20:57'),
(31, 3, 'Failure is the key to success; each mistake teaches us something.', 'Morihei Ueshiba', '2023-08-31 11:21:10', '2023-08-31 11:21:10'),
(32, 3, 'The biggest risk is not taking any risk. In a world that\'s changing quickly, the only strategy that is guaranteed to fail is not taking risks.', 'Mark Zuckerberg', '2023-08-31 11:21:29', '2023-08-31 11:21:29'),
(33, 3, 'Don\'t fear failure. Not failure, but low aim, is the crime. In great attempts, it is glorious even to fail.', 'Bruce Lee', '2023-08-31 11:21:45', '2023-08-31 11:21:45'),
(34, 3, 'Failure is only the opportunity to begin again, this time more intelligently.', 'Henry Ford', '2023-08-31 11:22:01', '2023-08-31 11:22:01'),
(35, 3, 'It is hard to fail, but it is worse never to have tried to succeed.', 'Theodore Roosevelt', '2023-08-31 11:22:23', '2023-08-31 11:22:23'),
(36, 4, 'The only way to do great work is to love what you do.', 'Steve Jobs', '2023-08-31 11:23:05', '2023-08-31 11:23:05'),
(37, 4, 'Believe you can, and you\'re halfway there.', 'Theodore Roosevelt', '2023-08-31 11:25:45', '2023-08-31 11:25:45'),
(38, 4, 'Your time is limited, don\'t waste it living someone else\'s life.', 'Steve Jobs', '2023-08-31 11:28:29', '2023-08-31 11:28:29'),
(39, 4, 'The only limit to our realization of tomorrow will be our doubts of today.', 'Franklin D. Roosevelt', '2023-08-31 11:35:19', '2023-08-31 11:35:19'),
(40, 4, 'Success is not final, failure is not fatal: It is the courage to continue that counts.', 'Winston Churchill', '2023-08-31 11:35:34', '2023-08-31 11:35:34'),
(41, 4, 'The best way to predict the future is to create it.', 'Peter Drucker', '2023-08-31 11:35:47', '2023-08-31 11:35:47'),
(42, 4, 'The only thing standing between you and your goal is the story you keep telling yourself as to why you can\'t achieve it.', 'Jordan Belfort', '2023-08-31 11:36:02', '2023-08-31 11:36:02'),
(43, 4, 'The only person you are destined to become is the person you decide to be.', 'Ralph Waldo Emerson', '2023-08-31 11:36:17', '2023-08-31 11:36:17'),
(44, 4, 'Life is what happens when you\'re busy making other plans.', 'John Lennon', '2023-08-31 11:36:31', '2023-08-31 11:36:31'),
(45, 4, 'In the middle of every difficulty lies opportunity.', 'Albert Einstein', '2023-08-31 11:36:43', '2023-08-31 11:36:43');

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
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `quote`
--
ALTER TABLE `quote`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quote_category_id_foreign` (`category_id`);

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
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quote`
--
ALTER TABLE `quote`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `quote`
--
ALTER TABLE `quote`
  ADD CONSTRAINT `quote_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
