-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 18, 2023 at 07:42 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `twitter-clone`
--

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
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_03_15_063429_create_tweets_table', 1);

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
-- Table structure for table `tweets`
--

CREATE TABLE `tweets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `tweet` text NOT NULL,
  `file` varchar(255) DEFAULT NULL,
  `is_video` tinyint(1) DEFAULT NULL,
  `comments` varchar(255) NOT NULL,
  `retweets` varchar(255) NOT NULL,
  `likes` varchar(255) NOT NULL,
  `analytics` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tweets`
--

INSERT INTO `tweets` (`id`, `name`, `image`, `handle`, `tweet`, `file`, `is_video`, `comments`, `retweets`, `likes`, `analytics`, `created_at`, `updated_at`) VALUES
(9, 'Johnni Ward', 'https://randomuser.me/api/portraits/men/40.jpg', '@johnniward', 'We went rock climbing this weekend? Here is the video. Climbing is way more fun than exercising on any gym equipment. It works both your mind and body. Best of all it trains you to be creative and think out of the box. It\'s also an ongoing competition with yourself as you aim to improve your performance. ENJOY!', '/videos/Sportsman.mp4', 1, '35', '54', '88', '81', '2023-03-16 05:02:59', '2023-03-16 05:02:59'),
(10, 'Andre Carpenter', 'https://randomuser.me/api/portraits/men/7.jpg', '@andrecarpenter', 'Do you wanna learn Javascript? I\'m gonna make a Udemy tutorial to show you all how easy it is.', '/pics/Code.png', 0, '83', '59', '62', '66', '2023-03-16 05:02:59', '2023-03-16 05:02:59'),
(11, 'Josephine Perry', 'https://randomuser.me/api/portraits/women/59.jpg', '@josephineperry', 'Just made a new SEO marketing video. Take a look!!! The good news is that there are several search engine optimization (SEO) tools out there — some free, some paid — that can help you view', '/videos/Seo.mp4', 1, '56', '54', '78', '21', '2023-03-16 05:02:59', '2023-03-16 05:02:59'),
(12, 'Avis Glover', 'https://randomuser.me/api/portraits/men/77.jpg', '@avisglover', 'I\'ve never seen ANYONE play guitar as good as this!!! Many guitarists neglect the theory side of things because it\'s perceived as boring, pretentious, or even just a complete f*ing mystery. It\'s true that some musicians, especially those with natural abilities like perfect pitch or an especially good ear, can excel without much background theory. But do not underestimate the power of this knowledge in developing you as a musician', '/pics/PlayGuitar.png', 0, '94', '29', '33', '89', '2023-03-16 05:02:59', '2023-03-16 05:02:59'),
(14, 'Joseph Gadiaza', 'https://yt3.ggpht.com/yti/AHXOFjWsyXTxpxfUhgbvnFouU8odIpdNy6BflZagIYFfLw=s88-c-k-c0x00ffffff-no-rj-mo', '@josephgadiaza', 'eqweqw', NULL, NULL, '213', '349', '432', '135', '2023-03-17 18:57:38', '2023-03-17 18:57:38'),
(15, 'Joseph Gadiaza', 'https://yt3.ggpht.com/yti/AHXOFjWsyXTxpxfUhgbvnFouU8odIpdNy6BflZagIYFfLw=s88-c-k-c0x00ffffff-no-rj-mo', '@josephgadiaza', 'qweqqwe', '/pics/1679108278.png', 0, '64', '233', '300', '369', '2023-03-17 18:57:58', '2023-03-17 18:57:58'),
(16, 'Joseph Gadiaza', 'https://yt3.ggpht.com/yti/AHXOFjWsyXTxpxfUhgbvnFouU8odIpdNy6BflZagIYFfLw=s88-c-k-c0x00ffffff-no-rj-mo', '@josephgadiaza', 'BDO', '/pics/1697081719.png', 0, '470', '148', '257', '423', '2023-10-11 19:35:19', '2023-10-11 19:35:19');

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
-- Indexes for table `tweets`
--
ALTER TABLE `tweets`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tweets`
--
ALTER TABLE `tweets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
