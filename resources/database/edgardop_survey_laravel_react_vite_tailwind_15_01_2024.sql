-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 15, 2024 at 11:39 PM
-- Server version: 10.6.15-MariaDB-cll-lve
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `edgardop_survey_laravel_react_vite_tailwind`
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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_11_21_170127_create_surveys_table', 1),
(6, '2022_11_21_170521_create_survey_questions_table', 1),
(7, '2022_11_21_170534_create_survey_answers_table', 1),
(8, '2022_11_21_170552_create_survey_question_answers_table', 1);

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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'main', '663d90932f1c98174f917511dc19c9049e15c2b5ceadbd17b52c8c6af5bfbae7', '[\"*\"]', '2024-01-11 03:10:09', NULL, '2024-01-11 00:25:54', '2024-01-11 03:10:09'),
(3, 'App\\Models\\User', 1, 'main', '41d7223039cc2d12f1e88b6efbf12256b1ce2245a920a88f4189377967d13ef6', '[\"*\"]', '2024-01-11 21:47:59', NULL, '2024-01-11 18:45:34', '2024-01-11 21:47:59'),
(5, 'App\\Models\\User', 1, 'main', '09dd8ba7a566543351137f0cdafb8f6fe79b1fee95a96c75fac476684b58ce56', '[\"*\"]', '2024-01-11 21:49:03', NULL, '2024-01-11 21:48:34', '2024-01-11 21:49:03'),
(6, 'App\\Models\\User', 2, 'main', '10d247071ab44b177503e7164840cb78105c3e6eacec290b99491f1e9dcecaf6', '[\"*\"]', '2024-01-12 21:42:48', NULL, '2024-01-11 21:55:19', '2024-01-12 21:42:48'),
(7, 'App\\Models\\User', 1, 'main', '15043fca25db19c0659950ecf035534af947c52a8f2a8131a79b67853da60b13', '[\"*\"]', '2024-01-12 18:52:35', NULL, '2024-01-12 17:04:37', '2024-01-12 18:52:35'),
(8, 'App\\Models\\User', 1, 'main', '89c727fd079a9e1ce84065f3897c169d76b101221424ed57772a572c48bf0c8b', '[\"*\"]', '2024-01-12 21:49:51', NULL, '2024-01-12 21:45:05', '2024-01-12 21:49:51'),
(9, 'App\\Models\\User', 1, 'main', '45369cfd718b2c5115c5386dddcb097565b3a469b5e72876647f5fac34ee0025', '[\"*\"]', '2024-01-16 05:38:28', NULL, '2024-01-12 21:57:16', '2024-01-16 05:38:28'),
(10, 'App\\Models\\User', 1, 'main', 'b3a473c6d3e8dc34455bcccd0ac79fe7959d635f7917fa6609ae3b6890a12a93', '[\"*\"]', '2024-01-12 22:36:00', NULL, '2024-01-12 22:35:59', '2024-01-12 22:36:00'),
(11, 'App\\Models\\User', 1, 'main', 'df395d024027ae614e53e1bb2ca03a1993ee68cbeb0d6e2102a8b2b517efce81', '[\"*\"]', '2024-01-12 22:45:41', NULL, '2024-01-12 22:36:00', '2024-01-12 22:45:41'),
(12, 'App\\Models\\User', 1, 'main', '770279085bcfcfcc187c8dbd37f6ab931b984266b53c6cf76558e0d1e379bff6', '[\"*\"]', '2024-01-12 22:46:18', NULL, '2024-01-12 22:46:04', '2024-01-12 22:46:18'),
(14, 'App\\Models\\User', 1, 'main', 'e6b850e63c1c335e6f2abc31b77370e76324118a81b550b4465db7f40ac138fa', '[\"*\"]', '2024-01-15 16:13:49', NULL, '2024-01-15 16:13:47', '2024-01-15 16:13:49'),
(18, 'App\\Models\\User', 1, 'main', 'b4d663949f2d472f4f866a16e4110b87a4a2d5ba0d8989e07588add289583c4a', '[\"*\"]', '2024-01-15 19:10:03', NULL, '2024-01-15 18:27:55', '2024-01-15 19:10:03'),
(19, 'App\\Models\\User', 1, 'main', '0cf7c87ee1aadfa6f9496fe5fd71eec03902339b9bec5b5af17c345c8e4dcc00', '[\"*\"]', '2024-01-16 05:27:24', NULL, '2024-01-15 18:28:56', '2024-01-16 05:27:24');

-- --------------------------------------------------------

--
-- Table structure for table `surveys`
--

CREATE TABLE `surveys` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `title` varchar(1000) NOT NULL,
  `slug` varchar(1000) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expire_date` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `surveys`
--

INSERT INTO `surveys` (`id`, `user_id`, `image`, `title`, `slug`, `status`, `description`, `created_at`, `updated_at`, `expire_date`) VALUES
(5, 2, NULL, 'survey', 'survey', 1, 'survey', '2024-01-12 20:23:57', '2024-01-12 20:23:57', '2024-01-27 03:00:00'),
(8, 1, 'images/gYcJAg2YLoRjryqT.png', 'Life Perspectives Survey', 'life-perspectives-survey', 1, NULL, '2024-01-16 03:44:25', '2024-01-16 05:13:40', '2024-01-27 03:00:00'),
(9, 1, 'images/SVn7Eo12jOTURYq0.jpeg', 'Love Perspectives Survey', 'love-perspectives-survey', 1, NULL, '2024-01-16 05:06:13', '2024-01-16 05:13:20', '2024-01-27 03:00:00'),
(10, 1, 'images/WeZFS1UUUsxmLXPw.png', 'Work Perspectives Survey', 'work-perspectives-survey', 1, NULL, '2024-01-16 05:17:46', '2024-01-16 05:17:46', '2024-01-27 03:00:00'),
(11, 1, 'images/dF9uEU2fJ98xGEP0.jpeg', 'Friendship Perspectives Survey', 'friendship-perspectives-survey', 1, NULL, '2024-01-16 05:35:07', '2024-01-16 05:35:07', '2024-01-27 03:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `survey_answers`
--

CREATE TABLE `survey_answers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `survey_id` bigint(20) UNSIGNED NOT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `survey_answers`
--

INSERT INTO `survey_answers` (`id`, `survey_id`, `start_date`, `end_date`) VALUES
(1, 11, '2024-01-16 05:36:43', '2024-01-16 05:36:43'),
(2, 10, '2024-01-16 05:37:54', '2024-01-16 05:37:54');

-- --------------------------------------------------------

--
-- Table structure for table `survey_questions`
--

CREATE TABLE `survey_questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(45) NOT NULL,
  `question` varchar(2000) NOT NULL,
  `description` longtext DEFAULT NULL,
  `data` longtext DEFAULT NULL,
  `survey_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `survey_questions`
--

INSERT INTO `survey_questions` (`id`, `type`, `question`, `description`, `data`, `survey_id`, `created_at`, `updated_at`) VALUES
(4, 'text', 'pregunta 1', NULL, '[]', 1, '2024-01-11 00:41:26', '2024-01-11 00:41:26'),
(5, 'text', 'pregunta 2', NULL, '[]', 1, '2024-01-11 00:41:26', '2024-01-11 00:41:26'),
(6, 'checkbox', 'On a scale of 1 to 5, where 1 is very dissatisfied and 5 is very satisfied, how satisfied are you with your current job?', NULL, '{\"options\":[{\"uuid\":\"7a589cb3-b023-4814-a366-558a9cad8cd0\",\"text\":\"1 (Very Dissatisfied)\"},{\"uuid\":\"39797c39-00dc-46a2-97c3-7ee15d43ca9b\",\"text\":\"2 (Dissatisfied)\"},{\"uuid\":\"d3995f65-78e6-4b6c-8b27-dd98457c9063\",\"text\":\"3 (Neutral)\"},{\"uuid\":\"499ec5c1-a684-417f-8f5c-0a42fb9b32cf\",\"text\":\"4 (Satisfied)\"},{\"uuid\":\"82d7b784-9ca5-40d7-a54c-2b184d9af89c\",\"text\":\"5 (Very Satisfied)\"}]}', 3, '2024-01-12 15:22:44', '2024-01-12 15:22:44'),
(7, 'text', 'bbbbbbbbbbbbbbbbbbb', 'bbbbbbbbbbbbbbbbbbbb', '[]', 4, '2024-01-12 18:44:43', '2024-01-12 18:44:43'),
(8, 'select', 'question 1', 'description', '{\"options\":[{\"uuid\":\"7a1854a4-f6e3-4660-ac2c-08875e2e3f7d\",\"text\":\"select 1\"},{\"uuid\":\"e373b0ff-b428-4ce8-b9f6-b99b25da8989\",\"text\":\"select 2\"},{\"uuid\":\"92eb0fbb-0054-4d3a-888e-b493366f87b6\",\"text\":\"select 3\"}]}', 6, '2024-01-15 19:40:24', '2024-01-15 19:40:24'),
(9, 'select', 'question 2', NULL, '{\"options\":[{\"uuid\":\"3fe49208-40c6-44e2-9470-0d847682f6ea\",\"text\":\"pepe1\"},{\"uuid\":\"74816aab-8cdd-4880-a70d-a2e72544efc0\",\"text\":\"pepe2\"}]}', 6, '2024-01-15 19:40:24', '2024-01-15 19:40:24'),
(10, 'text', 'aaabbbaaa', NULL, '[]', 7, '2024-01-16 03:43:01', '2024-01-16 03:43:01'),
(11, 'select', 'On a scale of 1 to 10, how satisfied are you with your current life? (1 being extremely dissatisfied, 10 being extremely satisfied)', NULL, '{\"options\":[{\"uuid\":\"15e94bd2-549a-4ed9-ae2a-dd4079403216\",\"text\":\"1\"},{\"uuid\":\"ac55bab9-26ae-431c-91d9-901fa40fc10c\",\"text\":\"2\"},{\"uuid\":\"11e46545-2489-4f57-9e6e-444236afbc3f\",\"text\":\"3\"},{\"uuid\":\"d86b539f-db9c-47c5-ac53-7e9203e259f8\",\"text\":\"4\"},{\"uuid\":\"a07324e3-b7b8-4f97-9b18-342041fbb520\",\"text\":\"5\"},{\"uuid\":\"424cdf70-7741-4110-9399-bd54c69590bc\",\"text\":\"6\"},{\"uuid\":\"61de7a28-881f-4189-95a1-6f20e3f0d150\",\"text\":\"7\"},{\"uuid\":\"d4241c8e-eb7d-4627-8f82-31b25f34fb1c\",\"text\":\"8\"},{\"uuid\":\"686be0a2-33c9-453b-a4d3-77533a381dc2\",\"text\":\"9\"},{\"uuid\":\"7ccaec24-0f89-4fcc-bc07-ebce3ddfc66a\",\"text\":\"10\"}]}', 8, '2024-01-16 03:44:25', '2024-01-16 04:58:06'),
(13, 'text', 'What aspect of your life brings you the most joy and fulfillment? (Open-ended response)', NULL, '[]', 8, '2024-01-16 05:01:06', '2024-01-16 05:01:06'),
(14, 'checkbox', 'How do you define success in your life? (Choose one or more)', NULL, '{\"options\":[{\"uuid\":\"7abc4ce2-5bc0-4173-ae77-c1246ed11553\",\"text\":\"Financial stability\"},{\"uuid\":\"67c81a7b-5b4e-430e-9f18-1ed266479028\",\"text\":\"Meaningful relationships\"},{\"uuid\":\"13bc10b1-fdd0-4262-8b3e-06ae211783e6\",\"text\":\"Personal growth and development\"},{\"uuid\":\"5213421f-7910-4758-a9f0-6c0dea4cb79f\",\"text\":\"Career achievements\"},{\"uuid\":\"0f99396d-352e-4258-a492-f3b50c7d1334\",\"text\":\"Health and well-being\"},{\"uuid\":\"301076e7-0fb6-4baf-88c5-2dd4176214c8\",\"text\":\"Other (please specify)\"}]}', 8, '2024-01-16 05:01:06', '2024-01-16 05:01:06'),
(15, 'text', 'In times of adversity, what coping mechanisms or strategies do you rely on to navigate challenges? (Open-ended response)', '(Please share any specific practices, habits, or approaches you use to cope with difficult situations)', '[]', 8, '2024-01-16 05:01:06', '2024-01-16 05:01:06'),
(16, 'text', 'Do you believe in the concept of a life purpose or calling? Why or why not? (Open-ended response)', '(Please share your thoughts on whether you think there is a greater purpose or calling in life, and why or why not.)', '[]', 8, '2024-01-16 05:01:06', '2024-01-16 05:01:06'),
(22, 'select', 'On a scale of 1 to 10, how would you rate the importance of love in your life? (1 being not important at all, 10 being extremely important)', NULL, '{\"options\":[{\"uuid\":\"15e94bd2-549a-4ed9-ae2a-dd4079403216\",\"text\":\"1\"},{\"uuid\":\"ac55bab9-26ae-431c-91d9-901fa40fc10c\",\"text\":\"2\"},{\"uuid\":\"11e46545-2489-4f57-9e6e-444236afbc3f\",\"text\":\"3\"},{\"uuid\":\"d86b539f-db9c-47c5-ac53-7e9203e259f8\",\"text\":\"4\"},{\"uuid\":\"a07324e3-b7b8-4f97-9b18-342041fbb520\",\"text\":\"5\"},{\"uuid\":\"424cdf70-7741-4110-9399-bd54c69590bc\",\"text\":\"6\"},{\"uuid\":\"61de7a28-881f-4189-95a1-6f20e3f0d150\",\"text\":\"7\"},{\"uuid\":\"d4241c8e-eb7d-4627-8f82-31b25f34fb1c\",\"text\":\"8\"},{\"uuid\":\"686be0a2-33c9-453b-a4d3-77533a381dc2\",\"text\":\"9\"},{\"uuid\":\"7ccaec24-0f89-4fcc-bc07-ebce3ddfc66a\",\"text\":\"10\"}]}', 9, '2024-01-16 05:06:44', '2024-01-16 05:10:46'),
(23, 'text', 'What, in your opinion, is the most important aspect of a loving and healthy relationship? (Open-ended response)', '(Please write a brief description of what you consider crucial for a fulfilling and healthy romantic relationship)', '[]', 9, '2024-01-16 05:06:44', '2024-01-16 05:10:46'),
(24, 'checkbox', 'How do you express love or affection in your relationships? (Choose one or more)', NULL, '{\"options\":[{\"uuid\":\"7abc4ce2-5bc0-4173-ae77-c1246ed11553\",\"text\":\"Verbal affirmations\"},{\"uuid\":\"67c81a7b-5b4e-430e-9f18-1ed266479028\",\"text\":\"Acts of service\"},{\"uuid\":\"13bc10b1-fdd0-4262-8b3e-06ae211783e6\",\"text\":\"Quality time\"},{\"uuid\":\"5213421f-7910-4758-a9f0-6c0dea4cb79f\",\"text\":\"Physical touch\"},{\"uuid\":\"0f99396d-352e-4258-a492-f3b50c7d1334\",\"text\":\"Gift-giving\"},{\"uuid\":\"301076e7-0fb6-4baf-88c5-2dd4176214c8\",\"text\":\"Other (please specify)\"}]}', 9, '2024-01-16 05:06:44', '2024-01-16 05:10:46'),
(25, 'text', 'Have you ever experienced unrequited love, and if so, how did you cope with it? (Open-ended response)', '(Share your thoughts on any experiences you\'ve had with unrequited love and how you dealt with those emotions)', '[]', 9, '2024-01-16 05:06:44', '2024-01-16 05:10:46'),
(26, 'text', 'What does the term \"unconditional love\" mean to you, and do you believe it\'s achievable in romantic relationships? (Open-ended response)', '(Share your perspective on whether unconditional love is realistic in romantic relationships and what it means to you)', '[]', 9, '2024-01-16 05:06:44', '2024-01-16 05:10:46'),
(27, 'select', 'On a scale of 1 to 10, how satisfied are you with your current job or work situation? (1 being extremely dissatisfied, 10 being extremely satisfied)', NULL, '{\"options\":[{\"uuid\":\"58fa23d5-fd3d-4f4d-b596-28584218fc50\",\"text\":\"1\"},{\"uuid\":\"537aac72-bf8f-43ac-9c48-a622c4d8b739\",\"text\":\"2\"},{\"uuid\":\"b47f1518-4722-40e5-b015-b4f74a33b6c4\",\"text\":\"3\"},{\"uuid\":\"65a5b21d-8059-4e8f-bf00-616083113e86\",\"text\":\"4\"},{\"uuid\":\"25508ae5-d1f9-4314-bcfa-a45fe086980e\",\"text\":\"5\"},{\"uuid\":\"ac2644aa-2c62-4394-8a41-3802644bc235\",\"text\":\"6\"},{\"uuid\":\"de0dd196-4f31-4c56-a80f-5daf81f6ba42\",\"text\":\"7\"},{\"uuid\":\"fdf923e7-8b76-46f2-84b5-3bae7362e143\",\"text\":\"8\"},{\"uuid\":\"e87ebba2-b2d2-4009-af87-b7e5b0637242\",\"text\":\"9\"},{\"uuid\":\"3cc06153-7668-471f-94b8-a70b929b572f\",\"text\":\"10\"}]}', 10, '2024-01-16 05:17:46', '2024-01-16 05:17:46'),
(28, 'checkbox', 'What factors contribute most to your job satisfaction? (Choose one or more)', NULL, '{\"options\":[{\"uuid\":\"cf66c62b-a574-40c7-a8b4-53cf4c644a75\",\"text\":\"Compensation and benefits\"},{\"uuid\":\"09b031c6-2c12-45d0-a0cd-d4764b9f7664\",\"text\":\"Work-life balance\"},{\"uuid\":\"7ce0d950-6d80-45a0-bb2a-9958100f470d\",\"text\":\"Opportunities for growth and advancement\"},{\"uuid\":\"575f464c-0e33-4ec1-87d6-1de1c8e07b45\",\"text\":\"Positive work culture and colleagues\"},{\"uuid\":\"3e7cab80-6a9d-4d04-8f0a-6f758683c3b9\",\"text\":\"Job responsibilities and tasks\"},{\"uuid\":\"c1ff4d59-37db-4d07-8c93-52c5d7d0ad28\",\"text\":\"Other (please specify)\"}]}', 10, '2024-01-16 05:17:46', '2024-01-16 05:17:46'),
(29, 'textarea', 'What motivates you to perform well in your job? (Open-ended response)', '(Please write a brief description of the factors that drive you to excel in your work)', '[]', 10, '2024-01-16 05:17:46', '2024-01-16 05:17:46'),
(30, 'textarea', 'How do you balance your professional and personal life to ensure overall well-being? (Open-ended response)', '(Share any strategies or practices you employ to maintain a healthy balance between your work and personal life)', '[]', 10, '2024-01-16 05:17:46', '2024-01-16 05:17:46'),
(31, 'select', 'On a scale of 1 to 10, how important are friendships in your life? (1 being not important at all, 10 being extremely important)', NULL, '{\"options\":[{\"uuid\":\"81402a1f-84a5-461e-a776-070d0097bbc6\",\"text\":\"1\"},{\"uuid\":\"0d9b9894-85a9-4e8b-9b75-6e2d9e28ae3c\",\"text\":\"2\"},{\"uuid\":\"778d5a22-8e8a-4663-bf88-2c04dc2e05fa\",\"text\":\"3\"},{\"uuid\":\"4d0a7c01-0c94-44a7-8a51-316542e0aaa4\",\"text\":\"4\"},{\"uuid\":\"f871097c-c268-47a6-92e0-21224a6121be\",\"text\":\"5\"},{\"uuid\":\"9a152505-8580-425e-97d2-d9ee8b52f5c1\",\"text\":\"6\"},{\"uuid\":\"377c5f29-e618-49bf-acfc-24bf1b0911bc\",\"text\":\"7\"},{\"uuid\":\"34bf6d70-8207-4b4d-94de-777b3a7242b6\",\"text\":\"8\"},{\"uuid\":\"e12796dd-3846-456c-8cf0-36eb04a9d539\",\"text\":\"9\"},{\"uuid\":\"f907e6c5-78df-4c52-8e0d-941dcc4e4e41\",\"text\":\"10\"}]}', 11, '2024-01-16 05:35:07', '2024-01-16 05:35:07'),
(32, 'checkbox', 'What qualities do you value most in a friend? (Choose one or more)', NULL, '{\"options\":[{\"uuid\":\"8fd51bce-07fd-496a-92b5-952544244cc5\",\"text\":\"Trustworthiness\"},{\"uuid\":\"27c2c55b-bcaa-471c-ac52-83906016ea39\",\"text\":\"Loyalty\"},{\"uuid\":\"0c92aa9c-fb1b-4ffb-a88a-df5d7d49f757\",\"text\":\"Sense of humor\"},{\"uuid\":\"458a4e60-1a7a-4f5f-a3be-92e0edaeed12\",\"text\":\"Empathy\"},{\"uuid\":\"191080ba-411f-441c-8576-23f7006a21a8\",\"text\":\"Reliability\"},{\"uuid\":\"6b85ee47-3946-40e7-ab11-24f2cc984710\",\"text\":\"Other (please specify)\"}]}', 11, '2024-01-16 05:35:07', '2024-01-16 05:35:07'),
(33, 'checkbox', 'How do you maintain and nurture your friendships? (Choose one or more)', NULL, '{\"options\":[{\"uuid\":\"4a33a519-db13-4f7d-b649-342f0f98c21e\",\"text\":\"Regular communication and catch-ups\"},{\"uuid\":\"3e8270c6-0372-4f98-8d4f-8bd716fa773f\",\"text\":\"Shared activities and hobbies\"},{\"uuid\":\"933cf135-3acd-4a45-86f2-b4585a4589d7\",\"text\":\"Offering support during challenging times\"},{\"uuid\":\"61ab242d-d735-4f72-b9f8-929e2f2649ee\",\"text\":\"Celebrating milestones and achievements\"},{\"uuid\":\"5375bb67-c5b4-4097-a2b2-8cda335c107d\",\"text\":\"Other (please specify)\"}]}', 11, '2024-01-16 05:35:07', '2024-01-16 05:35:07'),
(34, 'textarea', 'In what ways do your friends positively impact your life? (Open-ended response)', '(Please provide examples or describe how your friends contribute to your overall well-being and happiness)', '[]', 11, '2024-01-16 05:35:07', '2024-01-16 05:35:07'),
(35, 'textarea', 'Have you ever experienced a significant disagreement or conflict with a friend, and if so, how did you resolve it? (Open-ended response)', '(Share any experiences you\'ve had with conflicts in friendships and how you navigated through them)', '[]', 11, '2024-01-16 05:35:07', '2024-01-16 05:35:07');

-- --------------------------------------------------------

--
-- Table structure for table `survey_question_answers`
--

CREATE TABLE `survey_question_answers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `survey_question_id` bigint(20) UNSIGNED NOT NULL,
  `survey_answer_id` bigint(20) UNSIGNED NOT NULL,
  `answer` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `survey_question_answers`
--

INSERT INTO `survey_question_answers` (`id`, `survey_question_id`, `survey_answer_id`, `answer`, `created_at`, `updated_at`) VALUES
(1, 31, 1, '10', '2024-01-16 05:36:43', '2024-01-16 05:36:43'),
(2, 32, 1, '[\"Trustworthiness\",\"Loyalty\"]', '2024-01-16 05:36:43', '2024-01-16 05:36:43'),
(3, 33, 1, '[\"Shared activities and hobbies\",\"Offering support during challenging times\"]', '2024-01-16 05:36:43', '2024-01-16 05:36:43'),
(4, 34, 1, 'When we speak about life', '2024-01-16 05:36:43', '2024-01-16 05:36:43'),
(5, 35, 1, 'Yes, but we solved', '2024-01-16 05:36:43', '2024-01-16 05:36:43'),
(6, 27, 2, '8', '2024-01-16 05:37:54', '2024-01-16 05:37:54'),
(7, 28, 2, '[\"Opportunities for growth and advancement\",\"Positive work culture and colleagues\"]', '2024-01-16 05:37:54', '2024-01-16 05:37:54'),
(8, 29, 2, 'Never stop learning', '2024-01-16 05:37:54', '2024-01-16 05:37:54'),
(9, 30, 2, 'I have a very good balance', '2024-01-16 05:37:54', '2024-01-16 05:37:54');

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
(1, 'edgardo ponce', 'gudu.chango@gmail.com', NULL, '$2y$10$vMK0XE3rDemHMLK5a8QVCOwXX4ChHGtetTizYh5DtjlZFH.ZILn6e', NULL, '2024-01-11 00:25:54', '2024-01-11 00:25:54'),
(2, 'edgardo ponce', 'gudu.chango@example.com', NULL, '$2y$10$XKmYN09adOQZJjkDEtMYburfvkJaMWQCQ7cL3pi.Ru7RfBmPVnKh2', NULL, '2024-01-11 21:55:19', '2024-01-11 21:55:19');

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
-- Indexes for table `surveys`
--
ALTER TABLE `surveys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `survey_answers`
--
ALTER TABLE `survey_answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `survey_questions`
--
ALTER TABLE `survey_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `survey_question_answers`
--
ALTER TABLE `survey_question_answers`
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `surveys`
--
ALTER TABLE `surveys`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `survey_answers`
--
ALTER TABLE `survey_answers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `survey_questions`
--
ALTER TABLE `survey_questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `survey_question_answers`
--
ALTER TABLE `survey_question_answers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
